--[[
****************************************************************************************
MountDatabase.lua
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

function addon:MakeMountTable()

	self:Print("Populating mount list.")

end
