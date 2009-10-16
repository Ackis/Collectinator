-------------------------------------------------------------------------------
-- Custom.lua
-- Custom acquire data for all of Collectinator
-------------------------------------------------------------------------------
-- File date: @file-date-iso@ 
-- File revision: @file-revision@ 
-- Project revision: @project-revision@
-- Project version: @project-version@
-------------------------------------------------------------------------------
-- Format:
-- 	self:addLookupList(CustomDB, Rep ID, Rep Name)
-------------------------------------------------------------------------------
local MODNAME	= "Collectinator"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BZONE	= LibStub("LibBabble-Zone-3.0"):GetLookupTable()

function addon:InitCustom(CustomDB)

	self:addLookupList(CustomDB, 1, "TCG", BZONE["Booty Bay"])
	self:addLookupList(CustomDB, 2, "Chicken Egg", BZONE["Westfall"])
	self:addLookupList(CustomDB, 3, "Learned from Oozing Bag, dropped by level 50 to 57 ooze & slime mobs", "Various Zones")
	self:addLookupList(CustomDB, 4, "Promotional pet: BlizzCon 2005") -- Blue Murloc
	self:addLookupList(CustomDB, 5, "Burning Crusade Collector's Edition (EU).")
	self:addLookupList(CustomDB, 6, "Promotional pet: Fansite contest giveaway (EU).") -- EU Contest, Pink Murloc
	self:addLookupList(CustomDB, 7, "Promotional pet: iCoke (China)") -- Polar Bear Collar
	self:addLookupList(CustomDB, 8, "Original Collector's Edition")
	self:addLookupList(CustomDB, 9, "Learned randomly from Mr. Pinchy, caught via 430+ fishing nodes in Terokkar Forest.")
	self:addLookupList(CustomDB, 10, "Burning Crusade Collector's Edition")
	self:addLookupList(CustomDB, 11, "Wrath of The Lich King Collector's Edition")
	self:addLookupList(CustomDB, 12, "WWI Korea") -- Lucky Golden Pig
	self:addLookupList(CustomDB, 13, "China Olypmics")
	self:addLookupList(CustomDB, 14, "Promotional pet: Blizzard Worldwide Invitational 2008.")
	self:addLookupList(CustomDB, 15, "4th Year Anniversary")	-- Baby Blizzard Bear
	self:addLookupList(CustomDB, 16, "Random drop from the Cracked Egg, which hatches from the Mysterious Egg.")
	self:addLookupList(CustomDB, 17, "Giant Rat", BZONE["Dalaran"])
	self:addLookupList(CustomDB, 18, "Outland daily fishing quest.")
	self:addLookupList(CustomDB, 19, "Use an Amani Hex Stick on the frog for a chance to obtain Mojo.")
	self:addLookupList(CustomDB, 20, "Wrath Fishing Daily")
	self:addLookupList(CustomDB, 21, "Participated in 200 3v3 2009 Arena Tournament games.")
	self:addLookupList(CustomDB, 22, "Promotional pet: BlizzCon 2009")
	self:addLookupList(CustomDB, 23, "Original Epic Mount")
	self:addLookupList(CustomDB, 24, "Promotional pet: Mountain Dew Game Fuel (Summer 2009).")
	self:addLookupList(CustomDB, 25, "Fishing in pools Northrend")
	self:addLookupList(CustomDB, 26, "5th Year Anniversary")	-- Onyxian Whelp
	self:addLookupList(CustomDB, 27, "Mob Drop is Horde-only.")	-- Sprite Darter Hatchling
	self:addLookupList(CustomDB, 28, "Promotional pet: WoW/Battle.net Account Merger.")
end

