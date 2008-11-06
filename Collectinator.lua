--[[

****************************************************************************************

Collectinator

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

Author: Ackis on Illidan US Horde

****************************************************************************************

Still in development

Please see Wowace.com for more information.

****************************************************************************************

]]--

local MODNAME			= "Collectinator"

Collectinator 			= LibStub("AceAddon-3.0"):NewAddon(MODNAME, "AceConsole-3.0", "AceEvent-3.0")

local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

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
local tinsert = tinsert

local guildname = GetGuildInfo("player")

if (guildname == "Team Ice") then

	addon:Print("Not allowed to use this addon.")
	return

end

-- Returns configuration options

local function giveOptions()

	local command_options = {
	    type = "group",
	    args =
		{
			header1 =
			{
				order = 5,
				type = "header",
				name = "",
			},
			version =
			{
				order = 5,
				type = "description",
				name = "Version: 0.10\n",
			},
			showchecklist = 
			{
				type = "execute",
				name = "Show Checklist",
				desc = "Displays the checklist showing which collectable items you are missing.",
				func = function(info) addon:ShowChecklist() end,
				order = 40,
			},
			scancompanions = 
			{
				type = "execute",
				name = "Scan Companions",
				desc = "Scans for companions, updating the ones that you currently have.",
				func = function(info) addon:ScanCompanions() end,
				order = 50,
			},
		}
	}

	return command_options

end

-- Returns configuration options for profiling

local function giveProfiles()

	local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(addon.db)
	return profiles

end

-- Loaded at startup, sets configuration options, the GUI configuration options and registers slash commands

function addon:OnInitialize()

	local AceConfigReg = LibStub("AceConfigRegistry-3.0")
	local AceConfigDialog = LibStub("AceConfigDialog-3.0")

	self.db = LibStub("AceDB-3.0"):New("CollectinatorDB", defaults, "char")

	-- Create the options with Ace3
	LibStub("AceConfig-3.0"):RegisterOptionsTable("Collectinator",giveOptions)
	AceConfigReg:RegisterOptionsTable("Collectinator Profile",giveProfiles)

	-- Add the options to blizzard frame
	self.optionsFrame = AceConfigDialog:AddToBlizOptions("Collectinator","Collectinator")

	-- Add in the about panel to the Bliz options (but not the ace3 config)
	if LibStub:GetLibrary("LibAboutPanel", true) then

		self.optionsFrame["About"] = LibStub:GetLibrary("LibAboutPanel").new(MODNAME, MODNAME)

	else

		self:Print("Lib About Panel not loaded.")

	end

	self.optionsFrame["Profile"] = AceConfigDialog:AddToBlizOptions("Collectinator Profile", "Profile", "Collectinator")

	-- Register slash commands
	self:RegisterChatCommand("collectinator", "ChatCommand")

	-- Set default options, which are to include everything in the scan
	self.db:RegisterDefaults(
		{ profile =
			{

			-- Have we done a scan every?
			scanoccured = 0,

			-- Exclusion lists
			petexclusions = {},
			mountexclusions = {},
			petlist = {},
			mountlist = {},
			}
		}
	)

end

-- Loaded when the addon is enabled

function addon:OnEnable()

	--self:RegisterEvent("COMPANION_LEARNED")

end

-- Loaded when the addon is disabled. Ace3 undoes everything done on OnEnable

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

	self:ScanCompanions()

end

