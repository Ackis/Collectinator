--[[

****************************************************************************************

CollectinatorFrame.lua

Frame functions for all of Collectinator

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

****************************************************************************************

]]--

local MODNAME	= "Collectinator"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local BFAC	= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local L		= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local QTip	= LibStub("LibQTip-1.0")

local string = string
local ipairs = ipairs
local tinsert = tinsert
local sformat = string.format

-- local variables for this file. Must be used by multiple functions to be listed here
local currentProfIndex = 0
local currentProfession = ""
local maxVisibleRecipes = 24
local FilterValueMap = {}
local sortedRecipeIndex = {}
local DisplayStrings = {}
local myFaction = ""

local narrowFont = nil
local normalFont = nil

local pairs = pairs
local select = select
local type = type

local table = table
local twipe = table.wipe
local tremove = table.remove
local tonumber = tonumber

local math = math
local floor = math.floor

local strlower = string.lower

local GetSpellInfo = GetSpellInfo
local GetSkillLineInfo = GetSkillLineInfo
local GetNumSkillLines = GetNumSkillLines
local ExpandSkillHeader = ExpandSkillHeader
local CollapseSkillHeader = CollapseSkillHeader
local GetTradeSkillLine = GetTradeSkillLine
local GetItemInfo = GetItemInfo
local UnitClass = UnitClass


-- Modifier functions which we deal with
local IsModifierKeyDown = IsModifierKeyDown
local IsShiftKeyDown = IsShiftKeyDown
local IsAltKeyDown = IsAltKeyDown
local IsControlKeyDown = IsControlKeyDown

local seasonal = GetCategoryInfo(155)

-- Fallback in case the user doesn't have LSM-3.0 installed
if (not LibStub:GetLibrary("LibSharedMedia-3.0", true)) then

	local locale = GetLocale()
	-- Fix for font issues on koKR
	if (locale == "koKR") then
		narrowFont = "Fonts\\2002.TTF"
		normalFont = "Fonts\\2002.TTF"
	else
		narrowFont = "Fonts\\ARIALN.TTF"
		normalFont = "Fonts\\FRIZQT__.TTF"
	end
else
	-- Register LSM 3.0
	local LSM3 = LibStub("LibSharedMedia-3.0")

	narrowFont = LSM3:Fetch(LSM3.MediaType.FONT, "Arial Narrow")
	normalFont = LSM3:Fetch(LSM3.MediaType.FONT, "Friz Quadrata TT")
end

-- Font Objects needed for CollectinatorTooltip
local normalFontObj = CreateFont(MODNAME.."normalFontObj")
local narrowFontObj = CreateFont(MODNAME.."narrowFontObj")

-- local versions of the databases storing the recipe information, trainers, vendors, etc
local recipeDB = {}
local trainerDB = {}
local vendorDB = {}
local questDB = {}
local repDB = {}
local seasonDB = {}
local customDB = {}
local mobDB = {}
local allSpecTable = {}
local playerData = {}

local CollectinatorTooltip = _G["CollectinatorTooltip"]
local CollectinatorSpellTooltip = _G["CollectinatorSpellTooltip"]

local addonversion = GetAddOnMetadata("Collectinator", "Version")
addonversion = string.gsub(addonversion,"@project.revision@","SVN")

local Collectinator_SearchText,Collectinator_LastSearchedText
local Collectinator_ExpGeneralOptCB,Collectinator_ExpObtainOptCB,Collectinator_ExpBindingOptCB,Collectinator_ExpItemOptCB,Collectinator_ExpPlayerOptCB,Collectinator_ExpRepOptCB,Collectinator_RepOldWorldCB,Collectinator_RepBCCB,Collectinator_RepLKCB,Collectinator_ExpMiscOptCB

-- To make tabbing between collections easier 
local SortedCollections = { 
	{ name = "CRITTER",		texture = "minipets" },	-- 1
	{ name = "MOUNT",		texture = "mounts" },	-- 2
} 

local MaxCollections = 2

-- Some variables I want to use in creating the GUI later... (ZJ 8/26/08)
local ExpButtonText = {
	L["General"],		-- 1
	L["Obtain"],		-- 2
	L["Binding"],		-- 3
	L["Item"],			-- 4
	L["Player Type"],	-- 5
	L["Reputation"],	-- 6
	L["Misc"]			-- 7
}

local ExpButtonTT = {
	L["FILTERING_GENERAL_DESC"],	-- 1
	L["FILTERING_OBTAIN_DESC"],		-- 2
	L["FILTERING_BINDING_DESC"],	-- 3
	L["FILTERING_ITEM_DESC"],		-- 4
	L["FILTERING_PLAYERTYPE_DESC"],	-- 5
	L["FILTERING_REP_DESC"],		-- 6
	L["FILTERING_MISC_DESC"]		-- 7
}


-- Define the static popups we're going to call when people don't have a
-- scanned or don't are blocking all recipes from being displayed
-- with current filters

