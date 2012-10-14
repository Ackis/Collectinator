--[[
************************************************************************
MountDB.lua
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

function addon:InitMounts()
	local function AddMount(spell_id, genesis, quality)
		return addon:AddCollectable(spell_id, "MOUNT", genesis, quality)
	end

	local mount

-- ACHIEVEMENTS
	-- Reins of the Albino Drake - 60025
	mount = AddMount(60025, V.WOTLK, Q.EPIC)
	mount:SetItemID(44178)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(2143)

	-- Reins of the Red Proto-Drake - 59961
	mount = AddMount(59961, V.WOTLK, Q.EPIC)
	mount:SetItemID(44160)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(2136)

	-- Rusted Proto-Drake - 63963
	mount = AddMount(63963, V.WOTLK, Q.EPIC)
	mount:SetItemID(45802)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(2957)

	-- Ironbound Proto-Drake - 63956
	mount = AddMount(63956, V.WOTLK, Q.EPIC)
	mount:SetItemID(45801)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(2958)

	-- Violet Proto-Drake - 60024
	mount = AddMount(60024, V.WOTLK, Q.EPIC)
	mount:SetItemID(44177)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(2144)

	-- Bloodbathed Frostbrood Vanquisher - 72808
	mount = AddMount(72808, V.WOTLK, Q.EPIC)
	mount:SetItemID(51954)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(4602)

	-- Icebound Frostbrood Vanquisher - 72807
	mount = AddMount(72807, V.WOTLK, Q.EPIC)
	mount:SetItemID(51955)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(4603)

-- FISHING
	-- Sea Turtle
	mount = AddMount(64731, V.WOTLK, Q.RARE) -- Item: 46109
	mount:SetItemID(46109)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP, F.WORLD_DROP)
	mount:AddWorldDrop(Z.ULDUM, Z.TWILIGHT_HIGHLANDS, Z.TOL_BARAD_PENINSULA, Z.NORTHREND, Z.MOUNT_HYJAL, Z.DEEPHOLM, Z.THE_JADE_FOREST, Z.DARKMOON_ISLAND)

-- PLAYERMADE
	 -- Turbo-Charged Flying Machine Control - 44151
	mount = AddMount(44151, V.TBC, Q.EPIC)
	mount:SetItemID(34061)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	mount:AddProfession(PROF.ENGINEERING)

	 -- Flying Machine Control - 44153
	mount = AddMount(44153, V.TBC, Q.RARE) -- Item: 34060
	mount:SetItemID(34060)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	mount:AddProfession(PROF.ENGINEERING)

	-- Flying Carpet - 61451
	mount = AddMount(61451, V.WOTLK, Q.RARE) -- Item: 44554
	mount:SetItemID(44554)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	mount:AddProfession(PROF.TAILORING)

	-- Magnificent Flying Carpet - 61309
	mount = AddMount(61309, V.WOTLK, Q.EPIC) -- Item: 44558
	mount:SetItemID(44558)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	mount:AddProfession(PROF.TAILORING)

	-- Frosty Flying Carpet - 75596
	mount = AddMount(75596, V.WOTLK, Q.EPIC) -- Item: 54797
	mount:SetItemID(54797)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.IBOE, F.PROFESSION)
	mount:AddProfession(PROF.TAILORING)

	-- Blue Dragonhawk - 61996
	mount = AddMount(61996, V.WOTLK, Q.EPIC) -- Item: 44843
	mount:SetItemID(44843)
	mount:AddFilters(F.ALLIANCE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(2536)

	-- Reins of the Ice Mammoth - 59799
	mount = AddMount(59799, V.WOTLK, Q.EPIC) -- Item: 43958
	mount:SetItemID(43958)
	mount:AddFilters(F.ALLIANCE, F.REPUTATION, F.IBOP, F.HODIR)
	mount:AddRepVendor(FAC.HODIR, REP.REVERED, 32540)

	-- Reins of the Grand Ice Mammoth - 61470
	mount = AddMount(61470, V.WOTLK, Q.EPIC) -- Item: 43961
	mount:SetItemID(43961)
	mount:AddFilters(F.ALLIANCE, F.REPUTATION, F.IBOP, F.HODIR)
	mount:AddRepVendor(FAC.HODIR, REP.EXALTED, 32540)

	-- Reins of the Traveler's Tundra Mammoth - 61425
	mount = AddMount(61425, V.WOTLK, Q.EPIC) -- Item: 44235
	mount:SetItemID(44235)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(32216)

	-- Quel'dorei Steed - 66090
	mount = AddMount(66090, V.WOTLK, Q.EPIC) -- Item: 46815
	mount:SetItemID(46815)
	mount:AddFilters(F.ALLIANCE, F.REPUTATION, F.IBOP, F.WRATHCOMMON1)
	mount:AddRepVendor(FAC.SILVER_COVENANT, REP.EXALTED, 34881)

	-- Silver Covenant Hippogryph - 66087
	mount = AddMount(66087, V.WOTLK, Q.EPIC) -- Item: 46813
	mount:SetItemID(46813)
	mount:AddFilters(F.ALLIANCE, F.REPUTATION, F.IBOP, F.WRATHCOMMON1)
	mount:AddRepVendor(FAC.SILVER_COVENANT, REP.EXALTED, 34881)

	-- White Mechanostrider Mod B - 15779
	mount = AddMount(15779, V.ORIG, Q.EPIC) -- Item: 13326
	mount:SetItemID(13326)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Icy Blue Mechanostrider Mod A - 17459
	mount = AddMount(17459, V.ORIG, Q.EPIC) -- Item: 13327
	mount:SetItemID(13327)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Palomino Bridle - 16082
	mount = AddMount(16082, V.ORIG, Q.EPIC) -- Item: 12354
	mount:SetItemID(12354)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- White Stallion Bridle - 16083
	mount = AddMount(16083, V.ORIG, Q.EPIC) -- Item: 12353
	mount:SetItemID(12353)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Frost Ram - 17460
	mount = AddMount(17460, V.ORIG, Q.EPIC) -- Item: 13329
	mount:SetItemID(13329)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Black Ram - 17461
	mount = AddMount(17461, V.ORIG, Q.EPIC) -- Item: 13328
	mount:SetItemID(13328)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Reins of the Nightsaber - 16055
	mount = AddMount(16055, V.ORIG, Q.EPIC) -- Item: 12303
	mount:SetItemID(12303)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Reins of the Ancient Frostsaber - 16056
	mount = AddMount(16056, V.ORIG, Q.EPIC) -- Item: 12302
	mount:SetItemID(12302)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.RETIRED)

	-- Reins of the Wooly Mammoth - 59793
	mount = AddMount(59791, V.WOTLK, Q.EPIC) -- Item: 44230
	mount:SetItemID(44230)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(32216)

	-- Armored Snowy Gryphon - 61229
	mount = AddMount(61229, V.WOTLK, Q.EPIC) -- Item: 44689
	mount:SetItemID(44689)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(32216)

	-- Reins of the Armored Brown Bear - 60114
	mount = AddMount(60114, V.WOTLK, Q.EPIC) -- Item: 44225
	mount:SetItemID(44225)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(32216)

	-- Great Green Elekk - 35712
	mount = AddMount(35712, V.TBC, Q.EPIC) -- Item: 29746
	mount:SetItemID(29746)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(17584)

	-- Great Blue Elekk - 35713
	mount = AddMount(35713, V.TBC, Q.EPIC) -- Item: 29745
	mount:SetItemID(29745)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(17584)

	-- Great Purple Elekk - 35714
	mount = AddMount(35714, V.TBC, Q.EPIC) -- Item: 29747
	mount:SetItemID(29747)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(17584)

	-- Reins of the Winterspring Frostsaber - 17229
	mount = AddMount(17229, V.ORIG, Q.EPIC) -- Item: 13086
	mount:SetItemID(13086)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.QUEST)
	mount:AddQuest(29034)

	-- Brown Horse Bridle - 458
	mount = AddMount(458, V.ORIG, Q.RARE) -- Item: 5656
	mount:SetItemID(5656)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(384, 1460, 4885, 43694)

	-- Black Stallion Bridle - 470
	mount = AddMount(470, V.ORIG, Q.RARE) -- Item: 2411
	mount:SetItemID(2411)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(1460, 43694)

	-- Pinto Bridle - 472
	mount = AddMount(472, V.ORIG, Q.RARE) -- Item: 2414
	mount:SetItemID(2414)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(384, 1460, 4885, 43694)

	-- Chestnut Mare Bridle - 6648
	mount = AddMount(6648, V.ORIG, Q.RARE) -- Item: 5655
	mount:SetItemID(5655)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(384, 1460, 4885, 43694)

	-- Gray Ram - 6777
	mount = AddMount(6777, V.ORIG, Q.RARE) -- Item: 5864
	mount:SetItemID(5864)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(1261)

	-- White Ram - 6898
	mount = AddMount(6898, V.ORIG, Q.RARE) -- Item: 5873
	mount:SetItemID(5873)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(1261)

	-- Brown Ram - 6899
	mount = AddMount(6899, V.ORIG, Q.RARE) -- Item: 5872
	mount:SetItemID(5872)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(1261)

	-- Red Mechanostrider - 10873
	mount = AddMount(10873, V.ORIG, Q.RARE) -- Item: 8563
	mount:SetItemID(8563)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(7955)

	-- Blue Mechanostrider - 10969
	mount = AddMount(10969, V.ORIG, Q.RARE) -- Item: 8595
	mount:SetItemID(8595)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(7955)

	-- Green Mechanostrider - 17453
	mount = AddMount(17453, V.ORIG, Q.RARE) -- Item: 13321
	mount:SetItemID(13321)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(7955)

	-- Unpainted Mechanostrider - 17454
	mount = AddMount(17454, V.ORIG, Q.RARE) -- Item: 13322
	mount:SetItemID(13322)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(7955)

	-- Swift Yellow Mechanostrider - 23222
	mount = AddMount(23222, V.ORIG, Q.EPIC) -- Item: 18774
	mount:SetItemID(18774)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(7955)
	mount:AddQuest(7675,7676)

	-- Swift White Mechanostrider - 23223
	mount = AddMount(23223, V.ORIG, Q.EPIC) -- Item: 18773
	mount:SetItemID(18773)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(7955)
	mount:AddQuest(7675,7676)

	-- Swift Green Mechanostrider - 23225
	mount = AddMount(23225, V.ORIG, Q.EPIC) -- Item: 18772
	mount:SetItemID(18772)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(7955)
	mount:AddQuest(7675,7676)

	-- Swift Palomino - 23227
	mount = AddMount(23227, V.ORIG, Q.EPIC) -- Item: 18776
	mount:SetItemID(18776)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(384, 4885)
	mount:AddQuest(7675, 7676)

	-- Swift White Steed - 23228
	mount = AddMount(23228, V.ORIG, Q.EPIC) -- Item: 18778
	mount:SetItemID(18778)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(384, 4885)
	mount:AddQuest(7675, 7676)

	-- Swift Brown Steed - 23229
	mount = AddMount(23229, V.ORIG, Q.EPIC) -- Item: 18777
	mount:SetItemID(18777)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(384, 4885)
	mount:AddQuest(7675, 7676)

	-- Swift Brown Ram - 23238
	mount = AddMount(23238, V.ORIG, Q.EPIC) -- Item: 18786
	mount:SetItemID(18786)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(1261)
	mount:AddQuest(7673, 7674)

	-- Swift Gray Ram - 23239
	mount = AddMount(23239, V.ORIG, Q.EPIC) -- Item: 18787
	mount:SetItemID(18787)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(1261)
	mount:AddQuest(7673, 7674)

	-- Swift White Ram - 23240
	mount = AddMount(23240, V.ORIG, Q.EPIC) -- Item: 18785
	mount:SetItemID(18785)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(1261)
	mount:AddQuest(7673, 7674)

	-- Brown Elekk - 34406
	mount = AddMount(34406, V.TBC, Q.RARE) -- Item: 28481
	mount:SetItemID(28481)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(17584)

	-- Gray Elekk - 35710
	mount = AddMount(35710, V.TBC, Q.RARE) -- Item: 29744
	mount:SetItemID(29744)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(17584)

	-- Purple Elekk - 35711
	mount = AddMount(35711, V.TBC, Q.RARE) -- Item: 29743
	mount:SetItemID(29743)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(17584)

	-- Reins of the Swift Mistsaber - 23219
	mount = AddMount(23219, V.ORIG, Q.EPIC) -- Item: 18767
	mount:SetItemID(18767)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(4730)
	mount:AddQuest(7671, 7672)

	-- Reins of the Swift Frostsaber - 23221
	mount = AddMount(23221, V.ORIG, Q.EPIC) -- Item: 18766
	mount:SetItemID(18766)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(4730)
	mount:AddQuest(7671, 7672)

	-- Reins of the Swift Stormsaber - 23338
	mount = AddMount(23338, V.ORIG, Q.EPIC) -- Item: 18902
	mount:SetItemID(18902)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.QUEST, F.IBOP)
	mount:AddVendor(4730)
	mount:AddQuest(7671, 7672)

	-- Reins of the Striped Dawnsaber - 66847
	mount = AddMount(66847, V.WOTLK, Q.RARE) -- Item: 47100
	mount:SetItemID(47100)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(4730)

	-- Reins of the Striped Frostsaber - 8394
	mount = AddMount(8394, V.ORIG, Q.RARE) -- Item: 8631
	mount:SetItemID(8631)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(4730)

	-- Reins of the Spotted Frostsaber - 10789
	mount = AddMount(10789, V.ORIG, Q.RARE) -- Item: 8632
	mount:SetItemID(8632)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(4730)

	-- Reins of the Striped Nightsaber - 10793
	mount = AddMount(10793, V.ORIG, Q.RARE) -- Item: 8629
	mount:SetItemID(8629)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(4730)

	-- Reins of the Black War Bear - 60118
	mount = AddMount(60118, V.WOTLK, Q.EPIC) -- Item: 44223
	mount:SetItemID(44223)
	mount:AddFilters(F.ALLIANCE, F.ACHIEVEMENT, F.IBOP)
	mount:AddAchievement(614)

	-- Reins of the Black War Mammoth - 59785
	mount = AddMount(59785, V.WOTLK, Q.EPIC) -- Item: 43956
	mount:SetItemID(43956)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(32294)

	-- Black War Steed Bridle - 22717
	mount = AddMount(22717, V.ORIG, Q.EPIC) -- Item: 29468
	mount:SetItemID(29468)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(12783)

	-- Black Battlestrider - 22719
	mount = AddMount(22719, V.ORIG, Q.EPIC) -- Item: 29465
	mount:SetItemID(29465)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(12783)

	-- Black War Ram - 22720
	mount = AddMount(22720, V.ORIG, Q.EPIC) -- Item: 29467
	mount:SetItemID(29467)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(12783)

	-- Stormpike Battle Charger - 23510
	mount = AddMount(23510, V.ORIG, Q.EPIC) -- Item: 19030
	mount:SetItemID(19030)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(13216, 13217)

	-- Reins of the Black War Tiger - 22723
	mount = AddMount(22723, V.ORIG, Q.EPIC) -- Item: 29471
	mount:SetItemID(29471)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(12783)

	-- Reins of the Black War Elekk - 48027
	mount = AddMount(48027, V.TBC, Q.EPIC) -- Item: 35906
	mount:SetItemID(35906)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP)
	mount:AddVendor(13216, 13217)

	-- Grand Black War Mammoth - 61465
	mount = AddMount(61465, V.WOTLK, Q.EPIC) -- Item: 43959
	mount:SetItemID(43959)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP, F.PVP, F.RAID)
	mount:AddMobDrop(31125, 33993, 35013, 38433)

	-- Golden Gryphon - 32235
	mount = AddMount(32235, V.TBC, Q.RARE) -- Item: 25470
	mount:SetItemID(25470)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Ebon Gryphon - 32239
	mount = AddMount(32239, V.TBC, Q.RARE) -- Item: 25471
	mount:SetItemID(25471)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Snowy Gryphon - 32240
	mount = AddMount(32240, V.TBC, Q.RARE) -- Item: 25472
	mount:SetItemID(25472)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Swift Blue Gryphon - 32242
	mount = AddMount(32242, V.TBC, Q.EPIC) -- Item: 25473
	mount:SetItemID(25473)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Swift Red Gryphon - 32289
	mount = AddMount(32289, V.TBC, Q.EPIC) -- Item: 25527
	mount:SetItemID(25527)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Swift Green Gryphon - 32290
	mount = AddMount(32290, V.TBC, Q.EPIC) -- Item: 25528
	mount:SetItemID(25528)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Swift Purple Gryphon - 32292
	mount = AddMount(32292, V.TBC, Q.EPIC) -- Item: 25529
	mount:SetItemID(25529)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(20510, 32216, 35101, 35131, 43768)

	-- Darnassian Nightsaber - 63637
	mount = AddMount(63637, V.WOTLK, Q.EPIC) -- Item: 45591
	mount:SetItemID(45591)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33653)
	mount:AddCustom("CHAMPION_SEALS")

	-- Swift Moonsaber - 65638
	mount = AddMount(65638, V.WOTLK, Q.EPIC) -- Item: 46744
	mount:SetItemID(46744)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33653)
	mount:AddCustom("CHAMPION_SEALS")

	-- Stormwind Steed - 63232
	mount = AddMount(63232, V.WOTLK, Q.EPIC) -- Item: 45125
	mount:SetItemID(45125)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33307)
	mount:AddCustom("CHAMPION_SEALS")

	-- Swift Gray Steed - 65640
	mount = AddMount(65640, V.WOTLK, Q.EPIC) -- Item: 46752
	mount:SetItemID(46752)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33307)
	mount:AddCustom("CHAMPION_SEALS")

	-- Gnomeregan Mechanostrider - 63638
	mount = AddMount(63638, V.WOTLK, Q.EPIC) -- Item: 45589
	mount:SetItemID(45589)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33650)
	mount:AddCustom("CHAMPION_SEALS")

	-- Turbostrider - 65642
	mount = AddMount(65642, V.WOTLK, Q.EPIC) -- Item: 46747
	mount:SetItemID(46747)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33650)
	mount:AddCustom("CHAMPION_SEALS")

	-- Ironforge Ram - 63636
	mount = AddMount(63636, V.WOTLK, Q.EPIC) -- Item: 45586
	mount:SetItemID(45586)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33310)
	mount:AddCustom("CHAMPION_SEALS")

	-- Swift Violet Ram - 65643
	mount = AddMount(65643, V.WOTLK, Q.EPIC) -- Item: 46748
	mount:SetItemID(46748)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33310)
	mount:AddCustom("CHAMPION_SEALS")

	-- Exodar Elekk - 63639
	mount = AddMount(63639, V.WOTLK, Q.EPIC) -- Item: 45590
	mount:SetItemID(45590)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33657)
	mount:AddCustom("CHAMPION_SEALS")

	-- Great Red Elekk - 65637
	mount = AddMount(65637, V.WOTLK, Q.EPIC) -- Item: 46745
	mount:SetItemID(46745)
	mount:AddFilters(F.ALLIANCE, F.VENDOR, F.IBOP)
	mount:AddVendor(33657)
	mount:AddCustom("CHAMPION_SEALS")

	-- Crusader's White Warhorse
	mount = AddMount(68187, V.WOTLK, Q.EPIC)
	mount:SetItemID(49096)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.RETIRED, F.ACHIEVEMENT)
	mount:AddAchievement(4156)

	-- Swift Alliance Steed
	mount = AddMount(68057, V.WOTLK, Q.EPIC) -- Item: 49044
	mount:SetItemID(49044)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.RETIRED, F.RAID, F.MOB_DROP)
	mount:AddMobDrop(34564)

	-- Golden King -- 90621
	mount = AddMount(90621, V.CATA, Q.EPIC) -- Item: 62298
	mount:SetItemID(62298)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR, F.ACHIEVEMENT, F.GUILD)
	mount:AddAchievement(4912)
	mount:AddRepVendor(FAC.GUILD, REP.EXALTED, 51512, 52268, 46602, 51495, 51504)

	-- Spectral Steed -- 92231
	mount = AddMount(92231, V.CATA, Q.EPIC) -- Item: 64998
	mount:SetItemID(64998)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR, F.PVP, F.REPUTATION, F.CATACOMMON2)