do

	-- Master database of mini-pets
	local minipetlist = nil
	local totalminipets = 0

	-- Master database of mounts
	local mountlist = nil
	local totalmounts = 0

	-- Description: Loads all information about mini-pets into the database
	-- Expected result: Listing of companions updated with information.
	-- Input: None
	-- Output: Database pased as reference.

	function addon:CreateMiniPetList(db)

		db = {}
		addon:MakeMiniPetTable(db)

	end

	-- Description: Loads all information about mounts into the database
	-- Expected result: Listing of companions updated with information.
	-- Input: None
	-- Output: Database pased as reference.

	function addon:CreateMountList(db)

		db = {}
		addon:MakeMountTable(db)

	end

	-- Description: Will scan your companions (mini-pets and mounts) and determine which ones you have
	-- Expected result: Listing of companions updated with information.
	-- Input: None
	-- Output: Updates the saved variables with the IDs of all the companions you have

	function addon:ScanCompanions()

		-- Create the master list of all mini-pets
		if (minipetlist == nil) then

			totalminipets = addon:CreateMiniPetList(minipetlist)

		end

		self:Print("DEBUG: Total minipets in database: " .. totalminipets)

		-- Update the mini-pets
		local numminipets = GetNumCompanions("CRITTER")

		-- Clear the saved variables for the pet list.
		self.db.profile.petlist = {}

		-- Parse all the mini-pets you currently have
		for i=1,numminipets do

			-- Get the pet's name and spell ID
			local _,petname,petspell = GetCompanionInfo("CRITTER",i)

			-- Mark the pet as known in the database, if the pet is not in the database display an error
			if (minipetlist[petspell]) then

				-- Mark the mini-pet as being known
				minipetlist[petspell]["Owned"] = true

				-- Add the mini-pet to the list of pets we save
				tinsert(self.db.profile.petlist,petspell)

			else

				self:Print("Unknown pet found.  Please report to the author.  Pet name: " .. petname .. " Pet spell ID: " .. petspell)

			end

		end

		self:Print("DEBUG: Total minipets known: " .. numminipets)

	end

	-- Description: Parses the savedvariables to display which companions you are missing
	-- Expected result: Provides a list which companions you know/don't know
	-- Input: None
	-- Output: Graphical output only

	function addon:ShowChecklist()

		-- Create the master list of all mini-pets
		if (minipetlist == nil) then

			totalminipets = addon:CreateMiniPetList(minipetlist)

		end


		local numminipets = GetNumCompanions("CRITTER")

		local formatstring = "You have %d out of %d %s.  You are missing %d %s."

		-- Load the items from the internal SV into our memory
		self:UpdateLists(minipetlist, mountlist)

		local missingpets = 0

		-- Scan the master list and display which mini-pets are marked as missing
		for i in pairs(minipetlist) do

			if (minipetlist[i] and minipetlist[i]["Owned"] == false) then

				self:Print("Missing pet: " .. i)
				missingpets = missingpets + 1

			end

		end

		self:Print(format(formatstring,#self.db.profile.minipetlist, totalminipets, "mini-pets", missingpets, "mini-pets"))
		self:Print(#self.db.profile.minipetlist - totalminipets)

		self:Print("GUI Checklist NYI")

	end

end


-- Scans through the saved variables and updates the items in the master list to known if it exists
-- Arguments: The list to scan through, the master list which to set, and the variable to set.
-- Return values: None, the list is updated with flags set to true

function addon:UpdateIndividualList(scanlist, masterlist, variable)

	-- Parse through the scanning list (local database)
	for i,k in pairs(scanlist) do

		-- If we have information about this item in our list (resident list)
		if (masterlist[k]) then

			-- Set the variable to be true
			masterlist[k][variable] = true

		end

	end

end

-- Scans through the saved variables and updates the items in the master list to known if it exists
-- Arguments: None
-- Return values: None, the list is updated with flags set to true

function addon:UpdateLists(petlist, mountlist)

	-- Update update collections to see which ones are known
	self:UpdateIndividualList(self.db.profile.petlist, petlist, "Owned")
	--self:UpdateIndividualList(self.db.profile.mountlist, mountlist, "Owned")

	-- Update collections to flag which ones are excluded
	self:UpdateIndividualList(self.db.profile.petexclusions, petlist, "Excluded")
	--self:UpdateIndividualList(self.db.profile.mountexclusions, mountlist, "Excluded")

end

-- Adds a companion (based off of spell ID) to the database.  Also will add aquisition, faction, reputation, location, and filtering flags.
-- Arguments: Spell ID of mini-pet, aquisition information, faction information, reputation information, location, coordinate information, arbitrary number of flags
-- Return values: none

function addon:AddCompanion(DB, SpellID, ItemID, Rarity)

	-- Create an entry for this minipet
	DB[SpellID] = {}

	DB[SpellID]["Name"] = GetSpellInfo(SpellID) or nil
	DB[SpellID]["ItemID"] = ItemID
	DB[SpellID]["Rarity"] = Rarity

	DB[SpellID]["Owned"] = false
	DB[SpellID]["Excluded"] = false

	DB[SpellID]["Flags"] = {}
	DB[SpellID]["Acquire"] = {}

end

-- Adds obtain flags for the companion
-- Arguments: Spell ID in the database, and a link to the database itself, along with all the flags
-- Return values: None

function addon:AddCompanionFlags(DB, SpellID, ...)



end

-- Adds acquire flags for the companion
-- Arguments: Spell ID in the database, and a link to the database itself, along with all the flags
-- Return values: None

function addon:AddCompanionAcquire(DB, SpellID, ...)



end

-- Adds an item from a specific collection to the exclusion list
-- Arguments: Collection type (MOUNT, PET), spell ID or itemID of what has to be excluded
-- Return Values: none

function addon:ExcludeCollection(collection,ID)

	if (collection == "MOUNT") then

		tinsert(self.db.profile.mountexclusions,ID)

	elseif (collection == "PET") then

		tinsert(self.db.profile.petexclusions,ID)

	end

	self:Print("Collection ID: " .. ID .. " excluded from the " .. collection .. " list.")

end

-- Removes an item from a specific collection to the exclusion list
-- Arguments: Collection type (MOUNT, PET), spell ID or itemID of what has to be removed from exlcusion list
-- Return Values: none

function addon:AddtoCollection(collection,ID)

	if (collection == "MOUNT") then

		tremove(self.db.profile.mountexclusionls,ID)

	elseif (collection == "PET") then

		tremove(self.db.profile.petexclusions,ID)

	end

	self:Print("Collection ID: " .. ID .. " added to the " .. collection .. " list.")

end