StaticPopupDialogs["Collectinator_NOTSCANNED"] = {
	text = L["NOTSCANNED"],
	button1 = L["Ok"],
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs["Collectinator_ALLFILTERED"] = {
	text = L["ALL_FILTERED"],
	button1 = L["Ok"],
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs["Collectinator_ALLKNOWN"] = {
	text = L["Collectinator_ALLKNOWN"],
	button1 = L["Ok"],
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs["Collectinator_ALLEXCLUDED"] = {
	text = L["Collectinator_ALLEXCLUDED"],
	button1 = L["Ok"],
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
}

StaticPopupDialogs["Collectinator_SEARCHFILTERED"] = {
	text = L["Collectinator_SEARCHFILTERED"],
	button1 = L["Ok"],
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
}

-- Description: 

function addon:CloseWindow()

	-- Close all possible pop-up windows
	StaticPopup_Hide("Collectinator_NOTSCANNED")
	StaticPopup_Hide("Collectinator_ALLFILTERED")
	StaticPopup_Hide("Collectinator_ALLKNOWN")
	StaticPopup_Hide("Collectinator_ALLEXCLUDED")
	addon.Frame:Hide()

end

-- Description: Function to determine if the player has an appropiate level of faction.
-- Expected result: A boolean value determing if the player can learn the recipe based on faction
-- Input: The database, the index of the recipe, the players faction and reputation levels
-- Output: A boolean indicating if they can learn the recipe or not

local function checkFactions(DB, recipeIndex, playerFaction, playerRep)

	local fac = true
	local acquire = DB[recipeIndex]["Acquire"]

	-- Scan through all acquire types
	for i in pairs(acquire) do

		-- If it's a repuitation type
		if (acquire[i]["Type"] == 6) then

			local repid = acquire[i]["ID"]

			-- If it's Honor Hold/Thrallmar
			if (repid == 946) or (repid == 947) then
				-- If the player is Alliance look at Honor Hold only
				if (playerFaction == BFAC["Alliance"]) then
					repid = 946
				-- If the player is Horde look at Thrallmar only
				else
					repid = 947
				end

			-- If it's Kureni/Mag'har	
			elseif (repid == 941) or (repid == 978) then
				-- If the player is Alliance look at Kureni only
				if (playerFaction == BFAC["Alliance"]) then
					repid = 978
				-- If the player is Horde look at Mag'har only
				else
					repid = 941
				end
			end

			if (not playerRep[repDB[repid]["Name"]]) or (playerRep[repDB[repid]["Name"]] < DB[recipeIndex]["Acquire"][i]["RepLevel"]) then
				fac = false
			else

				-- This means that the faction level is high enough to learn the recipe, so we'll set display to true and leave the loop
				-- This should allow recipes which have multiple reputations to work correctly
				fac = true
				break

			end

		end

	end

	return fac

end

-- Description: 

local function CheckDisplayFaction(filterDB, faction)

	if (filterDB.general.faction ~= true) then
		if ((faction == BFAC[myFaction]) or (faction == BFAC["Neutral"]) or (faction == nil)) then
			return true
		else
			return false
		end
	else
		return true
	end

end

do

	local function LoadZones(c,y, ...)
		-- Fill up the list for normal lookup
		for i=1,select('#', ...),1 do
			c[i] = select(i,...)
		end
		-- Reverse lookup to make work easier later on
		for i in pairs(c) do
			y[c[i]] = i
		end
	end

	local C1 = {}
	local C2 = {}
	local C3 = {}
	local C4 = {}
	local c1 = {}
	local c2 = {}
	local c3 = {}
	local c4 = {}

	LoadZones(C1,c1,GetMapZones(1))
	LoadZones(C2,c2,GetMapZones(2))
	LoadZones(C3,c3,GetMapZones(3))
	LoadZones(C4,c4,GetMapZones(4))

	local iconlist = {}

	-- Description: Clears all the icons from the map.
	-- Expected result: All icons are removed from the world map and the mini-map
	-- Input: None
	-- Output: All icons are removed.

	function addon:ClearMap()

		-- Make sure we have TomTom installed
		if (TomTom) then
			-- Remove all the waypoints from TomTom
			for i in pairs(iconlist) do
				TomTom:RemoveWaypoint(iconlist[i])
			end
			-- Nuke our own internal table
			iconlist = twipe(iconlist)
		end

	end

	local function CheckMapDisplay(v, filters)

		local display = false

		-- If it's a trainer check to see if we're displaying it on the map.
		if (v["Type"] == 1) then
			display = ((trainerDB[v["ID"]]["Faction"] == BFAC[myFaction]) or (trainerDB[v["ID"]]["Faction"] == BFAC["Neutral"]))
		-- If it's a vendor check to see if we're displaying it on the map
		elseif (v["Type"] == 2) then
			display = ((vendorDB[v["ID"]]["Faction"] == BFAC[myFaction]) or (vendorDB[v["ID"]]["Faction"] == BFAC["Neutral"]))
		-- If it's a quest check to see if we're displaying it on the map
		elseif (v["Type"] == 4) then
			display = ((questDB[v["ID"]]["Faction"] == BFAC[myFaction]) or (questDB[v["ID"]]["Faction"] == BFAC["Neutral"]))
		end

		return display

	end

	-- Description: Adds mini-map and world map icons with tomtom.
	-- Expected result: Icons are added to the world map and mini-map.
	-- Input: An optional recipe ID
	-- Output: Points are added to the maps

	function addon:SetupMap(singlerecipe)

		if (not TomTom) then
			--@debug@
			self:Print("TomTom not loaded, integration with the world map and mini-map disabled.")
			--@end-debug@
			return
		end

		local worldmap = addon.db.profile.worldmap
		local minimap = addon.db.profile.minimap
		local filters = addon.db.profile.filters
		local autoscanmap = addon.db.profile.autoscanmap

		if ((worldmap == true) or (minimap == true)) then

			local maplist = {}

			-- We're only getting a single recipe, not a bunch
			if (singlerecipe) then
				-- loop through acquire methods, display each
				for k, v in pairs(recipeDB[singlerecipe]["Acquire"]) do
					if (CheckMapDisplay(v,filters)) then
						maplist[v["ID"]] = v["Type"]
					end
				end
			elseif (autoscanmap == true) then
				-- Scan through all recipes to display, and add the vendors to a list to get their acquire info
				for i = 1, #sortedRecipeIndex do
					local recipeIndex = sortedRecipeIndex[i]
					if ((recipeDB[recipeIndex]["Display"] == true) and (recipeDB[recipeIndex]["Search"] == true)) then
						-- loop through acquire methods, display each
						for k, v in pairs(recipeDB[recipeIndex]["Acquire"]) do
							if (CheckMapDisplay(v,filters)) then
								maplist[v["ID"]] = v["Type"]
							end
						end
					end
				end
			end

			--[[
			local CollectinatorWorldMap = CreateFrame("Button","CollectinatorWorldMap",WorldMapDetailFrame)
			CollectinatorWorldMap:ClearAllPoints()
			CollectinatorWorldMap:SetWidth(8)
			CollectinatorWorldMap:SetHeight(8)
			CollectinatorWorldMap.icon = CollectinatorWorldMap:CreateTexture("ARTWORK") 
			CollectinatorWorldMap.icon:SetTexture(icontext)
			CollectinatorWorldMap.icon:SetAllPoints()

			local CollectinatorMiniMap = CreateFrame("Button","CollectinatorMiniMap",MiniMap)
			CollectinatorMiniMap:ClearAllPoints()
			CollectinatorMiniMap:SetWidth(8)
			CollectinatorMiniMap:SetHeight(8)
			CollectinatorMiniMap.icon = CollectinatorMiniMap:CreateTexture("ARTWORK") 
			CollectinatorMiniMap.icon:SetTexture(icontext)
			CollectinatorMiniMap.icon:SetAllPoints()
			]]--

			for k, j in pairs(maplist) do

				local continent, zone
				local loc = nil

				if (maplist[k] == 2) then
					loc = vendorDB[k]
				elseif (maplist[k] == 3) then
					loc = mobDB[k]
				elseif (maplist[k] == 4) then
					loc = questDB[k]
				end

				if (c1[loc["Location"]]) then
					continent = 1
					zone = c1[loc["Location"]]
				elseif (c2[loc["Location"]]) then
					continent = 2
					zone = c2[loc["Location"]]
				elseif (c3[loc["Location"]]) then
					continent = 3
					zone = c3[loc["Location"]]
				elseif (c4[loc["Location"]]) then
					continent = 4
					zone = c4[loc["Location"]]
				else
					--@debug@
					addon:Print("DEBUG: No continent/zone map match for ID " .. k .. ".")
					--@end-debug@
				end
		
				if ((zone) and (continent)) then
					local iconuid = TomTom:AddZWaypoint(continent, zone, loc["Coordx"], loc["Coordy"], loc["Name"], false, minimap, worldmap)
					tinsert(iconlist,iconuid)
				end

			end

		end

	end

end

-- Description: Parses the recipes and determines which ones to display, and makes them display appropiatly

local function initDisplayStrings()

	local exclude = addon.db.profile.exclusionlist

	DisplayStrings = nil
	DisplayStrings = {}

	local insertIndex = 1

	for i = 1, #sortedRecipeIndex do

		local recipeIndex = sortedRecipeIndex[i]
		local recipeEntry = recipeDB[recipeIndex]

		if ((recipeEntry["Display"] == true) and (recipeEntry["Search"] == true)) then

			local t = {}

			-- add in recipe difficulty coloring
			local recStr = ""

			if (exclude[recipeIndex] == true) then
				recStr = "** " .. recipeEntry["Name"] .. " **"
			else
				recStr = recipeEntry["Name"]
			end

			local hasFaction = checkFactions(recipeDB, recipeIndex, playerData.playerFaction, playerData["Reputation"])

			t.String = recStr

			t.sID = recipeIndex
			t.IsRecipe = true
			t.IsExpanded = false
			tinsert(DisplayStrings, insertIndex, t)
			insertIndex = insertIndex + 1

		end

	end

end

-- Description: 

local function ClearRecipeButtonTooltip(bIndex)

	local pButton = addon.PlusListButton[bIndex]
	local rButton = addon.RecipeListButton[bIndex]
	pButton:SetScript("OnEnter", function () end)
	pButton:SetScript("OnLeave", function () end)
	rButton:SetScript("OnEnter", function () end)
	rButton:SetScript("OnLeave", function () end)

end

-- Description: Converting from hex to rgb (Thanks Maldivia)

local function toRGB(hex)

	local r, g, b = hex:match("(..)(..)(..)")

	return (tonumber(r,16) / 256) , (tonumber(g,16) / 256) , (tonumber(b,16) / 256)

end

-- Description: 

-- I want to do a bit more comprehensive tooltip processing. Things like changing font sizes,
-- adding padding to the left hand side, and using better color handling. So... this function
-- will do that for me.

local function ttAdd(
	leftPad,		-- number of times to pad two spaces on left side
	textSize,		-- negative number. subtract from 12 to get fontsize
	narrow,			-- if 1, use ARIALN instead of FRITZQ
	use_span,		-- will str1 span both columns?
	str1,			-- left hand string
	hexcolor1,		-- hex color code for left hand side
	str2,			-- if present, this is a double line, and this is the right hand string
	hexcolor2)		-- if present, hex color code for right hand side

	-- are we changing fontsize or narrow?
	if ((narrow == 1) or (textSize ~= 0)) then
		local font, fontObj = normalFont, normalFontObj
		if (narrow == 1) then
			font = narrowFont
			fontObj = narrowFontObj
		end

		local fontsize = addon.db.profile.frameopts.fontsize + textSize

		fontObj:SetFont(font, fontsize)
		CollectinatorTooltip:SetFont(fontObj)
	end

	-- Add in our left hand padding
	local loopPad = leftPad
	local leftStr = str1

	while (loopPad > 0) do
		leftStr = "  " .. leftStr
		loopPad = loopPad - 1
	end

	if (str2) then
		local lineNum = CollectinatorTooltip:AddLine(" ")
		CollectinatorTooltip:SetCell(lineNum, 1, "|cff"..hexcolor1..leftStr.."|r")
		CollectinatorTooltip:SetCell(lineNum, 2, "|cff"..hexcolor2..str2.."|r")
	elseif use_span then
		local lineNum = CollectinatorTooltip:AddLine(" ")
		CollectinatorTooltip:SetCell(lineNum, 1, "|cff"..hexcolor1..leftStr.."|r", "LEFT", 2)
	else
		CollectinatorTooltip:AddLine("|cff"..hexcolor1..leftStr.."|r")
	end
end

local function SetSpellTooltip(owner, loc)

	CollectinatorSpellTooltip:SetOwner(owner, "ANCHOR_NONE")
	CollectinatorSpellTooltip:ClearAllPoints()
	if (loc == "Top") then
		CollectinatorSpellTooltip:SetPoint("BOTTOMLEFT", owner, "TOPLEFT")
	elseif (loc == "Bottom") then
		CollectinatorSpellTooltip:SetPoint("TOPLEFT", owner, "BOTTOMLEFT")
	elseif (loc == "Left") then
		CollectinatorSpellTooltip:SetPoint("TOPRIGHT", owner, "TOPLEFT")
	elseif (loc == "Right") then
		CollectinatorSpellTooltip:SetPoint("TOPLEFT", owner, "TOPRIGHT")
	end

end

-- Description: 

local function GenerateTooltipContent(owner, rIndex, playerFaction, exclude)

	local clr1, clr2 = "", ""
	local spelltooltiplocation = addon.db.profile.spelltooltiplocation
	local acquiretooltiplocation = addon.db.profile.acquiretooltiplocation

	local spelllink = recipeDB[rIndex]["RecipeLink"]

	if (acquiretooltiplocation == L["Off"]) then
		CollectinatorTooltip:Hide()
		-- If we have the spell link tooltip, link it to the owner instead so it shows
		if (spelltooltiplocation ~= L["Off"]) and (spelllink) then
			SetSpellTooltip(addon.Frame, spelltooltiplocation)
			CollectinatorSpellTooltip:SetHyperlink(spelllink)
			CollectinatorSpellTooltip:Show()
		else
			CollectinatorSpellTooltip:Hide()
		end
	else
		CollectinatorTooltip:ClearAllPoints()
		if (acquiretooltiplocation == "Right") then
			CollectinatorTooltip:SetPoint("TOPLEFT", addon.Frame, "TOPRIGHT")
		elseif (acquiretooltiplocation == "Left") then
			CollectinatorTooltip:SetPoint("TOPRIGHT", addon.Frame, "TOPLEFT")
		elseif (acquiretooltiplocation == "Top") then
			CollectinatorTooltip:SetPoint("BOTTOMLEFT", addon.Frame, "TOPLEFT")
		elseif (acquiretooltiplocation == "Bottom") then
			CollectinatorTooltip:SetPoint("TOPLEFT", addon.Frame, "BOTTOMLEFT")
		elseif (acquiretooltiplocation == "Mouse") then
			CollectinatorTooltip:ClearAllPoints()
			local x,y = GetCursorPosition()
			local uiscale = UIParent:GetEffectiveScale()
			x = x/uiscale
			y = y/uiscale
			CollectinatorTooltip:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", x, y)
		end

		CollectinatorTooltip:Clear()
		ttAdd(0, 1, 0, 0, recipeDB[rIndex]["Name"], addon:hexcolor("HIGH"))

		-- check if the recipe is excluded
		if (exclude[rIndex] == true) then
			clr1 = addon:hexcolor("RED")
			ttAdd(0, -1, 1, 0, L["RECIPE_EXCLUDED"], clr1)
		end

		-- Add in skill level requirement, colored correctly
		clr1 = addon:hexcolor("NORMAL")

		local recipeSkill = recipeDB[rIndex]["Level"]
		local playerSkill = playerData.playerProfessionLevel

		if (recipeSkill > playerSkill) then
			clr2 = addon:hexcolor("RED")
		elseif ((playerSkill - recipeSkill) < 20) then
			clr2 = addon:hexcolor("ORANGE")
		elseif ((playerSkill - recipeSkill) < 30) then
			clr2 = addon:hexcolor("YELLOW")
		elseif ((playerSkill - recipeSkill) < 40) then
			clr2 = addon:hexcolor("GREEN") 
		else
			clr2 = addon:hexcolor("MIDGREY")
		end

		ttAdd(0, -1, 0, 0, L["Required Skill"] .. " :", clr1, recipeDB[rIndex]["Level"], clr2)
		-- spacer
		ttAdd(0, 0, 0, 0, ".", addon:hexcolor("BLACK"))
		-- Binding info
		clr1 = addon:hexcolor("NORMAL")

		if (recipeDB[rIndex]["Flags"][36]) then
			ttAdd(0, -1, 1, 0, L["BOEFilter"], clr1)
		end

		if (recipeDB[rIndex]["Flags"][37]) then
			ttAdd(0, -1, 1, 0, L["BOPFilter"], clr1)
		end

		if (recipeDB[rIndex]["Flags"][38]) then
			ttAdd(0, -1, 1, 0, L["BOAFilter"], clr1)
		end

		if (recipeDB[rIndex]["Flags"][40]) then
			ttAdd(0, -1, 1, 0, L["RecipeBOEFilter"], clr1)
		end

		if (recipeDB[rIndex]["Flags"][41]) then
			ttAdd(0, -1, 1, 0, L["RecipeBOPFilter"], clr1)
		end

		if (recipeDB[rIndex]["Flags"][42]) then
			ttAdd(0, -1, 1, 0, L["RecipeBOAFilter"], clr1)
		end

		-- spacer
		ttAdd(0, 0, 0, 0, ".", addon:hexcolor("BLACK"))

		-- obtain info
		ttAdd(0, -1, 0, 0, L["Obtained From"] .. " : ", addon:hexcolor("NORMAL"))

		local factiondisp = addon.db.profile.filters.general.faction

		-- loop through acquire methods, display each
		for k, v in pairs(recipeDB[rIndex]["Acquire"]) do

			-- Trainer
			if (v["Type"] == 1) then
				-- Trainer:				TrainerName
				-- TrainerZone			TrainerCoords
				local trnr = trainerDB[v["ID"]]
				local cStr = ""

				clr1 = addon:hexcolor("TRAINER")
				-- Don't display trainers if it's opposite faction
				local displaytt = false
				if (trnr["Faction"] == BFAC["Horde"]) then
					clr2 = addon:hexcolor("HORDE")
					if (playerFaction == BFAC["Horde"]) then
						displaytt = true
					end
				elseif (trnr["Faction"] == BFAC["Alliance"]) then
					clr2 = addon:hexcolor("ALLIANCE")
					if (playerFaction == BFAC["Alliance"]) then
						displaytt = true
					end
				else
					clr2 = addon:hexcolor("NEUTRAL")
					displaytt = true
				end

				if (displaytt) then
					-- Add the trainer information to the tooltip
					ttAdd(0, -2, 0, 0, L["Trainer"], clr1, trnr["Name"], clr2)
					-- If we have a coordinate, add the coordinates to the tooltop
					if (trnr["Coordx"] ~= 0) and (trnr["Coordy"] ~= 0) then
						cStr = "(" .. trnr["Coordx"] .. ", " .. trnr["Coordy"] .. ")"
					end
					clr1 = addon:hexcolor("NORMAL")
					clr2 = addon:hexcolor("HIGH")
					ttAdd(1, -2, 1, 0, trnr["Location"], clr1, cStr, clr2)
				end

			-- Vendor
			elseif (v["Type"] == 2) then

				-- Vendor:					VendorName
				-- VendorZone				VendorCoords
				local vndr = vendorDB[v["ID"]]
				local cStr = ""

				clr1 = addon:hexcolor("VENDOR")
				-- Don't display vendors of opposite faction
				local displaytt = false
				if (vndr["Faction"] == BFAC["Horde"]) then
					clr2 = addon:hexcolor("HORDE")
					if (playerFaction == BFAC["Horde"]) then
						displaytt = true
					end
				elseif (vndr["Faction"] == BFAC["Alliance"]) then
					clr2 = addon:hexcolor("ALLIANCE")
					if (playerFaction == BFAC["Alliance"]) then
						displaytt = true
					end
				else
					clr2 = addon:hexcolor("NEUTRAL")
					displaytt = true
				end

				if (displaytt) then
					if (vndr["Coordx"] ~= 0) and (vndr["Coordy"] ~= 0) then
						cStr = "(" .. vndr["Coordx"] .. ", " .. vndr["Coordy"] .. ")"
					end

					ttAdd(0, -1, 0, 0, L["Vendor"], clr1, vndr["Name"], clr2)
					clr1 = addon:hexcolor("NORMAL")
					clr2 = addon:hexcolor("HIGH")
					ttAdd(1, -2, 1, 0, vndr["Location"], clr1, cStr, clr2)
				end

			-- Mob Drop
			elseif (v["Type"] == 3) then

				-- Mob Drop:				Mob Name
				-- MobZone					MobCoords
				local mob = mobDB[v["ID"]]
				local cStr = ""

				if (mob["Coordx"] ~= 0) and (mob["Coordy"] ~= 0) then
					cStr = "(" .. mob["Coordx"] .. ", " .. mob["Coordy"] .. ")"
				end

				clr1 = addon:hexcolor("MOBDROP")
				clr2 = addon:hexcolor("HORDE")
				ttAdd(0, -1, 0, 0, L["Mob Drop"], clr1, mob["Name"], clr2)
				clr1 = addon:hexcolor("NORMAL")
				clr2 = addon:hexcolor("HIGH")
				ttAdd(1, -2, 1, 0, mob["Location"], clr1, cStr, clr2)

			-- Quest
			elseif (v["Type"] == 4) then

				-- Quest:					QuestName
				-- QuestZone				QuestCoords
				local qst = questDB[v["ID"]]

				if (qst ~= nil) then
					clr1 = addon:hexcolor("QUEST")
					-- Don't display quests of opposite faction
					local displaytt = false
					if (qst["Faction"] == BFAC["Horde"]) then
						clr2 = addon:hexcolor("HORDE")
						if (playerFaction == BFAC["Horde"]) then
							displaytt = true
						end
					elseif (qst["Faction"] == BFAC["Alliance"]) then
						clr2 = addon:hexcolor("ALLIANCE")
						if (playerFaction == BFAC["Alliance"]) then
							displaytt = true
						end
					else
						clr2 = addon:hexcolor("NEUTRAL")
						displaytt = true
					end

					if (displaytt) then
						local cStr = ""
						if (qst["Coordx"] ~= 0) and (qst["Coordy"] ~= 0) then
							cStr = "(" .. qst["Coordx"] .. ", " .. qst["Coordy"] .. ")"
						end

						ttAdd(0, -1, 0, 0, L["Quest"], clr1, qst["Name"], clr2)
						clr1 = addon:hexcolor("NORMAL")
						clr2 = addon:hexcolor("HIGH")
						ttAdd(1, -2, 1, 0, qst["Location"], clr1, cStr, clr2)
					end
				end

			-- Seasonal
			elseif (v["Type"] == 5) then

				-- Seasonal:				SeasonEventName
				local ssnname = seasonDB[v["ID"]]["Name"]

				clr1 = addon:hexcolor("SEASON")
				ttAdd(0, -1, 0, 0, seasonal, clr1, ssnname, clr1)

			-- Reputation
			elseif (v["Type"] == 6) then

				-- Reputation:				Faction
				-- FactionLevel				RepVendor				
				-- RepVendorZone			RepVendorCoords

				local repfac = repDB[v["ID"]]
				local repname = repfac["Name"] -- name
				local rplvl = v["RepLevel"]
				local repvndr = vendorDB[v["RepVendor"]]
				local cStr = ""

				if (repvndr["Coordx"] ~= 0) and (repvndr["Coordy"] ~= 0) then
					cStr = "(" .. repvndr["Coordx"] .. ", " .. repvndr["Coordy"] .. ")"
				end
				
				clr1 = addon:hexcolor("REP")
				clr2 = addon:hexcolor("NORMAL")
				ttAdd(0, -1, 0, 0, L["Reputation"], clr1, repname, clr2)

				local rStr = ""
				if (rplvl == 0) then
					rStr = BFAC["Neutral"]
					clr1 = addon:hexcolor("NEUTRAL")
				elseif (rplvl == 1) then
					rStr = BFAC["Neutral"]
					clr1 = addon:hexcolor("FRIENDLY")
				elseif (rplvl == 2) then
					rStr = BFAC["Honored"]
					clr1 = addon:hexcolor("HONORED")
				elseif (rplvl == 3) then
					rStr = BFAC["Revered"]
					clr1 = addon:hexcolor("REVERED")
				else
					rStr = BFAC["Exalted"]
					clr1 = addon:hexcolor("EXALTED")
				end

				local displaytt = false
				if (repvndr["Faction"] == BFAC["Horde"]) then
					clr2 = addon:hexcolor("HORDE")
					if (playerFaction == BFAC["Horde"]) then
						displaytt = true
					end
				elseif (repvndr["Faction"] == BFAC["Alliance"]) then
					clr2 = addon:hexcolor("ALLIANCE")
					if (playerFaction == BFAC["Alliance"]) then
						displaytt = true
					end
				else
					clr2 = addon:hexcolor("NEUTRAL")
					displaytt = true
				end

				if (displaytt) then
					ttAdd(1, -2, 0, 0, rStr, clr1, repvndr["Name"], clr2)
					clr1 = addon:hexcolor("NORMAL")
					clr2 = addon:hexcolor("HIGH")
					ttAdd(2, -2, 1, 0, repvndr["Location"], clr1, cStr, clr2)
				end

			-- World Drop
			elseif (v["Type"] == 7) then

				-- World Drop				RarityLevel
				if (v["ID"] == 1) then
					clr1 = addon:hexcolor("COMMON")
				elseif (v["ID"] == 2) then
					clr1 = addon:hexcolor("UNCOMMON")
				elseif (v["ID"] == 3) then
					clr1 = addon:hexcolor("RARE")
				elseif (v["ID"] == 4) then
					clr1 = addon:hexcolor("EPIC")
				else
					clr1 = addon:hexcolor("NORMAL")
				end

				ttAdd(0, -1, 0, 0, L["World Drop"], clr1)

			-- Custom entry
			elseif (v["Type"] == 8) then
				-- Seasonal:				SeasonEventName
				local customname = customDB[v["ID"]]["Name"]

				clr1 = addon:hexcolor("NORMAL")
				ttAdd(0, -1, 0, 0, customname, clr1)

			-- Unhandled
			else
				clr1 = addon:hexcolor("NORMAL")
				ttAdd(0, -1, 0, 0, L["Unhandled Recipe"], clr1)
			end

		end

		-- Spacer
		ttAdd(0, 0, 0, 0, ".", addon:hexcolor("BLACK"))

		clr1 = addon:hexcolor("NORMAL")

		ttAdd(0, -1, 0, 0, L["ALT_CLICK"], clr1)
		ttAdd(0, -1, 0, 1, L["CTRL_CLICK"], clr1)
		ttAdd(0, -1, 0, 1, L["SHIFT_CLICK"], clr1)
		ttAdd(0, -1, 0, 1, L["CTRL_SHIFT_CLICK"], clr1)

		CollectinatorTooltip:Show()

		-- If we have the spell link tooltip, link it to the owner instead so it shows
		if (spelltooltiplocation ~= L["Off"]) and (spelllink) then
			SetSpellTooltip(CollectinatorTooltip, spelltooltiplocation)
			CollectinatorSpellTooltip:SetHyperlink(spelllink)
			CollectinatorSpellTooltip:Show()
		else
			CollectinatorSpellTooltip:Hide()
		end
	end

end

-- Description: This sets the tooltip on the button during a recipelist update

local function SetRecipeButtonTooltip(bIndex)

	local pButton = addon.PlusListButton[bIndex]
	local rButton = addon.RecipeListButton[bIndex]
	local dStringIndex = rButton.sI
	local rIndex = DisplayStrings[dStringIndex].sID
	local playerFaction = playerData.playerFaction
	local exclude = addon.db.profile.exclusionlist

	pButton:SetScript("OnEnter",
			function (pButton)
				GenerateTooltipContent(pButton, rIndex, playerFaction, exclude)
			end
		)

	pButton:SetScript("OnLeave",
			function()
				CollectinatorTooltip:Hide()
				CollectinatorSpellTooltip:Hide()
			end
		)

	rButton:SetScript("OnEnter",
			function (rButton)
				GenerateTooltipContent(rButton, rIndex, playerFaction, exclude)
			end
		)

	rButton:SetScript("OnLeave",
			function()
				CollectinatorTooltip:Hide()
				CollectinatorSpellTooltip:Hide()
			end
		)

end

-- Description: Scrollframe update stuff

local function RecipeList_Update()

	-- Clear out the current buttons
	for i = 1, maxVisibleRecipes do
		addon.RecipeListButton[i]:SetText("")
		addon.RecipeListButton[i].sI = 0
		addon.PlusListButton[i]:Hide()
		ClearRecipeButtonTooltip(i)
	end

	local entries = #DisplayStrings

	FauxScrollFrame_Update(Collectinator_RecipeScrollFrame, entries, maxVisibleRecipes, 16)

	-- close all popups
	StaticPopup_Hide("Collectinator_NOTSCANNED")
	StaticPopup_Hide("Collectinator_ALLFILTERED")
	StaticPopup_Hide("Collectinator_ALLKNOWN")
	StaticPopup_Hide("Collectinator_ALLEXCLUDED")
	StaticPopup_Hide("Collectinator_SEARCHFILTERED")

	if (entries > 0) then

		-- enable expand button
		Collectinator_ExpandButton:SetNormalFontObject("GameFontNormalSmall")
		Collectinator_ExpandButton:Enable()

		-- now fill in our buttons
		local listOffset = FauxScrollFrame_GetOffset(Collectinator_RecipeScrollFrame)
		local buttonIndex = 1
		local stringsIndex = buttonIndex + listOffset

		local stayInLoop = true

		while (stayInLoop == true) do

			if (DisplayStrings[stringsIndex].IsRecipe) then

				-- display the + symbol
				addon.PlusListButton[buttonIndex]:Show()

				-- Is it expanded or not?
				if (DisplayStrings[stringsIndex].IsExpanded) then
					addon.PlusListButton[buttonIndex]:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up")
					addon.PlusListButton[buttonIndex]:SetPushedTexture("Interface\\Buttons\\UI-MinusButton-Down")
					addon.PlusListButton[buttonIndex]:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
					addon.PlusListButton[buttonIndex]:SetDisabledTexture("Interface\\Buttons\\UI-MinusButton-Disabled")
				else
					addon.PlusListButton[buttonIndex]:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
					addon.PlusListButton[buttonIndex]:SetPushedTexture("Interface\\Buttons\\UI-PlusButton-Down")
					addon.PlusListButton[buttonIndex]:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
					addon.PlusListButton[buttonIndex]:SetDisabledTexture("Interface\\Buttons\\UI-PlusButton-Disabled")
				end

			else
				addon.PlusListButton[buttonIndex]:Hide()
			end

			addon.RecipeListButton[buttonIndex]:SetText(DisplayStrings[stringsIndex].String)
			addon.RecipeListButton[buttonIndex].sI = stringsIndex

			-- Set the tooltip on the button
			SetRecipeButtonTooltip(buttonIndex)

			buttonIndex = buttonIndex + 1
			stringsIndex = stringsIndex + 1

			if ((buttonIndex > maxVisibleRecipes) or (stringsIndex > entries)) then
				stayInLoop = false
			end

		end

	-- Entries are 0 here, so we have 0 to display
	else
		-- disable expand button, it's useless here and would spam the same error again
		Collectinator_ExpandButton:SetNormalFontObject("GameFontDisableSmall")
		Collectinator_ExpandButton:Disable()

		local showpopup = false

		if (addon.db.profile.hidepopup ~= true) then
			showpopup = true
		end

		-- If we haven't run this before we'll show pop-ups for the first time.
		if (addon.db.profile.addonversion ~= addonversion) then
			addon.db.profile.addonversion = addonversion
			showpopup = true
		end

		-- If the recipe total is at 0, it means we have not scanned the profession yet
		if (playerData.recipes_total == 0) then
			if (showpopup == true) then
				StaticPopup_Show("Collectinator_NOTSCANNED")
			end
		-- We know all the recipes
		elseif (playerData.recipes_known == playerData.recipes_total) then
			if (showpopup == true) then
				StaticPopup_Show("Collectinator_ALLKNOWN")
			end
		-- Our filters are actually filtering something
		elseif ((playerData.recipes_total_filtered - playerData.recipes_known_filtered) == 0) then
			if (showpopup == true) then
				StaticPopup_Show("Collectinator_ALLFILTERED")
			end
		-- Our exclusion list is preventing something from being displayed
		elseif (playerData.excluded_recipes_unknown ~= 0) then
			if (showpopup == true) then
				StaticPopup_Show("Collectinator_ALLEXCLUDED")
			end
		-- We have some search text that is preventing stuff from being displayed
		elseif (Collectinator_SearchText:GetText() ~= "") then
			StaticPopup_Show("Collectinator_SEARCHFILTERED")
		else
			addon:Print(L["NO_DISPLAY"])
			addon:Print("DEBUG: recipes_total check for 0")
			addon:Print("DEBUG: recipes_total: " .. playerData.recipes_total)
			addon:Print("DEBUG: recipes_total check for equal to recipes_total")
			addon:Print("DEBUG: recipes_known: " .. playerData.recipes_known)
			addon:Print("DEBUG: recipes_total: " .. playerData.recipes_total)
			addon:Print("DEBUG: recipes_total_filtered - recipes_known_filtered = 0")
			addon:Print("DEBUG: recipes_total_filtered: " .. playerData.recipes_total_filtered)
			addon:Print("DEBUG: recipes_known_filtered: " .. playerData.recipes_known_filtered)
			addon:Print("DEBUG: excluded_recipes_unknown ~= 0")
			addon:Print("DEBUG: excluded_recipes_unknown: " .. playerData.excluded_recipes_unknown)
		end

	end
	
end

-- Description: Updates the progress bar based on the number of known / total recipes

local function SetProgressBar(playerData)

	local pbCur, pbMax

	if (SortedCollections[currentProfIndex].name == "MOUNT") then
			pbCur = playerData.totalknownmounts
			pbMax = playerData.totalmounts
	elseif (SortedCollections[currentProfIndex].name == "CRITTER") then
			pbCur = playerData.totalknownpets
			pbMax = playerData.totalpets
	end

	Collectinator_ProgressBar:SetMinMaxValues(0, pbMax)
	Collectinator_ProgressBar:SetValue(pbCur)

	if (floor(pbCur / pbMax * 100) < 101) and (pbCur >= 0) and (pbMax >= 0) then
		Collectinator_ProgressBarText:SetText(pbCur .. " / " .. pbMax .. " - " .. floor(pbCur / pbMax * 100) .. "%")
	else
		pbCur = 0
		pbMax = 0
		Collectinator_ProgressBarText:SetText(pbCur .. " / " .. pbMax .. " - " .. L["NOT_YET_SCANNED"])
	end

end

-- Description: 

function addon:ResetGUI()

	addon.db.profile.frameopts.offsetx = 0
	addon.db.profile.frameopts.offsety = 0
	addon.db.profile.frameopts.anchorTo = ""
	addon.db.profile.frameopts.anchorFrom = ""
	addon.db.profile.frameopts.uiscale = 1
	addon.db.profile.frameopts.tooltipscale = .9
	addon.db.profile.frameopts.fontsize = 11

end

-- Under various conditions, I'm going to have to redisplay my recipe list
-- This could happen because a filter changes, a new profession is chosen, or
-- a new search occurred. Use this function to do all the dirty work

-- Description: 

local function ReDisplay()
	addon:UpdateFilters(recipeDB, allSpecTable, playerData)
	sortedRecipeIndex = addon:SortDatabase(recipeDB)

	--playerData.excluded_recipes_known, playerData.excluded_recipes_unknown = addon:GetExclusions(recipeDB,playerData.playerProfession)

	initDisplayStrings()

	SetProgressBar(playerData)

	-- Make sure our expand all button is set to expandall
	Collectinator_ExpandButton:SetText(L["EXPANDALL"])
	addon:TooltipDisplay(Collectinator_ExpandButton, L["EXPANDALL_DESC"])

	-- And update our scrollframe
	RecipeList_Update()

end

function addon:CreateScanButton()
	local button = CreateFrame("Button", "Collectinator_ScanButton", PetPaperDollFrameCompanionFrame, "UIPanelButtonTemplate")
	self.ScanButton = button

	button:SetHeight(20)
	button:RegisterForClicks("LeftButtonUp")
	button:SetScript("OnClick",
				  function()
					  addon:Collectinator_Command(false)
					  --addon:ToggleFrame()
				  end)

	button:SetScript("OnEnter",
				   function(this)
					   GameTooltip_SetDefaultAnchor(GameTooltip, this)
					   GameTooltip:SetText(L["SCAN_COMPANIONS_DESC"])
					   GameTooltip:Show()
				   end)

	button:SetScript("OnLeave", function() GameTooltip:Hide() end)
	button:SetText(L["Scan"])

	-- Set the frame level of the button to be 1 deeper than its parent
	local parent = button:GetParent()
	button:SetFrameLevel(parent:GetFrameLevel() + 1)
	button:SetFrameStrata(parent:GetFrameStrata())

	button:Enable()
	button:ClearAllPoints()

	button:SetPoint("LEFT", CompanionNextPageButton, "RIGHT", 0, 0)
	button:SetWidth(addon.ScanButton:GetTextWidth() + 10)

	button:Show()
	self:CreateScanButton = nil
end

function addon:AddTabTotals()

	PetPaperDollFrameTab2:SetScript("OnEnter",
			function(this)
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(GetNumCompanions("CRITTER") .. " companions known.")
				GameTooltip:Show()
			end
		)
	PetPaperDollFrameTab2:SetScript("OnLeave",
			function()
				GameTooltip:Hide()
			end
		)

	PetPaperDollFrameTab3:SetScript("OnEnter",
			function(this)
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(GetNumCompanions("MOUNT") .. " mounts known.")
				GameTooltip:Show()
			end
		)
	PetPaperDollFrameTab3:SetScript("OnLeave",
			function()
				GameTooltip:Hide()
			end
		)
end

-- Description: 

function addon:ShowScanButton()

	-- Anchor to ATSW
	if (ATSWFrame) then
		addon.ScanButton:SetParent(ATSWFrame)
		addon.ScanButton:ClearAllPoints()
		addon.ScanButton:SetPoint("RIGHT", ATSWOptionsButton, "LEFT", 0, 0)
		addon.ScanButton:SetHeight(ATSWOptionsButton:GetHeight())
		addon.ScanButton:SetWidth(90)
	-- Anchor to Cauldron
	elseif (CauldronFrame) then
		addon.ScanButton:SetParent(CauldronFrame)
		addon.ScanButton:ClearAllPoints()
		addon.ScanButton:SetPoint("TOP", CauldronFrame, "TOPRIGHT", -58, -52)
		addon.ScanButton:SetWidth(90)
	-- Anchor to trade window
	else
		addon.ScanButton:SetParent(TradeSkillFrame)
		addon.ScanButton:ClearAllPoints()

		local loc = addon.db.profile.scanbuttonlocation

		if (loc == "TR") then
			addon.ScanButton:SetPoint("RIGHT",TradeSkillFrameCloseButton,"LEFT",4,0)
		elseif (loc == "TL") then
			addon.ScanButton:SetPoint("LEFT",TradeSkillFramePortrait,"RIGHT",2,12)
		elseif (loc == "BR") then
			addon.ScanButton:SetPoint("TOP",TradeSkillCancelButton,"BOTTOM",0,-5)
		elseif (loc == "BL") then
			addon.ScanButton:SetPoint("TOP",TradeSkillCreateAllButton,"BOTTOM",0,-5)
		end
		addon.ScanButton:SetWidth(addon.ScanButton:GetTextWidth() + 10)
	end

	addon.ScanButton:Show()

end

-- Description: 

function addon:TooltipDisplay(this, textLabel)

	this:SetScript("OnEnter",
			function (this)
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(textLabel, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)
				GameTooltip:Show()
			end
		)

	this:SetScript("OnLeave",
			function(this)
				GameTooltip:Hide()
			end
		)

end

-- Description: 

function addon.numFilters()

	-- IMPORTANT: If the number of filters we're maintaining changes, you'll need to change the FilterValueMap
	-- at the end (of CreateFrame), as well as the following index value:
	local MaxFilters = 81

	local total = 0
	local active = 0

	for i = 1, MaxFilters do
		if (FilterValueMap[i].svroot == "disabled") then
			-- ignore these filters in the totals
		elseif (FilterValueMap[i].svroot[ FilterValueMap[i].svval ] == true) then
			active = active + 1
			total = total + 1
		else
			total = total + 1
		end
	end
	return active, total

end

-- Description: 

function addon.resetTitle()

	-- reset the frame title line
	local myTitle = ""

	if (addon.Frame._Expanded == true) then
		local aFil, tFil = addon.numFilters()
		myTitle = "Collectinator (v." .. addonversion .. ") - (" .. aFil .. "/" .. tFil .. " " .. L["Filters"] .. ")"
	else
		myTitle = "Collectinator (v." .. addonversion .. ")"
	end

	addon.Frame.HeadingText:SetText(addon:Normal(myTitle))

end

-- Description: 

function addon.filterSwitch(val)

	if (FilterValueMap[val].cb:GetChecked()) then
		FilterValueMap[val].svroot[ FilterValueMap[val].svval ] = true
	else
		FilterValueMap[val].svroot[ FilterValueMap[val].svval ] = false
	end

	addon.resetTitle()

	-- Use new filters
	ReDisplay()

end

-- Description: 

local function HideCollectinator_ExpOptCB(ignorevalue)

			Collectinator_ExpGeneralOptCB.text:SetText(addon:Yellow(ExpButtonText[1]))
			Collectinator_ExpObtainOptCB.text:SetText(addon:Yellow(ExpButtonText[2]))
			Collectinator_ExpBindingOptCB.text:SetText(addon:Yellow(ExpButtonText[3]))
			Collectinator_ExpItemOptCB.text:SetText(addon:Yellow(ExpButtonText[4]))
			Collectinator_ExpPlayerOptCB.text:SetText(addon:Yellow(ExpButtonText[5]))
			Collectinator_ExpRepOptCB.text:SetText(addon:White(ExpButtonText[6]))
			Collectinator_ExpMiscOptCB.text:SetText(addon:Yellow(ExpButtonText[7]))

	if (ignorevalue ~= "general") then
		Collectinator_ExpGeneralOptCB:SetChecked(false)
		Collectinator_ExpGeneralOptCB.text:SetText(addon:Yellow(ExpButtonText[1]))
	else
		Collectinator_ExpGeneralOptCB.text:SetText(addon:White(ExpButtonText[1]))
	end

	if (ignorevalue ~= "obtain") then
		Collectinator_ExpObtainOptCB:SetChecked(false)
		Collectinator_ExpObtainOptCB.text:SetText(addon:Yellow(ExpButtonText[2])) 
	else
		Collectinator_ExpObtainOptCB.text:SetText(addon:White(ExpButtonText[2]))
	end

	if (ignorevalue ~= "binding") then
		Collectinator_ExpBindingOptCB:SetChecked(false)
		Collectinator_ExpBindingOptCB.text:SetText(addon:Yellow(ExpButtonText[3]))
	else
		Collectinator_ExpBindingOptCB.text:SetText(addon:White(ExpButtonText[3]))
	end

	if (ignorevalue ~= "item") then
		Collectinator_ExpItemOptCB:SetChecked(false)
		Collectinator_ExpItemOptCB.text:SetText(addon:Yellow(ExpButtonText[4]))
	else
		Collectinator_ExpItemOptCB.text:SetText(addon:White(ExpButtonText[4]))
	end

	if (ignorevalue ~= "player") then
		Collectinator_ExpPlayerOptCB:SetChecked(false)
		Collectinator_ExpPlayerOptCB.text:SetText(addon:Yellow(ExpButtonText[5]))
	else
		Collectinator_ExpPlayerOptCB.text:SetText(addon:White(ExpButtonText[5]))
	end

	if (ignorevalue ~= "rep") then
		Collectinator_ExpRepOptCB:SetChecked(false)
		Collectinator_ExpRepOptCB.text:SetText(addon:Yellow(ExpButtonText[6]))
	else
		Collectinator_ExpRepOptCB.text:SetText(addon:White(ExpButtonText[6]))
	end

	if (ignorevalue ~= "misc") then
		Collectinator_ExpMiscOptCB:SetChecked(false)
		Collectinator_ExpMiscOptCB.text:SetText(addon:Yellow(ExpButtonText[7]))
	else
		Collectinator_ExpMiscOptCB.text:SetText(addon:White(ExpButtonText[7]))
	end

end

-- Description: 

function addon.ToggleFilters()

	local xPos = addon.Frame:GetLeft()
	local yPos = addon.Frame:GetBottom()

	if (addon.Frame._Expanded == true) then
		-- Adjust the frame size and texture
		addon.Frame:ClearAllPoints()
		addon.Frame:SetWidth(293)
		addon.Frame:SetHeight(447)
		addon.bgTexture:SetTexture([[Interface\Addons\Collectinator\img\main]])
		addon.bgTexture:SetAllPoints(addon.Frame)
		addon.bgTexture:SetTexCoord(0, (293/512), 0, (447/512))
		addon.Frame._Expanded = false
		addon.Frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", xPos, yPos)
		Collectinator_ProgressBar:SetWidth(195)

		-- Change the text and tooltip for the filter button
		Collectinator_FilterButton:SetText(L["FILTER_OPEN"])
		addon:TooltipDisplay(Collectinator_FilterButton, L["FILTER_OPEN_DESC"])

		-- Hide my 7 buttons
		Collectinator_ExpGeneralOptCB:Hide()
		Collectinator_ExpObtainOptCB:Hide()
		Collectinator_ExpBindingOptCB:Hide()
		Collectinator_ExpItemOptCB:Hide()
		Collectinator_ExpPlayerOptCB:Hide()
		Collectinator_ExpRepOptCB:Hide()
		Collectinator_ExpMiscOptCB:Hide()

		-- Uncheck the seven buttons
		HideCollectinator_ExpOptCB()

		-- Hide the flyaway panel
		addon.Flyaway:Hide()

		Collectinator_ResetButton:Hide()
	else

		-- Adjust the frame size and texture
		addon.Frame:ClearAllPoints()
		addon.Frame:SetWidth(444)
		addon.Frame:SetHeight(447)
		addon.bgTexture:SetTexture([[Interface\Addons\Collectinator\img\expanded]])
		addon.bgTexture:SetAllPoints(addon.Frame)
		addon.bgTexture:SetTexCoord(0, (444/512), 0, (447/512))
		addon.Frame._Expanded = true
		addon.Frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", xPos, yPos)
		Collectinator_ProgressBar:SetWidth(345)

		-- Change the text and tooltip for the filter button
		Collectinator_FilterButton:SetText(L["FILTER_CLOSE"])
		addon:TooltipDisplay(Collectinator_FilterButton, L["FILTER_CLOSE_DESC"])

		-- Show my 7 buttons
		Collectinator_ExpGeneralOptCB:Show()
		Collectinator_ExpObtainOptCB:Show()
		Collectinator_ExpBindingOptCB:Show()
		Collectinator_ExpItemOptCB:Show()
		Collectinator_ExpPlayerOptCB:Show()
		Collectinator_ExpRepOptCB:Show()
		Collectinator_ExpMiscOptCB:Show()

		Collectinator_ResetButton:Show()

		-- and finally, show our frame
	end

	-- Reset our title
	addon.resetTitle()

end

-- Description: 

function addon:GenericMakeCB(cButton, anchorFrame, ttText, scriptVal, row, col, misc)

	local pushdown = {
		[64] = 1, [65] = 1, [66] = 1, [67] = 1, [19] = 1,
	}
	-- set the position of the new checkbox
	local xPos = 2 + ((col - 1) * 100)
	local yPos = -3 - ((row - 1) * 17)
	if (pushdown[scriptVal]) then yPos = yPos - 5 end
	cButton:SetPoint("TOPLEFT", anchorFrame, "TOPLEFT", xPos, yPos)
	cButton:SetHeight(24)
	cButton:SetWidth(24)
	-- depending if we're on the misc panel thingers or not, set an alternative OnClick method
	if (misc == 0) then
		cButton:SetScript("OnClick", function() addon.filterSwitch(scriptVal) end)
	else
		cButton:SetScript("OnClick", function() addon.db.profile.ignoreexclusionlist = not addon.db.profile.ignoreexclusionlist ReDisplay() end)
	end

	addon:TooltipDisplay(cButton, ttText, 1)

end

-- Description: 

function addon:GenericCreateButton(
	bName, parentFrame,	bHeight, bWidth,
	anchorFrom, anchorFrame, anchorTo, xOffset, yOffset,
	bNormFont, bHighFont, initText, tAlign, tooltipText, noTextures)

	-- I hate stretchy buttons. Thanks very much to ckknight for this code
	-- (found in RockConfig)

	-- when pressed, the button should look pressed
	local function button_OnMouseDown(this)
		if this:IsEnabled() == 1 then
			this.left:SetTexture([[Interface\Buttons\UI-Panel-Button-Down]])
			this.middle:SetTexture([[Interface\Buttons\UI-Panel-Button-Down]])
			this.right:SetTexture([[Interface\Buttons\UI-Panel-Button-Down]])
		end
	end
	-- when depressed, return to normal
	local function button_OnMouseUp(this)
		if this:IsEnabled() == 1 then
			this.left:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
			this.middle:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
			this.right:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
		end
	end

	local function button_Disable(this)
		this.left:SetTexture([[Interface\Buttons\UI-Panel-Button-Disabled]])
		this.middle:SetTexture([[Interface\Buttons\UI-Panel-Button-Disabled]])
		this.right:SetTexture([[Interface\Buttons\UI-Panel-Button-Disabled]])
		this:__Disable()
		this:EnableMouse(false)
	end

	local function button_Enable(this)
		this.left:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
		this.middle:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
		this.right:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
		this:__Enable()
		this:EnableMouse(true)
	end

	local button = CreateFrame("Button", bName, parentFrame)

	button:SetWidth(bWidth)
	button:SetHeight(bHeight)

	if (noTextures == 1) then
		local left = button:CreateTexture(button:GetName() .. "_LeftTexture", "BACKGROUND")
		button.left = left
		local middle = button:CreateTexture(button:GetName() .. "_MiddleTexture", "BACKGROUND")
		button.middle = middle
		local right = button:CreateTexture(button:GetName() .. "_RightTexture", "BACKGROUND")
		button.right = right

		left:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
		middle:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])
		right:SetTexture([[Interface\Buttons\UI-Panel-Button-Up]])

		left:SetPoint("TOPLEFT")
		left:SetPoint("BOTTOMLEFT")
		left:SetWidth(12)
		left:SetTexCoord(0, 0.09375, 0, 0.6875)

		right:SetPoint("TOPRIGHT")
		right:SetPoint("BOTTOMRIGHT")
		right:SetWidth(12)
		right:SetTexCoord(0.53125, 0.625, 0, 0.6875)

		middle:SetPoint("TOPLEFT", left, "TOPRIGHT")
		middle:SetPoint("BOTTOMRIGHT", right, "BOTTOMLEFT")
		middle:SetTexCoord(0.09375, 0.53125, 0, 0.6875)

		button:SetScript("OnMouseDown", button_OnMouseDown)
		button:SetScript("OnMouseUp", button_OnMouseUp)
		button:SetScript("OnEnter", SubControl_OnEnter)
		button:SetScript("OnLeave", SubControl_OnLeave)

		button.__Enable = button.Enable
		button.__Disable = button.Disable
		button.Enable = button_Enable
		button.Disable = button_Disable

		local highlight = button:CreateTexture(button:GetName() .. "_Highlight", "OVERLAY", "UIPanelButtonHighlightTexture")
		button:SetHighlightTexture(highlight)
	elseif (noTextures == 2) then
		button:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
		button:SetPushedTexture("Interface\\Buttons\\UI-PlusButton-Down")
		button:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
		button:SetDisabledTexture("Interface\\Buttons\\UI-PlusButton-Disabled")
	elseif (noTextures == 3) then
		button:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up")
		button:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down")
		button:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Hilight")
		button:SetDisabledTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Disable")
	end

	local text = button:CreateFontString(button:GetName() .. "_FontString", "ARTWORK")
	button:SetFontString(text)
	button.text = text
	text:SetPoint("LEFT", button, "LEFT", 7, 0)
	text:SetPoint("RIGHT", button, "RIGHT", -7, 0)
	text:SetJustifyH(tAlign)

	text:SetFontObject(bNormFont)
--	text:SetHighlightFontObject(bHighFont)
--	text:SetDisabledFontObject(GameFontDisableSmall)

	text:SetText(initText)		

	button:SetPoint(anchorFrom, anchorFrame, anchorTo, xOffset, yOffset)

	if (tooltipText ~= "") then

		addon:TooltipDisplay(button, tooltipText)

	end

	return button

end

-- Description: Generic function for creating my expanded panel buttons

function addon:CreateExpCB(bName, bTex, panelIndex)
	local ExpTextureSize = 34

	if ((bName == "Collectinator_RepOldWorldCB") or (bName == "Collectinator_RepBCCB") or (bName == "Collectinator_RepLKCB")) then
		local cButton = CreateFrame("CheckButton", bName, addon.Fly_Rep) -- , "UICheckButtonTemplate")
			cButton:SetWidth(100)
			cButton:SetHeight(46)
			cButton:SetChecked(false)
	
		local iconTex = cButton:CreateTexture(cButton:GetName() .. "buttonTex", "BORDER")
			if (bName == "Collectinator_RepLKCB") then
				iconTex:SetTexture("Interface\\Addons\\Collectinator\\img\\" .. bTex)
			else
				iconTex:SetTexture('Interface/Glues/Common/' .. bTex)
			end
			iconTex:SetWidth(100)
			iconTex:SetHeight(46)
			iconTex:SetAllPoints(cButton)

		local pushedTexture = cButton:CreateTexture(cButton:GetName() .. "pTex", "ARTWORK")
			pushedTexture:SetTexture('Interface/Buttons/UI-Quickslot-Depress')
			pushedTexture:SetAllPoints(cButton)
			cButton:SetPushedTexture(pushedTexture)
		local highlightTexture = cButton:CreateTexture()
			highlightTexture:SetTexture('Interface/Buttons/ButtonHilight-Square')
			highlightTexture:SetAllPoints(cButton)
			highlightTexture:SetBlendMode('ADD')
			cButton:SetHighlightTexture(highlightTexture)
		local checkedTexture = cButton:CreateTexture()
			checkedTexture:SetTexture('Interface/Buttons/CheckButtonHilight')
			checkedTexture:SetAllPoints(cButton)
			checkedTexture:SetBlendMode('ADD')
			cButton:SetCheckedTexture(checkedTexture)

		-- And throw up a tooltip
		if (bName == "Collectinator_RepOldWorldCB") then
			addon:TooltipDisplay(cButton, L["FILTERING_OLDWORLD_DESC"])
		elseif (bName == "Collectinator_RepBCCB") then
			addon:TooltipDisplay(cButton, L["FILTERING_BC_DESC"])
		else
			addon:TooltipDisplay(cButton, L["FILTERING_WOTLK_DESC"])
		end

		return cButton
	else 
		local cButton = CreateFrame("CheckButton", bName, addon.Frame) -- , "UICheckButtonTemplate")
			cButton:SetWidth(ExpTextureSize)
			cButton:SetHeight(ExpTextureSize)
			cButton:SetScript("OnClick", function() 
				addon.DoFlyaway(panelIndex)
			end)

		local bgTex = cButton:CreateTexture(cButton:GetName() .. "bgTex", "BACKGROUND")
			bgTex:SetTexture('Interface/SpellBook/UI-Spellbook-SpellBackground')
			bgTex:SetHeight(ExpTextureSize + 6)
			bgTex:SetWidth(ExpTextureSize + 4)
			bgTex:SetTexCoord(0, (43/64), 0, (43/64))
			bgTex:SetPoint("CENTER", cButton, "CENTER", 0, 0)
		local iconTex = cButton:CreateTexture(cButton:GetName() .. "iconTex", "BORDER")
			iconTex:SetTexture('Interface/Icons/' .. bTex)
			iconTex:SetAllPoints(cButton)
		local pushedTexture = cButton:CreateTexture(cButton:GetName() .. "pTex", "ARTWORK")
			pushedTexture:SetTexture('Interface/Buttons/UI-Quickslot-Depress')
			pushedTexture:SetAllPoints(cButton)
			cButton:SetPushedTexture(pushedTexture)
		local highlightTexture = cButton:CreateTexture()
			highlightTexture:SetTexture('Interface/Buttons/ButtonHilight-Square')
			highlightTexture:SetAllPoints(cButton)
			highlightTexture:SetBlendMode('ADD')
			cButton:SetHighlightTexture(highlightTexture)
		local checkedTexture = cButton:CreateTexture()
			checkedTexture:SetTexture('Interface/Buttons/CheckButtonHilight')
			checkedTexture:SetAllPoints(cButton)
			checkedTexture:SetBlendMode('ADD')
			cButton:SetCheckedTexture(checkedTexture)
		-- Create the text object to go along with it
		local cbText = cButton:CreateFontString("cbText", "OVERLAY", "GameFontHighlight")
			cbText:SetText(addon:Yellow(ExpButtonText[panelIndex]))
			cbText:SetPoint("LEFT", cButton, "RIGHT", 5, 0)
			cbText:SetHeight(14)
			cbText:SetWidth(100)
			cbText:SetJustifyH("LEFT")
			cButton.text = cbText

		-- And throw up a tooltip
		addon:TooltipDisplay(cButton, ExpButtonTT[panelIndex])
		cButton:Hide()
		return cButton

	end

