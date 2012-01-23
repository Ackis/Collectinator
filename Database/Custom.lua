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

--local L	= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BZ	= LibStub("LibBabble-Zone-3.0"):GetLookupTable()

function addon:InitCustom(DB)
	self:addLookupList(DB, 1, "World of Warcraft Trading Card Game", BZ["Booty Bay"])
	self:addLookupList(DB, 2, "Find chickens in various zones such as: Tirisfal Glades, Howling Fjord, Redridge Mountains, Westfall, etc.  Do /chicken until it reacts")
	self:addLookupList(DB, 3, "Learned from Oozing Bag, dropped by level 50 to 57 ooze & slime mobs", "Various Zones")
	self:addLookupList(DB, 4, "Bought from the Blizzard Store")
	self:addLookupList(DB, 5, "Burning Crusade Collector's Edition (EU)")
	self:addLookupList(DB, 6, "Promotional pet: Fansite contest giveaway (EU)") -- EU Contest, Pink Murloc
	self:addLookupList(DB, 7, "Promotional pet: iCoke (China)") -- Polar Bear Collar
	self:addLookupList(DB, 8, "Original Collector's Edition")
	self:addLookupList(DB, 9, "Learned randomly from Mr. Pinchy, caught via 430+ fishing nodes in Terokkar Forest.")
	self:addLookupList(DB, 10, "This pet was available for a limited time to all players on China servers if they logged in on a character between October 19th and November 24th 2009")
	self:addLookupList(DB, 11, "Wrath of The Lich King Collector's Edition")
	self:addLookupList(DB, 12, "World Wide Invitational (Korea)") -- Lucky Golden Pig
	self:addLookupList(DB, 13, "China Olympics")
	self:addLookupList(DB, 14, "Obtained with an account bound to an authenticator.")
	self:addLookupList(DB, 15, "Purchase the \"Zen'Vorka's Cache\" from this vendor and it has a chance to be in it.")
	self:addLookupList(DB, 16, "Random drop from the Cracked Egg, which hatches from the Mysterious Egg.")
	self:addLookupList(DB, 17, "Arena: Earned the Vengeful Gladiator title in Season 3")
	self:addLookupList(DB, 18, "Outland daily fishing quest.")
	self:addLookupList(DB, 19, "Use an Amani Hex Stick on the frog for a chance to obtain Mojo.")
	self:addLookupList(DB, 20, "Arena: Earned the Merciless Gladiator title in Season 2")
	self:addLookupList(DB, 21, "Rewarded for doing either of the following: Participated in 200 3v3 2009 Arena Tournament games or participate in at least 50 rated Arena Pass games in the 2010 Arena Tournament")
	self:addLookupList(DB, 22, "Arena: Earned the Brutal Gladiator title in Season 4")
	self:addLookupList(DB, 23, "Original Epic Mount")
	self:addLookupList(DB, 24, "Promotional pet: Mountain Dew Game Fuel (Summer 2009).")
	self:addLookupList(DB, 25, "Arena: Earned the Deadly Gladiator title in Season 5")
	self:addLookupList(DB, 26, "Arena: Earned the Furious Gladiator title in Season 6")
	self:addLookupList(DB, 27, "Drops from any mob in Feralas")
	self:addLookupList(DB, 28, "Promotional pet: WoW/Battle.net Account Merger.")
	self:addLookupList(DB, 29, "Random drop off of trash in AQ 40.")
	self:addLookupList(DB, 30, "Arena: Earned the Gladiator title in Season 1")
	self:addLookupList(DB, 31, "Zone Drop: Winterspring")
	self:addLookupList(DB, 32, "Arena: Earned the Relentless Gladiator title in Season 7")
	self:addLookupList(DB, 33, "Arena: Earned the Wrathful Gladiator title in Season 8")
	self:addLookupList(DB, 34, "Prepay your account by November 2009, on Taiwan servers.")
	self:addLookupList(DB, 35, "Since 2010, use the LFD took to queue for Coren Direbrew and upon defeating him you receive a Keg-Shaped Treasure Chest which may contain this mount.")
	self:addLookupList(DB, 36, "Must have the buff from one of Fiona's quests, then you can farm for this companion")
	self:addLookupList(DB, 37, "For this vendor to sell this mount, you must be exalted with the Bligewater Cartel")
	self:addLookupList(DB, 38, "A project from the Fossil race in Archaeology")
	self:addLookupList(DB, 39, "Found rarely from mining Elementium Veins and Rich Elementium Veins")
	self:addLookupList(DB, 40, "Taught by any Paladin trainer")
	self:addLookupList(DB, 41, "A project from the Dwarf race in Archaeology")
	self:addLookupList(DB, 42, "A project from the Tol'vir race in Archaeology")
	self:addLookupList(DB, 43, "Rare drop from any mob in Northern Stranglethorn and The Cape of Stranglethorn")
	self:addLookupList(DB, 44, "A project from the Troll race in Archaeology")
	self:addLookupList(DB, 45, "Complete Zul'Aman in 25 minutes, and this mount is contained in Kasha's Bag")
	self:addLookupList(DB, 46, "Contained within a \"Chirping Box\" from the achievement")
	self:addLookupList(DB, 47, "Received if you attended Blizzcon 2011")
	self:addLookupList(DB, 48, "Arena: Earned the Vicious Gladiator title in Season 9")
	self:addLookupList(DB, 49, "Received if you sign up for the WoW Annual Pass")
	self:addLookupList(DB, 50, "Chance to drop on Heroic version of Madness of Deathwing")
	self:addLookupList(DB, 51, "Chance to drop on Normal and Heroic versions of Madness of Deathwing")
	self:addLookupList(DB, 52, "Arena: Earned the Ruthless Gladiator title in Season 10")
	self:addLookupList(DB, 53, "Find this pet in Dart's Nest in Dustwallow Marsh")
	self:addLookupList(DB, 54, "Find this pet in Takk's Nest in Northern Barrens")
	self:addLookupList(DB, 55, "Find this pet in Ravasaur Matriarch's Nest in Un'Goro Crater")
	self:addLookupList(DB, 56, "Find this pet in Razormaw Matriarch's Nest in Wetlands")
end

