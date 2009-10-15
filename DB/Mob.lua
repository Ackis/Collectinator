-------------------------------------------------------------------------------
-- Mob.lua
-------------------------------------------------------------------------------
-- Monster data for all of Collectinator
-------------------------------------------------------------------------------
-- File date: @file-date-iso@ 
-- File revision: @file-revision@ 
-- Project revision: @project-revision@
-- Project version: @project-version@
-------------------------------------------------------------------------------
local MODNAME	= "Collectinator"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L		= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BZ	= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BB	= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

function addon:InitMob(MobDB)
	self:addLookupList(MobDB, 193,		L["Blue Dragonspawn"],			BZ["Azshara"],			 36.3, 72.9)
	self:addLookupList(MobDB, 645,		BB["Cookie"],				BZ["The Deadmines"],		 0, 0)
	self:addLookupList(MobDB, 657,		L["Defias Pirate"],			BZ["The Deadmines"],		 0, 0)
	self:addLookupList(MobDB, 741,		L["Dreaming Whelp"],			BZ["Swamp of Sorrows"],		 16.6, 55.7)
	self:addLookupList(MobDB, 1042,		L["Red Whelp"],				BZ["Wetlands"],			 56.7, 43.0)
	self:addLookupList(MobDB, 1044,		L["Flamesnorting Whelp"],		BZ["Wetlands"],			 62.7, 32.7)
	self:addLookupList(MobDB, 1069,		L["Crimson Whelp"],			BZ["Wetlands"],			 61.5, 30.8)
	self:addLookupList(MobDB, 1140,		L["Razormaw Matriarch"],		BZ["Wetlands"],			 69.0, 28.9)
	self:addLookupList(MobDB, 1561,		L["Bloodsail Raider"],			BZ["Stranglethorn Vale"],	 27.0, 70.0)
	self:addLookupList(MobDB, 1562,		L["Bloodsail Mage"],			BZ["Stranglethorn Vale"],	 28.1, 70.3)
	self:addLookupList(MobDB, 1563,		L["Bloodsail Swashbuckler"],		BZ["Stranglethorn Vale"],	 30.0, 80.0)
	self:addLookupList(MobDB, 1564,		L["Bloodsail Warlock"],			BZ["Stranglethorn Vale"],	 30.0, 80.0)
	self:addLookupList(MobDB, 1565,		L["Bloodsail Sea Dog"],			BZ["Stranglethorn Vale"],	 30.0, 90.0)
	self:addLookupList(MobDB, 1653,		L["Bloodsail Elder Magus"],		BZ["Stranglethorn Vale"],	 30.0, 90.0)
	self:addLookupList(MobDB, 1920,		L["Dalaran Spellscribe"],		BZ["Silverpine Forest"],	 63.5, 63.3)
	self:addLookupList(MobDB, 2271,		L["Dalaran Shield Guard"],		BZ["Alterac Mountains"],	 21.0, 81.0)
	self:addLookupList(MobDB, 2272,		L["Dalaran Theurgist"],			BZ["Alterac Mountains"],	 21.0, 83.0)
	self:addLookupList(MobDB, 2358,		L["Dalaran Summoner"],			BZ["Alterac Mountains"],	 22.0, 65.0)
	self:addLookupList(MobDB, 2545,		L["\"Pretty Boy\" Duncan"],		BZ["Stranglethorn Vale"],	 27.0, 68.0)
	self:addLookupList(MobDB, 2725,		L["Scalding Whelp"],			BZ["Badlands"],			 68.3, 52.6)
	self:addLookupList(MobDB, 3636,		L["Deviate Ravager"],			BZ["Wailing Caverns"],		 0, 0)
	self:addLookupList(MobDB, 3637,		L["Deviate Guardian"],			BZ["Wailing Caverns"],		 0, 0)
	self:addLookupList(MobDB, 4324,		L["Searing Whelp"],			BZ["Dustwallow Marsh"],		 42.0, 65.0)
	self:addLookupList(MobDB, 4505,		L["Bloodsail Deckhand"],		BZ["Stranglethorn Vale"],	 30.0, 90.0)
	self:addLookupList(MobDB, 4506,		L["Bloodsail Swabby"],			BZ["Stranglethorn Vale"],	 30.0, 90.0)
	self:addLookupList(MobDB, 5842,		L["Takk the Leaper"],			BZ["The Barrens"],		 60.2, 9.5)
	self:addLookupList(MobDB, 6129,		L["Draconic Magelord"],			BZ["Azshara"],			 42.7, 74.9)
	self:addLookupList(MobDB, 6130,		L["Blue Scalebane"],			BZ["Azshara"],			 43.2, 74.0)
	self:addLookupList(MobDB, 6131,		L["Draconic Mageweaver"],		BZ["Azshara"],			 36.4, 72.7)
	self:addLookupList(MobDB, 6581,		L["Ravasaur Matriarch"],		BZ["Un'Goro Crater"],		 64.6, 61.8)
	self:addLookupList(MobDB, 10184,	BB["Onyxia"],				BZ["Onyxia's Lair"],		 0, 0)
	self:addLookupList(MobDB, 10440,	BB["Baron Rivendare"],			BZ["Stratholme"],		 0, 0)
	self:addLookupList(MobDB, 14232,	L["Dart"],				BZ["Dustwallow Marsh"],		 48.0, 19.8)
	self:addLookupList(MobDB, 14821,	L["Razzashi Raptor"],			BZ["Zul'Gurub"],		 0, 0)
	self:addLookupList(MobDB, 19622,	BB["Kael'thas Sunstrider"],		BZ["The Eye"],			 0, 0)
	self:addLookupList(MobDB, 20197,	L["Bogflare Needler"],			BZ["Zangarmarsh"],		 60.0, 46.5)
	self:addLookupList(MobDB, 23682,	BB["Headless Horseman"],		BZ["Scarlet Monastery"],	 0, 0)
	self:addLookupList(MobDB, 23795,	L["Dark Iron Antagonist"],		BZ["Blackrock Depths"],		 0, 0)
	self:addLookupList(MobDB, 23872,	BB["Coren Direbrew"],			BZ["Blackrock Depths"],		 0, 0)
	self:addLookupList(MobDB, 24468,	L["Pol Amberstill"],			BZ["Dun Morogh"],		 46.5, 40.4)
	self:addLookupList(MobDB, 24510,	L["Driz Tumblequick"],			BZ["Durotar"],			 46.3, 14.9)
	self:addLookupList(MobDB, 24664,	BB["Kael'thas Sunstrider"],		BZ["Magisters' Terrace"],	 0, 0)
	self:addLookupList(MobDB, 25740,	BB["Ahune"],				BZ["The Slave Pens"],		 0, 0)
	self:addLookupList(MobDB, 26532,	BB["Chrono-Lord Epoch"],		BZ["The Culling of Stratholme"], 0, 0)
	self:addLookupList(MobDB, 26693,	BB["Skadi the Ruthless"],		BZ["Utgarde Pinnacle"],		 0, 0)
	self:addLookupList(MobDB, 28194,	BB["Prince Tenris Mirkblood"],		BZ["Karazhan"],			 0, 0)
	self:addLookupList(MobDB, 29334,	L["Gundrak Raptor"],			BZ["Zul'Drak"],			 0, 0)
	self:addLookupList(MobDB, 31125,	BB["Archavon the Stone Watcher"],	BZ["Vault of Archavon"],	 0, 0)
	self:addLookupList(MobDB, 32273,	BB["Infinite Corruptor"],		BZ["The Culling of Stratholme"], 0, 0)
	self:addLookupList(MobDB, 32491,	L["Time-Lost Proto Drake"],		BZ["The Storm Peaks"],		 50.2, 69.2)
	self:addLookupList(MobDB, 33288,	BB["Yogg-Saron"],			BZ["Ulduar"],			 0, 0)
	self:addLookupList(MobDB, 33993,	BB["Emalon the Storm Watcher"],		BZ["Vault of Archavon"],	 0, 0)
	self:addLookupList(MobDB, 35013,	BB["Koralon the Flame Watcher"],	BZ["Vault of Archavon"],	 0, 0)
end