end

do

	local currentProfession = nil

	-- Description: Provides logic for when you are clicking the scan button.
	-- Expected result: Does appropiate task depending on what button has been clicked and the current state.
	-- Input: None.
	-- Output: Frame is toggled, etc depending on state.

	function addon:ToggleFrame()

		-- What profession is opened?
		local cprof = GetTradeSkillLine()

		-- The frame is visible
		if (addon.Frame and addon.Frame:IsVisible()) then
			-- Shift only (Text dump)
			if (IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown()) then
				self:Collectinator_Command(true)
			-- Alt only (Wipe icons from map)
			elseif (not IsShiftKeyDown() and IsAltKeyDown() and not IsControlKeyDown()) then
				self:ClearMap()
			-- If we have the same profession open, then we close the scanned window
			elseif (not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown()) and (currentProfession == cprof) then
				addon.Frame:Hide()
			-- If we have a different profession open we do a scan
			elseif (not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown()) then
				self:Collectinator_Command(false)
				self:SetupMap()
				currentProfession = cprof
			end
		-- Frame is hidden
		else
			currentProfession = cprof
			-- Shift only (Text dump)
			if (IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown()) then
				self:Collectinator_Command(true)
			-- Alt only (Wipe icons from map)
			elseif (not IsShiftKeyDown() and IsAltKeyDown() and not IsControlKeyDown()) then
				self:ClearMap()
			-- No modification
			elseif (not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown()) then
				self:Collectinator_Command(false)
				self:SetupMap()
			end
		end

	end

end

-- Description: Set the texture on the switcher button.

local function SetSwitcherTexture(tex)

-- This is really only called the first time its displayed. It should reflect the first
-- profession the user has selected, or that shows up in his lists.

-- For now, just display the first texture
	local Collectinator_S_NTexture = Collectinator_SwitcherButton:CreateTexture("Collectinator_S_NTexture", "BACKGROUND")
	Collectinator_S_NTexture:SetTexture([[Interface\Addons\Collectinator\img\]] .. tex .. [[_up]])
	Collectinator_S_NTexture:SetTexCoord(0, 1, 0, 1)
	Collectinator_S_NTexture:SetAllPoints(Collectinator_SwitcherButton)
	local Collectinator_S_PTexture = Collectinator_SwitcherButton:CreateTexture("Collectinator_S_PTexture", "BACKGROUND")
	Collectinator_S_PTexture:SetTexture([[Interface\Addons\Collectinator\img\]] .. tex .. [[_down]])
	Collectinator_S_PTexture:SetTexCoord(0, 1, 0, 1)
	Collectinator_S_PTexture:SetAllPoints(Collectinator_SwitcherButton)
	local Collectinator_S_DTexture = Collectinator_SwitcherButton:CreateTexture("Collectinator_S_DTexture", "BACKGROUND")
	Collectinator_S_DTexture:SetTexture([[Interface\Addons\Collectinator\img\]] .. tex .. [[_up]])
	Collectinator_S_DTexture:SetTexCoord(0, 1, 0, 1)
	Collectinator_S_DTexture:SetAllPoints(Collectinator_SwitcherButton)

	Collectinator_SwitcherButton:SetNormalTexture(Collectinator_S_NTexture)
	Collectinator_SwitcherButton:SetPushedTexture(Collectinator_S_PTexture)
	Collectinator_SwitcherButton:SetDisabledTexture(Collectinator_S_DTexture)

end

-- Description: Switch the displayed profession in the main panel

function addon:SwitchProfs(button)
	-- Known professions should be in playerData["Professions"]

	-- This loop is gonna be weird. The reason is because we need to
	-- ensure that we cycle through all the known professions, but also
	-- that we do so in order. That means that if the currently displayed
	-- profession is the last one in the list, we're actually going to
	-- iterate completely once to get to the currently displayed profession
	-- and then iterate again to make sure we display the next one in line.
	-- Further, there is the nuance that the person may not know any
	-- professions yet at all. User are so annoying.
	local startLoop = 0
	local endLoop = 0
	local displayProf = 0

	-- Close all possible pop-up windows
	StaticPopup_Hide("Collectinator_NOTSCANNED")
	StaticPopup_Hide("Collectinator_ALLFILTERED")
	StaticPopup_Hide("Collectinator_ALLKNOWN")
	StaticPopup_Hide("Collectinator_ALLEXCLUDED")
	StaticPopup_Hide("Collectinator_SEARCHFILTERED")

	-- ok, so first off, if we've never done this before, there is no "current"
	-- and a single iteration will do nicely, thank you
	if button == "LeftButton" then
		-- normal profession switch
		if (currentProfIndex == 0) then
			startLoop = 1
			endLoop = addon.MaxCollections + 1
		else
			startLoop = currentProfIndex + 1
			endLoop = currentProfIndex
		end
		local index = startLoop
	
		while (index ~= endLoop) do
			if (index > MaxCollections) then
				index = 1
			else
				displayProf = index
				currentProfIndex = index
			end
		end
	elseif button == "RightButton" then
		-- reverse profession switch
		if (currentProfIndex == 0) then
			startLoop = addon.MaxCollections + 1
			endLoop = 0
		else
			startLoop = currentProfIndex - 1
			endLoop = currentProfIndex
		end
		local index = startLoop
	
		while (index ~= endLoop) do
			if (index < 1) then
				index = MaxCollections
			else
				displayProf = index
				currentProfIndex = index
				break
			end
		end
	end

	-- Redisplay the button with the new skill
	SetSwitcherTexture(SortedCollections[currentProfIndex].texture)
	playerData.playerProfession = SortedCollections[currentProfIndex].name
	currentProfession = playerData.playerProfession

	ReDisplay()
	addon.resetTitle()

end

-- Description: 

local function expandEntry(dsIndex)

	-- insertIndex is the position in DisplayStrings that we want
	-- to expand. Since we are expanding the current entry, the return
	-- value should be the index of the next button after the expansion
	-- occurs

	local filterDB = addon.db.profile.filters
	local obtainDB = filterDB.obtain
	local recipeIndex = DisplayStrings[dsIndex].sID

	dsIndex = dsIndex + 1

	-- Need to loop through the available acquires and put them all in
	for k, v in pairs(recipeDB[recipeIndex]["Acquire"]) do

		local pad = "  "
		local t

		-- Trainer Type
		if (v["Type"] == 1) then

			local trnr = trainerDB[v["ID"]]

			if ((CheckDisplayFaction(filterDB, trnr["Faction"]) == true) and (obtainDB.trainer == true)) then

				local tStr = addon:Trainer(L["Trainer"] .. " : ")
				local nStr = ""
				local cStr = ""

				if (trnr["Coordx"] ~= 0) and (trnr["Coordy"] ~= 0) then
					cStr = addon:Coords("(" .. trnr["Coordx"] .. ", " .. trnr["Coordy"] .. ")")
				end

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				if (trnr["Faction"] == BFAC["Horde"]) then
					nStr = addon:Horde(trnr["Name"])
				elseif (trnr["Faction"] == BFAC["Alliance"]) then
					nStr = addon:Alliance(trnr["Name"])
				else
					nStr = addon:Neutral(trnr["Name"])
				end

				t.String = pad .. tStr .. nStr

				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. pad .. trnr["Location"] .. " " .. cStr
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		-- Vendor
		elseif (v["Type"] == 2) then

			local vndr = vendorDB[v["ID"]]

			if ((CheckDisplayFaction(filterDB, vndr["Faction"]) == true) and (obtainDB.vendor == true)) then

				local tStr = addon:Vendor(L["Vendor"] .. " : ")
				local nStr = ""
				local cStr = ""

				if (vndr["Coordx"] ~= 0) and (vndr["Coordy"] ~= 0) then
					cStr = addon:Coords("(" .. vndr["Coordx"] .. ", " .. vndr["Coordy"] .. ")")
				end

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				if (vndr["Faction"] == BFAC["Horde"]) then
					nStr = addon:Horde(vndr["Name"])
				elseif (vndr["Faction"] == BFAC["Alliance"]) then
					nStr = addon:Alliance(vndr["Name"])
				else
					nStr = addon:Neutral(vndr["Name"])
				end

				t.String = pad .. tStr .. nStr

				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. pad .. vndr["Location"] .. " " .. cStr
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		-- Mob Drop Obtain
		elseif (v["Type"] == 3) then

			if ((obtainDB.mobdrop == true) or (obtainDB.instance == true) or (obtainDB.raid == true)) then

				local mob = mobDB[v["ID"]]

				local tStr = addon:MobDrop(L["Mob Drop"] .. " : ")
				local nStr = ""
				local cStr = ""

				if (mob["Coordx"] ~= 0) and (mob["Coordy"] ~= 0) then
					cStr = addon:Coords("(" .. mob["Coordx"] .. ", " .. mob["Coordy"] .. ")")
				end

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				nStr = addon:Red(mob["Name"])
				t.String = pad .. tStr .. nStr

				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. pad .. mob["Location"] .. " " .. cStr
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		-- Quest Obtain
		elseif (v["Type"] == 4) then

			local qst = questDB[v["ID"]]

			if ((CheckDisplayFaction(filterDB, qst["Faction"]) == true) and (obtainDB.quest == true))then

				local tStr = addon:Quest(L["Quest"] .. " : ")
				local nStr = ""
				local cStr = ""

				if (qst["Coordx"] ~= 0) and (qst["Coordy"] ~= 0) then
					cStr = addon:Coords("(" .. qst["Coordx"] .. ", " .. qst["Coordy"] .. ")")
				end

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				if (qst["Faction"] == BFAC["Horde"]) then
					nStr = addon:Horde(qst["Name"])
				elseif (qst["Faction"] == BFAC["Alliance"]) then
					nStr = addon:Alliance(qst["Name"])
				else
					nStr = addon:Neutral(qst["Name"])
				end

				t.String = pad .. tStr .. nStr

				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1
				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true
				t.String = pad .. pad .. qst["Location"] .. " " .. cStr
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		-- Seasonal
		elseif (v["Type"] == 5) then

			if (obtainDB.seasonal == true) then

				local ssnname = seasonDB[v["ID"]]["Name"]

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				local tStr = addon:Season(seasonal .. " : " .. ssnname)

				t.String = pad .. tStr
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		elseif (v["Type"] == 6) then -- Need to check if we're displaying the currently id'd rep or not as well
			-- Reputation Obtain
			-- Rep: ID, Faction
			-- RepLevel = 0 (Neutral), 1 (Friendly), 2 (Honored), 3 (Revered), 4 (Exalted)
			-- RepVendor - VendorID
			-- Rep: RepName
			--   RepLevel: RepVndrName
			--     RepVndrLoc (Cx,Cy)

			local repfac = repDB[v["ID"]]
			local repname = repfac["Name"] -- name
			local rplvl = v["RepLevel"]
			local repvndr = vendorDB[v["RepVendor"]]

			if (CheckDisplayFaction(filterDB, repvndr["Faction"]) == true) then

				-- properly colourize
				local tStr = addon:Rep(L["Reputation"] .. " : ")
				local nStr = ""
				local rStr = ""
				local cStr = ""

				if (repvndr["Coordx"] ~= 0) and (repvndr["Coordy"] ~= 0) then

					cStr = addon:Coords("(" .. repvndr["Coordx"] .. ", " .. repvndr["Coordy"] .. ")")

				end

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. tStr .. repname
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

				-- RepLevel = 0 (Neutral), 1 (Friendly), 2 (Honored), 3 (Revered), 4 (Exalted)
				if (rplvl == 0) then rStr = addon:Neutral(BFAC["Neutral"] .. " : ")
				elseif (rplvl == 1) then rStr = addon:Friendly(BFAC["Neutral"] .. " : ")
				elseif (rplvl == 2) then rStr = addon:Honored(BFAC["Honored"] .. " : ")
				elseif (rplvl == 3) then rStr = addon:Revered(BFAC["Revered"] .. " : ")
				else rStr = addon:Exalted(BFAC["Exalted"] .. " : ") end

				if (repvndr["Faction"] == BFAC["Horde"]) then
					nStr = addon:Horde(repvndr["Name"])
				elseif (repvndr["Faction"] == BFAC["Alliance"]) then
					nStr = addon:Alliance(repvndr["Name"])
				else
					nStr = addon:Neutral(repvndr["Name"])
				end

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. pad .. rStr .. nStr 

				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. pad .. pad .. repvndr["Location"] .. " " .. cStr
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		-- World Drop
		elseif (v["Type"] == 7) then

			if (obtainDB.worlddrop == true) then

				t = {}
				t.IsRecipe = false
				t.sID = recipeIndex
				t.IsExpanded = true

				t.String = pad .. addon:RarityColor(v["ID"] + 1, L["World Drop"])
				tinsert(DisplayStrings, dsIndex, t)
				dsIndex = dsIndex + 1

			end

		-- Custom
		elseif (v["Type"] == 8) then

			-- Custom: ID, Name
			local customname = customDB[v["ID"]]["Name"]

			t = {}
			t.IsRecipe = false
			t.sID = recipeIndex
			t.IsExpanded = true

			local tStr = addon:Normal(customname)

			t.String = pad .. tStr
			tinsert(DisplayStrings, dsIndex, t)
			dsIndex = dsIndex + 1

		-- We have an acquire type we aren't sure how to deal with.
		else

			t = {}
			t.IsRecipe = false
			t.sID = recipeIndex
			t.IsExpanded = true

			t.String = "Unhandled Acquire Case - Type: " .. v["Type"]
			tinsert(DisplayStrings, dsIndex, t)
			dsIndex = dsIndex + 1

		end

	end
	
	return dsIndex