--	mount:AddRepVendor(FAC.BARADINS_WARDENS, REP.EXALTED, 47328)

	-- Vicious War Steed -- 100332
	mount = AddMount(100332, V.CATA, Q.EPIC) -- Item: 70909
	mount:SetItemID(70909)
	mount:AddFilters(F.ALLIANCE, F.IBOA, F.PVP, F.ACHIEVEMENT)
	mount:AddAchievement(5328, 5329, 5823)

	-- Mountain Horse -- 103195
	mount = AddMount(103195, V.CATA, Q.RARE) -- Item: 73838
	mount:SetItemID(73838)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	mount:AddVendor(55285)

	-- Swift Mountain Horse -- 103196
	mount = AddMount(103196, V.CATA, Q.EPIC) -- Item: 73839
	mount:SetItemID(73839)
	mount:AddFilters(F.ALLIANCE, F.IBOP, F.VENDOR)
	mount:AddVendor(55285)

	-- Mekgineer's Chopper - 60424
	mount = AddMount(60424, V.WOTLK, Q.EPIC) -- Item: 44413
	mount:SetItemID(73839)
	mount:AddFilters(F.ALLIANCE, F.IBOE, F.PROFESSION)
	mount:AddProfession(PROF.ENGINEERING)

	-- Spectral Gryphon -- 107516
	mount = AddMount(107516, V.CATA, Q.EPIC) -- Item: 76889
	mount:SetItemID(76889)
	mount:AddFilters(F.ALLIANCE, F.IBOP)
	mount:AddCustom("SOR")

	-- Red Dragonhawk -- 61997
	mount = AddMount(61997, V.WOTLK, Q.EPIC) -- Item: 44842
	mount:SetItemID(70909)
	mount:AddFilters(F.HORDE, F.IBOP, F.ACHIEVEMENT)
	mount:AddAchievement(2537)

	-- Reins of the Black War Bear - Horde - 60119
	mount = AddMount(60119, V.WOTLK, Q.EPIC) -- Item: 44224
	mount:SetItemID(4424)
	mount:AddFilters(F.HORDE, F.IBOP, F.PVP, F.ACHIEVEMENT)
	mount:AddAchievement(619)

	-- Grand Black War Mammoth - Horde - 61467
	mount = AddMount(61467, V.WOTLK, Q.EPIC) -- Item: 44083
	mount:SetItemID(44083)
	mount:AddFilters(F.HORDE, F.IBOP, F.RAID, F.MOB_DROP)
	mount:AddMobDrop(31125, 33993, 35013, 38433)

	-- Goblin Trike -- 87090
	mount = AddMount(87090, V.WOTLK, Q.RARE) -- Item: 62461
	mount:SetItemID(62461)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(48510)

	-- Goblin Turbo-Trike -- 87091
	mount = AddMount(87091, V.WOTLK, Q.EPIC) -- Item: 62462
	mount:SetItemID(62462)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(48510)

	-- Venomhide Ravasaur
	mount = AddMount(64659, V.WOTLK, Q.EPIC) -- Item: 46102
	mount:SetItemID(46102)
	mount:AddFilters(F.HORDE, F.IBOP, F.QUEST)
	mount:AddQuest(13906)

	-- Reins of the Armored Brown Bear - 60116
	mount = AddMount(60116, V.WOTLK, Q.EPIC) -- Item: 44226
	mount:SetItemID(44226)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(32216)

	-- Reins of the Wooly Mammoth - 59791
	mount = AddMount(59793, V.WOTLK, Q.EPIC) -- Item: 44231
	mount:SetItemID(44231)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(32216)

	-- Reins of the Traveler's Tundra Mammoth - 61447
	mount = AddMount(61447, V.WOTLK, Q.EPIC) -- Item: 44234
	mount:SetItemID(44234)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(32216)

	-- Armored Blue Wind Rider - 61230
	mount = AddMount(61230, V.WOTLK, Q.EPIC) -- Item: 44690
	mount:SetItemID(44690)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(32216)

	-- Sunreaver Hawkstrider - 66091
	mount = AddMount(66091, V.WOTLK, Q.EPIC) -- Item: 46816
	mount:SetItemID(46816)
	mount:AddFilters(F.HORDE, F.IBOP, F.REPUTATION, F.VENDOR, F.WRATHCOMMON1)
	mount:AddRepVendor(FAC.SUNREAVERS, REP.EXALTED, 34772)

	-- Sunreaver Dragonhawk - 66088
	mount = AddMount(66088, V.WOTLK, Q.EPIC) -- Item: 46814
	mount:SetItemID(46814)
	mount:AddFilters(F.HORDE, F.IBOP, F.REPUTATION, F.VENDOR, F.WRATHCOMMON1)
	mount:AddRepVendor(FAC.SUNREAVERS, REP.EXALTED, 34772)

	-- Reins of the Ice Mammoth - 59797
	mount = AddMount(59797, V.WOTLK, Q.EPIC) -- Item: 44080
	mount:SetItemID(44080)
	mount:AddFilters(F.HORDE, F.IBOP, F.REPUTATION, F.VENDOR, F.HODIR)
	mount:AddRepVendor(FAC.HODIR, REP.REVERED, 32540)

	-- Reins of the Grand Ice Mammoth - 61469
	mount = AddMount(61469, V.WOTLK, Q.EPIC) -- Item: 44086
	mount:SetItemID(44086)
	mount:AddFilters(F.HORDE, F.IBOP, F.REPUTATION, F.VENDOR, F.HODIR)
	mount:AddRepVendor(FAC.HODIR, REP.EXALTED, 32540)

	-- Horn of the Swift Brown Wolf - 23250
	mount = AddMount(23250, V.ORIG, Q.EPIC) -- Item: 18796
	mount:SetItemID(18796)
	mount:AddFilters(F.HORDE, F.IBOP, F.QUEST, F.VENDOR)
	mount:AddVendor(3362)
	mount:AddQuest(7660, 7661)

	-- Horn of the Swift Timber Wolf - 23251
	mount = AddMount(23251, V.ORIG, Q.EPIC) -- Item: 18797
	mount:SetItemID(18797)
	mount:AddFilters(F.HORDE, F.IBOP, F.QUEST, F.VENDOR)
	mount:AddVendor(3362)
	mount:AddQuest(7660, 7661)

	-- Horn of the Swift Gray Wolf - 23252
	mount = AddMount(23252, V.ORIG, Q.EPIC) -- Item: 18798
	mount:SetItemID(18798)
	mount:AddFilters(F.HORDE, F.IBOP, F.QUEST, F.VENDOR)
	mount:AddVendor(3362)
	mount:AddQuest(7660, 7661)

	-- Black Wolf
	mount = AddMount(64658, V.WOTLK, Q.RARE) -- Item: 46099
	mount:SetItemID(46099)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(3362)

	-- Horn of the Timber Wolf - 580
	mount = AddMount(580, V.ORIG, Q.RARE) -- Item: 1132
	mount:SetItemID(1132)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(3362)

	-- Horn of the Dire Wolf - 6653
	mount = AddMount(6653, V.ORIG, Q.RARE) -- Item: 5665
	mount:SetItemID(5665)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(3362)

	-- Horn of the Brown Wolf - 6654
	mount = AddMount(6654, V.ORIG, Q.RARE) -- Item: 5668
	mount:SetItemID(5668)
	mount:AddFilters(F.HORDE, F.IBOP, F.VENDOR)
	mount:AddVendor(3362)

	-- Horn of the Red Wolf - 16080
	mount = AddMount(16080, V.ORIG, Q.EPIC) -- Item: 12330
	--AddMountFlags(16080, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 16080, A_CUSTOM, 23)

	-- Horn of the Arctic Wolf - 16081
	mount = AddMount(16081, V.ORIG, Q.EPIC) -- Item: 12351
	--AddMountFlags(16081, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 16081, A_CUSTOM, 23)

	-- Swift Blue Raptor - 23241
	mount = AddMount(23241, V.ORIG, Q.EPIC) -- Item: 18788
	--AddMountFlags(23241, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 23241, A_VENDOR, 7952, A_QUEST, 7664, A_QUEST, 7665)

	-- Swift Olive Raptor - 23242
	mount = AddMount(23242, V.ORIG, Q.EPIC) -- Item: 18789
	--AddMountFlags(23242, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 23242, A_VENDOR, 7952, A_QUEST, 7664, A_QUEST, 7665)

	-- Swift Orange Raptor - 23243
	mount = AddMount(23243, V.ORIG, Q.EPIC) -- Item: 18790
	--AddMountFlags(23243, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 23243, A_VENDOR, 7952, A_QUEST, 7664, A_QUEST, 7665)

	-- Whistle of the Turquoise Raptor - 10796
	mount = AddMount(10796, V.ORIG, Q.RARE) -- Item: 8591
	--AddMountFlags(10796, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 10796, A_VENDOR, 7952)

	-- Whistle of the Emerald Raptor - 8395
	mount = AddMount(8395, V.ORIG, Q.RARE) -- Item: 8588
	--AddMountFlags(8395, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 8395, A_VENDOR, 7952)

	-- Whistle of the Violet Raptor - 10799
	mount = AddMount(10799, V.ORIG, Q.RARE) -- Item: 8592
	--AddMountFlags(10799, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 10799, A_VENDOR, 7952)

	-- Whistle of the Mottled Red Raptor - 16084
	mount = AddMount(16084, V.ORIG, Q.EPIC) -- Item: 8586
	--AddMountFlags(16084, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 16084, A_CUSTOM, 23)

	-- Whistle of the Ivory Raptor - 17450
	mount = AddMount(17450, V.ORIG, Q.EPIC) -- Item: 13317
	--AddMountFlags(17450, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 17450, A_CUSTOM, 23)

	-- Great White Kodo - 23247
	mount = AddMount(23247, V.ORIG, Q.EPIC) -- Item: 18793
	--AddMountFlags(23247, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 23247, A_VENDOR, 3685, A_QUEST, 7662, A_QUEST, 7663)

	-- Great Gray Kodo - 23248
	mount = AddMount(23248, V.ORIG, Q.EPIC) -- Item: 18795
	--AddMountFlags(23248, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 23248, A_VENDOR, 3685, A_QUEST, 7662, A_QUEST, 7663)

	-- Great Brown Kodo - 23249
	mount = AddMount(23249, V.ORIG, Q.EPIC) -- Item: 18794
	--AddMountFlags(23249, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 23249, A_VENDOR, 3685, A_QUEST, 7662, A_QUEST, 7663)

	-- White Kodo
	mount = AddMount(64657, V.WOTLK, Q.RARE) -- Item: 46100
	--AddMountFlags(64657, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 64657, A_VENDOR, 3685)

	-- Gray Kodo - 18989
	mount = AddMount(18989, V.ORIG, Q.RARE) -- Item: 15277
	--AddMountFlags(18989, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 18989, A_VENDOR, 3685)

	-- Brown Kodo - 18990
	mount = AddMount(18990, V.ORIG, Q.RARE) -- Item: 15290
	--AddMountFlags(18990, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 18990, A_VENDOR, 3685)

	-- Green Kodo - 18991
	mount = AddMount(18991, V.ORIG, Q.EPIC) -- Item: 15292
	--AddMountFlags(18991, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 18991, A_CUSTOM, 23)

	-- Teal Kodo - 18992
	mount = AddMount(18992, V.ORIG, Q.EPIC) -- Item: 15293
	--AddMountFlags(18992, F_HORDE, F_VENDOR, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 18992, A_CUSTOM, 23)

	-- Swift Pink Hawkstrider - 33660
	mount = AddMount(33660, V.TBC, Q.EPIC) -- Item: 28936
	--AddMountFlags(33660, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 33660, A_VENDOR, 16264)

	-- Swift Green Hawkstrider - 35025
	mount = AddMount(35025, V.TBC, Q.EPIC) -- Item: 29223
	--AddMountFlags(35025, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 35025, A_VENDOR, 16264)

	-- Swift Purple Hawkstrider - 35027
	mount = AddMount(35027, V.TBC, Q.EPIC) -- Item: 29224
	--AddMountFlags(35027, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 35027, A_VENDOR, 16264)

	-- Red Hawkstrider - 34795
	mount = AddMount(34795, V.TBC, Q.RARE) -- Item: 28927
	--AddMountFlags(34795, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 34795, A_VENDOR, 16264)

	-- Purple Hawkstrider - 35018
	mount = AddMount(35018, V.TBC, Q.RARE) -- Item: 29222
	--AddMountFlags(35018, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 35018, A_VENDOR, 16264)

	-- Blue Hawkstrider - 35020
	mount = AddMount(35020, V.TBC, Q.RARE) -- Item: 29220
	--AddMountFlags(35020, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 35020, A_VENDOR, 16264)

	-- Black Hawkstrider - 35022
	mount = AddMount(35022, V.TBC, Q.RARE) -- Item: 29221
	--AddMountFlags(35022, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 35022, A_VENDOR, 16264)

	-- Black Skeletal Horse
	mount = AddMount(64977, V.WOTLK, Q.RARE) -- Item: 46308
	--AddMountFlags(64977, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 64977, A_VENDOR, 4731)

	-- Red Skeletal Horse - 17462
	mount = AddMount(17462, V.ORIG, Q.RARE) -- Item: 13331
	--AddMountFlags(17462, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 17462, A_VENDOR, 4731)

	-- Blue Skeletal Horse - 17463
	mount = AddMount(17463, V.ORIG, Q.RARE) -- Item: 13332
	--AddMountFlags(17463, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 17463, A_VENDOR, 4731)

	-- Brown Skeletal Horse - 17464
	mount = AddMount(17464, V.ORIG, Q.RARE) -- Item: 13333
	--AddMountFlags(17464, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 17464, A_VENDOR, 4731)

	-- Ochre Skeletal Warhorse - 66846
	mount = AddMount(66846, V.WOTLK, Q.EPIC) -- Item: 47101
	--AddMountFlags(66846, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 66846, A_VENDOR, 4731)

	-- Purple Skeletal Warhorse - 23246
	mount = AddMount(23246, V.ORIG, Q.EPIC) -- Item: 18791
	--AddMountFlags(23246, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 23246, A_VENDOR, 4731)

	-- Green Skeletal Warhorse - 17465
	mount = AddMount(17465, V.ORIG, Q.EPIC) -- Item: 13334
	--AddMountFlags(17465, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 17465, A_VENDOR, 4731)

	-- Reins of the Black War Mammoth - 59788
	mount = AddMount(59788, V.WOTLK, Q.EPIC) -- Item: 44077
	--AddMountFlags(59788, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 59788, A_VENDOR, 32296)

	-- Swift Warstrider - 35028
	mount = AddMount(35028, V.TBC, Q.EPIC) -- Item: 34129
	--AddMountFlags(35028, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 35028, A_VENDOR, 12796)

	-- Black War Kodo - 22718
	mount = AddMount(22718, V.ORIG, Q.EPIC) -- Item: 29466
	--AddMountFlags(22718, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 22718, A_VENDOR, 12796)

	-- Whistle of the Black War Raptor - 22721
	mount = AddMount(22721, V.ORIG, Q.EPIC) -- Item: 29472
	--AddMountFlags(22721, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 22721, A_VENDOR, 12796)

	-- Red Skeletal Warhorse - 22722
	mount = AddMount(22722, V.ORIG, Q.EPIC) -- Item: 29470
	--AddMountFlags(22722, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 22722, A_VENDOR, 12796)

	-- Horn of the Black War Wolf - 22724
	mount = AddMount(22724, V.ORIG, Q.EPIC) -- Item: 18245
	--AddMountFlags(22724, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 22724, A_VENDOR, 12796)

	-- Horn of the Frostwolf Howler - 23509
	mount = AddMount(23509, V.ORIG, Q.EPIC) -- Item: 19029
	--AddMountFlags(23509, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 23509, A_VENDOR, 13218, A_VENDOR, 13219)

	-- Tawny Wind Rider - 32243
	mount = AddMount(32243, V.TBC, Q.RARE) -- Item: 25474
	--AddMountFlags(32243, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32243, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Blue Wind Rider - 32244
	mount = AddMount(32244, V.TBC, Q.RARE) -- Item: 25475
	--AddMountFlags(32244, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32244, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Green Wind Rider - 32245
	mount = AddMount(32245, V.TBC, Q.RARE) -- Item: 25476
	--AddMountFlags(32245, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32245, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Swift Red Wind Rider - 32246
	mount = AddMount(32246, V.TBC, Q.EPIC) -- Item: 25477
	--AddMountFlags(32246, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32246, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Swift Green Wind Rider - 32295
	mount = AddMount(32295, V.TBC, Q.EPIC) -- Item: 25531
	--AddMountFlags(32295, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32295, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Swift Yellow Wind Rider - 32296
	mount = AddMount(32296, V.TBC, Q.EPIC) -- Item: 25532
	--AddMountFlags(32296, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32296, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Swift Purple Wind Rider - 32297
	mount = AddMount(32297, V.TBC, Q.EPIC) -- Item: 25533
	--AddMountFlags(32297, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 32297, A_VENDOR, 35099, A_VENDOR, 20494, A_VENDOR, 32216, A_VENDOR, 35132)

	-- Darkspear Raptor
	mount = AddMount(63635, V.WOTLK, Q.EPIC) -- Item: 45593
	--AddMountFlags(63635, F_HORDE, F_VENDOR, F_BOP, F_CITY1)
	--self:AddCompanionAcquire(DB, 63635, A_VENDOR, 33554)

	-- Swift Purple Raptor
	mount = AddMount(65644, V.WOTLK, Q.EPIC) -- Item: 46743
	--AddMountFlags(65644, F_HORDE, F_VENDOR, F_BOP, F_CITY1)
	--self:AddCompanionAcquire(DB, 65644, A_REPUTATION, 530, EXALTED, 33554)

	-- Orgrimmar Wolf - 63640
	mount = AddMount(63640, V.WOTLK, Q.EPIC) -- Item: 45595
	--AddMountFlags(63640, F_HORDE, F_VENDOR, F_BOP, F_CITY2)
	--self:AddCompanionAcquire(DB, 63640, A_VENDOR, 33553)

	-- Swift Burgundy Wolf
	mount = AddMount(65646, V.WOTLK, Q.EPIC) -- Item: 46749
	--AddMountFlags(65646, F_HORDE, F_VENDOR, F_BOP, F_CITY2)
	--self:AddCompanionAcquire(DB, 65646, A_REPUTATION, 76, EXALTED, 33553)

	-- Thunder Bluff Kodo - 63641
	mount = AddMount(63641, V.WOTLK, Q.EPIC) -- Item: 45592
	--AddMountFlags(63641, F_HORDE, F_VENDOR, F_BOP, F_CITY3)
	--self:AddCompanionAcquire(DB, 63641, A_VENDOR, 33556)

	-- Great Golden Kodo
	mount = AddMount(65641, V.WOTLK, Q.EPIC) -- Item: 46750
	--AddMountFlags(65641, F_HORDE, F_VENDOR, F_BOP, F_CITY3)
	--self:AddCompanionAcquire(DB, 65641, A_REPUTATION, 81, EXALTED, 33556)

	-- Forsaken Warhorse
	mount = AddMount(63643, V.WOTLK, Q.EPIC) -- Item: 45597
	--AddMountFlags(63643, F_HORDE, F_VENDOR, F_BOP, F_CITY4)
	--self:AddCompanionAcquire(DB, 63643, A_VENDOR, 33555)

	-- White Skeletal Warhorse
	mount = AddMount(65645, V.WOTLK, Q.EPIC) -- Item: 46746
	--AddMountFlags(65645, F_HORDE, F_VENDOR, F_BOP, F_CITY4)
	--self:AddCompanionAcquire(DB, 65645, A_REPUTATION, 68, EXALTED, 33555)

	-- Silvermoon Hawkstrider
	mount = AddMount(63642, V.WOTLK, Q.EPIC) -- Item: 45596
	--AddMountFlags(63642, F_HORDE, F_VENDOR, F_BOP, F_CITY5)
	--self:AddCompanionAcquire(DB, 63642, A_VENDOR, 33557)

	-- Swift Red Hawkstrider
	mount = AddMount(65639, V.WOTLK, Q.EPIC) -- Item: 46751
	--AddMountFlags(65639, F_HORDE, F_VENDOR, F_BOP, F_CITY5)
	--self:AddCompanionAcquire(DB, 65639, A_REPUTATION, 911, EXALTED, 33557)

	-- Crusader's Black Warhorse
	mount = AddMount(68188, V.WOTLK, Q.EPIC)
	--AddMountFlags(68188, F_HORDE, F_ACHIEVEMENT, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 68188, A_ACHIEVEMENT, 4156)

	-- Swift Horde Wolf
	mount = AddMount(68056, V.WOTLK, Q.EPIC) -- Item: 49046
	--AddMountFlags(68056, F_HORDE, F_MOB_DROP, F_RAID, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 68056, A_MOB, 34564)

	-- Spectral Wolf -- 92232
	mount = AddMount(92232, V.CATA, Q.EPIC) -- Item: 64999
	--AddMountFlags(92232, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 92232, A_REPUTATION, 1178, EXALTED, 48531)

	-- Kor'kron Annihilator -- 93644
	mount = AddMount(93644, V.CATA, Q.EPIC) -- Item: 67107
	--AddMountFlags(93644, F_HORDE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 93644, A_ACHIEVEMENT, 5492)

	-- Vicious War Wolf -- 100333
	mount = AddMount(100333, V.CATA, Q.EPIC) -- Item: 70910
	--AddMountFlags(100333, F_HORDE, F_ACHIEVEMENT, F_BOE)
	--self:AddCompanionAcquire(DB, 100333, A_ACHIEVEMENT, 5824)

	-- Mechano-Hog - 55531
	mount = AddMount(55531, V.WOTLK, Q.EPIC) -- Item: 41508
	--AddMountFlags(55531, F_HORDE, F_BOE, F_ENG, F_CRAFT)
	--self:AddCompanionAcquire(DB, 55531, A_PROFESSION, 4036, 60866)

	-- Spectral Wind Rider -- 107517
	mount = AddMount(107517, V.CATA, Q.EPIC) -- Item: 76902
	--AddMountFlags(107517, F_HORDE, F_SPEC_EVENT, F_BOP)
	--self:AddCompanionAcquire(DB, 107517, A_CUSTOM, 62)
--[[
	-------------------------------------------------------------------------------
	-- Paladin Mounts.
	-------------------------------------------------------------------------------
	if MY_CLASS == "PALADIN" and (MY_RACE == "Human" or MY_RACE == "Dwarf") then

		-- Warhorse (Alliance) -- 13819
		mount = AddMount(13819, nil, Q.COMMON, V.ORIG, C_PALADIN)
		--AddMountFlags(13819, F_ALLIANCE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 13819, A_CUSTOM, 40)

		-- Charger (Alliance) -- 23214
		mount = AddMount(23214, nil, Q.COMMON, V.ORIG, C_PALADIN)
		--AddMountFlags(23214, F_ALLIANCE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 23214, A_CUSTOM, 40)

	end

	if MY_CLASS == "PALADIN" and MY_RACE == "BloodElf" then

		-- Charger (Horde) -- 34767
		mount = AddMount(34767, nil, Q.COMMON, V.ORIG, C_PALADIN)
		--AddMountFlags(34767, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 34767, A_CUSTOM, 40)

		-- Warhorse (Horde) -- 34769
		mount = AddMount(34769, nil, Q.COMMON, V.ORIG, C_PALADIN)
		--AddMountFlags(34769, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 34769, A_CUSTOM, 40)

	end

	if MY_CLASS == "PALADIN" and MY_RACE == "Draenei" then

		-- Exarch's Elekk -- 73629
		mount = AddMount(73629, nil, Q.COMMON, V.CATA, C_PALADIN)
		--AddMountFlags(73629, F_ALLIANCE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 73629, A_CUSTOM, 40)

		-- Great Exarch's Elekk -- 73629
		mount = AddMount(73630, nil, Q.COMMON, V.CATA, C_PALADIN)
		--AddMountFlags(73630, F_ALLIANCE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 73630, A_CUSTOM, 40)

	end

	if MY_CLASS == "PALADIN" and MY_RACE == "Tauren" then

		-- Sunwalker Kodo -- 69820
		mount = AddMount(69820, nil, Q.COMMON, V.CATA, C_PALADIN)
		--AddMountFlags(69820, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 69820, A_CUSTOM, 40)

		-- Great Sunwalker Kodo -- 69826
		mount = AddMount(69826, nil, Q.COMMON, V.CATA, C_PALADIN)
		--AddMountFlags(69826, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 69826, A_CUSTOM, 40)

	end
]]--
	-------------------------------------------------------------------------------
	-- Mounts for Alliance AND Horde.
	-------------------------------------------------------------------------------
	-- Swift Zhevra - 49322
	mount = AddMount(49322, V.TBC, Q.EPIC) -- Item: 37719
	--AddMountFlags(49322, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 49322, A_ACHIEVEMENT, 1436)

	-- X-53 Touring Rocket - 75973
	mount = AddMount(75973, V.WOTLK, Q.EPIC) -- Item: 54860
	--AddMountFlags(75973, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 75973, A_ACHIEVEMENT, 4832)

	-- Obsidian Nightwing (Heart of the Nightwing) - 121820
	mount = AddMount(121820, V.CATA, Q.EPIC) -- Item: 83086
	--AddMountFlags(121820, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP)
	--self:AddCompanionAcquire(DB, 121820, A_CUSTOM, 67)

	-- Big Blizzard Bear - 58983
	mount = AddMount(58983, V.WOTLK, Q.RARE) -- Item: 43599
	--AddMountFlags(58983, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOA, F_REMOVED)
	--self:AddCompanionAcquire(DB, 58983, A_ACHIEVEMENT, 415)

	 -- Argent Hippogryph - 63844
	mount = AddMount(63844, V.WOTLK, Q.EPIC) -- Item: 45725
	--AddMountFlags(63844, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 63844, A_VENDOR, 33307, A_VENDOR, 33310, A_VENDOR, 33556, A_VENDOR, 33555, A_VENDOR, 33553, A_VENDOR, 33657, A_VENDOR, 33650, A_VENDOR, 33653, A_VENDOR, 33554, A_VENDOR, 33557)

	-- Reins of the Dark Riding Talbuk - 39316
	mount = AddMount(39316, V.TBC, Q.EPIC) -- Item: 28915
	--AddMountFlags(39316, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 39316, A_VENDOR, 21485, A_VENDOR, 21474)

	-- Reins of the Dark War Talbuk - 34790
	mount = AddMount(34790, V.TBC, Q.EPIC) -- Item: 29228
	--AddMountFlags(34790, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_PVP)
	--self:AddCompanionAcquire(DB, 34790, A_VENDOR, 21485, A_VENDOR, 21474)

	-- Brewfest Ram - 43899
	mount = AddMount(43899, V.TBC, Q.RARE) -- Item: 33976
	--AddMountFlags(43899, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_REMOVED, F_BOP)
	--self:AddCompanionAcquire(DB, 43899, A_VENDOR, 24468, A_VENDOR, 24510, A_SEASONAL, 6)

	-- Great Brewfest Kodo - 49379
	mount = AddMount(49379, V.TBC, Q.EPIC) -- Item: 37828
	--AddMountFlags(49379, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 49379, A_MOB, 23872, A_SEASONAL, 6, A_CUSTOM, 35, A_ACHIEVEMENT, 3496)

	-- Swift Brewfest Ram - 43900
	mount = AddMount(43900, V.TBC, Q.EPIC) -- Item: 33977
	--AddMountFlags(43900, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 43900, A_MOB, 23872, A_SEASONAL, 6, A_CUSTOM, 35, A_ACHIEVEMENT, 3496)

	-- The Horseman's Reins - 48025
	mount = AddMount(48025, V.TBC, Q.EPIC) -- Item: 37012
	--AddMountFlags(48025, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 48025, A_MOB, 23682, A_ACHIEVEMENT, 980, A_SEASONAL, 7)

	-- Big Love Rocket - 71342
	mount = AddMount(71342, V.WOTLK, Q.EPIC) -- Item: 50250
	--AddMountFlags(71342, F_ALLIANCE, F_HORDE, F_SEASONAL, F_MOB_DROP, F_INSTANCE, F_BOP)
	--self:AddCompanionAcquire(DB, 71342, A_SEASONAL, 5, A_ACHIEVEMENT, 4627, A_MOB, 36296)

--DROP
	 -- Reins of the Onyxian Drake - 69395
	mount = AddMount(69395, V.WOTLK, Q.EPIC) -- Item: 49636
	--AddMountFlags(69395, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 69395, A_MOB, 10184)

	 -- Mimiron's Head - 63796
	mount = AddMount(63796, V.WOTLK, Q.EPIC) -- Item: 45693
	--AddMountFlags(63796, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 63796, A_MOB, 33288, A_ACHIEVEMENT, 4626)

	-- Reins of the Bronze Drake - 59569
	mount = AddMount(59569, V.WOTLK, Q.EPIC) -- Item: 43951
	--AddMountFlags(59569, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_INSTANCE, F_BOP)
	--self:AddCompanionAcquire(DB, 59569, A_MOB, 32273)

	-- Black Drake
	mount = AddMount(59650, V.WOTLK, Q.EPIC) -- Item: 43986
	--AddMountFlags(59650, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59650, A_MOB, 28860)

	-- Twilight Drake
	mount = AddMount(59571, V.WOTLK, Q.EPIC) -- Item: 43954
	--AddMountFlags(59571, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59571, A_MOB, 28860)

	-- Reins of the Azure Drake - 59567
	mount = AddMount(59567, V.WOTLK, Q.EPIC) -- Item: 43952
	--AddMountFlags(59567, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59567, A_MOB, 28859)

	-- Reins of the Blue Drake - 59568
	mount = AddMount(59568, V.WOTLK, Q.EPIC) -- Item: 43953
	--AddMountFlags(59568, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59568, A_MOB, 28859, A_MOB, 27656)

	-- Reins of the Blue Proto-Drake - 59996
	mount = AddMount(59996, V.WOTLK, Q.EPIC) -- Item: 44151
	--AddMountFlags(59996, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 59996, A_MOB, 26693)

	-- Reins of the Time-Lost Proto-Drake - 60002
	mount = AddMount(60002, V.WOTLK, Q.EPIC) -- Item: 44168
	--AddMountFlags(60002, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 60002, A_MOB, 32491)

	 -- Green Proto-Drake - 61294
	mount = AddMount(61294, V.WOTLK, Q.EPIC) -- Item: 44707
	--AddMountFlags(61294, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_ORACLES)
	--self:AddCompanionAcquire(DB, 61294, A_REPUTATION, 1105, REVERED, 31910, A_CUSTOM, 16)

	-- Ashes of Al'ar - 40192
	mount = AddMount(40192, V.TBC, Q.EPIC) -- Item: 32458
	--AddMountFlags(40192, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 40192, A_MOB, 19622)

	-- Reins of the White Polar Bear - 54753
	mount = AddMount(54753, V.WOTLK, Q.EPIC) -- Item: 43962
	--AddMountFlags(54753, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 54753, A_QUEST, 13422, A_QUEST, 13423, A_QUEST, 13424, A_QUEST, 13425)

	-- Swift White Hawkstrider - 46628
	mount = AddMount(46628, V.TBC, Q.EPIC) -- Item: 35513
	--AddMountFlags(46628, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 46628, A_MOB, 24664)

	-- Reins of the Raven Lord - 41252
	mount = AddMount(41252, V.TBC, Q.EPIC) -- Item: 32768
	--AddMountFlags(41252, F_ALLIANCE, F_HORDE, F_INSTANCE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 41252, A_MOB, 23035, A_ACHIEVEMENT, 883)

	-- Fiery Warhorse's Reins - 36702
	mount = AddMount(36702, V.TBC, Q.EPIC) -- Item: 30480
	--AddMountFlags(36702, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 36702, A_MOB, 15550)

	-- Deathcharger's Reins - 17481
	mount = AddMount(17481, V.ORIG, Q.EPIC) -- Item: 13335
	--AddMountFlags(17481, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_INSTANCE, F_BOP)
	--self:AddCompanionAcquire(DB, 17481, A_MOB, 10440)

	-- Invincible's Reins - 72286
	mount = AddMount(72286, V.WOTLK, Q.EPIC) -- Item: 50818
	--AddMountFlags(72286, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_RAID, F_BOP)
	--self:AddCompanionAcquire(DB, 72286, A_MOB, 36597, A_ACHIEVEMENT, 4625)
--[[
--CLASS
	if MY_CLASS == "WARLOCK" then
		-- Felsteed - 5784
		mount = AddMount(5784, nil, Q.RARE, V.ORIG, C_WARLOCK)
		--AddMountFlags(5784, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 5784,
					 A_VENDOR, 16646, A_VENDOR, 5173, A_VENDOR, 23534, A_VENDOR, 5172, A_VENDOR, 16266,
					 A_VENDOR, 461, A_VENDOR, 3172, A_VENDOR, 5612, A_VENDOR, 3324, A_VENDOR, 4563,
					 A_VENDOR, 988, A_VENDOR, 4564, A_VENDOR, 906, A_VENDOR, 3325, A_VENDOR, 4565,
					 A_VENDOR, 2127, A_VENDOR, 5496, A_VENDOR, 6251, A_VENDOR, 16647, A_VENDOR, 5171,
					 A_VENDOR, 5495, A_VENDOR, 16648, A_VENDOR, 3326)

		-- Dreadsteed - 23161
		mount = AddMount(23161, nil, Q.EPIC, V.ORIG, C_WARLOCK)
		--AddMountFlags(23161, F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_BOP)
		--self:AddCompanionAcquire(DB, 23161, A_VENDOR, 16646, A_VENDOR, 5173, A_VENDOR, 23534,
					A_VENDOR, 5172, A_VENDOR, 16266, A_VENDOR, 461, A_VENDOR, 3172, A_VENDOR, 5612,
					A_VENDOR, 3324, A_VENDOR, 4563,	A_VENDOR, 988, A_VENDOR, 4564, A_VENDOR, 906,
					A_VENDOR, 3325, A_VENDOR, 4565,	A_VENDOR, 2127, A_VENDOR, 5496, A_VENDOR, 6251,
					A_VENDOR, 16647, A_VENDOR, 5171, A_VENDOR, 5495, A_VENDOR, 16648, A_VENDOR, 3326)
	end

	if MY_CLASS == "DEATHKNIGHT" then
		-- Acherus Deathcharger - 48778
		mount = AddMount(48778, nil, 1, V.WOTLK, C_DK)
		--AddMountFlags(48778, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
		--self:AddCompanionAcquire(DB, 48778, A_QUEST, 12687)

		-- Winged Steed of the Ebon Blade - 54729
		mount = AddMount(54729, C_DK, Q.EPIC, V.WOTLK) -- Item: 40775
		--AddMountFlags(54729, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 54729, A_VENDOR, 29587)
	end

--REP VENDOR ARGENT
	if MY_CLASS == "PALADIN" then
		-- Argent Charger - 66906
		mount = AddMount(66906, C_PALADIN, Q.EPIC, V.WOTLK) -- Item: 47179
		--AddMountFlags(66906, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
		--self:AddCompanionAcquire(DB, 66906, A_VENDOR, 34885)
	end
]]--
--REP VENDOR NEUTRAL
	-- Argent Warhorse - 67466
	mount = AddMount(67466, V.WOTLK, Q.EPIC) -- Item: 47180
	--AddMountFlags(67466, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 67466, A_VENDOR, 34885)

	-- Reins of the Red Drake - 59570
	mount = AddMount(59570, V.WOTLK, Q.EPIC) -- Item: 43955
	--AddMountFlags(59570, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_WYRMREST)
	--self:AddCompanionAcquire(DB, 59570, A_REPUTATION, 1091, EXALTED, 32533)

	-- Cenarion War Hippogryph - 43927
	mount = AddMount(43927, V.TBC, Q.EPIC) -- Item: 33999
	--AddMountFlags(43927, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_CENARION_EXPEDITION)
	--self:AddCompanionAcquire(DB, 43927, A_REPUTATION, 942, EXALTED, 17904)

	-- Green Riding Nether Ray - 39798
	mount = AddMount(39798, V.TBC, Q.EPIC) -- Item: 32314
	--AddMountFlags(39798, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	--self:AddCompanionAcquire(DB, 39798, A_REPUTATION, 1031, EXALTED, 23367)

	-- Red Riding Nether Ray - 39800
	mount = AddMount(39800, V.TBC, Q.EPIC) -- Item: 32317
	--AddMountFlags(39800, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	--self:AddCompanionAcquire(DB, 39800, A_REPUTATION, 1031, EXALTED, 23367)

	-- Purple Riding Nether Ray - 39801
	mount = AddMount(39801, V.TBC, Q.EPIC) -- Item: 32316
	--AddMountFlags(39801, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	--self:AddCompanionAcquire(DB, 39801, A_REPUTATION, 1031, EXALTED, 23367)

	-- Silver Riding Nether Ray - 39802
	mount = AddMount(39802, V.TBC, Q.EPIC) -- Item: 32318
	--AddMountFlags(39802, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	--self:AddCompanionAcquire(DB, 39802, A_REPUTATION, 1031, EXALTED, 23367)

	-- Blue Riding Nether Ray - 39803
	mount = AddMount(39803, V.TBC, Q.EPIC) -- Item: 32319
	--AddMountFlags(39803, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_SKYGUARD)
	--self:AddCompanionAcquire(DB, 39803, A_REPUTATION, 1031, EXALTED, 23367)

	-- Reins of the Onyx Netherwing Drake - 41513
	mount = AddMount(41513, V.TBC, Q.EPIC) -- Item: 32857
	--AddMountFlags(41513, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	--self:AddCompanionAcquire(DB, 41513, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	mount = AddMount(41514, V.TBC, Q.EPIC) -- Item: 32858
	--AddMountFlags(41514, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	--self:AddCompanionAcquire(DB, 41514, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Cobalt Netherwing Drake - 41515
	mount = AddMount(41515, V.TBC, Q.EPIC) -- Item: 32859
	--AddMountFlags(41515, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	--self:AddCompanionAcquire(DB, 41515, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Purple Netherwing Drake - 41516
	mount = AddMount(41516, V.TBC, Q.EPIC) -- Item: 32860
	--AddMountFlags(41516, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	--self:AddCompanionAcquire(DB, 41516, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Veridian Netherwing Drake - 41517
	mount = AddMount(41517, V.TBC, Q.EPIC) -- Item: 32861
	--AddMountFlags(41517, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	--self:AddCompanionAcquire(DB, 41517, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Violet Netherwing Drake - 41518
	mount = AddMount(41518, V.TBC, Q.EPIC) -- Item: 32862
	--AddMountFlags(41518, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NETHERWING)
	--self:AddCompanionAcquire(DB, 41518, A_REPUTATION, 1015, EXALTED, 23489, A_QUEST, 11111)

	-- Reins of the Cobalt Riding Talbuk - 39315
	mount = AddMount(39315, V.TBC, Q.EPIC) -- Item: 31829
	--AddMountFlags(39315, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 39315, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Silver Riding Talbuk - 39317
	mount = AddMount(39317, V.TBC, Q.EPIC) -- Item: 31831
	--AddMountFlags(39317, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 39317, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	mount = AddMount(39318, V.TBC, Q.EPIC) -- Item: 31833
	--AddMountFlags(39318, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 39318, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the White Riding Talbuk - 39319
	mount = AddMount(39319, V.TBC, Q.EPIC) -- Item: 31835
	--AddMountFlags(39319, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 39319, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Cobalt War Talbuk - 34896
	mount = AddMount(34896, V.TBC, Q.EPIC) -- Item: 29102
	--AddMountFlags(34896, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 34896, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the White War Talbuk - 34897
	mount = AddMount(34897, V.TBC, Q.EPIC) -- Item: 29103
	--AddMountFlags(34897, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 34897, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Silver War Talbuk - 34898
	mount = AddMount(34898, V.TBC, Q.EPIC) -- Item: 29104
	--AddMountFlags(34898, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 34898, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

	-- Reins of the Tan War Talbuk - 34899
	mount = AddMount(34899, V.TBC, Q.EPIC) -- Item: 29105
	--AddMountFlags(34899, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP, F_NAGRAND)
	--self:AddCompanionAcquire(DB, 34899, A_REPUTATION, 978, EXALTED, 20240, A_REPUTATION, 941, EXALTED, 20241)

--REP VENDOR ALLIANCE

--RETIRED

	-- Swift Zulian Tiger - 24252
	mount = AddMount(24252, V.ORIG, Q.EPIC) -- Item: 19902
	--AddMountFlags(24252, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 24252, A_MOB, 14509)

	-- Swift Razzashi Raptor - 24242
	mount = AddMount(24242, V.ORIG, Q.EPIC) -- Item: 19872
	--AddMountFlags(24242, F_ALLIANCE, F_HORDE, F_RAID, F_MOB_DROP, F_BOP, F_REMOVED)
	--self:AddCompanionAcquire(DB, 24242, A_MOB, 11382)

	 -- Black Proto-Drake - 59976
	mount = AddMount(59976, V.WOTLK, Q.EPIC) -- Item: 44164
	--AddMountFlags(59976, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_ACHIEVEMENT)
	--self:AddCompanionAcquire(DB, 59976, A_ACHIEVEMENT, 2138)

	 -- Plagued Proto-Drake - 60021
	mount = AddMount(60021, V.WOTLK, Q.EPIC) -- Item: 44175
	--AddMountFlags(60021, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_ACHIEVEMENT)
	--self:AddCompanionAcquire(DB, 60021, A_ACHIEVEMENT, 2137)

	-- Amani War Bear - 43688
	mount = AddMount(43688, V.TBC, Q.EPIC) -- Item: 33809
	--AddMountFlags(43688, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_RAID)
	--self:AddCompanionAcquire(DB, 43688, A_ACHIEVEMENT, 430)

	-- Swift Nether Drake - 37015
	mount = AddMount(37015, V.TBC, Q.EPIC) -- Item: 30609
	--AddMountFlags(37015, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 37015, A_CUSTOM, 30, A_ACHIEVEMENT, 886)

	-- Merciless Nether Drake - 44744
	mount = AddMount(44744, V.TBC, Q.EPIC) -- Item: 34092
	--AddMountFlags(44744, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 44744, A_CUSTOM, 20, A_ACHIEVEMENT, 887)

	-- Vengeful Nether Drake - 49193
	mount = AddMount(49193, V.TBC, Q.EPIC) -- Item: 37676
	--AddMountFlags(49193, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 49193, A_CUSTOM, 17, A_ACHIEVEMENT, 888)

	-- Brutal Nether Drake - 58615
	mount = AddMount(58615, V.WOTLK, Q.EPIC) -- Item: 43516
	--AddMountFlags(58615, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 58615, A_CUSTOM, 22, A_ACHIEVEMENT, 2316)

	-- Deadly Gladiator's Frostwyrm - 64927
	mount = AddMount(64927, V.WOTLK, Q.EPIC) -- Item: 46708
	--AddMountFlags(64927, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 64927, A_CUSTOM, 25, A_ACHIEVEMENT, 3096)

	-- Furious Gladiator's Frostwyrm - 65439
	mount = AddMount(65439, V.WOTLK, Q.EPIC) -- Item: 46171
	--AddMountFlags(65439, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 65439, A_CUSTOM, 26, A_ACHIEVEMENT, 3756)

	-- Relentless Gladiator's Frostwyrm - 67336
	mount = AddMount(67336, V.WOTLK, Q.EPIC)
	--AddMountFlags(67336, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 67336, A_CUSTOM, 32, A_ACHIEVEMENT, 3757)

	-- Wrathful Gladiator's Frostwyrm - 71810
	mount = AddMount(71810, V.WOTLK, Q.EPIC)
	--AddMountFlags(71810, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 71810, A_CUSTOM, 33, A_ACHIEVEMENT, 4600)

	-- Blue Qiraji Battle Tank -- 25953
	mount = AddMount(25953, V.ORIG, Q.RARE) -- Item: 21218
	--AddMountFlags(25953, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	--self:AddCompanionAcquire(DB, 25953, A_CUSTOM, 29)

	-- Red Qiraji Battle Tank -- 26054
	mount = AddMount(26054, V.ORIG, Q.RARE) -- Item: 21321
	--AddMountFlags(26054, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	--self:AddCompanionAcquire(DB, 26054, A_CUSTOM, 29)

	-- Yellow Qiraji Battle Tank -- 26055
	mount = AddMount(26055, V.ORIG, Q.RARE) -- Item: 21324
	--AddMountFlags(26055, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	--self:AddCompanionAcquire(DB, 26055, A_CUSTOM, 29)

	-- Green Qiraji Battle Tank -- 26056
	mount = AddMount(26056, V.ORIG, Q.RARE) -- Item: 21323
	--AddMountFlags(26056, F_ALLIANCE, F_HORDE, F_BOP, F_RAID)
	--self:AddCompanionAcquire(DB, 26056, A_CUSTOM, 29)

	-- Black Qiraji Resonating Crystal - 26656
	mount = AddMount(26656, V.ORIG, R_LEGENDARY) -- Item: 21176
	--AddMountFlags(26656, F_ALLIANCE, F_HORDE, F_BOP, F_RAID, F_REMOVED)
	--self:AddCompanionAcquire(DB, 26656, A_ACHIEVEMENT, 416)

--TCG
	-- Riding Tutle - 30174
	mount = AddMount(30174, V.ORIG, Q.EPIC) -- Item: 23720
	--AddMountFlags(30174, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	--self:AddCompanionAcquire(DB, 30174, A_CUSTOM, 1)

	-- Reins of the Spectral Tiger - 42776
	mount = AddMount(42776, V.TBC, Q.RARE) -- Item: 49283
	--AddMountFlags(42776, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 42776, A_CUSTOM, 1)

	-- Reins of the Swift Spectral Tiger - 42777
	mount = AddMount(42777, V.TBC, Q.EPIC) -- Item: 49284
	--AddMountFlags(42777, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 42777, A_CUSTOM, 1)

	-- X-51 Nether-Rocket - 46197
	mount = AddMount(46197, V.TBC, Q.RARE) -- Item: 49285
	--AddMountFlags(46197, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 46197, A_CUSTOM, 1)

	-- X-51 Nether-Rocket X-TREME-- 46199
	mount = AddMount(46199, V.TBC, Q.EPIC) -- Item: 49286
	--AddMountFlags(46199, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 46199, A_CUSTOM, 1)

	-- Big Battle Bear - 51412
	mount = AddMount(51412, V.WOTLK, Q.EPIC) -- Item: 49282
	--AddMountFlags(51412, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 51412, A_CUSTOM, 1)

	-- Magic Rooster - 65917
	mount = AddMount(65917, V.WOTLK, Q.EPIC) -- Item: 49290
	--AddMountFlags(65917, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 65917, A_CUSTOM, 1)

	-- Blazing Hippogryph - 74856
	mount = AddMount(74856, V.WOTLK, Q.EPIC) -- Item: 54069
	--AddMountFlags(74856, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 74856, A_CUSTOM, 1)

	-- Savage Raptor -- 97581
	mount = AddMount(97581, V.CATA, Q.EPIC) -- Item: 69228
	--AddMountFlags(97581, F_ALLIANCE, F_HORDE, F_TCG, F_BOP)
	--self:AddCompanionAcquire(DB, 97581, A_CUSTOM, 1)

	-- Mottled Drake -- 93623
	mount = AddMount(93623, V.CATA, Q.EPIC) -- Item: 68008
	--AddMountFlags(93623, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 93623, A_CUSTOM, 1)

	-- Wooly White Rhino -- 74918
	mount = AddMount(74918, V.WOTLK, Q.EPIC) -- Item: 54068
	--AddMountFlags(74918, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 74918, A_CUSTOM, 1)

	-- Corrupted Hippogryph -- 102514
	mount = AddMount(102514, V.CATA, Q.EPIC) -- Item: 72582
	--AddMountFlags(102514, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 102514, A_CUSTOM, 1)

-- PURCHASED
	-- Celestial Steed - 75614
	mount = AddMount(75614, V.WOTLK, Q.EPIC) -- Item: 54811
	--AddMountFlags(75614, F_ALLIANCE, F_HORDE, F_STORE, F_BOA)
	--self:AddCompanionAcquire(DB, 75614, A_CUSTOM, 4)

	-- Winged Guardian -- 98727
	mount = AddMount(98727, V.CATA, Q.EPIC) -- Item: 69846
	--AddMountFlags(98727, F_ALLIANCE, F_HORDE, F_STORE, F_BOA)
	--self:AddCompanionAcquire(DB, 98727, A_CUSTOM, 4)

	-- Heart of the Aspects -- 110051
	mount = AddMount(110051, V.CATA, Q.EPIC) -- Item: 78924
	--AddMountFlags(110051, F_ALLIANCE, F_HORDE, F_STORE, F_BOP)
	--self:AddCompanionAcquire(DB, 110051, A_CUSTOM, 4)

-- QUEST
	-- Reins of the Crimson Deathcharger - 73313
	mount = AddMount(73313, V.WOTLK, Q.EPIC) -- Item: 52200
	--AddMountFlags(73313, F_ALLIANCE, F_HORDE, F_QUEST, F_BOE)
	--self:AddCompanionAcquire(DB, 73313, A_QUEST, 24915)

-- CATACLYSM ADDED
	-- Abyssal Seahorse -- 75207
	mount = AddMount(75207, V.CATA, Q.RARE) -- Item: 54465
	--AddMountFlags(75207, F_ALLIANCE, F_HORDE, F_QUEST, F_BOP)
	--self:AddCompanionAcquire(DB, 75207, A_QUEST, 25371)

	-- Fossilized Raptor -- 84751
	mount = AddMount(84751, V.CATA, Q.EPIC) -- Item: 60954
	--AddMountFlags(84751, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	--self:AddCompanionAcquire(DB, 84751, A_CUSTOM, 38)

	-- Brown Riding Camel -- 88748  -- NNEED TO ADD THE NEW FACTION REPUTATION SHIT
	mount = AddMount(88748, V.CATA, Q.EPIC) -- Item: 63044
	--AddMountFlags(88748, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 88748, A_VENDOR, 48617)

	-- Drake of the West Wind -- 88741
	mount = AddMount(88741, V.CATA, Q.EPIC) -- Item: 65356
	--AddMountFlags(88741, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 88741, A_REPUTATION, 1178, EXALTED, 48531, A_REPUTATION, 1177, EXALTED, 47328)

	-- Tan Riding Camel -- 88749 -- NNEED TO ADD THE NEW FACTION REPUTATION SHIT
	mount = AddMount(88749, V.CATA, Q.EPIC) -- Item: 63045
	--AddMountFlags(88749, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 88749, A_VENDOR, 48617)

	-- Grey Riding Camel -- 88750
	mount = AddMount(88750, V.CATA, Q.EPIC) -- Item: 63046
	--AddMountFlags(88750, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 88750, A_MOB,  50245)

	-- Drake of the South Wind -- 88744
	mount = AddMount(88744, V.CATA, Q.EPIC) -- Item: 63041
	--AddMountFlags(88744, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 88744, A_MOB, 46753)

	-- Drake of the North Wind -- 88742
	mount = AddMount(88742, V.CATA, Q.EPIC) -- Item: 63040
	--AddMountFlags(88742, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 88742, A_MOB, 43873)

	-- Vitreous Stone Drake -- 88746
	mount = AddMount(88746, V.CATA, Q.EPIC) -- Item: 63043
	--AddMountFlags(88746, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 88746, A_MOB, 43214)

	-- Phosphorescent Stone Drake -- 88718
	mount = AddMount(88718, V.CATA, Q.EPIC) -- Item: 63042
	--AddMountFlags(88718, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 88718, A_MOB, 50062)

	-- Dark Phoenix -- 88990
	mount = AddMount(88990, V.CATA, Q.EPIC) -- Item: 63125
	--AddMountFlags(88990, F_ALLIANCE, F_HORDE, F_VENDOR, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 88990, A_ACHIEVEMENT, 4988)

	-- Ultramarine Qiraji Battle Tank -- 92155
	mount = AddMount(92155, V.CATA, Q.EPIC) -- Item: 64883
	--AddMountFlags(92155, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	--self:AddCompanionAcquire(DB, 92155, A_CUSTOM, 42)

	-- Volcanic Stone Drake -- 88331
	mount = AddMount(88331, V.CATA, Q.EPIC) -- Item: 62900
	--AddMountFlags(88331, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 88331, A_ACHIEVEMENT, 4845)

	-- Sandstone Drake -- 93326
	mount = AddMount(93326, V.CATA, Q.EPIC) -- Item: 65891
	--AddMountFlags(93326, F_ALLIANCE, F_HORDE, F_CRAFT, F_BOP)
	--self:AddCompanionAcquire(DB, 93326, A_PROFESSION, 51304, 93328)

	-- Drake of the East Wind -- 88335
	mount = AddMount(88335, V.CATA, Q.EPIC) -- Item: 62901
	--AddMountFlags(88335, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 88335, A_ACHIEVEMENT, 4853)

	-- Armored Razzashi Raptor -- 96491
	mount = AddMount(96491, V.CATA, Q.EPIC) -- Item: 68823
	--AddMountFlags(96491, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 96491, A_MOB, 52151)

	-- Swift Zulian Panther -- 96499
	mount = AddMount(96499, V.CATA, Q.EPIC) -- Item: 68824
	--AddMountFlags(96499, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 96499, A_MOB, 52059)

	-- Amani Battle Bear -- 98204
	mount = AddMount(98204, V.CATA, Q.EPIC) -- Item: 69747
	--AddMountFlags(98204, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 98204, A_CUSTOM, 45)

	-- Subdued Seahorse (Reins of Posedius) -- 98718
	mount = AddMount(98718, V.CATA, Q.EPIC) -- Item: 67151
	--AddMountFlags(98718, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOE)
	--self:AddCompanionAcquire(DB, 98718, A_MOB, 50005)

	-- Pureblood Fire Hawk -- 97493
	mount = AddMount(97493, V.CATA, Q.EPIC) -- Item: 69224
	--AddMountFlags(97493, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 97493, A_MOB, 52409)

	-- Flameward Hippogryph -- 97359
	mount = AddMount(97359, V.CATA, Q.EPIC) -- Item: 69213
	--AddMountFlags(97359, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 97359, A_ACHIEVEMENT, 5866)

	-- Corrupted Fire Hawk -- 97560
	mount = AddMount(97560, V.CATA, Q.EPIC) -- Item: 69230
	--AddMountFlags(97560, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 97560, A_ACHIEVEMENT, 5828)

	-- Flametalon of Alysrazor -- 101542
	mount = AddMount(101542, V.CATA, Q.EPIC) -- Item: 71665
	--AddMountFlags(101542, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 101542, A_MOB, 52530)

	-- Vicious Gladiator's Twilight Drake -- 101282
	mount = AddMount(101282, V.CATA, Q.EPIC) -- Item: 71339
	--AddMountFlags(101282, F_ALLIANCE, F_HORDE, F_REMOVED, F_PVP, F_BOP)
	--self:AddCompanionAcquire(DB, 101282, A_CUSTOM, 48)

	-- Tyrael's Charger -- 107203
	mount = AddMount(107203, V.CATA, Q.EPIC) -- Item: 76755
	--AddMountFlags(107203, F_ALLIANCE, F_HORDE, F_SPEC_EVENT, F_BOP)
	--self:AddCompanionAcquire(DB, 107203, A_CUSTOM, 49)

	-- Swift Shorestrider -- 101573
	mount = AddMount(101573, V.CATA, Q.EPIC) -- Item: 71718
	--AddMountFlags(101573, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 101573, A_CUSTOM, 1)

	-- Darkmoon Dancing Bear -- 103081
	mount = AddMount(103081, V.CATA, Q.EPIC) -- Item: 73766
	--AddMountFlags(103081, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	--self:AddCompanionAcquire(DB, 103081, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Swift Forest Strider -- 102346
	mount = AddMount(102346, V.CATA, Q.EPIC) -- Item: 72140
	--AddMountFlags(102346, F_ALLIANCE, F_HORDE, F_SEASONAL, F_BOP)
	--self:AddCompanionAcquire(DB, 102346, A_SEASONAL, 3, A_VENDOR, 14846)

	-- Amani Dragonhawk -- 96503
	mount = AddMount(96503, V.CATA, Q.EPIC) -- Item: 68825
	--AddMountFlags(96503, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 96503,  A_CUSTOM, 1)

	-- Blazing Drake -- 107842
	mount = AddMount(107842, V.CATA, Q.EPIC) -- Item: 77067
	--AddMountFlags(107842, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 107842, A_MOB, 56173, A_CUSTOM, 51)

	-- Experiment 12-B -- 110039
	mount = AddMount(110039, V.CATA, Q.EPIC) -- Item: 78919
	--AddMountFlags(110039, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 110039, A_MOB, 55294)

	-- Life-Binder's Handmaiden -- 107845
	mount = AddMount(107845, V.CATA, Q.EPIC) -- Item: 77069
	--AddMountFlags(107845, F_ALLIANCE, F_HORDE, F_MOB_DROP, F_BOP)
	--self:AddCompanionAcquire(DB, 107845, A_MOB, 56173, A_CUSTOM, 50)

	-- Ruthless Gladiator's Twilight Drake -- 101821
	mount = AddMount(101821, V.CATA, Q.EPIC) -- Item: 71954
	--AddMountFlags(101821, F_ALLIANCE, F_HORDE, F_BOP, F_REMOVED, F_PVP)
	--self:AddCompanionAcquire(DB, 101821, A_CUSTOM, 52)

	-- Twilight Harbinger -- 107844
	mount = AddMount(107844, V.CATA, Q.EPIC) -- Item: 77068
	--AddMountFlags(107844, F_ALLIANCE, F_HORDE, F_ACHIEVEMENT, F_BOP)
	--self:AddCompanionAcquire(DB, 107844, A_ACHIEVEMENT, 6169)

	-- Swift Lovebird -- 102350
	mount = AddMount(102350, V.CATA, Q.EPIC) -- Item: 72146
	--AddMountFlags(102350, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOE)
	--self:AddCompanionAcquire(DB, 102350, A_SEASONAL, 5, A_CUSTOM, 61)

	-- Swift Springstrider -- 102349
	mount = AddMount(102349, V.CATA, Q.EPIC) -- Item: 72145
	--AddMountFlags(102349, F_ALLIANCE, F_HORDE, F_SEASONAL, F_VENDOR, F_BOP)
	--self:AddCompanionAcquire(DB, 102349, A_SEASONAL, 9, A_CUSTOM, 64)

	-- Imperial Quilen -- 124659
	mount = AddMount(124659, V.CATA, Q.EPIC) -- Item: 85870
	--AddMountFlags(124659, F_ALLIANCE, F_HORDE, F_TCG, F_BOP) -- its not tcg, apparently this function fails on using the F_COLLECTORS filter flag, prevents scan
	--self:AddCompanionAcquire(DB, 124659, A_CUSTOM, 68)

	-- White Riding Camel
	mount = AddMount(102488, V.CATA, Q.EPIC) -- Item: 72575
	--AddMountFlags(102488, F_ALLIANCE, F_HORDE, F_TCG, F_BOE)
	--self:AddCompanionAcquire(DB, 102488, A_CUSTOM, 1)


--------------------------------------------------------------------------------
-- MOP INTRO'D MOUNTS!!




-- Amber Scorpion
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Ashen Pandaren Phoenix
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Astral Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Azure Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Azure Riding Crane -- 127174
-- mount = AddMount(127174, V.MOP, Q.EPIC)
-- AddMountFlags(127174, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
-- self:AddCompanionAcquire(DB, 127174, A_REPUTATION, 1269, EXALTED, 59908)


-- Azure Water Strider
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Black Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Black Riding Goat
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Blonde Riding Yak -- 127220
-- mount = AddMount(127220, V.MOP, Q.EPIC)
-- AddMountFlags(127220, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
-- self:AddCompanionAcquire(DB, 127220, A_VENDOR, 64518)

-- Blue Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Blue Shado-Pan Riding Tiger
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Brown Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Brown Riding Goat
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Cataclysmic Gladiator's Twilight Drake
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Crimson Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Crimson Pandaren Phoenix
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Crimson Water Strider
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Depleted-Kyparium Rocket
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Emerald Pandaren Phoenix
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Geosynchronous World Spinner
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Golden Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Golden Riding Crane -- -127176
-- mount = AddMount(127176, V.MOP, Q.EPIC)
-- AddMountFlags(127176, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
-- self:AddCompanionAcquire(DB, 127176, A_REPUTATION, 1269, EXALTED, 59908)

-- Golden Water Strider
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Grand Expedition Yak -- 122708
-- mount = AddMount(122708, V.MOP, Q.EPIC)
-- AddMountFlags(122708, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
-- self:AddCompanionAcquire(DB, 122708, A_VENDOR, 64518)

-- Great Black Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Great Blue Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Great Brown Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Great Green Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Great Purple Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Great Red Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Green Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Green Shado-Pan Riding Tiger
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Grey Riding Yak -- 127216
-- mount = AddMount(127216, V.MOP, Q.EPIC)
-- AddMountFlags(127216, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
-- self:AddCompanionAcquire(DB, 127216, A_VENDOR, 64518)

-- Heavenly Azure Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Heavenly Crimson Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Heavenly Golden Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Heavenly Jade Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Heavenly Onyx Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Jade Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Jade Panther
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Jade Water Strider
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Jeweled Onyx Panther
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Onyx Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Orange Water Strider
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Pandaren Kite
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Pandaren Kite
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Purple Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Red Dragon Turtle
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

	-- Red Flying Cloud -- 130092
	mount = AddMount(130092, V.MOP, Q.RARE)
	mount:SetItemID(89363)
	mount:AddFilters(F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOP, F.LOREWALKERS)
	mount:AddRepVendor(FAC.LOREWALKERS, REP.EXALTED, 64605)

-- Red Shado-Pan Riding Tiger
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Regal Riding Crane -- 127177
-- mount = AddMount(127177, V.MOP, Q.EPIC)
-- AddMountFlags(127177, F_ALLIANCE, F_HORDE, F_VENDOR, F_BOP)
-- self:AddCompanionAcquire(DB, 127177, A_REPUTATION, 1269, EXALTED, 59908)

-- Ruby Panther
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Sapphire Panther
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Son of Galleon
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Sunstone Panther
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Thundering August Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Thundering Jade Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Thundering Ruby Cloud Serpent
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Violet Pandaren Phoenix
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- White Riding Goat
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

----------------------------------------------------------------------------------------------------

	-- Jade Cloud Serpent -- 113199
	mount = AddMount(113199, V.MOP, Q.EPIC)

	-- Green Dragon Turtle -- 120395
	mount = AddMount(120395, V.MOP, Q.EPIC)

	-- Great Red Dragon Turtle -- 120822
	mount = AddMount(120822, V.MOP, Q.EPIC)

	-- Azure Cloud Serpent -- 123992
	mount = AddMount(123992, V.MOP, Q.EPIC)

	-- Golden Cloud Serpent -- 123993
	mount = AddMount(123993, V.MOP, Q.EPIC)

	-- Grey Riding Yak -- 127216
	mount = AddMount(127216, V.MOP, Q.EPIC)

	-- Blonde Riding Yak -- 127220
	mount = AddMount(127220, V.MOP, Q.EPIC)

	-- Black Dragon Turtle -- 127286
	mount = AddMount(127286, V.MOP, Q.EPIC)

	-- Blue Dragon Turtle -- 127287
	mount = AddMount(127287, V.MOP, Q.EPIC)

	-- Brown Dragon Turtle -- 127288
	mount = AddMount(127288, V.MOP, Q.EPIC)

	-- Purple Dragon Turtle -- 127289
	mount = AddMount(127289, V.MOP, Q.EPIC)

	-- Red Dragon Turtle -- 127290
	mount = AddMount(127290, V.MOP, Q.EPIC)

	-- Great Green Dragon Turtle -- 127293
	mount = AddMount(127293, V.MOP, Q.EPIC)

	-- Great Black Dragon Turtle -- 127295
	mount = AddMount(127295, V.MOP, Q.EPIC)

	-- Great Blue Dragon Turtle -- 127302
	mount = AddMount(127302, V.MOP, Q.EPIC)

	-- Great Brown Dragon Turtle -- 127308
	mount = AddMount(127308, V.MOP, Q.EPIC)

	-- Great Purple Dragon Turtle -- 127310
	mount = AddMount(127310, V.MOP, Q.EPIC)

	self.InitMounts = nil
end



--[[
Apparentely not in game yet!

-- White Riding Yak
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Brown Riding Yak
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)


-- Black Riding Yak
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Albino Riding Crane
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Crimson Riding Crane
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)

-- Jungle Riding Crane
-- mount = AddMount(, V.MOP, )
-- AddMountFlags(, F_ALLIANCE, F_HORDE, )
-- self:AddCompanionAcquire(DB,)





-----------------------------]]
