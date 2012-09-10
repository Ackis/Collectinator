--------------------------------------------------------------------------------------------------------------------
-- ./DB/PetDatabase.lua
-- Pet Database data for all of Collectinator
--------------------------------------------------------------------------------------------------------------------
-- File date: @file-date-iso@
-- Project version: @project-version@
--------------------------------------------------------------------------------------------------------------------
-- Please see http://www.wowace.com/addons/collectinator/ for more information.
--------------------------------------------------------------------------------------------------------------------
-- License:
-- Please see LICENSE.txt
-- This source code is released under All Rights Reserved.
--------------------------------------------------------------------------------------------------------------------

--[[
http://lua-users.org/wiki/SlightlyLessSimpleLuaPreprocessor
http://wowuidev.pastey.net/125321
http://wowuidev.pastey.net/125322
12:59	sylvanaar	Ackis so i saved that code to a file luapp.lua, then i did lua luapp.lua infile.lua outfile.lua
13:00	sylvanaar	"lua luapp.lua infile.lua outfile.lua"
]]--

local MODNAME		= "Collectinator"
local addon		= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local MY_FACTION	= UnitFactionGroup("player")

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
local WRATHCOMMON1, WRATHCOMMON2, WRATHCOMMON3, WRATHCOMMON4, WRATHCOMMON5 = 64, 65, 66, 67, 68
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

local initialized = false
local num_pets = 0

function addon:GetMiniPetTotal(PetDB)
	if initialized then
		return num_pets
	end
	initialized = true

	-------------------------------------------------------------------------------
	-- Counter and wrapper function
	-------------------------------------------------------------------------------
	local function AddPet(SpellID, PetItemID, Rarity, Game)
		num_pets = num_pets + 1
		addon:AddCompanion(PetDB, "companions", SpellID, PetItemID, Rarity, Game)
	end

	-- Core Hound Pup
	AddPet(69452, 49646, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69452, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 69452, A_CUSTOM, 14)

	-- Zipao Tiger (Purple Jade Tiger) - 69539
	AddPet(69539, 49664, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69539, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 69539, A_CUSTOM, 34)

	-- Jade Tiger - 66520
	AddPet(66520, nil, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 66520, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 66520, A_ACHIEVEMENT, 3636, A_CUSTOM, 10)

	-- Onyx Panther - 67527
	AddPet(67527, 48527, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67527, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)

	-- Tiny Red Dragon - 23530
	AddPet(23530, 19054, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 23530, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOP)

	-- Tiny Green Dragon - 23531
	AddPet(23531, 19055, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 23531, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOP)

	-- Golden Pig - 45174
	AddPet(45174, 34518, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 45174, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOP)

--ACHIEVEMENTS
	-- Pilgrim Turkey - 61773
	AddPet(61773, 44810, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61773, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT)
	self:AddCompanionAcquire(PetDB, 61773, A_ACHIEVEMENT, 3478, A_ACHIEVEMENT, 3656)

	-- Kirin Tor Familiar - 61472
	AddPet(61472, 44738, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61472, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 61472, A_ACHIEVEMENT, 1956)

	-- Reeking Pet Carrier - 40990
	AddPet(40990, 40653, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 40990, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 40990, A_ACHIEVEMENT, 1250)

	-- Little Fawn - 61991
	AddPet(61991, 44841, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61991, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 61991, A_ACHIEVEMENT, 2516)

	-- Perky Pug - 70613
	AddPet(70613, 49912, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 70613, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 70613, A_ACHIEVEMENT, 4478)

	-- Pebble -- 84492
	AddPet(84492, 60869, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 84492, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 84492, A_ACHIEVEMENT, 5449)

	-- Armadillo Pup -- 89670
	AddPet(89670, 63398, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 89670, F_ALLIANCE, F_HORDE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 89670, A_ACHIEVEMENT, 5144)

	-- Dark Phoenix Hatchling -- 89039
	AddPet(89039, 63138, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 89039, F_ALLIANCE, F_HORDE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 89039, A_ACHIEVEMENT, 5892)

	-- Nuts' Acorn -- 100970
	AddPet(100970, 71140, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 100970, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 100970, A_ACHIEVEMENT, 5876)

	-- Celestial Dragon -- 75613
	AddPet(75613, 54810, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 75613, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 75613, A_ACHIEVEMENT, 5875)

	-- Brilliant Kaliri -- 101424
	AddPet(101424, 71387, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 101424, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 101424, A_ACHIEVEMENT, 5877)

	-- Lil' Tarecgosa -- 100576
	AddPet(100576, 71033, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 100576, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 100576, A_ACHIEVEMENT, 5840)

--FISHING
	-- Magical Crawdad Box - 33050
	AddPet(33050, 27445, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 33050, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 33050, A_ACHIEVEMENT, 726, A_CUSTOM, 9)

	-- Toothy's Bucket - 43697
	AddPet(43697, 33816, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 43697, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 43697, A_QUEST, 11665, A_CUSTOM, 18)

	-- Muckbreath's Bucket - 43698
	AddPet(43698, 33818, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 43698, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 43698, A_QUEST, 11665, A_CUSTOM, 18)

	-- Snarly's Bucket - 46425
	AddPet(46425, 35349, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 46425, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 46425, A_QUEST, 11665, A_CUSTOM, 18)

	-- Chuck's Bucket - 46426
	AddPet(46426, 35350, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 46426, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 46426, A_QUEST, 11665, A_CUSTOM, 18)

	-- Giant Sewer Rat - 59250
	AddPet(59250, 43698, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 59250, F_ALLIANCE, F_HORDE, F_BOP, F_WORLD_DROP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 59250, A_ACHIEVEMENT, 1958)

	-- Strand Crawler -- 62561
	AddPet(62561, 44983, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62561, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP, F_FISHING)
	self:AddCompanionAcquire(PetDB, 62561, A_QUEST, 13830, A_QUEST, 13832, A_QUEST, 13833, A_QUEST, 13834, A_QUEST, 13836)

	-- Sea Pony -- 103588
	AddPet(103588, 73953, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 103588, F_ALLIANCE, F_HORDE, F_BOP, F_FISHING, F_SEASONAL)
	self:AddCompanionAcquire(PetDB, 103588, A_SEASONAL, 3)