end

-- Description: 

function addon.RecipeItem_OnClick(button)

	local clickedIndex = addon.RecipeListButton[button].sI

	-- Don't do anything if they've clicked on an empty button
	if (clickedIndex ~= nil) and (clickedIndex ~= 0) then

		local isRecipe = DisplayStrings[clickedIndex].IsRecipe
		local isExpanded = DisplayStrings[clickedIndex].IsExpanded
		local dString = DisplayStrings[clickedIndex].String
		local clickedSpellIndex = DisplayStrings[clickedIndex].sID
		local traverseIndex = 0

		-- First, check if this is a "modified" click, and react appropriately
		if (IsModifierKeyDown()) then
			-- CTRL-SHIFT
			if (IsControlKeyDown() and IsShiftKeyDown()) then
				addon:SetupMap(clickedSpellIndex)
			-- SHIFT
			elseif (IsShiftKeyDown()) then
				local itemID = recipeDB[clickedSpellIndex]["ItemID"]
				if (itemID) then
					local _,itemLink = GetItemInfo(itemID)
					if (itemLink) then
						ChatFrameEditBox:Insert(itemLink)
					else
						addon:Print(L["NoItemLink"])
					end
				else
					addon:Print(L["NoItemLink"])
				end
			-- CTRL
			elseif (IsControlKeyDown()) then
				ChatFrameEditBox:Insert(recipeDB[clickedSpellIndex]["RecipeLink"])
			-- ALT
			elseif (IsAltKeyDown()) then
				-- Code needed here to insert this item into the "Ignore List"
				addon:ToggleExcludeRecipe(clickedSpellIndex)
				ReDisplay()
			end
		-- three possibilities here (all with no modifiers)
		-- 1) We clicked on the recipe button on a closed recipe
		-- 2) We clicked on the recipe button of an open recipe
		-- 3) we clicked on the expanded text of an open recipe
		elseif (isRecipe) then
			if (isExpanded) then
				-- get rid of our expanded lines
				traverseIndex = clickedIndex + 1
				while (DisplayStrings[traverseIndex].IsRecipe == false) do
					tremove(DisplayStrings, traverseIndex)
					-- if this is the last entry in the whole list, we should break out
					if not DisplayStrings[traverseIndex] then
						break
					end
				end
				DisplayStrings[clickedIndex].IsExpanded = false
			else
				-- add in our expanded lines
				expandEntry(clickedIndex)
				-- set our current recipe to expanded
				DisplayStrings[clickedIndex].IsExpanded = true
			end
		else
			-- this inherently implies that we're on an expanded recipe
			-- first, back up in the list of buttons until we find our recipe line
			traverseIndex = clickedIndex - 1
			while (DisplayStrings[traverseIndex].IsRecipe == false) do
				traverseIndex = traverseIndex - 1
			end
			-- unexpand it
			DisplayStrings[traverseIndex].IsExpanded = false
			-- now remove the expanded lines until we get to a recipe again
			traverseIndex = traverseIndex + 1
			while (DisplayStrings[traverseIndex].IsRecipe == false) do
				tremove(DisplayStrings, traverseIndex)
				-- if this is the last entry in the whole list, we should break out
				if not DisplayStrings[traverseIndex] then
					break
				end
			end
		end

			-- finally, call our scrollframe updater
			RecipeList_Update()
	end

end

-- Description: Rep Filtering panel switcher

function addon.RepFilterSwitch(whichrep)
	-- 1	Collectinator_RepOldWorldCB		Old World Rep
	-- 2	Collectinator_RepBCCB				Burning Crusade
	-- 3	Collectinator_RepLKCB				Wrath of the Lich King
	local ShowPanel = false

	if (whichrep == 1) then

		if (Collectinator_RepOldWorldCB:GetChecked()) then

			ShowPanel = true
			addon.Fly_Rep_OW:Show()
			addon.Fly_Rep_BC:Hide()
			addon.Fly_Rep_LK:Hide()
			Collectinator_RepBCCB:SetChecked(false)
			Collectinator_RepLKCB:SetChecked(false)

		else

			ShowPanel = false

		end

	elseif (whichrep == 2) then

		if (Collectinator_RepBCCB:GetChecked()) then

			ShowPanel = true
			addon.Fly_Rep_OW:Hide()
			addon.Fly_Rep_BC:Show()
			addon.Fly_Rep_LK:Hide()
			Collectinator_RepOldWorldCB:SetChecked(false)
			Collectinator_RepLKCB:SetChecked(false)

		else

			ShowPanel = false

		end

	else -- whichrep == 3 (WotLK)

		if (Collectinator_RepLKCB:GetChecked()) then

			ShowPanel = true
			addon.Fly_Rep_OW:Hide()
			addon.Fly_Rep_BC:Hide()
			addon.Fly_Rep_LK:Show()
			Collectinator_RepOldWorldCB:SetChecked(false)
			Collectinator_RepBCCB:SetChecked(false)

		else

			ShowPanel = false

		end

	end

	if (ShowPanel == true) then

		addon.flyTexture:ClearAllPoints()
		addon.Flyaway:SetWidth(296)
		addon.Flyaway:SetHeight(312)
		addon.flyTexture:SetTexture([[Interface\Addons\Collectinator\img\fly_repcol]])
		addon.flyTexture:SetAllPoints(addon.Flyaway)
		addon.flyTexture:SetTexCoord(0, (296/512), 0, (312/512))

		addon.Fly_Rep_OW:SetPoint("TOPRIGHT", addon.Flyaway, "TOPRIGHT", -7, -14)
		addon.Fly_Rep_BC:SetPoint("TOPRIGHT", addon.Flyaway, "TOPRIGHT", -7, -14)
		addon.Fly_Rep_LK:SetPoint("TOPRIGHT", addon.Flyaway, "TOPRIGHT", -7, -14)

	else

		addon.flyTexture:ClearAllPoints()
		addon.Flyaway:SetWidth(136)
		addon.Flyaway:SetHeight(312)
		addon.flyTexture:SetTexture([[Interface\Addons\Collectinator\img\fly_1col]])
		addon.flyTexture:SetAllPoints(addon.Flyaway)
		addon.flyTexture:SetTexCoord(0, (136/256), 0, (312/512))
		addon.Fly_Rep_OW:Hide()
		addon.Fly_Rep_BC:Hide()
		addon.Fly_Rep_LK:Hide()
		Collectinator_RepOldWorldCB:SetChecked(false)
		Collectinator_RepBCCB:SetChecked(false)
		Collectinator_RepLKCB:SetChecked(false)

	end

end

-- Description: 

function addon.setFlyawayState()

	-- This function sets all the current options in the flyaway panel to make
	-- sure they are consistent with the SV options. This is run every time the
	-- Flyaway panel "OnShow" triggers
	local filterdb = addon.db.profile.filters
	local armordb = filterdb.item.armor
	local weapondb = filterdb.item.weapon
	-- General Options
	Collectinator_SpecialtyCB:SetChecked(filterdb.general.specialty)
	Collectinator_LevelCB:SetChecked(filterdb.general.skill)
	Collectinator_FactionCB:SetChecked(filterdb.general.faction)
	Collectinator_KnownCB:SetChecked(filterdb.general.known)
	Collectinator_UnknownCB:SetChecked(filterdb.general.unknown)
	-- Obtain Options
	Collectinator_InstanceCB:SetChecked(filterdb.obtain.instance)
	Collectinator_RaidCB:SetChecked(filterdb.obtain.raid)
	Collectinator_QuestCB:SetChecked(filterdb.obtain.quest)
	Collectinator_SeasonalCB:SetChecked(filterdb.obtain.seasonal)
	Collectinator_TrainerCB:SetChecked(filterdb.obtain.trainer)
	Collectinator_VendorCB:SetChecked(filterdb.obtain.vendor)
	Collectinator_PVPCB:SetChecked(filterdb.obtain.pvp)
	Collectinator_DiscoveryCB:SetChecked(filterdb.obtain.discovery)
	Collectinator_WorldDropCB:SetChecked(filterdb.obtain.worlddrop)
	Collectinator_MobDropCB:SetChecked(filterdb.obtain.mobdrop)
	Collectinator_OriginalWoWCB:SetChecked(filterdb.obtain.originalwow)
	Collectinator_BCCB:SetChecked(filterdb.obtain.bc)
	Collectinator_WrathCB:SetChecked(filterdb.obtain.wrath)
	-- Binding Options
	Collectinator_iBoECB:SetChecked(filterdb.binding.itemboe)
	Collectinator_iBoPCB:SetChecked(filterdb.binding.itembop)
	Collectinator_rBoECB:SetChecked(filterdb.binding.recipeboe)
	Collectinator_rBoPCB:SetChecked(filterdb.binding.recipebop)
	-- Armor Options
	Collectinator_ArmorClothCB:SetChecked(armordb.cloth)
	Collectinator_ArmorLeatherCB:SetChecked(armordb.leather)
	Collectinator_ArmorMailCB:SetChecked(armordb.mail)
	Collectinator_ArmorPlateCB:SetChecked(armordb.plate)
	Collectinator_ArmorCloakCB:SetChecked(armordb.cloak)
	Collectinator_ArmorNecklaceCB:SetChecked(armordb.necklace)
	Collectinator_ArmorRingCB:SetChecked(armordb.ring)
	Collectinator_ArmorTrinketCB:SetChecked(armordb.trinket)
	Collectinator_ArmorShieldCB:SetChecked(armordb.shield)
	-- Weapon Options
	Collectinator_Weapon1HCB:SetChecked(weapondb.onehand)
	Collectinator_Weapon2HCB:SetChecked(weapondb.twohand)
	Collectinator_WeaponDaggerCB:SetChecked(weapondb.dagger)
	Collectinator_WeaponAxeCB:SetChecked(weapondb.axe)
	Collectinator_WeaponMaceCB:SetChecked(weapondb.mace)
	Collectinator_WeaponSwordCB:SetChecked(weapondb.sword)
	Collectinator_WeaponPolearmCB:SetChecked(weapondb.polearm)
	Collectinator_WeaponWandCB:SetChecked(weapondb.wand)
	Collectinator_WeaponThrownCB:SetChecked(weapondb.thrown)
	Collectinator_WeaponAmmoCB:SetChecked(weapondb.ammo)
	Collectinator_WeaponFistCB:SetChecked(weapondb.fist)
--[[
	--Disable weapon options. Probably don't need to touch these...
	Collectinator_WeaponStaffCB
	Collectinator_WeaponBowCB
	Collectinator_WeaponCrossbowCB ]]--
	-- Player Type Options
	Collectinator_PlayerTankCB:SetChecked(filterdb.player.tank)
	Collectinator_PlayerMeleeCB:SetChecked(filterdb.player.melee)
	Collectinator_PlayerHealerCB:SetChecked(filterdb.player.healer)
	Collectinator_PlayerCasterCB:SetChecked(filterdb.player.caster)
	-- Old World Rep Options
	Collectinator_RepArgentDawnCB:SetChecked(filterdb.rep.argentdawn)
	Collectinator_RepCenarionCircleCB:SetChecked(filterdb.rep.cenarioncircle)
	Collectinator_RepThoriumCB:SetChecked(filterdb.rep.thoriumbrotherhood)
	Collectinator_RepTimbermawCB:SetChecked(filterdb.rep.timbermaw)
	Collectinator_RepZandalarCB:SetChecked(filterdb.rep.zandalar)
	-- BC Rep Options
	Collectinator_RepAldorCB:SetChecked(filterdb.rep.aldor)
	Collectinator_RepAshtongueCB:SetChecked(filterdb.rep.ashtonguedeathsworn)
	Collectinator_RepCenarionExpeditionCB:SetChecked(filterdb.rep.cenarionexpedition)
	Collectinator_RepConsortiumCB:SetChecked(filterdb.rep.consortium)
	Collectinator_RepHonorHoldCB:SetChecked(filterdb.rep.hellfire)
	Collectinator_RepKeepersOfTimeCB:SetChecked(filterdb.rep.keepersoftime)
	Collectinator_RepKurenaiCB:SetChecked(filterdb.rep.nagrand)
	Collectinator_RepLowerCityCB:SetChecked(filterdb.rep.lowercity)
	Collectinator_RepScaleSandsCB:SetChecked(filterdb.rep.scaleofthesands)
	Collectinator_RepScryersCB:SetChecked(filterdb.rep.scryer)
	Collectinator_RepShatarCB:SetChecked(filterdb.rep.shatar)
	Collectinator_RepShatteredSunCB:SetChecked(filterdb.rep.shatteredsun)
	Collectinator_RepSporeggarCB:SetChecked(filterdb.rep.sporeggar)
	Collectinator_RepVioletEyeCB:SetChecked(filterdb.rep.violeteye)
	-- WotLK Rep Options
	Collectinator_RepArgentCrusadeCB:SetChecked(filterdb.rep.argentcrusade)
	Collectinator_RepFrenzyheartCB:SetChecked(filterdb.rep.frenzyheart)
	Collectinator_RepEbonBladeCB:SetChecked(filterdb.rep.ebonblade)
	Collectinator_RepKirinTorCB:SetChecked(filterdb.rep.kirintor)
	Collectinator_RepSonsOfHodirCB:SetChecked(filterdb.rep.sonsofhodir)
	Collectinator_RepKaluakCB:SetChecked(filterdb.rep.kaluak)
	Collectinator_RepOraclesCB:SetChecked(filterdb.rep.oracles)
	Collectinator_RepWyrmrestCB:SetChecked(filterdb.rep.wyrmrest)
	Collectinator_WrathCommon1CB:SetChecked(filterdb.rep.wrathcommon1)
--[[
	--Disable unused Rep Options
	Collectinator_WrathCommon2CB:SetChecked(filterdb.rep.wrathcommon2)
	Collectinator_WrathCommon3CB:SetChecked(filterdb.rep.wrathcommon3)
	Collectinator_WrathCommon4CB:SetChecked(filterdb.rep.wrathcommon4)
	Collectinator_WrathCommon5CB:SetChecked(filterdb.rep.wrathcommon5) ]]--
	-- Miscellaneous Options
	Collectinator_IgnoreCB:SetChecked(addon.db.profile.ignoreexclusionlist)
end

-- Description: 

local function recursiveReset(t)

	-- Thanks to Antiarc for this code

	for k, v in pairs(t) do

		if type(v) == "table" then

			recursiveReset(v)

		else

			t[k] = true

		end

	end

end

-- Description: 

function addon.resetFilters() 

	local filterdb = addon.db.profile.filters

	-- Reset all filters to true
	recursiveReset(addon.db.profile.filters)

	-- Reset specific filters to false
	filterdb.general.class = false
	filterdb.general.specialty = false
	filterdb.general.known = false

	if (addon.Frame and addon.Frame:IsVisible()) then
		addon.resetTitle()

		-- Uncheck the seven buttons
		HideCollectinator_ExpOptCB()

		-- Hide the flyaway panel
		addon.Flyaway:Hide()

		-- Reset the display
		ReDisplay()
	end
end

-- Description: 

function addon.DoFlyaway(panel)

	-- This is going to manage the flyaway panel, as well as checking or unchecking the
	-- buttons that got us here in the first place
	--
	-- our panels are:
	-- 1	Collectinator_ExpGeneralOptCB			General Filters
	-- 2	Collectinator_ExpObtainOptCB			Obtain Filters
	-- 3	Collectinator_ExpBindingOptCB			Binding Filters
	-- 4	Collectinator_ExpItemOptCB			Item Filters
	-- 5	Collectinator_ExpPlayerOptCB			Player Type Filters
	-- 6	Collectinator_ExpRepOptCB				Reputation Filters
	-- 7	Collectinator_ExpMiscOptCB			Miscellaneous Filters

	local ChangeFilters = false

	addon.Fly_Rep_OW:Hide()
	addon.Fly_Rep_BC:Hide()
	addon.Fly_Rep_LK:Hide()
	Collectinator_RepOldWorldCB:SetChecked(false)
	Collectinator_RepBCCB:SetChecked(false)
	Collectinator_RepLKCB:SetChecked(false)

	if (panel == 1) then

		if (Collectinator_ExpGeneralOptCB:GetChecked()) then

			-- uncheck all other buttons
			HideCollectinator_ExpOptCB("general")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Show()
			addon.Fly_Obtain:Hide()
			addon.Fly_Binding:Hide()
			addon.Fly_Item:Hide()
			addon.Fly_Player:Hide()
			addon.Fly_Rep:Hide()
			addon.Fly_Misc:Hide()

			ChangeFilters = true

		else

			Collectinator_ExpGeneralOptCB.text:SetText(addon:Yellow(ExpButtonText[1])) 
			ChangeFilters = false

		end

	elseif (panel == 2) then

		if (Collectinator_ExpObtainOptCB:GetChecked()) then

			HideCollectinator_ExpOptCB("obtain")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Hide()
			addon.Fly_Obtain:Show()
			addon.Fly_Binding:Hide()
			addon.Fly_Item:Hide()
			addon.Fly_Player:Hide()
			addon.Fly_Rep:Hide()
			addon.Fly_Misc:Hide()

			ChangeFilters = true

		else

			Collectinator_ExpObtainOptCB.text:SetText(addon:Yellow(ExpButtonText[2])) 
			ChangeFilters = false

		end

	elseif (panel == 3) then

		if (Collectinator_ExpBindingOptCB:GetChecked()) then

			HideCollectinator_ExpOptCB("binding")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Hide()
			addon.Fly_Obtain:Hide()
			addon.Fly_Binding:Show()
			addon.Fly_Item:Hide()
			addon.Fly_Player:Hide()
			addon.Fly_Rep:Hide()
			addon.Fly_Misc:Hide()

			ChangeFilters = true

		else

			Collectinator_ExpBindingOptCB.text:SetText(addon:Yellow(ExpButtonText[3])) 
			ChangeFilters = false

		end

	elseif (panel == 4) then

		if (Collectinator_ExpItemOptCB:GetChecked()) then

			HideCollectinator_ExpOptCB("item")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Hide()
			addon.Fly_Obtain:Hide()
			addon.Fly_Binding:Hide()
			addon.Fly_Item:Show()
			addon.Fly_Player:Hide()
			addon.Fly_Rep:Hide()
			addon.Fly_Misc:Hide()

			ChangeFilters = true

		else

			Collectinator_ExpItemOptCB.text:SetText(addon:Yellow(ExpButtonText[4])) 
			ChangeFilters = false

		end

	elseif (panel == 5) then

		if (Collectinator_ExpPlayerOptCB:GetChecked()) then

			HideCollectinator_ExpOptCB("player")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Hide()
			addon.Fly_Obtain:Hide()
			addon.Fly_Binding:Hide()
			addon.Fly_Item:Hide()
			addon.Fly_Player:Show()
			addon.Fly_Rep:Hide()
			addon.Fly_Misc:Hide()

			ChangeFilters = true

		else

			Collectinator_ExpPlayerOptCB.text:SetText(addon:Yellow(ExpButtonText[5])) 
			ChangeFilters = false

		end

	elseif (panel == 6) then

		if (Collectinator_ExpRepOptCB:GetChecked()) then

			HideCollectinator_ExpOptCB("rep")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Hide()
			addon.Fly_Obtain:Hide()
			addon.Fly_Binding:Hide()
			addon.Fly_Item:Hide()
			addon.Fly_Player:Hide()
			addon.Fly_Rep:Show()
			addon.Fly_Misc:Hide()

			ChangeFilters = true

		else

			Collectinator_ExpRepOptCB.text:SetText(addon:Yellow(ExpButtonText[6])) 
			ChangeFilters = false

		end

	elseif (panel == 7) then

		if (Collectinator_ExpMiscOptCB:GetChecked()) then

			HideCollectinator_ExpOptCB("misc")

			-- display the correct subframe with all the buttons and such, hide the others
			addon.Fly_General:Hide()
			addon.Fly_Obtain:Hide()
			addon.Fly_Binding:Hide()
			addon.Fly_Item:Hide()
			addon.Fly_Player:Hide()
			addon.Fly_Rep:Hide()
			addon.Fly_Misc:Show()

			ChangeFilters = true

		else

			Collectinator_ExpMiscOptCB.text:SetText(addon:Yellow(ExpButtonText[7])) 
			ChangeFilters = false

		end

	end

	if (ChangeFilters == true) then

		-- Depending on which panel we're showing, either display one column
		-- or two column
		if ((panel == 3) or (panel == 4) or (panel == 7)) then

			addon.flyTexture:ClearAllPoints()
			addon.Flyaway:SetWidth(234)
			addon.Flyaway:SetHeight(312)
			addon.flyTexture:SetTexture([[Interface\Addons\Collectinator\img\fly_2col]])
			addon.flyTexture:SetAllPoints(addon.Flyaway)
			addon.flyTexture:SetTexCoord(0, (234/256), 0, (312/512))

		elseif ((panel == 1) or (panel == 2) or (panel == 5) or (panel == 6)) then

			addon.flyTexture:ClearAllPoints()
			addon.Flyaway:SetWidth(136)
			addon.Flyaway:SetHeight(312)
			addon.flyTexture:SetTexture([[Interface\Addons\Collectinator\img\fly_1col]])
			addon.flyTexture:SetAllPoints(addon.Flyaway)
			addon.flyTexture:SetTexCoord(0, (136/256), 0, (312/512))

		end

		-- Change the filters to the current panel
		addon.Flyaway:Show()

	else

		-- We're hiding, don't bother changing anything
		addon.Flyaway:Hide()

	end

