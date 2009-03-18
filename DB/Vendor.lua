--[[

************************************************************************

ARL-Vendor.lua

Vendor data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(VendorDB,NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
--local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local BZONE				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BBOSS				= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

function addon:InitVendor(VendorDB)

	self:addLookupList(VendorDB,6367,"Donni Anthania",BZONE["Elwynn Forest"],44.2,53.4,1)

end
