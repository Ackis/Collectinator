--[[
****************************************************************************************
Collectinator
$Date$
$Rev$

Author: Ackis on Illidan US Horde

****************************************************************************************

Still in development

Please see Wowace.com for more information.

****************************************************************************************
]]--

--[[

	Flags:
	Flags are defined as:
		-- How to obtain (flags 1 - 20 for growth):
			-- 1 = Alliance faction only
			-- 2 = Horde faction only
			-- 4 = Vendor
			-- 5 = Instance
			-- 6 = Crafted
			-- 7 = Seasonal
			-- 8 = Quest
			-- 9 = PVP
			-- 10 = World Drop
			-- 11 = Special Event (Blizzcon, WWI, etc)
			-- 12 = TCG
			-- 13 = BoE
			-- 14 = BoP
			-- 15 = BoA

		-- Profession (flags 21-40 for growth):
			-- 21 = Alchemist
			-- 22 = Blacksmith
			-- 23 = Cook
			-- 24 = Enchant
			-- 25 = Engineer
			-- 26 = First Aid
			-- 27 = Inscription
			-- 28 = Jewelcraft
			-- 29 = Leatherwork
			-- 30 = Smelt
			-- 31 = Tailor

		-- Reputation
			-- Original WoW (40-44):
				-- 40 = Argent Dawn
				-- 41 = Cenarion Circle
				-- 42 = Thorium Brotherhood
				-- 43 = Timbermaw Hold
				-- 44 = Zandalar Tribe
			-- Burning Crusade (45-58):
				-- 45 = The Aldor
				-- 46 = Ashtongue Deathsworn
				-- 47 = Cenarion Expedition
				-- 48 = Hellfire Factions (Thrallmar/Honor Hold)
				-- 49 = Consortium
				-- 50 = Keepers of Time
				-- 51 = Lower City
				-- 52 = Nagrand Factions (Maghar/Kureni)
				-- 53 = Scale of the Sands
				-- 54 = The Scryer
				-- 55 = Sha'tar
				-- 56 = Shattered Sun
				-- 57 = Sporeggar
				-- 58 = Violeteye
			-- LK (59-73):
				-- 59 = Argent Crusade
				-- 60 = Frenzyheart Tribe
				-- 61 = Knights of the Ebon Blade
				-- 62 = Kirin Tor
				-- 63 = The Sons of Hodir
				-- 64 = The Kalu'ak
				-- 65 = The Oracles
				-- 66 = The Wyrmrest Accord
				-- 67 = The Silver Convenant
				-- 68 = The Sunreavers
				-- 69 = Explorer's League
				-- 70 = Valiance Expedition
				-- 71 = The Hand of Vengeance
				-- 72 = The Taunka
				-- 73 = Warsong Offensive

]]--

local MODNAME			= "Collectinator"

Collectinator 			= LibStub("AceAddon-3.0"):NewAddon(MODNAME, "AceConsole-3.0", "AceEvent-3.0")

local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

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
	self.optionsFrame["About"] = LibStub("LibAboutPanel").new("Collectinator", "Collectinator")
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

	self:RegisterEvent("COMPANION_LEARNED")

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

function addon:COMPANION_LEARNED(arg1, arg2, arg3, arg4, arg5)

	self:Print("Learnt a new companion. yay you?")
	self:Print(arg1)
	self:Print(arg2)
	self:Print(arg3)
	self:Print(arg4)
	self:Print(arg5)
	self:Print("Notice those 'nils'?  That means Blizz doesn't want to tell us what you learnt.")

end

do

	minipetlist = nil
	mountlist = nil

	-- Will scan your companions, and update the information in the saved variables.
	-- Arguments: None
	-- Return values: Updates the saved variables with the IDs of all the companions you have

	function addon:ScanCompanions()

		-- Create the master list of all mini-pets
		if (minipetlist == nil) then

			minipetlist = {}
			addon:MakeMiniPetTable(minipetlist)

		end

		-- Create the master list of all mounts
		if (mountlist == nil) then

			mountlist = {}
			addon:MakeMountTable(mountlist)

		end

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

				-- Add the mini-pet to the list of pets we save
				tinsert(self.db.profile.petlist,petspell)

			else

				self:Print("Unknown pet found.  Please report to the author.  Pet name: " .. petname .. " Pet spell ID: " .. petspell)

			end

		end

		-- Update the mounts
		local nummounts = GetNumCompanions("MOUNT")

		-- Clear the saved variables for the mount list.
		self.db.profile.mountlist = {}

		for i=1,nummounts,1 do

			-- Get the mount name and spell ID
			local _,mountname,mountspell = GetCompanionInfo("MOUNT",i)

			-- Mark the mount as known in the database, if the mount is not in the database display an error
			if (mountlist[mountspell]) then

				-- Add the mount to the list of pets we save
				tinsert(self.db.profile.petlist,mountspell)

			else

				self:Print("Unknown mount found.  Please report to the author.  Pet name: " .. mountname .. " Pet spell ID: " .. mountspell)

			end

		end

	end

	-- Displays the checklist

	function addon:ShowChecklist()

		-- Create the master list of all mini-pets
		if (minipetlist == nil) then

			minipetlist = {}
			addon:MakeMiniPetTable(minipetlist)

		end

		-- Create the master list of all mounts
		if (mountlist == nil) then

			mountlist = {}
			addon:MakeMountTable(mountlist)

		end

		local numminipets = GetNumCompanions("CRITTER")
		local nummounts = GetNumCompanions("MOUNT")
		local totalminipets = #minipetlist
		local totalmounts = #mountlist

		self:Print("You have " .. numminipets .. " mini-pets and " .. nummounts .. " mounts.")
		self:Print("There are a total of " .. totalminipets .. " mini-pets and " .. totalmounts .. " mounts in the database currently.")

		local formatstring = "You have %d out of %d %s.  You are missing %d %s."

		self:UpdateLists(minipetlist, mountlist)

		local missingpets = 0

		-- Scan the master list and display which mini-pets are marked as missing
		for i in pairs(petlist) do
			if (petlist[i] and petlist[i]["Owned"] == false) then
				self:Print("Missing pet: " .. i)
				missingpets = missingpets + 1
			end
		end

		self:Print(format(formatstring,#self.db.profile.petlist, #petlist, "mini-pets", missingpets, "mini-pets"))
		self:Print(#self.db.profile.petlist - #petlist)

		local missingmounts = 0

		for i in pairs(mountlist) do
			if (mountlist[i] and mountlist[i]["Owned"] == false) then
				self:Print("Missing mount: " .. i)
				missingmounts = missingmounts + 1
			end
		end

		self:Print(format(formatstring,#self.db.profile.mountlist, #mountlist, "mounts", missingmounts, "mounts"))

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
	self:UpdateIndividualList(self.db.profile.mountlist, mountlist, "Owned")

	-- Update collections to flag which ones are excluded
	self:UpdateIndividualList(self.db.profile.petexclusions, petlist, "Excluded")
	self:UpdateIndividualList(self.db.profile.mountexclusions, mountlist, "Excluded")

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
