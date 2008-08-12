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

Collectinator 	= LibStub("AceAddon-3.0"):NewAddon("Collectinator", "AceConsole-3.0")

local BFAC		= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local BZONE		= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BBOSS		= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

local addon = Collectinator
local GetNumCompanions = GetNumCompanions

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

-- Loaded at startup, sets configuration options, the GUI configuration options and registers slash commands

function addon:OnInitialize()

	local AceConfigReg = LibStub("AceConfigRegistry-3.0")
	local AceConfigDialog = LibStub("AceConfigDialog-3.0")

	AceConfig:RegisterOptionsTable("Collectinator", giveOptions, {"Collectinator"})

	self.optionsFrame = AceConfigDialog:AddToBlizOptions("Collectinator","Collectinator")
	self.optionsFrame["About"] = LibStub("LibAboutPanel").new("Collectinator", "Collectinator")

end
--/script Collectinator:ScanCompanions()
--/script Collectinator:Print(GetCompanionInfo("CRITTER",1))

-- Scans the companions, add their spell IDs to a table.

function addon:ScanCompanions()

	local numminipets = GetNumCompanions("CRITTER")
	local nummounts = GetNumCompanions("MOUNT")

	self:Print("You have " .. numminipets .. " mini-pets and " .. nummounts .. " mounts.")

	if (minipetlist == nil) then
		addon:AddMiniPets()
	end

	for i=1,numminipets do
		local _,petname,petspell = GetCompanionInfo("CRITTER",i)
		if (not minipetlist[petspell]) then
			self:Print("Unknown pet found.  Please report to the author.  Pet name: " .. petname .. " Pet spell ID: " .. petspell)
		else
			minipetlist[petspell]["Owned"] = true
		end
	end

	for i in pairs(minipetlist) do
		if (minipetlist[i] and minipetlist[i]["Owned"] == false) then
			self:Print("Missing pet: " .. i)
		end
	end

	for i=1,nummounts do
		local _,mountname,mountspell = GetCompanionInfo("MOUNT",i)
	end

end

-- Adds a mini pet (based off of spell ID) to the database.  Also will add aquisition, faction, reputation, location, and filtering flags.

function addon:AddMiniPet(spellid, aquire, faction, reputation, location, ...)

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
	minipetlist[spellid]["Owned"] = false

end

-- Adds all mini-pets, by spell ID to the local database.

function addon:AddMiniPets()

	self:Print("Populating minipet list.")
	minipetlist = {}

	self:AddMiniPet(1, "Test pet aquire", 0)
	self:AddMiniPet(10685, "Vendor", 0)
	self:AddMiniPet(40549, "TCG", 0)
	self:AddMiniPet(10675, "Drop", 0)
	self:AddMiniPet(36031, "Vendor", 0)
	self:AddMiniPet(10673, "???", 0)
	self:AddMiniPet(10709, "Vendor", 1)
	self:AddMiniPet(35239, "???", 0)
	self:AddMiniPet(10680, "???", 0)
	self:AddMiniPet(10688, "???", 0)
	self:AddMiniPet(10674, "???", 0)
	self:AddMiniPet(10697, "???", 0)
	self:AddMiniPet(10695, "???", 0)
	self:AddMiniPet(25162, "???", 0)
	self:AddMiniPet(45127, "???", 0)
	self:AddMiniPet(10698, "???", 0)
	self:AddMiniPet(36034, "???", 0)
	self:AddMiniPet(36027, "???", 0)
	self:AddMiniPet(10707, "???", 0)
	self:AddMiniPet(10683, "???", 0)
	self:AddMiniPet(10706, "???", 0)
	self:AddMiniPet(30156, "???", 0)
	self:AddMiniPet(10682, "???", 0)
	self:AddMiniPet(23811, "???", 0)
	self:AddMiniPet(19772, "???", 0)
	self:AddMiniPet(33050, "???", 0)
	self:AddMiniPet(35156, "???", 0)
	self:AddMiniPet(12243, "???", 0)
	self:AddMiniPet(53082, "???", 0)
	self:AddMiniPet(39181, "???", 0)
	self:AddMiniPet(43918, "???", 0)
	self:AddMiniPet(28739, "???", 0)
	self:AddMiniPet(51716, "???", 0)
	self:AddMiniPet(32298, "???", 0)
	self:AddMiniPet(10676, "???", 0)
	self:AddMiniPet(27570, "???", 0)
	self:AddMiniPet(13548, "???", 0)
	self:AddMiniPet(36028, "???", 0)
	self:AddMiniPet(45125, "???", 0)
	self:AddMiniPet(45890, "???", 0)
	self:AddMiniPet(10684, "???", 0)
	self:AddMiniPet(10677, "???", 0)
	self:AddMiniPet(36029, "???", 0)
	self:AddMiniPet(10678, "???", 0)
	self:AddMiniPet(16450, "???", 0)
	self:AddMiniPet(10711, "???", 0)
	self:AddMiniPet(28738, "???", 0)
	self:AddMiniPet(28871, "???", 0)
	self:AddMiniPet(45082, "???", 0)
	self:AddMiniPet(43697, "???", 0)
	self:AddMiniPet(26010, "???", 0)
	self:AddMiniPet(10704, "???", 0)
	self:AddMiniPet(28740, "???", 0)
	self:AddMiniPet(10679, "???", 0)
	self:AddMiniPet(39709, "???", 0)
	self:AddMiniPet(10703, "???", 0)
	self:AddMiniPet(15999, "???", 0)
	self:AddMiniPet(54187, "???", 0)
	self:AddMiniPet(40614, "???", 0)
	self:AddMiniPet(4055, "???", 0)
	self:AddMiniPet(40613, "???", 0)
	self:AddMiniPet(10696, "???", 0)
	self:AddMiniPet(35907, "???", 0)
	self:AddMiniPet(49964, "???", 0)
	self:AddMiniPet(35909, "???", 0)
	self:AddMiniPet(40990, "???", 0)
	self:AddMiniPet(48406, "???", 0)
	self:AddMiniPet(35911, "???", 0)
	self:AddMiniPet(35910, "???", 0)
end

function addon:ShowChecklist()

	self:Print("NYI")

end
