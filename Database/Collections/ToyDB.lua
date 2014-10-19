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

local A = private.ACQUIRE_TYPES
local F = private.FILTER_IDS
local PROF = private.LOCALIZED_PROFESSION_NAMES
local Q = private.ITEM_QUALITIES
local REP = private.REP_LEVELS
local FAC = private.FACTION_IDS
local V = private.GAME_VERSIONS
local Z = private.ZONE_NAMES

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------


function addon:InitToys()
	local function AddToy(spell_id, genesis, quality)
		return addon:AddCollectable(spell_id, "TOY", genesis, quality)
	end

	local toy

	-- Ai-Li's Skymirror - 86589
	toy = AddToy(86589, V.MOP, Q.RARE)
	toy:SetItemID(86589)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Crashin' Thrashin' Robot -- 23767
	toy = AddToy(23767, V.TBC, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Ancient's Bloom -- 113570
	toy = AddToy(113570, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.MOB_DROP)
	toy:SetItemID(113570)
	-- toy:AddMobDrop(75435)

	-- Orb of Deception -- 1973
	toy = AddToy(1973, V.ORIG, Q.RARE)
	toy:SetItemID(1973)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Winter Veil Disguise Kit -- 17712
	toy = AddToy(17712, V.ORIG, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")

	-- Snowmaster 9000 -- 17716
	toy = AddToy(17716, V.ORIG, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")

	-- World Enlarger -- 18660
	toy = AddToy(18660, V.ORIG, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROFESSION)
	toy:AddProfession(PROF.ENGINEERING)

	-- Elune's Lantern -- 21540
	toy = AddToy(21540, V.ORIG, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST)
--	toy:AddQuest(8868)
	toy:AddWorldEvent("LUNAR_FESTIVAL")

	-- Power Converter -- 30690
	toy = AddToy(30690, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.QUEST)
--	toy:AddQuest(10675)

	-- Imp in a Ball -- 32542
	toy = AddToy(32542, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO)

	-- Picnic Basket -- 32566
	toy = AddToy(32566, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO)

	-- Time-Lost Figurine -- 32782
	toy = AddToy(32782, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.MOB_DROP)
	-- toy:AddMobDrop(21838)

	-- Goblin Gumbo Kettle -- 33219
	toy = AddToy(33219, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO)

	-- Fishing Chair -- 33223
	toy = AddToy(33223, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO)

	-- Brewfest Pony Keg -- 33927
	toy = AddToy(33927, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.VENDOR)
	toy:AddWorldEvent("BREWFEST")

	-- Romantic Picnic Basket -- 34480
	toy = AddToy(34480, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.VENDOR)
	toy:AddWorldEvent("LOVE_IS_IN_THE_AIR")

	-- Paper Flying Machine Kit -- 34499
	toy = AddToy(34499, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO)

	-- Brazier of Dancing Flames -- 34686
	toy = AddToy(34686, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.VENDOR)
	toy:AddWorldEvent("MIDSUMMER_FIRE_FESTIVAL")

	-- Goblin Weather Machine - Prototype 01-B -- 35227
	toy = AddToy(35227, V.TBC, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO)

	-- Orb of the Sin'dorei -- 35275
	toy = AddToy(35275, V.TBC, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP)

	-- Worn Troll Dice -- 36862
	toy = AddToy(36862, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.MISC)

	-- Decahedral Dwarven Dice -- 36863
	toy = AddToy(36863, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.MISC)

	-- Super Simian Sphere -- 37254
	toy = AddToy(37254, V.WOTLK, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Crashin' Thrashin' Racer Controller -- 37710
	toy = AddToy(37710, V.TBC, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST)
	toy:AddWorldEvent("FEAST_OF_WINTER_VEIL")


-- to check/update:

	-- D.I.S.C.O. -- 38301
	toy = AddToy(38301, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- The Flag of Ownership -- 38578
	toy = AddToy(38578, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gnomish X-Ray Specs -- 40895
	toy = AddToy(40895, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Iron Boot Flask -- 43499
	toy = AddToy(43499, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Titanium Seal of Dalaran -- 44430
	toy = AddToy(44430, V.WOTLK, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Toy Train Set -- 44606
	toy = AddToy(44606, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.VENDOR)

	-- Frenzyheart Brew -- 44719
	toy = AddToy(44719, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Stormwind Banner -- 45011
	toy = AddToy(45011, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Thunder Bluff Banner -- 45013
	toy = AddToy(45013, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Orgrimmar Banner -- 45014
	toy = AddToy(45014, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Sen'jin Banner -- 45015
	toy = AddToy(45015, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Undercity Banner -- 45016
	toy = AddToy(45016, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Silvermoon City Banner -- 45017
	toy = AddToy(45017, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Ironforge Banner -- 45018
	toy = AddToy(45018, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gnomeregan Banner -- 45019
	toy = AddToy(45019, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Exodar Banner -- 45020
	toy = AddToy(45020, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Darnassus Banner -- 45021
	toy = AddToy(45021, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Wind-Up Train Wrecker -- 45057
	toy = AddToy(45057, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Foam Sword Rack -- 45063
	toy = AddToy(45063, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Unusual Compass -- 45984
	toy = AddToy(45984, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- MiniZep Controller -- 46709
	toy = AddToy(46709, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Ogre Pinata -- 46780
	toy = AddToy(46780, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Argent Crusader's Banner -- 46843
	toy = AddToy(46843, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Perpetual Purple Firework -- 49703
	toy = AddToy(49703, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- The Heartbreaker -- 50471
	toy = AddToy(50471, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Muradin's Favor -- 52201
	toy = AddToy(52201, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Sylvanas' Music Box -- 52253
	toy = AddToy(52253, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Faded Wizard Hat -- 53057
	toy = AddToy(53057, V.WOD, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.QUEST)

	-- Instant Statue Pedestal -- 54212
	toy = AddToy(54212, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Blue Crashin' Thrashin' Racer Controller -- 54343
	toy = AddToy(54343, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Tiny Green Ragdoll -- 54437
	toy = AddToy(54437, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Tiny Blue Ragdoll -- 54438
	toy = AddToy(54438, V.WOD,Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gnomeregan Pride -- 54651
	toy = AddToy(54651, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Darkspear Pride -- 54653
	toy = AddToy(54653, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Tol Barad Searchlight -- 63141
	toy = AddToy(63141, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Loaded Gnomish Dice -- 63269
	toy = AddToy(63269, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Highborne Soul Mirror -- 64358
	toy = AddToy(64358, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Druid and Priest Statue Set -- 64361
	toy = AddToy(64361, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Chalice of the Mountain Kings -- 64373
	toy = AddToy(64373, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Kaldorei Wind Chimes -- 64383
	toy = AddToy(64383, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Arrival of the Naaru -- 64456
	toy = AddToy(64456, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Blessing of the Old God -- 64481
	toy = AddToy(64481, V.CATA, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Puzzle Box of Yogg-Saron -- 64482
	toy = AddToy(64482, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Bones of Transformation -- 64646
	toy = AddToy(64646, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Wisp Amulet -- 64651
	toy = AddToy(64651, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Pendant of the Scarab Storm -- 64881
	toy = AddToy(64881, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Tol Barad Searchlight -- 64997
	toy = AddToy(64997, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Stave of Fur and Claw -- 66888
	toy = AddToy(66888, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Grim Campfire -- 67097
	toy = AddToy(67097, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Kalytha's Haunted Locket -- 68806
	toy = AddToy(68806, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- War Party Hitching Post -- 69215
	toy = AddToy(69215, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Fool's Gold -- 69227
	toy = AddToy(69227, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Vrykul Drinking Horn -- 69775
	toy = AddToy(69775, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Ancient Amber -- 69776
	toy = AddToy(69776, V.MOP, Q.RARE)
	toy:SetItemID(69776)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Haunted War Drum -- 69777
	toy = AddToy(69777, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Green Balloon -- 69895
	toy = AddToy(69895, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Mylune's Call -- 70159
	toy = AddToy(70159, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Mushroom Chair -- 70161
	toy = AddToy(70161, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Little Wickerman -- 70722
	toy = AddToy(70722, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Brewfest Keg Pony -- 71137
	toy = AddToy(71137, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Leyara's Locket -- 71259
	toy = AddToy(71259, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Sack of Starfish -- 71628
	toy = AddToy(71628, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Magical Ogre Idol -- 72159
	toy = AddToy(72159, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Spurious Sarcophagus -- 72161
	toy = AddToy(72161, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Flimsy Yellow Balloon -- 75042
	toy = AddToy(75042, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Demon Hunter's Aspect -- 79769
	toy = AddToy(79769, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- The Golden Banana -- 80822
	toy = AddToy(80822, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Mr. Smite's Brass Compass -- 86568
	toy = AddToy(86568, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Kang's Bindstone -- 86571
	toy = AddToy(86571, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Chalice of Secrets -- 86575
	toy = AddToy(86575, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Farwater Conch -- 86581
	toy = AddToy(86581, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Panflute of Pandaria -- 86586
	toy = AddToy(86586, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Pandaren Firework Launcher -- 86588
	toy = AddToy(86588, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Hozen Beach Ball -- 86593
	toy = AddToy(86593, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Nat's Fishing Chair -- 86596
	toy = AddToy(86596, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Honorary Brewmaster Keg -- 87528
	toy = AddToy(87528, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Puntable Marmot -- 88370
	toy = AddToy(88370, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Turnip Paint "Gun" -- 88377
	toy = AddToy(88377, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Silversage Incense -- 88381
	toy = AddToy(88381, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Hozen Idol -- 88385
	toy = AddToy(88385, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Shushen's Spittoon -- 88387
	toy = AddToy(88387, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gokk'lok's Shell -- 88417
	toy = AddToy(88417, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Lao Chin's Last Mug -- 88531
	toy = AddToy(88531, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Krastinov's Bag of Horrors -- 88566
	toy = AddToy(88566, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Jin Warmkeg's Brew -- 88579
	toy = AddToy(88579, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Ken-Ken's Mask -- 88580
	toy = AddToy(88580, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Totem of Harmony -- 88584
	toy = AddToy(88584, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Cremating Torch -- 88589
	toy = AddToy(88589, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Flippable Table -- 88801
	toy = AddToy(88801, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Foxicopter Controller -- 88802
	toy = AddToy(88802, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Cloud Ring -- 89222
	toy = AddToy(89222, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Pandaren Scarecrow -- 89869
	toy = AddToy(89869, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Everlasting Alliance Firework -- 89999
	toy = AddToy(89999, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Everlasting Horde Firework -- 90000
	toy = AddToy(90000, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- B. F. F. Necklace -- 90067
	toy = AddToy(90067, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gin-Ji Knife Set -- 90175
	toy = AddToy(90175, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Pandaren Brewpack -- 90427
	toy = AddToy(90427, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- The Pigskin -- 90883
	toy = AddToy(90883, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Foot Ball -- 90888
	toy = AddToy(90888, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Darkmoon Whistle -- 90899
	toy = AddToy(90899, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Stackable Stag -- 91904
	toy = AddToy(91904, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Glorious Standard of the Kirin Tor Offensive -- 95589
	toy = AddToy(95589, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Glorious Standard of the Sunreaver Onslaught -- 95590
	toy = AddToy(95590, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Shado-Pan Geyser Gun -- 98132
	toy = AddToy(98132, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gastropod Shell -- 98136
	toy = AddToy(98136, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Moonfang Shroud -- 101571
	toy = AddToy(101571, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Celestial Defender's Medallion -- 103685
	toy = AddToy(103685, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Odd Polished Stone -- 104262
	toy = AddToy(104262, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Rime of the Time-Lost Mariner -- 104294
	toy = AddToy(104294, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Blackflame Daggers -- 104302
	toy = AddToy(104302, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Eternal Kiln -- 104309
	toy = AddToy(104309, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Crashin' Thrashin' Flyer Controller -- 104318
	toy = AddToy(104318, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- The Pigskin -- 104323
	toy = AddToy(104323, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Foot Ball -- 104324
	toy = AddToy(104324, V.WOD,Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Warning Sign -- 104331
	toy = AddToy(104331, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Moonfang's Paw -- 105898
	toy = AddToy(105898, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Arena Master's War Horn -- 108735
	toy = AddToy(108735, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Pretty Draenor Pearl -- 108739
	toy = AddToy(108739, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Deceptia's Smoldering Boots -- 108743
	toy = AddToy(108743, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- World Shrinker -- 109183
	toy = AddToy(109183, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Star Chart -- 109739
	toy = AddToy(109739, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Stolen Breath -- 111476
	toy = AddToy(111476, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Nightmarish Hitching Post -- 112324
	toy = AddToy(112324, V.WOD, Q.EPIC)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Bloodmane Charm -- 113096
	toy = AddToy(113096, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Vindicator's Armor Polish Kit -- 113375
	toy = AddToy(113375, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Hypnosis Goggles -- 113631
	toy = AddToy(113631, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Mournful Moan of Murmur -- 113670
	toy = AddToy(113670, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Bubble Wand -- 114227
	toy = AddToy(114227, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Permanent Frost Essence -- 115468
	toy = AddToy(115468, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Blazing Diamond Pendant -- 115503
	toy = AddToy(115503, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Ring of Broken Promises -- 116067
	toy = AddToy(116067, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Blazing Wings -- 116115
	toy = AddToy(116115, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Burning Legion Missive -- 116122
	toy = AddToy(116122, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Klikixx's Webspinner -- 116125
	toy = AddToy(116125, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Haunting Memento -- 116139
	toy = AddToy(116139, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Silver-Plated Turkey Shooter -- 116400
	toy = AddToy(116400, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Cozy Bonfire -- 116435
	toy = AddToy(116435, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Burning Defender's Medallion -- 116440
	toy = AddToy(116440, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- True Love Prism -- 116651
	toy = AddToy(116651, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Pineapple Lounge Cushion -- 116689
	toy = AddToy(116689, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Safari Lounge Cushion -- 116690
	toy = AddToy(116690, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Zhevra Lounge Cushion -- 116691
	toy = AddToy(116691, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Fuzzy Green Lounge Cushion -- 116692
	toy = AddToy(116692, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Steamworks Sausage Grill -- 116757
	toy = AddToy(116757, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Brewfest Banner -- 116758
	toy = AddToy(116758, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Crashin' Thrashin' Shredder Controller -- 116763
	toy = AddToy(116763, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Angry Beehive -- 117550
	toy = AddToy(117550, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Giant Deathweb Egg -- 117569
	toy = AddToy(117569, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Wayfarer's Bonfire -- 117573
	toy = AddToy(117573, V.WOD, Q.UNCOMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Petrification Stone -- 118221
	toy = AddToy(118221, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Spirit of Bashiok -- 118222
	toy = AddToy(118222, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Iron Buccaneer's Hat -- 118244
	toy = AddToy(118244, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Autographed Hearthstone Card -- 118427
	toy = AddToy(118427, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Goren Garb -- 118716
	toy = AddToy(118716, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Gamon's Braid -- 118937
	toy = AddToy(118937, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Manastorm's Duplicator -- 118938
	toy = AddToy(118938, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Void Totem -- 119003
	toy = AddToy(119003, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Lilian's Warning Sign -- 119039
	toy = AddToy(119039, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Fruit Basket -- 119083
	toy = AddToy(119083, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Touch of the Naaru -- 119144
	toy = AddToy(119144, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Firefury Totem -- 119145
	toy = AddToy(119145, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Tickle Totem -- 119160
	toy = AddToy(119160, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Black Whirlwind -- 119178
	toy = AddToy(119178, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Soul Evacuation Crystal -- 119182
	toy = AddToy(119182, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Hearthstone Board -- 119210
	toy = AddToy(119210, V.WOD, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Winning Hand -- 119212
	toy = AddToy(119212, V.WOD, Q.COMMON)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Robo-Gnomebulator -- 119215
	toy = AddToy(119215, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Alliance Flag of Victory -- 119217
	toy = AddToy(119217, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.WORLD_DROP)

	-- Horde Flag of Victory -- 119218
	toy = AddToy(119218, V.WOD, Q.RARE)
	toy:AddFilters(F.HORDE, F.WORLD_DROP)

	-- Warlord's Flag of Victory -- 119219
	toy = AddToy(119219, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Sha'tari Defender's Medallion -- 119421
	toy = AddToy(119421, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Botani Camouflage -- 119432
	toy = AddToy(119432, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Outrider's Bridle Chain -- 120276
	toy = AddToy(120276, V.WOD, Q.RARE)
	toy:AddFilters(F.ALLIANCE, F.HORDE, F.WORLD_DROP)

	-- Archmage Vargoth's Spare Staff -- 118191
	toy = AddToy(118191, V.WOD, Q.MISC)

	self.InitToys = nil

end