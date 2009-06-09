--[[

****************************************************************************************

Collectinator

File date: @file-date-iso@ 
Project version: @project-version@

Author: Ackis

****************************************************************************************

]]--

local MODNAME	= "Collectinator"

Collectinator 	= LibStub("AceAddon-3.0"):NewAddon(MODNAME, "AceConsole-3.0", "AceEvent-3.0")

local addon = LibStub("AceAddon-3.0"):GetAddon(MODNAME)
local L	= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

--- **Collectinator** provides an interface for scanning companions and moutns to find what is missing.
-- There are a set of functions which allow you make use of the Collectinator database outside of Collectinator.\\
-- Collectinator supports all mounts/pets currently in World of Warcraft 3.1.
-- @class file
-- @name Collectinator.lua
-- @release @file-revision@

-------------------------------------------------------------------------------
-- Check to see if we have mandatory libraries loaded. If not, notify the user
-- which are missing and return.
-------------------------------------------------------------------------------
local MissingLibraries
do
	local REQUIRED_LIBS = {
		"AceLocale-3.0",
		"LibBabble-Boss-3.0",
		"LibBabble-Class-3.0",
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
end

local BFAC		= LibStub("LibBabble-Faction-3.0"):GetLookupTable()

-- Global Frame Variables
addon.optionsFrame = {}
addon.ScanButton = nil
addon.Frame = nil
addon.CollectinatorCopyFrame = nil
_G["CollectinatorTooltip"] = nil
_G["CollectinatorSpellTooltip"] = nil

-- Make global API calls local to speed things up
local GetSpellInfo = GetSpellInfo

local tostring = tostring
local tonumber = tonumber

local pairs = pairs
local select = select

local table = table
local twipe = table.wipe
local tremove = table.remove
local tconcat = table.concat
local tsort = table.sort
local tinsert = table.insert

local string = string
local format = format
local sfind = string.find
local smatch = string.match
local strlower = string.lower

--[[

	Initialization functions

]]--

-- Description: Function run when the addon is initialized.  Registers the slash commands, options, and database

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

			-- Sorting Options
			sorting = "Name",

			-- Display Options
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

			-- Filter Options
			filters = {
				-- General Filters
				general = {
					faction = true,
					known = false,
					unknown = true,
				},
				-- Obtain Options
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
				}
				-- Reputation Options
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
				},
			}
		}
	}

	addon.db = LibStub("AceDB-3.0"):New("CollectinatorDB2",defaults)

	if (not addon.db) then
		self:Print("Error: Database not loaded correctly.  Please exit out of WoW and delete the Collectinator database file (Collectinator.lua) found in: \\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\")
		return
	end

	self:SetupOptions()

	-- Register slash commands
	self:RegisterChatCommand("collectinator", "ChatCommand")

end

-- Description: Function run when the addon is enabled.  Registers events and pre-loads certain variables.

function addon:OnEnable()

	-- Watch for Companion Learned events
	self:RegisterEvent("COMPANION_LEARNED")

	-- Populate the repuatation level
	self:GetFactionLevels()

	--Create the button now for later use
	self:CreateScanButton()

	-- Add mini-pet/mount totals to the tab
	self:AddTabTotals()

end

-- Description: Run when the addon is disabled. Ace3 takes care of unregistering events, etc.

function addon:OnDisable()

	-- If we disable the addon when the GUI is up, hide it.
	if (addon.Frame) then
		addon.Frame:Hide()
	end

end

--[[

	Event handling functions

]]--

function addon:COMPANION_LEARNED()

	-- When we learn a new pet, we want to automatically scan the companions and update our saved variables
	self:Collectinator_Command(false, false)

end

--[[

	Player Data Acquisition Functions

]]--

do

	local GetNumFactions = GetNumFactions
	local GetFactionInfo = GetFactionInfo
	local CollapseFactionHeader = CollapseFactionHeader
	local ExpandFactionHeader = ExpandFactionHeader


	-- Description: Scans all reputations to get reputation levels to determine if the player can learn a reputation recipe

	function addon:GetFactionLevels(RepTable)

	-- Bug here when I reload UI
		if (not RepTable) then
			return
		end

		local t = {}

		-- Number of factions before we expand
		local numfactions = GetNumFactions()

		-- Lets expand all the headers
		for i=numfactions,1,-1 do
			local name, _, _, _, _, _, _, _, _, isCollapsed = GetFactionInfo(i)

			if (isCollapsed) then
				ExpandFactionHeader(i)
				t[name] = true
			end
		end

		-- Number of factions with everything expanded
		numfactions = GetNumFactions()

		-- Get the rep levels
		for i=1,numfactions,1 do
			local name,_,replevel = GetFactionInfo(i)

			-- If the rep is greater than neutral
			if (replevel > 4) then
				-- We use levels of 0, 1, 2, 3, 4 internally for reputation levels, make it corrospond here
				RepTable[name] = replevel - 4
			end
		end

		-- Collapse the headers again
		for i=numfactions,1,-1 do
			local name = GetFactionInfo(i)

			if (t[name]) then
				CollapseFactionHeader(i)
			end
		end

	end

end

--[[

	Companion DB functions

--]]

local maxfilterflags = 72

--- Adds a companion into the database.
-- @name Collectinator:AddCompanion
-- @usage Collectinator:AddCompanion(DB)
-- @param DB The database (array) which you wish to add data too.
-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entered to the database.
-- @param ItemID The [http://www.wowwiki.com/ItemLink Item ID] of the item, or nil
-- @param Rarity The rarity of the item.
-- @param CompanionType Type of entry added to the database.
-- @param Game Game version recipe was found in, for example, Original, BC, or Wrath.
-- @return None, array is passed as a reference.
function addon:AddCompanion(DB, SpellID, ItemID, Rarity, CompanionType, Game)

	-- Create an entry for this minipet
	DB[SpellID] = {}

	DB[SpellID]["Name"] = GetSpellInfo(SpellID) or ""
	DB[SpellID]["ItemID"] = ItemID
	DB[SpellID]["Rarity"] = Rarity
	DB[SpellID]["Type"] = CompanionType

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

	DB[SpellID]["Location"] = "Unknown"

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

	local numvars = select('#',...)
	local flags = DB[SpellID]["Flags"]

	-- Find out how many flags we're adding
	for i=1,numvars,1 do
		-- Get the value of the current flag
		local flag = select(i, ...)
		flags[flag] = true
	end
	

end

--- Adds acquire methods to a specific companion.
-- @name Collectinator:AddCompanionAcquire
-- @usage Collectinator:AddCompanionAcquire:(DB,2329,8,8)
-- @param DB The database (array) which you wish to add acquire methods too.
-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entered to the database.
-- @param ... A listing of acquire methods.  See [[database-documentation]] for a listing of acquire methods and how they behave.
-- @return None, array is passed as a reference.
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

--- Adds an item to a specific database listing (ie: vendor, mob, etc)
-- @name Collectinator:addLookupList
-- @usage Collectinator:addLookupList:(VendorDB,NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)
-- @param DB Database which the entry will be stored.
-- @param ID Unique identified for the entry.
-- @param Name Name of the entry.
-- @param Loc Location of the entry in the world.
-- @param Coordx X coordinate of where the entry is found.
-- @param Coordy Y coordinate of where the entry is found.
-- @param Faction Faction identifier for the entry.
-- @return None, array is passed as a reference.
function addon:addLookupList(DB, ID, Name, Loc, Coordx, Coordy, Faction)

	--[[
		For individual database structures, see Documentation
	]]--

	DB[ID] = {}
	DB[ID]["Name"] = Name

	if (Loc) then
		DB[ID]["Location"] = Loc
	else
		--@debug@
		--self:Print("Spell ID: " .. ID .. " (" .. DB[ID]["Name"] .. ") has an unknown location.")
		--@end-debug@
		DB[ID]["Location"] = L["Unknown Zone"]
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

--[[

	Scanning Functions

]]--

--- Gets a spell ID from a spell link.
-- @name GetIDFromLink
-- @usage Collectinator:GetIDFromLink(SpellLink)
-- @param SpellLink The [http://www.wowwiki.com/SpellLink SpellLink] which you wish to get the Spell ID from.
-- @return The spell ID of the passed [http://www.wowwiki.com/SpellLink SpellLink].
local function GetIDFromLink(SpellLink)

	--return smatch(SpellLink, "|H%w+:(%d+)")
	-- Faster matching per Neffi
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
	for i=1,numminipets,1 do
		-- Get the pet's name and spell ID
		local _,_,petspell = GetCompanionInfo("CRITTER",i)
		if (DB[petspell]) then
			DB[petspell]["Known"] = true
		else
			self:Print("Error: Pet with ID " .. petspell .. " not in database.")
		end
	end

	-- Parse all the mounts you currently have
	for i=1,nummounts,1 do
		-- Get the pet's name and spell ID
		local _,_,mountspell = GetCompanionInfo("MOUNT",i)
		if (DB[mountspell]) then
			DB[mountspell]["Known"] = true
		else
			self:Print("Error: Mount with ID ".. mountspell .. " not in database.")
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
	for i,SpellID in pairs(companionlist) do
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

	local reptable = nil

	local function CreateRepTable()

		local repdb = addon.db.profile.filters.rep

		reptable = {
			-- Old World
			[40] = repdb.argentdawn,
			[41] = repdb.bloodsail,
			[42] = repdb.cenarioncircle,
			[43] = repdb.thoriumbrotherhood,
			[44] = repdb.timbermaw,
			[45] = repdb.zandalar,
			-- BC
			[46] = repdb.aldor,
			[47] = repdb.ashtonguedeathsworn,
			[48] = repdb.cenarionexpedition,
			[49] = repdb.hellfire,
			[50] = repdb.consortium,
			[51] = repdb.keepersoftime,
			[52] = repdb.lowercity,
			[53] = repdb.nagrand,
			[54] = repdb.netherwing,
			[55] = repdb.scaleofthesands,
			[56] = repdb.scryer,
			[57] = repdb.shatar,
			[58] = repdb.shatteredsun,
			[59] = repdb.sporeggar,
			[60] = repdb.violeteye,
			-- Faction Cities
			[61] = repdb.city1,
			[62] = repdb.city2,
			[63] = repdb.city3,
			[64] = repdb.city4,
			[65] = repdb.city5,
			-- PVP
			[66] = repdb.pvp1,
			[67] = repdb.pvp2,
			[68] = repdb.pvp3,
			-- Wrath
			[71] = repdb.argentcrusade,
			[72] = repdb.frenzyheart,
			[73] = repdb.ebonblade,
			[74] = repdb.kirintor,
			[75] = repdb.sonsofhodir,
			[76] = repdb.kaluak,
			[77] = repdb.oracles,
			[78] = repdb.wyrmrest,
			[79] = repdb.wrathcommon1,
			[80] = repdb.wrathcommon2,
			[81] = repdb.wrathcommon3,
			[82] = repdb.wrathcommon4,
			[83] = repdb.wrathcommon5,
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

	-- Description: Scans a specific recpie to determine if it is to be displayed or not.

	function addon:CheckDisplayRecipe(Entry, playerFaction, playerClass)

		-- For flag info see comments at start of file in comments
		local filterdb = addon.db.profile.filters
		local flags = Entry["Flags"]

		-- See Documentation file for logic explanation
		-- Stage 1
		-- Loop through exclusive flags (hard filters)
		-- If one of these does not pass we do not display the recipe
		-- So to be more effecient we'll just leave this function if there's a false

		local generaldb = filterdb.general
		local obtaindb = filterdb.obtain

		-- Is this recipe in my currently selected profession?
		if (Entry["Profession"] ~= playerProfession) then
			return false
		end

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
	--[[
		-- Filter out "era" recipes

		if ((obtaindb.originalwow == false) and (Entry["Game"] == 0)) then
			return false
		end
		if ((obtaindb.bc == false) and (Entry["Game"] == 1)) then
			return false
		end
		if ((obtaindb.wrath == false) and (Entry["Game"] == 2)) then
			return false
		end
	--]]

		local bindingdb = filterdb.binding

		-- Include BoE Items in the scan? (if I want to see BoE items, only filter those that are not BoE)
		if (bindingdb.itemboe == false) and (flags[20] == true) then
			return false
		end

		-- Include BoP Items in the scan? (if I want to see BoP items, only filter those that are not BoP)
		if (bindingdb.itembop == false) and (flags[21] == true) then
			return false
		end

		-- Include BoA Items in the scan? (if I want to see BoA items, only filter those that are not BoA)
		if (bindingdb.itemboa == false) and (flags[22] == true) then
			return false
		end

		local profdb = filterdb.profs

			if (profdb.deathknight == false) and (flags[25] == true) then
				if (profdb.druid == true) and (flags[26] == true) or
				(profdb.hunter == true) and (flags[27] == true) or
				(profdb.mage == true) and (flags[28] == true) or
				(profdb.paladin == true) and (flags[29] == true) or
				(profdb.priest == true) and (flags[30] == true) or
				(profdb.shaman == true) and (flags[31] == true) or
				(profdb.rogue == true) and (flags[32] == true) or
				(profdb.warlock == true) and (flags[33] == true) or
				(profdb.warrior == true) and (flags[34] == true) or
				(profdb.warrior == true) and (flags[35] == true) or
				(profdb.warrior == true) and (flags[36] == true) then
					--do nothing
				else
					return false
				end
			end

		if (not CheckReputationDisplay(flags)) then
			return false
		end
	--[[
		-- Stage 2
		-- loop through nonexclusive (soft filters) flags until one is true
		-- If one of these is true (ie: we want to see trainers and there is a trainer flag) we display the recipe

		-- Display trainer recipes
		if (obtaindb.trainer == true) and (flags[3] == true) then
			return true
		end

		-- Display vendor recipes
		if (obtaindb.vendor == true) and (flags[4] == true) then
			return true
		end

		-- Display instance recipes
		if (obtaindb.instance == true) and (flags[5] == true) then
			return true
		end

		-- Display raid recipes
		if (obtaindb.raid == true) and (flags[6] == true) then
			return true
		end

		-- Display seasonal recipes
		if (obtaindb.seasonal == true) and (flags[7] == true) then
			return true
		end

		-- Display quest recipes
		if (obtaindb.quest == true) and (flags[8] == true) then
			return true
		end

		-- Display PVP recipes
		if (obtaindb.PVP == true) and (flags[9] == true) then
			return true
		end

		-- Display world drop recipes
		if (obtaindb.worlddrop == true) and (flags[10] == true) then
			return true
		end

		-- Display mob drop recipes
		if (obtaindb.mobdrop == true) and (flags[11] == true) then
			return true
		end

		-- Display discovery recipes
		if (obtaindb.discovery == true) and (flags[12] == true) then
			return true
		end

		-- If we get here it means that no flags matched our values
		return false
]]--
		return true
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
	RepTable[BFAC["Gnomergan Exiles"]] = repfilters.city3
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

-- Description: Scans the recipe listing and updates the filters according to user preferences
function addon:UpdateFilters(DB,  playerData, scantype)

	playerData.total = 0
	playerData.known = 0
	playerData.total_filtered = 0
	playerData.known_filtered = 0

	local displayflag = false

	-- Parse through all the entries in the array.
	for ID, item in pairs(DB) do

		-- Only interested in the current type (mount/critter/etc)
		if (item["Type"] == scantype) then

			-- Determine if we are to display this item or not
			--displayflag = self:CheckDisplayitem(item, AllSpecialtiesTable, playerProfessionLevel, scantype, playerSpecialty, playerFaction, playerClass)
displayflag = true
			playerData.total = playerData.total + 1
			playerData.known = playerData.known + (item["Known"] == true and 1 or 0)

			if (displayflag == true) then
				playerData.total_filtered = playerData.total_filtered + 1
				playerData.known_filtered = playerData.known_filtered + (item["Known"] == true and 1 or 0)

				-- Include known
				if (addon.db.profile.filters.general.known == false) and (item["Known"] == true) then
					displayflag = false
				end
				-- Include unknown
				if (addon.db.profile.filters.general.unknown == false) and (item["Known"] == false) then
					displayflag = false
				end
			end
		else
				displayflag = false
		end

		-- Set the display flag
		DB[ID]["Display"] = displayflag

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

	local CompanionDB = nil

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
	-- @field totalknownmounts Total number of known mounts.
	-- @field totalpets Total number of mini-pets.
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

	--- Populates the internal companion database with all the mini-pets and mounts.
	-- @name Collectinator:InitCompanionDB
	-- @usage Collectinator:InitCompanionDB(CompanionDB)
	-- @param DB Companion database
	-- @return Database is populated with all appropiate entries for pets and mounts.  Total number of entries are returned.
	local function InitCompanionDB(DB)

		local pet = 0
		local mount = 0
		
		pet = addon:MakeMiniPetTable(DB)
		mount = addon:MakeMountTable(DB)

		return pet, mount

	end

	--- Scans the acquire methods for the location and update the entry in the database with them.
	-- @name Collectinator:GetLocations
	-- @usage Collectinator:GetLocations([http://www.wowwiki.com/SpellLink Spell ID])
	-- @param SpellID The [http://www.wowwiki.com/SpellLink Spell ID] of the item being entry to the database.
	-- @return Locations are populated for the given spell.
	function addon:GetLocations(SpellID)

		if (CompanionDB) and (CompanionDB[SpellID]) then

			locationlist = {}
			locationchecklist = {}

			local acquire = CompanionDB[SpellID]["Acquire"]

			for i in pairs(acquire) do

				-- Vendor
				if (acquire[i]["Type"] == 1) then
					if (VendorList) then
						--@debug@
						if (not VendorList[acquire[i]["ID"]]) then
							self:Print("Missing vendor in database: " .. acquire[i]["ID"])
						end
						--@end-debug@
						local location = VendorList[acquire[i]["ID"]]["Location"]
						if (not locationchecklist[location]) then
							-- Add the location to the list
							tinsert(locationlist,location)
							locationchecklist[location] = true
						end
					end
				-- Quest
				elseif (acquire[i]["Type"] == 2) then
					if (QuestList) then
						--@debug@
						if (not QuestList[acquire[i]["ID"]]) then
							self:Print("Missing quest in database: " .. acquire[i]["ID"])
						end
						--@end-debug@
						local location = QuestList[acquire[i]["ID"]]["Location"]
						if (not locationchecklist[location]) then
							-- Add the location to the list
							tinsert(locationlist,location)
							locationchecklist[location] = true
						end
					end
				-- Mob Drop
				elseif (acquire[i]["Type"] == 4) then
					if (MobList) then
						--@debug@
						if (not MobList[acquire[i]["ID"]]) then
							self:Print("Missing mob in database: " .. acquire[i]["ID"])
						end
						--@end-debug@
						local location = MobList[acquire[i]["ID"]]["Location"]
						if (not locationchecklist[location]) then
							-- Add the location to the list
							tinsert(locationlist,location)
							locationchecklist[location] = true
						end
					end
				end
			end

			-- Sort the list by the name
			tsort(locationlist, function(a, b) return a < b end)

			-- Return the list as a string
			if (#locationlist == 0)then
				return ""
			else
				return tconcat(locationlist,",")
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
		if (CustomList == nil) then
			CustomList = {}
			addon:InitCustom(CustomList)
		end

		-- Initializes the mob list
		if (MobList == nil) then
			MobList = {}
			addon:InitMob(MobList)
		end

		-- Initializes the quest list
		if (QuestList == nil) then
			QuestList = {}
			addon:InitQuest(QuestList)
		end

		-- Initializes the reputation list
		if (ReputationList == nil) then
			ReputationList = {}
			addon:InitReputation(ReputationList)
		end

		-- Initializes the season list
		if (SeasonalList == nil) then
			SeasonalList = {}
			addon:InitSeasons(SeasonalList)
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

		-- Initializes the companion list
		if (CompanionDB == nil) then
			CompanionDB = {}
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

		-- First time a scan has been run, we need to get the player specifc data, specifically faction information, profession information and other pertinant data.
		if (playerData == nil) then
			playerData = InitPlayerData()
		end

		-- Update the pet/mount totals:
		playerData["totalknownpets"] = GetNumCompanions("CRITTER")
		playerData["totalknownmounts"] = GetNumCompanions("MOUNT")

		-- Lets create all the databases needed if this is the first time everything has been run.
		if (CompanionDB == nil) then
			InitDatabases()
		end

		playerData["totalpets"], playerData["totalmounts"] = InitCompanionDB(CompanionDB)

		-- Scan for all known companions
		self:ScanCompanions(CompanionDB, playerData["totalknownpets"], playerData["totalknownmounts"])

		if (not autoupdatescan) then

			-- Update the table containing which reps to display
			PopulateRepFilters(RepFilters)

			-- Add filtering flags to the recipes
			self:UpdateFilters(CompanionDB, playerData, scantype)

			-- Mark excluded recipes
			playerData.excluded_known, playerData.excluded_unknown = self:MarkExclusions(CompanionDB, scantype)

			if (textdump == true) then
				self:DisplayTextDump(CompanionDB, playerData.playerProfession)
			else
				-- Sort the recipe list now
				local sortedindex = self:SortDatabase(CompanionDB)

				--self:CreateFrame(CompanionDB, sortedindex, playerData, VendorList, QuestList, ReputationList, SeasonalList, MobList, CustomList)

				for i,j in pairs(sortedindex) do if (CompanionDB[j]["Known"] == false) then addon:DumpSpell(j) end end
			end

		end

	end

	-- Debug function to dump a spell out
	function addon:DumpSpell(SpellID)

		local clist = CompanionDB

		if (not clist) then
			return
		end

		local mlist, qlist, replist, seasonlist, vlist, custlist = MobList, QuestList, ReputationList, SeasonalList, VendorList, CustomList

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
					if (vlist[i]) then
						self:Print(vlist[i]["Name"])
					end
				elseif (acquiretype == 2) then
					self:Print("Quest: " .. acquire[i]["ID"])
					if (qlist[i]) then
						self:Print(qlist[i]["Name"])
					end
				elseif (acquiretype == 3) then
					self:Print("Crafted: " .. GetSpellInfo(acquire[i]["ID"]))
					self:Print("Created by: " .. GetSpellInfo(acquire[i]["Crafted"]))
				elseif (acquiretype == 4) then
					self:Print("Mob: " .. acquire[i]["ID"])
					if (mlist[i]) then
						self:Print(mlist[i]["Name"])
					end
				elseif (acquiretype == 5) then
					self:Print("Seasonal: " .. acquire[i]["ID"])
					if (seasonlist[i]) then
						self:Print(seasonlist[i]["Name"])
					end
				elseif (acquiretype == 6) then
					self:Print("Reputation: " .. acquire[i]["ID"])
					self:Print("Rep Level: " .. acquire[i]["RepLevel"])
					if (replist[acquire[i]["ID"]]) then
						self:Print(replist[acquire[i]["ID"]]["Name"])
					end
					if (vlist[acquire[i]["RepVendor"]]) then
						self:Print("Rep Vendor: " .. vlist[acquire[i]["RepVendor"]]["Name"] .. " (" .. acquire[i]["RepVendor"] .. ")")
					end
				elseif (acquiretype == 7) then
					self:Print("World Drop: " .. acquire[i]["ID"])
				elseif (acquiretype == 8) then
					self:Print("Custom: " .. acquire[i]["ID"])
					if (custlist[i]) then
						self:Print(custlist[i]["Name"])
					end
				elseif (acquiretype == 9) then
					self:Print("Achievement: " .. acquire[i]["ID"])
				else
					self:Print("Acquire type: " .. acquire[i]["Type"] .. " ID: " .. acquire[i]["ID"])
				end
			end

			local flags = x["Flags"]
			local flagstr = ""

			if (flags[1] == true) then
				flagstr = flagstr .. "(A),"
			end
			if (flags[2] == true) then
				flagstr = flagstr .. "(H),"
			end
			if (flags[3] == true) then
				flagstr = flagstr .. "Vendor,"
			end
			if (flags[4] == true) then
				flagstr = flagstr .. "Quest,"
			end
			if (flags[5] == true) then
				flagstr = flagstr .. "Crafter,"
			end
			if (flags[6] == true) then
				flagstr = flagstr .. "Instance,"
			end
			if (flags[7] == true) then
				flagstr = flagstr .. "Raid,"
			end
			if (flags[8] == true) then
				flagstr = flagstr .. "Seasonal,"
			end
			if (flags[9] == true) then
				flagstr = flagstr .. "World,"
			end
			if (flags[10] == true) then
				flagstr = flagstr .. "Mob,"
			end
			if (flags[11] == true) then
				flagstr = flagstr .. "TCG,"
			end
			if (flags[12] == true) then
				flagstr = flagstr .. "Special Event,"
			end
			if (flags[13] == true) then
				flagstr = flagstr .. "CE,"
			end
			if (flags[14] == true) then
				flagstr = flagstr .. "Not in game,"
			end
			if (flags[15] == true) then
				flagstr = flagstr .. "Achievement,"
			end
			if (flags[16] == true) then
				flagstr = flagstr .. "PVP,"
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
				flagstr = flagstr .. "BoE,"
			end
			if (flags[21] == true) then
				flagstr = flagstr .. "BoP,"
			end
			if (flags[22] == true) then
				flagstr = flagstr .. "BoA,"
			end
			if (flags[23] == true) then
				flagstr = flagstr .. "23,"
			end
			if (flags[24] == true) then
				flagstr = flagstr .. "24,"
			end
			if (flags[25] == true) then
				flagstr = flagstr .. "Alchy,"
			end
			if (flags[26] == true) then
				flagstr = flagstr .. "BS,"
			end
			if (flags[27] == true) then
				flagstr = flagstr .. "Cook,"
			end
			if (flags[28] == true) then
				flagstr = flagstr .. "Enchanting,"
			end
			if (flags[29] == true) then
				flagstr = flagstr .. "Engineering,"
			end
			if (flags[30] == true) then
				flagstr = flagstr .. "FA,"
			end
			if (flags[31] == true) then
				flagstr = flagstr .. "Inscription,"
			end
			if (flags[32] == true) then
				flagstr = flagstr .. "JC,"
			end
			if (flags[33] == true) then
				flagstr = flagstr .. "LW,"
			end
			if (flags[34] == true) then
				flagstr = flagstr .. "Mining,"
			end
			if (flags[35] == true) then
				flagstr = flagstr .. "Tailoring,"
			end
			if (flags[36] == true) then
				flagstr = flagstr .. "Fishing,"
			end
			if (flags[37] == true) then
				flagstr = flagstr .. "37,"
			end
			if (flags[38] == true) then
				flagstr = flagstr .. "38,"
			end
			if (flags[39] == true) then
				flagstr = flagstr .. "39,"
			end

			self:Print("Flags: " .. flagstr)
			flagstr = ""

			--self:Print("Reps: " .. flagstr)

		else
			self:Print("Spell ID not in recipe database.")
		end

	end

end

--[[

	Sorting Functions

]]--

do
	-- Sorting functions
	local sortFuncs = nil

	-- Create a new array for the sorted index
	local SortedRecipeIndex = {}

	-- Description: Sorts the recipe Database depending on the settings defined in the database.
	function addon:SortDatabase(DB)

		if (not sortFuncs) then
			sortFuncs = {}

			sortFuncs["Name"] = function(a, b)
				return DB[a]["Name"] < DB[b]["Name"]
			end

			-- Will only sort based off of the first acquire type
			sortFuncs["Acquisition"] = function (a, b)
				local reca = DB[a]["Acquire"][1]
				local recb = DB[b]["Acquire"][1]
				if (reca and recb) then
					if (reca["Type"] == recb["Type"]) then
						return DB[a]["Name"] < DB[b]["Name"]
					else
						return reca["Type"] < recb["Type"]
					end
				else
					return not not reca
				end
			end

			-- Will only sort based off of the first acquire type
			sortFuncs["Location"] = function (a, b)
				-- We do the or "" because of nil's, I think this would be better if I just left it as a table which was returned
				local reca = DB[a]["Locations"] or ""
				local recb = DB[b]["Locations"] or ""
				reca = smatch(reca,"(%w+),") or ""
				recb = smatch(recb,"(%w+),") or ""
				if (reca == recb) then
					return DB[a]["Name"] < DB[b]["Name"]
				else
					return (reca < recb)
				end
			end
		end
		twipe(SortedRecipeIndex)

		-- Get all the indexes of the RecipeListing
		for n, v in pairs(DB) do
			tinsert(SortedRecipeIndex, n)
		end

		tsort(SortedRecipeIndex, sortFuncs[addon.db.profile.sorting])

		return SortedRecipeIndex

	end

end

--[[

	Recipe Exclusion Functions

--]]

-- Description: Marks all exclusions in the recipe database to not be displayed

function addon:MarkExclusions(DB,scantype)

	local exclusionlist = addon.db.profile.exclusionlist
	local countknown = 0
	local countunknown = 0

	local ignored = not addon.db.profile.ignoreexclusionlist

	for i in pairs(exclusionlist) do

		-- We may have a recipe in the exclusion list that has not been scanned yet
		-- check if the entry exists in DB first
		if (DB[i]) then
			if (ignored) then
				DB[i]["Display"] = false
			end

			local tmpprof = GetSpellInfo(DB[i]["Type"])
			if (DB[i]["Known"] == false and tmpprof == prof) then
				countknown = countknown + 1
			elseif (tmpprof == prof) then
				countunknown = countunknown + 1
			end

		end

	end

	return countknown, countunknown

end

-- Description: Removes or adds a recipe to the exclusion list.

function addon:ToggleExcludeRecipe(SpellID)

	local exclusionlist = addon.db.profile.exclusionlist

	-- Remove the Spell from the exclusion list
	if (exclusionlist[SpellID]) then

		exclusionlist[SpellID] = nil

	else

		exclusionlist[SpellID] = true

	end

end

-- Description: Prints all the ID's in the exclusion list out into chat.

function addon:ViewExclusionList()

	local exclusionlist = addon.db.profile.exclusionlist

	-- Parse all items in the exclusion list
	for i in pairs(exclusionlist) do
		self:Print(i .. ": " .. GetSpellInfo(i))
	end

end

function addon:ClearExclusionList()

	local exclusionlist = addon.db.profile.exclusionlist

	-- Nuke our exclusion table
	exclusionlist = twipe(exclusionlist)

end

--[[

	Searching Functions

]]--

-- Description: Scans through the recipe database and toggles the flag on if the item is in the search criteria

function addon:SearchDB(DB, searchstring)

	if (searchstring) then

		searchstring = strlower(searchstring)

		-- Go through the entire database
		for SpellID in pairs(DB) do

			-- Get the Spell object
			local recipe = DB[SpellID]

			-- Set the search as false automatically
			recipe["Search"] = false

			-- Allow us to search by spell ID
			if sfind(strlower(SpellID),searchstring) or

				-- Allow us to search byitem ID
				(recipe["ItemID"] and sfind(strlower(recipe["ItemID"]),searchstring)) or

				-- Allow us to search by name
				(recipe["Name"] and sfind(strlower(recipe["Name"]),searchstring)) or

				-- Allow us to search by locations
				(recipe["Locations"] and sfind(recipe["Locations"],searchstring)) or

				-- Allow us to search by specialty
				(recipe["Specialty"] and sfind(recipe["Specialty"],searchstring)) or
				
				-- Allow us to search by skill level
				(recipe["Level"] and sfind(recipe["Level"],searchstring)) or

				-- Allow us to search by Rarity
				(recipe["Rarity"] and sfind(recipe["Rarity"],searchstring)) then

					recipe["Search"] = true

			end

		end

	end

end

-- Description: Goes through the recipe database and resets all the search flags

function addon:ResetSearch(DB)

	for SpellID in pairs(DB) do
		DB[SpellID]["Search"] = true
	end

end

--[[

	Text dumping functions

]]--

-- Description: Scans through the recipe database providing a string of comma seperated values for all recipe information

function addon:GetTextDump(DB, profession)

	local texttable = {}

	--@debug@
	self:Print("DEBUG: Getting text dump for: " .. profession)
	--@end-debug@

	-- Add a header to the text table
	tinsert(texttable,format("Collectinator Text Dump for %s",profession))
	tinsert(texttable,"Text output of all recipes and acquire information.  Output is in the form of comma seperated values.\n")
	tinsert(texttable,"Spell ID, Recipe Name, Skill Level, ARL Filter Flags, Acquire Methods, Known\n")

	for SpellID in pairs(DB) do

		local recipeprof = GetSpellInfo(DB[SpellID]["Profession"])

		if (recipeprof == profession) then

			-- Add Spell ID, Name and Skill Level to the list
			tinsert(texttable,SpellID)
			tinsert(texttable,",")
			tinsert(texttable,DB[SpellID]["Name"])
			tinsert(texttable,",")
			tinsert(texttable,DB[SpellID]["Level"])
			tinsert(texttable,",[")

			-- Add in all the filter flags
			local flags = DB[SpellID]["Flags"]

			-- Find out which flags are marked as "true"
			for i=1,127,1 do
				if (flags[i] == true) then
					tinsert(texttable,i)
					tinsert(texttable,",")
				end
			end

			tinsert(texttable,"],[")

			-- Find out which unique acquire methods we have
			local acquire = DB[SpellID]["Acquire"]
			local acquirelist = {}

			for i in pairs(acquire) do
				if (acquire[i]["Type"] == 1) then
					acquirelist["Trainer"] = true
				elseif (acquire[i]["Type"] == 2) then
					acquirelist["Vendor"] = true
				elseif (acquire[i]["Type"] == 3) then
					acquirelist["Mob Drop"] = true
				elseif (acquire[i]["Type"] == 4) then
					acquirelist["Quest"] = true
				elseif (acquire[i]["Type"] == 5) then
					acquirelist["Seasonal"] = true
				elseif (acquire[i]["Type"] == 6) then
					acquirelist["Reputation"] = true
				elseif (acquire[i]["Type"] == 7) then
					acquirelist["World Drop"] = true
				elseif (acquire[i]["Type"] == 8) then
					acquirelist["Custom"] = true
				end
			end

			-- Add all the acquire methods in
			for i in pairs(acquirelist) do
				tinsert(texttable,i)
				tinsert(texttable,",")
			end

			if (DB[SpellID]["Known"]) then
				tinsert(texttable,"],true\n")
			else
				tinsert(texttable,"],false\n")
			end

		end
	end

	return tconcat(texttable,"")

end