end

-- Description: This does an initial fillup of the DisplayStrings, as above.
-- However, in this case, it expands every recipe

local function expandallDisplayStrings()

	local exclude = addon.db.profile.exclusionlist

	DisplayStrings = nil
	DisplayStrings = {}

	local insertIndex = 1

	for i = 1, #sortedRecipeIndex do

		local recipeIndex = sortedRecipeIndex[i]
		local recipeEntry = recipeDB[recipeIndex]

		if ((recipeEntry["Display"] == true) and (recipeEntry["Search"] == true)) then

			local t = {}

			-- add in recipe difficulty coloring
			local recStr = ""

			if (exclude[recipeIndex] == true) then
				recStr = "** " .. recipeEntry["Name"] .. " **"
			else
				recStr = recipeEntry["Name"]
			end

			local hasFaction = checkFactions(recipeDB, recipeIndex, playerData.playerFaction, playerData["Reputation"])

			t.String = recStr

			t.sID = sortedRecipeIndex[i]
			t.IsRecipe = true

			if (recipeEntry["Acquire"]) then
				-- we have acquire information for this. push the title entry into the strings
				-- and start processing the acquires
				t.IsExpanded = true
				tinsert(DisplayStrings, insertIndex, t)
				insertIndex = expandEntry(insertIndex)
			else
				t.IsExpanded = false
				tinsert(DisplayStrings, insertIndex, t)
				insertIndex = insertIndex + 1
			end

		end

	end

end

-- Description: 

function addon.ExpandAll_Clicked()

	-- Called when the expand all button is clicked
	if (Collectinator_ExpandButton:GetText() == L["EXPANDALL"]) then
		Collectinator_ExpandButton:SetText(L["CONTRACTALL"])
		addon:TooltipDisplay(Collectinator_ExpandButton, L["CONTRACTALL_DESC"])
		expandallDisplayStrings()
	else
		Collectinator_ExpandButton:SetText(L["EXPANDALL"])
		addon:TooltipDisplay(Collectinator_ExpandButton, L["EXPANDALL_DESC"])
		initDisplayStrings()
	end
	RecipeList_Update()

end

-- Description: 

local function SetSortName()

	local sorttype = addon.db.profile.sorting

	if (sorttype == "Name") then
		Collectinator_DD_SortText:SetText(L["Sort"] .. ": " .. L["Name"])
	elseif (sorttype == "Acquisition") then
		Collectinator_DD_SortText:SetText(L["Sort"] .. ": " .. L["Acquisition"])
	elseif (sorttype == "Location") then
		Collectinator_DD_SortText:SetText(L["Sort"] .. ": " .. L["Location"])
	end

end

-- Description: 

local function Collectinator_DD_Sort_OnClick(button, value)
	CloseDropDownMenus()
	addon.db.profile.sorting = value
	SetSortName()
	ReDisplay()
end

-- Description: 

local function Collectinator_DD_Sort_Initialize()

	local k
	local info = UIDropDownMenu_CreateInfo()

	k = "Name"
		info.text = k
		info.arg1 = info.text
		info.func = Collectinator_DD_Sort_OnClick
		info.checked = (addon.db.profile.sorting == k)
		UIDropDownMenu_AddButton(info)
	k = "Acquisition"
		info.text = k
		info.arg1 = info.text
		info.func = Collectinator_DD_Sort_OnClick
		info.checked = (addon.db.profile.sorting == k)
		UIDropDownMenu_AddButton(info)
	k = "Location"
		info.text = k
		info.arg1 = info.text
		info.func = Collectinator_DD_Sort_OnClick
		info.checked = (addon.db.profile.sorting == k)
		UIDropDownMenu_AddButton(info)

	SetSortName()

end

-- Description: Saves the frame position into the database 
-- Expected result: Frame coordinates are saved
-- Input: None
-- Output: Database values updated with frame position

local function SaveFramePosition()

	local opts = addon.db.profile.frameopts
	local from, _, to, x, y = addon.Frame:GetPoint()
	opts.anchorFrom = from
	opts.anchorTo = to
	if (addon.Frame._Expanded == true) then
		if (opts.anchorFrom == "TOPLEFT") or
		(opts.anchorFrom == "LEFT") or
		(opts.anchorFrom == "BOTTOMLEFT") then
			opts.offsetx = x
		elseif (opts.anchorFrom == "TOP") or
		(opts.anchorFrom == "CENTER") or
		(opts.anchorFrom == "BOTTOM") then
			opts.offsetx = x - 151/2
		elseif (opts.anchorFrom == "TOPRIGHT") or
		(opts.anchorFrom == "RIGHT") or
		(opts.anchorFrom == "BOTTOMRIGHT") then
			opts.offsetx = x - 151
		end
	else
		opts.offsetx = x
	end
	opts.offsety = y

end

local function SetFramePosition()

	addon.Frame:ClearAllPoints()

	local opts = addon.db.profile.frameopts
	local FixedOffsetX = opts.offsetx
	
	if (opts.anchorTo == "") then
		-- no values yet, clamp to whatever frame is appropriate
		addon.Frame:SetPoint("TOPLEFT", PetPaperDollFrameCompanionFrame, "TOPRIGHT", 10, 0)
	else
		if (addon.Frame._Expanded == true) then
			if (opts.anchorFrom == "TOPLEFT") or
			(opts.anchorFrom == "LEFT") or
			(opts.anchorFrom == "BOTTOMLEFT") then
				FixedOffsetX = opts.offsetx
			elseif (opts.anchorFrom == "TOP") or
			(opts.anchorFrom == "CENTER") or
			(opts.anchorFrom == "BOTTOM") then
				FixedOffsetX = opts.offsetx + 151/2
			elseif (opts.anchorFrom == "TOPRIGHT") or
			(opts.anchorFrom == "RIGHT") or
			(opts.anchorFrom == "BOTTOMRIGHT") then
				FixedOffsetX = opts.offsetx + 151
			end
		end
		addon.Frame:SetPoint(opts.anchorFrom, UIParent, opts.anchorTo, FixedOffsetX, opts.offsety)
	end

end

-------------------------------------------------------------------------------
-- Alt-Tradeskills tooltip
-------------------------------------------------------------------------------
local clicktip = QTip:Acquire("Collectinator_Clickable", 1, "CENTER")

-------------------------------------------------------------------------------
-- Data used in HandleTTClick() and GenerateClickableTT()
-------------------------------------------------------------------------------
local click_info = {
	anchor = nil,
	change_realm = nil,
	target_realm = nil,
	modified = nil,
	name = nil,
	realm = nil,
}

-- Description: Creates a list of names/alts/etc in a tooltip which you can click on

local function GenerateClickableTT(anchor)
	local tskl_list = addon.db.global.tradeskill
	local tip = clicktip
	local y, x
	local prealm = GetRealmName()
	local target_realm

	if click_info.change_realm then
		target_realm = click_info.target_realm
		click_info.change_realm = nil
	else
		target_realm = prealm
	end
	tip:Clear()

	if not click_info.realm then
		local other_realms = nil
		for realm in pairs(tskl_list) do
			if target_realm and (realm ~= target_realm) then
				other_realms = true
			end

			if not target_realm and (realm ~= prealm) then
				y, x = tip:AddLine()
				tip:SetCell(y, x, realm, realm)
			elseif realm == target_realm then
				y, x = tip:AddNormalLine(realm)
				y, x = tip:AddNormalLine(" ")

				click_info.realm = realm
				for name in pairs(tskl_list[click_info.realm]) do
					y, x = tip:AddLine()
					tip:SetCell(y, x, name, name)
				end
			end
		end
		if other_realms then
			tip:AddNormalLine(" ")
			y, x = tip:AddLine()
			tip:SetCell(y, x, L["Other Realms"], "change realm")
		end
	elseif not click_info.name then
		local realm_list = tskl_list[click_info.realm]

		if realm_list then
			for name in pairs(realm_list) do
				y, x = tip:AddLine()
				tip:SetCell(y, x, name, name)
			end
		end
	else
		tip:AddNormalLine(click_info.name)
		tip:AddNormalLine(" ")
		for prof in pairs(tskl_list[click_info.realm][click_info.name]) do
			y, x = tip:AddLine()
			tip:SetCell(y, x, prof, prof)
		end
	end
	if anchor then
		click_info.anchor = anchor
		tip:SetPoint("TOP", anchor, "BOTTOM")
	else
		tip:SetPoint("TOP", click_info.anchor, "BOTTOM")
	end
	tip:Show()
end

-- Description: Function called when tool tip is clicked for alt trade skills

local function HandleTTClick(event, cell, arg, button)
	click_info.modified = true

	if arg == "change realm" then
		click_info.realm = nil
		click_info.change_realm = true
		click_info.target_realm = nil
		GenerateClickableTT()
		return
	end
	local tskl_list = addon.db.global.tradeskill

	if not click_info.realm then
		if click_info.change_realm then
			click_info.target_realm = arg
		end
		click_info.realm = arg
		GenerateClickableTT()
	elseif not click_info.name then
		click_info.name = arg

		-- Wipe tradeskill information for the selected toon. -Torhal
		if IsAltKeyDown() and button == "LeftButton" then
			tskl_list[click_info.realm][click_info.name] = nil
			local anchor = click_info.anchor
			twipe(click_info)
			click_info.anchor = anchor
			GenerateClickableTT()
			return
		end
		GenerateClickableTT()
	else
		-- Print link to chat frame, then reset tip data
		addon:Print(click_info.name .. " - " .. click_info.realm .. ": " .. tskl_list[click_info.realm][click_info.name][arg])
	end
end

clicktip:SetCallback("OnMouseDown", HandleTTClick)

-- Description: Creates the initial frame to display recipes into

function addon:CreateFrame(
	rDB,		-- RecipeList
	sortedRI,	-- sortedindex
	cPlayer,	-- playerdata
	vList,		-- VendorList
	qList,		-- QuestList
	rList,		-- ReputationList
	sList,		-- SeasonalList
	mList,		-- MobList
	cList)		-- Customlist

--[[
	cPlayer is a table containing:
		.playerProfession == player profession which has been opened
		.playerProfessionLevel == skill level of profession
		.playerSpecialty == Specialty if any or ""
		.totalRecipes == Total recipes added to the database
		.foundRecipes == Total recipes found that the player knows
		.otherRecipes == Total non-profession recipes in the database
		.filteredRecipes == Total recipes filtered
		.playerFaction == Faction of the player
		["Professions"] == list of all professions with the ones the player knows set as true
		["Reputation"] == Reputation levels, what I had in current Collectinatorform was if you didn't have the rep level, it would display it in red
--]]

	myFaction = cPlayer.playerFaction

	local HonorHold_Thrallmar_FactionText = ""
	local Kurenai_Maghar_FactionText = ""
	local Vanguard_Expedition_FactionText = ""
	local SilverConv_Sunreaver_FactionText = ""
	local Valiance_Warsong_FactionText = ""
	local Frostborn_Taunka_FactionText = ""
	local Explorer_Hand_FactionText = ""

	-- Values for the progressbar (defaults)
	local pbMin = 0
	local pbMax = 100
	local pbCur = 50

	sortedRecipeIndex = sortedRI
	recipeDB = rDB
	allSpecTable = asTable
	playerData = cPlayer
	currentProfession = playerData.playerProfession
	vendorDB = vList
	questDB = qList
	repDB = rList
	seasonDB = sList
	mobDB = mList
	customDB = cList

	-- reset current display items
	DisplayStrings = {}

	-- get our current profession's index
	for k, v in pairs(SortedCollections) do

		if (v.name == "MOUNT") then

			currentProfIndex = k
			break

		end

	end

	if (PetPaperDollFrameCompanionFrame:IsVisible()) then
		if (PetPaperDollFrameCompanionFrame.mode=="CRITTER") then
			currentProfIndex = 1
		elseif (PetPaperDollFrameCompanionFrame.mode=="MOUNT") then
			currentProfIndex = 2
		end
	end

	-- Adding a check in to see if we're Horde or Alliance, and change the displayed reputation
	-- strings to be faction correct (eg, Honor Hold / Thrallmar)
	if (myFaction == "Alliance") then
		HonorHold_Thrallmar_FactionText = BFAC["Honor Hold"]
		Kurenai_Maghar_FactionText = BFAC["Kurenai"]
		Vanguard_Expedition_FactionText = BFAC["Alliance Vanguard"]
		SilverConv_Sunreaver_FactionText = BFAC["The Silver Covenant"]
		Valiance_Warsong_FactionText = BFAC["Valiance Expedition"]
		Frostborn_Taunka_FactionText = BFAC["The Frostborn"]
		Explorer_Hand_FactionText = BFAC["Explorers' League"]
	else
		HonorHold_Thrallmar_FactionText = BFAC["Thrallmar"]
		Kurenai_Maghar_FactionText = BFAC["The Mag'har"]
		Vanguard_Expedition_FactionText = BFAC["Horde Expedition"]
		SilverConv_Sunreaver_FactionText = BFAC["The Sunreavers"]
		Valiance_Warsong_FactionText = BFAC["Warsong Offensive"]
		Frostborn_Taunka_FactionText = BFAC["The Taunka"]
		Explorer_Hand_FactionText = BFAC["The Hand of Vengeance"]
	end

	if (not addon.Frame) then

		-- Create the main frame
		addon.Frame = CreateFrame("Frame", "Collectinator.Frame", UIParent)

		--Allows Collectinator to be closed with the Escape key
		tinsert(UISpecialFrames, "Collectinator.Frame")

		addon.Frame:SetWidth(293)
		addon.Frame:SetHeight(447)

		addon.bgTexture = addon.Frame:CreateTexture("Collectinator.bgTexture", "ARTWORK")
		addon.bgTexture:SetTexture("Interface\\Addons\\Collectinator\\img\\main")
		addon.bgTexture:SetAllPoints(addon.Frame)
		addon.bgTexture:SetTexCoord(0, (293/512), 0, (447/512))
		addon.Frame:SetFrameStrata("DIALOG")
		addon.Frame:SetHitRectInsets(5, 5, 5, 5)

		addon.Frame:EnableMouse(true)
		addon.Frame:EnableKeyboard(true)
		addon.Frame:SetMovable(true)

		addon.Frame:SetScript("OnMouseDown",
				function()
					addon.Frame:StartMoving()
				end
			)

		addon.Frame:SetScript("OnHide", function() self:CloseWindow() end)
		addon.Frame:SetScript("OnMouseUp",
				function()
					addon.Frame:StopMovingOrSizing()
					SaveFramePosition()
				end
			)

		addon.Frame:Show()
		addon.Frame._Expanded = false

		addon.Frame.HeadingText = addon.Frame:CreateFontString("Collectinator_Frame.HeadingText", "ARTWORK")
			
		addon.Frame.HeadingText:SetFontObject("GameFontHighlightSmall")
		addon.Frame.HeadingText:ClearAllPoints()
		addon.Frame.HeadingText:SetPoint("TOP", addon.Frame, "TOP", 20, -16)
		addon.Frame.HeadingText:SetJustifyH("CENTER")

		local Collectinator_SwitcherButton = CreateFrame("Button", "Collectinator_SwitcherButton", addon.Frame, "UIPanelButtonTemplate")
			Collectinator_SwitcherButton:SetWidth(64)
			Collectinator_SwitcherButton:SetHeight(64)
			Collectinator_SwitcherButton:SetPoint("TOPLEFT", addon.Frame, "TOPLEFT", 1, -2)
			Collectinator_SwitcherButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			Collectinator_SwitcherButton:SetScript("OnClick",
				function(self, button)
					addon:SwitchProfs(button)
				end
			)

		-- Stuff in the non-expanded frame (or both)
		local Collectinator_CloseXButton = CreateFrame("Button", "Collectinator_CloseXButton", addon.Frame, "UIPanelCloseButton")
			Collectinator_CloseXButton:SetScript("OnClick",
				function(this)
					-- Close all possible pop-up windows
					StaticPopup_Hide("Collectinator_NOTSCANNED")
					StaticPopup_Hide("Collectinator_ALLFILTERED")
					StaticPopup_Hide("Collectinator_ALLKNOWN")
					StaticPopup_Hide("Collectinator_ALLEXCLUDED")
					StaticPopup_Hide("Collectinator_SEARCHFILTERED")
					this:GetParent():Hide()
				end
			)
			Collectinator_CloseXButton:SetPoint("TOPRIGHT", addon.Frame, "TOPRIGHT", 5, -6)

		local Collectinator_FilterButton = addon:GenericCreateButton("Collectinator_FilterButton", addon.Frame,
			25, 90, "TOPRIGHT", addon.Frame, "TOPRIGHT", -8, -40, "GameFontNormalSmall",
			"GameFontHighlightSmall", L["FILTER_OPEN"], "CENTER", L["FILTER_OPEN_DESC"], 1)
			Collectinator_FilterButton:SetScript("OnClick", addon.ToggleFilters)

		local Collectinator_DD_Sort = CreateFrame("Frame", "Collectinator_DD_Sort", addon.Frame, "UIDropDownMenuTemplate")
		Collectinator_DD_Sort:SetPoint("TOPLEFT", addon.Frame, "TOPLEFT", 55, -39)
		Collectinator_DD_Sort:SetHitRectInsets(16, 16, 0, 0)
		SetSortName()
		UIDropDownMenu_SetWidth(Collectinator_DD_Sort, 105)

		local Collectinator_ExpandButton = addon:GenericCreateButton("Collectinator_ExpandButton", addon.Frame,
			21, 40, "TOPRIGHT", Collectinator_DD_Sort, "BOTTOMLEFT", -2, 0, "GameFontNormalSmall",
			"GameFontHighlightSmall", L["EXPANDALL"], "CENTER", L["EXPANDALL_DESC"], 1)
			Collectinator_ExpandButton:SetScript("OnClick", addon.ExpandAll_Clicked)

		local Collectinator_SearchButton = addon:GenericCreateButton("Collectinator_SearchButton", addon.Frame,
			25, 74, "TOPLEFT", Collectinator_DD_Sort, "BOTTOMRIGHT", 1, 4, "GameFontDisableSmall",
			"GameFontHighlightSmall", L["Search"], "CENTER", L["SEARCH_DESC"], 1)
			Collectinator_SearchButton:Disable()
			Collectinator_SearchButton:SetScript("OnClick",
				function(this)
					local searchtext = Collectinator_SearchText:GetText()
					searchtext = searchtext:trim()

					if (searchtext ~= "") then
						Collectinator_LastSearchedText = searchtext

						addon:SearchRecipeDB(recipeDB, searchtext)
						initDisplayStrings()
						RecipeList_Update()

						Collectinator_ExpandButton:SetText(L["EXPANDALL"])
						addon:TooltipDisplay(Collectinator_ExpandButton, L["EXPANDALL_DESC"])

						Collectinator_SearchButton:SetNormalFontObject("GameFontDisableSmall")
						Collectinator_SearchButton:Disable()
					end
				end
			)

		local Collectinator_ClearButton = addon:GenericCreateButton("Collectinator_ClearButton", addon.Frame,
			28, 28, "RIGHT", Collectinator_SearchButton, "LEFT", 4, -1, "GameFontNormalSmall",
			"GameFontHighlightSmall", "", "CENTER", L["CLEAR_DESC"], 3)
			Collectinator_ClearButton:SetScript("OnClick",
				function()
					addon:ResetSearch(recipeDB)
					Collectinator_SearchText:SetText(L["SEARCH_BOX_DESC"])

					-- Make sure our expand all button is set to expandall
					Collectinator_ExpandButton:SetText(L["EXPANDALL"])
					addon:TooltipDisplay(Collectinator_ExpandButton, L["EXPANDALL_DESC"])

					-- Make sure to clear the focus of the searchbox
					Collectinator_SearchText:ClearFocus()

					-- Disable the search button since we're not searching for anything now
					Collectinator_SearchButton:SetNormalFontObject("GameFontDisableSmall")
					Collectinator_SearchButton:Disable()

					-- Make sure to clear text for last search
					Collectinator_LastSearchedText = ""

					initDisplayStrings()
					RecipeList_Update()
				end
			)
		Collectinator_SearchText = CreateFrame("EditBox", "Collectinator_SearchText", addon.Frame, "InputBoxTemplate")
			Collectinator_SearchText:SetText(L["SEARCH_BOX_DESC"])
			Collectinator_SearchText:SetScript("OnEnterPressed",
				function(this)
					local searchtext = Collectinator_SearchText:GetText()
					searchtext = searchtext:trim()
					if (searchtext ~= "") and (searchtext ~= L["SEARCH_BOX_DESC"]) then
						Collectinator_LastSearchedText = searchtext

						addon:SearchRecipeDB(recipeDB, searchtext)
						initDisplayStrings()
						RecipeList_Update()

						Collectinator_ExpandButton:SetText(L["EXPANDALL"])
						addon:TooltipDisplay(Collectinator_ExpandButton, L["EXPANDALL_DESC"])

						Collectinator_SearchButton:SetNormalFontObject("GameFontDisableSmall")
						Collectinator_SearchButton:Disable()
					end
				end
			)
			Collectinator_SearchText:SetScript("OnEditFocusGained",
				function(this)

					if (this:GetText() == L["SEARCH_BOX_DESC"]) then

						this:SetText("")

					end

				end
			)
			Collectinator_SearchText:SetScript("OnEditFocusLost",
				function(this)

					if (this:GetText() == "") then

						this:SetText(L["SEARCH_BOX_DESC"])

					end

				end
			)
			Collectinator_SearchText:SetScript("OnTextChanged",
				function(this)

					if (this:GetText() ~= "" and this:GetText() ~= L["SEARCH_BOX_DESC"] and this:GetText() ~= Collectinator_LastSearchedText) then

						Collectinator_SearchButton:SetNormalFontObject("GameFontNormalSmall")
						Collectinator_SearchButton:Enable()
						
					else

						Collectinator_SearchButton:SetNormalFontObject("GameFontDisableSmall")
						Collectinator_SearchButton:Disable()

					end

				end
			)
			Collectinator_SearchText:EnableMouse(true)
			Collectinator_SearchText:SetAutoFocus(false)
			Collectinator_SearchText:SetFontObject(ChatFontNormal)
			Collectinator_SearchText:SetWidth(130)
			Collectinator_SearchText:SetHeight(12)
			Collectinator_SearchText:SetPoint("RIGHT", Collectinator_ClearButton, "LEFT", 3, -1)
			Collectinator_SearchText:Show()

		local Collectinator_CloseButton = addon:GenericCreateButton("Collectinator_CloseButton", addon.Frame,
			22, 69, "BOTTOMRIGHT", addon.Frame, "BOTTOMRIGHT", -4, 3, "GameFontNormalSmall",
			"GameFontHighlightSmall", L["Close"], "CENTER", L["CLOSE_DESC"], 1)
			Collectinator_CloseButton:SetScript("OnClick",
				function(this)
					-- Close all possible pop-up windows
					StaticPopup_Hide("Collectinator_NOTSCANNED")
					StaticPopup_Hide("Collectinator_ALLFILTERED")
					StaticPopup_Hide("Collectinator_ALLKNOWN")
					StaticPopup_Hide("Collectinator_ALLEXCLUDED")
					StaticPopup_Hide("Collectinator_SEARCHFILTERED")
					this:GetParent():Hide()
				end
			)

		-- ProgressBar for our skills
		local Collectinator_ProgressBar = CreateFrame("StatusBar", "Collectinator_ProgressBar", addon.Frame)
			Collectinator_ProgressBar:SetWidth(195)
			Collectinator_ProgressBar:SetHeight(14)
			Collectinator_ProgressBar:ClearAllPoints()
			Collectinator_ProgressBar:SetPoint("BOTTOMLEFT", addon.Frame, 17, 7)
			Collectinator_ProgressBar:SetStatusBarTexture("Interface\\Addons\\Collectinator\\img\\progressbar")
			Collectinator_ProgressBar:SetOrientation("HORIZONTAL")
			Collectinator_ProgressBar:SetStatusBarColor(0.25, 0.25, 0.75)

			Collectinator_ProgressBar:SetMinMaxValues(pbMin, pbMax)
			Collectinator_ProgressBar:SetValue(pbCur)

		local Collectinator_ProgressBarText = Collectinator_ProgressBar:CreateFontString("Collectinator_ProgressBarText", "ARTWORK")
			Collectinator_ProgressBarText:SetWidth(195)
			Collectinator_ProgressBarText:SetHeight(14)
			Collectinator_ProgressBarText:SetFontObject("GameFontHighlightSmall")
			Collectinator_ProgressBarText:ClearAllPoints()
			Collectinator_ProgressBarText:SetPoint("CENTER", Collectinator_ProgressBar, "CENTER", 0, 0)
			Collectinator_ProgressBarText:SetJustifyH("CENTER")
 			Collectinator_ProgressBarText:SetText(pbCur .. " / " .. pbMax .. " - " .. floor(pbCur / pbMax * 100) .. "%")

		-- I'm going to use my own tooltip for recipebuttons
		CollectinatorTooltip = QTip:Acquire(MODNAME.." Tooltip", 2, "LEFT", "LEFT")
		CollectinatorSpellTooltip = CreateFrame("GameTooltip", "CollectinatorSpellTooltip", addon.Frame, "GameTooltipTemplate")

		-- Add TipTac Support
		if (TipTac) and (TipTac.AddModifiedTip) then
			TipTac:AddModifiedTip(CollectinatorTooltip)
			TipTac:AddModifiedTip(CollectinatorSpellTooltip)
		end

		-- The main recipe list buttons and scrollframe
		addon.PlusListButton = {}
		addon.RecipeListButton = {}

		for i = 1, maxVisibleRecipes do

			local Temp_Plus = addon:GenericCreateButton("Collectinator_PlusListButton" .. i, addon.Frame,
				16, 16, "TOPLEFT", addon.Frame, "TOPLEFT", 20, -100, "GameFontNormalSmall",
				"GameFontHighlightSmall", "", "LEFT", "", 2)

			local Temp_Recipe = addon:GenericCreateButton("Collectinator_RecipeListButton" .. i, addon.Frame,
				16, 224, "TOPLEFT", addon.Frame, "TOPLEFT", 37, -100, "GameFontNormalSmall",
				"GameFontHighlightSmall", "Blort", "LEFT", "", 0)

			if not (i == 1) then

				Temp_Plus:SetPoint("TOPLEFT", addon.PlusListButton[i-1], "BOTTOMLEFT", 0, 3)
				Temp_Recipe:SetPoint("TOPLEFT", addon.RecipeListButton[i-1], "BOTTOMLEFT", 0, 3)

			end

			Temp_Plus:SetScript("OnClick",
				function ()
					addon.RecipeItem_OnClick(i)
				end
			)

			Temp_Recipe:SetScript("OnClick",
				function ()
					addon.RecipeItem_OnClick(i)
				end
			)

			addon.PlusListButton[i] = Temp_Plus
			addon.RecipeListButton[i] = Temp_Recipe

		end

		local Collectinator_RecipeScrollFrame = CreateFrame("ScrollFrame", "Collectinator_RecipeScrollFrame", addon.Frame, "FauxScrollFrameTemplate")
		Collectinator_RecipeScrollFrame:SetHeight(322)
		Collectinator_RecipeScrollFrame:SetWidth(243)
		Collectinator_RecipeScrollFrame:SetPoint("TOPLEFT", addon.Frame, "TOPLEFT", 20, -97)
		Collectinator_RecipeScrollFrame:SetScript("OnVerticalScroll",
			function(self, arg1)
				FauxScrollFrame_OnVerticalScroll(self, arg1, 16, RecipeList_Update)
			end
		)

		-- Stuff that appears on the main frame only when expanded

		local Collectinator_ResetButton = addon:GenericCreateButton("Collectinator_ResetButton", addon.Frame,
			25, 90, "TOPRIGHT", Collectinator_FilterButton, "BOTTOMRIGHT", 0, -2, "GameFontNormalSmall",
			"GameFontHighlightSmall", L["Reset"], "CENTER", L["RESET_DESC"], 1)
			Collectinator_ResetButton:SetScript("OnClick", addon.resetFilters)
			Collectinator_ResetButton:Hide()

		-- EXPANDED : 7 buttons for opening/closing the flyaway

		Collectinator_ExpGeneralOptCB = addon:CreateExpCB("Collectinator_ExpGeneralOptCB", "INV_Misc_Note_06", 1)
		Collectinator_ExpGeneralOptCB:SetPoint("TOPRIGHT", Collectinator_FilterButton, "BOTTOMLEFT", -1, -50)

		Collectinator_ExpObtainOptCB = addon:CreateExpCB("Collectinator_ExpObtainOptCB", "Spell_Shadow_MindRot", 2)
		Collectinator_ExpObtainOptCB:SetPoint("TOPLEFT", Collectinator_ExpGeneralOptCB, "BOTTOMLEFT", 0, -8)

		Collectinator_ExpBindingOptCB = addon:CreateExpCB("Collectinator_ExpBindingOptCB", "INV_Belt_20", 3)
		Collectinator_ExpBindingOptCB:SetPoint("TOPLEFT", Collectinator_ExpObtainOptCB, "BOTTOMLEFT", -0, -8)

		Collectinator_ExpItemOptCB = addon:CreateExpCB("Collectinator_ExpItemOptCB", "INV_Misc_EngGizmos_19", 4)
		Collectinator_ExpItemOptCB:SetPoint("TOPLEFT", Collectinator_ExpBindingOptCB, "BOTTOMLEFT", -0, -8)

		Collectinator_ExpPlayerOptCB = addon:CreateExpCB("Collectinator_ExpPlayerOptCB", "INV_Misc_GroupLooking", 5)
		Collectinator_ExpPlayerOptCB:SetPoint("TOPLEFT", Collectinator_ExpItemOptCB, "BOTTOMLEFT", -0, -8)

		Collectinator_ExpRepOptCB = addon:CreateExpCB("Collectinator_ExpRepOptCB", "INV_Scroll_05", 6)
		Collectinator_ExpRepOptCB:SetPoint("TOPLEFT", Collectinator_ExpPlayerOptCB, "BOTTOMLEFT", -0, -8)

		Collectinator_ExpMiscOptCB = addon:CreateExpCB("Collectinator_ExpMiscOptCB", "Trade_Engineering", 7)
		Collectinator_ExpMiscOptCB:SetPoint("TOPLEFT", Collectinator_ExpRepOptCB, "BOTTOMLEFT", -0, -8)

		-- Frame for the flyaway pane
		addon.Flyaway = CreateFrame("Frame", "Collectinator_Flyaway", addon.Frame)
			addon.Flyaway:SetWidth(234)
			addon.Flyaway:SetHeight(312)

			addon.flyTexture = addon.Flyaway:CreateTexture("Collectinator.flyTexture", "ARTWORK")
			addon.flyTexture:SetTexture("Interface\\Addons\\Collectinator\\img\\fly_2col")
			addon.flyTexture:SetAllPoints(addon.Flyaway)
			addon.flyTexture:SetTexCoord(0, (234/256), 0, (312/512))
			addon.Flyaway:SetHitRectInsets(5, 5, 5, 5)

			addon.Flyaway:EnableMouse(true)
			addon.Flyaway:EnableKeyboard(true)
			addon.Flyaway:SetMovable(false)

			addon.Flyaway:ClearAllPoints()
			addon.Flyaway:SetPoint("TOPLEFT", addon.Frame, "TOPRIGHT", -6, -102)

			addon.Flyaway:SetScript("OnShow", addon.setFlyawayState) 
			addon.Flyaway:Hide()

		-- Flyaway virtual frames to group buttons/text easily (and make them easy to show/hide)

		addon.Fly_General = CreateFrame("Frame", "Collectinator_Fly_General", addon.Flyaway)
			addon.Fly_General:SetWidth(112)
			addon.Fly_General:SetHeight(280)
			addon.Fly_General:EnableMouse(true)
			addon.Fly_General:EnableKeyboard(true)
			addon.Fly_General:SetMovable(false)
			addon.Fly_General:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_General:Hide()
