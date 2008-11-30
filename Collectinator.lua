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

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

-- Make functions local to speed things up
local GetNumCompanions = GetNumCompanions
local select = select
local tinsert = table.insert
local twipe = table.wipe

local maxfilterflags = 60

local guildname = GetGuildInfo("player")

if (guildname == "Team Ice") then

	addon:Print("Not allowed to use this addon.")
	return

end

function addon:OnInitialize()

	self.db = LibStub("AceDB-3.0"):New("CollectinatorDB", defaults, "char")

	self:SetupOptions()

	-- Register slash commands
	self:RegisterChatCommand("collectinator", "ChatCommand")

	-- Set default options, which are to include everything in the scan
	self.db:RegisterDefaults(
	{
		profile = {

			companionlist = {},
			companionexclusions = {},

			filters = {
					general = {
						faction = false,
						known = true,
						unknown = false,
					},
			}
		}
	})

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

	if (not input) or (input and input:trim() == "") or (string.lower(input) == string.lower("About")) then
		-- Open About panel if there's no parameters or if the parameter is About
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["About"])
	end

end

-- Function run when the even COMPANION_LEARNED is raised.

function addon:COMPANION_LEARNED()

	-- When we learn a new pet, we want to automatically scan the companions and update our saved variables
	self:ScanCompanions()

end

do

	-- Master database of mini-pets and mounts
	local companiondb = nil

	-- Total numbers in the database
	local totalminipets = 0
	local totalmounts = 0

	-- Description: Loads all information about mini-pets into the database
	-- Expected result: Listing of companions updated with information.
	-- Input: Database to update
	-- Output: Database pased as reference.

	local function CreateCompanionList()

		local totalminipets = 0
		local totalmounts = 0

		-- Create the master list of all mini-pets
		if (companiondb == nil) then

			companiondb = {}
			totalminipets = addon:MakeMiniPetTable(companiondb)
			totalmounts = addon:MakeMountTable(companiondb)

		end

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
		totalminipets, totalmounts = CreateCompanionList(companiondb)

		addon:CheckForKnownCompanions(companiondb)

		addon:UpdateFilters(companiondb)

		addon:GetExclusions(companiondb)

		addon:ShowCheckList(companiondb)

	end

	function addon:GetDB()

		return companiondb

	end

end

local function CheckFilter(spellid)

	return true

end

function addon:UpdateFilters(db)

	local display = false

	-- Parse the database
	for spellid in pairs(db) do

		display = CheckFilter(db[spellid])
		db[spellid]["Display"] = display

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

function addon:ShowCheckList(db)

	self:Print("Right now this is temporary until I get the backend finished, then I'll do the GUI.")

	-- Parse the database
	for spellid in pairs(db) do

		if db[spellid]["Known"] == false then
			self:Print("Unkown companion: " .. spellid .. " " .. db[spellid]["Name"])
		end

	end

end

-- Description:  Scans the database and the local list of companions and flags which ones you know
-- Expected result: Database is updated with flags for known companions
-- Input: Database
-- Output: None.

function addon:CheckForKnownCompanions(PetDB)

	local companionlist = addon.db.profile.companionlist

	-- Scan through all the entries we've saved
	for i,spellid in pairs(companionlist) do

		-- If the entry exists, mark it as known
		if (PetDB[spellid]) then

			PetDB[spellid]["Known"] = true

		-- If the entry doesn't exist raise an error
		else

			self:Print("Spell ID: " .. spellid .. " not found.")

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


	self:Print("DEBUG: Total mini-pets known: " .. numminipets)
	self:Print("DEBUG: Total mounts known: " .. nummounts)

end

-- Adds a companion (based off of spell ID) to the database.  Also will add aquisition, faction, reputation, location, and filtering flags.
-- Arguments: Spell ID of mini-pet, aquisition information, faction information, reputation information, location, coordinate information, arbitrary number of flags
-- Return values: none

function addon:AddCompanion(DB, SpellID, ItemID, Rarity, CompanionType)

	-- Create an entry for this minipet
	DB[SpellID] = {}

	DB[SpellID]["Name"] = GetSpellInfo(SpellID) or ""
	DB[SpellID]["ItemID"] = ItemID
	DB[SpellID]["Rarity"] = Rarity
	DB[SpellID]["Type"] = CompanionType

	DB[SpellID]["Owned"] = false
	DB[SpellID]["Display"] = false
	DB[SpellID]["Search"] = false

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

	-- Populate the location field with all the data
	--RecipeDB[SpellID]["Locations"] = self:GetRecipeLocations(SpellID)

end

