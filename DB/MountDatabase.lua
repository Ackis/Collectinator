--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
Project version: @project-version@

************************************************************************

Format:

	self:AddCompanion(MountDB, SpellID, Item ID, Rarity, Companion Type)

************************************************************************

]]--

local MODNAME	= "Collectinator"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

-------------------------------------------------------------------------------
-- Item "rarity"
-------------------------------------------------------------------------------
local R_COMMON, R_UNCOMMON, F_RARE, R_EPIC, R_LEGENDARY, R_ARTIFACT = 1, 2, 3, 4, 5, 6

-------------------------------------------------------------------------------
-- Origin
-------------------------------------------------------------------------------
local GAME_ORIG, GAME_TBC, GAME_WOTLK = 0, 1, 2

-------------------------------------------------------------------------------
-- Filter flags
-------------------------------------------------------------------------------
local F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_CRAFT, F_INSTANCE, F_RAID, F_SEASONAL, F_WORLD_DROP, F_MOB_DROP = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
local F_TCG, F_SPEC_EVENT, F_COLLECTORS, F_REMOVED, F_ACHIEVEMENT, F_PVP = 11, 12, 13, 14, 15, 16
local F_BOE, F_BOP, F_BOA = 20, 21, 22
local F_ALCH, F_BS, F_COOKING, F_ENG, F_FIRST_AID, F_INSC, F_JC, F_LW, F_SMELT, F_TAILOR, F_FISHING = 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36

-------------------------------------------------------------------------------
-- Reputation Flags
-------------------------------------------------------------------------------
local F_ARGENT_DAWN, F_BLOODSAIL, F_CENARION_CIRCLE, F_THORIUM_BROTHERHOOD, F_TIMBERMAW, F_WINTERSPRING, F_ZANDALAR = 40, 41, 42, 43, 44, 100, 45
local F_ALDOR, F_ASHTONGUE, F_CENARION_EXPIDITION, F_HELLFIRE, F_CONSORTIUM, F_KOT, F_LOWER_CITY, F_NAGRAND = 46, 47, 48, 49, 50, 51, 52, 53
local F_NETHERWING, F_SCALE_SANDS, F_SCRYER, F_SHATAR, F_SKYGUARD, F_SHATTEREDSUN, F_SPOREGGAR, F_VIOLET_EYE = 54, 55, 56, 57, 90, 58, 59, 60
local F_CITY1, F_CITY2, F_CITY3, F_CITY4, F_CITY5 = 61, 62, 63, 64, 65
local F_PVP1, F_PVP2, F_PVP3 = 66, 67, 68
local F_ARGENT_CRUSADE, F_FRENZYHEART, F_EBON_BLADE, F_KIRINTOR, F_HODIR, F_KALUAK, F_ORACLES, F_WYRMREST = 71, 72, 73, 74, 75, 76, 77, 78
local WRATHCOMMON1, WRATHCOMMON2, WRATHCOMMON3, WRATHCOMMON4, WRATHCOMMON5 = 79, 80, 81, 82, 83

-- City 1 Darnassus/Darkspear
-- City 2 Stormwind/Orgrimmar
-- City 3 Gnomerga/Thunder Bluff
-- City 4 Ironforge/Undercity
-- City 5 Exodar/Silvermoon 
-- PVP 1 WSG
-- PVP 2 AV
-- PVP 3 AB 
--Wrath Common Factions 1 (The Silver Convenant/The Sunreavers)
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
		num_mounts = num_mounts + 1
		addon:AddCompanion(DB, "MOUNT", SpellID, MountItemID, Rarity, Game, Class)
	end