--			() Craft Specialty recipes
--			() All skill levels
--			() Cross-Faction
--			() Known
--			() Unknown
			local Collectinator_SpecialtyCB = CreateFrame("CheckButton", "Collectinator_SpecialtyCB", addon.Fly_General, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_SpecialtyCB, addon.Fly_General, L["SPECIALTY_DESC"], 2, 1, 1, 0)
				Collectinator_SpecialtyCBText:SetText(L["Specialties"])
			local Collectinator_LevelCB = CreateFrame("CheckButton", "Collectinator_LevelCB", addon.Fly_General, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_LevelCB, addon.Fly_General, L["SKILL_DESC"], 3, 2, 1, 0)
				Collectinator_LevelCBText:SetText(L["Skill"])
			local Collectinator_FactionCB = CreateFrame("CheckButton", "Collectinator_FactionCB", addon.Fly_General, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_FactionCB, addon.Fly_General, L["FACTION_DESC"], 4, 3, 1, 0)
				Collectinator_FactionCBText:SetText(L["Faction"])
			local Collectinator_KnownCB = CreateFrame("CheckButton", "Collectinator_KnownCB", addon.Fly_General, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_KnownCB, addon.Fly_General, L["KNOWN_DESC"], 5, 4, 1, 0)
				Collectinator_KnownCBText:SetText(L["Known"])
			local Collectinator_UnknownCB = CreateFrame("CheckButton", "Collectinator_UnknownCB", addon.Fly_General, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_UnknownCB, addon.Fly_General, L["UNKNOWN_DESC"], 6, 5, 1, 0)
				Collectinator_UnknownCBText:SetText(L["Unknown"])

		addon.Fly_Obtain = CreateFrame("Frame", "Collectinator_Fly_Obtain", addon.Flyaway)
			addon.Fly_Obtain:SetWidth(112)
			addon.Fly_Obtain:SetHeight(280)
			addon.Fly_Obtain:EnableMouse(true)
			addon.Fly_Obtain:EnableKeyboard(true)
			addon.Fly_Obtain:SetMovable(false)
			addon.Fly_Obtain:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_Obtain:Hide()
