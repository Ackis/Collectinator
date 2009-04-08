--[[

************************************************************************

Custom.lua

Custom acquire data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(CustomDB, Rep ID, Rep Name)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:InitCustom(CustomDB)

	self:addLookupList(CustomDB, 1, "TCG")
	self:addLookupList(CustomDB, 2, "Chicken Egg")
	self:addLookupList(CustomDB, 3, "Ooze Bag")
	self:addLookupList(CustomDB, 4, "Blue Murloc") -- Blizzcon 2005
	self:addLookupList(CustomDB, 5, "Lurky") -- EU BC CE
	self:addLookupList(CustomDB, 6, "Pink Murloc") -- EU Contest
	self:addLookupList(CustomDB, 7, "Polar Bear Collar") -- Asian Coke Promotion
	self:addLookupList(CustomDB, 8, "Original CE")
	self:addLookupList(CustomDB, 9, "Crawdad")
	self:addLookupList(CustomDB, 10, "BC CE")
	self:addLookupList(CustomDB, 11, "Wrath CE")
	self:addLookupList(CustomDB, 12, "WWI Korea") -- Lucky Golden Pig
	self:addLookupList(CustomDB, 13, "China Olypmics")
	self:addLookupList(CustomDB, 14, "WWI France")
	self:addLookupList(CustomDB, 15, "4th Year Anniversary")
	self:addLookupList(CustomDB, 16, "Random drop from the egg")
	self:addLookupList(CustomDB, 17, "Giant Rat")
	self:addLookupList(CustomDB, 18, "BC Fishing Daily")
	self:addLookupList(CustomDB, 19, "Mojo ZA")

end

