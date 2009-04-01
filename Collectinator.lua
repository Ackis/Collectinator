--[[

****************************************************************************************

Collectinator

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

Author: Ackis

****************************************************************************************

]]--

local MODNAME	= "Collectinator"

Collectinator 	= LibStub("AceAddon-3.0"):NewAddon(MODNAME, "AceConsole-3.0", "AceEvent-3.0")

local addon		= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

-- Lets check to see if we have the needed libraries loaded (these are manditory to run)
if (not LibStub:GetLibrary("LibBabble-Faction-3.0", true)) then
	self:Print("LibBabble-Faction-3.0 not loaded.  Addon cannot run.")
	return
end


if (not LibStub:GetLibrary("LibBabble-Zone-3.0", true)) then
	self:Print("LibBabble-Zone-3.0 not loaded.  Addon cannot run.")
	return
end

if (not LibStub:GetLibrary("LibBabble-Boss-3.0", true)) then
	self:Print("LibBabble-Boss-3.0 not loaded.  Addon cannot run.")
	return
end

if (not LibStub:GetLibrary("AceLocale-3.0", true)) then
	self:Print("AceLocale-3.0 not loaded.  Addon cannot run.")
	return
end


local BFAC		= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local L			= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

-- Make functions local to speed things up
local GetNumCompanions = GetNumCompanions
local select = select
local tinsert = table.insert
local twipe = table.wipe

local maxfilterflags = 60

