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

function addon:InitMob(DB)
	---------------------------------------------------------------------------------------------------------------------------
	--			ID	Mob Name				Location Found				Coordinates
	---------------------------------------------------------------------------------------------------------------------------
	self:addLookupList(DB, 193,	L["Blue Dragonspawn"],			BZ["Azshara"],				36.3, 72.9)
	self:addLookupList(DB, 645,	BB["Cookie"],				BZ["The Deadmines"],			0, 0)
	self:addLookupList(DB, 657,	L["Defias Pirate"],			BZ["The Deadmines"],			0, 0)
	self:addLookupList(DB, 740,	L["Adolescent Whelp"],			BZ["Swamp of Sorrows"],			16.6, 55.7)
	self:addLookupList(DB, 741,	L["Dreaming Whelp"],			BZ["Swamp of Sorrows"],			16.6, 55.7)
	self:addLookupList(DB, 1042,	L["Red Whelp"],				BZ["Wetlands"],				56.7, 43.0)
	self:addLookupList(DB, 1044,	L["Flamesnorting Whelp"],		BZ["Wetlands"],				62.7, 32.7)
	self:addLookupList(DB, 1069,	L["Crimson Whelp"],			BZ["Wetlands"],				61.5, 30.8)
	self:addLookupList(DB, 1140,	L["Razormaw Matriarch"],		BZ["Wetlands"],				69.0, 28.9)
	self:addLookupList(DB, 1561,	L["Bloodsail Raider"],			BZ["Stranglethorn Vale"],		27.0, 70.0)
	self:addLookupList(DB, 1562,	L["Bloodsail Mage"],			BZ["Stranglethorn Vale"],		28.1, 70.3)
	self:addLookupList(DB, 1563,	L["Bloodsail Swashbuckler"],		BZ["Stranglethorn Vale"],		30.0, 80.0)
	self:addLookupList(DB, 1564,	L["Bloodsail Warlock"],			BZ["Stranglethorn Vale"],		30.0, 80.0)
	self:addLookupList(DB, 1565,	L["Bloodsail Sea Dog"],			BZ["Stranglethorn Vale"],		30.0, 90.0)
	self:addLookupList(DB, 1653,	L["Bloodsail Elder Magus"],		BZ["Stranglethorn Vale"],		30.0, 90.0)
	self:addLookupList(DB, 1806,	L["Vile Slime"],			BZ["Western Plaguelands"],		66.7, 42.2)
	self:addLookupList(DB, 1808,	L["Devouring Ooze"],			BZ["Western Plaguelands"],		64.5, 36.5)
	self:addLookupList(DB, 1920,	L["Dalaran Spellscribe"],		BZ["Silverpine Forest"],		63.5, 63.3)
	self:addLookupList(DB, 2271,	L["Dalaran Shield Guard"],		BZ["Alterac Mountains"],		21.0, 81.0)
	self:addLookupList(DB, 2272,	L["Dalaran Theurgist"],			BZ["Alterac Mountains"],		21.0, 83.0)
	self:addLookupList(DB, 2358,	L["Dalaran Summoner"],			BZ["Alterac Mountains"],		22.0, 65.0)
	self:addLookupList(DB, 2545,	L["\"Pretty Boy\" Duncan"],		BZ["Stranglethorn Vale"],		27.0, 68.0)
	self:addLookupList(DB, 2725,	L["Scalding Whelp"],			BZ["Badlands"],				68.3, 52.6)
	self:addLookupList(DB, 3636,	L["Deviate Ravager"],			BZ["Wailing Caverns"],			0, 0)
	self:addLookupList(DB, 3637,	L["Deviate Guardian"],			BZ["Wailing Caverns"],			0, 0)
	self:addLookupList(DB, 4324,	L["Searing Whelp"],			BZ["Dustwallow Marsh"],			42.0, 65.0)
	self:addLookupList(DB, 4505,	L["Bloodsail Deckhand"],		BZ["Stranglethorn Vale"],		30.0, 90.0)
	self:addLookupList(DB, 4506,	L["Bloodsail Swabby"],			BZ["Stranglethorn Vale"],		30.0, 90.0)
	self:addLookupList(DB, 5842,	L["Takk the Leaper"],			BZ["The Barrens"],			60.2, 9.5)
	self:addLookupList(DB, 6129,	L["Draconic Magelord"],			BZ["Azshara"],				42.7, 74.9)
	self:addLookupList(DB, 6130,	L["Blue Scalebane"],			BZ["Azshara"],				43.2, 74.0)
	self:addLookupList(DB, 6131,	L["Draconic Mageweaver"],		BZ["Azshara"],				36.4, 72.7)
	self:addLookupList(DB, 6557,	L["Primal Ooze"],			BZ["Un'Goro Crater"],			61.5, 60.5)
	self:addLookupList(DB, 6559,	L["Glutinous Ooze"],			BZ["Un'Goro Crater"],			42.3, 70.6)
	self:addLookupList(DB, 6581,	L["Ravasaur Matriarch"],		BZ["Un'Goro Crater"],			64.6, 61.8)
	self:addLookupList(DB, 7092,	L["Tainted Ooze"],			BZ["Felwood"],				41.5, 50.1)
	self:addLookupList(DB, 7093,	L["Vile Ooze"],				BZ["Felwood"],				37.5, 52.1)
	self:addLookupList(DB, 8606,	L["Living Decay"],			BZ["Eastern Plaguelands"],		46.3, 62.8)
	self:addLookupList(DB, 8607,	L["Rotting Sludge"],			BZ["Eastern Plaguelands"],		46.4, 62.9)
	self:addLookupList(DB, 9477,	L["Cloned Ooze"],			BZ["Un'Goro Crater"],			61.5, 60.0)
	self:addLookupList(DB, 9621,	L["Gargantuan Ooze"],			BZ["Un'Goro Crater"],			61.7, 61.4)
	self:addLookupList(DB, 9736,	BB["Quartermaster Zigris"],			BZ["Blackrock Spire"],			52.2, 81.2)
	self:addLookupList(DB, 10184,	BB["Onyxia"],				BZ["Onyxia's Lair"],			0, 0)
	self:addLookupList(DB, 10440,	BB["Baron Rivendare"],			BZ["Stratholme"],			0, 0)
	self:addLookupList(DB, 10596,	BB["Mother Smolderweb"],			BZ["Blackrock Spire"],			63.6, 74.4)
	self:addLookupList(DB, 11382,	BB["Bloodlord Mandokir"],		BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 12387,	L["Large Vile Slime"],			BZ["Western Plaguelands"],		63.4, 37.2)
	self:addLookupList(DB, 14345,	L["The Ongar"],				BZ["Felwood"],				41.2, 46.7)
	self:addLookupList(DB, 14509,	BB["High Priest Thekal"],		BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 14232,	L["Dart"],				BZ["Dustwallow Marsh"],			48.0, 19.8)
	self:addLookupList(DB, 14821,	L["Razzashi Raptor"],			BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 15335,	L["Flesh Hunter"],			BZ["Ruins of Ahn'Qiraj"],		0, 0)
	self:addLookupList(DB, 15550,	BB["Attumen the Huntsman"],		BZ["Karazhan"],				0, 0)
	self:addLookupList(DB, 19622,	BB["Kael'thas Sunstrider"],		BZ["The Eye"],				0, 0)
	self:addLookupList(DB, 20197,	L["Bogflare Needler"],			BZ["Zangarmarsh"],			60.0, 46.5)
	self:addLookupList(DB, 23035,	BB["Anzu"],				BZ["Sethekk Halls"],			0, 0)
	self:addLookupList(DB, 23682,	BB["Headless Horseman"],		BZ["Scarlet Monastery"],		0, 0)
	self:addLookupList(DB, 23872,	BB["Coren Direbrew"],			BZ["Blackrock Depths"],			0, 0)
	self:addLookupList(DB, 24396,	L["Forest Frog"],			BZ["Zul'Aman"],				0, 0)
	self:addLookupList(DB, 24664,	BB["Kael'thas Sunstrider"],		BZ["Magisters' Terrace"],		0, 0)
	self:addLookupList(DB, 25740,	BB["Ahune"],				BZ["The Slave Pens"],			0, 0)
	self:addLookupList(DB, 26532,	BB["Chrono-Lord Epoch"],		BZ["The Culling of Stratholme"],	0, 0)
	self:addLookupList(DB, 26693,	BB["Skadi the Ruthless"],		BZ["Utgarde Pinnacle"],			0, 0)
	self:addLookupList(DB, 27656,	BB["Ley-Guardian Eregos"], BZ["The Oculus"],            0,0)
	self:addLookupList(DB, 28194,	BB["Prince Tenris Mirkblood"],		BZ["Karazhan"],				0, 0)
	self:addLookupList(DB, 28859,	BB["Malygos"],				BZ["The Eye of Eternity"],		0, 0)
	self:addLookupList(DB, 28860,	BB["Sartharion"],			BZ["The Obsidian Sanctum"],		0, 0)
	self:addLookupList(DB, 29334,	L["Gundrak Raptor"],			BZ["Zul'Drak"],				0, 0)
	self:addLookupList(DB, 31125,	BB["Archavon the Stone Watcher"],	BZ["Vault of Archavon"],		0, 0)
	self:addLookupList(DB, 32273,	BB["Infinite Corruptor"],		BZ["The Culling of Stratholme"],	0, 0)
	self:addLookupList(DB, 32491,	L["Time-Lost Proto Drake"],		BZ["The Storm Peaks"],			50.2, 69.2)
	self:addLookupList(DB, 33288,	BB["Yogg-Saron"],			BZ["Ulduar"],				0, 0)
	self:addLookupList(DB, 33993,	BB["Emalon the Storm Watcher"],		BZ["Vault of Archavon"],		0, 0)
	self:addLookupList(DB, 34564,	BB["Anub'arak"],			BZ["Trial of the Crusader"],		0, 0)
	self:addLookupList(DB, 35013,	BB["Koralon the Flame Watcher"],	BZ["Vault of Archavon"],		0, 0)
	self:addLookupList(DB, 36296,	L["Apothecary Hummel"],	BZ["Shadowfang Keep"],		0, 0)
	self:addLookupList(DB, 36597,	BB["The Lich King"],	BZ["Icecrown Citadel"],		0, 0)
	self:addLookupList(DB, 38433, BB["Toravon the Ice Watcher"],	BZ["Vault of Archavon"],		0, 0)
	self:addLookupList(DB, 43214, BB["Slabhide"],	BZ["The Stonecore"],		36.6, 46.0)
	self:addLookupList(DB, 43873, BB["Altairus"],	BZ["The Vortex Pinnacle"],		52.2, 80.0)
	self:addLookupList(DB, 46753, BB["Al'Akir"],	BZ["Throne of the Four Winds"],		0, 0)
	self:addLookupList(DB, 47676, L["Baradin Fox"],	BZ["Tol Barad Peninsula"],		52.6, 59.2)
	self:addLookupList(DB, 49822, L["Jadefang"],	BZ["Deepholm"],		61.3, 22.5)
	self:addLookupList(DB, 50005, L["Poseidus"],	BZ["Shimmering Expanse"],		46.2, 50.4)
	self:addLookupList(DB, 50062, L["Aeonaxx"],	BZ["Deepholm"],		52.2, 43.0)
	self:addLookupList(DB, 50245, L["Dormus the Camel-Hoarder"],	BZ["Uldum"],		0, 0)
	self:addLookupList(DB, 52059, BB["High Priestess Kilnara"],	BZ["Zul'Gurub"],		0, 0)
	self:addLookupList(DB, 52151, BB["Bloodlord Mandokir"],	BZ["Zul'Gurub"],		0, 0)
	self:addLookupList(DB, 52409, BB["Ragnaros"],	BZ["Firelands"],		0, 0)
	self:addLookupList(DB, 52530, BB["Alysrazor"],	BZ["Firelands"],		0, 0)
end
