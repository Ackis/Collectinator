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
	self:addLookupList(DB, 3636,	L["Deviate Ravager"],			BZ["Wailing Caverns"],			0, 0)
	self:addLookupList(DB, 3637,	L["Deviate Guardian"],			BZ["Wailing Caverns"],			0, 0)
	self:addLookupList(DB, 9736,	BB["Quartermaster Zigris"],		BZ["Blackrock Spire"],			52.2, 81.2)
	self:addLookupList(DB, 10184,	BB["Onyxia"],				BZ["Onyxia's Lair"],			0, 0)
	self:addLookupList(DB, 10440,	BB["Baron Rivendare"],			BZ["Stratholme"],			0, 0)
	self:addLookupList(DB, 10596,	BB["Mother Smolderweb"],		BZ["Blackrock Spire"],			63.6, 74.4)
	self:addLookupList(DB, 11382,	BB["Bloodlord Mandokir"],		BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 14509,	BB["High Priest Thekal"],		BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 14821,	L["Razzashi Raptor"],			BZ["Zul'Gurub"],			0, 0)
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
	self:addLookupList(DB, 27656,	BB["Ley-Guardian Eregos"],		BZ["The Oculus"],			0, 0)
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
	self:addLookupList(DB, 36296,	L["Apothecary Hummel"],			BZ["Shadowfang Keep"],			0, 0)
	self:addLookupList(DB, 36597,	BB["The Lich King"],			BZ["Icecrown Citadel"],			0, 0)
	self:addLookupList(DB, 38433,	BB["Toravon the Ice Watcher"],		BZ["Vault of Archavon"],		0, 0)
	self:addLookupList(DB, 39384,	L["Noxious Whelp"],			BZ["Feralas"],				49.6, 8.6)
	self:addLookupList(DB, 43214,	BB["Slabhide"],				BZ["The Stonecore"],			36.6, 46.0)
	self:addLookupList(DB, 43873,	BB["Altairus"],				BZ["The Vortex Pinnacle"],		52.2, 80.0)
	self:addLookupList(DB, 46753,	BB["Al'Akir"],				BZ["Throne of the Four Winds"],		0, 0)
	self:addLookupList(DB, 47676,	L["Baradin Fox"],			BZ["Tol Barad Peninsula"],		52.6, 59.2)
	self:addLookupList(DB, 48522,	L["Defias Pirate"],			BZ["The Deadmines"],			0, 0)
	self:addLookupList(DB, 49822,	L["Jadefang"],				BZ["Deepholm"],				61.3, 22.5)
	self:addLookupList(DB, 50005,	L["Poseidus"],				BZ["Shimmering Expanse"],		46.2, 50.4)
	self:addLookupList(DB, 50062,	L["Aeonaxx"],				BZ["Deepholm"],				52.2, 43.0)
	self:addLookupList(DB, 50245,	L["Dormus the Camel-Hoarder"],		BZ["Uldum"],				0, 0)
	self:addLookupList(DB, 52059,	BB["High Priestess Kilnara"],		BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 52151,	BB["Bloodlord Mandokir"],		BZ["Zul'Gurub"],			0, 0)
	self:addLookupList(DB, 52409,	BB["Ragnaros"],				BZ["Firelands"],			0, 0)
	self:addLookupList(DB, 52530,	BB["Alysrazor"],			BZ["Firelands"],			0, 0)
	self:addLookupList(DB, 56173,	BB["Madness of Deathwing"],		BZ["Dragon Soul"],			0, 0)
	self:addLookupList(DB, 55294,	BB["Ultraxion"],			BZ["Dragon Soul"],			0, 0)
	self:addLookupList(DB, 58336,	L["Darkmoon Rabbit"],			BZ["Darkmoon Island"],			78.0, 82.2)
end