-- ACHIVEMENTS
	-- Reins of the Albino Drake - 60025
	AddMount(60025, 44178, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60025, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 60025, A_ACHIEVEMENT, 2143)

	-- Blue Dragonhawk - 61996
	AddMount(61996, 44843, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 61996, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 61996, A_ACHIEVEMENT, 2536)

	-- Red Dragonhawk -- 61997
	AddMount(61997, 44842, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 61997, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 61997, A_ACHIEVEMENT, 2537)

	-- Reins of the Black War Bear - 60118
	AddMount(60118, 44223, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60118, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 60118, A_ACHIEVEMENT, 614)

	-- Reins of the Black War Bear - 60119
	AddMount(60119, 44224, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60119, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 60119, A_ACHIEVEMENT, 619)

	-- Reins of the Red Proto-Drake - 59961
	AddMount(59961, 44160, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 59961, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 59961, A_ACHIEVEMENT, 2136)

	-- Rusted Proto-Drake - 63963
	AddMount(63963, 45802, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63963, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 63963, A_ACHIEVEMENT, 2957)

	-- Ironbound Proto-Drake - 63956
	AddMount(63956, 45801, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63956, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 63956, A_ACHIEVEMENT, 2958)

	-- Violet Proto-Drake - 60024
	AddMount(60024, 44177, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60024, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(DB, 60024, A_ACHIEVEMENT, 2145)

-- FISHING
	-- Sea Turtle
	AddMount(64731, 46109, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(DB, 64731, F_ALLIANCE, F_HORDE, F_FISHING, F_BOP)
	self:AddCompanionAcquire(DB, 64731, A_CUSTOM, 25)

-- PLAYERMADE
	 -- Turbo-Charged Flying Machine Control - 44151
	AddMount(44151, 34061, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 44151, F_ALLIANCE, F_HORDE, F_BOP, F_ENG, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 44151, 

	 -- Flying Machine Control - 44155
	AddMount(44155, 34060, R_RARE, GAME_BC)
	self:AddCompanionFlags(DB, 44155, F_ALLIANCE, F_HORDE, F_BOE, F_ENG, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 44155,

	 -- Mekgineer's Chopper - 60867
	AddMount(60867, 44413, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60867, F_ALLIANCE, F_BOE, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60867,

	 -- Mechano-Hog - 60866
	AddMount(60866, 41508, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60866, F_HORDE, F_BOE, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60866,

	-- Flying Carpet - 60969
	AddMount(60969, 44554, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60969, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60969,

	 -- Magnificent Flying Carpet - 60971
	AddMount(60971, 44558, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60971, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60971,

	 -- Swift Mooncloth Carpet - 60974
	AddMount(60974, 44555, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60974, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60974,

	 -- Swift Spellfire Carpet - 60976
	AddMount(60976, 44556, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60976, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60976,

	 -- Swift Ebonweave Carpet - 60975
	AddMount(60975, 44557, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60975, F_ALLIANCE, F_HORDE, F_BOP, F_TAILOR, F_CRAFTED)
	--self:AddCompanionAcquire(DB, 60975,

--PVP VENDOR
	-- Horn of the Frostwolf Howler - 23509
	AddMount(23509, 19029, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23509,2,3,16)
	--self:AddCompanionAcquire(DB,23509,1,13218,1,13219)

	-- Stormpike Battle Charger - 23510
	AddMount(23510, 19030, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23510,1,3,16)
	--self:AddCompanionAcquire(DB,23510,1,13216,1,13217)

	-- Black War Steed Bridle - 22717
	AddMount(22717, 18241, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22717,16)
	--self:AddCompanionAcquire(DB,

	-- Black War Kodo - 22718
	AddMount(22718, 18247, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22718,16)
	--self:AddCompanionAcquire(DB,

	-- Black Battlestrider - 22719
	AddMount(22719, 18243, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22719,16)
	--self:AddCompanionAcquire(DB,

	-- Black War Ram - 22720
	AddMount(22720, 18244, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22720,16)
	--self:AddCompanionAcquire(DB,

	-- Whistle of the Black War Raptor - 22721
	AddMount(22721, 18246, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22721,16)
	--self:AddCompanionAcquire(DB,

	-- Horn of the Black War Wolf - 22724
	AddMount(22724, 18245, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22724,16)
	--self:AddCompanionAcquire(DB,

	-- Red Skeletal Warhorse - 22722
	AddMount(22722, 18248, R_EPIC, GAME_ORIG)
	--self:AddCompanionFlags(DB,22722,16)
	--self:AddCompanionAcquire(DB,

	-- Reins of the Black War Tiger - 22723
	AddMount(22723, 18242, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,22723,16)
	--self:AddCompanionAcquire(DB,

	-- Reins of the Black War Elekk - 48027
	AddMount(48027, 35906, 1, GAME_BC)
	--self:AddCompanionFlags(DB,48027,1,2,3,16)
	--self:AddCompanionAcquire(DB,48027,1,12783)

	-- Swift Warstrider - 35028
	AddMount(35028, 34129, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35028,16)
	--self:AddCompanionAcquire(DB,

	-- Reins of the Dark Riding Talbuk - 39316
	AddMount(39316, 28915, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39316,1,2,3,16)
	--self:AddCompanionAcquire(DB,39316,1,21474,1,21485)

	-- Reins of the Dark War Talbuk - 34790
	AddMount(34790, 29228, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34790,1,2,3,16)
	--self:AddCompanionAcquire(DB,34790,1,21474,1,21485)

	-- Reins of the Black War Mammoth - 59785
	AddMount(59785, 43956, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,59785,1,2,3,16)
	--self:AddCompanionAcquire(DB,59785,1,32294)

	-- Black War Mammoth
	AddMount(59788, 44077, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 59788, 
	--self:AddCompanionAcquire(DB, 59788, 

--PVP DROP
	-- Grand Black War Mammoth - Horde - 61467
	AddMount(61467, 44083, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 61467, F_HORDE, F_MOB_DROP, F_RAID, F_BOP)
	self:AddCompanionAcquire(DB, 61467, A_MOB, 35013, A_MOB, 33993, A_MOB, 31125)

	-- Grand Black War Mammoth - Alliance - 61465
	AddMount(61465, 43959, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 61465, F_ALLIANCE, F_MOB_DROP, F_RAID, F_BOP)
	self:AddCompanionAcquire(DB, 61465, A_MOB, 35013, A_MOB, 33993, A_MOB, 31125)

--WORLD EVENT DROP
	-- Brewfest Ram - 43899
	AddMount(43899, 33976, R_RARE, GAME_BC)
	self:AddCompanionFlags(DB, 43899, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 43899, A_VENDOR, 24468, A_VENDOR, 24510)

	-- Great Brewfest Kodo - 49379
	AddMount(49379, 37828, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 49379, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 49379, A_MOB, 23795, A_MOB, 23872)

	-- Swift Brewfest Ram - 43900
	AddMount(43900, 33977, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 43900, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 43900, A_VENDOR, 24468, A_VENDOR, 24510, A_MOB, 23795, A_MOB, 23872)

	-- The Horseman's Reins - 48025
	AddMount(48025, 37012, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 48025, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 48025, A_MOB, 23682)

--DROP
	 -- Reins of the Onyxian Drake - 69395
	AddMount(69395, 49636, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 69395, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 69395, A_MOB, 10184)

	 -- Mimiron's Head - 63796
	AddMount(63796, 45693, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63796, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 63796, A_MOB, 33288)

	-- Reins of the Bronze Drake - 59569
	AddMount(59569, 43951, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,59569,1,2,6,16)
	self:AddCompanionAcquire(DB,59569, A_MOB ,26532, A_MOB, 32273)

	-- Black Drake
	AddMount(59650, 43986, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 59650, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59650, 

	-- Twilight Drake
	AddMount(59571, 43954, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 59571, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59571, 

	-- Reins of the Azure Drake - 59567
	AddMount(59567, 43952, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 59567, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59567, 

	-- Reins of the Blue Drake - 59568
	AddMount(59568, 43953, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 59568, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59568, A_MOB, 28859)

	-- Reins of the Blue Proto-Drake - 59996
	AddMount(59996, 44151, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 59996, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 59996, A_MOB, 26693)

	-- Reins of the Time-Lost Proto-Drake - 60002
	AddMount(60002, 44168, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 60002, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 60002, A_MOB, 32491)

	 -- Green Proto-Drake - 61294
	AddMount(61294, 44707, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 61294, 
	--self:AddCompanionAcquire(DB, 61294,

	-- Ashes of Al'ar - 40192
	AddMount(40192, 32458, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 40192, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(DB, 40192, A_MOB, 19622)

	-- Reins of the White Polar Bear - 54753
	AddMount(54753, 43962, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB,54753,16)
	--self:AddCompanionAcquire(DB,

	-- Swift White Hawkstrider - 46628
	AddMount(46628, 35513, R_EPIC, GAME_BC)
	--self:AddCompanionFlags(DB,46628,1,2,10,16)
	--self:AddCompanionAcquire(DB,46628,4,24664)

	-- Reins of the Raven Lord - 41252
	AddMount(41252, 32768, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 41252, F_ALLIANCE, F_HORDE, F_INSTANCE)
	self:AddCompanionAcquire(DB, 41252, A_MOB, 23035)

	-- Fiery Warhorse's Reins - 36702
	AddMount(36702, 30480, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 36702, F_ALLIANCE, F_HORDE, F_RAID, F_BOP)
	self:AddCompanionAcquire(DB, 36702, A_MOB, 15550)

	-- Swift Zulian Tiger - 24252
	AddMount(24252, 19902, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB, 24252, F_ALLIANCE, F_HORDE, F_RAID, F_BOP)
	self:AddCompanionAcquire(DB, 24252, A_MOB, 14509)

	-- Swift Razzashi Raptor - 24242
	AddMount(24242, 19872, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB, 24242, F_ALLIANCE, F_HORDE, F_RAID, F_BOP)
	self:AddCompanionAcquire(DB, 24242, A_MOB, 11382)

	-- Deathcharger's Reins - 17481
	AddMount(17481, 13335, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17481, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_INSTANCE, F_BOP)
	self:AddCompanionAcquire(DB,17481,A_MOB,10440)

--CLASS
	-- Felsteed - 5784
	AddMount(5784, nil, R_RARE, GAME_ORIG, C_WARLOCK)
	--self:AddCompanionFlags(DB, 5784, 
	--self:AddCompanionAcquire(DB, 5784,

	-- Dreadsteed - 23161
	AddMount(23161, nil, R_RARE, GAME_ORIG, C_WARLOCK)
	--self:AddCompanionFlags(DB, 23161, 
	--self:AddCompanionAcquire(DB, 23161,

	-- Warhorse - Alliance - 13819
	AddMount(13819, nil, R_RARE, GAME_ORIG, C_PALADIN)
	--self:AddCompanionFlags(DB, 13819, 
	--self:AddCompanionAcquire(DB, 13819,

	-- Charger - Alliance - 23214
	AddMount(23214, nil, R_RARE, GAME_ORIG, C_PALADIN)
	--self:AddCompanionFlags(DB, 23214, 
	--self:AddCompanionAcquire(DB, 23214,

	-- Warhorse - Horde - 34769
	AddMount(34769, nil, R_RARE, GAME_BC, C_PALADIN)
	--self:AddCompanionFlags(DB, 34769, 
	--self:AddCompanionAcquire(DB, 34769,

	-- Charger - Horde - 34767
	AddMount(34767, nil, R_RARE, GAME_BC, C_PALADIN)
	--self:AddCompanionFlags(DB, 34767, 
	--self:AddCompanionAcquire(DB, 34767,

	-- Acherus Deathcharger - 48778
	AddMount(48778, nil, 1, GAME_WOTLK, C_DK)
	self:AddCompanionFlags(DB, 48778, F_ALLIANCE, F_HORDE, F_BOP)
	self:AddCompanionAcquire(DB, 48778, A_QUEST, 12687)

	-- Winged Steed of the Ebon Blade - 54729
	AddMount(54729, 40775, R_EPIC, GAME_WOTLK, C_DK)
	self:AddCompanionFlags(DB, 54729, F_ALLIANCE, F_HORDE, F_BOP)
	self:AddCompanionAcquire(DB,54729, A_VENDOR, 29587)

--VENDOR
	-- Reins of the Armored Brown Bear - 60114
	AddMount(60114, 44225, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,60114,16)
	--self:AddCompanionAcquire(DB,

	-- Reins of the Armored Brown Bear - 60116
	AddMount(60116, 44225, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,60116,16)
	--self:AddCompanionAcquire(DB,

	-- Armored Snowy Gryphon - 61229
	AddMount(61229, 44689, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,61229,16)
	--self:AddCompanionAcquire(DB,

	-- Armored Blue Wind Rider - 61230
	AddMount(61230, 44690, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,61230,1,2,3,16)
	--self:AddCompanionAcquire(DB,61230,1,32216)

	-- Reins of the Wooly Mammoth - 59791
	AddMount(59791, 44230, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,59791,16)
	--self:AddCompanionAcquire(DB,

	-- Wooly Mammoth
	AddMount(59793, 44231, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB,
	--self:AddCompanionAcquire(DB,

	-- Traveler's Tundra Mammoth (Horde) - 61447
	AddMount(61447, 44234, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 61447, 
	--self:AddCompanionAcquire(DB, 61447, A_VENDOR, 32216)

	--Traveler's Tundra Mammoth (Alliance) - 61425
	AddMount(61425, 44235, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 61425, 
	--self:AddCompanionAcquire(DB, 61425, A_VENDOR, 32216)

	-- Golden Gryphon - 32235
	AddMount(32235, 25470, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32235,1,2,3,16)
	--self:AddCompanionAcquire(DB,32235,1,20510)

	-- Ebon Gryphon - 32239
	AddMount(32239, 25471, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32239,1,2,3,16)
	--self:AddCompanionAcquire(DB,32239,1,20510)

	-- Snowy Gryphon - 32240
	AddMount(32240, 25472, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32240,1,2,3,16)
	--self:AddCompanionAcquire(DB,32240,1,20510)

	-- Swift Blue Gryphon - 32242
	AddMount(32242, 25473, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32242,1,2,3,16)
	--self:AddCompanionAcquire(DB,32242,1,20510)

	-- Tawny Wind Rider - 32243
	AddMount(32243, 25474, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32243,1,2,3,16)
	--self:AddCompanionAcquire(DB,32243,1,20494)

	-- Blue Wind Rider - 32244
	AddMount(32244, 25475, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32244,1,2,3,16)
	--self:AddCompanionAcquire(DB,32244,1,20494)

	-- Green Wind Rider - 32245
	AddMount(32245, 25476, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32245,1,2,3,16)
	--self:AddCompanionAcquire(DB,32245,1,20494)

	-- Swift Red Wind Rider - 32246
	AddMount(32246, 25477, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32246,1,2,3,16)
	--self:AddCompanionAcquire(DB,32246,1,20494)

	-- Swift Red Gryphon - 32289
	AddMount(32289, 25527, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32289,1,2,3,16)
	--self:AddCompanionAcquire(DB,32289,1,20510)

	-- Swift Green Gryphon - 32290
	AddMount(32290, 25528, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32290,1,2,3,16)
	--self:AddCompanionAcquire(DB,32290,1,20510)

	-- Swift Purple Gryphon - 32292
	AddMount(32292, 25529, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32292,1,2,3,16)
	--self:AddCompanionAcquire(DB,32292,1,20510)

	-- Swift Green Wind Rider - 32295
	AddMount(32295, 25531, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32295,1,2,3,16)
	--self:AddCompanionAcquire(DB,32295,1,20494)

	-- Swift Yellow Wind Rider - 32296
	AddMount(32296, 25532, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32296,1,2,3,16)
	--self:AddCompanionAcquire(DB,32296,1,20494)

	-- Swift Purple Wind Rider - 32297
	AddMount(32297, 25533, 1, GAME_BC)
	--self:AddCompanionFlags(DB,32297,1,2,3,16)
	--self:AddCompanionAcquire(DB,32297,1,20494)

--WORLD EVENT VENDOR
	 -- Darnassian Nightsaber - 63637
	AddMount(63637, 45591, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63637, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63637, A_VENDOR, 33653)

	 -- Exodar Elekk - 63639
	AddMount(63639, 45590, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63639, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63639, A_VENDOR, 33657)

	 -- Gnomeregan Mechanostrider - 63638
	AddMount(63638, 45589, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63638, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63638, A_VENDOR, 33650)

	 -- Stormwind Steed - 63232
	AddMount(63232, 45125, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63232, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63232, A_VENDOR, 33307)

	 -- Ironforge Ram - 63636
	AddMount(63636, 45586, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63636, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63636, A_VENDOR, 33310)

	 -- Orgrimmar Wolf - 63640
	AddMount(63640, 45595, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63640, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63640, A_VENDOR, 33553)

	 -- Thunder Bluff Kodo - 63641
	AddMount(63641, 45592, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63641, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63641, A_VENDOR, 33556)

	-- Silvermoon Hawkstrider
	AddMount(63642, 45596, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63642, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63642, A_VENDOR, 33557)

	-- Forsaken Warhorse
	AddMount(63643, 45597, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63643, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63643, A_VENDOR, 33555)

	-- Darkspear Raptor
	AddMount(63635, 45593, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63635, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63635, A_VENDOR, 33554)

	 -- Argent Hippogryph - 63844
	AddMount(63844, 45725, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 63844, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 63844, A_VENDOR, 33307, A_VENDOR, 33310, A_VENDOR, 33556, A_VENDOR, 33555, A_VENDOR, 33553, A_VENDOR, 33657, A_VENDOR, 33650, A_VENDOR, 33653, A_VENDOR, 33554, A_VENDOR, 33557)

--REP VENDOR ARGENT
	-- Great Golden Kodo
	AddMount(65641, 46750, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65641, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65641, A_VENDOR, 33556)

	-- Swift Burgandy Wolf
	AddMount(65646, 46749, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65646, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65646, A_VENDOR, 33553)

	-- Swift Purple Raptor
	AddMount(65644, 46743, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65644, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 65644

	-- Swift Red Hawkstrider
	AddMount(65639, 46751, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65639, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 65639, 

	-- White Skeletal Warhorse
	AddMount(65645, 46746, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65645, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 65645, 

	 -- Great Red Elekk - 65637
	AddMount(65637, 46745, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65637, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65637, A_VENDOR, 33657)

	 -- Turbostrider - 65642
	AddMount(65642, 46747, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65642, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65642, A_VENDOR, 33650)

	-- Swift Violet Ram - 65643
	AddMount(65643, 46748, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65643, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65643, A_VENDOR, 33310)

	-- Swift Moonsaber - 65638
	AddMount(65638, 46744, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65638, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65638, A_VENDOR, 33653)

	-- Swift Gray Steed - 65640
	AddMount(65640, 46752, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65640, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 65640, A_VENDOR, 33307)

	-- Argent Charger - 66906
	AddMount(66906, 47179, R_EPIC, GAME_WOTLK, C_PALADIN)
	self:AddCompanionFlags(DB, 66906, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 66906, A_VENDOR, 34885)

	-- Argent Warhorse - 67466
	AddMount(67466, 47180, R_EPIC, GAME_WOTLK, C_PALADIN)
	self:AddCompanionFlags(DB, 67466, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 67466, A_VENDOR, 34885)

	-- Quel'dorei Steed - 66090
	AddMount(66090, 46815, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 66090, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 66090, A_VENDOR, 34881)

	-- Silver Covenant Hippogryph - 66087
	AddMount(66087, 46813, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 66087, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 66087, A_VENDOR, 34881)

	 -- Sunreaver Hawkstrider - 66091
	AddMount(66091, 46816, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 66091, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 66091, A_VENDOR, 34772)

	 -- Sunreaver Dragonhawk - 66088
	AddMount(66088, 46814, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 66088, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 66088, A_VENDOR, 34772)

--REP VENDOR NEUTRAL
	-- Reins of the Red Drake - 59570
	AddMount(59570, 43955, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,59570,1,2,3,16)
	--self:AddCompanionAcquire(DB,59570,1,32533)

	-- Reins of the Ice Mammoth - 59797
	AddMount(59797, 44080, 1, GAME_WOTLK)
	----self:AddCompanionFlags(DB,59797,16)
	--self:AddCompanionAcquire(DB,

	-- Reins of the Ice Mammoth - 59799
	AddMount(59799, 43958, 1, GAME_WOTLK)
	--self:AddCompanionFlags(DB,59799,16)
	--self:AddCompanionAcquire(DB,

	-- Reins of the Grand Ice Mammoth - 61469
	AddMount(61469, 44086, 1, GAME_WOTLK)
	----self:AddCompanionFlags(DB,61469
	--self:AddCompanionAcquire(DB,

	-- Reins of the Grand Ice Mammoth - 61470
	AddMount(61470, 43961, 1, GAME_WOTLK)
	----self:AddCompanionFlags(DB,61470
	--self:AddCompanionAcquire(DB,

	-- Cenarion War Hippogryph - 43927
	AddMount(43927, 33999, 1, GAME_BC)
	--self:AddCompanionFlags(DB,43927,1,2,3,16)
	--self:AddCompanionAcquire(DB,43927,1,17904)

	-- Green Riding Nether Ray - 39798
	AddMount(39798, 32314, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39798,1,2,3,16)
	--self:AddCompanionAcquire(DB,39798,1,23367)

	-- Red Riding Nether Ray - 39800
	AddMount(39800, 32317, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39800,1,2,3,16)
	--self:AddCompanionAcquire(DB,39800,1,23367)

	-- Purple Riding Nether Ray - 39801
	AddMount(39801, 32316, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39801,1,2,3,16)
	--self:AddCompanionAcquire(DB,39801,1,23367)

	-- Silver Riding Nether Ray - 39802
	AddMount(39802, 32318, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39802,1,2,3,16)
	--self:AddCompanionAcquire(DB,39802,1,23367)

	-- Blue Riding Nether Ray - 39803
	AddMount(39803, 32319, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39803,1,2,3,16)
	--self:AddCompanionAcquire(DB,39803,1,23367)

	-- Reins of the Onyx Netherwing Drake - 41513
	AddMount(41513, 32857, 1, GAME_BC)
	--self:AddCompanionFlags(DB,41513,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,41513,1,23489,2,11111)

	-- Reins of the Azure Netherwing Drake - 41514
	AddMount(41514, 32858, 1, GAME_BC)
	--self:AddCompanionFlags(DB,41514,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,41514,1,23489,2,11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	AddMount(41515, 32859, 1, GAME_BC)
	--self:AddCompanionFlags(DB,41515,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,41515,1,23489,2,11109)

	-- Reins of the Purple Netherwing Drake - 41516
	AddMount(41516, 32860, 1, GAME_BC)
	--self:AddCompanionFlags(DB,41516,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,41516,1,23489,2,11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	AddMount(41517, 32861, 1, GAME_BC)
	--self:AddCompanionFlags(DB,41517,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,41517,1,23489,2,11114)

	-- Reins of the Violet Netherwing Drake - 41518
	AddMount(41518, 32862, 1, GAME_BC)
	--self:AddCompanionFlags(DB,41518,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,41518,1,23489,2,11113)

	-- Reins of the Cobalt Riding Talbuk - 39315
	AddMount(39315, 31829, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39315,1,2,3,16)
	--self:AddCompanionAcquire(DB,39315,1,20241)

	-- Reins of the Silver Riding Talbuk - 39317
	AddMount(39317, 31831, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39317,1,2,3,16)
	--self:AddCompanionAcquire(DB,39317,1,20241)

	-- Reins of the Tan Riding Talbuk - 39318
	AddMount(39318, 31833, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39318,1,2,3,16)
	--self:AddCompanionAcquire(DB,39318,1,20241)

	-- Reins of the White Riding Talbuk - 39319
	AddMount(39319, 31835, 1, GAME_BC)
	--self:AddCompanionFlags(DB,39319,1,2,3,16)
	--self:AddCompanionAcquire(DB,39319,1,20241)

	-- Reins of the Cobalt War Talbuk - 34896
	AddMount(34896, 29102, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34896,1,2,3,16)
	--self:AddCompanionAcquire(DB,34896,1,20241)

	-- Reins of the White War Talbuk - 34897
	AddMount(34897, 29103, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34897,1,2,3,16)
	--self:AddCompanionAcquire(DB,34897,1,20241)

	-- Reins of the Silver War Talbuk - 34898
	AddMount(34898, 29104, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34898,1,2,3,16)
	--self:AddCompanionAcquire(DB,34898,1,20241)

	-- Reins of the Tan War Talbuk - 34899
	AddMount(34899, 29105, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34899,1,2,3,16)
	--self:AddCompanionAcquire(DB,34899,1,20241)

--REP VENDOR HORDE
	-- Venomhide Ravasaur
	AddMount(64659, 46102, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB,
	--self:AddCompanionAcquire(DB,

	-- Black Skeletal Horse
	AddMount(64977, 46308, R_RARE, GAME_WOTLK)
	--self:AddCompanionFlags(DB,
	self:AddCompanionAcquire(DB, 64977, A_VENDOR, 4731)

	-- Red Skeletal Horse - 17462
	AddMount(17462, 13331, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,17462, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,17462,A_VENDOR,4731)

	-- Blue Skeletal Horse - 17463
	AddMount(17463, 13332, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,17463, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,17463,A_VENDOR,4731)

	-- Brown Skeletal Horse - 17464
	AddMount(17464, 13333, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,17464, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,17464,A_VENDOR,4731)

	 -- Ochre Skeletal Warhorse - 66846
	AddMount(66846, 47101, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 66846, 
	--self:AddCompanionAcquire(DB, 66846,

	-- Purple Skeletal Warhorse - 23246
	AddMount(23246, 18791, R_EPIC, GAME_ORIG)
	--self:AddCompanionFlags(DB,23246,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,23246,1,4731,2,27716)

	-- Green Skeletal Warhorse - 17465
	AddMount(17465, 13334, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17465, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,17465,A_VENDOR,4731)

	-- Black Wolf
	AddMount(64658, 46099, R_RARE, GAME_WOTLK)
	--self:AddCompanionFlags(DB,
	self:AddCompanionAcquire(DB, 64658, A_VENDOR, 3362)

	-- Horn of the Timber Wolf - 580
	AddMount(580, 1132, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 580, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 580, A_VENDOR, 3362)

	-- Horn of the Dire Wolf - 6653
	AddMount(6653, 5665, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 6653, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 6653, A_VENDOR, 3362)

	-- Horn of the Brown Wolf - 6654
	AddMount(6654, 5668, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 6654, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,6654,A_VENDOR,3362)

	-- Swift Pink Hawkstrider - 33660
	AddMount(33660, 28936, 1, GAME_BC)
	--self:AddCompanionFlags(DB,33660,2,3,4,16)
	--self:AddCompanionAcquire(DB,33660,1,16264,2,27716)

	-- Swift Green Hawkstrider - 35025
	AddMount(35025, 29223, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35025,2,3,16)
	--self:AddCompanionAcquire(DB,35025,1,16264)

	-- Swift Purple Hawkstrider - 35027
	AddMount(35027, 29224, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35027,2,3,16)
	--self:AddCompanionAcquire(DB,35027,1,16264)

	-- Red Hawkstrider - 34795
	AddMount(34795, 28927, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34795,2,3,16)
	--self:AddCompanionAcquire(DB,34795,1,16264)

	-- Purple Hawkstrider - 35018
	AddMount(35018, 29222, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35018,2,3,16)
	--self:AddCompanionAcquire(DB,35018,1,16264)

	-- Blue Hawkstrider - 35020
	AddMount(35020, 29220, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35020,2,3,16)
	--self:AddCompanionAcquire(DB,35020,1,16264)

	-- Black Hawkstrider - 35022
	AddMount(35022, 29221, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35022,2,3,16)
	--self:AddCompanionAcquire(DB,35022,1,16264)

	-- Swift Blue Raptor - 23241
	AddMount(23241, 18788, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23241,2,3,4,16)
	--self:AddCompanionAcquire(DB,23241,1,7952,2,7664,2,7665,2,27716)

	-- Swift Olive Raptor - 23242
	AddMount(23242, 18789, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23242,2,3,4,16)
	--self:AddCompanionAcquire(DB,23242,1,7952,2,7664,2,7665)

	-- Swift Orange Raptor - 23243
	AddMount(23243, 18790, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23243,2,3,4,16)
	--self:AddCompanionAcquire(DB,23243,1,7952,2,7664,2,7665)

	-- Great White Kodo - 23247
	AddMount(23247, 18793, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23247,2,3,4,16)
	--self:AddCompanionAcquire(DB,23247,1,3685,2,7662,2,7663)

	-- Great Gray Kodo - 23248
	AddMount(23248, 18795, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23248,2,3,4,16)
	--self:AddCompanionAcquire(DB,23248,1,3685,2,7662,2,7663)

	-- Great Brown Kodo - 23249
	AddMount(23249, 18794, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23249,2,3,4,16)
	--self:AddCompanionAcquire(DB,23249,1,3685,2,7662,2,7663,2,27716)

	-- Horn of the Swift Brown Wolf - 23250
	AddMount(23250, 18796, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23250,2,3,4,16)
	--self:AddCompanionAcquire(DB,23250,1,3362,2,7660,2,7661)

	-- Horn of the Swift Timber Wolf - 23251
	AddMount(23251, 18797, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23251,2,3,4,16)
	--self:AddCompanionAcquire(DB,23251,1,3362,2,7660,2,7661)

	-- Horn of the Swift Gray Wolf - 23252
	AddMount(23252, 18798, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23252,2,3,4,16)
	--self:AddCompanionAcquire(DB,23252,1,3362,2,7660,2,7661,2,27716)

	-- Whistle of the Turquoise Raptor - 10796
	AddMount(10796, 8591, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 10796, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,10796,A_VENDOR,7952)

	-- Whistle of the Emerald Raptor - 8395
	AddMount(8395, 8588, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 8395, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,8395,A_VENDOR,7952)

	-- Whistle of the Violet Raptor - 10799
	AddMount(10799, 8592, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,10799, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,10799,A_VENDOR,7952)

	-- White Kodo
	AddMount(64657, 46100, R_RARE, GAME_WOTLK)
	--self:AddCompanionFlags(DB,
	--self:AddCompanionAcquire(DB,

	-- Gray Kodo - 18989
	AddMount(18989, 15277, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,18989, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,18989,A_VENDOR,3685)

	-- Brown Kodo - 18990
	AddMount(18990, 15290, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,18990, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,18990,A_VENDOR,3685)

--REP VENDOR ALLIANCE
	-- Reins of the Winterspring Frostsaber - 17229
	AddMount(17229, 13086, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB, 17229, F_ALLIANCE, F_VENDOR, F_BOP, F_WINTERSPRING)
	self:AddCompanionAcquire(DB,17229, A_REPUTATION, 589, EXALTED, 10618)

	-- Brown Horse Bridle - 458
	AddMount(458, 5656, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 458, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 458, A_VENDOR, 384, A_VENDOR, 1460, A_VENDOR, 2357, A_VENDOR, 4885)

	-- Black Stallion Bridle - 470
	AddMount(470, 2411, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 470, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 470, A_VENDOR, 1460)

	-- Pinto Bridle - 472
	AddMount(472, 2414, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 472, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 472, A_VENDOR, 384, A_VENDOR, 1460, A_VENDOR, 2357, A_VENDOR, 4885)

	-- Chestnut Mare Bridle - 6648
	AddMount(6648, 5655, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 6648, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB, 6648, A_VENDOR, 384, A_VENDOR, 1460, A_VENDOR, 2357, A_VENDOR, 4885)

	-- Gray Ram - 6777
	AddMount(6777, 5864, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 6777, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,6777,A_VENDOR,1261)

	-- White Ram - 6898
	AddMount(6898, 5873, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 6898, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,6898,A_VENDOR,1261)

	-- Brown Ram - 6899
	AddMount(6899, 5872, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 6899, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,6899,A_VENDOR,1261)

	-- Red Mechanostrider - 10873
	AddMount(10873, 8563, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,10873, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,10873,A_VENDOR,7955)

	-- Blue Mechanostrider - 10969
	AddMount(10969, 8595, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,10969, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,10969,A_VENDOR,7955)

	-- Green Mechanostrider - 17453
	AddMount(17453, 13321, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB,17453, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,17453, A_VENDOR, 7955)

	-- Unpainted Mechanostrider - 17454
	AddMount(17454, 13322, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17454, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 17454, A_CUSTOM, 23)

	-- Great Green Elekk - 35712
	AddMount(35712, 29746, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35712,1,2,3,4,16)
	--self:AddCompanionAcquire(DB,35712,1,17584,2,27717)

	-- Great Blue Elekk - 35713
	AddMount(35713, 29745, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35713,1,2,3,16)
	--self:AddCompanionAcquire(DB,35713,1,17584)

	-- Great Purple Elekk - 35714
	AddMount(35714, 29747, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35714,1,2,3,16)
	--self:AddCompanionAcquire(DB,35714,1,17584)

	-- Swift Yellow Mechanostrider - 23222
	AddMount(23222, 18774, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23222,1,3,4,16)
	--self:AddCompanionAcquire(DB,23222,1,7955,2,7675,2,7676,2,27717)

	-- Swift White Mechanostrider - 23223
	AddMount(23223, 18773, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23223,1,3,4,16)
	--self:AddCompanionAcquire(DB,23223,1,7955,2,7675,2,7676)

	-- Swift Green Mechanostrider - 23225
	AddMount(23225, 18772, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23225,1,3,4,16)
	--self:AddCompanionAcquire(DB,23225,1,7955,2,7675,2,7676)

	-- Swift Palomino - 23227
	AddMount(23227, 18776, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23227,1,3,4,16)
	--self:AddCompanionAcquire(DB,23227,1,384,1,2357,1,4885,2,7677,2,7678,2,27717)

	-- Swift White Steed - 23228
	AddMount(23228, 18778, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23228,1,3,4,16)
	--self:AddCompanionAcquire(DB,23228,1,384,1,2357,1,4885,2,7677,2,7678)

	-- Swift Brown Steed - 23229
	AddMount(23229, 18777, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23229,1,3,4,16)
	--self:AddCompanionAcquire(DB,23229,1,384,1,2357,1,4885,2,7677,2,7678)

	-- Swift Brown Ram - 23238
	AddMount(23238, 18786, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23238,1,3,4,16)
	--self:AddCompanionAcquire(DB,23238,1,1261,2,7673,2,7674)

	-- Swift Gray Ram - 23239
	AddMount(23239, 18787, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23239,1,3,4,16)
	--self:AddCompanionAcquire(DB,23239,1,1261,2,7673,2,7674,2,27717)

	-- Swift White Ram - 23240
	AddMount(23240, 18785, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23240,1,3,4,16)
	--self:AddCompanionAcquire(DB,23240,1,1261,2,7673,2,7674)

	-- Brown Elekk - 34406
	AddMount(34406, 28481, 1, GAME_BC)
	--self:AddCompanionFlags(DB,34406,1,2,3,16)
	--self:AddCompanionAcquire(DB,34406,1,17584)

	-- Gray Elekk - 35710
	AddMount(35710, 29744, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35710,1,2,3,16)
	--self:AddCompanionAcquire(DB,35710,1,17584)

	-- Purple Elekk - 35711
	AddMount(35711, 29743, 1, GAME_BC)
	--self:AddCompanionFlags(DB,35711,1,2,3,16)
	--self:AddCompanionAcquire(DB,35711,1,17584)

	-- Reins of the Swift Mistsaber - 23219
	AddMount(23219, 18767, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23219,1,3,4,16)
	--self:AddCompanionAcquire(DB,23219,1,4730,2,7671,2,7672,2,27717)

	-- Reins of the Swift Frostsaber - 23221
	AddMount(23221, 18766, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23221,1,3,4,16)
	--self:AddCompanionAcquire(DB,23221,1,4730,2,7671,2,7672)

	-- Reins of the Swift Stormsaber - 23338
	AddMount(23338, 18902, 1, GAME_ORIG)
	--self:AddCompanionFlags(DB,23338,1,3,4,16)
	--self:AddCompanionAcquire(DB,23338,1,4730,2,7671,2,7672)

	-- Striped Dawnsaber - 66847
	AddMount(66847, 47100, R_RARE, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 66847, 
	self:AddCompanionAcquire(DB, 66847, A_VENDOR, 4730)

	-- Reins of the Striped Frostsaber - 8394
	AddMount(8394, 8631, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 8394, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,8394,A_VENDOR,4730)

	-- Reins of the Spotted Frostsaber - 10789
	AddMount(10789, 8632, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 10789, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,10789,A_VENDOR,4730)

	-- Reins of the Striped Nightsaber - 10793
	AddMount(10793, 8629, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(DB, 10793, F_ALLIANCE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(DB,10793,A_VENDOR,4730)

--RETIRED
	-- White Mechanostrider Mod B - 15779
	AddMount(15779, 13326, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,15779, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 15779, A_CUSTOM, 23)

	-- Icy Blue Mechanostrider Mod A - 17459
	AddMount(17459, 13327, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17459, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 17459, A_CUSTOM, 23)

	-- Palomino Bridle - 16082
	AddMount(16082, 12354, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,16082, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16082, A_CUSTOM, 23)

	-- White Stallion Bridle - 16083
	AddMount(16083, 12353, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,16083, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16083, A_CUSTOM, 23)

	-- Frost Ram - 17460
	AddMount(17460, 13329, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17460, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 17460, A_CUSTOM, 23)

	-- Black Ram - 17461
	AddMount(17461, 13328, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17461, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 17461, A_CUSTOM, 23)

	-- Reins of the Nightsaber - 16055
	AddMount(16055, 12303, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,16055, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16055, A_CUSTOM, 23)

	-- Reins of the Ancient Frostsaber - 16056
	AddMount(16056, 12302, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,16056, F_ALLIANCE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16056, A_CUSTOM, 23)

	-- Green Kodo - 18991
	AddMount(18991, 15292, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB, 18991, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 18991, A_CUSTOM, 23)

	-- Teal Kodo - 18992
	AddMount(18992, 15293, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,18992, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 18992, A_CUSTOM, 23)

	-- Horn of the Red Wolf - 16080
	AddMount(16080, 12330, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB, 16080, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16080, A_CUSTOM, 23)

	-- Horn of the Arctic Wolf - 16081
	AddMount(16081, 12351, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,16081, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16081, A_CUSTOM, 23)

	-- Whistle of the Mottled Red Raptor - 16084
	AddMount(16084, 8586, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,16084, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 16084, A_CUSTOM, 23)

	-- Whistle of the Ivory Raptor - 17450
	AddMount(17450, 13317, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB,17450, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(DB, 17450, A_CUSTOM, 23)

	 -- Black Proto-Drake - 59976
	AddMount(59976, 44164, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 59976, 
	--self:AddCompanionAcquire(DB, 59976,

	 -- Plagued Proto-Drake - 60021
	AddMount(60021, 44175, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 60021, 
	--self:AddCompanionAcquire(DB, 60021,

	-- Amani War Bear - 43688
	AddMount(43688, 33809, R_EPIC, GAME_BC)
	--self:AddCompanionFlags(DB,43688,1,2,4,16)
	--self:AddCompanionAcquire(DB,43688,2,27704)

	-- Swift Nether Drake - 37015
	AddMount(37015, 30609, R_EPIC, GAME_BC)
	--self:AddCompanionFlags(DB,37015,16)
	--self:AddCompanionAcquire(DB,

	-- Merciless Nether Drake - 44744
	AddMount(44744, 34092, R_EPIC, GAME_BC)
	--self:AddCompanionFlags(DB,44744,16)
	--self:AddCompanionAcquire(DB,

	-- Vengeful Nether Drake - 49193
	AddMount(49193, 37676, R_EPIC, GAME_BC)
	--self:AddCompanionFlags(DB,49193,16)
	--self:AddCompanionAcquire(DB,

	-- Brutal Nether Drake - 58615
	AddMount(58615, 43516, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB,58615,16)
	--self:AddCompanionAcquire(DB,

	-- Deadly Gladiator's Frostwyrm - 64927
	AddMount(64927, nil, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 64927, 
	--self:AddCompanionAcquire(DB, 64927,

	-- Furious Gladiator's Frostwyrm - 65439
	AddMount(65439, 46171, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 65439, 
	--self:AddCompanionAcquire(DB, 65439,

	-- Relentless Gladiator's Frostwyrm - 67336
	AddMount(67336, nil, R_EPIC, GAME_WOTLK)
	--self:AddCompanionFlags(DB, 67336, 
	--self:AddCompanionAcquire(DB, 67336,

--OTHERS
	 -- Frostsaber - XX
	--AddMount(XX, YY, R_RARE, GAME_ORIG)
	--self:AddCompanionFlags(DB, XX, 
	--self:AddCompanionAcquire(DB, XX,

	-- Spotted Nightsaber - 10792 (Never added to the game)
	--AddMount(10792, 8628, R_COMMON, GAME_ORIG)
	--self:AddCompanionFlags(DB, 10792, 
	--self:AddCompanionAcquire(DB, 10792, 

	 -- Fluorescent Green Mechanostrider - 17458 (Never added to the game)
	--AddMount(17458, nil, R_RARE, GAME_ORIG)
	--self:AddCompanionFlags(DB, 17458, 
	--self:AddCompanionAcquire(DB, 17458,

	-- Blue Qiraji Battle Tank -- 25953
	AddMount(25953, 21218, R_RARE, GAME_ORIG)
	----self:AddCompanionFlags(DB,
	----self:AddCompanionAcquire(DB,

	-- Red Qiraji Battle Tank -- 26054
	AddMount(26054, 21321, R_RARE, GAME_ORIG)
	----self:AddCompanionFlags(DB,
	----self:AddCompanionAcquire(DB,

	-- Yellow Qiraji Battle Tank -- 26055
	AddMount(26055, 21324, R_RARE, GAME_ORIG)
	----self:AddCompanionFlags(DB,
	----self:AddCompanionAcquire(DB,

	-- Green Qiraji Battle Tank -- 26056
	AddMount(26056, 21323, R_RARE, GAME_ORIG)
	----self:AddCompanionFlags(DB,
	----self:AddCompanionAcquire(DB,

	-- Black Qiraji Resonating Crystal - 26656
	AddMount(26656, 21176, R_LEGENDARY, GAME_ORIG)
	--self:AddCompanionFlags(DB,26656,4,16)
	--self:AddCompanionAcquire(DB,26656,2,8743)

--PROMO
	-- Swift Zhevra - 49322
	AddMount(49322, 37719, R_EPIC, GAME_BC)
	--self:AddCompanionFlags(DB,49322,16)
	--self:AddCompanionAcquire(DB,

	-- Big Blizzard Bear - 58983
	AddMount(58983, 43599, R_RARE, GAME_WOTLK)
	--self:AddCompanionFlags(DB,58983,16)
	--self:AddCompanionAcquire(DB,

--TCG
	-- Riding Tutle - 30174
	AddMount(30174, 23720, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(DB, 30174,  F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 30174, A_CUSTOM, 1)

	-- Reins of the Spectral Tiger - 42776
	AddMount(42776, 33224, R_RARE, GAME_BC)
	self:AddCompanionFlags(DB, 42776, F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 42776, A_CUSTOM, 1)

	-- Reins of the Swift Spectral Tiger - 42777
	AddMount(42777, 33225, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 42777, F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 42777, A_CUSTOM, 1)

	-- X-51 Nether-Rocket - 46197
	AddMount(46197, 35225, R_RARE, GAME_BC)
	self:AddCompanionFlags(DB, 46197, F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 46197, A_CUSTOM, 1)

	-- X-51 Nether-Rocket X-TREME-- 46199
	AddMount(46199, 35226, R_EPIC, GAME_BC)
	self:AddCompanionFlags(DB, 46199, F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 46199, A_CUSTOM, 1)

	-- Big Battle Bear - 51412
	AddMount(51412, 38576, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 51412,  F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 51412, A_CUSTOM, 1)

	-- Magic Rooster - 66872
	AddMount(65917, 49290, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(DB, 65917, F_ALLIANCE, F_HORDE, F_TCG)
	self:AddCompanionAcquire(DB, 65917, A_CUSTOM, 1)

	return num_mounts

end
