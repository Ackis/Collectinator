--[[

************************************************************************

Vendor.lua

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
local BZONE				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BBOSS				= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

function addon:InitVendor(VendorDB)

	self:addLookupList(VendorDB,2663,L["Narkk"],BZONE["Stranglethorn Vale"],28.2,74.5,0)
	self:addLookupList(VendorDB,6367,L["Donni Anthania"],BZONE["Elwynn Forest"],44.2,53.4,1)
	self:addLookupList(VendorDB,20980,L["Dealer Rashaad"],BZONE["Netherstorm"],43.5,35.2,0)

end