--			() Instance	() Raid
--			() Quest		() Seasonal
--			() Trainer		() Vendor
--			() PVP		() Discovery
--			() World Drop	() Mob Drop
			local Collectinator_InstanceCB = CreateFrame("CheckButton", "Collectinator_InstanceCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_InstanceCB, addon.Fly_Obtain, L["INSTANCE_DESC"], 7, 1, 1, 0)
				Collectinator_InstanceCBText:SetText(L["Instance"])
			local Collectinator_RaidCB = CreateFrame("CheckButton", "Collectinator_RaidCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RaidCB, addon.Fly_Obtain, L["RAID_DESC"], 8, 2, 1, 0)
				Collectinator_RaidCBText:SetText(L["Raid"])
			local Collectinator_QuestCB = CreateFrame("CheckButton", "Collectinator_QuestCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_QuestCB, addon.Fly_Obtain, L["QUEST_DESC"], 9, 3, 1, 0)
				Collectinator_QuestCBText:SetText(L["Quest"])
			local Collectinator_SeasonalCB = CreateFrame("CheckButton", "Collectinator_SeasonalCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_SeasonalCB, addon.Fly_Obtain, L["SEASONAL_DESC"], 10, 4, 1, 0)
				Collectinator_SeasonalCBText:SetText(seasonal)
			local Collectinator_TrainerCB = CreateFrame("CheckButton", "Collectinator_TrainerCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_TrainerCB, addon.Fly_Obtain, L["TRAINER_DESC"], 11, 5, 1, 0)
				Collectinator_TrainerCBText:SetText(L["Trainer"])
			local Collectinator_VendorCB = CreateFrame("CheckButton", "Collectinator_VendorCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_VendorCB, addon.Fly_Obtain, L["VENDOR_DESC"], 12, 6, 1, 0)
				Collectinator_VendorCBText:SetText(L["Vendor"])
			local Collectinator_PVPCB = CreateFrame("CheckButton", "Collectinator_PVPCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_PVPCB, addon.Fly_Obtain, L["PVP_DESC"], 13, 7, 1, 0)
				Collectinator_PVPCBText:SetText(L["PVP"])
			local Collectinator_DiscoveryCB = CreateFrame("CheckButton", "Collectinator_DiscoveryCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_DiscoveryCB, addon.Fly_Obtain, L["DISCOVERY_DESC"], 14, 8, 1, 0)
				Collectinator_DiscoveryCBText:SetText(L["Discovery"])
			local Collectinator_WorldDropCB = CreateFrame("CheckButton", "Collectinator_WorldDropCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WorldDropCB, addon.Fly_Obtain, L["WORLD_DROP_DESC"], 39, 9, 1, 0)
				Collectinator_WorldDropCBText:SetText(L["World Drop"])
			local Collectinator_MobDropCB = CreateFrame("CheckButton", "Collectinator_MobDropCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_MobDropCB, addon.Fly_Obtain, L["MOB_DROP_DESC"], 40, 10, 1, 0)
				Collectinator_MobDropCBText:SetText(L["Mob Drop"])
			local Collectinator_OriginalWoWCB = CreateFrame("CheckButton", "Collectinator_OriginalWoWCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_OriginalWoWCB, addon.Fly_Obtain, L["ORIGINAL_WOW_DESC"], 26, 12, 1, 0)
				Collectinator_OriginalWoWCBText:SetText(L["Old World"])
			local Collectinator_BCCB = CreateFrame("CheckButton", "Collectinator_BCCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_BCCB, addon.Fly_Obtain, L["BC_WOW_DESC"], 78, 13, 1, 0)
				Collectinator_BCCBText:SetText(L["Burning Crusade"])
			local Collectinator_WrathCB = CreateFrame("CheckButton", "Collectinator_WrathCB", addon.Fly_Obtain, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WrathCB, addon.Fly_Obtain, L["LK_WOW_DESC"], 81, 14, 1, 0)
				Collectinator_WrathCBText:SetText(L["Lich King"])

		addon.Fly_Binding = CreateFrame("Frame", "Collectinator_Fly_Binding", addon.Flyaway)
			addon.Fly_Binding:SetWidth(210)
			addon.Fly_Binding:SetHeight(280)
			addon.Fly_Binding:EnableMouse(true)
			addon.Fly_Binding:EnableKeyboard(true)
			addon.Fly_Binding:SetMovable(false)
			addon.Fly_Binding:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_Binding:Hide()
--			() Crafted Item is Bind on Equip
--			() Crafted Item is Bind on Pickup
--			() Recipe is Bind on Equip
--			() Recipe is Bind on Pickup
			local Collectinator_iBoECB = CreateFrame("CheckButton", "Collectinator_iBoECB", addon.Fly_Binding, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_iBoECB, addon.Fly_Binding, L["BOE_DESC"], 15, 1, 1, 0)
				Collectinator_iBoECBText:SetText(L["BOEFilter"])
			local Collectinator_iBoPCB = CreateFrame("CheckButton", "Collectinator_iBoPCB", addon.Fly_Binding, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_iBoPCB, addon.Fly_Binding, L["BOP_DESC"], 16, 2, 1, 0)
				Collectinator_iBoPCBText:SetText(L["BOPFilter"])
			local Collectinator_rBoECB = CreateFrame("CheckButton", "Collectinator_rBoECB", addon.Fly_Binding, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_rBoECB, addon.Fly_Binding, L["RECIPE_BOE_DESC"], 17, 3, 1, 0)
				Collectinator_rBoECBText:SetText(L["RecipeBOEFilter"])
			local Collectinator_rBoPCB = CreateFrame("CheckButton", "Collectinator_rBoPCB", addon.Fly_Binding, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_rBoPCB, addon.Fly_Binding, L["RECIPE_BOP_DESC"], 18, 4, 1, 0)
				Collectinator_rBoPCBText:SetText(L["RecipeBOPFilter"])

		addon.Fly_Item = CreateFrame("Frame", "Collectinator_Fly_Item", addon.Flyaway)
			addon.Fly_Item:SetWidth(210)
			addon.Fly_Item:SetHeight(280)
			addon.Fly_Item:EnableMouse(true)
			addon.Fly_Item:EnableKeyboard(true)
			addon.Fly_Item:SetMovable(false)
			addon.Fly_Item:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_Item:Hide()
--			Armor:
--				() Cloth	() Leather
--				() Mail	() Plate
--
--				() Cloak	() Necklace
--				() Rings	() Trinkets 
--				() Shield
			local Collectinator_ArmorButton = addon:GenericCreateButton("Collectinator_ArmorButton", addon.Fly_Item,
				20, 60, "TOPLEFT", addon.Fly_Item, "TOPLEFT", -2, -4, "GameFontHighlight",
				"GameFontHighlightSmall", L["Armor"], "LEFT", L["ARMOR_TEXT_DESC"], 0)
				Collectinator_ArmorButton:SetText(L["Armor"] .. ":")
				Collectinator_ArmorButton:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
				Collectinator_ArmorButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
				Collectinator_ArmorButton:SetScript("OnClick",
					function(self,button)
						local armordb = addon.db.profile.filters.item.armor
						if button == "LeftButton" then
							-- Reset all armor to true
							armordb.cloth = true
							armordb.leather = true
							armordb.mail = true
							armordb.plate = true
							armordb.cloak = true
							armordb.necklace = true
							armordb.ring = true
							armordb.trinket = true
							armordb.shield = true
						elseif button == "RightButton" then
							-- Reset all armor to false
							armordb.cloth = false
							armordb.leather = false
							armordb.mail = false
							armordb.plate = false
							armordb.cloak = false
							armordb.necklace = false
							armordb.ring = false
							armordb.trinket = false
							armordb.shield = false
						end
						-- Update the checkboxes with the new value
						Collectinator_ArmorClothCB:SetChecked(armordb.cloth)
						Collectinator_ArmorLeatherCB:SetChecked(armordb.leather)
						Collectinator_ArmorMailCB:SetChecked(armordb.mail)
						Collectinator_ArmorPlateCB:SetChecked(armordb.plate)
						Collectinator_ArmorCloakCB:SetChecked(armordb.cloak)
						Collectinator_ArmorNecklaceCB:SetChecked(armordb.necklace)
						Collectinator_ArmorRingCB:SetChecked(armordb.ring)
						Collectinator_ArmorTrinketCB:SetChecked(armordb.trinket)
						Collectinator_ArmorShieldCB:SetChecked(armordb.shield)
						-- Reset our title
						addon.resetTitle()
						-- Use new filters
						ReDisplay()
					end)
			local Collectinator_ArmorClothCB = CreateFrame("CheckButton", "Collectinator_ArmorClothCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorClothCB, addon.Fly_Item, L["CLOTH_DESC"], 21, 2, 1, 0)
				Collectinator_ArmorClothCBText:SetText(L["Cloth"])
			local Collectinator_ArmorLeatherCB = CreateFrame("CheckButton", "Collectinator_ArmorLeatherCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorLeatherCB, addon.Fly_Item, L["LEATHER_DESC"], 22, 2, 2, 0)
				Collectinator_ArmorLeatherCBText:SetText(L["Leather"])
			local Collectinator_ArmorMailCB = CreateFrame("CheckButton", "Collectinator_ArmorMailCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorMailCB, addon.Fly_Item, L["MAIL_DESC"], 23, 3, 1, 0)
				Collectinator_ArmorMailCBText:SetText(L["Mail"])
			local Collectinator_ArmorPlateCB = CreateFrame("CheckButton", "Collectinator_ArmorPlateCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorPlateCB, addon.Fly_Item, L["PLATE_DESC"], 24, 3, 2, 0)
				Collectinator_ArmorPlateCBText:SetText(L["Plate"])

			local Collectinator_ArmorCloakCB = CreateFrame("CheckButton", "Collectinator_ArmorCloakCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorCloakCB, addon.Fly_Item, L["CLOAK_DESC"], 64, 4, 1, 0)
				Collectinator_ArmorCloakCBText:SetText(L["Cloak"])
			local Collectinator_ArmorNecklaceCB = CreateFrame("CheckButton", "Collectinator_ArmorNecklaceCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorNecklaceCB, addon.Fly_Item, L["NECKLACE_DESC"], 65, 4, 2, 0)
				Collectinator_ArmorNecklaceCBText:SetText(L["Necklace"])
			local Collectinator_ArmorRingCB = CreateFrame("CheckButton", "Collectinator_ArmorRingCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorRingCB, addon.Fly_Item, L["RING_DESC"], 66, 5, 1, 0)
				Collectinator_ArmorRingCBText:SetText(L["Ring"])
			local Collectinator_ArmorTrinketCB = CreateFrame("CheckButton", "Collectinator_ArmorTrinketCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorTrinketCB, addon.Fly_Item, L["TRINKET_DESC"], 67, 5, 2, 0)
				Collectinator_ArmorTrinketCBText:SetText(L["Trinket"])
			local Collectinator_ArmorShieldCB = CreateFrame("CheckButton", "Collectinator_ArmorShieldCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_ArmorShieldCB, addon.Fly_Item, L["SHIELD_DESC"], 19, 6, 1, 0)
				Collectinator_ArmorShieldCBText:SetText(L["Shield"])
--			Weapon:
--				() 1H		() 2H
--				() Dagger	() Axe
--				() Mace	() Sword
--				() Polearm	() Thrown
--				() Bow	() Crossbow
--				() Staff
			local Collectinator_WeaponButton = addon:GenericCreateButton("Collectinator_WeaponButton", addon.Fly_Item,
				20, 75, "TOPLEFT", addon.Fly_Item, "TOPLEFT", -2, -122, "GameFontHighlight",
				"GameFontHighlightSmall", L["Weapon"], "LEFT", L["WEAPON_TEXT_DESC"], 0)
				Collectinator_WeaponButton:SetText(L["Weapon"] .. ":")
				Collectinator_WeaponButton:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
				Collectinator_WeaponButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
				Collectinator_WeaponButton:SetScript("OnClick",
					function(self,button)
						local weapondb = addon.db.profile.filters.item.weapon
						if button == "LeftButton" then
							-- Reset all weapon to true
							weapondb.onehand = true
							weapondb.twohand = true
							weapondb.dagger = true
							weapondb.axe = true
							weapondb.mace = true
							weapondb.sword = true
							weapondb.polearm = true
							weapondb.wand = true
							weapondb.thrown = true
							weapondb.ammo = true
							weapondb.fist = true
						elseif button == "RightButton" then
							-- Reset all weapon to false
							weapondb.onehand = false
							weapondb.twohand = false
							weapondb.dagger = false
							weapondb.axe = false
							weapondb.mace = false
							weapondb.sword = false
							weapondb.polearm = false
							weapondb.wand = false
							weapondb.thrown = false
							weapondb.ammo = false
							weapondb.fist = false
						end
						-- Update the checkboxes with the new value
						Collectinator_Weapon1HCB:SetChecked(weapondb.onehand)
						Collectinator_Weapon2HCB:SetChecked(weapondb.twohand)
						Collectinator_WeaponDaggerCB:SetChecked(weapondb.dagger)
						Collectinator_WeaponAxeCB:SetChecked(weapondb.axe)
						Collectinator_WeaponMaceCB:SetChecked(weapondb.mace)
						Collectinator_WeaponSwordCB:SetChecked(weapondb.sword)
						Collectinator_WeaponPolearmCB:SetChecked(weapondb.polearm)
						Collectinator_WeaponWandCB:SetChecked(weapondb.wand)
						Collectinator_WeaponThrownCB:SetChecked(weapondb.thrown)
						Collectinator_WeaponAmmoCB:SetChecked(weapondb.ammo)
						Collectinator_WeaponFistCB:SetChecked(weapondb.fist)
						-- Reset our title
						addon.resetTitle()
						-- Use new filters
						ReDisplay()
					end)
			local Collectinator_Weapon1HCB = CreateFrame("CheckButton", "Collectinator_Weapon1HCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_Weapon1HCB, addon.Fly_Item, L["ONEHAND_DESC"], 27, 9, 1, 0)
				Collectinator_Weapon1HCBText:SetText(L["One Hand"])
			local Collectinator_Weapon2HCB = CreateFrame("CheckButton", "Collectinator_Weapon2HCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_Weapon2HCB, addon.Fly_Item, L["TWOHAND_DESC"], 28, 9, 2, 0)
				Collectinator_Weapon2HCBText:SetText(L["Two Hand"])
			local Collectinator_WeaponDaggerCB = CreateFrame("CheckButton", "Collectinator_WeaponDaggerCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponDaggerCB, addon.Fly_Item, L["DAGGER_DESC"], 29, 10, 1, 0)
				Collectinator_WeaponDaggerCBText:SetText(L["Dagger"])
			local Collectinator_WeaponAxeCB = CreateFrame("CheckButton", "Collectinator_WeaponAxeCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponAxeCB, addon.Fly_Item, L["AXE_DESC"], 30, 10, 2, 0)
				Collectinator_WeaponAxeCBText:SetText(L["Axe"])
			local Collectinator_WeaponMaceCB = CreateFrame("CheckButton", "Collectinator_WeaponMaceCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponMaceCB, addon.Fly_Item, L["MACE_DESC"], 31, 11, 1, 0)
				Collectinator_WeaponMaceCBText:SetText(L["Mace"])
			local Collectinator_WeaponSwordCB = CreateFrame("CheckButton", "Collectinator_WeaponSwordCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponSwordCB, addon.Fly_Item, L["SWORD_DESC"], 32, 11, 2, 0)
				Collectinator_WeaponSwordCBText:SetText(L["Sword"])
			local Collectinator_WeaponPolearmCB = CreateFrame("CheckButton", "Collectinator_WeaponPolearmCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponPolearmCB, addon.Fly_Item, L["POLEARM_DESC"], 33, 12, 1, 0)
				Collectinator_WeaponPolearmCBText:SetText(L["Polearm"])
			local Collectinator_WeaponFistCB = CreateFrame("CheckButton", "Collectinator_WeaponFistCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponFistCB, addon.Fly_Item, L["FIST_DESC"], 20, 12, 2, 0)
				Collectinator_WeaponFistCBText:SetText(L["Fist"])
			local Collectinator_WeaponStaffCB = CreateFrame("CheckButton", "Collectinator_WeaponStaffCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponStaffCB, addon.Fly_Item, L["STAFF_DESC"], 34, 13, 1, 0)
				Collectinator_WeaponStaffCBText:SetText(L["Staff"])
				Collectinator_WeaponStaffCBText:SetText(addon:Grey(L["Staff"]))
				Collectinator_WeaponStaffCB:Disable()
			local Collectinator_WeaponWandCB = CreateFrame("CheckButton", "Collectinator_WeaponWandCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponWandCB, addon.Fly_Item, L["WAND_DESC"], 68, 13, 2, 0)
				Collectinator_WeaponWandCBText:SetText(L["Wand"])
			local Collectinator_WeaponThrownCB = CreateFrame("CheckButton", "Collectinator_WeaponThrownCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponThrownCB, addon.Fly_Item, L["THROWN_DESC"], 35, 14, 1, 0)
				Collectinator_WeaponThrownCBText:SetText(L["Thrown"])
			local Collectinator_WeaponBowCB = CreateFrame("CheckButton", "Collectinator_WeaponBowCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponBowCB, addon.Fly_Item, L["BOW_DESC"], 36, 14, 2, 0)
				Collectinator_WeaponBowCBText:SetText(L["Bow"])
				Collectinator_WeaponBowCBText:SetText(addon:Grey(L["Bow"]))
				Collectinator_WeaponBowCB:Disable()
			local Collectinator_WeaponCrossbowCB = CreateFrame("CheckButton", "Collectinator_WeaponCrossbowCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponCrossbowCB, addon.Fly_Item, L["CROSSBOW_DESC"], 37, 15, 1, 0)
				Collectinator_WeaponCrossbowCBText:SetText(L["Crossbow"])
				Collectinator_WeaponCrossbowCBText:SetText(addon:Grey(L["Crossbow"]))
				Collectinator_WeaponCrossbowCB:Disable()
			local Collectinator_WeaponAmmoCB = CreateFrame("CheckButton", "Collectinator_WeaponAmmoCB", addon.Fly_Item, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WeaponAmmoCB, addon.Fly_Item, L["AMMO_DESC"], 38, 15, 2, 0)
				Collectinator_WeaponAmmoCBText:SetText(L["Ammo"])

		addon.Fly_Player= CreateFrame("Frame", "Collectinator_Fly_Player", addon.Flyaway)
			addon.Fly_Player:SetWidth(112)
			addon.Fly_Player:SetHeight(280)
			addon.Fly_Player:EnableMouse(true)
			addon.Fly_Player:EnableKeyboard(true)
			addon.Fly_Player:SetMovable(false)
			addon.Fly_Player:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_Player:Hide()

			local Collectinator_PlayerTankCB = CreateFrame("CheckButton", "Collectinator_PlayerTankCB", addon.Fly_Player, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_PlayerTankCB, addon.Fly_Player, L["TANKS_DESC"], 41, 1, 1, 0)
				Collectinator_PlayerTankCBText:SetText(L["Tanks"])
			local Collectinator_PlayerMeleeCB = CreateFrame("CheckButton", "Collectinator_PlayerMeleeCB", addon.Fly_Player, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_PlayerMeleeCB, addon.Fly_Player, L["MELEE_DPS_DESC"], 42, 2, 1, 0)
				Collectinator_PlayerMeleeCBText:SetText(L["Melee DPS"])
			local Collectinator_PlayerHealerCB = CreateFrame("CheckButton", "Collectinator_PlayerHealerCB", addon.Fly_Player, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_PlayerHealerCB, addon.Fly_Player, L["HEALERS_DESC"], 43, 3, 1, 0)
				Collectinator_PlayerHealerCBText:SetText(L["Healers"])
			local Collectinator_PlayerCasterCB = CreateFrame("CheckButton", "Collectinator_PlayerCasterCB", addon.Fly_Player, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_PlayerCasterCB, addon.Fly_Player, L["CASTER_DPS_DESC"], 44, 4, 1, 0)
				Collectinator_PlayerCasterCBText:SetText(L["Caster DPS"])

		addon.Fly_Rep = CreateFrame("Frame", "Collectinator_Fly_Rep", addon.Flyaway)
			addon.Fly_Rep:SetWidth(112)
			addon.Fly_Rep:SetHeight(280)
			addon.Fly_Rep:EnableMouse(true)
			addon.Fly_Rep:EnableKeyboard(true)
			addon.Fly_Rep:SetMovable(false)
			addon.Fly_Rep:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_Rep:Hide()

			Collectinator_RepOldWorldCB = addon:CreateExpCB("Collectinator_RepOldWorldCB", "Glues-WoW-Logo", 1)
			Collectinator_RepOldWorldCB:SetPoint("TOPLEFT", addon.Fly_Rep, "TOPLEFT", 0, -10)
			Collectinator_RepOldWorldCB:SetScript("OnClick", function() addon.RepFilterSwitch(1) end)

			Collectinator_RepBCCB = addon:CreateExpCB("Collectinator_RepBCCB", "GLUES-WOW-BCLOGO", 1)
			Collectinator_RepBCCB:SetPoint("TOPLEFT", addon.Fly_Rep, "TOPLEFT", 0, -60)
			Collectinator_RepBCCB:SetScript("OnClick", function() addon.RepFilterSwitch(2) end)

			Collectinator_RepLKCB = addon:CreateExpCB("Collectinator_RepLKCB", "wotlk_logo", 1)
			Collectinator_RepLKCB:SetPoint("TOPLEFT", addon.Fly_Rep, "TOPLEFT", 0, -110)
			Collectinator_RepLKCB:SetScript("OnClick", function() addon.RepFilterSwitch(3) end)

			-- Original
			addon.Fly_Rep_OW= CreateFrame("Frame", "Collectinator_Fly_Rep_OW", addon.Fly_Rep)
			addon.Fly_Rep_OW:SetWidth(150)
			addon.Fly_Rep_OW:SetHeight(280)
			addon.Fly_Rep_OW:EnableMouse(true)
			addon.Fly_Rep_OW:EnableKeyboard(true)
			addon.Fly_Rep_OW:SetMovable(false)
			addon.Fly_Rep_OW:SetPoint("TOPRIGHT", addon.Flyaway, "TOPRIGHT", -7, -16)
			addon.Fly_Rep_OW:Hide()
			local Collectinator_Rep_OWButton = addon:GenericCreateButton("Collectinator_Rep_OWButton", addon.Fly_Rep_OW,
				20, 85, "TOPLEFT", addon.Fly_Rep_OW, "TOPLEFT", -2, -4, "GameFontHighlight",
				"GameFontHighlightSmall", L["Reputation"], "LEFT", L["REP_TEXT_DESC"], 0)
				Collectinator_Rep_OWButton:SetText(L["Reputation"] .. ":")
				Collectinator_Rep_OWButton:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
				Collectinator_Rep_OWButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
				Collectinator_Rep_OWButton:SetScript("OnClick",
					function(self,button)
						local filterdb = addon.db.profile.filters.rep
						if button == "LeftButton" then
							-- Reset all armor to true
							filterdb.argentdawn = true
							filterdb.cenarioncircle = true
							filterdb.thoriumbrotherhood = true
							filterdb.timbermaw = true
							filterdb.zandalar = true
						elseif button == "RightButton" then
							-- Reset all armor to false
							filterdb.argentdawn = false
							filterdb.cenarioncircle = false
							filterdb.thoriumbrotherhood = false
							filterdb.timbermaw = false
							filterdb.zandalar = false
						end
						-- Update the checkboxes with the new value
						Collectinator_RepArgentDawnCB:SetChecked(filterdb.argentdawn)
						Collectinator_RepCenarionCircleCB:SetChecked(filterdb.cenarioncircle)
						Collectinator_RepThoriumCB:SetChecked(filterdb.thoriumbrotherhood)
						Collectinator_RepTimbermawCB:SetChecked(filterdb.timbermaw)
						Collectinator_RepZandalarCB:SetChecked(filterdb.zandalar)
						-- Reset our title
						addon.resetTitle()
						-- Use new filters
						ReDisplay()
					end)
			local Collectinator_RepArgentDawnCB = CreateFrame("CheckButton", "Collectinator_RepArgentDawnCB", addon.Fly_Rep_OW, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepArgentDawnCB, addon.Fly_Rep_OW,sformat(L["SPECIFIC_REP_DESC"], BFAC["Argent Dawn"]), 45, 2, 1, 0)
				Collectinator_RepArgentDawnCBText:SetText(BFAC["Argent Dawn"])
				Collectinator_RepArgentDawnCBText:SetFont(narrowFont, 11)
			local Collectinator_RepCenarionCircleCB = CreateFrame("CheckButton", "Collectinator_RepCenarionCircleCB", addon.Fly_Rep_OW, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepCenarionCircleCB, addon.Fly_Rep_OW,sformat(L["SPECIFIC_REP_DESC"], BFAC["Cenarion Circle"]), 46, 3, 1, 0)
				Collectinator_RepCenarionCircleCBText:SetText(BFAC["Cenarion Circle"])
				Collectinator_RepCenarionCircleCBText:SetFont(narrowFont, 11)
			local Collectinator_RepThoriumCB = CreateFrame("CheckButton", "Collectinator_RepThoriumCB", addon.Fly_Rep_OW, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepThoriumCB, addon.Fly_Rep_OW,sformat(L["SPECIFIC_REP_DESC"], BFAC["Thorium Brotherhood"]), 47, 4, 1, 0)
				Collectinator_RepThoriumCBText:SetText(BFAC["Thorium Brotherhood"])
				Collectinator_RepThoriumCBText:SetFont(narrowFont, 11)
			local Collectinator_RepTimbermawCB = CreateFrame("CheckButton", "Collectinator_RepTimbermawCB", addon.Fly_Rep_OW, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepTimbermawCB, addon.Fly_Rep_OW,sformat(L["SPECIFIC_REP_DESC"], BFAC["Timbermaw Hold"]), 48, 5, 1, 0)
				Collectinator_RepTimbermawCBText:SetText(BFAC["Timbermaw Hold"])
				Collectinator_RepTimbermawCBText:SetFont(narrowFont, 11)
			local Collectinator_RepZandalarCB = CreateFrame("CheckButton", "Collectinator_RepZandalarCB", addon.Fly_Rep_OW, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepZandalarCB, addon.Fly_Rep_OW,sformat(L["SPECIFIC_REP_DESC"], BFAC["Zandalar Tribe"]), 49, 6, 1, 0)
				Collectinator_RepZandalarCBText:SetText(BFAC["Zandalar Tribe"])
				Collectinator_RepZandalarCBText:SetFont(narrowFont, 11)

			-- BC
			addon.Fly_Rep_BC = CreateFrame("Frame", "Collectinator_Fly_Rep_BC", addon.Fly_Rep)
			addon.Fly_Rep_BC:SetWidth(150)
			addon.Fly_Rep_BC:SetHeight(280)
			addon.Fly_Rep_BC:EnableMouse(true)
			addon.Fly_Rep_BC:EnableKeyboard(true)
			addon.Fly_Rep_BC:SetMovable(false)
			addon.Fly_Rep_BC:SetPoint("TOPRIGHT", addon.Flyaway, "TOPRIGHT", -7, -16)
			addon.Fly_Rep_BC:Hide()
			local Collectinator_Rep_BCButton = addon:GenericCreateButton("Collectinator_Rep_OWButton", addon.Fly_Rep_BC,
				20, 85, "TOPLEFT", addon.Fly_Rep_BC, "TOPLEFT", -2, -4, "GameFontHighlight",
				"GameFontHighlightSmall", L["Reputation"], "LEFT", L["REP_TEXT_DESC"], 0)
				Collectinator_Rep_BCButton:SetText(L["Reputation"] .. ":")
				Collectinator_Rep_BCButton:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
				Collectinator_Rep_BCButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
				Collectinator_Rep_BCButton:SetScript("OnClick",
					function(self,button)
						local filterdb = addon.db.profile.filters.rep
						if button == "LeftButton" then
							-- Reset all armor to true
							filterdb.aldor = true
							filterdb.ashtonguedeathsworn = true
							filterdb.cenarionexpedition = true
							filterdb.consortium = true
							filterdb.hellfire = true
							filterdb.keepersoftime = true
							filterdb.nagrand = true
							filterdb.lowercity = true
							filterdb.scaleofthesands = true
							filterdb.scryer = true
							filterdb.shatar = true
							filterdb.shatteredsun = true
							filterdb.sporeggar = true
							filterdb.violeteye = true
						elseif button == "RightButton" then
							-- Reset all armor to false
							filterdb.aldor = false
							filterdb.ashtonguedeathsworn = false
							filterdb.cenarionexpedition = false
							filterdb.consortium = false
							filterdb.hellfire = false
							filterdb.keepersoftime = false
							filterdb.nagrand = false
							filterdb.lowercity = false
							filterdb.scaleofthesands = false
							filterdb.scryer = false
							filterdb.shatar = false
							filterdb.shatteredsun = false
							filterdb.sporeggar = false
							filterdb.violeteye = false
						end
						-- Update the checkboxes with the new value
						Collectinator_RepAldorCB:SetChecked(filterdb.aldor)
						Collectinator_RepAshtongueCB:SetChecked(filterdb.ashtonguedeathsworn)
						Collectinator_RepCenarionExpeditionCB:SetChecked(filterdb.cenarionexpedition)
						Collectinator_RepConsortiumCB:SetChecked(filterdb.consortium)
						Collectinator_RepHonorHoldCB:SetChecked(filterdb.hellfire)
						Collectinator_RepKeepersOfTimeCB:SetChecked(filterdb.keepersoftime)
						Collectinator_RepKurenaiCB:SetChecked(filterdb.nagrand)
						Collectinator_RepLowerCityCB:SetChecked(filterdb.lowercity)
						Collectinator_RepScaleSandsCB:SetChecked(filterdb.scaleofthesands)
						Collectinator_RepScryersCB:SetChecked(filterdb.scryer)
						Collectinator_RepShatarCB:SetChecked(filterdb.shatar)
						Collectinator_RepShatteredSunCB:SetChecked(filterdb.shatteredsun)
						Collectinator_RepSporeggarCB:SetChecked(filterdb.sporeggar)
						Collectinator_RepVioletEyeCB:SetChecked(filterdb.violeteye)
						-- Reset our title
						addon.resetTitle()
						-- Use new filters
						ReDisplay()
					end)
			local Collectinator_RepAldorCB = CreateFrame("CheckButton", "Collectinator_RepAldorCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepAldorCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Aldor"]), 50, 2, 1, 0)
				Collectinator_RepAldorCBText:SetText(BFAC["The Aldor"])
				Collectinator_RepAldorCBText:SetFont(narrowFont, 11)
			local Collectinator_RepAshtongueCB = CreateFrame("CheckButton", "Collectinator_RepAshtongueCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepAshtongueCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["Ashtongue Deathsworn"]), 51, 3, 1, 0)
				Collectinator_RepAshtongueCBText:SetText(BFAC["Ashtongue Deathsworn"])
				Collectinator_RepAshtongueCBText:SetFont(narrowFont, 11)
			local Collectinator_RepCenarionExpeditionCB = CreateFrame("CheckButton", "Collectinator_RepCenarionExpeditionCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepCenarionExpeditionCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["Cenarion Expedition"]), 52, 4, 1, 0)
				Collectinator_RepCenarionExpeditionCBText:SetText(BFAC["Cenarion Expedition"])
				Collectinator_RepCenarionExpeditionCBText:SetFont(narrowFont, 11)
			local Collectinator_RepConsortiumCB = CreateFrame("CheckButton", "Collectinator_RepConsortiumCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepConsortiumCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Consortium"]), 53, 5, 1, 0)
				Collectinator_RepConsortiumCBText:SetText(BFAC["The Consortium"])
				Collectinator_RepConsortiumCBText:SetFont(narrowFont, 11)
			local Collectinator_RepHonorHoldCB = CreateFrame("CheckButton", "Collectinator_RepHonorHoldCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepHonorHoldCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], HonorHold_Thrallmar_FactionText), 54, 6, 1, 0)
				Collectinator_RepHonorHoldCBText:SetText(HonorHold_Thrallmar_FactionText)
				Collectinator_RepHonorHoldCBText:SetFont(narrowFont, 11)
			local Collectinator_RepKeepersOfTimeCB = CreateFrame("CheckButton", "Collectinator_RepKeepersOfTimeCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepKeepersOfTimeCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["Keepers of Time"]), 55, 7, 1, 0)
				Collectinator_RepKeepersOfTimeCBText:SetText(BFAC["Keepers of Time"])
				Collectinator_RepKeepersOfTimeCBText:SetFont(narrowFont, 11)
			local Collectinator_RepKurenaiCB = CreateFrame("CheckButton", "Collectinator_RepKurenaiCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepKurenaiCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], Kurenai_Maghar_FactionText), 56, 8, 1, 0)
				Collectinator_RepKurenaiCBText:SetText(Kurenai_Maghar_FactionText)
				Collectinator_RepKurenaiCBText:SetFont(narrowFont, 11)
			local Collectinator_RepLowerCityCB = CreateFrame("CheckButton", "Collectinator_RepLowerCityCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepLowerCityCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["Lower City"]), 57, 9, 1, 0)
				Collectinator_RepLowerCityCBText:SetText(BFAC["Lower City"])
				Collectinator_RepLowerCityCBText:SetFont(narrowFont, 11)
			local Collectinator_RepScaleSandsCB = CreateFrame("CheckButton", "Collectinator_RepScaleSandsCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepScaleSandsCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Scale of the Sands"]), 58, 10, 1, 0)
				Collectinator_RepScaleSandsCBText:SetText(BFAC["The Scale of the Sands"])
				Collectinator_RepScaleSandsCBText:SetFont(narrowFont, 11)
			local Collectinator_RepScryersCB = CreateFrame("CheckButton", "Collectinator_RepScryersCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepScryersCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Scryers"]), 59, 11, 1, 0)
				Collectinator_RepScryersCBText:SetText(BFAC["The Scryers"])
				Collectinator_RepScryersCBText:SetFont(narrowFont, 11)
			local Collectinator_RepShatarCB = CreateFrame("CheckButton", "Collectinator_RepShatarCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepShatarCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Sha'tar"]), 60, 12, 1, 0)
				Collectinator_RepShatarCBText:SetText(BFAC["The Sha'tar"])
				Collectinator_RepShatarCBText:SetFont(narrowFont, 11)
			local Collectinator_RepShatteredSunCB = CreateFrame("CheckButton", "Collectinator_RepShatteredSunCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepShatteredSunCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["Shattered Sun Offensive"]), 61, 13, 1, 0)
				Collectinator_RepShatteredSunCBText:SetText(BFAC["Shattered Sun Offensive"])
				Collectinator_RepShatteredSunCBText:SetFont(narrowFont, 11)
			local Collectinator_RepSporeggarCB = CreateFrame("CheckButton", "Collectinator_RepSporeggarCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepSporeggarCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["Sporeggar"]), 62, 14, 1, 0)
				Collectinator_RepSporeggarCBText:SetText(BFAC["Sporeggar"])
				Collectinator_RepSporeggarCBText:SetFont(narrowFont, 11)
			local Collectinator_RepVioletEyeCB = CreateFrame("CheckButton", "Collectinator_RepVioletEyeCB", addon.Fly_Rep_BC, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepVioletEyeCB, addon.Fly_Rep_BC,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Violet Eye"]), 63, 15, 1, 0)
				Collectinator_RepVioletEyeCBText:SetText(BFAC["The Violet Eye"])
				Collectinator_RepVioletEyeCBText:SetFont(narrowFont, 11)

			-- WotLK
			addon.Fly_Rep_LK= CreateFrame("Frame", "Collectinator_Fly_Rep_LK", addon.Fly_Rep)
			addon.Fly_Rep_LK:SetWidth(150)
			addon.Fly_Rep_LK:SetHeight(280)
			addon.Fly_Rep_LK:EnableMouse(true)
			addon.Fly_Rep_LK:EnableKeyboard(true)
			addon.Fly_Rep_LK:SetMovable(false)
			addon.Fly_Rep_LK:SetPoint("TOPRIGHT", addon.Flyaway, "TOPRIGHT", -7, -16)
			addon.Fly_Rep_LK:Hide()
			local Collectinator_Rep_LKButton = addon:GenericCreateButton("Collectinator_Rep_OWButton", addon.Fly_Rep_LK,
				20, 85, "TOPLEFT", addon.Fly_Rep_LK, "TOPLEFT", -2, -4, "GameFontHighlight",
				"GameFontHighlightSmall", L["Reputation"], "LEFT", L["REP_TEXT_DESC"], 0)
				Collectinator_Rep_LKButton:SetText(L["Reputation"] .. ":")
				Collectinator_Rep_LKButton:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
				Collectinator_Rep_LKButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
				Collectinator_Rep_LKButton:SetScript("OnClick",
					function(self,button)
						local filterdb = addon.db.profile.filters.rep
						if button == "LeftButton" then
							-- Reset all armor to true
							filterdb.argentcrusade = true
							filterdb.frenzyheart = true
							filterdb.ebonblade = true
							filterdb.kirintor = true
							filterdb.sonsofhodir = true
							filterdb.kaluak = true
							filterdb.oracles = true
							filterdb.wyrmrest = true
							filterdb.wrathcommon1 = true
						elseif button == "RightButton" then
							-- Reset all armor to false
							filterdb.argentcrusade = false
							filterdb.frenzyheart = false
							filterdb.ebonblade = false
							filterdb.kirintor = false
							filterdb.sonsofhodir = false
							filterdb.kaluak = false
							filterdb.oracles = false
							filterdb.wyrmrest = false
							filterdb.wrathcommon1 = false
						end
						-- Update the checkboxes with the new value
						Collectinator_RepArgentCrusadeCB:SetChecked(filterdb.argentcrusade)
						Collectinator_RepFrenzyheartCB:SetChecked(filterdb.frenzyheart)
						Collectinator_RepEbonBladeCB:SetChecked(filterdb.ebonblade)
						Collectinator_RepKirinTorCB:SetChecked(filterdb.kirintor)
						Collectinator_RepSonsOfHodirCB:SetChecked(filterdb.sonsofhodir)
						Collectinator_RepKaluakCB:SetChecked(filterdb.kaluak)
						Collectinator_RepOraclesCB:SetChecked(filterdb.oracles)
						Collectinator_RepWyrmrestCB:SetChecked(filterdb.wyrmrest)
						Collectinator_WrathCommon1CB:SetChecked(filterdb.wrathcommon1)
						-- Reset our title
						addon.resetTitle()
						-- Use new filters
						ReDisplay()
					end)
			local Collectinator_WrathCommon1CB = CreateFrame("CheckButton", "Collectinator_WrathCommon1CB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WrathCommon1CB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"],  Vanguard_Expedition_FactionText), 25, 2, 1, 0)
				Collectinator_WrathCommon1CBText:SetText(Vanguard_Expedition_FactionText)
				Collectinator_WrathCommon1CBText:SetFont(narrowFont, 11)
			local Collectinator_RepArgentCrusadeCB = CreateFrame("CheckButton", "Collectinator_RepArgentCrusadeCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepArgentCrusadeCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["Argent Crusade"]), 69, 3, 1, 0)
				Collectinator_RepArgentCrusadeCBText:SetText(BFAC["Argent Crusade"])
				Collectinator_RepArgentCrusadeCBText:SetFont(narrowFont, 11)
			local Collectinator_WrathCommon5CB = CreateFrame("CheckButton", "Collectinator_WrathCommon5CB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WrathCommon5CB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], Explorer_Hand_FactionText), 79, 4, 1, 0)
				Collectinator_WrathCommon5CBText:SetText(Explorer_Hand_FactionText)
				Collectinator_WrathCommon5CBText:SetFont(narrowFont, 11)
				Collectinator_WrathCommon5CBText:SetText(addon:Grey(Explorer_Hand_FactionText))
				Collectinator_WrathCommon5CB:Disable()
			local Collectinator_RepFrenzyheartCB = CreateFrame("CheckButton", "Collectinator_RepFrenzyheartCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepFrenzyheartCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["Frenzyheart Tribe"]), 70, 5, 1, 0)
				Collectinator_RepFrenzyheartCBText:SetText(BFAC["Frenzyheart Tribe"])
				Collectinator_RepFrenzyheartCBText:SetFont(narrowFont, 11)
			local Collectinator_RepKaluakCB = CreateFrame("CheckButton", "Collectinator_RepKaluakCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepKaluakCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Kalu'ak"]), 74, 6, 1, 0)
				Collectinator_RepKaluakCBText:SetText(BFAC["The Kalu'ak"])
				Collectinator_RepKaluakCBText:SetFont(narrowFont, 11)
			local Collectinator_RepKirinTorCB = CreateFrame("CheckButton", "Collectinator_RepKirinTorCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepKirinTorCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["Kirin Tor"]), 72, 7, 1, 0)
				Collectinator_RepKirinTorCBText:SetText(BFAC["Kirin Tor"])
				Collectinator_RepKirinTorCBText:SetFont(narrowFont, 11)
			local Collectinator_RepEbonBladeCB = CreateFrame("CheckButton", "Collectinator_RepEbonBladeCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepEbonBladeCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["Knights of the Ebon Blade"]), 71, 8, 1, 0)
				Collectinator_RepEbonBladeCBText:SetText(BFAC["Knights of the Ebon Blade"])
				Collectinator_RepEbonBladeCBText:SetFont(narrowFont, 11)
			local Collectinator_RepOraclesCB = CreateFrame("CheckButton", "Collectinator_RepOraclesCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepOraclesCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Oracles"]), 75, 9, 1, 0)
				Collectinator_RepOraclesCBText:SetText(BFAC["The Oracles"])
				Collectinator_RepOraclesCBText:SetFont(narrowFont, 11)
			local Collectinator_WrathCommon2CB = CreateFrame("CheckButton", "Collectinator_WrathCommon2CB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WrathCommon2CB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], SilverConv_Sunreaver_FactionText), 77, 10, 1, 0)
				Collectinator_WrathCommon2CBText:SetText(SilverConv_Sunreaver_FactionText)
				Collectinator_WrathCommon2CBText:SetFont(narrowFont, 11)
				Collectinator_WrathCommon2CBText:SetText(addon:Grey(SilverConv_Sunreaver_FactionText))
				Collectinator_WrathCommon2CB:Disable()
			local Collectinator_RepSonsOfHodirCB = CreateFrame("CheckButton", "Collectinator_RepSonsOfHodirCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepSonsOfHodirCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Sons of Hodir"]), 73, 11, 1, 0)
				Collectinator_RepSonsOfHodirCBText:SetText(BFAC["The Sons of Hodir"])
				Collectinator_RepSonsOfHodirCBText:SetFont(narrowFont, 11)
			local Collectinator_WrathCommon4CB = CreateFrame("CheckButton", "Collectinator_WrathCommon4CB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WrathCommon4CB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], Frostborn_Taunka_FactionText), 1, 12, 1, 0)
				Collectinator_WrathCommon4CBText:SetText(Frostborn_Taunka_FactionText)
				Collectinator_WrathCommon4CBText:SetFont(narrowFont, 11)
				Collectinator_WrathCommon4CBText:SetText(addon:Grey(Frostborn_Taunka_FactionText))
				Collectinator_WrathCommon4CB:Disable()
			local Collectinator_WrathCommon3CB = CreateFrame("CheckButton", "Collectinator_WrathCommon3CB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_WrathCommon3CB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], Valiance_Warsong_FactionText), 80, 13, 1, 0)
				Collectinator_WrathCommon3CBText:SetText(Valiance_Warsong_FactionText)
				Collectinator_WrathCommon3CBText:SetFont(narrowFont, 11)
				Collectinator_WrathCommon3CBText:SetText(addon:Grey(Valiance_Warsong_FactionText))
				Collectinator_WrathCommon3CB:Disable()
			local Collectinator_RepWyrmrestCB = CreateFrame("CheckButton", "Collectinator_RepWyrmrestCB", addon.Fly_Rep_LK, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_RepWyrmrestCB, addon.Fly_Rep_LK,sformat(L["SPECIFIC_REP_DESC"], BFAC["The Wyrmrest Accord"]), 76, 14, 1, 0)
				Collectinator_RepWyrmrestCBText:SetText(BFAC["The Wyrmrest Accord"])
				Collectinator_RepWyrmrestCBText:SetFont(narrowFont, 11)

		addon.Fly_Misc = CreateFrame("Frame", "Collectinator_Fly_Misc", addon.Flyaway)
			addon.Fly_Misc:SetWidth(210)
			addon.Fly_Misc:SetHeight(280)
			addon.Fly_Misc:EnableMouse(true)
			addon.Fly_Misc:EnableKeyboard(true)
			addon.Fly_Misc:SetMovable(false)
			addon.Fly_Misc:SetPoint("TOPLEFT", addon.Flyaway, "TOPLEFT", 17, -16)
			addon.Fly_Misc:Hide()
			local Collectinator_MiscText = addon.Fly_Misc:CreateFontString("Collectinator_MiscText", "OVERLAY", "GameFontHighlight")
				Collectinator_MiscText:SetText(L["Miscellaneous"] .. ":")
				Collectinator_MiscText:SetPoint("TOPLEFT", addon.Fly_Misc, "TOPLEFT", 5, -8)
				Collectinator_MiscText:SetHeight(14)
				Collectinator_MiscText:SetWidth(150)
				Collectinator_MiscText:SetJustifyH("LEFT")
			local Collectinator_IgnoreCB = CreateFrame("CheckButton", "Collectinator_IgnoreCB", addon.Fly_Misc, "UICheckButtonTemplate")
				addon:GenericMakeCB(Collectinator_IgnoreCB, addon.Fly_Misc, L["DISPLAY_EXCLUSION_DESC"], none, 2, 1, 1)
				Collectinator_IgnoreCBText:SetText(L["Display Exclusions"])
			local Collectinator_MiscAltText = addon.Fly_Misc:CreateFontString("Collectinator_MiscAltBtn", "OVERLAY", "GameFontNormal")
				Collectinator_MiscAltText:SetText(L["Alt-Tradeskills"] .. ":")
				Collectinator_MiscAltText:SetPoint("TOPLEFT", Collectinator_IgnoreCB, "BOTTOMLEFT", 4, 0)
				Collectinator_MiscAltText:SetHeight(14)
				Collectinator_MiscAltText:SetWidth(95)
				Collectinator_MiscAltText:SetJustifyH("LEFT")
			local Collectinator_MiscAltBtn = CreateFrame("Button", "Collectinator_IgnoreCB", addon.Fly_Misc)
				Collectinator_MiscAltBtn:SetPoint("LEFT", Collectinator_MiscAltText, "RIGHT")
				Collectinator_MiscAltBtn:SetHeight(22)
				Collectinator_MiscAltBtn:SetWidth(22)
				Collectinator_MiscAltBtn:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
				Collectinator_MiscAltBtn:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
				Collectinator_MiscAltBtn:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled")
				Collectinator_MiscAltBtn:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight")
				addon:TooltipDisplay(Collectinator_MiscAltBtn, L["ALT_TRADESKILL_DESC"], 1)
				Collectinator_MiscAltBtn:RegisterForClicks("LeftButtonUp")
				Collectinator_MiscAltBtn:SetScript("OnClick",
					function(this, button)
						clicktip:SetParent(this)
						if clicktip:IsShown() then
							if not click_info.modified then
								clicktip:Hide()
								twipe(click_info)
							else
								twipe(click_info)
								GenerateClickableTT(this)
							end
						else
							twipe(click_info)
							GenerateClickableTT(this)
						end
					end)
				Collectinator_MiscAltBtn:SetScript("OnHide",
					function(this, button)
						clicktip:Hide()
						twipe(click_info)
					end)

		-- Now that everything exists, populate the global filter table
		local filterdb = addon.db.profile.filters

		FilterValueMap = {
		-- General Options
			[2]  = { cb = Collectinator_SpecialtyCB,				svroot = filterdb.general,		svval = "specialty" },
			[3]  = { cb = Collectinator_LevelCB,					svroot = filterdb.general,		svval = "skill" },
			[4]  = { cb = Collectinator_FactionCB,				svroot = filterdb.general,		svval = "faction" },
			[5]  = { cb = Collectinator_KnownCB,					svroot = filterdb.general,		svval = "known" },
			[6]  = { cb = Collectinator_UnknownCB,				svroot = filterdb.general,		svval = "unknown" },
		-- Obtain Options
			[7]  = { cb = Collectinator_InstanceCB,				svroot = filterdb.obtain,		svval = "instance" },
			[8]  = { cb = Collectinator_RaidCB,					svroot = filterdb.obtain,		svval = "raid" },
			[9]  = { cb = Collectinator_QuestCB,					svroot = filterdb.obtain,		svval = "quest" },
			[10] = { cb = Collectinator_SeasonalCB,				svroot = filterdb.obtain,		svval = "seasonal" },
			[11] = { cb = Collectinator_TrainerCB,				svroot = filterdb.obtain,		svval = "trainer" },
			[12] = { cb = Collectinator_VendorCB,					svroot = filterdb.obtain,		svval = "vendor" },
			[13] = { cb = Collectinator_PVPCB,					svroot = filterdb.obtain,		svval = "pvp" },
			[14] = { cb = Collectinator_DiscoveryCB,				svroot = filterdb.obtain,		svval = "discovery" },
			[39] = { cb = Collectinator_WorldDropCB,				svroot = filterdb.obtain,		svval = "worlddrop" },
			[40] = { cb = Collectinator_MobDropCB,				svroot = filterdb.obtain,		svval = "mobdrop" },
			[26]  = { cb = Collectinator_OriginalWoWCB,			svroot = filterdb.obtain,		svval = "originalwow" },
			[78]  = { cb = Collectinator_BCCB,					svroot = filterdb.obtain,		svval = "bc" },
			[81]  = { cb = Collectinator_WrathCB,					svroot = filterdb.obtain,		svval = "wrath" },
		-- Binding Options
			[15] = { cb = Collectinator_iBoECB,					svroot = filterdb.binding,		svval = "itemboe" },
			[16] = { cb = Collectinator_iBoPCB,					svroot = filterdb.binding,		svval = "itembop" },
			[17] = { cb = Collectinator_rBoECB,					svroot = filterdb.binding,		svval = "recipeboe" },
			[18] = { cb = Collectinator_rBoPCB,					svroot = filterdb.binding,		svval = "recipebop" },
		-- Armor Options
			[21] = { cb = Collectinator_ArmorClothCB,				svroot = filterdb.item.armor,	svval = "cloth" },
			[22] = { cb = Collectinator_ArmorLeatherCB,			svroot = filterdb.item.armor,	svval = "leather" },
			[23] = { cb = Collectinator_ArmorMailCB,				svroot = filterdb.item.armor,	svval = "mail" },
			[24] = { cb = Collectinator_ArmorPlateCB,				svroot = filterdb.item.armor,	svval = "plate" },
			[64] = { cb = Collectinator_ArmorCloakCB,				svroot = filterdb.item.armor,	svval = "cloak" },
			[65] = { cb = Collectinator_ArmorNecklaceCB,			svroot = filterdb.item.armor,	svval = "necklace" },
			[66] = { cb = Collectinator_ArmorRingCB,				svroot = filterdb.item.armor,	svval = "ring" },
			[67] = { cb = Collectinator_ArmorTrinketCB,			svroot = filterdb.item.armor,	svval = "trinket" },
			[19] = { cb = Collectinator_ArmorShieldCB,			svroot = filterdb.item.armor,	svval = "shield" },
		-- Weapon Options
			[27] = { cb = Collectinator_Weapon1HCB,				svroot = filterdb.item.weapon,	svval = "onehand" },
			[28] = { cb = Collectinator_Weapon2HCB,				svroot = filterdb.item.weapon,	svval = "twohand" },
			[29] = { cb = Collectinator_WeaponDaggerCB,			svroot = filterdb.item.weapon,	svval = "dagger" },
			[30] = { cb = Collectinator_WeaponAxeCB,				svroot = filterdb.item.weapon,	svval = "axe" },
			[31] = { cb = Collectinator_WeaponMaceCB,				svroot = filterdb.item.weapon,	svval = "mace" },
			[32] = { cb = Collectinator_WeaponSwordCB,			svroot = filterdb.item.weapon,	svval = "sword" },
			[33] = { cb = Collectinator_WeaponPolearmCB,			svroot = filterdb.item.weapon,	svval = "polearm" },
			[20] = { cb = Collectinator_WeaponFistCB,				svroot = filterdb.item.weapon,	svval = "fist" },
			[34] = { cb = Collectinator_WeaponStaffCB,			svroot = "disabled",			svval = "" },
			[68] = { cb = Collectinator_WeaponWandCB,				svroot = filterdb.item.weapon,	svval = "wand" },
			[35] = { cb = Collectinator_WeaponThrownCB,			svroot = filterdb.item.weapon,	svval = "thrown" },
			[36] = { cb = Collectinator_WeaponBowCB,				svroot = "disabled",			svval = "" },
			[37] = { cb = Collectinator_WeaponCrossbowCB,			svroot = "disabled",			svval = "" },
			[38] = { cb = Collectinator_WeaponAmmoCB,				svroot = filterdb.item.weapon,	svval = "ammo" },
		-- Player Type Options
			[41] = { cb = Collectinator_PlayerTankCB,				svroot = filterdb.player,		svval = "tank" },
			[42] = { cb = Collectinator_PlayerMeleeCB,			svroot = filterdb.player,		svval = "melee" },
			[43] = { cb = Collectinator_PlayerHealerCB,			svroot = filterdb.player,		svval = "healer" },
			[44] = { cb = Collectinator_PlayerCasterCB,			svroot = filterdb.player,		svval = "caster" },
		-- Old World Rep Options
			[45] = { cb = Collectinator_RepArgentDawnCB,			svroot = filterdb.rep,			svval = "argentdawn" },
			[46] = { cb = Collectinator_RepCenarionCircleCB,		svroot = filterdb.rep,			svval = "cenarioncircle" },
			[47] = { cb = Collectinator_RepThoriumCB,				svroot = filterdb.rep,			svval = "thoriumbrotherhood" },
			[48] = { cb = Collectinator_RepTimbermawCB,			svroot = filterdb.rep,			svval = "timbermaw" },
			[49] = { cb = Collectinator_RepZandalarCB,			svroot = filterdb.rep,			svval = "zandalar" },
		-- BC Rep Options
			[50] = { cb = Collectinator_RepAldorCB,				svroot = filterdb.rep,			svval = "aldor" },
			[51] = { cb = Collectinator_RepAshtongueCB,			svroot = filterdb.rep,			svval = "ashtonguedeathsworn" },
			[52] = { cb = Collectinator_RepCenarionExpeditionCB,	svroot = filterdb.rep,			svval = "cenarionexpedition" },
			[53] = { cb = Collectinator_RepConsortiumCB,			svroot = filterdb.rep,			svval = "consortium" },
			[54] = { cb = Collectinator_RepHonorHoldCB,			svroot = filterdb.rep,			svval = "hellfire" },
			[55] = { cb = Collectinator_RepKeepersOfTimeCB,		svroot = filterdb.rep,			svval = "keepersoftime" },
			[56] = { cb = Collectinator_RepKurenaiCB,				svroot = filterdb.rep,			svval = "nagrand" },
			[57] = { cb = Collectinator_RepLowerCityCB,			svroot = filterdb.rep,			svval = "lowercity" },
			[58] = { cb = Collectinator_RepScaleSandsCB,			svroot = filterdb.rep,			svval = "scaleofthesands" },
			[59] = { cb = Collectinator_RepScryersCB,				svroot = filterdb.rep,			svval = "scryer" },
			[60] = { cb = Collectinator_RepShatarCB,				svroot = filterdb.rep,			svval = "shatar" },
			[61] = { cb = Collectinator_RepShatteredSunCB,		svroot = filterdb.rep,			svval = "shatteredsun" },
			[62] = { cb = Collectinator_RepSporeggarCB,			svroot = filterdb.rep,			svval = "sporeggar" },
			[63] = { cb = Collectinator_RepVioletEyeCB,			svroot = filterdb.rep,			svval = "violeteye" },
		-- LK Rep Options (may need to be changed after beta.
			[69] = { cb = Collectinator_RepArgentCrusadeCB,		svroot = filterdb.rep,			svval = "argentcrusade" },
			[70] = { cb = Collectinator_RepFrenzyheartCB,			svroot = filterdb.rep,			svval = "frenzyheart" },
			[71] = { cb = Collectinator_RepEbonBladeCB,			svroot = filterdb.rep,			svval = "ebonblade" },
			[72] = { cb = Collectinator_RepKirinTorCB,			svroot = filterdb.rep,			svval = "kirintor" },
			[73] = { cb = Collectinator_RepSonsOfHodirCB,			svroot = filterdb.rep,			svval = "sonsofhodir" },
			[74] = { cb = Collectinator_RepKaluakCB,				svroot = filterdb.rep,			svval = "kaluak" },
			[75] = { cb = Collectinator_RepOraclesCB,				svroot = filterdb.rep,			svval = "oracles" },
			[76] = { cb = Collectinator_RepWyrmrestCB,			svroot = filterdb.rep,			svval = "wyrmrest" },
			[25] = { cb = Collectinator_WrathCommon1CB,			svroot = filterdb.rep,			svval = "wrathcommon1" },
			[77] = { cb = Collectinator_WrathCommon2CB,			svroot = "disabled",			svval = "" },
			[80] = { cb = Collectinator_WrathCommon3CB,			svroot = "disabled",			svval = "" },
			[1] = { cb = Collectinator_WrathCommon4CB,			svroot = "disabled",			svval = "" },
			[79] = { cb = Collectinator_WrathCommon5CB,			svroot = "disabled",			svval = "" },
		}

	end

	-- Set our addon frame position
	SetFramePosition()

	-- Initialize dropdown
	Collectinator_DD_Sort.initialize = Collectinator_DD_Sort_Initialize

	-- reset the scale
	addon.Frame:SetScale(addon.db.profile.frameopts.uiscale)
	CollectinatorTooltip:SetScale(addon.db.profile.frameopts.tooltipscale)
	CollectinatorSpellTooltip:SetScale(addon.db.profile.frameopts.tooltipscale)

	-- We'll be in "ExpandAll" mode to start with. Make sure the button knows that:
	Collectinator_ExpandButton:SetText(L["EXPANDALL"])
	addon:TooltipDisplay(Collectinator_ExpandButton, L["EXPANDALL_DESC"])

	-- Reset our addon title text
	addon.resetTitle()

	-- Set the texture on our switcher button correctly
	SetSwitcherTexture(SortedCollections[currentProfIndex].texture)

	-- Sort the list
	sortedRecipeIndex = addon:SortDatabase(recipeDB)

	-- Take our sorted list, and fill up DisplayStrings
	initDisplayStrings()

	-- Update our progressbar
	SetProgressBar(cPlayer)

	-- And update our scrollframe
	RecipeList_Update()
	addon.Frame:Show()

	-- Make sure to reset search gui elements
	Collectinator_LastSearchedText = ""
	Collectinator_SearchText:SetText(L["SEARCH_BOX_DESC"])

end


-- Description: Creates a new frame with the contents of a text dump so you can copy and paste
-- Expected result: New frame with all recipes listed and acquire info
-- Input: A text string of what to paste
-- Output: None
-- Creates a frame where you can copy and paste contents from.  Adds the textdump text into that frame.
-- Code stolen from Antiarc and Chatter

function addon:DisplayTextDump(RecipeDB, profession, text)

	local textdump

	-- If we don't send in a RecipeDB and profession, just dump the text
	if (not RecipeDB and not profession) then
		textdump = text
	else
		textdump = self:GetTextDump(RecipeDB,profession)
	end

	local PaneBackdrop  = {
		bgFile = [[Interface\DialogFrame\UI-DialogBox-Background]],
		edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
		tile = true, tileSize = 16, edgeSize = 16,
		insets = { left = 3, right = 3, top = 5, bottom = 3 }
	}

	-- If we haven't created these frames, then lets do so now.
	if (not addon.CollectinatorCopyFrame) then
		addon.CollectinatorCopyFrame = CreateFrame("Frame", "CollectinatorCopyFrame", UIParent)
		tinsert(UISpecialFrames, "CollectinatorCopyFrame")
		addon.CollectinatorCopyFrame:SetBackdrop(PaneBackdrop)
		addon.CollectinatorCopyFrame:SetBackdropColor(0,0,0,1)
		addon.CollectinatorCopyFrame:SetWidth(750)
		addon.CollectinatorCopyFrame:SetHeight(400)
		addon.CollectinatorCopyFrame:SetPoint("CENTER", UIParent, "CENTER")
		addon.CollectinatorCopyFrame:SetFrameStrata("DIALOG")
		
		local scrollArea = CreateFrame("ScrollFrame", "CollectinatorCopyScroll", addon.CollectinatorCopyFrame, "UIPanelScrollFrameTemplate")
		scrollArea:SetPoint("TOPLEFT", addon.CollectinatorCopyFrame, "TOPLEFT", 8, -30)
		scrollArea:SetPoint("BOTTOMRIGHT", addon.CollectinatorCopyFrame, "BOTTOMRIGHT", -30, 8)
		
		addon.CollectinatorCopyFrame.editBox = CreateFrame("EditBox", "CollectinatorCopyEdit", addon.CollectinatorCopyFrame)
		addon.CollectinatorCopyFrame.editBox:SetMultiLine(true)
		addon.CollectinatorCopyFrame.editBox:SetMaxLetters(99999)
		addon.CollectinatorCopyFrame.editBox:EnableMouse(true)
		addon.CollectinatorCopyFrame.editBox:SetAutoFocus(true)
		addon.CollectinatorCopyFrame.editBox:SetFontObject(ChatFontNormal)
		addon.CollectinatorCopyFrame.editBox:SetWidth(650)
		addon.CollectinatorCopyFrame.editBox:SetHeight(270)
		addon.CollectinatorCopyFrame.editBox:SetScript("OnEscapePressed", function() addon.CollectinatorCopyFrame:Hide() end)
		addon.CollectinatorCopyFrame.editBox:SetText(textdump)
		addon.CollectinatorCopyFrame.editBox:HighlightText(0)
		
		scrollArea:SetScrollChild(addon.CollectinatorCopyFrame.editBox)
		
		local close = CreateFrame("Button", nil, addon.CollectinatorCopyFrame, "UIPanelCloseButton")
		close:SetPoint("TOPRIGHT",addon.CollectinatorCopyFrame,"TOPRIGHT")
		
		addon.CollectinatorCopyFrame:Show()
	else
		addon.CollectinatorCopyFrame.editBox:SetText(textdump)
		addon.CollectinatorCopyFrame.editBox:HighlightText(0)
		addon.CollectinatorCopyFrame:Show()
	end

end
