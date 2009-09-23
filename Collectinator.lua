--[[

****************************************************************************************

Collectinator

File date: @file-date-iso@
Project version: @project-version@

Author: Ackis

****************************************************************************************

]]--

--- **Collectinator** provides an interface for scanning companions and moutns to find what is missing.
-- There are a set of functions which allow you make use of the Collectinator database outside of Collectinator.\\
-- Collectinator supports all mounts/pets currently in World of Warcraft 3.1.
-- @class file
-- @name Collectinator.lua
-- @release @file-revision@

-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
local maxfilterflags = 90

-------------------------------------------------------------------------------
-- Constants for acquire types.
-------------------------------------------------------------------------------
local A_VENDOR, A_QUEST, A_CRAFTED, A_MOB, A_SEASONAL, A_REPUTATION, A_WORLD_DROP, A_CUSTOM, A_ACHIEVEMENT, A_MAX = 1, 2, 3, 4, 5, 6, 7, 8, 9, 9

-------------------------------------------------------------------------------
-- Class types
-------------------------------------------------------------------------------
local C_DK, C_DRUID, C_HUNTER, C_MAGE, C_PALADIN, C_PRIEST, C_ROGUE, C_SHAMAN, C_WARLOCK, C_WARRIOR = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

-------------------------------------------------------------------------------
-- Localized Lua globals
-------------------------------------------------------------------------------
local _G = getfenv(0)

local tostring = _G.tostring
local tonumber = _G.tonumber

local pairs = _G.pairs
local select = _G.select

local table = _G.table
local twipe = table.wipe
local tremove = table.remove
local tconcat = table.concat
local tsort = table.sort
local tinsert = table.insert

local string = _G.string
local format = string.format
local sfind = string.find
local smatch = string.match
local strlower = string.lower

-------------------------------------------------------------------------------
-- Localized API Functions
-------------------------------------------------------------------------------
local GetSpellInfo = GetSpellInfo

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local MODNAME = "Collectinator"

local LibStub = LibStub
local addon = LibStub("AceAddon-3.0"):NewAddon(MODNAME, "AceConsole-3.0", "AceEvent-3.0")
_G["Collectinator"] = addon

local L = LibStub("AceLocale-3.0"):GetLocale(MODNAME)

------------------------------------------------------------------------------
-- Check to see if we have mandatory libraries loaded. If not, notify the user
-- which are missing and return.
-------------------------------------------------------------------------------
local MissingLibraries
do
	local REQUIRED_LIBS = {
		"AceLocale-3.0",
		"LibBabble-Boss-3.0",
		"LibBabble-Faction-3.0",
		"LibBabble-Zone-3.0",
	}
	function MissingLibraries()
		local missing = false

		for idx, lib in ipairs(REQUIRED_LIBS) do
			if not LibStub:GetLibrary(lib, true) then
				missing = true
				addon:Print(format(L["MISSING_LIBRARY"], lib))
			end
		end
		return missing
	end

	if MissingLibraries() then
		--@debug@
		addon:Print("You are using a repository version of Collectinator.")
		addon:Print("You will have to install the following libraries to ensure the mod runs correctly:")
		for idx, lib in ipairs(REQUIRED_LIBS) do
			addon:Print(lib)
		end
		addon:Print("Collectinator not loaded.")
		--@end-debug@
		_G["Collectinator"] = nil
		return
	end
end	-- do

local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()

-- Global Frame Variables
addon.optionsFrame = {}

-------------------------------------------------------------------------------
-- Initialization functions
-------------------------------------------------------------------------------

