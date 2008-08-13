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

--local L			= LibStub("AceLocale-3.0"):GetLocale("Collectinator")

Collectinator 	= LibStub("AceAddon-3.0"):NewAddon("Collectinator", "AceConsole-3.0")

local addon = Collectinator

-- Make functions local to speed things up
local GetNumCompanions = GetNumCompanions
local select = select


local minipetlist = nil
local mountlist = nil

local AceConfig = LibStub("AceConfig-3.0")


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
				desc = "Scans for companions.",
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
	AceConfig:RegisterOptionsTable("Collectinator",giveOptions,"Collectinator")
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

			-- Exclusion lists
			petexclusions = {},
			mountexclusions = {}
			}
		}
	)

end

function addon:OnEnable()

end

function addon:OnDisable()

end

function addon:ChatCommand(input)

	if (not input) or (input and input:trim() == "") or (string.lower(input) == string.lower("About")) then
		-- Open About panel if there's no parameters or if the parameter is About
		InterfaceOptionsFrame_OpenToFrame(self.optionsFrame["About"])
	end

end

-- Scans the companions, add their spell IDs to a table.
-- Arguments: None
-- Return values: Your mini-pets, Total mini-pets, Your mounts, Total mounts

function addon:ScanCompanions()

	-- Create the master list of all mini-pets
	if (minipetlist == nil) then
		addon:MakeMiniPetTable(minipetlist)
	end

	-- Create the master list of all mounts
	if (mountlist == nil) then
		addon:MakeMountTable(mountlist)
	end

	local numminipets = GetNumCompanions("CRITTER")
	local nummounts = GetNumCompanions("MOUNT")
	local totalminipets = #minipetlist
	local totalmounts = #mountlist

	self:Print("You have " .. numminipets .. " mini-pets and " .. nummounts .. " mounts.")
	self:Print("There are a total of " .. totalminipets .. " mini-pets and " .. totalmounts .. " mounts in the database currently.")

	-- Parse all the mini-pets you currently have
	for i=1,numminipets do
		-- Get the pet's name and spell ID
		local _,petname,petspell = GetCompanionInfo("CRITTER",i)

		-- Mark the pet as known in the database, if the pet is not in the database display an error
		if (minipetlist[petspell]) then
			minipetlist[petspell]["Owned"] = true
		else
			self:Print("Unknown pet found.  Please report to the author.  Pet name: " .. petname .. " Pet spell ID: " .. petspell)
		end

	end

	for i=1,nummounts do
		-- Get the mount name and spell ID
		local _,mountname,mountspell = GetCompanionInfo("MOUNT",i)

		-- Mark the mount as known in the database, if the mount is not in the database display an error
		if (mountlist[mountspell]) then
			mountlist[mountspell]["Owned"] = true
		else
			self:Print("Unknown pet found.  Please report to the author.  Pet name: " .. petname .. " Pet spell ID: " .. mountspell)
		end

	end

	return numminipets, totalminipets, nummounts, totalmounts

end

-- Parse the master lists for pet and mounts and display all those which have the "Owned" flag as false.
-- Arguments: None
-- Return values: Total Missing mini-pets, Total missing mounts

function addon:DisplayMissingCompanions()

	local missingpets = 0

	for i in pairs(minipetlist) do
		if (minipetlist[i] and minipetlist[i]["Owned"] == false) then
			self:Print("Missing pet: " .. i)
			missingpets = missingpets + 1
		end
	end

	self:Print("You are missing a total of " .. missingpets .. " mini-pets.")

	local missingmounts = 0

	for i in pairs(mountlist) do
		if (mountlist[i] and mountlist[i]["Owned"] == false) then
			self:Print("Missing mount: " .. i)
			missingmounts = missingmounts + 1
		end
	end

	self:Print("You are missing a total of " .. missingmounts .. " mounts.")

	return missingpets, missingmounts

end

-- Adds a mini pet (based off of spell ID) to the database.  Also will add aquisition, faction, reputation, location, and filtering flags.
-- Arguments: Spell ID of mini-pet, aquisition information, faction information, reputation information, location, coordinate information, arbitrary number of flags
-- Return values: none

function addon:AddMiniPet(spellid, aquire, faction, reputation, location, coords, ...)

	--[[
		Faction info:
		0 = neutral
		1 = Horde
		2 = Alliance

		Filter flags:
		Flags are different flags which allow me to filter out the companions.  These flags are defined as:
			-- 1 = Vendor
			-- 2 = BoE Pet
			-- 3 = BoP Pet
			-- 4 = Instance
			-- 5= Raid
			-- 6 = Seasonal
			-- 7 = Quest
			-- 8 = PVP
			-- 9 = World Drop
			-- 10 = Specific mob drop

	]]--

	-- Create an entry for this minipet
	minipetlist[spellid] = {}

	minipetlist[spellid]["Aquire"] = aquire
	minipetlist[spellid]["Faction"] = faction
	minipetlist[spellid]["Reputation"] = reputation
	minipetlist[spellid]["Location"] = location
	minipetlist[spellid]["Coords"] = coords
	minipetlist[spellid]["Owned"] = false

	minipetlist[spellid]["Speciality"] = {}

	local numvars = select('#',...)

	for i=1,numvars,1 do
		local temp = select(i,...)
		tinsert(minipetlist[spellid]["Speciality"],temp)
	end

end

-- Adds an item from a specific collection to the exclusion list
-- Arguments: Collection type (MOUNT, PET), spell ID or itemID of what has to be excluded
-- Return Values: none

function addon:ExcludeCollection(collection,ID)

	if (collection == "MOUNT") then
		tinsert(self.db.profile.mountexclusionls,ID)	
	elseif (collection == "PET") then
		tinsert(self.db.profile.petexclusions,ID)
	end

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

end

function addon:ShowChecklist()

	self:Print("NYI")

end
