--[[
************************************************************************
ToyDB.lua
************************************************************************
File date: @file-date-iso@
File hash: @file-abbreviated-hash@
Project hash: @project-abbreviated-hash@
Project version: @project-version@
************************************************************************
Please see http://www.wowace.com/addons/collectinator/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]] --

-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Libraries
local table = _G.table

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub	= _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local F = private.FILTER_IDS
local A = private.ACQUIRE_TYPES
local Q = private.ITEM_QUALITIES
local REP = private.REP_LEVELS
local FAC = private.FACTION_IDS
local V = private.GAME_VERSIONS
local Z = private.ZONE_NAMES
local PROF = private.LOCALIZED_PROFESSION_NAMES

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------


function addon:InitToys()
	local function AddToy(spell_id, genesis, quality)
		return addon:AddCollectable(spell_id, "TOY", genesis, quality)
	end

	local toy

-- World of Warcraft Classic
	-- Orb of Deception -- 1973
	toy = AddToy(1973, V.ORIG, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.WORLD_DROP)
	toy:AddWorldDrop(Z.KALIMDOR, Z.EASTERN_KINGDOMS)

	-- Piccolo of the Flaming Fire -- 13379
	toy = AddToy(13379, V.ORIG, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(10558)

	-- Winter Veil Disguise Kit -- 17712
	toy = AddToy(17712, V.ORIG, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST, F.IBOP, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddQuest(6983, 7043)

	-- Snowmaster 9000 -- 17716
	toy = AddToy(17716, V.ORIG, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- World Enlarger -- 18660
	toy = AddToy(18660, V.ORIG, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Elune's Lantern -- 21540
	toy = AddToy(21540, V.ORIG, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST, F.IBOP, F.WORLD_EVENTS)
	toy:AddWorldEvent("LUNAR_FESTIVAL")
	toy:AddQuest(8868)

-- The Burning Crusade
	-- Crashin' Thrashin' Robot -- 23767
	toy = AddToy(23767, V.TBC, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Power Converter -- 30690
	toy = AddToy(30690, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.QUEST)
	toy:AddQuest(10675)

	-- Imp in a Ball -- 32542
	toy = AddToy(32542, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Picnic Basket -- 32566
	toy = AddToy(32566, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Time-Lost Figurine -- 32782
	toy = AddToy(32782, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(21838)

	-- Goblin Gumbo Kettle -- 33219
	toy = AddToy(33219, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Fishing Chair -- 33223
	toy = AddToy(33223, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Brewfest Pony Keg -- 33927
	toy = AddToy(33927, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(23710, 24495, 27478, 27489)
	toy:AddWorldEvent("BREWFEST")

	-- Romantic Picnic Basket -- 34480
	toy = AddToy(34480, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddWorldEvent("LOVE_IS_IN_THE_AIR")
	toy:AddCustom("CITY")

	-- Paper Flying Machine Kit -- 34499
	toy = AddToy(34499, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Brazier of Dancing Flames -- 34686
	toy = AddToy(34686, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddWorldEvent("MIDSUMMER_FIRE_FESTIVAL")
	toy:AddCustom("CITY")

	-- Goblin Weather Machine - Prototype 01-B -- 35227
	toy = AddToy(35227, V.TBC, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Orb of the Sin'dorei -- 35275
	toy = AddToy(35275, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.INSTANCE, F.MOB_DROP)
	toy:AddWorldDrop(Z.MAGISTERS_TERRACE)
	toy:AddCustom("HEROIC")

	-- Crashin' Thrashin' Racer Controller -- 37710
	toy = AddToy(37710, V.TBC, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddQuest(6983, 7043)

	-- D.I.S.C.O. -- 38301
	toy = AddToy(38301, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

-- Wrath of the Lich King
	-- Worn Troll Dice -- 36862
	toy = AddToy(36862, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.MISC)
	toy:AddCustom("PICKPOCKET")

	-- Decahedral Dwarven Dice -- 36863
	toy = AddToy(36863, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.MISC)
	toy:AddCustom("PICKPOCKET")

	-- Super Simian Sphere -- 37254
	toy = AddToy(37254, V.WOTLK, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.WORLD_DROP)
	toy:AddWorldDrop(Z.NORTHREND)

	-- The Flag of Ownership -- 38578
	toy = AddToy(38578, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Gnomish X-Ray Specs -- 40895
	toy = AddToy(40895, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Iron Boot Flask -- 43499
	toy = AddToy(43499, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29744, 30472)

	-- Titanium Seal of Dalaran -- 44430
	toy = AddToy(44430, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(2096)

	-- Toy Train Set -- 44606
	toy = AddToy(44606, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

	-- Frenzyheart Brew -- 44719
	toy = AddToy(44719, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(31911)
	toy:AddCustom("DISGUSTING_JAR")

	-- Stormwind Banner -- 45011
	toy = AddToy(45011, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	toy:AddVendor(33307)

	-- Thunder Bluff Banner -- 45013
	toy = AddToy(45013, V.WOTLK, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(33556)

	-- Orgrimmar Banner -- 45014
	toy = AddToy(45014, V.WOTLK, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(33553)

	-- Sen'jin Banner -- 45015
	toy = AddToy(45015, V.WOTLK, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(33554)

	-- Undercity Banner -- 45016
	toy = AddToy(45016, V.WOTLK, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(33555)

	-- Silvermoon City Banner -- 45017
	toy = AddToy(45017, V.WOTLK, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(33557)

	-- Ironforge Banner -- 45018
	toy = AddToy(45018, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	toy:AddVendor(33310)

	-- Gnomeregan Banner -- 45019
	toy = AddToy(45019, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	toy:AddVendor(33650)

	-- Exodar Banner -- 45020
	toy = AddToy(45020, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	toy:AddVendor(33657)

	-- Darnassus Banner -- 45021
	toy = AddToy(45021, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	toy:AddVendor(33653)

	-- Wind-Up Train Wrecker -- 45057
	toy = AddToy(45057, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

	-- Foam Sword Rack -- 45063
	toy = AddToy(45063, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Unusual Compass -- 45984
	toy = AddToy(45984, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.FISHING)
	toy:AddCustom("FISHING_DAILIES")

	-- MiniZep Controller -- 46709
	toy = AddToy(46709, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST, F.IBOP, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddQuest(6983, 7043)

	-- Ogre Pinata -- 46780
	toy = AddToy(46780, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Argent Crusader's Banner -- 46843
	toy = AddToy(46843, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(34885)

	-- Perpetual Purple Firework -- 49703
	toy = AddToy(49703, V.WOTLK, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- The Heartbreaker -- 50471
	toy = AddToy(50471, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOP, F.WORLD_EVENTS)
	toy:AddMobDrop(36296)
	toy:AddWorldEvent("LOVE_IS_IN_THE_AIR")

	-- Muradin's Favor -- 52201
	toy = AddToy(52201, V.WOTLK, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.QUEST)
	toy:AddQuest(24917)

	-- Sylvanas' Music Box -- 52253
	toy = AddToy(52253, V.WOTLK, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.QUEST)
	toy:AddQuest(24918)

	-- Instant Statue Pedestal -- 54212
	toy = AddToy(54212, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Blue Crashin' Thrashin' Racer Controller -- 54343
	toy = AddToy(54343, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

	-- Tiny Green Ragdoll -- 54437
	toy = AddToy(54437, V.WOTLK, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

	-- Tiny Blue Ragdoll -- 54438
	toy = AddToy(54438, V.WOTLK, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

-- Cataclysm

	-- Faded Wizard Hat -- 53057
	toy = AddToy(53057, V.CATA, Q.COMMON)
	toy:AddFilters(F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(14392)

	-- Tol Barad Searchlight -- 63141
	toy = AddToy(63141, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.VENDOR, F.REPUTATION, F.IBOP, F.CATACOMMON2)
	toy:AddRepVendor(FAC.BARADINS_WARDENS, REP.HONORED, 47328)

	-- Loaded Gnomish Dice -- 63269
	toy = AddToy(63269, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.WORLD_DROP, F.MISC)
	toy:AddWorldDrop(Z.TOL_BARAD, Z.TWILIGHT_HIGHLANDS)
	toy:AddCustom("PICKPOCKET")

	-- Highborne Soul Mirror -- 64358
	toy = AddToy(64358, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Druid and Priest Statue Set -- 64361
	toy = AddToy(64361, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Chalice of the Mountain Kings -- 64373
	toy = AddToy(64373, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Kaldorei Wind Chimes -- 64383
	toy = AddToy(64383, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Arrival of the Naaru -- 64456
	toy = AddToy(64456, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Blessing of the Old God -- 64481
	toy = AddToy(64481, V.CATA, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Puzzle Box of Yogg-Saron -- 64482
	toy = AddToy(64482, V.CATA, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Bones of Transformation -- 64646
	toy = AddToy(64646, V.CATA, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Wisp Amulet -- 64651
	toy = AddToy(64651, V.CATA, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Pendant of the Scarab Storm -- 64881
	toy = AddToy(64881, V.CATA, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Tol Barad Searchlight -- 64997
	toy = AddToy(64997, V.CATA, Q.RARE)
	toy:AddFilters(F.HORDE, F.VENDOR, F.REPUTATION, F.IBOP, F.CATACOMMON2)
	toy:AddRepVendor(FAC.HELLSCREAMS_REACH, REP.HONORED, 48531)

	-- Stave of Fur and Claw -- 66888
	toy = AddToy(66888, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TIMBERMAW_HOLD, F.VENDOR)
	toy:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.EXALTED, 11557)

	-- Grim Campfire -- 67097
	toy = AddToy(67097, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Kalytha's Haunted Locket -- 68806
	toy = AddToy(68806, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(36375)

	-- War Party Hitching Post -- 69215
	toy = AddToy(69215, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Fool's Gold -- 69227
	toy = AddToy(69227, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Vrykul Drinking Horn -- 69775
	toy = AddToy(69775, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Ancient Amber -- 69776
	toy = AddToy(69776, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Haunted War Drum -- 69777
	toy = AddToy(69777, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ARCHAEOLOGY)

	-- Green Balloon -- 69895
	toy = AddToy(69895, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(52358, 52809)
	toy:AddWorldEvent("CHILDRENS_WEEK")

	-- Mylune's Call -- 70159
	toy = AddToy(70159, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(53882)

	-- Mushroom Chair -- 70161
	toy = AddToy(70161, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(53881)

	-- Little Wickerman -- 70722
	toy = AddToy(70722, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(53728, 53757)
	toy:AddWorldEvent("HALLOWS_END")

	-- Brewfest Keg Pony -- 71137
	toy = AddToy(71137, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(23710, 24495, 27478, 27489)
	toy:AddWorldEvent("BREWFEST")

	-- Leyara's Locket -- 71259
	toy = AddToy(71259, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(29311)

	-- Sack of Starfish -- 71628
	toy = AddToy(71628, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Magical Ogre Idol -- 72159
	toy = AddToy(72159, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Spurious Sarcophagus -- 72161
	toy = AddToy(72161, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

	-- Flimsy Yellow Balloon -- 75042
	toy = AddToy(75042, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(55305)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Demon Hunter's Aspect -- 79769
	toy = AddToy(79769, V.CATA, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.TCG)
	toy:AddCustom("TCG")

-- Mists of Pandaria
	-- The Golden Banana -- 80822
	toy = AddToy(80822, V.MOP, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30675)

	-- Ruthers' Harness -- 82467
	toy = AddToy(82467, V.MOP, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30930)

	-- Mr. Smite's Brass Compass -- 86568
	toy = AddToy(86568, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50336)

	-- Kang's Bindstone -- 86571
	toy = AddToy(86571, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50349)

	-- Chalice of Secrets -- 86575
	toy = AddToy(86575, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50359)

	-- Farwater Conch -- 86581
	toy = AddToy(86581, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50769)

	-- Panflute of Pandaria -- 86586
	toy = AddToy(86586, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50806)

	-- Pandaren Firework Launcher -- 86588
	toy = AddToy(86588, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50817)

	-- Ai-Li's Skymirror - 86589
	toy = AddToy(86589, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50821)

	-- Hozen Beach Ball -- 86593
	toy = AddToy(86593, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(50836)

	-- Nat's Fishing Chair -- 86596
	toy = AddToy(86596, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(7274)

	-- Honorary Brewmaster Keg -- 87528
	toy = AddToy(87528, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(7385)

	-- Puntable Marmot -- 88370
	toy = AddToy(88370, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(29910)

	-- Turnip Paint "Gun" -- 88377
	toy = AddToy(88377, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(29945)

	-- Silversage Incense -- 88381
	toy = AddToy(88381, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30617)

	-- Hozen Idol -- 88385
	toy = AddToy(88385, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30599)

	-- Shushen's Spittoon -- 88387
	toy = AddToy(88387, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30169)

	-- Gokk'lok's Shell -- 88417
	toy = AddToy(88417, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(31083)

	-- Lao Chin's Last Mug -- 88531
	toy = AddToy(88531, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.QUEST)
	toy:AddQuest(30991)

	-- Krastinov's Bag of Horrors -- 88566
	toy = AddToy(88566, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(59369)

	-- Jin Warmkeg's Brew -- 88579
	toy = AddToy(88579, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30682)

	-- Ken-Ken's Mask -- 88580
	toy = AddToy(88580, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30090)

	-- Totem of Harmony -- 88584
	toy = AddToy(88584, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(30783)

	-- Cremating Torch -- 88589
	toy = AddToy(88589, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(31032)

	-- Flippable Table -- 88801
	toy = AddToy(88801, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(64395)

	-- Foxicopter Controller -- 88802
	toy = AddToy(88802, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(55143)

	-- Cloud Ring -- 89222
	toy = AddToy(89222, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.REPUTATION, F.ORDER_OF_THE_CLOUD_SERPENT)
	toy:AddRepVendor(FAC.ORDER_OF_THE_CLOUD_SERPENT, REP.REVERED, 58414)

	-- Pandaren Scarecrow -- 89869
	toy = AddToy(89869, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.REPUTATION, F.THE_TILLERS)
	toy:AddRepVendor(FAC.THE_TILLERS, REP.REVERED, 58706)

	-- Everlasting Alliance Firework -- 89999
	toy = AddToy(89999, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Everlasting Horde Firework -- 90000
	toy = AddToy(90000, V.MOP, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- B. F. F. Necklace -- 90067
	toy = AddToy(90067, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(66900)

	-- Gin-Ji Knife Set -- 90175
	toy = AddToy(90175, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.REPUTATION, F.THE_TILLERS)
	toy:AddRepVendor(FAC.THE_TILLERS, REP.EXALTED, 58706)

	-- Pandaren Brewpack -- 90427
	toy = AddToy(90427, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(23710, 24495, 27478, 27489)
	toy:AddWorldEvent("BREWFEST")

	-- The Pigskin -- 90883
	toy = AddToy(90883, V.MOP, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST, F.IBOP, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Foot Ball -- 90888
	toy = AddToy(90888, V.MOP, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST, F.IBOP, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Darkmoon Whistle -- 90899
	toy = AddToy(90899, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(14828)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Stackable Stag -- 91904
	toy = AddToy(91904, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(55143)

	-- Glorious Standard of the Kirin Tor Offensive -- 95589
	toy = AddToy(95589, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.QUEST)
	toy:AddQuest(32599)

	-- Glorious Standard of the Sunreaver Onslaught -- 95590
	toy = AddToy(95590, V.MOP, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(32589)

	-- Shado-Pan Geyser Gun -- 98132
	toy = AddToy(98132, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	toy:AddCustom("GEYSER_GUN")

	-- Gastropod Shell -- 98136
	toy = AddToy(98136, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MOB_DROP)
	toy:AddMobDrop(68220)

	-- Moonfang Shroud -- 101571
	toy = AddToy(101571, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.MOB_DROP, F.WORLD_EVENTS)
	toy:AddMobDrop(71992)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Celestial Defender's Medallion -- 103685
	toy = AddToy(103685, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.EMPEROR_SHAOHAO)
	toy:AddRepVendor(FAC.EMPEROR_SHAOHAO, REP.REVERED, 73306)

	-- Odd Polished Stone -- 104262
	toy = AddToy(104262, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(72809, 72970)

	-- Rime of the Time-Lost Mariner -- 104294
	toy = AddToy(104294, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(73281)

	-- Blackflame Daggers -- 104302
	toy = AddToy(104302, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(73171)

	-- Eternal Kiln -- 104309
	toy = AddToy(104309, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(72896)

	-- Crashin' Thrashin' Flyer Controller -- 104318
	toy = AddToy(104318, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC, F.WORLD_EVENTS)
	toy:AddCustom("WINTERVEIL_GIFT")

	-- The Pigskin -- 104323
	toy = AddToy(104323, V.MOP, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

	-- Foot Ball -- 104324
	toy = AddToy(104324, V.MOP, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(29478, 29716, 52358, 52809)

	-- Warning Sign -- 104331
	toy = AddToy(104331, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(73169)

	-- Moonfang's Paw -- 105898
	toy = AddToy(105898, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.MOB_DROP, F.WORLD_EVENTS)
	toy:AddMobDrop(71992)
	toy:AddWorldEvent("DARKMOON_FAIRE")

-- Warlords of Draenor
	-- Arena Master's War Horn -- 108735
	toy = AddToy(108735, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("CIRCLE_OF_BLOOD")

	-- Pretty Draenor Pearl -- 108739
	toy = AddToy(108739, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.QUEST, F.PROFESSION)
	toy:AddQuest(34907)
	toy:AddProfession(PROF.FISHING)

	-- Deceptia's Smoldering Boots -- 108743
	toy = AddToy(108743, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("DECEPTIA")

	-- World Shrinker -- 109183
	toy = AddToy(109183, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Star Chart -- 109739
	toy = AddToy(109739, V.MOP, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("ASTROLOGER")

	-- Stolen Breath -- 111476
	toy = AddToy(111476, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(78867)

	-- Nightmarish Hitching Post -- 112324
	toy = AddToy(112324, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.STORE)
	toy:AddCustom("STORE")

	-- Bloodmane Charm -- 113096
	toy = AddToy(113096, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddLimitedVendor(82459, 1, 84243, 1)

	-- Vindicator's Armor Polish Kit -- 113375
	toy = AddToy(113375, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("VINDICATORS_CACHE")

	-- Ancient's Bloom -- 113570
	toy = AddToy(113570, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(75435)

	-- Hypnosis Goggles -- 113631
	toy = AddToy(113631, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(79524)

	-- Mournful Moan of Murmur -- 113670
	toy = AddToy(113670, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(77828)

	-- Bubble Wand -- 114227
	toy = AddToy(114227, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(80725)

	-- Permanent Frost Essence -- 115468
	toy = AddToy(115468, V.WOD, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR, F.DRAENORCOMMON2)
	toy:AddRepVendor(FAC.FROSTWOLF_ORCS, REP.HONORED, 86036)

	-- Blazing Diamond Pendant -- 115503
	toy = AddToy(115503, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(36380)

	-- Ring of Broken Promises -- 116067
	toy = AddToy(116067, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP, F.WORLD_EVENTS)
	toy:AddMobDrop(85531)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Blazing Wings -- 116115
	toy = AddToy(116115, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(9252)

	-- Burning Legion Missive -- 116122
	toy = AddToy(116122, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(78710, 78713, 78715)

	-- Klikixx's Webspinner -- 116125
	toy = AddToy(116125, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(78872)

	-- Haunting Memento -- 116139
	toy = AddToy(116139, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(85484)

	-- Silver-Plated Turkey Shooter -- 116400
	toy = AddToy(116400, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.WORLD_EVENTS)
	toy:AddWorldEvent("PILGRIMS_BOUNTY")	-- Needs updating

	-- Cozy Bonfire -- 116435
	toy = AddToy(116435, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddWorldEvent("MIDSUMMER_FIRE_FESTIVAL")
	toy:AddCustom("CITY")

	-- Burning Defender's Medallion -- 116440
	toy = AddToy(116440, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddWorldEvent("MIDSUMMER_FIRE_FESTIVAL")
	toy:AddCustom("CITY")

	-- True Love Prism -- 116651
	toy = AddToy(116651, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddWorldEvent("LOVE_IS_IN_THE_AIR")
	toy:AddCustom("CITY")

	-- Pineapple Lounge Cushion -- 116689
	toy = AddToy(116689, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Safari Lounge Cushion -- 116690
	toy = AddToy(116690, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Zhevra Lounge Cushion -- 116691
	toy = AddToy(116691, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Fuzzy Green Lounge Cushion -- 116692
	toy = AddToy(116692, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Steamworks Sausage Grill -- 116757
	toy = AddToy(116757, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(23710, 24495, 27478, 27489)
	toy:AddWorldEvent("BREWFEST")

	-- Brewfest Banner -- 116758
	toy = AddToy(116758, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR, F.WORLD_EVENTS)
	toy:AddVendor(23710, 24495, 27478, 27489)
	toy:AddWorldEvent("BREWFEST")

	-- Crashin' Thrashin' Shredder Controller -- 116763
	toy = AddToy(116763, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.WORLD_EVENTS, F.MISC)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddCustom("WINTERVEIL_GIFT")

	-- Angry Beehive -- 117550
	toy = AddToy(117550, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.MISC)
	toy:AddCustom("SWAMPLIGHTER_HIVE")

	-- Giant Deathweb Egg -- 117569
	toy = AddToy(117569, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("CURIOUS_DEATHWEB_EGG")

	-- Wayfarer's Bonfire -- 117573
	toy = AddToy(117573, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Petrification Stone -- 118221
	toy = AddToy(118221, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(85250)

	-- Spirit of Bashiok -- 118222
	toy = AddToy(118222, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(82085)

	-- Iron Buccaneer's Hat -- 118244
	toy = AddToy(118244, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(79725)

	-- Autographed Hearthstone Card -- 118427
	toy = AddToy(118427, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Goren Garb -- 118716
	toy = AddToy(118716, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.MISC)
	toy:AddCustom("WARM_GOREN_EGG")

	-- Gamon's Braid -- 118937
	toy = AddToy(118937, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Manastorm's Duplicator -- 118938
	toy = AddToy(118938, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Void Totem -- 119003
	toy = AddToy(119003, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Lilian's Warning Sign -- 119039
	toy = AddToy(119039, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Fruit Basket -- 119083
	toy = AddToy(119083, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("INN")

	-- Touch of the Naaru -- 119144
	toy = AddToy(119144, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.QUEST)
	toy:AddQuest(36169)

	-- Firefury Totem -- 119145
	toy = AddToy(119145, V.WOD, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(32985)

	-- Tickle Totem -- 119160
	toy = AddToy(119160, V.WOD, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.VENDOR, F.DRAENORCOMMON3)
	toy:AddRepVendor(FAC.LAUGHING_SKULL_ORCS, REP.HONORED, 86698)

	-- Soul Inhaler -- 119163
	toy = AddToy(119163, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(82618)

	-- Black Whirlwind -- 119178
	toy = AddToy(119178, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(85026)

	-- Soul Evacuation Crystal -- 119182
	toy = AddToy(119182, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP)
	toy:AddRepVendor(FAC.SHATARI_DEFENSE, REP.HONORED, 85427)

	-- Hearthstone Board -- 119210
	toy = AddToy(119210, V.WOD, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(88779)

	-- Winning Hand -- 119212
	toy = AddToy(119212, V.WOD, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.VENDOR)
	toy:AddVendor(88779)

	-- Robo-Gnomebulator -- 119215
	toy = AddToy(119215, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(9673)

	-- Alliance Flag of Victory -- 119217
	toy = AddToy(119217, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(9639)
	toy:AddCustom("GLADIATORS_SANCTUM")

	-- Horde Flag of Victory -- 119218
	toy = AddToy(119218, V.WOD, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(9639)
	toy:AddCustom("GLADIATORS_SANCTUM")

	-- Warlord's Flag of Victory -- 119219
	toy = AddToy(119219, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP)
	toy:AddCustom("GLADIATORS_SANCTUM")

	-- Sha'tari Defender's Medallion -- 119421
	toy = AddToy(119421, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR, F.DRAENORCOMMON3)
	toy:AddRepVendor(FAC.SHATARI_DEFENSE, REP.REVERED, 85427)

	-- Botani Camouflage -- 119432
	toy = AddToy(119432, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(86257)

	-- Outrider's Bridle Chain -- 120276
	toy = AddToy(120276, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(81330)

	-- Mini Mana Bomb -- 89205
	toy = AddToy(89205, V.WOD, Q.RARE)
	toy:AddFilters(F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(7468)

	-- Personal Hologram -- 108745
	toy = AddToy(108745, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Scroll of Storytelling -- 116456
	toy = AddToy(116456, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST, F.WORLD_EVENTS)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")
	toy:AddQuest(6983, 7043)

	-- Moroes' Famous Polish -- 119092
	toy = AddToy(119092, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddCustom("INN")

	-- Sargerei Disguise -- 119134
	toy = AddToy(119134, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.QUEST)
	toy:AddQuest(35195)

	-- Everlasting Darkmoon Firework -- 122119
	toy = AddToy(122119, V.WOD, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT, F.WORLD_EVENTS)
	toy:AddAchievement(9764)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Gaze of the Darkmoon -- 122120
	toy = AddToy(122120, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT, F.WORLD_EVENTS)
	toy:AddAchievement(9785)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Darkmoon Tonk Controller -- 122122
	toy = AddToy(122122, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT, F.WORLD_EVENTS)
	toy:AddAchievement(9885)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Darkmoon Ring-Flinger -- 122123
	toy = AddToy(122123, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT, F.WORLD_EVENTS)
	toy:AddAchievement(9894)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Attraction Sign -- 122126
	toy = AddToy(122126, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT, F.WORLD_EVENTS)
	toy:AddAchievement(9792)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Fire-Eater's Vial -- 122129
	toy = AddToy(122129, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT, F.WORLD_EVENTS)
	toy:AddAchievement(9761)
	toy:AddWorldEvent("DARKMOON_FAIRE")

	-- Trans-Dimensional Bird Whistle -- 122293
	toy = AddToy(122293, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(9838)

	-- Fandral's Seed Pouch -- 122304
	toy = AddToy(122304, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MOB_DROP)
	toy:AddMobDrop(52571)

	-- S.E.L.F.I.E. Camera MkII -- 122674
	toy = AddToy(122674, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("MISSION")

	-- Portable Audiophone -- 122700
	toy = AddToy(122700, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.ACHIEVEMENT)
	toy:AddAchievement(9912, 9914)

	-- Photo B.O.M.B. -- 123851
	toy = AddToy(123851, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.MISC)
	toy:AddCustom("BLINGTRON_5000")

--Not actually in the toy box added
	-- Murloc Costume -- 33079
--	toy = AddToy(33079, V.WOD, Q.COMMON)

--[[  Didn't actually make it into the ToyBox panel
	-- Rukhmar's Sacred Memory -- 122283
	toy = AddToy(122283, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP)
]]--

	self.InitToys = nil

end