--[[

****************************************************************************************

Collectinator

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

Author: Ackis

****************************************************************************************

Still in development

Please see Wowace.com for more information.

****************************************************************************************

]]--

--/script Collectinator:DoCompleteScan()

local MODNAME	= "Collectinator"

Collectinator 	= LibStub("AceAddon-3.0"):NewAddon(MODNAME, "AceConsole-3.0", "AceEvent-3.0")

local addon		= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

-- Lets check to see if we have the needed libraries loaded (these are manditory to run)
if (not LibStub:GetLibrary("LibBabble-Faction-3.0", true)) then

	self:Print("LibBabble-Faction-3.0 not loaded.  Addon cannot run.")
	return

end

--[[

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

--]]

local BFAC		= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

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
					profession = false,
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
				},
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

	-- Total numbers in the database
	local totalminipets = 0
	local totalmounts = 0

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
			--addon:InitVendor(VendorList)
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

	end

	-- Description: Loads all information about mini-pets into the database
	-- Expected result: Listing of companions updated with information.
	-- Input: Database to update
	-- Output: Database pased as reference.

	local function CreateCompanionList()

		local totalminipets = 0
		local totalmounts = 0

		InitDatabases()

		totalminipets = addon:MakeMiniPetTable(CompanionDB)
		totalmounts = addon:MakeMountTable(CompanionDB)

		return totalminipets, totalmounts

	end

	-- Description: Scans your known companions, loads the database, marks which are known, and loads the display
	-- Expected result: All functions are done in a logical order
	-- Input: None
	-- Output: Displays the GUI

	function addon:DoCompleteScan()

		-- Scan for what companions we know/don't know
		addon:ScanCompanions()

		-- Load the database and get the number of entries in it
		totalminipets, totalmounts = CreateCompanionList()

		addon:CheckForKnownCompanions(CompanionDB)

		addon:UpdateFilters(CompanionDB)

		addon:GetExclusions(CompanionDB)

		addon:ShowCheckList(CompanionDB)

	end

	function addon:GetDB()

		return CompanionDB

	end

end

do

	local profmap = {
		["ALCHEMY"] = 25,
		["BLACKSMITH"] = 26,
		["COOKING"] = 27,
		["ENCHANT"] = 28,
		["ENGINEER"] = 29,
		["FIRST AID"] = 30,
		["INSCRIPTION"] = 31,
		["JEWELCRAFTING"] = 32,
		["LEATHERWORKING"] = 33,
		["SMELTING"] = 34,
		["TAILORING"] = 35,
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


	function addon:CheckFilter(Spell,playerFaction,playerProf)

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

		if (generaldb.profession == false) and (flags[profmap[playerProf]] == false) then
			return false
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

		-- If we get here it means that no flags matched our values
		return false

	end

end

function addon:UpdateFilters(db)

	local display = false
	local playerFaction = UnitFactionGroup("player")

	-- Parse the database
	for SpellID in pairs(db) do
		display = addon:CheckFilter(db[SpellID],playerFaction)
		db[SpellID]["Display"] = display
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

function addon:ShowCheckList(DB)

	--@non-debug@
	self:Print("DEBUG: This command is only availible for testing purposes.")
	--@end-non-debug@

	--@debug@

	-- Parse the database
	self:Print("DEBUG: Dumping the database.")
	for SpellID in pairs(DB) do
		if (DB[SpellID]["Known"] == false) and (DB[SpellID]["Display"] == true) then
			self:Print("Unkown companion: " .. SpellID .. " " .. DB[SpellID]["Name"])
			--[[
			local acquire = DB[SpellID]["Acquire"]
			self:Print("Acquire methods:")
			for i in pairs(acquire) do
				self:Print("Acquire type: " .. acquire[i]["Type"] .. " ID: " .. acquire[i]["ID"])
			end
			self:Print("Filter flags:")
			local flags = DB[SpellID]["Flags"]
			for i in pairs(flags) do
				if (flags[i] == true) then
					self:Print(i)
				end
			end
			]]--
		end
	end
	--@end-debug@

	--@debug@
	-- Parse the exclusion list
	local exclusionlist = addon.db.profile.companionexclusions

	self:Print("DEDBUG: Exclusion list by spell ID:")
	for i in pairs(exclusionlist) do
		self:Print(i)
	end
	--@end-debug@

end

-- Description:  Scans the database and the local list of companions and flags which ones you know
-- Expected result: Database is updated with flags for known companions
-- Input: Database
-- Output: None.

function addon:CheckForKnownCompanions(PetDB)

	local companionlist = addon.db.profile.companionlist

	-- Scan through all the entries we've saved
	for i,SpellID in pairs(companionlist) do
		-- If the entry exists, mark it as known
		if (PetDB[SpellID]) then
			PetDB[SpellID]["Known"] = true
		-- If the entry doesn't exist raise an error
		else
			local name = GetSpellInfo(SpellID)
			self:Print("Companion: " .. name .. " (" .. SpellID .. ") not found in database.")
		end
	end

end

-- Description: Will scan your companions (mini-pets and mounts)
-- Expected result: Listing of companions updated with information.
-- Input: Database
-- Output: None.

function addon:ScanCompanions()

	-- Find out how many companions we have learnt
	local numminipets = GetNumCompanions("CRITTER")
	local nummounts = GetNumCompanions("MOUNT")

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

	-- Parse all the mounts you currently have
	for i=1,nummounts do
		-- Get the pet's name and spell ID
		local _,_,mountspell = GetCompanionInfo("MOUNT",i)
		-- Add the mini-pet to the list of pets we save
		tinsert(butt,mountspell)
	end

	--@debug@
	self:Print("DEBUG: Total mini-pets known: " .. numminipets)
	self:Print("DEBUG: Total mounts known: " .. nummounts)
	--@end-debug@

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
	DB[SpellID]["Display"] = false
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
			local Profession = select(i, ...)
			acquire[index]["Profession"] = Profession
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
