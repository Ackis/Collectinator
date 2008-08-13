--[[
****************************************************************************************
PetDatabase.lua
$Date$
$Rev$

Author: Ackis on Illidan US Horde

****************************************************************************************
]]--

local addon = Collectinator

local BFAC		= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local BZONE		= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BBOSS		= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

-- Adds all mini-pets, by spell ID to the local database.

function addon:MakeMiniPetTable(minipetlist)

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
