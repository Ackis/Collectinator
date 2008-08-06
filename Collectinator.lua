
Collectinator = LibStub("AceAddon-3.0"):NewAddon("Collectinator", "AceConsole-3.0")

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
			run = 
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

function addon:OnInitialize()

	local AceConfigReg = LibStub("AceConfigRegistry-3.0")
	local AceConfigDialog = LibStub("AceConfigDialog-3.0")

	AceConfig:RegisterOptionsTable("Collectinator", giveOptions, {"Collectinator"})

	self.optionsFrame = AceConfigDialog:AddToBlizOptions("Collectinator","Collectinator")
	self.optionsFrame["About"] = LibStub("LibAboutPanel").new("Collectinator", "Collectinator")

end
--/script Collectinator:ScanCompanions()
--/script Collectinator:Print(GetCompanionInfo("CRITTER",1))
function addon:ScanCompanions()

	local numminipets = GetNumCompanions("CRITTER")
	local nummounts = GetNumCompanions("MOUNT")

	self:Print("You have " .. numminipets .. " mini-pets and " .. nummounts .. " mounts.")

	if (minipetlist == nil) then
		addon:AddMiniPets()
	end

	for i=1,numminipets do
		local _,petspell,petname = GetCompanionInfo("CRITTER",i)
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
		local _,mountspell,mountname = GetCompanionInfo("MOUNT",i)
	end

end

function addon:AddMiniPet(spellid, aquire, faction)

	--[[
		Faction info:
		0 = neutral
		1 = Horde
		2 = Alliance
	--]]

	-- Create an entry for this minipet
	minipetlist[spellid] = {}

	minipetlist[spellid]["Aquire"] = aquire
	minipetlist[spellid]["Faction"] = faction
	minipetlist[spellid]["Owned"] = false

end

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

end