--  Registers the slash commands, options, and database
function addon:OnInitialize()
	-- Set default options, which are to include everything in the scan
	local defaults = {
		profile = {
			-- Frame options
			frameopts = {
				offsetx = 0,
				offsety = 0,
				anchorTo = "",
				anchorFrom = "",
				uiscale = 1,
				tooltipscale = .9,
				fontsize = 11,
			},
			sorting = "Name",
			includefiltered = false,
			includeexcluded = false,
			closeguionskillclose = false,
			ignoreexclusionlist = false,
			scanbuttonlocation = "TR",
			spelltooltiplocation = "Right",
			acquiretooltiplocation = "Mouse",
			hidepopup = false,
			minimap = true,
			worldmap = true,
			autoscanmap = false,
			scantrainers = false,
			autoloaddb = false,

			exclusionlist = {},

			filters = {
				general = {
					faction = true,
					known = false,
					unknown = true,
				},
				obtain = {
					vendor = true,
					quest = true,
					instance = true,
					raid = true,
					seasonal = true,
					worlddrop = true,
					mobdrop = true,
					pvp = true,
					tcg = true,
					event = true,
					ce = true,
					removed = true,
					achievement = true,
					originalwow = true,
					bc = true,
					wrath = true,
				},
				binding = {
					itemboe = true,
					itembop = true,
					itemboa = true,
				},
				profs = {
					alch = true,
					bs = true,
					cook = true,
					ench = true,
					eng = true,
					fa = true,
					insc = true,
					jc = true,
					lw = true,
					smelt = true,
					tailor = true,
					fish = true,
				},
				rep = {
					aldor = true,
					scryer = true,
					argentdawn = true,
					ashtonguedeathsworn = true,
					bloodsail = true,
					cenarioncircle = true,
					cenarionexpedition = true,
					consortium = true,
					hellfire = true,
					keepersoftime = true,
					nagrand = true,
					netherwing = true,
					lowercity = true,
					scaleofthesands = true,
					shatar = true,
					shatteredsun = true,
					skyguard = true,
					sporeggar = true,
					thoriumbrotherhood = true,
					timbermaw = true,
					violeteye = true,
					zandalar = true,
					argentcrusade = true,
					frenzyheart = true,
					ebonblade = true,
					kirintor = true,
					sonsofhodir = true,
					kaluak = true,
					oracles = true,
					wyrmrest = true,
					wrathcommon1 = true,
					wrathcommon2 = true,
					wrathcommon3 = true,
					wrathcommon4 = true,
					wrathcommon5 = true,
					city1 = true,
					city2 = true,
					city3 = true,
					city4 = true,
					city5 = true,
					pvp1 = true,
					pvp2 = true,
					pvp3 = true,
				}, -- rep
			} -- filters
		} -- profile
	} --defaults
	addon.db = LibStub("AceDB-3.0"):New("CollectinatorDB2", defaults)

	if not addon.db then
		self:Print("Error: Database not loaded correctly.  Please exit out of WoW and delete the Collectinator database file (Collectinator.lua) found in: \\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\")
		return
	end
	self:SetupOptions()
	self:RegisterChatCommand("collectinator", "ChatCommand")	-- Register slash commands
end

-- Registers events and pre-loads certain variables.
function addon:OnEnable()
	self:RegisterEvent("COMPANION_LEARNED")	-- Watch for Companion Learned events
	self:GetFactionLevels()			-- Populate the repuatation level

	-------------------------------------------------------------------------------
	-- Create the scan button.
	-------------------------------------------------------------------------------
	local button = CreateFrame("Button", "Collectinator_ScanButton", PetPaperDollFrameCompanionFrame, "UIPanelButtonTemplate")
	self.ScanButton = button

	button:SetHeight(20)
	button:RegisterForClicks("LeftButtonUp")
	button:SetScript("OnClick",
				  function()
					  local companion_frame = PetPaperDollFrameCompanionFrame
					  local current_tab = "CRITTER"

					  if companion_frame:IsVisible() then
						  current_tab = companion_frame.mode
					  end
					  addon:Collectinator_Command(false, false, current_tab)
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
	local button_parent = button:GetParent()
	button:SetFrameLevel(button_parent:GetFrameLevel() + 1)
	button:SetFrameStrata(button_parent:GetFrameStrata())

	button:Enable()
	button:ClearAllPoints()

	button:SetPoint("LEFT", CompanionNextPageButton, "RIGHT", 0, 0)
	button:SetWidth(addon.ScanButton:GetTextWidth() + 10)

	button:Show()

	-------------------------------------------------------------------------------
	-- Add mini-pet/mount totals to the tab
	-------------------------------------------------------------------------------
	PetPaperDollFrameTab2:SetScript("OnEnter",
					function(this)
						GameTooltip_SetDefaultAnchor(GameTooltip, this)
						GameTooltip:SetText(GetNumCompanions("CRITTER") .. " companions known.")
						GameTooltip:Show()
					end)
	PetPaperDollFrameTab2:SetScript("OnLeave", function() GameTooltip:Hide() end)

	PetPaperDollFrameTab3:SetScript("OnEnter",
					function(this)
						GameTooltip_SetDefaultAnchor(GameTooltip, this)
						GameTooltip:SetText(GetNumCompanions("MOUNT") .. " mounts known.")
						GameTooltip:Show()
					end)
	PetPaperDollFrameTab3:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

-- Run when the addon is disabled. Ace3 takes care of unregistering events, etc.
function addon:OnDisable()
	-- If we disable the addon when the GUI is up, hide it.
	if addon.Frame then
		addon.Frame:Hide()
	end
end

-------------------------------------------------------------------------------
-- Event handling functions
-------------------------------------------------------------------------------
function addon:COMPANION_LEARNED()
	-- When we learn a new pet, we want to automatically scan the companions and update our saved variables
	self:Collectinator_Command(false, false)
end

-------------------------------------------------------------------------------
-- Player Data Acquisition Functions
-------------------------------------------------------------------------------
do
	local GetNumFactions = _G.GetNumFactions
	local GetFactionInfo = _G.GetFactionInfo
	local CollapseFactionHeader = _G.CollapseFactionHeader
	local ExpandFactionHeader = _G.ExpandFactionHeader

	-------------------------------------------------------------------------------
	-- Scans all reputations to get reputation levels to determine if the player can learn a reputation item
	-------------------------------------------------------------------------------
	function addon:GetFactionLevels(RepTable)
		-- Bug here when I reload UI
		if not RepTable then
			return
		end

		local t = {}

		-- Number of factions before we expand
		local numfactions = GetNumFactions()

		-- Lets expand all the headers
		for i = numfactions, 1, -1 do
			local name, _, _, _, _, _, _, _, _, isCollapsed = GetFactionInfo(i)

			if isCollapsed then
				ExpandFactionHeader(i)
				t[name] = true
			end
		end
		numfactions = GetNumFactions()	-- Number of factions with everything expanded

		-- Get the rep levels
		for i = 1, numfactions, 1 do
			local name, _, replevel = GetFactionInfo(i)

			-- If the rep is greater than neutral
			if (replevel > 4) then
				-- We use levels of 0, 1, 2, 3, 4 internally for reputation levels, make it corrospond here
				RepTable[name] = replevel - 4
			end
		end

		-- Collapse the headers again
		for i = numfactions, 1, -1 do
			local name = GetFactionInfo(i)

			if t[name] then
				CollapseFactionHeader(i)
			end
		end
	end
end	-- do

-------------------------------------------------------------------------------
-- Companion DB functions
-------------------------------------------------------------------------------

--- Adds a companion into the database.
-- @name Collectinator:AddCompanion
-- @usage Collectinator:AddCompanion(DB)
-- @param DB The database (array) which you wish to add data too.
-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entered to the database.
-- @param ItemID The [http://www.wowwiki.com/ItemLink Item ID] of the item, or nil
-- @param Rarity The rarity of the item.
-- @param CompanionType Type of entry added to the database.
-- @param Game Game version item was found in, for example, Original, BC, or Wrath.
-- @return None, array is passed as a reference.
function addon:AddCompanion(DB, CompanionType, SpellID, ItemID, Rarity, Game)
	if DB[SpellID] then	-- If the entry already exists, abort.
		self:Print("Duplicate companion - "..SpellID.." "..ItemID)
		return
	end

	DB[SpellID] = {
		["Name"] = GetSpellInfo(SpellID) or "Unknown ("..SpellID..")",
		["ItemID"] = ItemID,
		["Rarity"] = Rarity,
		["Type"] = CompanionType,
		["Game"] = Game or 0,
		["Owned"] = false,
		["Display"] = true,
		["Search"] = true,
		["Known"] = false,
		["Flags"] = {},
		["Acquire"] = {},
		["Location"] = "Unknown",
	}
	local flag = DB[SpellID]["Flags"]

	-- Set the filter flags to all false
	for i=1, maxfilterflags, 1 do
		flag[i] = false
	end
end

--- Adds filtering flags to a specific entry.
-- @name Collectinator:AddCompanionFlags
-- @usage Collectinator:AddCompanionFlags(DB)
-- @param DB The database (array) which you wish to add flags too.
-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entered to the database.
-- @param ... A listing of filtering flags.  See [[database-documentation]] for a listing of filtering flags.
-- @return None, array is passed as a reference.
function addon:AddCompanionFlags(DB, SpellID, ...)
	-- flags are defined in Documentation.lua
	local numvars = select('#', ...)
	local flags = DB[SpellID]["Flags"]

	-- Find out how many flags we're adding
	for i = 1, numvars, 1 do
		-- Get the value of the current flag
		local flag = select(i, ...)
		flags[flag] = true
	end
end

--- Adds acquire methods to a specific companion.
-- @name Collectinator:AddCompanionAcquire
-- @usage Collectinator:AddCompanionAcquire:(DB, 2329, 8, 8)
-- @param DB The database (array) which you wish to add acquire methods too.
-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entered to the database.
-- @param ... A listing of acquire methods.  See [[database-documentation]] for a listing of acquire methods and how they behave.
-- @return None, array is passed as a reference.
function addon:AddCompanionAcquire(DB, SpellID, ...)
	local numvars = select('#', ...)-- Find out how many flags we're adding
	local index = 1			-- Index for the number of Acquire entries we have
	local i = 1			-- Index for which variables we're parsing through

	local acquire = DB[SpellID]["Acquire"]

	while i < numvars do
		-- Create the space for the current Acquire method
		acquire[index] = {}

		-- Get the Type and ID of the values
		local AcquireType, AcquireID = select(i, ...)

		acquire[index]["Type"] = AcquireType
		acquire[index]["ID"] = AcquireID
		i = i + 2

		-- Crafted
		if (AcquireType == A_CRAFTED) then
			local craftedby = select(i, ...)
			acquire[index]["Crafted"] = craftedby
			i = i + 1
		end

		-- Reputation
		if (AcquireType == A_REPUTATION) then
			local RepLevel, RepVendor = select(i, ...)
			acquire[index]["RepLevel"] = RepLevel
			acquire[index]["RepVendor"] = RepVendor
			i = i + 2
		end
		index = index + 1
	end	-- end-while
end

--- Adds an item to a specific database listing (ie: vendor, mob, etc)
-- @name Collectinator:addLookupList
-- @usage Collectinator:addLookupList:(VendorDB, NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)
-- @param DB Database which the entry will be stored.
-- @param ID Unique identified for the entry.
-- @param Name Name of the entry.
-- @param Loc Location of the entry in the world.
-- @param Coordx X coordinate of where the entry is found.
-- @param Coordy Y coordinate of where the entry is found.
-- @param Faction Faction identifier for the entry.
-- @return None, array is passed as a reference.
function addon:addLookupList(DB, ID, Name, Loc, Coordx, Coordy, Faction)

	DB[ID] = {}
	DB[ID]["Name"] = Name

	if Loc then
		DB[ID]["Location"] = Loc
	else
		DB[ID]["Location"] = L["Unknown Zone"]
	end

	if Coordx and Coordy then
		DB[ID]["Coordx"] = Coordx
		DB[ID]["Coordy"] = Coordy
	end

	if Faction then
		if (Faction == 0) then
			DB[ID]["Faction"] = BFAC["Neutral"]
		elseif (Faction == 1) then
			DB[ID]["Faction"] = BFAC["Alliance"]
		elseif (Faction == 2) then
			DB[ID]["Faction"] = BFAC["Horde"]
		end
	end

end

-------------------------------------------------------------------------------
-- Scanning Functions
-------------------------------------------------------------------------------

--- Gets a spell ID from a spell link.
-- @name GetIDFromLink
-- @usage Collectinator:GetIDFromLink(SpellLink)
-- @param SpellLink The [http://www.wowwiki.com/SpellLink SpellLink] which you wish to get the Spell ID from.
-- @return The spell ID of the passed [http://www.wowwiki.com/SpellLink SpellLink].
local function GetIDFromLink(SpellLink)
	-- Faster pattern matching per Neffi
	return smatch(SpellLink, "^|c%x%x%x%x%x%x%x%x|H%w+:(%d+)")
end

--- Scans all companions you have (mounts and mini-pets) and adds them to the saved variables.
-- @name ScanCompanions
-- @usage Collectinator:ScanCompanions(DB, playerData["totalknownpets"], playerData["totalknownmounts"])
-- @param numminipets The number of mini-pets which you know.
-- @param nummounts The number of mini-pets which you know.
-- @return The entries in the DB are flagged as known
function addon:ScanCompanions(DB, numminipets, nummounts)
	-- Parse all the mini-pets you currently have
	for i = 1, numminipets, 1 do
		local _, _, petspell, _, _ = GetCompanionInfo("CRITTER", i)	-- Get the pet's name and spell ID

		if (DB[petspell]) then
			DB[petspell]["Known"] = true
		elseif petspell then
			self:Print("Error: Pet with ID " .. petspell .. " not in database.")
		end
	end

	-- Parse all the mounts you currently have
	for i=1, nummounts, 1 do
		-- Get the pet's name and spell ID
		local _, _, mountspell = GetCompanionInfo("MOUNT", i)
		if (DB[mountspell]) then
			DB[mountspell]["Known"] = true
		elseif mountspell then
			self:Print("Error: Mount with ID ".. tostring(mountspell) .. " not in database.")
		end
	end

end

--- Scans the database and the local list of companions and flags which ones you know
-- @name CheckForKnownCompanions
-- @usage Collectinator:CheckForKnownCompanions(DB)
-- @param DB Companion database which we are parsing.
-- @return Companion DB is updated by reference.
function addon:CheckForKnownCompanions(DB)
	local companionlist = addon.db.profile.companionlist

	-- Scan through all the entries we've saved
	for i, SpellID in pairs(companionlist) do
		-- If the entry exists, mark it as known
		if (DB[SpellID]) then
			DB[SpellID]["Known"] = true
		-- If the entry doesn't exist raise an error
		else
			local name = GetSpellInfo(SpellID)
			self:Print("Companion: " .. name .. " (" .. SpellID .. ") not found in database.")
		end
	end
end

do
	-------------------------------------------------------------------------------
	-- Origin
	-------------------------------------------------------------------------------
	local GAME_ORIG, GAME_TBC, GAME_WOTLK = 0, 1, 2

	-------------------------------------------------------------------------------
	-- Filter flags
	-------------------------------------------------------------------------------
	local F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_UNUSED, F_INSTANCE, F_RAID, F_SEASONAL, F_WORLD_DROP, F_MOB_DROP = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	local F_TCG, F_SPEC_EVENT, F_COLLECTORS, F_REMOVED, F_ACHIEVEMENT, F_PVP = 11, 12, 13, 14, 15, 16
	local F_BOE, F_BOP, F_BOA = 20, 21, 22
	local F_ALCH, F_BS, F_COOKING, F_ENCH, F_ENG, F_FIRST_AID, F_INSC, F_JC, F_LW, F_SMELT, F_TAILOR, F_FISHING = 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37
	-------------------------------------------------------------------------------
	-- Reputation Filter Flags
	-------------------------------------------------------------------------------
	local F_ARGENT_DAWN, F_BLOODSAIL, F_CENARION_CIRCLE, F_THORIUM_BROTHERHOOD, F_TIMBERMAW, F_WINTERSRPING, F_ZANDALAR = 40, 41, 42, 43, 44, 100, 45
	local F_ALDOR, F_ASHTONGUE, F_CENARION_EXPIDITION, F_HELLFIRE, F_CONSORTIUM, F_KOT, F_LOWER_CITY, F_NAGRAND = 46, 47, 48, 49, 50, 51, 52, 53
	local F_NETHERWING, F_SCALE_SANDS, F_SCRYER, F_SHATAR, F_SKYGUARD, F_SHATTEREDSUN, F_SPOREGGAR, F_VIOLET_EYE = 54, 55, 56, 57, 90, 58, 59, 60
	local F_CITY1, F_CITY2, F_CITY3, F_CITY4, F_CITY5 = 61, 62, 63, 64, 65
	local F_PVP1, F_PVP2, F_PVP3 = 66, 67, 68
	local F_ARGENT_CRUSADE, F_FRENZYHEART, F_EBON_BLADE, F_KIRINTOR, F_HODIR, F_KALUAK, F_ORACLES, F_WYRMREST = 71, 72, 73, 74, 75, 76, 77, 78
	local WRATHCOMMON1, WRATHCOMMON2, WRATHCOMMON3, WRATHCOMMON4, WRATHCOMMON5 = 79, 80, 81, 82, 83

	local reptable = nil

	local function CreateRepTable()

		local repdb = addon.db.profile.filters.rep

		reptable = {
			-- Old World
			[F_ARGENT_DAWN] = repdb.argentdawn,
			[F_BLOODSAIL] = repdb.bloodsail,
			[F_CENARION_CIRCLE] = repdb.cenarioncircle,
			[F_THORIUM_BROTHERHOOD] = repdb.thoriumbrotherhood,
			[F_TIMBERMAW] = repdb.timbermaw,
			[F_WINTERSRPING] = repdb.winterspring,
			[F_ZANDALAR] = repdb.zandalar,
			-- BC
			[F_ALDOR] = repdb.aldor,
			[F_ASHTONGUE] = repdb.ashtonguedeathsworn,
			[F_CENARION_EXPIDITION] = repdb.cenarionexpedition,
			[F_HELLFIRE] = repdb.hellfire,
			[F_CONSORTIUM] = repdb.consortium,
			[F_KOT] = repdb.keepersoftime,
			[F_LOWER_CITY] = repdb.lowercity,
			[F_NAGRAND] = repdb.nagrand,
			[F_NETHERWING] = repdb.netherwing,
			[F_SCALE_SANDS] = repdb.scaleofthesands,
			[F_SCRYER] = repdb.scryer,
			[F_SHATAR] = repdb.shatar,
			[F_SKYGUARD] = repdb.skyguard,
			[F_SHATTEREDSUN] = repdb.shatteredsun,
			[F_SPOREGGAR] = repdb.sporeggar,
			[F_VIOLET_EYE] = repdb.violeteye,
			-- Faction Cities
			[F_CITY1] = repdb.city1,
			[F_CITY2] = repdb.city2,
			[F_CITY3] = repdb.city3,
			[F_CITY4] = repdb.city4,
			[F_CITY5] = repdb.city5,
			-- PVP
			[F_PVP1] = repdb.pvp1,
			[F_PVP2] = repdb.pvp2,
			[F_PVP3] = repdb.pvp3,
			-- Wrath
			[F_ARGENT_CRUSADE] = repdb.argentcrusade,
			[F_FRENZYHEART] = repdb.frenzyheart,
			[F_EBON_BLADE] = repdb.ebonblade,
			[F_KIRINTOR] = repdb.kirintor,
			[F_HODIR] = repdb.sonsofhodir,
			[F_KALUAK] = repdb.kaluak,
			[F_ORACLES] = repdb.oracles,
			[F_WYRMREST] = repdb.wyrmrest,
			[WRATHCOMMON1] = repdb.wrathcommon1,
			[WRATHCOMMON2] = repdb.wrathcommon2,
			[WRATHCOMMON3] = repdb.wrathcommon3,
			[WRATHCOMMON4] = repdb.wrathcommon4,
			[WRATHCOMMON5] = repdb.wrathcommon5,
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
			if flags[i] then
				display = reptable[i] and true or false
			end
		end
		return display
	end

	-- Description: Scans a specific item to determine if it is to be displayed or not.
	function addon:CheckDisplay(Entry, playerFaction)
		-- For flag info see comments at start of file in comments
		local filterdb = addon.db.profile.filters
		local flags = Entry["Flags"]

		-- See Documentation file for logic explanation
		-- Stage 1
		-- Loop through exclusive flags (hard filters)
		-- If one of these does not pass we do not display the item
		-- So to be more effecient we'll just leave this function if there's a false
		local generaldb = filterdb.general
		local obtaindb = filterdb.obtain

		-- Display both horde and alliance factions?
		if (not generaldb.faction) then
			-- We want to filter out all the Horde only items
			if (playerFaction == BFAC["Alliance"]) then
				-- Filter out Horde only
				if (flags[F_HORDE]) then
					return false
				end
			-- We want to filter out all the Alliance only items
			else
				-- Filter out Alliance only
				if (flags[F_ALLIANCE]) then
					return false
				end
			end
		end

		-- Filter out "era" items
		if ((obtaindb.originalwow == false) and (Entry["Game"] == GAME_ORIG)) then
			return false
		end
		if ((obtaindb.bc == false) and (Entry["Game"] == GAME_BC)) then
			return false
		end
		if ((obtaindb.wrath == false) and (Entry["Game"] == GAME_WOTLK)) then
			return false
		end

		local profdb = filterdb.profs

		if ((profdb.alch == false) and (flags[F_ALCH] == true)) then
			return false
		end
		if ((profdb.bs == false) and (flags[F_BS] == true)) then
			return false
		end
		if ((profdb.cook == false) and (flags[F_COOKING] == true)) then
			return false
		end
		if ((profdb.ench == false) and (flags[F_ENCH] == true)) then
			return false
		end
		if ((profdb.eng == false) and (flags[F_ENG] == true)) then
			return false
		end
		if ((profdb.fa == false) and (flags[F_FIRST_AID] == true)) then
			return false
		end
		if ((profdb.insc == false) and (flags[F_INSC] == true)) then
			return false
		end
		if ((profdb.jc == false) and (flags[F_JC] == true)) then
			return false
		end
		if ((profdb.lw == false) and (flags[F_LW] == true)) then
			return false
		end
		if ((profdb.smelt == false) and (flags[F_SMELT] == true)) then
			return false
		end
		if ((profdb.tailor == false) and (flags[F_TAILOR] == true)) then
			return false
		end
		if ((profdb.fish == false) and (flags[F_FISHING] == true)) then
			return false
		end

		local bindingdb = filterdb.binding

		-- Include BoE Items in the scan? (if I want to see BoE items, only filter those that are not BoE)
		if (bindingdb.itemboe == false) and (flags[F_BOE] == true) then
			return false
		end

		-- Include BoP Items in the scan? (if I want to see BoP items, only filter those that are not BoP)
		if (bindingdb.itembop == false) and (flags[F_BOP] == true) then
			return false
		end

		-- Include BoA Items in the scan? (if I want to see BoA items, only filter those that are not BoA)
		if (bindingdb.itemboa == false) and (flags[F_BOA] == true) then
			return false
		end

		if (not CheckReputationDisplay(flags)) then
			return false
		end

		-- Stage 2
		-- loop through nonexclusive (soft filters) flags until one is true
		-- If one of these is true (ie: we want to see trainers and there is a trainer flag) we display the item

		-- Display vendor items
		if (obtaindb.vendor == true) and (flags[F_VENDOR] == true) then
			return true
		end

		-- Display quest items
		if (obtaindb.quest == true) and (flags[F_QUEST] == true) then
			return true
		end

		-- Display instance items
		if (obtaindb.instance == true) and (flags[F_INSTANCE] == true) then
			return true
		end

		-- Display raid items
		if (obtaindb.raid == true) and (flags[F_RAID] == true) then
			return true
		end

		-- Display seasonal items
		if (obtaindb.seasonal == true) and (flags[F_SEASONAL] == true) then
			return true
		end

		-- Display world drop items
		if (obtaindb.worlddrop == true) and (flags[F_WORLD_DROP] == true) then
			return true
		end

		-- Display mob drop items
		if (obtaindb.mobdrop == true) and (flags[F_MOB_DROP] == true) then
			return true
		end

		-- Display TCG items
		if (obtaindb.tcg == true) and (flags[F_TCG] == true) then
			return true
		end

		-- Display Special Event items
		if (obtaindb.event == true) and (flags[F_SPEC_EVENT] == true) then
			return true
		end

		-- Display CE items
		if (obtaindb.ce == true) and (flags[F_COLLECTORS] == true) then
			return true
		end

		-- Display removed items
		if (obtaindb.removed == true) and (flags[F_REMOVED] == true) then
			return true
		end

		-- Display achievement items
		if (obtaindb.achievement == true) and (flags[F_ACHIEVEMENT] == true) then
			return true
		end

		-- Display PVP items
		if (obtaindb.PVP == true) and (flags[F_PVP] == true) then
			return true
		end

		-- If we get here it means that no flags matched our values
		return false

	end

end

-- Description: Creates an array of which factions we want to include in our display and which ones to ignore
local function PopulateRepFilters(RepTable)

	local repfilters = addon.db.profile.filters.rep

	RepTable[BFAC["The Scryers"]] = repfilters.scryer
	RepTable[BFAC["The Aldor"]] = repfilters.aldor
	RepTable[BFAC["Argent Dawn"]] = repfilters.argentdawn
	RepTable[BFAC["Ashtongue Deathsworn"]] = repfilters.ashtonguedeathsworn
	RepTable[BFAC["Bloodsail Buccaneers"]] = repfilters.bloodsail
	RepTable[BFAC["Cenarion Circle"]] = repfilters.cenarioncircle
	RepTable[BFAC["Cenarion Expedition"]] = repfilters.cenarionexpedition
	RepTable[BFAC["The Consortium"]] = repfilters.consortium
	RepTable[BFAC["Keepers of Time"]] = repfilters.keepersoftime
	RepTable[BFAC["Lower City"]] = repfilters.lowercity
	RepTable[BFAC["Netherwing"]] = repfilters.netherwing
	RepTable[BFAC["The Scale of the Sands"]] = repfilters.scaleofthesands
	RepTable[BFAC["The Sha'tar"]] = repfilters.shatar
	RepTable[BFAC["Shattered Sun Offensive"]] = repfilters.shatteredsun
	RepTable[BFAC["Sha'tari Skyguard"]] = repfilters.skyguard
	RepTable[BFAC["Sporeggar"]] = repfilters.sporeggar
	RepTable[BFAC["Thorium Brotherhood"]] = repfilters.thoriumbrotherhood
	RepTable[BFAC["Timbermaw Hold"]] = repfilters.timbermaw
	RepTable[BFAC["The Violet Eye"]] = repfilters.violeteye
	RepTable[BFAC["Zandalar Tribe"]] = repfilters.zandalar
	RepTable[BFAC["Argent Crusade"]] = repfilters.argentcrusade
	RepTable[BFAC["Frenzyheart Tribe"]] = repfilters.frenzyheart
	RepTable[BFAC["Knights of the Ebon Blade"]] = repfilters.ebonblade
	RepTable[BFAC["Kirin Tor"]] = repfilters.kirintor
	RepTable[BFAC["The Sons of Hodir"]] = repfilters.sonsofhodir
	RepTable[BFAC["The Kalu'ak"]] = repfilters.kaluak
	RepTable[BFAC["The Oracles"]] = repfilters.oracles
	RepTable[BFAC["The Wyrmrest Accord"]] = repfilters.wyrmrest

	RepTable[BFAC["Darnassus"]] = repfilters.city1
	RepTable[BFAC["Stormwind"]] = repfilters.city2
	RepTable[BFAC["Gnomeregan Exiles"]] = repfilters.city3
	RepTable[BFAC["Ironforge"]] = repfilters.city4
	RepTable[BFAC["Exodar"]] = repfilters.city5
	RepTable[BFAC["Darkspear Trolls"]] = repfilters.city1
	RepTable[BFAC["Orgrimmar"]] = repfilters.city2
	RepTable[BFAC["Thunder Bluff"]] = repfilters.city3
	RepTable[BFAC["Undercity"]] = repfilters.city4
	RepTable[BFAC["Silvermoon City"]] = repfilters.city5

	RepTable[BFAC["Silverwing Sentinels"]] = repfilters.pvp1
	RepTable[BFAC["Stormpike Guard"]] = repfilters.pvp2
	RepTable[BFAC["The League of Arathor"]] = repfilters.pvp3
	RepTable[BFAC["Warsong Outriders"]] = repfilters.pvp1
	RepTable[BFAC["Frostwolf Clan"]] = repfilters.pvp2
	RepTable[BFAC["The Defilers"]] = repfilters.pvp3

	RepTable[BFAC["Honor Hold"]] = repfilters.hellfire
	RepTable[BFAC["Thrallmar"]] = repfilters.hellfire
	RepTable[BFAC["Kurenai"]] = repfilters.nagrand
	RepTable[BFAC["The Mag'har"]] = repfilters.nagrand

	RepTable[BFAC["Alliance Vanguard"]] = repfilters.wrathcommon1
	RepTable[BFAC["Horde Expedition"]] = repfilters.wrathcommon1
	RepTable[BFAC["The Silver Covenant"]] = repfilters.wrathcommon2
	RepTable[BFAC["The Sunreavers"]] = repfilters.wrathcommon2
	RepTable[BFAC["Valiance Expedition"]] = repfilters.wrathcommon3
	RepTable[BFAC["Warsong Offensive"]] = repfilters.wrathcommon3
	RepTable[BFAC["The Taunka"]] = repfilters.wrathcommon4
	RepTable[BFAC["The Frostborn"]] = repfilters.wrathcommon4
	RepTable[BFAC["Explorers' League"]] = repfilters.wrathcommon5
	RepTable[BFAC["The Hand of Vengeance"]] = repfilters.wrathcommon5

end

-- Description: Scans the item listing and updates the filters according to user preferences
function addon:UpdateFilters(DB,  playerData, scantype)
	local playerFaction = playerData.playerFaction
	local playerClass = playerData.playerClass
	local can_show = false
	local tmp_type = scantype
	local lower_type = tmp_type:lower()
	local known_str = lower_type .. "_known"
	local total_str = lower_type .. "_total"
	local known_filtered_str = lower_type .. "_known_filtered"
	local total_filtered_str = lower_type .. "_total_filtered"

	playerData[known_str] = 0
	playerData[total_str] = 0
	playerData[known_filtered_str] = 0
	playerData[total_filtered_str] = 0

	for ID, item in pairs(DB) do
		if item["Type"] == scantype then
			can_show = self:CheckDisplay(item, playerFaction)

			playerData[total_str] = playerData[total_str] + 1
			playerData[known_str] = playerData[known_str] + (item["Known"] == true and 1 or 0)

			if can_show then
				playerData[total_filtered_str] = playerData[total_filtered_str] + 1
				playerData[known_filtered_str] = playerData[known_filtered_str] + (item["Known"] == true and 1 or 0)

				-- Include known
				if (addon.db.profile.filters.general.known == false) and (item["Known"] == true) then
					can_show = false
				end
				-- Include unknown
				if (addon.db.profile.filters.general.unknown == false) and (item["Known"] == false) then
					can_show = false
				end
			end
		else
			can_show = false
		end
		DB[ID]["Display"] = can_show
	end
	self:ClearRepTable()
end

--[[

	Collectinator Logic Functions

]]--

-- Description: Determines what to do when the slash command is called.

function addon:ChatCommand(input)

	InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
--[[
	if (not input) or (input and input:trim() == "") or (input == strlower(L["Sorting"])) or (input == strlower(L["Sort"]))  or (input == strlower(L["Display"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	elseif (input == strlower(L["About"])) then
		if (self.optionsFrame["About"]) then
			InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["About"])
		else
			InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		end
	elseif (input == strlower(L["Profile"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["Profiles"])
	elseif (input == strlower(L["Filter"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["Filters"])
	elseif (input == strlower(L["Documentation"])) then
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["Documentation"])
	elseif (input == strlower(L["Scan"])) then
		self:Collectinator_Command(false)
	elseif (input == strlower("scandata")) then
		self:ScanSkillLevelData()
	else
		-- What happens when we get here?
		LibStub("AceConfigCmd-3.0"):HandleCommand("collectinator", "Collectinator", input)
	end
]]--
end

do
	local UnitClass = UnitClass
	local UnitFactionGroup = UnitFactionGroup

	local CompanionDB

	local VendorList = nil
	local QuestList = nil
	local MobList = nil
	local CustomList = nil
	local QuestList = nil
	local ReputationList = nil
	local SeasonalList = nil
	local RepFilters = nil

	local playerData = nil
	--- Data which is stored regarding a players statistics
	-- @class table
	-- @name playerData
	-- @field totalknownpets Total number of known mini-pets.
	-- @field mount_total Total number of known mounts.
	-- @field critter_total Total number of mini-pets.
	-- @field totalmounts Total number of mounts.
	-- @field total Total number of items in the scan.
	-- @field known Total number of items known in the scan.
	-- @field total_filtered Total number of items filtered during the scan.
	-- @field known_filtered Total number of items known filtered during the scan.
	-- @field playerFaction Players faction
	-- @field playerClass Players class
	-- @field ["Reputation"] Listing of players reputation levels
	-- @field excluded_unknown Number of unknown items excluded.
	-- @field excluded_known Number of known items excluded.

	-- Variables for getting the locations
	local locationlist = nil
	local locationchecklist = nil

	--- Scans the acquire methods for the location and update the entry in the database with them.
	-- @name Collectinator:GetLocations
	-- @usage Collectinator:GetLocations([http://www.wowwiki.com/SpellLink Spell ID])
	-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entry to the database.
	-- @return Locations are populated for the given spell.
	function addon:GetLocations(SpellID)
		if CompanionDB and CompanionDB[SpellID] then
			locationlist = {}
			locationchecklist = {}

			local acquire = CompanionDB[SpellID]["Acquire"]

			if not VendorList or not QuestList or not MobList then
				--@debug@
				self:Print("Databases not loaded, locations not updated.")
				--@end-debug@
				return
			end

			for i in pairs(acquire) do
				-- Vendor
				if (acquire[i]["Type"] == A_VENDOR) then
					if not VendorList[acquire[i]["ID"]] then
						--@debug@
						self:Print("Missing vendor in database: " .. acquire[i]["ID"])
						--@end-debug@
					else
						local location = VendorList[acquire[i]["ID"]]["Location"]
						if (not locationchecklist[location]) then
							-- Add the location to the list
							tinsert(locationlist, location)
							locationchecklist[location] = true
						end
					end
				-- Quest
				elseif (acquire[i]["Type"] == A_QUEST) then
					if not QuestList[acquire[i]["ID"]] then
						--@debug@
						self:Print("Missing quest in database: " .. acquire[i]["ID"])
						--@end-debug@
					else
						local location = QuestList[acquire[i]["ID"]]["Location"]
						if (not locationchecklist[location]) then
							-- Add the location to the list
							tinsert(locationlist, location)
							locationchecklist[location] = true
						end
					end
				-- Mob Drop
				elseif (acquire[i]["Type"] == A_MOB) then
					if not MobList[acquire[i]["ID"]] then
						--@debug@
						self:Print("Missing mob in database: " .. acquire[i]["ID"])
						--@end-debug@
					else
						local location = MobList[acquire[i]["ID"]]["Location"]
						if (not locationchecklist[location]) then
							-- Add the location to the list
							tinsert(locationlist, location)
							locationchecklist[location] = true
						end
					end
				end
			end

			-- Sort the list by the name
			tsort(locationlist, function(a, b) return a < b end)

			-- Return the list as a string
			-- If we have no locations return an emptry string
			if (#locationlist == 0) then
				return ""
			else
				return tconcat(locationlist, ", ")
			end
		else
			return ""
		end
	end

	function addon:SetRepDB()
		if (playerData and playerData["Reputation"]) then
			self:GetFactionLevels(playerData["Reputation"])
		end
	end

	--- Scans the players professions and populates which ones they have
	local function GetPlayerProfessions(ProfTable)
		-- Reset the table, they may have unlearnt a profession
		for i in pairs(ProfTable) do
			ProfTable[i] = false
		end

		-- Scan through the spell book getting the spell names
		for index=1, 25, 1 do
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

	local function InitPlayerData()
		local pData = {}

		pData.playerFaction = UnitFactionGroup("player")
		local _
		_, pData.playerClass = UnitClass("player")

		pData["Reputation"] = {}

		addon:GetFactionLevels(pData["Reputation"])

		pData["Professions"] = {
			[GetSpellInfo(51304)] = false, -- Alchemy
			[GetSpellInfo(51300)] = false, -- Blacksmithing
			[GetSpellInfo(51296)] = false, -- Cooking
			[GetSpellInfo(51313)] = false, -- Enchanting
			[GetSpellInfo(51306)] = false, -- Engineering
			[GetSpellInfo(45542)] = false, -- First Aid
			[GetSpellInfo(51302)] = false, -- Leatherworking
			[GetSpellInfo(32606)] = false, -- Mining
			[GetSpellInfo(51309)] = false, -- Tailoring
			[GetSpellInfo(51311)] = false, -- Jewelcrafting
			[GetSpellInfo(45363)] = false, -- Inscription
			[GetSpellInfo(53428)] = false, -- Runeforging
		}
		GetPlayerProfessions(pData["Professions"])

		return pData
	end

	local function InitDatabases()
		-- Initializes the custom entry list
		if not CustomList then
			CustomList = {}
			addon:InitCustom(CustomList)
		end

		-- Initializes the mob list
		if not MobList then
			MobList = {}
			addon:InitMob(MobList)
		end

		-- Initializes the quest list
		if not QuestList then
			QuestList = {}
			addon:InitQuest(QuestList)
		end

		-- Initializes the reputation list
		if not ReputationList then
			ReputationList = {}
			addon:InitReputation(ReputationList)
		end

		-- Initializes the season list
		if not SeasonalList then
			SeasonalList = {}
			addon:InitSeasons(SeasonalList)
		end

		-- Initializes the vendor list
		if not VendorList then
			VendorList = {}
			addon:InitVendor(VendorList)
		end

		-- Initializes the reputation filters
		-- Don't assign values no because we do a scan later on
		if not RepFilters then
			RepFilters = {}
		end

		-- Initializes the companion list
		if not CompanionDB then
			CompanionDB = {}
			addon.data_table = CompanionDB
		end
	end

	--- Causes a scan of the companions to be conducted.
	-- @name Collectinator:Collectinator_Command
	-- @usage Collectinator:Collectinator_Command(true)
	-- @param textdump Boolean indicating if we want the output to be a text dump, or if we want to use the GUI.
	-- @param autoupdatescan Boolean, true if we're triggering this from an event (aka we learned a new pet), false otherwise.
	-- @param scantype CRITTER for pets, MOUNT for mounts
	-- @return A frame with either the text dump, or the GUI frame.
	function addon:Collectinator_Command(textdump, autoupdatescan, scantype)
		-- First time a scan has been run, we need to get the player specifc data
		-- specifically faction information, profession information and other pertinant data.
		playerData = playerData or InitPlayerData()

		-- Update the pet/mount totals:
		playerData["critter_known"] = GetNumCompanions("CRITTER")
		playerData["mount_known"] = GetNumCompanions("MOUNT")

		-- Lets create all the databases needed if this is the first time everything has been run.
		if not CompanionDB then
			InitDatabases()
		end
		playerData["critter_total"] = addon:GetMiniPetTotal(CompanionDB)
		playerData["mount_total"] = addon:GetMountTotal(CompanionDB)

		-- Scan for all known companions
		self:ScanCompanions(CompanionDB, playerData["critter_total"], playerData["mount_total"])

		if not autoupdatescan and scantype then
			PopulateRepFilters(RepFilters)	-- Update the table containing which reps to display
			self:UpdateFilters(CompanionDB, playerData, scantype)	-- Add filtering flags to the items

			-- Mark excluded items
			playerData.excluded_known, playerData.excluded_unknown = self:MarkExclusions(CompanionDB, scantype)

			if textdump then
				self:DisplayTextDump(CompanionDB)
			else
				self:DisplayFrame(playerData, VendorList, QuestList, ReputationList, SeasonalList, MobList, CustomList)
			end
		end
	end
end

-------------------------------------------------------------------------------
-- Item Exclusion Functions
-------------------------------------------------------------------------------

--- Marks all exclusions in the item database to not be displayed
-- @name Collectinator:MarkExclusions
-- @usage Collectinator:MarkExclusions(CompanionDB, "CRITTER")
-- @param DB Reference to the entire database.
-- @param scantype What type of scan occured: CRITTER, MOUNT, etc
-- @return All entries which are to be excluded in the database have their display flag marked to false.
function addon:MarkExclusions(DB, scantype)
	local exclusionlist = addon.db.profile.exclusionlist
	local ignored = not addon.db.profile.ignoreexclusionlist
	local countknown = 0
	local countunknown = 0

	for i in pairs(exclusionlist) do
		-- We may have a item in the exclusion list that has not been scanned yet
		-- check if the entry exists in DB first
		if DB[i] and ignored then
			DB[i]["Display"] = false
--[[
			local entrytype = GetSpellInfo(DB[i]["Type"])

			if not DB[i]["Known"] and entrytype == scantype then
				countknown = countknown + 1
			elseif entrytype == scantype then
				countunknown = countunknown + 1
			end
]]--
		end
	end
	return countknown, countunknown
end

--- Removes or adds a item to the exclusion list.
-- @name Collectinator:ToggleExclude
-- @usage Collectinator:ToggleExclude
-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] in the database which we want to exclude
-- @return The specified [http://www.wowwiki.com/SpellLink Spell ID] is excluded from the database.
function addon:ToggleExclude(SpellID)
	local exclusionlist = addon.db.profile.exclusionlist

	if exclusionlist[SpellID] then
		exclusionlist[SpellID] = nil
	else
		exclusionlist[SpellID] = true
	end
end

--- Prints all the ID's in the exclusion list out into chat.
-- @name Collectinator:ViewExclusionList
-- @usage Collectinator:ViewExclusionList()
-- @return All the entries in the exclusion list are printed out into chat.
function addon:ViewExclusionList()
	local exclusionlist = addon.db.profile.exclusionlist

	-- Parse all items in the exclusion list
	for i in pairs(exclusionlist) do
		self:Print(i .. ": " .. GetSpellInfo(i))
	end
end

--- Clears the exclusion list of all entries.
-- @name Collectinator:ClearExclusionList
-- @usage Collectinator:ClearExclusionList()
-- @return The exclusion list is cleared.
function addon:ClearExclusionList()
	local exclusionlist = addon.db.profile.exclusionlist
	exclusionlist = twipe(exclusionlist)
end

-------------------------------------------------------------------------------
-- Searching Functions
-------------------------------------------------------------------------------

-- Scans through the item database and toggles the flag on if the item is in the search criteria
function addon:SearchDB(DB, searchstring)
	if not searchstring then
		return
	end
	searchstring = strlower(searchstring)

	for SpellID in pairs(DB) do
		local item = DB[SpellID]
		item["Search"] = false

		if (sfind(strlower(SpellID), searchstring)
		    or (item["ItemID"] and sfind(strlower(item["ItemID"]), searchstring))
			    or (item["Name"] and sfind(strlower(item["Name"]), searchstring))
			    or (item["Locations"] and sfind(item["Locations"], searchstring))
			    or (item["Rarity"] and sfind(item["Rarity"], searchstring))) then
			item["Search"] = true
		end
	end
end

-- Goes through the item database and resets all the search flags
function addon:ResetSearch(DB)
	for SpellID in pairs(DB) do
		DB[SpellID]["Search"] = true
	end
end

-------------------------------------------------------------------------------
-- Text dumping functions
-------------------------------------------------------------------------------

-- Scans through the item database providing a string of comma seperated values for all item information
function addon:GetTextDump(DB, profession)
	local texttable = {}

	-- Add a header to the text table
	tinsert(texttable, format("Collectinator Text Dump for %s", profession))
	tinsert(texttable, "Text output of all items and acquire information.  Output is in the form of comma seperated values.\n")
	tinsert(texttable, "Spell ID, item Name, Skill Level, ARL Filter Flags, Acquire Methods, Known\n")

	for SpellID in pairs(DB) do
		local itemprof = GetSpellInfo(DB[SpellID]["Profession"])

		if itemprof == profession then
			-- Add Spell ID, Name and Skill Level to the list
			tinsert(texttable, SpellID)
			tinsert(texttable, ", ")
			tinsert(texttable, DB[SpellID]["Name"])
			tinsert(texttable, ", ")
			tinsert(texttable, DB[SpellID]["Level"])
			tinsert(texttable, ", [")

			-- Add in all the filter flags
			local flags = DB[SpellID]["Flags"]

			-- Find out which flags are marked as "true"
			for i = 1, 127, 1 do
				if flags[i] then
					tinsert(texttable, i)
					tinsert(texttable, ", ")
				end
			end
			tinsert(texttable, "], [")

			-- Find out which unique acquire methods we have
			local acquire = DB[SpellID]["Acquire"]
			local acquirelist = {}

			for i in pairs(acquire) do
				if (acquire[i]["Type"] == A_VENDOR) then
					acquirelist["Vendor"] = true
				elseif (acquire[i]["Type"] == A_QUEST) then
					acquirelist["Quest"] = true
				elseif (acquire[i]["Type"] == A_CRAFTED) then
					acquirelist["Crafted"] = true
				elseif (acquire[i]["Type"] == A_MOB) then
					acquirelist["Mob Drop"] = true
				elseif (acquire[i]["Type"] == A_SEASONAL) then
					acquirelist["Seasonal"] = true
				elseif (acquire[i]["Type"] == A_REPUTATION) then
					acquirelist["Reputation"] = true
				elseif (acquire[i]["Type"] == A_WORLD_DROP) then
					acquirelist["World Drop"] = true
				elseif (acquire[i]["Type"] == A_CUSTOM) then
					acquirelist["Custom"] = true
				elseif (acquire[i]["Type"] == A_ACHIEVEMENT) then
					acquirelist["Achivement"] = true
				end
			end

			-- Add all the acquire methods in
			for i in pairs(acquirelist) do
				tinsert(texttable, i)
				tinsert(texttable, ", ")
			end

			if (DB[SpellID]["Known"]) then
				tinsert(texttable, "], true\n")
			else
				tinsert(texttable, "], false\n")
			end

		end
	end

	return tconcat(texttable, "")
end
