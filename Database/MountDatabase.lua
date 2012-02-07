--------------------------------------------------------------------------------------------------------------------
-- ./DB/MountDatabase.lua
-- Mount Database data for all of Collectinator
--------------------------------------------------------------------------------------------------------------------
-- File date: @file-date-iso@
-- Project version: @project-version@
--------------------------------------------------------------------------------------------------------------------
-- Please see http://www.wowace.com/projects/collectinator/for more information.
--------------------------------------------------------------------------------------------------------------------
-- License:
-- Please see LICENSE.txt
-- This source code is released under All Rights Reserved.
--------------------------------------------------------------------------------------------------------------------

local MODNAME		= "Collectinator"
local addon		= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

-------------------------------------------------------------------------------
-- Item "rarity"
-------------------------------------------------------------------------------
local R_COMMON, R_UNCOMMON, R_RARE, R_EPIC, R_LEGENDARY, R_ARTIFACT = 1, 2, 3, 4, 5, 6

-------------------------------------------------------------------------------
-- Origin
-------------------------------------------------------------------------------
local GAME_ORIG, GAME_BC, GAME_WOTLK, GAME_CATA = 0, 1, 2, 3

-------------------------------------------------------------------------------
-- Filter flags
-------------------------------------------------------------------------------
local F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_CRAFT, F_INSTANCE, F_RAID, F_SEASONAL, F_WORLD_DROP, F_MOB_DROP = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
local F_TCG, F_SPEC_EVENT, F_COLLECTORS, F_REMOVED, F_ACHIEVEMENT, F_PVP, F_STORE = 11, 12, 13, 14, 15, 16, 77
local F_BOE, F_BOP, F_BOA = 17, 18, 19
local F_ALCH, F_BS, F_COOKING, F_ENCH, F_ENG, F_FIRST_AID, F_INSC, F_JC, F_LW, F_SMELT, F_TAILOR, F_FISHING = 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32

-------------------------------------------------------------------------------
-- Reputation Filter Flags
-------------------------------------------------------------------------------
local F_ARGENT_DAWN, F_BLOODSAIL, F_CENARION_CIRCLE, F_THORIUM_BROTHERHOOD, F_TIMBERMAW, F_WINTERSRPING, F_ZANDALAR = 33, 34, 35, 36, 37, 38, 39
local F_ALDOR, F_ASHTONGUE, F_CENARION_EXPIDITION, F_HELLFIRE, F_CONSORTIUM, F_KOT, F_LOWER_CITY, F_NAGRAND = 40, 41, 42, 43, 44, 45, 46, 47
local F_NETHERWING, F_SCALE_SANDS, F_SCRYER, F_SHATAR, F_SKYGUARD, F_SHATTEREDSUN, F_SPOREGGAR, F_VIOLET_EYE = 48, 49, 50, 51, 52, 53, 54, 55
local F_ARGENT_CRUSADE, F_FRENZYHEART, F_EBON_BLADE, F_KIRINTOR, F_HODIR, F_KALUAK, F_ORACLES, F_WYRMREST = 56, 57, 58, 59, 60, 61, 62, 63
local F_WRATHCOMMON1, F_WRATHCOMMON2, F_WRATHCOMMON3, F_WRATHCOMMON4, F_WRATHCOMMON5 = 64, 65, 66, 67, 68
local F_CITY1, F_CITY2, F_CITY3, F_CITY4, F_CITY5 = 69, 70, 71, 72, 73
local F_PVP1, F_PVP2, F_PVP3 = 74, 75, 76