function addon:OnInitialize()

	-- Set default options, which are to include everything in the scan
	local defaults = {
		profile = {

			companionlist = {},
			companionexclusions = {},

			-- Frame options
			frameopts = {
				offsetx = 0,
				offsety = 0,
				anchorTo = "",
				anchorFrom = "",
				uiscale = 1,
				tooltipscale = .9,
			},

			-- Sorting Options
			sorting = L["Skill"],

			-- Display Options
			includefiltered = false,
			includeexcluded = false,
			closeguionskillclose = false,
			ignoreexclusionlist = false,

			-- Recipe Exclusion
			exclusionlist = {},

			-- Filter Options
			filters = {
				-- General Filters
				general = {
				    faction = true,
					prof = false,
					known = false,
					unknown = true,
				},
				-- Obtain Options
				obtain = {
					vendor = true,
					quest = true,
					crafted = true,
					instance = true,
					raid = true,
					seasonal = true,
					worlddrop = true,
					mobdrop = true,
					tcg = true,
					specialevent = true,
					ce = true,
					removed = true,
					achievement = true,
					pvp = true,
				},
				-- Item Biding Options
				binding = {
					boe = true,
					bop = true,
					boa = true,
				},
				-- Reputation Options
				rep = {
					bloodsail = true,
				}
			}
		}
	}

	addon.db = LibStub("AceDB-3.0"):New("CollectinatorDB",defaults)

	if (not addon.db) then
		self:Print("Error: Database not loaded correctly.  Please exit out of WoW and delete the Collectinator database file (Collectinator.lua) found in: \\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\")
		return
	end

	self:SetupOptions()

	-- Register slash commands
	self:RegisterChatCommand("collectinator", "ChatCommand")

end

function addon:OnEnable()

	self:RegisterEvent("COMPANION_LEARNED")

	self:CreateScanButton()

end

function addon:OnDisable()

end

-- Function to handle slash commands.
-- Arugments: Text passed from the command line
-- Return values: None

function addon:ChatCommand(input)

	if (not input) or (input and input:trim() == "") or (input == tolower(L["About"]))then
		if (self.optionsFrame["About"]) then
			InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["About"])
		else
			InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		end
	elseif (input == tolower(L["Sorting"])) or (input == tolower(L["Sort"]))  or (input == tolower(L["Display"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	elseif (input == tolower(L["Profile"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["Profiles"])
	elseif (input == tolower(L["Filter"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["Filters"])
	elseif (input == tolower(L["Scan"])) then
		self:AckisRecipeList_Command(false)
	else
		-- What happens when we get here?
		LibStub("AceConfigCmd-3.0"):HandleCommand("collectinator", "Collectinator", input)
	end

end

-- Function run when the even COMPANION_LEARNED is raised.

function addon:COMPANION_LEARNED()

	-- When we learn a new pet, we want to automatically scan the companions and update our saved variables
	self:ScanCompanions()

end

local function GetPlayerProfessions(ProfTable)

	-- Reset the table, they may have unlearnt a profession
	for i in pairs(ProfTable) do
		ProfTable[i] = false
	end

	-- Scan through the spell book getting the spell names
	for index=1,25,1 do

		local spellName = GetSpellName(index, BOOKTYPE_SPELL)

		if (not spellName) or (index == 25) then
			-- Nothing found
			break
		end
		if (ProfTable[spellName] == false or spellName == GetSpellInfo(2656)) then
            if spellName == GetSpellInfo(2656) then
                ProfTable[GetSpellInfo(2575)] = true
            else
                ProfTable[spellName] = true
            end
		end
	end

end

local function InitPlayerData(playerData, ProfTable)

	-- Total numbers in the database
	playerData.totalminipets = 0
	playerData.totalmounts = 0

	-- Number of filtered items
	playerData.filteredcomapnions = 0

	-- Get the players faction
	playerData.playerFaction = UnitFactionGroup("player")

	playerData.playerProfs = GetPlayerProfessions(ProfTable)

end

do

	-- Master database of mini-pets and mounts
	local CompanionDB = nil

	local CustomList = nil
	local MobList = nil
	local QuestList = nil
	local ReputationList = nil
	local SeasonalList = nil
	local VendorList = nil
	local RepFilters = nil

	local playerData = nil

	-- Description: API for external addons to get the database
	-- Expected result: The database is returned if it exists
	-- Input: None
	-- Output: A table containing all its information

	--- API for external addons to get the database
	-- @name Collectinator:GetMasterTable
	-- @return Table containing all recipe information or nil if it's not found.
	function addon:GetMasterTable()

		if (CompanionDB) then
			return CompanionDB
		else
			return nil
		end

	end

	-- Description: Initalizes all the recipe databases to their initial
	-- Expected result: All internal databases are initalized to starting values (empty)
	-- Input: None
	-- Output: Tables are local in scope, not to the function.

	local function InitDatabases()

		-- Initializes the custom list
		if (CustomList == nil) then
			CustomList = {}
			addon:InitCustom(CustomList)
		end

		-- Initializes the mob list
		if (MobList == nil) then
			MobList = {}
			--addon:InitMob(MobList)
		end

		-- Initializes the quest list
		if (QuestList == nil) then
			QuestList = {}
			--addon:InitQuest(QuestList)
		end

		-- Initializes the reputation list
		if (ReputationList == nil) then
			ReputationList = {}
			--addon:InitReputation(ReputationList)
		end

		-- Initializes the season list
		if (SeasonalList == nil) then
			SeasonalList = {}
			--addon:InitSeasons(SeasonalList)
		end

		-- Initializes the vendor list
		if (VendorList == nil) then
			VendorList = {}
			addon:InitVendor(VendorList)
		end

		-- Initializes the reputation filters
		-- Don't assign values no because we do a scan later on
		if (RepFilters == nil) then
			RepFilters = {}
		end

		-- Initializes the recipe list
		if (CompanionDB == nil) then
			CompanionDB = {}
		end

		if (playerData == nil) then
			playerData = {}
			playerData["Professions"] = {
				[GetSpellInfo(2259)] = false, -- Alchemy
				[GetSpellInfo(2018)] = false, -- Blacksmithing
				[GetSpellInfo(2550)] = false, -- Cooking
				[GetSpellInfo(7411)] = false, -- Enchanting
				[GetSpellInfo(4036)] = false, -- Engineering
				[GetSpellInfo(746)] = false, -- First Aid
				--["Premiers soins"] = false, -- First Aid (Hack for frFR local)
				[GetSpellInfo(2108)] = false, -- Leatherworking
				[GetSpellInfo(2575)] = false, -- Mining
				--[GetSpellInfo(2656)] = false, -- Smelting
				[GetSpellInfo(3908)] = false, -- Tailoring
				[GetSpellInfo(25229)] = false, -- Jewelcrafting
				[GetSpellInfo(45357)] = false, -- Inscription
				--[GetSpellInfo(53428)] = false, -- Runeforging
				[GetSpellInfo(13615)] = false, -- Fishing
			}
			InitPlayerData(playerData, playerData["Professions"])
		end

	end

	-- Description: Loads all information about mini-pets into the database
	-- Expected result: Listing of companions updated with information.
	-- Input: Database to update
	-- Output: Database pased as reference.

	local function CreateCompanionList()

		InitDatabases()

		playerData.totalminipets = addon:MakeMiniPetTable(CompanionDB)
		--playerData.totalmounts = addon:MakeMountTable(CompanionDB)

	end

	-- Description: Scans your known companions, loads the database, marks which are known, and loads the display
	-- Expected result: All functions are done in a logical order
	-- Input: None
	-- Output: Displays the GUI

	function addon:DoCompleteScan()

		-- Scan for what companions we know/don't know
		addon:ScanCompanions()

		-- Load the database and get the number of entries in it
		CreateCompanionList()

		addon:CheckForKnownCompanions(CompanionDB, playerData)

		addon:UpdateFilters(CompanionDB,playerData)

		addon:GetExclusions(CompanionDB)

		addon:DumpDatabase(CompanionDB, playerData, VendorList)

	end

	function addon:GetDB()
		return CompanionDB
	end

end

do

	local profmap = {
		[GetSpellInfo(2259)] = 25, -- Alchemy
		[GetSpellInfo(2018)] = 26, -- Blacksmithing
		[GetSpellInfo(2550)] = 27, -- Cooking
		[GetSpellInfo(7411)] = 28, -- Enchanting
		[GetSpellInfo(4036)] = 29, -- Engineering
		[GetSpellInfo(746)] = 30, -- First Aid
		--["Premiers soins"] = 30, -- First Aid (Hack for frFR local)
		[GetSpellInfo(2108)] = 33, -- Leatherworking
		[GetSpellInfo(2575)] = 34, -- Mining
		--[GetSpellInfo(2656)] = 34, -- Smelting
		[GetSpellInfo(3908)] = 35, -- Tailoring
		[GetSpellInfo(25229)] = 32, -- Jewelcrafting
		[GetSpellInfo(45357)] = 31, -- Inscription
		[GetSpellInfo(13615)] = 36, -- Fishing
	}

	local reptable = nil

	local function CreateRepTable()

		local repdb = addon.db.profile.filters.rep

		reptable = {
			[40] = repdb.bloodsail,
		}

	end

	function addon:ClearRepTable()
		reptable = nil
	end

	local function CheckReputationDisplay(flags)

		if (not reptable) then
			CreateRepTable()
		end

		local display = true

		for i in pairs(reptable) do
			if (flags[i]) then
				if (reptable[i]) then
					display = true
				else
					display = false
				end
			end
		end

		return display

	end

	function addon:CheckFilter(Spell,playerData)

		local playerFaction = playerData.playerFaction
		local playerProfs = playerData["Professions"]
		-- For flag info see comments at start of file in comments
		local filterdb = addon.db.profile.filters
		local flags = Spell["Flags"]

		local generaldb = filterdb.general

		-- Display both horde and alliance factions?
		if (generaldb.faction == false) then
			-- We want to filter out all the Horde only recipes
			if (playerFaction == BFAC["Alliance"]) then
				-- Filter out Horde only
				if (flags[1] == false) and (flags[2] == true) then
					return false
				end
			-- We want to filter out all the Alliance only recipes
			else
				-- Filter out Alliance only
				if (flags[2] == false) and (flags[1] == true) then
					return false
				end
			end
		end
		if (generaldb.prof == false) then
			local profdisplay = false
			-- Scan all the player professions
			for i in pairs(playerProfs) do
				-- If the profession is flagged as known
				if (playerProfs[i] == true) then
					-- Check to see if the companion flag is set to be true
					if (flags[profmap[i]] == true) then
						-- If it's true, it means that the companion is for that specific profession
						profdisplay = true
						break
					end
				end
			end
			if (profdisplay == false) then
				return false
			end
		end

		local bindingdb = filterdb.binding

		if (bindingdb.boe == false) and (flags[20] == true) then
			return false
		end
		if (bindingdb.bop == false) and (flags[21] == true) then
			return false
		end
		if (bindingdb.boa == false) and (flags[22] == true) then
			return false
		end

		if (not CheckReputationDisplay(flags)) then
			return false
		end

		-- Stage 2
		-- loop through nonexclusive (soft filters) flags until one is true
		-- If one of these is true (ie: we want to see trainers and there is a trainer flag) we display the recipe

		local obtaindb = filterdb.obtain

		if (obtaindb.vendor == true) and (flags[3] == true) then
			return true
		end
		if (obtaindb.quest == true) and (flags[4] == true) then
			return true
		end
		if (obtaindb.crafted == true) and (flags[5] == true) then
			return true
		end
		if (obtaindb.instance == true) and (flags[6] == true) then
			return true
		end
		if (obtaindb.raid == true) and (flags[7] == true) then
			return true
		end
		if (obtaindb.seasonal == true) and (flags[8] == true) then
			return true
		end
		if (obtaindb.worlddrop == true) and (flags[9] == true) then
			return true
		end
		if (obtaindb.mobdrop == true) and (flags[10] == true) then
			return true
		end
		if (obtaindb.tcg == true) and (flags[11] == true) then
			return true
		end
		if (obtaindb.specialevent == true) and (flags[12] == true) then
			return true
		end
		if (obtaindb.ce == true) and (flags[13] == true) then
			return true
		end
		if (obtaindb.removed == true) and (flags[14] == true) then
			return true
		end
		if (obtaindb.achievement == true) and (flags[15] == true) then
			return true
		end
		if (obtaindb.pvp == true) and (flags[16] == true) then
			return true
		end

		
		-- If we get here it means that no flags matched our values
		return false

	end

end

function addon:UpdateFilters(db,playerData)

	local display = false
	playerData.filteredcomapnions = 0

	-- Parse the database
	for SpellID in pairs(db) do
		local spell = db[SpellID]
		local display = addon:CheckFilter(spell,playerData)
		spell["Display"] = display
		if (display == false) then
			playerData.filteredcomapnions = playerData.filteredcomapnions + 1
		end
	end

end

-- Description: Marks all exclusions in the  database to not be displayed
-- Expected result: Parses the  database marking all exlusions to not be displays
-- Input: Companion Database
-- Output: None, Companion Database is passed as a reference

function addon:GetExclusions(db)

	local exclusionlist = addon.db.profile.companionexclusions
	local countknown = 0
	local countunknown = 0

	for i in pairs(exclusionlist) do
		-- We may have a recipe in the exclusion list that has not been scanned yet
		-- check if the entry exists in DB first
		if (db[i]) then
			db[i]["Display"] = false

			if (db[i]["Known"] == false) then
				countknown = countknown + 1
			else
				countunknown = countunknown + 1
			end
		end
	end

	return countknown, countunknown

end

-- Description: Removes or adds a recipe to the exclusion list.
-- Expected result: The exclusion database is updated.
-- Input: The spell IDsof the recipe
-- Output: Exclusion database is updated

function addon:ToggleExcludeRecipe(SpellID)

	local exclusionlist = addon.db.profile.companionexclusions

	-- Remove the Spell from the exclusion list
	if (exclusionlist[SpellID]) then
		exclusionlist[SpellID] = nil
	else
		exclusionlist[SpellID] = true
	end

end


-- Description: Parses the savedvariables to display which companions you are missing
-- Expected result: Provides a list which companions you know/don't know
-- Input: None
-- Output: Graphical output only

function addon:DumpDatabase(DB, playerData, VendorList)

	--@non-debug@
	self:Print("DEBUG: This command is only availible for testing purposes.")
	--@end-non-debug@

	-- Parse the database
	self:Print("DEBUG: Dumping the database.")
	for SpellID in pairs(DB) do
		if (DB[SpellID]["Known"] == false) and (DB[SpellID]["Display"] == true) then
			self:DumpSpell(SpellID)
		end
	end

	-- Parse the exclusion list
	local exclusionlist = addon.db.profile.companionexclusions

	self:Print("DEDBUG: Exclusion list by spell ID:")
	for i in pairs(exclusionlist) do
		self:Print(i)
	end
	--@end-debug@

	--@debug@
	self:Print("DEBUG: Total mini-pets in db: " .. playerData.totalminipets)
	self:Print("DEBUG: Total mounts in db: " .. playerData.totalmounts)
	self:Print("DEBUG: Total mini-pets known: " .. playerData.totalknownpets)
	--self:Print("DEBUG: Total mounts known: " .. playerData.totalknownmounts)
	self:Print("DEBUG: Total filtered items: " .. playerData.filteredcomapnions)
	--@end-debug@

end

-- Description:  Scans the database and the local list of companions and flags which ones you know
-- Expected result: Database is updated with flags for known companions
-- Input: Database
-- Output: None.

function addon:CheckForKnownCompanions(PetDB, playerData)

	local companionlist = addon.db.profile.companionlist
	--local mount = 0
	local pet = 0

	-- Scan through all the entries we've saved
	for i,SpellID in pairs(companionlist) do
		-- If the entry exists, mark it as known
		if (PetDB[SpellID]) then
			PetDB[SpellID]["Known"] = true
			if (PetDB[SpellID]["Type"] == "CRITTER") then
				pet = pet + 1
			elseif (PetDB[SpellID]["Type"] == "MOUNT") then
				mount = mount + 1
			end
		-- If the entry doesn't exist raise an error
		else
			local name = GetSpellInfo(SpellID)
			self:Print("Companion: " .. name .. " (" .. SpellID .. ") not found in database.")
		end
	end

	playerData.totalknownpets = pet
	playerData.totalknownmounts = mount

end

-- Description: Will scan your companions (mini-pets and mounts)
-- Expected result: Listing of companions updated with information.
-- Input: Database
-- Output: None.

function addon:ScanCompanions()

	-- Find out how many companions we have learnt
	local numminipets = GetNumCompanions("CRITTER")
	--local nummounts = GetNumCompanions("MOUNT")

	local butt = addon.db.profile.companionlist

	-- Clear the saved variables for the companion list.
	twipe(butt)

	-- Parse all the mini-pets you currently have
	for i=1,numminipets do
		-- Get the pet's name and spell ID
		local _,_,petspell = GetCompanionInfo("CRITTER",i)
		-- Add the mini-pet to the list of pets we save
		tinsert(butt,petspell)
	end
--[[
	-- Parse all the mounts you currently have
	for i=1,nummounts do
		-- Get the pet's name and spell ID
		local _,_,mountspell = GetCompanionInfo("MOUNT",i)
		-- Add the mini-pet to the list of pets we save
		tinsert(butt,mountspell)
	end
]]--
end

-- Adds a companion (based off of spell ID) to the database.  Also will add aquisition, faction, reputation, location, and filtering flags.
-- Arguments: Spell ID of mini-pet, aquisition information, faction information, reputation information, location, coordinate information, arbitrary number of flags
-- Return values: none

function addon:AddCompanion(DB, SpellID, ItemID, Rarity, CompanionType, WarcraftPetsID)

	-- Create an entry for this minipet
	DB[SpellID] = {}

	DB[SpellID]["Name"] = GetSpellInfo(SpellID) or ""
	DB[SpellID]["ItemID"] = ItemID
	DB[SpellID]["Rarity"] = Rarity
	DB[SpellID]["Type"] = CompanionType
	DB[SpellID]["WarcraftPetsID"] = WarcraftPetsID or 0

	DB[SpellID]["Owned"] = false
	DB[SpellID]["Display"] = true
	DB[SpellID]["Search"] = false
	DB[SpellID]["Known"] = false

	DB[SpellID]["Flags"] = {}

	local flag = DB[SpellID]["Flags"]

	-- Set the filter flags to all false
	for i=1,maxfilterflags,1 do
		flag[i] = false
	end

	DB[SpellID]["Acquire"] = {}

end

-- Adds obtain flags for the companion
-- Arguments: Spell ID in the database, and a link to the database itself, along with all the flags
-- Return values: None

function addon:AddCompanionFlags(DB, SpellID, ...)

	local flags = DB[SpellID]["Flags"]

	local numvars = select('#',...)

	-- Find out how many flags we're adding
	for i=1,numvars,1 do
		-- Get the value of the current flag
		local flag = select(i, ...)
		-- Set the flag in the database to true
		flags[flag] = true
	end

end

-- Adds acquire flags for the companion
-- Arguments: Spell ID in the database, and a link to the database itself, along with all the flags
-- Return values: None

function addon:AddCompanionAcquire(DB, SpellID, ...)

	-- Find out how many flags we're adding
	local numvars = select('#',...)

	-- Index for the number of Acquire entries we have
	local index = 1

	-- Index for which variables we're parsing through
	local i = 1

	local acquire = DB[SpellID]["Acquire"]

	while (i < numvars) do

		-- Create the space for the current Acquire method
		acquire[index] = {}

		-- Get the Type and ID of the values
		local AcquireType, AcquireID = select(i, ...)

		acquire[index]["Type"] = AcquireType
		acquire[index]["ID"] = AcquireID
		i = i + 2

		-- Crafted
		if (AcquireType == 3) then
			local craftedby = select(i, ...)
			acquire[index]["Crafted"] = craftedby
			i = i + 1
		end

		-- Reputation
		if (AcquireType == 6) then
			local RepLevel, RepVendor = select(i, ...)
			acquire[index]["RepLevel"] = RepLevel
			acquire[index]["RepVendor"] = RepVendor
			i = i + 2
		end

		index = index + 1

	end

end

-- Description: Adds a specific entry (ie: vendor, mob, etc) to the lookup list
-- Expected result: Look up list will have an entry added to it
-- Input: List to add to, ID of entry, Name, Faction Location and Coordinates (X and Y)
-- Output: None, array is passed as a reference

function addon:addLookupList(DB, ID, Name, Loc, Coordx, Coordy, Faction)

	--[[
		For individual database structures, see Documentation.lua
	]]--

	DB[ID] = {}
	DB[ID]["Name"] = Name

	if (Loc) then
		DB[ID]["Location"] = Loc
	else
		DB[ID]["Location"] = "Unknown Zone"
	end

	if (Coordx) and (Coordy) then
		DB[ID]["Coordx"] = Coordx
		DB[ID]["Coordy"] = Coordy
	end

	if (Faction) then
		if (Faction == 0) then
			DB[ID]["Faction"] = BFAC["Neutral"]
		elseif (Faction == 1) then
			DB[ID]["Faction"] = BFAC["Alliance"]
		elseif (Faction == 2) then
			DB[ID]["Faction"] = BFAC["Horde"]
		end
	end

end

function addon:DumpSpell(SpellID)

	local clist = addon:GetMasterTable()

	if (not clist) then
		return
	end

	if (clist[SpellID]) then

		x = clist[SpellID]
		self:Print(x["Name"] .. " -- " .. SpellID)
		self:Print("Rarity: " .. x["Rarity"])
		if (x["ItemID"]) then
			local _,linky = GetItemInfo(x["ItemID"])
			if (linky) then
				self:Print("Creates: " .. linky .. "(" .. x["ItemID"] .. ")")
			else
				self:Print("Creates: (" .. x["ItemID"] .. ")")
			end
		end
--[[
		if (x["Locations"]) then
			self:Print("Located: " .. x["Locations"])
		end
]]--

		local acquire = clist[SpellID]["Acquire"]

		self:Print("Acquire methods:")
		for i in pairs(acquire) do
			local acquiretype = acquire[i]["Type"]
			if (acquiretype == 1) then
				self:Print("Vendor: " .. acquire[i]["ID"])
				if (VendorList[i]) then
					self:Print(VendorList[i]["Name"])
				end
			elseif (acquiretype == 2) then
				self:Print("Quest: " .. acquire[i]["ID"])
			elseif (acquiretype == 3) then
				self:Print("Crafted: " .. GetSpellInfo(acquire[i]["ID"]))
				self:Print("Created by: " .. GetSpellInfo(acquire[i]["Crafted"]))
			elseif (acquiretype == 4) then
				self:Print("Mob: " .. acquire[i]["ID"])
			elseif (acquiretype == 5) then
				self:Print("Seasonal: " .. acquire[i]["ID"])
			elseif (acquiretype == 6) then
				self:Print("Reputation: " .. acquire[i]["ID"])
				self:Print("Rep Level: " .. acquire[i]["RepLevel"])
				self:Print("Rep Vendor: " .. acquire[i]["RepVendor"])
			elseif (acquiretype == 7) then
				self:Print("World Drop: " .. acquire[i]["ID"])
			elseif (acquiretype == 8) then
				self:Print("Custom: " .. acquire[i]["ID"])
			elseif (acquiretype == 9) then
				self:Print("Achievement: " .. acquire[i]["ID"])
			else
				self:Print("Acquire type: " .. acquire[i]["Type"] .. " ID: " .. acquire[i]["ID"])
			end
		end

		local flags = x["Flags"]
		local flagstr = ""

		if (flags[1] == true) then
			flagstr = flagstr .. "Ally,"
		end
		if (flags[2] == true) then
			flagstr = flagstr .. "Horde,"
		end
		if (flags[3] == true) then
			flagstr = flagstr .. "Trn,"
		end
		if (flags[4] == true) then
			flagstr = flagstr .. "Ven,"
		end
		if (flags[5] == true) then
			flagstr = flagstr .. "Instance,"
		end
		if (flags[6] == true) then
			flagstr = flagstr .. "Raid,"
		end
		if (flags[7] == true) then
			flagstr = flagstr .. "Seasonal,"
		end
		if (flags[8] == true) then
			flagstr = flagstr .. "Quest,"
		end
		if (flags[9] == true) then
			flagstr = flagstr .. "PVP,"
		end
		if (flags[10] == true) then
			flagstr = flagstr .. "World,"
		end
		if (flags[11] == true) then
			flagstr = flagstr .. "Mob,"
		end
		if (flags[12] == true) then
			flagstr = flagstr .. "Disc,"
		end
		if (flags[13] == true) then
			flagstr = flagstr .. "13,"
		end
		if (flags[14] == true) then
			flagstr = flagstr .. "14,"
		end
		if (flags[15] == true) then
			flagstr = flagstr .. "15,"
		end
		if (flags[16] == true) then
			flagstr = flagstr .. "16,"
		end
		if (flags[17] == true) then
			flagstr = flagstr .. "17,"
		end
		if (flags[18] == true) then
			flagstr = flagstr .. "18,"
		end
		if (flags[19] == true) then
			flagstr = flagstr .. "19,"
		end
		if (flags[20] == true) then
			flagstr = flagstr .. "20,"
		end
		if (flags[21] == true) then
			flagstr = flagstr .. "DK,"
		end
		if (flags[22] == true) then
			flagstr = flagstr .. "Druid,"
		end
		if (flags[23] == true) then
			flagstr = flagstr .. "Huntard,"
		end
		if (flags[24] == true) then
			flagstr = flagstr .. "Mage,"
		end
		if (flags[25] == true) then
			flagstr = flagstr .. "Pally,"
		end
		if (flags[26] == true) then
			flagstr = flagstr .. "Priest,"
		end
		if (flags[27] == true) then
			flagstr = flagstr .. "Sham,"
		end
		if (flags[28] == true) then
			flagstr = flagstr .. "Rogue,"
		end
		if (flags[29] == true) then
			flagstr = flagstr .. "Lock,"
		end
		if (flags[30] == true) then
			flagstr = flagstr .. "War,"
		end
		if (flags[31] == true) then
			flagstr = flagstr .. "31,"
		end
		if (flags[36] == true) then
			flagstr = flagstr .. "IBoE,"
		end
		if (flags[37] == true) then
			flagstr = flagstr .. "IBoP,"
		end
		if (flags[38] == true) then
			flagstr = flagstr .. "IBoA,"
		end
		if (flags[39] == true) then
			flagstr = flagstr .. "39,"
		end
		if (flags[40] == true) then
			flagstr = flagstr .. "RBoE,"
		end
		if (flags[41] == true) then
			flagstr = flagstr .. "RBoP,"
		end
		if (flags[42] == true) then
			flagstr = flagstr .. "RBoA,"
		end
		if (flags[51] == true) then
			flagstr = flagstr .. "Melee,"
		end
		if (flags[52] == true) then
			flagstr = flagstr .. "Tank,"
		end
		if (flags[53] == true) then
			flagstr = flagstr .. "Heal,"
		end
		if (flags[54] == true) then
			flagstr = flagstr .. "Caster,"
		end
		if (flags[56] == true) then
			flagstr = flagstr .. "Cloth,"
		end
		if (flags[57] == true) then
			flagstr = flagstr .. "Leather,"
		end
		if (flags[58] == true) then
			flagstr = flagstr .. "Mail,"
		end
		if (flags[59] == true) then
			flagstr = flagstr .. "Plate,"
		end
		if (flags[60] == true) then
			flagstr = flagstr .. "Cloak,"
		end
		if (flags[61] == true) then
			flagstr = flagstr .. "Trinket,"
		end
		if (flags[62] == true) then
			flagstr = flagstr .. "Ring,"
		end
		if (flags[63] == true) then
			flagstr = flagstr .. "Neck,"
		end
		if (flags[64] == true) then
			flagstr = flagstr .. "Shield,"
		end
		if (flags[66] == true) then
			flagstr = flagstr .. "1H,"
		end
		if (flags[67] == true) then
			flagstr = flagstr .. "2H,"
		end
		if (flags[68] == true) then
			flagstr = flagstr .. "Axe,"
		end
		if (flags[69] == true) then
			flagstr = flagstr .. "Sword,"
		end
		if (flags[70] == true) then
			flagstr = flagstr .. "Mace,"
		end
		if (flags[71] == true) then
			flagstr = flagstr .. "Polearm,"
		end
		if (flags[72] == true) then
			flagstr = flagstr .. "Dagger,"
		end
		if (flags[73] == true) then
			flagstr = flagstr .. "Staff,"
		end
		if (flags[74] == true) then
			flagstr = flagstr .. "Wand,"
		end
		if (flags[75] == true) then
			flagstr = flagstr .. "Thrown,"
		end
		if (flags[76] == true) then
			flagstr = flagstr .. "Bow,"
		end
		if (flags[77] == true) then
			flagstr = flagstr .. "xBow,"
		end
		if (flags[78] == true) then
			flagstr = flagstr .. "Ammo,"
		end
		if (flags[79] == true) then
			flagstr = flagstr .. "Fist,"
		end

		self:Print("Flags: " .. flagstr)
		flagstr = ""

		if (flags[96] == true) then
			flagstr = flagstr .. "AD,"
		end
		if (flags[97] == true) then
			flagstr = flagstr .. "CC,"
		end
		if (flags[98] == true) then
			flagstr = flagstr .. "TB,"
		end
		if (flags[99] == true) then
			flagstr = flagstr .. "TH,"
		end
		if (flags[100] == true) then
			flagstr = flagstr .. "ZH,"
		end
		if (flags[101] == true) then
			flagstr = flagstr .. "Aldor,"
		end
		if (flags[102] == true) then
			flagstr = flagstr .. "Ashtongue,"
		end
		if (flags[103] == true) then
			flagstr = flagstr .. "CE,"
		end
		if (flags[104] == true) then
			flagstr = flagstr .. "Thrall/HH,"
		end
		if (flags[105] == true) then
			flagstr = flagstr .. "Consort,"
		end
		if (flags[106] == true) then
			flagstr = flagstr .. "KoT,"
		end
		if (flags[107] == true) then
			flagstr = flagstr .. "LC,"
		end
		if (flags[108] == true) then
			flagstr = flagstr .. "Mag/Kur,"
		end
		if (flags[109] == true) then
			flagstr = flagstr .. "SoS,"
		end
		if (flags[110] == true) then
			flagstr = flagstr .. "Scryer,"
		end
		if (flags[111] == true) then
			flagstr = flagstr .. "Sha'tar,"
		end
		if (flags[112] == true) then
			flagstr = flagstr .. "Shattered Sun,"
		end
		if (flags[113] == true) then
			flagstr = flagstr .. "Spore,"
		end
		if (flags[114] == true) then
			flagstr = flagstr .. "VE,"
		end
		if (flags[115] == true) then
			flagstr = flagstr .. "AC,"
		end
		if (flags[116] == true) then
			flagstr = flagstr .. "Frenzy,"
		end
		if (flags[117] == true) then
			flagstr = flagstr .. "Ebon,"
		end
		if (flags[118] == true) then
			flagstr = flagstr .. "Kirin,"
		end
		if (flags[119] == true) then
			flagstr = flagstr .. "Hodir,"
		end
		if (flags[120] == true) then
			flagstr = flagstr .. "Kalu'ak,"
		end
		if (flags[121] == true) then
			flagstr = flagstr .. "Oracles,"
		end
		if (flags[122] == true) then
			flagstr = flagstr .. "Wyrm,"
		end
		if (flags[123] == true) then
			flagstr = flagstr .. "Silver Conv,"
		end
		if (flags[124] == true) then
			flagstr = flagstr .. "Sunreaver,"
		end
		if (flags[125] == true) then
			flagstr = flagstr .. "Explorer,"
		end
		if (flags[126] == true) then
			flagstr = flagstr .. "Valiance,"
		end
		if (flags[127] == true) then
			flagstr = flagstr .. "Hand of Veng,"
		end
		if (flags[128] == true) then
			flagstr = flagstr .. "Taunka,"
		end
		if (flags[129] == true) then
			flagstr = flagstr .. "WO,"
		end
		if (flags[130] == true) then
			flagstr = flagstr .. "AV/HE,"
		end

		self:Print("Reps: " .. flagstr)

	else
		self:Print("Spell ID not in recipe database.")
	end

end

-- Description: Creates the scan button
-- Expected result: Scan button is created with all functions associated with it.
-- Input: None.
-- Output: Button is created and hidden.

function addon:CreateScanButton()

	-- Create the scan button
	if (not addon.ScanButton) then
		addon.ScanButton = CreateFrame("Button","addon.ScanButton",UIParent,"UIPanelButtonTemplate")
	end

	-- Set some of the common button properties
	addon.ScanButton:SetHeight(20)
	addon.ScanButton:RegisterForClicks("LeftButtonUp")
	addon.ScanButton:SetScript("OnClick",
			function()
				addon:DoCompleteScan()
				--addon:ToggleFrame()
			end
		)

	addon.ScanButton:SetScript("OnEnter",
			function(this)
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(L["SCAN_COMPANIONS_DESC"])
				GameTooltip:Show()
			end
		)

	addon.ScanButton:SetScript("OnLeave",
			function()
				GameTooltip:Hide()
			end
		)

	addon.ScanButton:SetText(L["Scan"])

	local buttonparent = addon.ScanButton:GetParent()
	local framelevel = buttonparent:GetFrameLevel()
	local framestrata = buttonparent:GetFrameStrata()

	-- Set the frame level of the button to be 1 deeper than its parent
	addon.ScanButton:SetFrameLevel(framelevel + 1)
	addon.ScanButton:SetFrameStrata(framestrata)

	addon.ScanButton:Enable()

	addon.ScanButton:SetParent(PetPaperDollFrameCompanionFrame)
	addon.ScanButton:ClearAllPoints()

	addon.ScanButton:SetPoint("LEFT",CompanionNextPageButton,"RIGHT",0,-5)
	addon.ScanButton:SetWidth(addon.ScanButton:GetTextWidth() + 10)

	addon.ScanButton:Show()

end