--PLAYERMADE
	-- Mechanical Squirrel Box - 4055
	AddPet(4055, 4401, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 4055, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE)
	self:AddCompanionAcquire(PetDB, 4055, A_CRAFTED, 4036, 3928)

	-- Pet Bombling - 15048
	AddPet(15048, 11825, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 15048, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE, F_ENG)
	self:AddCompanionAcquire(PetDB, 15048, A_CRAFTED, 4036, 15628)

	-- Lil' Smoky - 15049
	AddPet(15049, 11826, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 15049, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE, F_ENG)
	self:AddCompanionAcquire(PetDB, 15049, A_CRAFTED, 4036, 15633)

	-- Lifelike Mechanical Toad - 19772
	AddPet(19772, 15996, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 19772, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE)
	self:AddCompanionAcquire(PetDB, 19772, A_CRAFTED, 4036, 19793)

	-- Tranquil Mechanical Yeti - 26010
	AddPet(26010, 21277, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 26010, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE)
	self:AddCompanionAcquire(PetDB, 26010, A_CRAFTED, 4036, 26011)

	-- Fossilized Hatchling -- 84752
	AddPet(84752, 60955, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 84752, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(PetDB, 84752, A_CUSTOM, 38)

	-- De-Weaponized Mechanical Companion -- 82173
	AddPet(82173, 60216, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 82173, F_ALLIANCE, F_HORDE, F_CRAFT, F_ENG, F_BOE)
	self:AddCompanionAcquire(PetDB, 82173, A_CRAFTED, 4036, 84413)

	-- Elementium Geode -- 93838
	AddPet(93838, 67282, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93838, F_ALLIANCE, F_HORDE, F_CRAFT, F_SMELT, F_BOE)
	self:AddCompanionAcquire(PetDB, 93838, A_CUSTOM, 39)

	-- Personal World Destroyer -- 81937
	AddPet(81937, 59597, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 81937, F_ALLIANCE, F_HORDE, F_CRAFT, F_ENG, F_BOE)
	self:AddCompanionAcquire(PetDB, 81937, A_CRAFTED, 4036, 84412)

	-- Clockwork Gnome -- 90523
	AddPet(90523, 64372, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 90523, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(PetDB, 90523, A_CUSTOM, 41)

	-- Crawling Claw -- 84263
	AddPet(84263, 60847, R_EPIC, GAME_CATA)
	self:AddCompanionFlags(PetDB, 84263, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(PetDB, 84263, A_CUSTOM, 42)

	-- Enchanted Lantern -- 93836
	AddPet(93836, 67274, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93836, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE)
	self:AddCompanionAcquire(PetDB, 93836, A_CRAFTED, 7411, 93841)

	-- Magic Lamp -- 93837
	AddPet(93837, 67275, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93837, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOE)
	self:AddCompanionAcquire(PetDB, 93837, A_CRAFTED, 7411, 93843)

	-- Pterrordax Hatchling -- 98571
	AddPet(98571, 69821, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 98571, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(PetDB, 98571, A_CUSTOM, 38)

	-- Voodoo Figurine -- 98587
	AddPet(98587, 69824, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 98587, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	self:AddCompanionAcquire(PetDB, 98587, A_CUSTOM, 44)

--WORLD EVENT DROP
	-- Snowman Kit - 26045
	AddPet(26045, 21309, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 26045, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 26045, A_SEASONAL, 1)

	-- Jingling Bell - 26529
	AddPet(26529, 21308, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 26529, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 26529, A_SEASONAL, 1)

	-- Green Helper Box - 26533
	AddPet(26533, 21301, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 26533, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 26533, A_SEASONAL, 1)

	-- Red Helper Box - 26541
	AddPet(26541, 21305, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 26541, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 26541, A_SEASONAL, 1)

	-- Lumpy -- 103125
	AddPet(103125, 73797, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 103125, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 103125, A_SEASONAL, 1)

	-- Darkmoon Balloon -- 103076
	AddPet(103076, 73762, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 103076, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 103076, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Darkmoon Cub -- 105122
	AddPet(105122, 74981, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 105122, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 105122, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Darkmoon Monkey -- 101733
	AddPet(101733, 73764, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 101733, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 101733, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Darkmoon Tonk -- 103544
	AddPet(103544, 73903, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 103544, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 103544, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Darkmoon Turtle -- 103074
	AddPet(103074, 73765, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 103074, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 103074, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Darkmoon Zeppelin -- 103549
	AddPet(103549, 73905, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 103549, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 103549, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Truesilver Shafted Arrow - 27570
	AddPet(27570, 22235, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 27570, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 27570, A_ACHIEVEMENT, 1700, A_SEASONAL, 5, A_CUSTOM, 61)

	-- Sinister Squashling - 42609
	AddPet(42609, 33154, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 42609, F_ALLIANCE, F_HORDE, F_INSTANCE, F_SEASONAL, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 42609, A_MOB, 23682, A_SEASONAL, 7)

	-- Clockwork Rocket Bot - 54187
	AddPet(54187, 34425, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 54187, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP, F_REMOVED)
	self:AddCompanionAcquire(PetDB, 54187, A_ACHIEVEMENT, 1705, A_SEASONAL, 1)

	-- Spring Rabbit - 61725
	AddPet(61725, 44794, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61725, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 61725, A_SEASONAL, 9)

	-- Toxic Wasteling - 71840
	AddPet(71840, 50446, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 71840, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_INSTANCE, F_BOE)
	self:AddCompanionAcquire(PetDB, 71840, A_SEASONAL, 5, A_MOB, 36296)

	-- Ice Chip (Frigid Frostling) - 74932
	AddPet(74932, 53641, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 74932, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_INSTANCE, F_BOE)
	self:AddCompanionAcquire(PetDB, 74932, A_SEASONAL, 4, A_MOB, 25740)

	-- Creepy Crate -- 100684
	AddPet(100684, 71076, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 100684, F_ALLIANCE, F_HORDE, F_SEASONAL, F_QUEST, F_BOP)
	self:AddCompanionAcquire(PetDB, 100684, A_SEASONAL, 7, A_QUEST, 29413, A_QUEST, 29429)

	-- Feline Familiar -- 100330
	AddPet(100330, 70908, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 100330, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 100330, A_SEASONAL, 7, A_VENDOR, 53757, A_VENDOR, 53728)

	-- Turtle Box - 28738
	AddPet(28738, 23002, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 28738, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 28738, A_QUEST, 171, A_QUEST, 5502, A_SEASONAL, 8)

	-- Piglet's Collar - 28739
	AddPet(28739, 23007, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 28739, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 28739, A_QUEST, 171, A_QUEST, 5502, A_SEASONAL, 8)

	-- Rat Cage - 28740
	AddPet(28740, 23015, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 28740, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 28740, A_QUEST, 171, A_QUEST, 5502, A_SEASONAL, 8)

	-- Sleepy Willy - 40613
	AddPet(40613, 32617, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 40613, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 40613, A_QUEST, 10966, A_QUEST, 10967, A_SEASONAL, 8)

	-- Egbert's Egg - 40614
	AddPet(40614, 32616, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 40614, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 40614, A_QUEST, 10966, A_QUEST, 10967, A_SEASONAL, 8)

	-- Elekk Training Collar - 40634
	AddPet(40634, 32622, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 40634, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 40634, A_QUEST, 10966, A_QUEST, 10967, A_SEASONAL, 8)

	-- Curious Wolvar Pup
	AddPet(65382, 46544, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 65382, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 65382, A_QUEST, 13959, A_SEASONAL, 8)

	-- Curious Oracle Hatchling
	AddPet(65381, 46545, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 65381, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 65381, A_QUEST, 13960, A_SEASONAL, 8)

	-- Scooter the Snail -- 93817
	AddPet(93817, 66073, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93817, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 93817, A_QUEST, 171, A_QUEST, 5502, A_SEASONAL, 8)

	-- Legs -- 98079
	AddPet(98079, 69648, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 98079, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 98079, A_QUEST, 10966, A_QUEST, 10967, A_SEASONAL, 8)

--WORLD EVENT VENDOR
	-- Spirit of Summer - 28871
	AddPet(28871, 23083, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 28871, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 28871, A_SEASONAL, 4, A_CUSTOM, 66)

	-- Pint-Sized Pink Pachyderm - 44369
	AddPet(44369, 46707, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 44369, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 44369, A_SEASONAL, 6, A_VENDOR, 23710, A_VENDOR, 24495, A_VENDOR, 27478, A_VENDOR, 27489)
	
	-- Festival Lantern -- 104049
	AddPet(104049, 74611, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 104049, F_HORDE, F_SEASONAL, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 104049, A_SEASONAL, 2, A_VENDOR, 15864)

	-- Lunar Lantern -- 104047
	AddPet(104047, 74610, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 104047, F_ALLIANCE, F_SEASONAL, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 104047, A_SEASONAL, 2, A_VENDOR, 15864)

--DROP
	-- Parrot Cage (Hyacinth Macaw) - 10682
	AddPet(10682, 8494, R_EPIC, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10682, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10682, A_CUSTOM, 59)

	-- Parrot Cage (Green Wing Macaw) - 10683
	AddPet(10683, 8492, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10683, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10683, A_MOB, 48522)

	-- Cat Carrier (Black Tabby) - 10675
	AddPet(10675, 8491, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10675, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10675, A_CUSTOM, 60)

	-- Cat Carrier (Siamese) - 10677
	AddPet(10677, 8490, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10677, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10677, A_VENDOR, 20980)

	-- Dark Whelpling - 10695
	AddPet(10695, 10822, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10695, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10695, A_CUSTOM, 58)

	-- Azure Whelpling - 10696
	AddPet(10696, 34535, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10696, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10696, A_CUSTOM, 31)

	-- Tiny Crimson Whelpling - 10697
	AddPet(10697, 8499, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10697, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10697, A_CUSTOM, 57)

	-- Tiny Emerald Whelpling - 10698
	AddPet(10698, 8498, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10698, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 10698, A_MOB, 39384)

	-- Disgusting Oozeling - 25162
	AddPet(25162, 20769, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 25162, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 25162, A_CUSTOM, 3)

	-- Captured Firefly - 36034
	AddPet(36034, 29960, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 36034, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 36034, A_MOB, 20197)

	-- Mojo - 43918
	AddPet(43918, 33993, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 43918, F_ALLIANCE, F_HORDE, F_RAID, F_BOP)
	self:AddCompanionAcquire(PetDB, 43918, A_MOB, 24396, A_CUSTOM, 19)

	-- Phoenix Hatchling - 46599
	AddPet(46599, 35504, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 46599, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 46599, A_MOB, 24664)

	-- Darting Hatchling
	AddPet(67413, 48112, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67413, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67413, A_CUSTOM, 53)

	-- Deviate Hatchling
	AddPet(67414, 48114, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67414, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67414, A_MOB, 3636, A_MOB, 3637)

	-- Gundrak Hatchling
	AddPet(67415, 48116, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67415, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67415, A_MOB, 29334)

	-- Leaping Hatchling
	AddPet(67416, 48118, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67416, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67416, A_CUSTOM, 54)

	-- Ravasaur Hatchling
	AddPet(67418, 48122, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67418, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67418, A_CUSTOM, 55)

	-- Razormaw Hatchling
	AddPet(67419, 48124, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67419, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67419, A_CUSTOM, 56)

	-- Razzashi Hatchling
	AddPet(67420, 48126, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67420, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 67420, A_CUSTOM, 43)

	-- Mr. Grubbs -- 93739
	AddPet(93739, 66076, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93739, F_ALLIANCE, F_HORDE, F_MOB_DROP)
	self:AddCompanionAcquire(PetDB, 93739, A_CUSTOM, 36)

	-- Tiny Shale Spider -- 91343
	AddPet(91343, 64494, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 91343, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 91343, A_MOB, 49822)

	-- Fox Kit -- 90637
	AddPet(90637, 64403, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 90637, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 90637, A_MOB, 47676)

--QUESTS
	-- Mechanical Chicken - 12243
	AddPet(12243, 10398, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 12243, F_ALLIANCE, F_HORDE, F_QUEST, F_BOE)
	self:AddCompanionAcquire(PetDB, 12243, A_QUEST, 3721)

	-- Chicken Egg - 13548
	AddPet(13548, 11110, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 13548, F_ALLIANCE, F_HORDE, F_QUEST, F_WORLD_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 13548, A_QUEST, 3861, A_CUSTOM, 2)

	-- Sprite Darter Egg - 15067
	AddPet(15067, 11474, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 15067, F_ALLIANCE, F_HORDE, F_WORLD_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 15067, A_CUSTOM, 27)

	-- Worg Carrier - 15999
	AddPet(15999, 12264, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 15999, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 15999, A_MOB, 9736)

	-- Smolderweb Egg - 16450
	AddPet(16450, 68673, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 16450, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	self:AddCompanionAcquire(PetDB, 16450, A_MOB, 10596)

	-- A Jubling's Tiny Home - 23811
	AddPet(23811, 19450, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 23811, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 23811, A_QUEST, 7946, A_SEASONAL, 3)

	-- Miniwing - 39181
	AddPet(39181, 31760, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 39181, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	self:AddCompanionAcquire(PetDB, 39181, A_QUEST, 10898)

	-- Wolpertinger's Tankard - 39709
	AddPet(39709, 32233, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 39709, F_ALLIANCE, F_HORDE, F_QUEST, F_SEASONAL, F_BOP)
	self:AddCompanionAcquire(PetDB, 39709, A_SEASONAL, 6, A_QUEST, 11431, A_QUEST, 11117)

	-- Gold Mini Jouster -- 78685
	AddPet(78685, 65662, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 78685, F_ALLIANCE, F_HORDE, F_QUEST, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 78685, A_QUEST, 25560, A_ACHIEVEMENT, 5860, A_CUSTOM, 46)

	-- Blue Mini Jouster -- 78683
	AddPet(78683, 65661, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 78683, F_ALLIANCE, F_HORDE, F_QUEST, F_ACHIEVEMENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 78683, A_QUEST, 25560, A_ACHIEVEMENT, 5860, A_CUSTOM, 46)

	-- Withers -- 65046
	AddPet(65046, 46325, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 65046, F_ALLIANCE, F_HORDE, F_QUEST, F_VENDOR)
	self:AddCompanionAcquire(PetDB, 65046, A_QUEST, 13570, A_VENDOR, 33980)

	-- Brazie's Sunflower -- 93823
	AddPet(93823, 66067, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93823, F_ALLIANCE, F_HORDE, F_QUEST)
	self:AddCompanionAcquire(PetDB, 93823, A_QUEST, 28748)

	-- Tiny Flamefly -- 93813
	AddPet(93813, 66080, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93813, F_ALLIANCE, F_HORDE, F_QUEST)
	self:AddCompanionAcquire(PetDB, 93813, A_QUEST, 28415, A_QUEST, 28491)

	-- Panther Cub -- 96571
	AddPet(96571, 68833, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 96571, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	self:AddCompanionAcquire(PetDB, 96571, A_QUEST, 29268, A_QUEST, 29267)

	-- Lashtail Hatchling -- 97779
	AddPet(97779, 69251, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 97779, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	self:AddCompanionAcquire(PetDB, 97779, A_QUEST, 29208)

--REP VENDOR ARGENT
	-- Teldrassil Sproutling -- 62491
	AddPet(62491, 44965, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62491, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62491, A_VENDOR, 33653)

	-- Dun Morogh Cub -- 62508
	AddPet(62508, 44970, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62508, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62508, A_VENDOR, 33310)

	-- Tirisfal Batling -- 62510
	AddPet(62510, 44971, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62510, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62510, A_VENDOR, 33555)

	-- Durotar Scorpion -- 62513
	AddPet(62513, 44973, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62513, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62513, A_VENDOR, 33553)

	-- Elwynn Lamb -- 62516
	AddPet(62516, 44974, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62516, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62516, A_VENDOR, 33307)

	-- Mulgore Hatchling -- 62542
	AddPet(62542, 44980, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62542, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62542, A_VENDOR, 33556)

	-- Ammen Vale Lashling -- 62562
	AddPet(62562, 44984, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62562, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62562, A_VENDOR, 33657)

	-- Enchanted Broom -- 62564
	AddPet(62564, 44982, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62564, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62564, A_VENDOR, 33557)

	-- Mechanopeep -- 62674
	AddPet(62674, 45002, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 62674, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 62674, A_VENDOR, 33650)

	-- Sen'jin Fetish -- 63712
	AddPet(63712, 45606, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 63712, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 63712, A_VENDOR, 33554)

--REP VENDOR NEUTRAL
	-- Tiny Sporebat - 45082
	AddPet(45082, 34478, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 45082, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SPOREGGAR)
	self:AddCompanionAcquire(PetDB, 45082, A_REPUTATION, 970, EXALTED, 18382)

	-- Nether Ray Fry - 51716
	AddPet(51716, 38628, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 51716, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	self:AddCompanionAcquire(PetDB, 51716, A_REPUTATION, 1031, EXALTED, 23367)

	-- Tickbird Hatchling -- 61348
	AddPet(61348, 39896, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61348, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_ORACLES)
	self:AddCompanionAcquire(PetDB, 61348, A_REPUTATION, 1105, REVERED, 31910, A_CUSTOM, 16)

	-- White Tickbird Hatchling -- 61349
	AddPet(61349, 39899, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61349, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_ORACLES)
	self:AddCompanionAcquire(PetDB, 61349, A_REPUTATION, 1105, REVERED, 31910, A_CUSTOM, 16)

	-- Proto-Drake Whelp -- 61350
	AddPet(61350, 44721, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61350, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_ORACLES)
	self:AddCompanionAcquire(PetDB, 61350, A_REPUTATION, 1105, REVERED, 31910, A_CUSTOM, 16)

	-- Cobra Hatchling -- 61351
	AddPet(61351, 39898, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61351, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_ORACLES)
	self:AddCompanionAcquire(PetDB, 61351, A_REPUTATION, 1105, REVERED, 31910, A_CUSTOM, 16)

	-- Nurtured Penguin Egg - 61357
	AddPet(61357, 44723, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61357, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_KALUAK)
	self:AddCompanionAcquire(PetDB, 61357, A_REPUTATION, 1073, EXALTED, 31916, A_REPUTATION, 1073, EXALTED, 32763)

	-- Rustberg Gull -- 89472
	AddPet(89472, 63355, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 89472, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 89472, A_VENDOR, 48531, A_VENDOR, 47328)

	-- Winterspring Cub -- 97638
	AddPet(97638, 69239, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 97638, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 97638, A_VENDOR, 52830)

	-- Crimson Lasher -- 99668
	AddPet(99668, 70160, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 99668, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 99668, A_VENDOR, 53881)

	-- Hyjal Bear Cub -- 99663
	AddPet(99663, 70140, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 99663, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 99663, A_VENDOR, 53882)

--VENDOR NEUTRAL
	-- Parrot Cage (Cockatiel) - 10680
	AddPet(10680, 8496, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10680, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10680, A_VENDOR, 2663)

	-- Parrot Cage (Senegal) - 10684
	AddPet(10684, 8495, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10684, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10684, A_VENDOR, 2663, A_VENDOR, 20980)

	-- Ancona Chicken - 10685
	AddPet(10685, 11023, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10685, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10685, A_VENDOR, 41135)

	-- Wood Frog Box - 10703
	AddPet(10703, 11027, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10703, F_ALLIANCE, F_HORDE, F_VENDOR, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 10703, A_VENDOR, 14860, A_SEASONAL, 3, A_CUSTOM, 63)

	-- Tree Frog Box - 10704
	AddPet(10704, 11026, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10704, F_ALLIANCE, F_HORDE, F_VENDOR, F_SEASONAL, F_BOE)
	self:AddCompanionAcquire(PetDB, 10704, A_VENDOR, 14860, A_SEASONAL, 3, A_CUSTOM, 63)

	-- Crimson Snake - 10717
	AddPet(10717, 10392, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10717, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10717, A_VENDOR, 8404, A_VENDOR, 20980)

	-- Mana Wyrmling - 35156
	AddPet(35156, 29363, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 35156, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 35156, A_VENDOR, 20980)

	-- Brown Rabbit Crate - 35239
	AddPet(35239, 29364, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 35239, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 35239, A_VENDOR, 20980)

	-- Red Moth Egg - 35909
	AddPet(35909, 29902, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 35909, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 35909, A_VENDOR, 20980)

	-- Blue Dragonhawk Hatchling - 36031
	AddPet(36031, 29958, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 36031, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 36031, A_VENDOR, 20980)

	-- Ghostly Skull - 53316
	AddPet(53316, 39973, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 53316, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 53316, A_VENDOR, 29537)

	-- Obsidian Hatchling
	AddPet(67417, 48120, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 67417, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 67417, A_VENDOR, 28951)

	-- Blue Clockwork Rocket Bot
	AddPet(75134, 54436, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 75134, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 75134, A_VENDOR, 29478, A_VENDOR, 29716)

	-- Calico Cat
	AddPet(65358, 46398, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 65358, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 65358, A_VENDOR, 28951)

	-- Albino Snake
	AddPet(10713, 44822, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 10713, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10713, A_VENDOR, 28951)

	-- Scorched Stone - 45890
	AddPet(45890, 34955, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 45890, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	self:AddCompanionAcquire(PetDB, 45890, A_VENDOR, 52822, A_CUSTOM, 15)

--VENDOR HORDE
	-- Cockroach - 10688
	AddPet(10688, 10393, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10688, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10688, A_VENDOR, 8403, A_VENDOR,20980)

	-- Prairie Dog Whistle - 10709
	AddPet(10709, 10394, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10709, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10709, A_VENDOR, 8401)

	-- Black Kingsnake - 10714
	AddPet(10714, 10360, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10714, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10714, A_VENDOR, 8404)

	-- Brown Snake - 10716
	AddPet(10716, 10361, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10716, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10716, A_VENDOR, 8404)

	-- Golden Dragonhawk Hatchling - 36027
	AddPet(36027, 29953, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 36027, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 36027, A_VENDOR, 16860)

	-- Red Dragonhawk Hatchling - 36028
	AddPet(36028, 29956, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 36028, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 36028, A_VENDOR, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	AddPet(36029, 29957, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 36029, F_HORDE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 36029, A_VENDOR, 16860)

--VENDOR ALLIANCE
	-- Cat Carrier (Bombay) - 10673
	AddPet(10673, 8485, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10673, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10673, A_VENDOR, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	AddPet(10674, 8486, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10674, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10674, A_VENDOR, 6367)

	-- Cat Carrier (Orange Tabby) - 10676
	AddPet(10676, 8487, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10676, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10676, A_VENDOR,6367)

	-- Cat Carrier (Silver Tabby) - 10678
	AddPet(10678, 8488, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10678, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10678, A_VENDOR,6367)

	-- Cat Carrier (White Kitten) - 10679
	AddPet(10679, 8489, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10679, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10679, A_VENDOR, 8666)

	-- Hawk Owl - 10706
	AddPet(10706, 8501, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10706, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10706, A_VENDOR, 8665)

	-- Great Horned Owl - 10707
	AddPet(10707, 8500, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10707, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10707, A_VENDOR, 8665)

	-- Rabbit Crate (Snowshoe) - 10711
	AddPet(10711, 8497, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 10711, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 10711, A_VENDOR, 1263)

	-- Blue Moth Egg - 35907
	AddPet(35907, 29901, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 35907, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 35907, A_VENDOR, 21019)

	-- Yellow Moth Egg - 35910
	AddPet(35910, 29903, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 35910, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 35910, A_VENDOR, 21019)

	-- White Moth Egg - 35911
	AddPet(35911, 29904, R_COMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 35911, F_ALLIANCE, F_VENDOR, F_BOE)
	self:AddCompanionAcquire(PetDB, 35911, A_VENDOR, 21019)

--RETIRED
	-- Spirit of Competition - 48406
	AddPet(48406, 37297, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 48406, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 48406, A_ACHIEVEMENT, 1637)

	-- Essence of Competition - 48408
	AddPet(48408, nil, R_UNCOMMON, GAME_BC)
	self:AddCompanionFlags(PetDB, 48408, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 48408, A_CUSTOM, 13)

	-- Vampiric Batling - 51851
	AddPet(51851, 38658, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 51851, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_SPEC_EVENT, F_REMOVED, F_BOP)
	self:AddCompanionAcquire(PetDB, 51851, A_ACHIEVEMENT, 2456, A_MOB, 28194)

	-- Baby Blizzard Bear - 61855
	AddPet(61855, 44819, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 61855, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_ACHIEVEMENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 61855, A_ACHIEVEMENT, 2398)

	-- Murkimus' Little Spear - 63318
	AddPet(63318, 45180, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 63318, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_PVP, F_BOA)
	self:AddCompanionAcquire(PetDB, 63318, A_ACHIEVEMENT, 3618, A_CUSTOM, 21)

	-- Onyxian Whelpling - 69002
	AddPet(69002, 49362, R_COMMON, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69002, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 69002, A_ACHIEVEMENT, 4400)

	-- Mr. Chilly - 55068
	AddPet(55068, 41133, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 55068, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 55068, A_CUSTOM, 28)


--COLLECTORS EDITION
	-- Diablo Stone - 17708
	AddPet(17708, 13584, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 17708, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 17708, A_ACHIEVEMENT, 662)

	-- Panda Collar - 17707
	AddPet(17707, 13583, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 17707, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 17707, A_ACHIEVEMENT, 663)

	-- Zergling Leash - 17709
	AddPet(17709, 13582, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 17709, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 17709, A_ACHIEVEMENT, 664)

	-- Lurky's Egg - 24988
	AddPet(24988, 30360, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 24988, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 24988, A_CUSTOM, 5)

	-- Netherwhelp's Collar - 32298
	AddPet(32298, 25535, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 32298, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 32298, A_ACHIEVEMENT, 665)

	-- Frosty's Collar - 52615
	AddPet(52615, 39286, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 52615, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 52615, A_ACHIEVEMENT, 683)

	-- Mini Thor - 78381
	AddPet(78381, 56806, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 78381, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 78381, A_ACHIEVEMENT, 4824)

	-- Lil' Deathwing -- 87344
	AddPet(87344, 62540, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 87344, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 87344, A_ACHIEVEMENT, 5377)

	-- Fetish Shaman -- 105633
	AddPet(105633, 76062, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 105633, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 105633, A_CUSTOM, 65)

--BLIZZCON
	-- Blue Murloc Egg - 24696 (Murky)
	AddPet(24696, 20371, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 24696, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA)
	self:AddCompanionAcquire(PetDB, 24696, A_ACHIEVEMENT, 411)

	-- Heavy Murloc Egg
	AddPet(66030, 45180, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 66030, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP)
	self:AddCompanionAcquire(PetDB, 66030, A_ACHIEVEMENT, 3536)

	-- Deathy
	AddPet(94070, 67418, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 94070, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA)
	self:AddCompanionAcquire(PetDB, 94070, A_ACHIEVEMENT, 5378)

	-- Murkablo -- 101606
	AddPet(101606, 71726, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 101606, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA)
	self:AddCompanionAcquire(PetDB, 101606, A_CUSTOM, 47)

--PROMO
	-- Pink Murloc Egg - 27241 (Gurky)
	AddPet(27241, 22114, R_RARE, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 27241, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA)
	self:AddCompanionAcquire(PetDB, 27241, A_CUSTOM, 6)

	-- Polar Bear Collar - 28505 (Poley)
	AddPet(28505, 22781, R_COMMON, GAME_ORIG)
	self:AddCompanionFlags(PetDB, 28505, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 28505, A_CUSTOM, 7)

	-- Fortune Coin - 40405 (Lucky)
	AddPet(40405, 32498, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 40405, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOA)
	self:AddCompanionAcquire(PetDB, 40405, A_CUSTOM, 12)

	-- Tyrael's Hilt - 53082
	AddPet(53082, 39656, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 53082, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA)
	self:AddCompanionAcquire(PetDB, 53082, A_ACHIEVEMENT, 414)

	-- Warbot
	AddPet(65682, 46767, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 65682, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_REMOVED, F_BOP)
	self:AddCompanionAcquire(PetDB, 65682, A_CUSTOM, 24)

--TCG
	-- Banana Charm - 40549
	AddPet(40549, 32588, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 40549, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 40549, A_CUSTOM, 1)

	-- Rocket Chicken - 45125
	AddPet(45125, 34492, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 45125, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 45125, A_CUSTOM, 1)

	-- Dragon Kite - 45127
	AddPet(45127, 34493, R_EPIC, GAME_BC)
	self:AddCompanionFlags(PetDB, 45127, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 45127, A_CUSTOM, 1)

	-- Hippogryph Hatchling - 30156
	AddPet(30156, 23713, R_EPIC, GAME_BC)
	self:AddCompanionFlags(PetDB, 30156, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 30156, A_CUSTOM, 1)

	-- Soul-Trader Beacon - 49964
	AddPet(49964, 38050, R_RARE, GAME_BC)
	self:AddCompanionFlags(PetDB, 49964, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 49964, A_CUSTOM, 1)

	-- Tuskarr Kite - 68767
	AddPet(68767, 49287, R_EPIC, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 68767, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 68767, A_CUSTOM, 1)

	-- Spectral Tiger Cub - 68810
	AddPet(68810, 49343, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 68810, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 68810, A_CUSTOM, 1)

	-- Landro's Lil' XT -- 93624
	AddPet(93624, 67128, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 93624, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 93624, A_CUSTOM, 1)

	-- Landro's Lichling -- 96817
	AddPet(96817, 68840, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 96817, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 96817, A_CUSTOM, 1)

	-- Nightsaber Cub - 96819
	AddPet(96819, 68841, R_COMMON, GAME_CATA)
	self:AddCompanionFlags(PetDB, 96819, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 96819, A_CUSTOM, 1)

	-- Purple Puffer -- 101493
	AddPet(101493, 71624, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 101493, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 101493, A_CUSTOM, 1)

	-- Gregarious Grell -- 102317
	AddPet(102317, 72134, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 102317, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 102317, A_CUSTOM, 1)

	-- Sand Scarab -- 102353
	AddPet(102353, 72153, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 102353, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	self:AddCompanionAcquire(PetDB, 102353, A_CUSTOM, 1)

--PURCHASED
	-- Lil' K.T. - 69677
	AddPet(69677, 49693, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69677, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 69677, A_CUSTOM, 4)

	-- Pandaren Monk - 69541
	AddPet(69541, 49665, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69541, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 69541, A_CUSTOM, 4)

	-- Gryphon Hatchling - 69535
	AddPet(69535, 49662, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69535, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 69535, A_CUSTOM, 4)

	-- Wind Rider Cub - 69536
	AddPet(69536, 49663, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 69536, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 69536, A_CUSTOM, 4)

	-- Lil' XT - 75906
	AddPet(75906, 54847, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 75906, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 75906, A_CUSTOM, 4)

	-- Lil' Ragnaros -- 95787
	AddPet(95787, 68385, R_RARE, GAME_WOTLK)
	self:AddCompanionFlags(PetDB, 95787, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 95787, A_CUSTOM, 4)

	-- Cenarion Hatchling -- 99578
	AddPet(99578, 70099, R_EPIC, GAME_CATA)
	self:AddCompanionFlags(PetDB, 99578, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 99578, A_CUSTOM, 4)

	-- Guardian Cub -- 98736
	AddPet(98736, 72068, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 98736, F_ALLIANCE, F_HORDE, F_STORE, F_BOE)
	self:AddCompanionAcquire(PetDB, 98736, A_CUSTOM, 4)

	-- Soul of the Aspects -- 110029
	AddPet(110029, 78916, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 110029, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	self:AddCompanionAcquire(PetDB, 110029, A_CUSTOM, 4)

	-- Lucky Quilen Cub -- 124660
	AddPet(124660, 85871, R_RARE, GAME_CATA)
	self:AddCompanionFlags(PetDB, 124660, F_ALLIANCE, F_HORDE, F_COLLECTORS, F_BOA)
	self:AddCompanionAcquire(PetDB, 124660, A_CUSTOM, 68)

	-- Darkmoon Rabbit -- 114090
	AddPet(114090, 80008, R_EPIC, GAME_CATA)
	self:AddCompanionFlags(PetDB, 114090, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	self:AddCompanionAcquire(PetDB, 114090, A_MOB, 58336)
	
-- FACTION SPECIFIC
	-- We only add the faction specific pets if the user is part of that faction
	if MY_FACTION == "Alliance" then
		-- Shimmering Wyrmling -- 66096
		AddPet(66096, 46820, R_RARE, GAME_WOTLK)
		self:AddCompanionFlags(PetDB, 66096, F_ALLIANCE, F_VENDOR, F_BOE, WRATHCOMMON1)
		self:AddCompanionAcquire(PetDB, 66096, A_REPUTATION, 1094, EXALTED, 34881)
		
		-- Guild Page -- 92395
		AddPet(92395, 65361, R_RARE, GAME_CATA)
		self:AddCompanionFlags(PetDB, 92395, F_ALLIANCE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(PetDB, 92395, A_ACHIEVEMENT, 5031)

		-- Guild Herald -- 92397
		AddPet(92397, 65363, R_RARE, GAME_CATA)
		self:AddCompanionFlags(PetDB, 92397, F_ALLIANCE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(PetDB, 92397, A_ACHIEVEMENT, 5201)
		
		-- Argent Squire -- 62609
		AddPet(62609, 44998, R_RARE, GAME_WOTLK)
		self:AddCompanionFlags(PetDB, 62609, F_ALLIANCE, F_QUEST, F_BOP)
		self:AddCompanionAcquire(PetDB, 62609, A_QUEST, 13702, A_QUEST, 13732, A_QUEST, 13733, A_QUEST, 13734, A_QUEST, 13735)
		
		-- Alliance Balloon -- 101986
		AddPet(101986, 72042, R_COMMON, GAME_CATA)
		self:AddCompanionFlags(PetDB, 101986, F_ALLIANCE, F_QUEST, F_BOP)
		self:AddCompanionAcquire(PetDB, 101986, A_QUEST, 29412)
		
		-- Moonkin Hatchling -- 95786
		AddPet(95786, 68618, R_RARE, GAME_WOTLK)
		self:AddCompanionFlags(PetDB, 95786, F_ALLIANCE, F_STORE, F_BOP)
		self:AddCompanionAcquire(PetDB, 95786, A_CUSTOM, 4)

	elseif MY_FACTION == "Horde" then
		-- Shimmering Wyrmling -- 66096
		AddPet(66096, 46821, R_RARE, GAME_WOTLK)
		self:AddCompanionFlags(PetDB, 66096, F_HORDE, F_VENDOR, F_BOE, WRATHCOMMON1)
		self:AddCompanionAcquire(PetDB, 66096, A_REPUTATION, 1124, EXALTED, 34772)
		
		-- Guild Page -- 92396
		AddPet(92396, 65362, R_RARE, GAME_CATA)
		self:AddCompanionFlags(PetDB, 92396, F_HORDE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(PetDB, 92396, A_ACHIEVEMENT, 5179)

		-- Guild Herald -- 92398
		AddPet(92398, 65364, R_RARE, GAME_CATA)
		self:AddCompanionFlags(PetDB, 92398, F_HORDE, F_ACHIEVEMENT, F_BOP)
		self:AddCompanionAcquire(PetDB, 92398, A_ACHIEVEMENT, 5201)
		
		-- Argent Gruntling -- 62746
		AddPet(62746, 45022, R_RARE, GAME_WOTLK)
		self:AddCompanionFlags(PetDB, 62746, F_HORDE, F_QUEST, F_BOP)
		self:AddCompanionAcquire(PetDB, 62746, A_QUEST, 13736, A_QUEST, 13737, A_QUEST, 13738, A_QUEST, 13739, A_QUEST, 13740)
		
		-- Horde Balloon -- 101989
		AddPet(101989, 72045, R_COMMON, GAME_CATA)
		self:AddCompanionFlags(PetDB, 101989, F_HORDE, F_QUEST, F_BOP)
		self:AddCompanionAcquire(PetDB, 101989, A_QUEST, 29401)
		
		-- Moonkin Hatchling -- 95909
		AddPet(95909, 68619, R_RARE, GAME_WOTLK)
		self:AddCompanionFlags(PetDB, 95909, F_HORDE, F_STORE, F_BOP)
		self:AddCompanionAcquire(PetDB, 95909, A_CUSTOM, 4)
		
	end

	return num_pets
end