-- City 1 Darnassus/Darkspear
-- City 2 Stormwind/Orgrimmar
-- City 3 Gnomerga/Thunder Bluff
-- City 4 Ironforge/Undercity
-- City 5 Exodar/Silvermoon
-- PVP 1 WSG
-- PVP 2 AV
-- PVP 3 AB
--Wrath Common Factions 1 (The Silver Covenant/The Sunreavers)
--Wrath Common Factions 2 (Explorer's League/Hand of Vengance)
--Wrath Common Factions 3 (Explorer's League/Valiance Expedition)
--Wrath Common Factions 4 (The Frostborn/The Taunka)
--Wrath Common Factions 5 (Alliance Vanguard/Horde Expedition)

-------------------------------------------------------------------------------
-- Acquire types
-------------------------------------------------------------------------------
local A_VENDOR, A_QUEST, A_CRAFTED, A_MOB, A_SEASONAL, A_REPUTATION, A_WORLD_DROP, A_CUSTOM, A_ACHIEVEMENT = 1, 2, 3, 4, 5, 6, 7, 8, 9

-------------------------------------------------------------------------------
-- Reputation Levels
-------------------------------------------------------------------------------
local FRIENDLY = 1
local HONORED = 2
local REVERED = 3
local EXALTED = 4

-------------------------------------------------------------------------------
-- Class types
-------------------------------------------------------------------------------
local C_DK, C_DRUID, C_HUNTER, C_MAGE, C_PALADIN, C_PRIEST, C_ROGUE, C_SHAMAN, C_WARLOCK, C_WARRIOR = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

local MY_CLASS = select(2, UnitClass("player"))
local MY_RACE = select(2, UnitRace("player"))
local MY_FACTION = select(2, UnitFactionGroup("player"))

local initialized = false
local num_mounts = 0

function addon:GetMountTotal(DB)
	if initialized then
		return num_mounts
	end
	initialized = true

	-------------------------------------------------------------------------------
	-- Wrapper function
	-------------------------------------------------------------------------------
	local function AddMount(SpellID, MountItemID, Rarity, Game, Class)
		addon:AddCompanion(DB, "mount", SpellID, MountItemID, Rarity, Game, Class)
		num_mounts = num_mounts + 1
	end

	local function AddMountFlags(SpellID, ...)
		addon:AddCompanionFlags(DB, SpellID, ...)

		if not addon.IsCorrectFaction(MY_FACTION, DB[SpellID]["Flags"]) then
			num_mounts = num_mounts - 1
		end
	end

-- ACHIEVEMENTS
	-- Reins of the Albino Drake - 60025
	AddMount(60025, 44178, R_EPIC, GAME_WOTLK)
	AddMountFlags(60025, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 60025, A_ACHIEVEMENT, 2143)

	-- Reins of the Red Proto-Drake - 59961
	AddMount(59961, 44160, R_EPIC, GAME_WOTLK)
	AddMountFlags(59961, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 59961, A_ACHIEVEMENT, 2136)

	-- Rusted Proto-Drake - 63963
	AddMount(63963, 45802, R_EPIC, GAME_WOTLK)
	AddMountFlags(63963, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 63963, A_ACHIEVEMENT, 2957)

	-- Ironbound Proto-Drake - 63956
	AddMount(63956, 45801, R_EPIC, GAME_WOTLK)
	AddMountFlags(63956, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 63956, A_ACHIEVEMENT, 2958)

	-- Violet Proto-Drake - 60024
	AddMount(60024, 44177, R_EPIC, GAME_WOTLK)
	AddMountFlags(60024, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 60024, A_ACHIEVEMENT, 2145)

	-- Bloodbathed Frostbrood Vanquisher - 72808
	AddMount(72808, 51954, R_EPIC, GAME_WOTLK)
	AddMountFlags(72808, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 72808, A_ACHIEVEMENT, 4602)

	-- Icebound Frostbrood Vanquisher - 72807
	AddMount(72807, 51955, R_EPIC, GAME_WOTLK)
	AddMountFlags(72807, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 72807, A_ACHIEVEMENT, 4603)

-- FISHING
	-- Sea Turtle
	AddMount(64731, 46109, R_RARE, GAME_WOTLK)
	AddMountFlags(64731, F_ALLIANCE, F_HORDE, F_CRAFT, F_FISHING, F_BOP)
	self:AddCompanionAcquire(DB, 64731, A_ACHIEVEMENT, 3218)

-- PLAYERMADE
	 -- Turbo-Charged Flying Machine Control - 44151
	AddMount(44151, 34061, R_EPIC, GAME_BC)
	AddMountFlags(44151, F_ALLIANCE, F_HORDE, F_BOP, F_ENG, F_CRAFT)
	self:AddCompanionAcquire(DB, 44151, A_CRAFTED, 4036, 41157)

	 -- Flying Machine Control - 44153
	AddMount(44153, 34060, R_RARE, GAME_BC)
	AddMountFlags(44153, F_ALLIANCE, F_HORDE, F_BOE, F_ENG, F_CRAFT)
	self:AddCompanionAcquire(DB, 44153, A_CRAFTED, 4036, 44155)

	-- Flying Carpet - 61451
	AddMount(61451, 44554, R_RARE, GAME_WOTLK)
	AddMountFlags(61451, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFT)
	self:AddCompanionAcquire(DB, 61451, A_CRAFTED, 3908, 60969)

	-- Magnificent Flying Carpet - 61309
	AddMount(61309, 44558, R_EPIC, GAME_WOTLK)
	AddMountFlags(61309, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFT)
	self:AddCompanionAcquire(DB, 61309, A_CRAFTED, 3908, 60971)

	-- Frosty Flying Carpet - 75596
	AddMount(75596, 54797, R_EPIC, GAME_WOTLK)
	AddMountFlags(75596, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFT)
	self:AddCompanionAcquire(DB, 75596, A_CRAFTED, 3908, 75597)


	-------------------------------------------------------------------------------
	-- Faction-specific Mounts.
	-------------------------------------------------------------------------------
	if MY_FACTION == "Alliance" then

		-- Blue Dragonhawk - 61996
		AddMount(61996, 44843, R_EPIC, GAME_WOTLK)
		AddMountFlags(61996, F_ALLIANCE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(DB, 61996, A_ACHIEVEMENT, 2536)
		
		-- Reins of the Ice Mammoth - 59799
		AddMount(59799, 43958, R_EPIC, GAME_WOTLK)
		AddMountFlags(59799, F_ALLIANCE, F_VENDOR, F_BOP, F_HODIR)
		self:AddCompanionAcquire(DB, 59799, A_REPUTATION, 1119, REVERED, 32540)

		-- Reins of the Grand Ice Mammoth - 61470
		AddMount(61470, 43961, R_EPIC, GAME_WOTLK)
		AddMountFlags(61470, F_ALLIANCE, F_VENDOR, F_BOP, F_HODIR)
		self:AddCompanionAcquire(DB, 61470, A_REPUTATION, 1119, EXALTED, 32540)
		
		-- Reins of the Traveler's Tundra Mammoth - 61425
		AddMount(61425, 44235, R_EPIC, GAME_WOTLK)
		AddMountFlags(61425, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 61425, A_VENDOR, 32216)
		
		-- Quel'dorei Steed - 66090
		AddMount(66090, 46815, R_EPIC, GAME_WOTLK)
		AddMountFlags(66090, F_ALLIANCE, F_VENDOR, F_BOP, F_WRATHCOMMON1)
		self:AddCompanionAcquire(DB, 66090, A_REPUTATION, 1094, EXALTED, 34881)

		-- Silver Covenant Hippogryph - 66087
		AddMount(66087, 46813, R_EPIC, GAME_WOTLK)
		AddMountFlags(66087, F_ALLIANCE, F_VENDOR, F_BOP, F_WRATHCOMMON1)
		self:AddCompanionAcquire(DB, 66087, A_REPUTATION, 1094, EXALTED, 34881)
		
		-- White Mechanostrider Mod B - 15779
		AddMount(15779, 13326, R_EPIC, GAME_ORIG)
		AddMountFlags(15779, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 15779, A_CUSTOM, 23)

		-- Icy Blue Mechanostrider Mod A - 17459
		AddMount(17459, 13327, R_EPIC, GAME_ORIG)
		AddMountFlags(17459, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 17459, A_CUSTOM, 23)

		-- Palomino Bridle - 16082
		AddMount(16082, 12354, R_EPIC, GAME_ORIG)
		AddMountFlags(16082, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16082, A_CUSTOM, 23)

		-- White Stallion Bridle - 16083
		AddMount(16083, 12353, R_EPIC, GAME_ORIG)
		AddMountFlags(16083, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16083, A_CUSTOM, 23)

		-- Frost Ram - 17460
		AddMount(17460, 13329, R_EPIC, GAME_ORIG)
		AddMountFlags(17460, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 17460, A_CUSTOM, 23)

		-- Black Ram - 17461
		AddMount(17461, 13328, R_EPIC, GAME_ORIG)
		AddMountFlags(17461, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 17461, A_CUSTOM, 23)

		-- Reins of the Nightsaber - 16055
		AddMount(16055, 12303, R_EPIC, GAME_ORIG)
		AddMountFlags(16055, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16055, A_CUSTOM, 23)

		-- Reins of the Ancient Frostsaber - 16056
		AddMount(16056, 12302, R_EPIC, GAME_ORIG)
		AddMountFlags(16056, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16056, A_CUSTOM, 23)
		
		-- Reins of the Wooly Mammoth - 59793
		AddMount(59791, 44230, R_EPIC, GAME_WOTLK)
		AddMountFlags(59791, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 59791, A_VENDOR, 32216)
		
		-- Armored Snowy Gryphon - 61229
		AddMount(61229, 44689, R_EPIC, GAME_WOTLK)
		AddMountFlags(61229, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 61229, A_VENDOR, 32216)

		-- Reins of the Armored Brown Bear - 60114
		AddMount(60114, 44225, R_EPIC, GAME_WOTLK)
		AddMountFlags(60114, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 60114, A_VENDOR, 32216)

		-- Great Green Elekk - 35712
		AddMount(35712, 29746, R_EPIC, GAME_BC)
		AddMountFlags(35712, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35712, A_VENDOR, 17584)

		-- Great Blue Elekk - 35713
		AddMount(35713, 29745, R_EPIC, GAME_BC)
		AddMountFlags(35713, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35713, A_VENDOR, 17584)

		-- Great Purple Elekk - 35714
		AddMount(35714, 29747, R_EPIC, GAME_BC)
		AddMountFlags(35714, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35714, A_VENDOR, 17584)

		-- Reins of the Winterspring Frostsaber - 17229
		AddMount(17229, 13086, R_EPIC, GAME_ORIG)
		AddMountFlags(17229, F_ALLIANCE, F_VENDOR, F_BOP, F_WINTERSPRING)
		self:AddCompanionAcquire(DB, 17229, A_REPUTATION, 589, EXALTED, 10618)

		-- Brown Horse Bridle - 458
		AddMount(458, 5656, R_RARE, GAME_ORIG)
		AddMountFlags(458, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 458, A_VENDOR, 384, A_VENDOR, 1460, A_VENDOR, 2357, A_VENDOR, 4885)

		-- Black Stallion Bridle - 470
		AddMount(470, 2411, R_RARE, GAME_ORIG)
		AddMountFlags(470, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 470, A_VENDOR, 1460)

		-- Pinto Bridle - 472
		AddMount(472, 2414, R_RARE, GAME_ORIG)
		AddMountFlags(472, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 472, A_VENDOR, 384, A_VENDOR, 1460, A_VENDOR, 2357, A_VENDOR, 4885)

		-- Chestnut Mare Bridle - 6648
		AddMount(6648, 5655, R_RARE, GAME_ORIG)
		AddMountFlags(6648, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 6648, A_VENDOR, 384, A_VENDOR, 1460, A_VENDOR, 2357, A_VENDOR, 4885)

		-- Gray Ram - 6777
		AddMount(6777, 5864, R_RARE, GAME_ORIG)
		AddMountFlags(6777, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 6777, A_VENDOR, 1261)

		-- White Ram - 6898
		AddMount(6898, 5873, R_RARE, GAME_ORIG)
		AddMountFlags(6898, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 6898, A_VENDOR, 1261)

		-- Brown Ram - 6899
		AddMount(6899, 5872, R_RARE, GAME_ORIG)
		AddMountFlags(6899, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 6899, A_VENDOR, 1261)

		-- Red Mechanostrider - 10873
		AddMount(10873, 8563, R_RARE, GAME_ORIG)
		AddMountFlags(10873, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 10873, A_VENDOR, 7955)

		-- Blue Mechanostrider - 10969
		AddMount(10969, 8595, R_RARE, GAME_ORIG)
		AddMountFlags(10969, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 10969, A_VENDOR, 7955)

		-- Green Mechanostrider - 17453
		AddMount(17453, 13321, R_RARE, GAME_ORIG)
		AddMountFlags(17453, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 17453, A_VENDOR, 7955)

		-- Unpainted Mechanostrider - 17454
		AddMount(17454, 13322, R_RARE, GAME_ORIG)
		AddMountFlags(17454, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 17454, A_VENDOR, 7955)

		-- Swift Yellow Mechanostrider - 23222
		AddMount(23222, 18774, R_EPIC, GAME_ORIG)
		AddMountFlags(23222, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23222, A_VENDOR, 7955, A_QUEST, 7675, A_QUEST, 7676)

		-- Swift White Mechanostrider - 23223
		AddMount(23223, 18773, R_EPIC, GAME_ORIG)
		AddMountFlags(23223, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23223, A_VENDOR, 7955, A_QUEST, 7675, A_QUEST, 7676)

		-- Swift Green Mechanostrider - 23225
		AddMount(23225, 18772, R_EPIC, GAME_ORIG)
		AddMountFlags(23225, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23225, A_VENDOR, 7955, A_QUEST, 7675, A_QUEST, 7676)

		-- Swift Palomino - 23227
		AddMount(23227, 18776, R_EPIC, GAME_ORIG)
		AddMountFlags(23227, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23227, A_VENDOR, 384, A_VENDOR, 2357, A_VENDOR, 4885, A_QUEST, 7677, A_QUEST, 7678)

		-- Swift White Steed - 23228
		AddMount(23228, 18778, R_EPIC, GAME_ORIG)
		AddMountFlags(23228, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23228, A_VENDOR, 384, A_VENDOR, 2357, A_VENDOR, 4885, A_QUEST, 7677, A_QUEST, 7678)

		-- Swift Brown Steed - 23229
		AddMount(23229, 18777, R_EPIC, GAME_ORIG)
		AddMountFlags(23229, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23229, A_VENDOR, 384, A_VENDOR, 2357, A_VENDOR, 4885, A_QUEST, 7677, A_QUEST, 7678)

		-- Swift Brown Ram - 23238
		AddMount(23238, 18786, R_EPIC, GAME_ORIG)
		AddMountFlags(23238, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23238, A_VENDOR, 1261, A_QUEST, 7673, A_QUEST, 7674)

		-- Swift Gray Ram - 23239
		AddMount(23239, 18787, R_EPIC, GAME_ORIG)
		AddMountFlags(23239, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23239, A_VENDOR, 1261, A_QUEST, 7673, A_QUEST, 7674)

		-- Swift White Ram - 23240
		AddMount(23240, 18785, R_EPIC, GAME_ORIG)
		AddMountFlags(23240, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23240, A_VENDOR, 1261, A_QUEST, 7673, A_QUEST, 7674)

		-- Brown Elekk - 34406
		AddMount(34406, 28481, R_RARE, GAME_BC)
		AddMountFlags(34406, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 34406, A_VENDOR, 17584)

		-- Gray Elekk - 35710
		AddMount(35710, 29744, R_RARE, GAME_BC)
		AddMountFlags(35710, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35710, A_VENDOR, 17584)

		-- Purple Elekk - 35711
		AddMount(35711, 29743, R_RARE, GAME_BC)
		AddMountFlags(35711, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35711, A_VENDOR, 17584)

		-- Reins of the Swift Mistsaber - 23219
		AddMount(23219, 18767, R_EPIC, GAME_ORIG)
		AddMountFlags(23219, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23219, A_VENDOR, 4730, A_QUEST, 7671, A_QUEST, 7672)

		-- Reins of the Swift Frostsaber - 23221
		AddMount(23221, 18766, R_EPIC, GAME_ORIG)
		AddMountFlags(23221, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23221, A_VENDOR, 4730, A_QUEST, 7671, A_QUEST, 7672)

		-- Reins of the Swift Stormsaber - 23338
		AddMount(23338, 18902, R_EPIC, GAME_ORIG)
		AddMountFlags(23338, F_ALLIANCE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23338, A_VENDOR, 4730, A_QUEST, 7671, A_QUEST, 7672)

		-- Reins of the Striped Dawnsaber - 66847
		AddMount(66847, 47100, R_RARE, GAME_WOTLK)
		AddMountFlags(66847, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 66847, A_VENDOR, 4730)

		-- Reins of the Striped Frostsaber - 8394
		AddMount(8394, 8631, R_RARE, GAME_ORIG)
		AddMountFlags(8394, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 8394, A_VENDOR, 4730)

		-- Reins of the Spotted Frostsaber - 10789
		AddMount(10789, 8632, R_RARE, GAME_ORIG)
		AddMountFlags(10789, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 10789, A_VENDOR, 4730)

		-- Reins of the Striped Nightsaber - 10793
		AddMount(10793, 8629, R_RARE, GAME_ORIG)
		AddMountFlags(10793, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 10793, A_VENDOR, 4730)

		-- Reins of the Black War Bear - 60118
		AddMount(60118, 44223, R_EPIC, GAME_WOTLK)
		AddMountFlags(60118, F_ALLIANCE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(DB, 60118, A_ACHIEVEMENT, 614)

		-- Reins of the Black War Mammoth - 59785
		AddMount(59785, 43956, R_EPIC, GAME_WOTLK)
		AddMountFlags(59785, F_ALLIANCE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 59785, A_VENDOR, 32294)

		-- Black War Steed Bridle - 22717
		AddMount(22717, 29468, R_EPIC, GAME_ORIG)
		AddMountFlags(22717, F_ALLIANCE, F_VENDOR, F_PVP, F_BOP)
		self:AddCompanionAcquire(DB, 22717, A_VENDOR, 12783)

		-- Black Battlestrider - 22719
		AddMount(22719, 29465, R_EPIC, GAME_ORIG)
		AddMountFlags(22719, F_ALLIANCE, F_VENDOR, F_PVP, F_BOP)
		self:AddCompanionAcquire(DB, 22719, A_VENDOR, 12783)

		-- Black War Ram - 22720
		AddMount(22720, 29467, R_EPIC, GAME_ORIG)
		AddMountFlags(22720, F_ALLIANCE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 22720, A_VENDOR, 12783)

		-- Stormpike Battle Charger - 23510
		AddMount(23510, 19030, R_EPIC, GAME_ORIG)
		AddMountFlags(23510, F_ALLIANCE, F_VENDOR, F_PVP, F_BOP)
		self:AddCompanionAcquire(DB, 23510, A_VENDOR, 13216, A_VENDOR, 13217)

		-- Reins of the Black War Tiger - 22723
		AddMount(22723, 29471, R_EPIC, GAME_ORIG)
		AddMountFlags(22723, F_ALLIANCE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 22723, A_VENDOR, 12783)

		-- Reins of the Black War Elekk - 48027
		AddMount(48027, 35906, R_EPIC, GAME_BC)
		AddMountFlags(48027, F_ALLIANCE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 48027, A_VENDOR, 12783)

		-- Grand Black War Mammoth - 61465
		AddMount(61465, 43959, R_EPIC, GAME_WOTLK)
		AddMountFlags(61465, F_ALLIANCE, F_MOB_DROP, F_RAID, F_BOP)
		self:AddCompanionAcquire(DB, 61465, A_MOB, 35013, A_MOB, 33993, A_MOB, 31125, A_MOB, 38433)
		
		-- Golden Gryphon - 32235
		AddMount(32235, 25470, R_RARE, GAME_BC)
		AddMountFlags(32235, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32235, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Ebon Gryphon - 32239
		AddMount(32239, 25471, R_RARE, GAME_BC)
		AddMountFlags(32239, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32239, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Snowy Gryphon - 32240
		AddMount(32240, 25472, R_RARE, GAME_BC)
		AddMountFlags(32240, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32240, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Swift Blue Gryphon - 32242
		AddMount(32242, 25473, R_EPIC, GAME_BC)
		AddMountFlags(32242, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32242, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Swift Red Gryphon - 32289
		AddMount(32289, 25527, R_EPIC, GAME_BC)
		AddMountFlags(32289, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32289, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Swift Green Gryphon - 32290
		AddMount(32290, 25528, R_EPIC, GAME_BC)
		AddMountFlags(32290, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32290, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Swift Purple Gryphon - 32292
		AddMount(32292, 25529, R_EPIC, GAME_BC)
		AddMountFlags(32292, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32292, A_VENDOR, 20510, A_VENDOR, 35131, A_VENDOR, 35101, A_VENDOR, 32216)

		-- Darnassian Nightsaber - 63637
		AddMount(63637, 45591, R_EPIC, GAME_WOTLK)
		AddMountFlags(63637, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY1)
		self:AddCompanionAcquire(DB, 63637, A_VENDOR, 33653)

		-- Swift Moonsaber - 65638
		AddMount(65638, 46744, R_EPIC, GAME_WOTLK)
		AddMountFlags(65638, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY1)
		self:AddCompanionAcquire(DB, 65638, A_REPUTATION, 69, EXALTED, 33653)

		-- Stormwind Steed - 63232
		AddMount(63232, 45125, R_EPIC, GAME_WOTLK)
		AddMountFlags(63232, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY2)
		self:AddCompanionAcquire(DB, 63232, A_VENDOR, 33307)

		-- Swift Gray Steed - 65640
		AddMount(65640, 46752, R_EPIC, GAME_WOTLK)
		AddMountFlags(65640, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY2)
		self:AddCompanionAcquire(DB, 65640, A_REPUTATION, 72, EXALTED, 33307)

		-- Gnomeregan Mechanostrider - 63638
		AddMount(63638, 45589, R_EPIC, GAME_WOTLK)
		AddMountFlags(63638, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY3)
		self:AddCompanionAcquire(DB, 63638, A_VENDOR, 33650)

		-- Turbostrider - 65642
		AddMount(65642, 46747, R_EPIC, GAME_WOTLK)
		AddMountFlags(65642, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY3)
		self:AddCompanionAcquire(DB, 65642, A_REPUTATION, 54, EXALTED, 33650)

		-- Ironforge Ram - 63636
		AddMount(63636, 45586, R_EPIC, GAME_WOTLK)
		AddMountFlags(63636, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY4)
		self:AddCompanionAcquire(DB, 63636, A_VENDOR, 33310)

		-- Swift Violet Ram - 65643
		AddMount(65643, 46748, R_EPIC, GAME_WOTLK)
		AddMountFlags(65643, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY4)
		self:AddCompanionAcquire(DB, 65643, A_REPUTATION, 47, EXALTED, 33310)

		-- Exodar Elekk - 63639
		AddMount(63639, 45590, R_EPIC, GAME_WOTLK)
		AddMountFlags(63639, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY5)
		self:AddCompanionAcquire(DB, 63639, A_VENDOR, 33657)

		-- Great Red Elekk - 65637
		AddMount(65637, 46745, R_EPIC, GAME_WOTLK)
		AddMountFlags(65637, F_ALLIANCE, F_VENDOR, F_BOP, F_CITY5)
		self:AddCompanionAcquire(DB, 65637, A_REPUTATION, 930, EXALTED, 33657)
		
		-- Crusader's White Warhorse
		AddMount(68187, nil, R_EPIC, GAME_WOTLK)
		AddMountFlags(68187, F_ALLIANCE, F_ACHIEVEMENT, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 68187, A_ACHIEVEMENT, 4156)
		
		-- Swift Alliance Steed
		AddMount(68057, 49044, R_EPIC, GAME_WOTLK)
		AddMountFlags(68057, F_ALLIANCE, F_MOB_DROP, F_RAID, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 68057, A_MOB, 34564)

		-- Golden King -- 90621
		AddMount(90621, 62298, R_EPIC, GAME_CATA)
		AddMountFlags(90621, F_ALLIANCE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(DB, 90621, A_ACHIEVEMENT, 4912)
		
		-- Spectral Steed -- 92231
		AddMount(92231, 64998, R_EPIC, GAME_CATA)
		AddMountFlags(92231, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 92231, A_VENDOR, 47328)
		
		-- Vicious War Steed -- 100332
		AddMount(100332, 70909, R_EPIC, GAME_CATA)
		AddMountFlags(100332, F_ALLIANCE, F_ACHIEVEMENT, F_BOE)
		self:AddCompanionAcquire(DB, 100332, A_ACHIEVEMENT, 5823)
		
		-- Mountain Horse -- 103195
		AddMount(103195, 73838, R_RARE, GAME_CATA)
		AddMountFlags(103195, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 103195, A_VENDOR, 55285)

		-- Swift Mountain Horse -- 103196
		AddMount(103196, 73839, R_EPIC, GAME_CATA)
		AddMountFlags(103196, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 103196, A_VENDOR, 55285)
		
		-- Mekgineer's Chopper - 60424
		AddMount(60424, 44413, R_EPIC, GAME_WOTLK)
		AddMountFlags(60424, F_ALLIANCE, F_BOE, F_ENG, F_CRAFT)
		self:AddCompanionAcquire(DB, 60424, A_CRAFTED, 4036, 60867)

	elseif MY_FACTION == "Horde" then

		-- Red Dragonhawk -- 61997
		AddMount(61997, 44842, R_EPIC, GAME_WOTLK)
		AddMountFlags(61997, F_HORDE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(DB, 61997, A_ACHIEVEMENT, 2537)
		
		-- Reins of the Black War Bear - Horde - 60119
		AddMount(60119, 44224, R_EPIC, GAME_WOTLK)
		AddMountFlags(60119, F_HORDE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(DB, 60119, A_ACHIEVEMENT, 619)

		-- Grand Black War Mammoth - Horde - 61467
		AddMount(61467, 44083, R_EPIC, GAME_WOTLK)
		AddMountFlags(61467, F_HORDE, F_MOB_DROP, F_RAID, F_BOP)
		self:AddCompanionAcquire(DB, 61467, A_MOB, 35013, A_MOB, 33993, A_MOB, 31125, A_MOB, 38433)

		-- Goblin Trike -- 87090
		AddMount(87090, 62461, R_RARE, GAME_WOTLK)
		AddMountFlags(87090, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 87090, A_VENDOR, 48510, A_CUSTOM, 37)

		-- Goblin Turbo-Trike -- 87091
		AddMount(87091, 62462, R_EPIC, GAME_WOTLK)
		AddMountFlags(87091, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 87091, A_VENDOR, 48510, A_CUSTOM, 37)

		-- Venomhide Ravasaur
		AddMount(64659, 46102, R_EPIC, GAME_WOTLK)
		AddMountFlags(64659, F_HORDE, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 64659, A_ACHIEVEMENT, 3357, A_QUEST, 13906)

		-- Reins of the Armored Brown Bear - 60116
		AddMount(60116, 44226, R_EPIC, GAME_WOTLK)
		AddMountFlags(60116, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 60116, A_VENDOR, 32216)

		-- Reins of the Wooly Mammoth - 59791
		AddMount(59793, 44231, R_EPIC, GAME_WOTLK)
		AddMountFlags(59793, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 59793, A_VENDOR, 32216)

		-- Reins of the Traveler's Tundra Mammoth - 61447
		AddMount(61447, 44234, R_EPIC, GAME_WOTLK)
		AddMountFlags(61447, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 61447, A_VENDOR, 32216)

		-- Armored Blue Wind Rider - 61230
		AddMount(61230, 44690, R_EPIC, GAME_WOTLK)
		AddMountFlags(61230, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 61230, A_VENDOR, 32216)

		-- Sunreaver Hawkstrider - 66091
		AddMount(66091, 46816, R_EPIC, GAME_WOTLK)
		AddMountFlags(66091, F_HORDE, F_VENDOR, F_BOP, F_WRATHCOMMON1)
		self:AddCompanionAcquire(DB, 66091, A_REPUTATION, 1124, EXALTED, 34772)

		-- Sunreaver Dragonhawk - 66088
		AddMount(66088, 46814, R_EPIC, GAME_WOTLK)
		AddMountFlags(66088, F_HORDE, F_VENDOR, F_BOP, F_WRATHCOMMON1)
		self:AddCompanionAcquire(DB, 66088, A_REPUTATION, 1124, EXALTED, 34772)

		-- Reins of the Ice Mammoth - 59797
		AddMount(59797, 44080, R_EPIC, GAME_WOTLK)
		AddMountFlags(59797, F_HORDE, F_VENDOR, F_BOP, F_HODIR)
		self:AddCompanionAcquire(DB, 59797, A_REPUTATION, 1119, REVERED, 32540)

		-- Reins of the Grand Ice Mammoth - 61469
		AddMount(61469, 44086, R_EPIC, GAME_WOTLK)
		AddMountFlags(61469, F_HORDE, F_VENDOR, F_BOP, F_HODIR)
		self:AddCompanionAcquire(DB, 61469, A_REPUTATION, 1119, EXALTED, 32540)

		-- Horn of the Swift Brown Wolf - 23250
		AddMount(23250, 18796, R_EPIC, GAME_ORIG)
		AddMountFlags(23250, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 23250, A_VENDOR, 3362, A_QUEST, 7660, A_QUEST, 7661)

		-- Horn of the Swift Timber Wolf - 23251
		AddMount(23251, 18797, R_EPIC, GAME_ORIG)
		AddMountFlags(23251, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 23251, A_VENDOR, 3362, A_QUEST, 7660, A_QUEST, 7661)

		-- Horn of the Swift Gray Wolf - 23252
		AddMount(23252, 18798, R_EPIC, GAME_ORIG)
		AddMountFlags(23252, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 23252, A_VENDOR, 3362, A_QUEST, 7660, A_QUEST, 7661)

		-- Black Wolf
		AddMount(64658, 46099, R_RARE, GAME_WOTLK)
		AddMountFlags(64658, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 64658, A_VENDOR, 3362)

		-- Horn of the Timber Wolf - 580
		AddMount(580, 1132, R_RARE, GAME_ORIG)
		AddMountFlags(580, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 580, A_VENDOR, 3362)

		-- Horn of the Dire Wolf - 6653
		AddMount(6653, 5665, R_RARE, GAME_ORIG)
		AddMountFlags(6653, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 6653, A_VENDOR, 3362)

		-- Horn of the Brown Wolf - 6654
		AddMount(6654, 5668, R_RARE, GAME_ORIG)
		AddMountFlags(6654, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 6654, A_VENDOR, 3362)

		-- Horn of the Red Wolf - 16080
		AddMount(16080, 12330, R_EPIC, GAME_ORIG)
		AddMountFlags(16080, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16080, A_CUSTOM, 23)

		-- Horn of the Arctic Wolf - 16081
		AddMount(16081, 12351, R_EPIC, GAME_ORIG)
		AddMountFlags(16081, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16081, A_CUSTOM, 23)

		-- Swift Blue Raptor - 23241
		AddMount(23241, 18788, R_EPIC, GAME_ORIG)
		AddMountFlags(23241, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23241, A_VENDOR, 7952, A_QUEST, 7664, A_QUEST, 7665)

		-- Swift Olive Raptor - 23242
		AddMount(23242, 18789, R_EPIC, GAME_ORIG)
		AddMountFlags(23242, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23242, A_VENDOR, 7952, A_QUEST, 7664, A_QUEST, 7665)

		-- Swift Orange Raptor - 23243
		AddMount(23243, 18790, R_EPIC, GAME_ORIG)
		AddMountFlags(23243, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23243, A_VENDOR, 7952, A_QUEST, 7664, A_QUEST, 7665)

		-- Whistle of the Turquoise Raptor - 10796
		AddMount(10796, 8591, R_RARE, GAME_ORIG)
		AddMountFlags(10796, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 10796, A_VENDOR, 7952)

		-- Whistle of the Emerald Raptor - 8395
		AddMount(8395, 8588, R_RARE, GAME_ORIG)
		AddMountFlags(8395, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 8395, A_VENDOR, 7952)

		-- Whistle of the Violet Raptor - 10799
		AddMount(10799, 8592, R_RARE, GAME_ORIG)
		AddMountFlags(10799, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 10799, A_VENDOR, 7952)

		-- Whistle of the Mottled Red Raptor - 16084
		AddMount(16084, 8586, R_EPIC, GAME_ORIG)
		AddMountFlags(16084, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 16084, A_CUSTOM, 23)

		-- Whistle of the Ivory Raptor - 17450
		AddMount(17450, 13317, R_EPIC, GAME_ORIG)
		AddMountFlags(17450, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 17450, A_CUSTOM, 23)

		-- Great White Kodo - 23247
		AddMount(23247, 18793, R_EPIC, GAME_ORIG)
		AddMountFlags(23247, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23247, A_VENDOR, 3685, A_QUEST, 7662, A_QUEST, 7663)

		-- Great Gray Kodo - 23248
		AddMount(23248, 18795, R_EPIC, GAME_ORIG)
		AddMountFlags(23248, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23248, A_VENDOR, 3685, A_QUEST, 7662, A_QUEST, 7663)

		-- Great Brown Kodo - 23249
		AddMount(23249, 18794, R_EPIC, GAME_ORIG)
		AddMountFlags(23249, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23249, A_VENDOR, 3685, A_QUEST, 7662, A_QUEST, 7663)

		-- White Kodo
		AddMount(64657, 46100, R_RARE, GAME_WOTLK)
		AddMountFlags(64657, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 64657, A_VENDOR, 3685)

		-- Gray Kodo - 18989
		AddMount(18989, 15277, R_RARE, GAME_ORIG)
		AddMountFlags(18989, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 18989, A_VENDOR, 3685)

		-- Brown Kodo - 18990
		AddMount(18990, 15290, R_RARE, GAME_ORIG)
		AddMountFlags(18990, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 18990, A_VENDOR, 3685)

		-- Green Kodo - 18991
		AddMount(18991, 15292, R_EPIC, GAME_ORIG)
		AddMountFlags(18991, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 18991, A_CUSTOM, 23)

		-- Teal Kodo - 18992
		AddMount(18992, 15293, R_EPIC, GAME_ORIG)
		AddMountFlags(18992, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 18992, A_CUSTOM, 23)

		-- Swift Pink Hawkstrider - 33660
		AddMount(33660, 28936, R_EPIC, GAME_BC)
		AddMountFlags(33660, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 33660, A_VENDOR, 16264)

		-- Swift Green Hawkstrider - 35025
		AddMount(35025, 29223, R_EPIC, GAME_BC)
		AddMountFlags(35025, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35025, A_VENDOR, 16264)

		-- Swift Purple Hawkstrider - 35027
		AddMount(35027, 29224, R_EPIC, GAME_BC)
		AddMountFlags(35027, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35027, A_VENDOR, 16264)

		-- Red Hawkstrider - 34795
		AddMount(34795, 28927, R_RARE, GAME_BC)
		AddMountFlags(34795, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 34795, A_VENDOR, 16264)

		-- Purple Hawkstrider - 35018
		AddMount(35018, 29222, R_RARE, GAME_BC)
		AddMountFlags(35018, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35018, A_VENDOR, 16264)

		-- Blue Hawkstrider - 35020
		AddMount(35020, 29220, R_RARE, GAME_BC)
		AddMountFlags(35020, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35020, A_VENDOR, 16264)

		-- Black Hawkstrider - 35022
		AddMount(35022, 29221, R_RARE, GAME_BC)
		AddMountFlags(35022, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 35022, A_VENDOR, 16264)

		-- Black Skeletal Horse
		AddMount(64977, 46308, R_RARE, GAME_WOTLK)
		AddMountFlags(64977, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 64977, A_VENDOR, 4731)

		-- Red Skeletal Horse - 17462
		AddMount(17462, 13331, R_RARE, GAME_ORIG)
		AddMountFlags(17462, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 17462, A_VENDOR, 4731)

		-- Blue Skeletal Horse - 17463
		AddMount(17463, 13332, R_RARE, GAME_ORIG)
		AddMountFlags(17463, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 17463, A_VENDOR, 4731)

		-- Brown Skeletal Horse - 17464
		AddMount(17464, 13333, R_RARE, GAME_ORIG)
		AddMountFlags(17464, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 17464, A_VENDOR, 4731)

		-- Ochre Skeletal Warhorse - 66846
		AddMount(66846, 47101, R_EPIC, GAME_WOTLK)
		AddMountFlags(66846, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 66846, A_VENDOR, 4731)

		-- Purple Skeletal Warhorse - 23246
		AddMount(23246, 18791, R_EPIC, GAME_ORIG)
		AddMountFlags(23246, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 23246, A_VENDOR, 4731)

		-- Green Skeletal Warhorse - 17465
		AddMount(17465, 13334, R_EPIC, GAME_ORIG)
		AddMountFlags(17465, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 17465, A_VENDOR, 4731)

		-- Reins of the Black War Mammoth - 59788
		AddMount(59788, 44077, R_EPIC, GAME_WOTLK)
		AddMountFlags(59788, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 59788, A_VENDOR, 32296)

		-- Swift Warstrider - 35028
		AddMount(35028, 34129, R_EPIC, GAME_BC)
		AddMountFlags(35028, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 35028, A_VENDOR, 12796)

		-- Black War Kodo - 22718
		AddMount(22718, 29466, R_EPIC, GAME_ORIG)
		AddMountFlags(22718, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 22718, A_VENDOR, 12796)

		-- Whistle of the Black War Raptor - 22721
		AddMount(22721, 29472, R_EPIC, GAME_ORIG)
		AddMountFlags(22721, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 22721, A_VENDOR, 12796)

		-- Red Skeletal Warhorse - 22722
		AddMount(22722, 29470, R_EPIC, GAME_ORIG)
		AddMountFlags(22722, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 22722, A_VENDOR, 12796)

		-- Horn of the Black War Wolf - 22724
		AddMount(22724, 18245, R_EPIC, GAME_ORIG)
		AddMountFlags(22724, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 22724, A_VENDOR, 12796)

		-- Horn of the Frostwolf Howler - 23509
		AddMount(23509, 19029, R_EPIC, GAME_ORIG)
		AddMountFlags(23509, F_HORDE, F_VENDOR, F_BOP, F_PVP)
		self:AddCompanionAcquire(DB, 23509, A_VENDOR, 13218, A_VENDOR, 13219)

		-- Tawny Wind Rider - 32243
		AddMount(32243, 25474, R_RARE, GAME_BC)
		AddMountFlags(32243, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32243, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Blue Wind Rider - 32244
		AddMount(32244, 25475, R_RARE, GAME_BC)
		AddMountFlags(32244, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32244, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Green Wind Rider - 32245
		AddMount(32245, 25476, R_RARE, GAME_BC)
		AddMountFlags(32245, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32245, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Swift Red Wind Rider - 32246
		AddMount(32246, 25477, R_EPIC, GAME_BC)
		AddMountFlags(32246, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32246, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Swift Green Wind Rider - 32295
		AddMount(32295, 25531, R_EPIC, GAME_BC)
		AddMountFlags(32295, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32295, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Swift Yellow Wind Rider - 32296
		AddMount(32296, 25532, R_EPIC, GAME_BC)
		AddMountFlags(32296, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32296, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Swift Purple Wind Rider - 32297
		AddMount(32297, 25533, R_EPIC, GAME_BC)
		AddMountFlags(32297, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 32297, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

		-- Darkspear Raptor
		AddMount(63635, 45593, R_EPIC, GAME_WOTLK)
		AddMountFlags(63635, F_HORDE, F_VENDOR, F_BOP, F_CITY1)
		self:AddCompanionAcquire(DB, 63635, A_VENDOR, 33554)

		-- Swift Purple Raptor
		AddMount(65644, 46743, R_EPIC, GAME_WOTLK)
		AddMountFlags(65644, F_HORDE, F_VENDOR, F_BOP, F_CITY1)
		self:AddCompanionAcquire(DB, 65644, A_REPUTATION, 530, EXALTED, 33554)

		-- Orgrimmar Wolf - 63640
		AddMount(63640, 45595, R_EPIC, GAME_WOTLK)
		AddMountFlags(63640, F_HORDE, F_VENDOR, F_BOP, F_CITY2)
		self:AddCompanionAcquire(DB, 63640, A_VENDOR, 33553)

		-- Swift Burgundy Wolf
		AddMount(65646, 46749, R_EPIC, GAME_WOTLK)
		AddMountFlags(65646, F_HORDE, F_VENDOR, F_BOP, F_CITY2)
		self:AddCompanionAcquire(DB, 65646, A_REPUTATION, 76, EXALTED, 33553)

		-- Thunder Bluff Kodo - 63641
		AddMount(63641, 45592, R_EPIC, GAME_WOTLK)
		AddMountFlags(63641, F_HORDE, F_VENDOR, F_BOP, F_CITY3)
		self:AddCompanionAcquire(DB, 63641, A_VENDOR, 33556)

		-- Great Golden Kodo
		AddMount(65641, 46750, R_EPIC, GAME_WOTLK)
		AddMountFlags(65641, F_HORDE, F_VENDOR, F_BOP, F_CITY3)
		self:AddCompanionAcquire(DB, 65641, A_REPUTATION, 81, EXALTED, 33556)

		-- Forsaken Warhorse
		AddMount(63643, 45597, R_EPIC, GAME_WOTLK)
		AddMountFlags(63643, F_HORDE, F_VENDOR, F_BOP, F_CITY4)
		self:AddCompanionAcquire(DB, 63643, A_VENDOR, 33555)

		-- White Skeletal Warhorse
		AddMount(65645, 46746, R_EPIC, GAME_WOTLK)
		AddMountFlags(65645, F_HORDE, F_VENDOR, F_BOP, F_CITY4)
		self:AddCompanionAcquire(DB, 65645, A_REPUTATION, 68, EXALTED, 33555)

		-- Silvermoon Hawkstrider
		AddMount(63642, 45596, R_EPIC, GAME_WOTLK)
		AddMountFlags(63642, F_HORDE, F_VENDOR, F_BOP, F_CITY5)
		self:AddCompanionAcquire(DB, 63642, A_VENDOR, 33557)

		-- Swift Red Hawkstrider
		AddMount(65639, 46751, R_EPIC, GAME_WOTLK)
		AddMountFlags(65639, F_HORDE, F_VENDOR, F_BOP, F_CITY5)
		self:AddCompanionAcquire(DB, 65639, A_REPUTATION, 911, EXALTED, 33557)

		-- Crusader's Black Warhorse
		AddMount(68188, nil, R_EPIC, GAME_WOTLK)
		AddMountFlags(68188, F_HORDE, F_ACHIEVEMENT, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 68188, A_ACHIEVEMENT, 4156)

		-- Swift Horde Wolf
		AddMount(68056, 49046, R_EPIC, GAME_WOTLK)
		AddMountFlags(68056, F_HORDE, F_MOB_DROP, F_RAID, F_BOP, F_REMOVED)
		self:AddCompanionAcquire(DB, 68056, A_MOB, 34564)

		-- Spectral Wolf -- 92232
		AddMount(92232, 64999, R_EPIC, GAME_CATA)
		AddMountFlags(92232, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 92232, A_VENDOR, 48531)

		-- Kor'kron Annihilator -- 93644
		AddMount(93644, 67107, R_EPIC, GAME_CATA)
		AddMountFlags(93644, F_HORDE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(DB, 93644, A_ACHIEVEMENT, 5492)

		-- Vicious War Wolf -- 100333
		AddMount(100333, 70910, R_EPIC, GAME_CATA)
		AddMountFlags(100333, F_HORDE, F_ACHIEVEMENT, F_BOE)
		self:AddCompanionAcquire(DB, 100333, A_ACHIEVEMENT, 5824)
		
		-- Mechano-Hog - 55531
		AddMount(55531, 41508, R_EPIC, GAME_WOTLK)
		AddMountFlags(55531, F_HORDE, F_BOE, F_ENG, F_CRAFT)
		self:AddCompanionAcquire(DB, 55531, A_CRAFTED, 4036, 60866)

	end

	-------------------------------------------------------------------------------
	-- Paladin Mounts.
	-------------------------------------------------------------------------------
	if MY_CLASS == "PALADIN" and (MY_RACE == "Human" or MY_RACE == "Dwarf") then

		-- Warhorse (Alliance) -- 13819
		AddMount(13819, nil, R_COMMON, GAME_ORIG, C_PALADIN)
		AddMountFlags(13819, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 13819, A_CUSTOM, 40)

		-- Charger (Alliance) -- 23214
		AddMount(23214, nil, R_COMMON, GAME_ORIG, C_PALADIN)
		AddMountFlags(23214, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 23214, A_CUSTOM, 40)

	end

	if MY_CLASS == "PALADIN" and MY_RACE == "BloodElf" then

		-- Charger (Horde) -- 34767
		AddMount(34767, nil, R_COMMON, GAME_ORIG, C_PALADIN)
		AddMountFlags(34767, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 34767, A_CUSTOM, 40)

		-- Warhorse (Horde) -- 34769
		AddMount(34769, nil, R_COMMON, GAME_ORIG, C_PALADIN)
		AddMountFlags(34769, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 34769, A_CUSTOM, 40)

	end

	if MY_CLASS == "PALADIN" and MY_RACE == "Draenei" then

		-- Exarch's Elekk -- 73629
		AddMount(73629, nil, R_COMMON, GAME_CATA, C_PALADIN)
		AddMountFlags(73629, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 73629, A_CUSTOM, 40)

		-- Great Exarch's Elekk -- 73629
		AddMount(73630, nil, R_COMMON, GAME_CATA, C_PALADIN)
		AddMountFlags(73630, F_ALLIANCE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 73630, A_CUSTOM, 40)

	end

	if MY_CLASS == "PALADIN" and MY_RACE == "Tauren" then

		-- Sunwalker Kodo -- 69820
		AddMount(69820, nil, R_COMMON, GAME_CATA, C_PALADIN)
		AddMountFlags(69820, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 69820, A_CUSTOM, 40)

		-- Great Sunwalker Kodo -- 69826
		AddMount(69826, nil, R_COMMON, GAME_CATA, C_PALADIN)
		AddMountFlags(69826, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 69826, A_CUSTOM, 40)

	end

	-------------------------------------------------------------------------------
	-- Mounts for Alliance AND Horde.
	-------------------------------------------------------------------------------
	-- Swift Zhevra - 49322
	AddMount(49322, 37719, R_EPIC, GAME_BC)
	AddMountFlags(49322, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 49322, A_ACHIEVEMENT, 1436)

	-- X-53 Touring Rocket - 75973
	AddMount(75973, 54860, R_EPIC, GAME_WOTLK)
	AddMountFlags(75973, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP)
	self:AddCompanionAcquire(DB, 75973, A_ACHIEVEMENT, 4832)

	-- Big Blizzard Bear - 58983
	AddMount(58983, 43599, R_RARE, GAME_WOTLK)
	AddMountFlags(58983, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA, F_REMOVED)
	self:AddCompanionAcquire(DB, 58983, A_ACHIEVEMENT, 415)

	 -- Argent Hippogryph - 63844
	AddMount(63844, 45725, R_EPIC, GAME_WOTLK)
	AddMountFlags(63844, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63844, A_VENDOR, 33307, A_VENDOR, 33310, A_VENDOR, 33556, A_VENDOR, 33555, A_VENDOR, 33553, A_VENDOR, 33657, A_VENDOR, 33650, A_VENDOR, 33653, A_VENDOR, 33554, A_VENDOR, 33557)

	-- Reins of the Dark Riding Talbuk - 39316
	AddMount(39316, 28915, R_EPIC, GAME_BC)
	AddMountFlags(39316, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	self:AddCompanionAcquire(DB, 39316, A_VENDOR, 21485, A_VENDOR, 21474)

	-- Reins of the Dark War Talbuk - 34790
	AddMount(34790, 29228, R_EPIC, GAME_BC)
	AddMountFlags(34790, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	self:AddCompanionAcquire(DB, 34790, A_VENDOR, 21485, A_VENDOR, 21474)

	-- Brewfest Ram - 43899
	AddMount(43899, 33976, R_RARE, GAME_BC)
	AddMountFlags(43899, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_REMOVED, F_BOP)
	self:AddCompanionAcquire(DB, 43899, A_VENDOR, 24468, A_VENDOR, 24510, A_SEASONAL, 6)

	-- Great Brewfest Kodo - 49379
	AddMount(49379, 37828, R_EPIC, GAME_BC)
	AddMountFlags(49379, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 49379, A_MOB, 23872, A_SEASONAL, 6, A_CUSTOM, 35, A_ACHIEVEMENT, 3496)

	-- Swift Brewfest Ram - 43900
	AddMount(43900, 33977, R_EPIC, GAME_BC)
	AddMountFlags(43900, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 43900, A_MOB, 23872, A_SEASONAL, 6, A_CUSTOM, 35, A_ACHIEVEMENT, 3496)

	-- The Horseman's Reins - 48025
	AddMount(48025, 37012, R_EPIC, GAME_BC)
	AddMountFlags(48025, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 48025, A_MOB, 23682, A_ACHIEVEMENT, 980, A_SEASONAL, 7)

	-- Big Love Rocket - 71342
	AddMount(71342, 50250, R_EPIC, GAME_WOTLK)
	AddMountFlags(71342, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_INSTANCE, F_BOP)
	self:AddCompanionAcquire(DB, 71342, A_SEASONAL, 5, A_ACHIEVEMENT, 4627, A_MOB, 36296)

--DROP
	 -- Reins of the Onyxian Drake - 69395
	AddMount(69395, 49636, R_EPIC, GAME_WOTLK)
	AddMountFlags(69395, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 69395, A_MOB, 10184)

	 -- Mimiron's Head - 63796
	AddMount(63796, 45693, R_EPIC, GAME_WOTLK)
	AddMountFlags(63796, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 63796, A_MOB, 33288, A_ACHIEVEMENT, 4626)

	-- Reins of the Bronze Drake - 59569
	AddMount(59569, 43951, R_EPIC, GAME_WOTLK)
	AddMountFlags(59569, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_INSTANCE, F_BOP)
	self:AddCompanionAcquire(DB, 59569, A_MOB, 32273)

	-- Black Drake
	AddMount(59650, 43986, R_EPIC, GAME_WOTLK)
	AddMountFlags(59650, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59650, A_MOB, 28860)

	-- Twilight Drake
	AddMount(59571, 43954, R_EPIC, GAME_WOTLK)
	AddMountFlags(59571, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59571, A_MOB, 28860)

	-- Reins of the Azure Drake - 59567
	AddMount(59567, 43952, R_EPIC, GAME_WOTLK)
	AddMountFlags(59567, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59567, A_MOB, 28859)

	-- Reins of the Blue Drake - 59568
	AddMount(59568, 43953, R_EPIC, GAME_WOTLK)
	AddMountFlags(59568, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59568, A_MOB, 28859, A_MOB, 27656)

	-- Reins of the Blue Proto-Drake - 59996
	AddMount(59996, 44151, R_EPIC, GAME_WOTLK)
	AddMountFlags(59996, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59996, A_MOB, 26693)

	-- Reins of the Time-Lost Proto-Drake - 60002
	AddMount(60002, 44168, R_EPIC, GAME_WOTLK)
	AddMountFlags(60002, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 60002, A_MOB, 32491)

	 -- Green Proto-Drake - 61294
	AddMount(61294, 44707, R_EPIC, GAME_WOTLK)
	AddMountFlags(61294, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_ORACLES)
	self:AddCompanionAcquire(DB, 61294, A_REPUTATION, 1105, REVERED, 31910, A_CUSTOM, 16)

	-- Ashes of Al'ar - 40192
	AddMount(40192, 32458, R_EPIC, GAME_BC)
	AddMountFlags(40192, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 40192, A_MOB, 19622)

	-- Reins of the White Polar Bear - 54753
	AddMount(54753, 43962, R_EPIC, GAME_WOTLK)
	AddMountFlags(54753, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	self:AddCompanionAcquire(DB, 54753, A_QUEST, 13422, A_QUEST, 13423, A_QUEST, 13424, A_QUEST, 13425)

	-- Swift White Hawkstrider - 46628
	AddMount(46628, 35513, R_EPIC, GAME_BC)
	AddMountFlags(46628, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 46628, A_MOB, 24664)

	-- Reins of the Raven Lord - 41252
	AddMount(41252, 32768, R_EPIC, GAME_BC)
	AddMountFlags(41252, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 41252, A_MOB, 23035, A_ACHIEVEMENT, 883)

	-- Fiery Warhorse's Reins - 36702
	AddMount(36702, 30480, R_EPIC, GAME_BC)
	AddMountFlags(36702, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 36702, A_MOB, 15550)

	-- Deathcharger's Reins - 17481
	AddMount(17481, 13335, R_EPIC, GAME_ORIG)
	AddMountFlags(17481, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_INSTANCE, F_BOP)
	self:AddCompanionAcquire(DB, 17481, A_MOB, 10440)

	-- Invincible's Reins - 72286
	AddMount(72286, 50818, R_EPIC, GAME_WOTLK)
	AddMountFlags(72286, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_RAID, F_BOP)
	self:AddCompanionAcquire(DB, 72286, A_MOB, 36597, A_ACHIEVEMENT, 4625)

--CLASS
	if MY_CLASS == "WARLOCK" then
		-- Felsteed - 5784
		AddMount(5784, nil, R_RARE, GAME_ORIG, C_WARLOCK)
		AddMountFlags(5784, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 5784,
					 A_VENDOR, 16646, A_VENDOR, 5173, A_VENDOR, 23534, A_VENDOR, 5172, A_VENDOR, 16266,
					 A_VENDOR, 461, A_VENDOR, 3172, A_VENDOR, 5612, A_VENDOR, 3324, A_VENDOR, 4563,
					 A_VENDOR, 988, A_VENDOR, 4564, A_VENDOR, 906, A_VENDOR, 3325, A_VENDOR, 4565,
					 A_VENDOR, 2127, A_VENDOR, 5496, A_VENDOR, 6251, A_VENDOR, 16647, A_VENDOR, 5171,
					 A_VENDOR, 5495, A_VENDOR, 16648, A_VENDOR, 3326)

		-- Dreadsteed - 23161
		AddMount(23161, nil, R_EPIC, GAME_ORIG, C_WARLOCK)
		AddMountFlags(23161, F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 23161, A_VENDOR, 16646, A_VENDOR, 5173, A_VENDOR, 23534,
					A_VENDOR, 5172, A_VENDOR, 16266, A_VENDOR, 461, A_VENDOR, 3172, A_VENDOR, 5612,
					A_VENDOR, 3324, A_VENDOR, 4563,	A_VENDOR, 988, A_VENDOR, 4564, A_VENDOR, 906,
					A_VENDOR, 3325, A_VENDOR, 4565,	A_VENDOR, 2127, A_VENDOR, 5496, A_VENDOR, 6251,
					A_VENDOR, 16647, A_VENDOR, 5171, A_VENDOR, 5495, A_VENDOR, 16648, A_VENDOR, 3326)
	end

	if MY_CLASS == "DEATHKNIGHT" then
		-- Acherus Deathcharger - 48778
		AddMount(48778, nil, 1, GAME_WOTLK, C_DK)
		AddMountFlags(48778, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
		self:AddCompanionAcquire(DB, 48778, A_QUEST, 12687)

		-- Winged Steed of the Ebon Blade - 54729
		AddMount(54729, 40775, R_EPIC, GAME_WOTLK, C_DK)
		AddMountFlags(54729, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 54729, A_VENDOR, 29587)
	end

--REP VENDOR ARGENT
	if MY_CLASS == "PALADIN" then
		-- Argent Charger - 66906
		AddMount(66906, 47179, R_EPIC, GAME_WOTLK, C_PALADIN)
		AddMountFlags(66906, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
		self:AddCompanionAcquire(DB, 66906, A_VENDOR, 34885)
	end

--REP VENDOR NEUTRAL
	-- Argent Warhorse - 67466
	AddMount(67466, 47180, R_EPIC, GAME_WOTLK)
	AddMountFlags(67466, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 67466, A_VENDOR, 34885)

	-- Reins of the Red Drake - 59570
	AddMount(59570, 43955, R_EPIC, GAME_WOTLK)
	AddMountFlags(59570, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_WYRMREST)
	self:AddCompanionAcquire(DB, 59570, A_REPUTATION, 1091, EXALTED, 32533)

	-- Cenarion War Hippogryph - 43927
	AddMount(43927, 33999, R_EPIC, GAME_BC)
	AddMountFlags(43927, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_CENARION_EXPEDITION)
	self:AddCompanionAcquire(DB, 43927, A_REPUTATION, 942, EXALTED, 17904)

	-- Green Riding Nether Ray - 39798
	AddMount(39798, 32314, R_EPIC, GAME_BC)
	AddMountFlags(39798, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	self:AddCompanionAcquire(DB, 39798, A_REPUTATION, 1031, EXALTED, 23367)

	-- Red Riding Nether Ray - 39800
	AddMount(39800, 32317, R_EPIC, GAME_BC)
	AddMountFlags(39800, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	self:AddCompanionAcquire(DB, 39800, A_REPUTATION, 1031, EXALTED, 23367)

	-- Purple Riding Nether Ray - 39801
	AddMount(39801, 32316, R_EPIC, GAME_BC)
	AddMountFlags(39801, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	self:AddCompanionAcquire(DB, 39801, A_REPUTATION, 1031, EXALTED, 23367)

	-- Silver Riding Nether Ray - 39802
	AddMount(39802, 32318, R_EPIC, GAME_BC)
	AddMountFlags(39802, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	self:AddCompanionAcquire(DB, 39802, A_REPUTATION, 1031, EXALTED, 23367)

	-- Blue Riding Nether Ray - 39803
	AddMount(39803, 32319, R_EPIC, GAME_BC)
	AddMountFlags(39803, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	self:AddCompanionAcquire(DB, 39803, A_REPUTATION, 1031, EXALTED, 23367)

	-- Reins of the Onyx Netherwing Drake - 41513
	AddMount(41513, 32857, R_EPIC, GAME_BC)
	AddMountFlags(41513, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	self:AddCompanionAcquire(DB, 41513, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	AddMount(41514, 32858, R_EPIC, GAME_BC)
	AddMountFlags(41514, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	self:AddCompanionAcquire(DB, 41514, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Cobalt Netherwing Drake - 41515
	AddMount(41515, 32859, R_EPIC, GAME_BC)
	AddMountFlags(41515, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	self:AddCompanionAcquire(DB, 41515, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Purple Netherwing Drake - 41516
	AddMount(41516, 32860, R_EPIC, GAME_BC)
	AddMountFlags(41516, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	self:AddCompanionAcquire(DB, 41516, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Veridian Netherwing Drake - 41517
	AddMount(41517, 32861, R_EPIC, GAME_BC)
	AddMountFlags(41517, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	self:AddCompanionAcquire(DB, 41517, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Violet Netherwing Drake - 41518
	AddMount(41518, 32862, R_EPIC, GAME_BC)
	AddMountFlags(41518, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	self:AddCompanionAcquire(DB, 41518, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Cobalt Riding Talbuk - 39315
	AddMount(39315, 31829, R_EPIC, GAME_BC)
	AddMountFlags(39315, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 39315, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Silver Riding Talbuk - 39317
	AddMount(39317, 31831, R_EPIC, GAME_BC)
	AddMountFlags(39317, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 39317, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	AddMount(39318, 31833, R_EPIC, GAME_BC)
	AddMountFlags(39318, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 39318, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the White Riding Talbuk - 39319
	AddMount(39319, 31835, R_EPIC, GAME_BC)
	AddMountFlags(39319, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 39319, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Cobalt War Talbuk - 34896
	AddMount(34896, 29102, R_EPIC, GAME_BC)
	AddMountFlags(34896, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 34896, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the White War Talbuk - 34897
	AddMount(34897, 29103, R_EPIC, GAME_BC)
	AddMountFlags(34897, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 34897, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Silver War Talbuk - 34898
	AddMount(34898, 29104, R_EPIC, GAME_BC)
	AddMountFlags(34898, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 34898, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Tan War Talbuk - 34899
	AddMount(34899, 29105, R_EPIC, GAME_BC)
	AddMountFlags(34899, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	self:AddCompanionAcquire(DB, 34899, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

--REP VENDOR ALLIANCE

--RETIRED

	-- Swift Zulian Tiger - 24252
	AddMount(24252, 19902, R_EPIC, GAME_ORIG)
	AddMountFlags(24252, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 24252, A_MOB, 14509)

	-- Swift Razzashi Raptor - 24242
	AddMount(24242, 19872, R_EPIC, GAME_ORIG)
	AddMountFlags(24242, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 24242, A_MOB, 11382)

	 -- Black Proto-Drake - 59976
	AddMount(59976, 44164, R_EPIC, GAME_WOTLK)
	AddMountFlags(59976, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_ACHIEVEMENT)
	self:AddCompanionAcquire(DB, 59976, A_ACHIEVEMENT, 2138)

	 -- Plagued Proto-Drake - 60021
	AddMount(60021, 44175, R_EPIC, GAME_WOTLK)
	AddMountFlags(60021, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_ACHIEVEMENT)
	self:AddCompanionAcquire(DB, 60021, A_ACHIEVEMENT, 2137)

	-- Amani War Bear - 43688
	AddMount(43688, 33809, R_EPIC, GAME_BC)
	AddMountFlags(43688, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_RAID)
	self:AddCompanionAcquire(DB, 43688, A_ACHIEVEMENT, 430)

	-- Swift Nether Drake - 37015
	AddMount(37015, 30609, R_EPIC, GAME_BC)
	AddMountFlags(37015, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 37015, A_CUSTOM, 30, A_ACHIEVEMENT, 886)

	-- Merciless Nether Drake - 44744
	AddMount(44744, 34092, R_EPIC, GAME_BC)
	AddMountFlags(44744, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 44744, A_CUSTOM, 20, A_ACHIEVEMENT, 887)

	-- Vengeful Nether Drake - 49193
	AddMount(49193, 37676, R_EPIC, GAME_BC)
	AddMountFlags(49193, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 49193, A_CUSTOM, 17, A_ACHIEVEMENT, 888)

	-- Brutal Nether Drake - 58615
	AddMount(58615, 43516, R_EPIC, GAME_WOTLK)
	AddMountFlags(58615, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 58615, A_CUSTOM, 22, A_ACHIEVEMENT, 2316)

	-- Deadly Gladiator's Frostwyrm - 64927
	AddMount(64927, 46708, R_EPIC, GAME_WOTLK)
	AddMountFlags(64927, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 64927, A_CUSTOM, 25, A_ACHIEVEMENT, 3096)

	-- Furious Gladiator's Frostwyrm - 65439
	AddMount(65439, 46171, R_EPIC, GAME_WOTLK)
	AddMountFlags(65439, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 65439, A_CUSTOM, 26, A_ACHIEVEMENT, 3756)

	-- Relentless Gladiator's Frostwyrm - 67336
	AddMount(67336, nil, R_EPIC, GAME_WOTLK)
	AddMountFlags(67336, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 67336, A_CUSTOM, 32, A_ACHIEVEMENT, 3757)

	-- Wrathful Gladiator's Frostwyrm - 71810
	AddMount(71810, nil, R_EPIC, GAME_WOTLK)
	AddMountFlags(71810, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 71810, A_CUSTOM, 33, A_ACHIEVEMENT, 4600)

	-- Blue Qiraji Battle Tank -- 25953
	AddMount(25953, 21218, R_RARE, GAME_ORIG)
	AddMountFlags(25953, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	self:AddCompanionAcquire(DB, 25953, A_CUSTOM, 29)

	-- Red Qiraji Battle Tank -- 26054
	AddMount(26054, 21321, R_RARE, GAME_ORIG)
	AddMountFlags(26054, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	self:AddCompanionAcquire(DB, 26054, A_CUSTOM, 29)

	-- Yellow Qiraji Battle Tank -- 26055
	AddMount(26055, 21324, R_RARE, GAME_ORIG)
	AddMountFlags(26055, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	self:AddCompanionAcquire(DB, 26055, A_CUSTOM, 29)

	-- Green Qiraji Battle Tank -- 26056
	AddMount(26056, 21323, R_RARE, GAME_ORIG)
	AddMountFlags(26056, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	self:AddCompanionAcquire(DB, 26056, A_CUSTOM, 29)

	-- Black Qiraji Resonating Crystal - 26656
	AddMount(26656, 21176, R_LEGENDARY, GAME_ORIG)
	AddMountFlags(26656, F_ALLIANCE, F_HORDE, F_BOP, F_RAID, F_REMOVED)
	self:AddCompanionAcquire(DB, 26656, A_ACHIEVEMENT, 416)

--TCG
	-- Riding Tutle - 30174
	AddMount(30174, 23720, R_EPIC, GAME_ORIG)
	AddMountFlags(30174, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(DB, 30174, A_CUSTOM, 1)

	-- Reins of the Spectral Tiger - 42776
	AddMount(42776, 49283, R_RARE, GAME_BC)
	AddMountFlags(42776, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 42776, A_CUSTOM, 1)

	-- Reins of the Swift Spectral Tiger - 42777
	AddMount(42777, 49284, R_EPIC, GAME_BC)
	AddMountFlags(42777, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 42777, A_CUSTOM, 1)

	-- X-51 Nether-Rocket - 46197
	AddMount(46197, 49285, R_RARE, GAME_BC)
	AddMountFlags(46197, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 46197, A_CUSTOM, 1)

	-- X-51 Nether-Rocket X-TREME-- 46199
	AddMount(46199, 49286, R_EPIC, GAME_BC)
	AddMountFlags(46199, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 46199, A_CUSTOM, 1)

	-- Big Battle Bear - 51412
	AddMount(51412, 49282, R_EPIC, GAME_WOTLK)
	AddMountFlags(51412, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 51412, A_CUSTOM, 1)

	-- Magic Rooster - 65917
	AddMount(65917, 49290, R_EPIC, GAME_WOTLK)
	AddMountFlags(65917, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 65917, A_CUSTOM, 1)

	-- Blazing Hippogryph - 74856
	AddMount(74856, 54069, R_EPIC, GAME_WOTLK)
	AddMountFlags(74856, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 74856, A_CUSTOM, 1)

	-- Savage Raptor -- 97581
	AddMount(97581, 69228, R_EPIC, GAME_CATA)
	AddMountFlags(97581, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(DB, 97581, A_CUSTOM, 1)

	-- Mottled Drake -- 93623
	AddMount(93623, 68008, R_EPIC, GAME_CATA)
	AddMountFlags(93623, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 93623, A_CUSTOM, 1)

	-- Wooly White Rhino -- 74918
	AddMount(74918, 54068, R_EPIC, GAME_WOTLK)
	AddMountFlags(74918, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 74918, A_CUSTOM, 1)

	-- Corrupted Hippogryph -- 102514
	AddMount(102514, 72582, R_EPIC, GAME_CATA)
	AddMountFlags(102514, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 102514, A_CUSTOM, 1)

-- PURCHASED
	-- Celestial Steed - 75614
	AddMount(75614, 54811, R_EPIC, GAME_WOTLK)
	AddMountFlags(75614, F_ALLIANCE, F_HORDE, F_STORE, F_BOA)
	self:AddCompanionAcquire(DB, 75614, A_CUSTOM, 4)

	-- Winged Guardian -- 98727
	AddMount(98727, 69846, R_EPIC, GAME_CATA)
	AddMountFlags(98727, F_ALLIANCE, F_HORDE, F_STORE, F_BOA)
	self:AddCompanionAcquire(DB, 98727, A_CUSTOM, 4)

-- QUEST
	-- Reins of the Crimson Deathcharger - 73313
	AddMount(73313, 52200, R_EPIC, GAME_WOTLK)
	AddMountFlags(73313, F_ALLIANCE, F_HORDE, F_QUEST, F_BOE)
	self:AddCompanionAcquire(DB, 73313, A_QUEST, 24915)

-- CATACLYSM ADDED
	-- Abyssal Seahorse -- 75207
	AddMount(75207, 54465, R_RARE, GAME_CATA)
	AddMountFlags(75207, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	self:AddCompanionAcquire(DB, 75207, A_QUEST, 25371)

	-- Fossilized Raptor -- 84751
	AddMount(84751, 60954, R_EPIC, GAME_CATA)
	AddMountFlags(84751, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(DB, 84751, A_CUSTOM, 38)

	-- Brown Riding Camel -- 88748  -- NNEED TO ADD THE NEW FACTION REPUTATION SHIT
	AddMount(88748, 63044, R_EPIC, GAME_CATA)
	AddMountFlags(88748, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 88748, A_VENDOR, 48617)

	-- Drake of the West Wind -- 88741
	AddMount(88741, 65356, R_EPIC, GAME_CATA)
	AddMountFlags(88741, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 88741, A_VENDOR, 48531, A_VENDOR, 47328)

	-- Tan Riding Camel -- 88749 -- NNEED TO ADD THE NEW FACTION REPUTATION SHIT
	AddMount(88749, 63045, R_EPIC, GAME_CATA)
	AddMountFlags(88749, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 88749, A_VENDOR, 48617)

	-- Grey Riding Camel -- 88750
	AddMount(88750, 63046, R_EPIC, GAME_CATA)
	AddMountFlags(88750, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 88750, A_MOB,  50245)

	-- Drake of the South Wind -- 88744
	AddMount(88744, 63041, R_EPIC, GAME_CATA)
	AddMountFlags(88744, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 88744, A_MOB, 46753)

	-- Drake of the North Wind -- 88742
	AddMount(88742, 63040, R_EPIC, GAME_CATA)
	AddMountFlags(88742, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 88742, A_MOB, 43873)

	-- Vitreous Stone Drake -- 88746
	AddMount(88746, 63043, R_EPIC, GAME_CATA)
	AddMountFlags(88746, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 88746, A_MOB, 43214)

	-- Phosphorescent Stone Drake -- 88718
	AddMount(88718, 63042, R_EPIC, GAME_CATA)
	AddMountFlags(88718, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 88718, A_MOB, 50062)

	-- Dark Phoenix -- 88990
	AddMount(88990, 63125, R_EPIC, GAME_CATA)
	AddMountFlags(88990, F_ALLIANCE, F_HORDE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 88990, A_ACHIEVEMENT, 4988)

	-- Ultramarine Qiraji Battle Tank -- 92155
	AddMount(92155, 64883, R_EPIC, GAME_CATA)
	AddMountFlags(92155, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(DB, 92155, A_CUSTOM, 42)

	-- Volcanic Stone Drake -- 88331
	AddMount(88331, 62900, R_EPIC, GAME_CATA)
	AddMountFlags(88331, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 88331, A_ACHIEVEMENT, 4845)

	-- Sandstone Drake -- 93326
	AddMount(93326, 65891, R_EPIC, GAME_CATA)
	AddMountFlags(93326, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(DB, 93326, A_CRAFTED, 51304, 93328)

	-- Drake of the East Wind -- 88335
	AddMount(88335, 62901, R_EPIC, GAME_CATA)
	AddMountFlags(88335, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 88335, A_ACHIEVEMENT, 4853)

	-- Armored Razzashi Raptor -- 96491
	AddMount(96491, 68823, R_EPIC, GAME_CATA)
	AddMountFlags(96491, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 96491, A_MOB, 52151)

	-- Swift Zulian Panther -- 96499
	AddMount(96499, 68824, R_EPIC, GAME_CATA)
	AddMountFlags(96499, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 96499, A_MOB, 52059)

	-- Amani Battle Bear -- 98204
	AddMount(98204, 69747, R_EPIC, GAME_CATA)
	AddMountFlags(98204, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 98204, A_CUSTOM, 45)

	-- Subdued Seahorse (Reins of Posedius) -- 98718
	AddMount(98718, 67151, R_EPIC, GAME_CATA)
	AddMountFlags(98718, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(DB, 98718, A_MOB, 50005)

	-- Pureblood Fire Hawk -- 97493
	AddMount(97493, 69224, R_EPIC, GAME_CATA)
	AddMountFlags(97493, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 97493, A_MOB, 52409)

	-- Flameward Hippogryph -- 97359
	AddMount(97359, 69213, R_EPIC, GAME_CATA)
	AddMountFlags(97359, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 97359, A_ACHIEVEMENT, 5866)

	-- Corrupted Fire Hawk -- 97560
	AddMount(97560, 69230, R_EPIC, GAME_CATA)
	AddMountFlags(97560, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 97560, A_ACHIEVEMENT, 5828)

	-- Flametalon of Alysrazor -- 101542
	AddMount(101542, 71665, R_EPIC, GAME_CATA)
	AddMountFlags(101542, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 101542, A_MOB, 52530)

	-- Vicious Gladiator's Twilight Drake -- 101282
	AddMount(101282, 71339, R_EPIC, GAME_CATA)
	AddMountFlags(101282, F_ALLIANCE, F_HORDE, F_REMOVED, F_PVP, F_BOP)
	self:AddCompanionAcquire(DB, 101282, A_CUSTOM, 48)

	-- Tyrael's Charger -- 107203
	AddMount(107203, 76755, R_EPIC, GAME_CATA)
	AddMountFlags(107203, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP)
	self:AddCompanionAcquire(DB, 107203, A_CUSTOM, 49)

	-- Swift Shorestrider -- 101573
	AddMount(101573, 71718, R_EPIC, GAME_CATA)
	AddMountFlags(101573, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 101573, A_CUSTOM, 1)

	-- Darkmoon Dancing Bear -- 103081
	AddMount(103081, 73766, R_EPIC, GAME_CATA)
	AddMountFlags(103081, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(DB, 103081, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Swift Forest Strider -- 102346
	AddMount(102346, 72140, R_EPIC, GAME_CATA)
	AddMountFlags(102346, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(DB, 102346, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Amani Dragonhawk -- 96503
	AddMount(96503, 68825, R_EPIC, GAME_CATA)
	AddMountFlags(96503, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	self:AddCompanionAcquire(DB, 96503,  A_CUSTOM, 1)
	
	-- Blazing Drake -- 107842
	AddMount(107842, 77067, R_EPIC, GAME_CATA)
	AddMountFlags(107842, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 107842, A_MOB, 56173, A_CUSTOM, 51)
	
	-- Experiment 12-B -- 110039
	AddMount(110039, 78919, R_EPIC, GAME_CATA)
	AddMountFlags(110039, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 110039, A_MOB, 55294)
	
	-- Life-Binder's Handmaiden -- 107845
	AddMount(107845, 77069, R_EPIC, GAME_CATA)
	AddMountFlags(107845, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 107845, A_MOB, 56173, A_CUSTOM, 50)
	
	-- Ruthless Gladiator's Twilight Drake -- 101821
	AddMount(101821, 71954, R_EPIC, GAME_CATA)
	AddMountFlags(101821, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	self:AddCompanionAcquire(DB, 101821, A_CUSTOM, 52)
	
	-- Twilight Harbinger -- 107844
	AddMount(107844, 77068, R_EPIC, GAME_CATA)
	AddMountFlags(107844, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 107844, A_ACHIEVEMENT, 6169)

	-- Swift Lovebird -- 102350
	AddMount(102350, 72146, R_EPIC, GAME_CATA)
	AddMountFlags(102350, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(DB, 102350, A_SEASONAL, 5, A_CUSTOM, 61)

	--------------------------------------------------------------------
	-- TO BE ADDED WHEN THEY BECOME AVAILABLE:

	-- Swift Springstrider
	--AddMount()
	--AddMountFlags()
	--self:AddCompanionAcquire()

	-- White Riding Camel
	--AddMount()
	--AddMountFlags()
	--self:AddCompanionAcquire()

	-- Spectral Gryphon
	--AddMount()
	--AddMountFlags()
	--self:AddCompanionAcquire()

	-- Spectral Wind Rider
	--AddMount()
	--AddMountFlags()
	--self:AddCompanionAcquire()

	-- Heart of the Aspects
	--AddMount()
	--AddMountFlags()
	--self:AddCompanionAcquire()

	-- Green Fire Hawk Mount
	--AddMount()
	--AddMountFlags()
	--self:AddCompanionAcquire()
	---------------------------------------------------------------------

	return num_mounts
end
