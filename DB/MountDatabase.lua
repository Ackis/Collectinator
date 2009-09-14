--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

165 found from data mining.
0 ignored.
0 WotLK ignored.

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:AddCompanion(MountDB, SpellID, Item ID, Rarity, Companion Type)

************************************************************************

]]--

local MODNAME = "Collectinator"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

-------------------------------------------------------------------------------
-- Item "rarity"
-------------------------------------------------------------------------------
local R_COMMON, R_UNCOMMON, R_RARE, R_EPIC, R_LEGENDARY, R_ARTIFACT = 1, 2, 3, 4, 5, 6

-------------------------------------------------------------------------------
-- Origin
-------------------------------------------------------------------------------
local GAME_ORIG, GAME_TBC, GAME_WOTLK = 0, 1, 2

-------------------------------------------------------------------------------
-- Filter flags
-------------------------------------------------------------------------------
local F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_UNUSED, F_INSTANCE, F_RAID, F_SEASONAL, F_WORLD_DROP, F_MOB_DROP = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
local F_TCG, F_SPEC_EVENT, F_COLLECTORS, F_REMOVED, F_ACHIEVEMENT, F_PVP = 11, 12, 13, 14, 15, 16
local F_BOE, F_BOP, F_BOA = 20, 21, 22
local F_ALCH, F_BS, F_COOKING, F_ENG, F_FIRST_AID, F_INSC, F_JC, F_LW, F_SMELT, F_TAILOR, F_FISHING = 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36

-------------------------------------------------------------------------------
-- Acquire types
-------------------------------------------------------------------------------
local A_VENDOR, A_QUEST, A_CRAFTED, A_MOB, A_SEASONAL, A_REPUTATION, A_WORLD_DROP, A_CUSTOM, A_ACHIEVEMENT = 1, 2, 3, 4, 5, 6, 7, 8, 9

local initialized = false

function addon:MakeMountTable(MountDB)

	if (initialized) then
		return
	end

	initialized = true

	-------------------------------------------------------------------------------
	-- Counter and wrapper function
	-------------------------------------------------------------------------------
	local num_mounts = 0

	local function AddMount(SpellID, MountItemID, Rarity, Game)
		num_mounts = num_mounts + 1
		addon:AddCompanion(MountDB, "MOUNT", SpellID, MountItemID, Rarity, Game)
	end

	-- Brown Horse Bridle - 458
	AddMount(458, 5656, 3, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,458,1,3,16)
	--self:AddCompanionAcquire(MountDB,458,1,384,1,1460,1,2357,1,4885)

	-- Black Stallion Bridle - 470
	self:AddMount(470, 2411, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,470,1,3,16)
	--self:AddCompanionAcquire(MountDB,470,1,1460)

	-- Pinto Bridle - 472
	self:AddMount(472, 2414, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,472,1,3,16)
	--self:AddCompanionAcquire(MountDB,472,1,384,1,1460,1,2357,1,4885)

	-- Horn of the Timber Wolf - 580
	self:AddMount(580, 1132, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,580,2,3,16)
	--self:AddCompanionAcquire(MountDB,580,1,3362)

	-- Chestnut Mare Bridle - 6648
	self:AddMount(6648, 5655, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,6648,1,3,16)
	--self:AddCompanionAcquire(MountDB,6648,1,384,1,1460,1,2357,1,4885)

	-- Horn of the Dire Wolf - 6653
	self:AddMount(6653, 5665, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,6653,2,3,16)
	--self:AddCompanionAcquire(MountDB,6653,1,3362)

	-- Horn of the Brown Wolf - 6654
	self:AddMount(6654, 5668, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,6654,2,3,16)
	--self:AddCompanionAcquire(MountDB,6654,1,3362)

	-- Gray Ram - 6777
	self:AddMount(6777, 5864, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,6777,1,3,16)
	--self:AddCompanionAcquire(MountDB,6777,1,1261)

	-- White Ram - 6898
	self:AddMount(6898, 5873, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,6898,1,3,16)
	--self:AddCompanionAcquire(MountDB,6898,1,1261)

	-- Brown Ram - 6899
	self:AddMount(6899, 5872, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,6899,1,3,16)
	--self:AddCompanionAcquire(MountDB,6899,1,1261)

	-- Reins of the Striped Frostsaber - 8394
	self:AddMount(8394, 8631, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,8394,1,3,16)
	--self:AddCompanionAcquire(MountDB,8394,1,4730)

	-- Whistle of the Emerald Raptor - 8395
	self:AddMount(8395, 8588, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,8395,2,3,16)
	--self:AddCompanionAcquire(MountDB,8395,1,7952)

	-- Reins of the Spotted Frostsaber - 10789
	self:AddMount(10789, 8632, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,10789,1,3,16)
	--self:AddCompanionAcquire(MountDB,10789,1,4730)

	-- Reins of the Striped Nightsaber - 10793
	self:AddMount(10793, 8629, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,10793,1,3,16)
	--self:AddCompanionAcquire(MountDB,10793,1,4730)

	-- Old Whistle of the Ivory Raptor - 10795
	self:AddMount(10795, 8589, 1, GAME_ORIG)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	self:AddMount(10796, 8591, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,10796,2,3,16)
	--self:AddCompanionAcquire(MountDB,10796,1,7952)

	-- Whistle of the Violet Raptor - 10799
	self:AddMount(10799, 8592, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,10799,2,3,16)
	--self:AddCompanionAcquire(MountDB,10799,1,7952)

	-- Red Mechanostrider - 10873
	self:AddMount(10873, 8563, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,10873,1,3,16)
	--self:AddCompanionAcquire(MountDB,10873,1,7955)

	-- Blue Mechanostrider - 10969
	self:AddMount(10969, 8595, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,10969,1,3,16)
	--self:AddCompanionAcquire(MountDB,10969,1,7955)

	-- White Mechanostrider Mod B - 15779
	self:AddMount(15779, 13326, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,15779,16)
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	self:AddMount(16055, 12303, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16055,16)
	-- No acquire information

	-- Reins of the Ancient Frostsaber - 16056
	self:AddMount(16056, 12302, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16056,16)
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	self:AddMount(16080, 12330, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16080,16)
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	self:AddMount(16081, 12351, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16081,16)
	-- No acquire information

	-- Palomino Bridle - 16082
	self:AddMount(16082, 12354, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16082,16)
	-- No acquire information

	-- White Stallion Bridle - 16083
	self:AddMount(16083, 12353, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16083,16)
	-- No acquire information

	-- Whistle of the Mottled Red Raptor - 16084
	self:AddMount(16084, 8586, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,16084,16)
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	self:AddMount(17229, 13086, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17229,1,3,16)
	--self:AddCompanionAcquire(MountDB,17229,1,10618)

	-- Whistle of the Ivory Raptor - 17450
	self:AddMount(17450, 13317, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17450,16)
	-- No acquire information

	-- Green Mechanostrider - 17453
	self:AddMount(17453, 13321, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17453,1,3,16)
	--self:AddCompanionAcquire(MountDB,17453,1,7955)

	-- Unpainted Mechanostrider - 17454
	self:AddMount(17454, 13322, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17454,1,3,16)
	--self:AddCompanionAcquire(MountDB,17454,1,7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	self:AddMount(17459, 13327, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17459,16)
	-- No acquire information

	-- Frost Ram - 17460
	self:AddMount(17460, 13329, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17460,16)
	-- No acquire information

	-- Black Ram - 17461
	self:AddMount(17461, 13328, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17461,16)
	-- No acquire information

	-- Red Skeletal Horse - 17462
	self:AddMount(17462, 13331, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17462,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,17462,1,4731)

	-- Blue Skeletal Horse - 17463
	self:AddMount(17463, 13332, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17463,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,17463,1,4731)

	-- Brown Skeletal Horse - 17464
	self:AddMount(17464, 13333, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17464,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,17464,1,4731)

	-- Green Skeletal Warhorse - 17465
	self:AddMount(17465, 13334, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17465,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,17465,1,4731)

	-- Deathcharger's Reins - 17481
	self:AddMount(17481, 13335, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,17481,1,2,16)
	--self:AddCompanionAcquire(MountDB,17481,4,10440)

	-- Gray Kodo - 18989
	self:AddMount(18989, 15277, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,18989,2,3,16)
	--self:AddCompanionAcquire(MountDB,18989,1,3685)

	-- Brown Kodo - 18990
	self:AddMount(18990, 15290, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,18990,2,3,16)
	--self:AddCompanionAcquire(MountDB,18990,1,3685)

	-- Green Kodo - 18991
	self:AddMount(18991, 15292, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,18991,16)
	-- No acquire information

	-- Teal Kodo - 18992
	self:AddMount(18992, 15293, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,18992,16)
	-- No acquire information

	-- Black War Steed Bridle - 22717
	self:AddMount(22717, 18241, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22717,16)
	-- No acquire information

	-- Black War Kodo - 22718
	self:AddMount(22718, 18247, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22718,16)
	-- No acquire information

	-- Black Battlestrider - 22719
	self:AddMount(22719, 18243, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22719,16)
	-- No acquire information

	-- Black War Ram - 22720
	self:AddMount(22720, 18244, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22720,16)
	-- No acquire information

	-- Whistle of the Black War Raptor - 22721
	self:AddMount(22721, 18246, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22721,16)
	-- No acquire information

	-- Red Skeletal Warhorse - 22722
	self:AddMount(22722, 18248, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22722,16)
	-- No acquire information

	-- Reins of the Black War Tiger - 22723
	self:AddMount(22723, 18242, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22723,16)
	-- No acquire information

	-- Horn of the Black War Wolf - 22724
	self:AddMount(22724, 18245, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,22724,16)
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	self:AddMount(23219, 18767, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23219,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23219,1,4730,2,7671,2,7672,2,27717)

	-- Reins of the Swift Frostsaber - 23221
	self:AddMount(23221, 18766, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23221,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23221,1,4730,2,7671,2,7672)

	-- Swift Yellow Mechanostrider - 23222
	self:AddMount(23222, 18774, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23222,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23222,1,7955,2,7675,2,7676,2,27717)

	-- Swift White Mechanostrider - 23223
	self:AddMount(23223, 18773, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23223,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23223,1,7955,2,7675,2,7676)

	-- Swift Green Mechanostrider - 23225
	self:AddMount(23225, 18772, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23225,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23225,1,7955,2,7675,2,7676)

	-- Swift Palomino - 23227
	self:AddMount(23227, 18776, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23227,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23227,1,384,1,2357,1,4885,2,7677,2,7678,2,27717)

	-- Swift White Steed - 23228
	self:AddMount(23228, 18778, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23228,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23228,1,384,1,2357,1,4885,2,7677,2,7678)

	-- Swift Brown Steed - 23229
	self:AddMount(23229, 18777, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23229,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23229,1,384,1,2357,1,4885,2,7677,2,7678)

	-- Swift Brown Ram - 23238
	self:AddMount(23238, 18786, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23238,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23238,1,1261,2,7673,2,7674)

	-- Swift Gray Ram - 23239
	self:AddMount(23239, 18787, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23239,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23239,1,1261,2,7673,2,7674,2,27717)

	-- Swift White Ram - 23240
	self:AddMount(23240, 18785, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23240,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23240,1,1261,2,7673,2,7674)

	-- Swift Blue Raptor - 23241
	self:AddMount(23241, 18788, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23241,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23241,1,7952,2,7664,2,7665,2,27716)

	-- Swift Olive Raptor - 23242
	self:AddMount(23242, 18789, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23242,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23242,1,7952,2,7664,2,7665)

	-- Swift Orange Raptor - 23243
	self:AddMount(23243, 18790, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23243,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23243,1,7952,2,7664,2,7665)

	-- Purple Skeletal Warhorse - 23246
	self:AddMount(23246, 18791, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23246,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23246,1,4731,2,27716)

	-- Great White Kodo - 23247
	self:AddMount(23247, 18793, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23247,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23247,1,3685,2,7662,2,7663)

	-- Great Gray Kodo - 23248
	self:AddMount(23248, 18795, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23248,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23248,1,3685,2,7662,2,7663)

	-- Great Brown Kodo - 23249
	self:AddMount(23249, 18794, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23249,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23249,1,3685,2,7662,2,7663,2,27716)

	-- Horn of the Swift Brown Wolf - 23250
	self:AddMount(23250, 18796, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23250,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23250,1,3362,2,7660,2,7661)

	-- Horn of the Swift Timber Wolf - 23251
	self:AddMount(23251, 18797, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23251,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23251,1,3362,2,7660,2,7661)

	-- Horn of the Swift Gray Wolf - 23252
	self:AddMount(23252, 18798, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23252,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,23252,1,3362,2,7660,2,7661,2,27716)

	-- Reins of the Swift Stormsaber - 23338
	self:AddMount(23338, 18902, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23338,1,3,4,16)
	--self:AddCompanionAcquire(MountDB,23338,1,4730,2,7671,2,7672)

	-- Horn of the Frostwolf Howler - 23509
	self:AddMount(23509, 19029, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23509,2,3,16)
	--self:AddCompanionAcquire(MountDB,23509,1,13218,1,13219)

	-- Stormpike Battle Charger - 23510
	self:AddMount(23510, 19030, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,23510,1,3,16)
	--self:AddCompanionAcquire(MountDB,23510,1,13216,1,13217)

	-- Swift Razzashi Raptor - 24242
	self:AddMount(24242, 19872, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,24242,1,2,7,16)
	--self:AddCompanionAcquire(MountDB,24242,4,11382)

	-- Swift Zulian Tiger - 24252
	self:AddMount(24252, 19902, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,24252,1,2,7,16)
	--self:AddCompanionAcquire(MountDB,24252,4,14509)

	-- Blue Qiraji Battle Tank -- 25953
	self:AddMount(25953, 21218, 1, GAME_ORIG)
	----self:AddCompanionFlags(MountDB,
	----self:AddCompanionAcquire(MountDB,

	-- Red Qiraji Battle Tank -- 26054
	self:AddMount(26054, 21321, 1, GAME_ORIG)
	----self:AddCompanionFlags(MountDB,
	----self:AddCompanionAcquire(MountDB,

	-- Yellow Qiraji Battle Tank -- 26055
	self:AddMount(26055, 21324, 1, GAME_ORIG)
	----self:AddCompanionFlags(MountDB,
	----self:AddCompanionAcquire(MountDB,

	-- Green Qiraji Battle Tank -- 26056
	self:AddMount(26056, 21323, 1, GAME_ORIG)
	----self:AddCompanionFlags(MountDB,
	----self:AddCompanionAcquire(MountDB,

	-- Black Qiraji Resonating Crystal - 26656
	self:AddMount(26656, 21176, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,26656,4,16)
	--self:AddCompanionAcquire(MountDB,26656,2,8743)

	-- Riding Tutle - 30174
	self:AddMount(30174, 23720, 1, GAME_ORIG)
	--self:AddCompanionFlags(MountDB,30174,21) 

	-- Golden Gryphon - 32235
	self:AddMount(32235, 25470, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32235,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32235,1,20510)

	-- Ebon Gryphon - 32239
	self:AddMount(32239, 25471, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32239,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32239,1,20510)

	-- Snowy Gryphon - 32240
	self:AddMount(32240, 25472, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32240,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32240,1,20510)

	-- Swift Blue Gryphon - 32242
	self:AddMount(32242, 25473, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32242,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32242,1,20510)

	-- Tawny Wind Rider - 32243
	self:AddMount(32243, 25474, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32243,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32243,1,20494)

	-- Blue Wind Rider - 32244
	self:AddMount(32244, 25475, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32244,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32244,1,20494)

	-- Green Wind Rider - 32245
	self:AddMount(32245, 25476, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32245,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32245,1,20494)

	-- Swift Red Wind Rider - 32246
	self:AddMount(32246, 25477, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32246,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32246,1,20494)

	-- Swift Red Gryphon - 32289
	self:AddMount(32289, 25527, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32289,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32289,1,20510)

	-- Swift Green Gryphon - 32290
	self:AddMount(32290, 25528, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32290,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32290,1,20510)

	-- Swift Purple Gryphon - 32292
	self:AddMount(32292, 25529, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32292,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32292,1,20510)

	-- Swift Green Wind Rider - 32295
	self:AddMount(32295, 25531, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32295,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32295,1,20494)

	-- Swift Yellow Wind Rider - 32296
	self:AddMount(32296, 25532, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32296,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32296,1,20494)

	-- Swift Purple Wind Rider - 32297
	self:AddMount(32297, 25533, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,32297,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,32297,1,20494)

	-- Swift Pink Hawkstrider - 33660
	self:AddMount(33660, 28936, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,33660,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,33660,1,16264,2,27716)

	-- Brown Elekk - 34406
	self:AddMount(34406, 28481, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34406,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,34406,1,17584)

	-- Reins of the Dark War Talbuk - 34790
	self:AddMount(34790, 29228, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34790,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,34790,1,21474,1,21485)

	-- Red Hawkstrider - 34795
	self:AddMount(34795, 28927, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34795,2,3,16)
	--self:AddCompanionAcquire(MountDB,34795,1,16264)

	-- Reins of the Cobalt War Talbuk - 34896
	self:AddMount(34896, 29102, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34896,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,34896,1,20241)

	-- Reins of the White War Talbuk - 34897
	self:AddMount(34897, 29103, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34897,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,34897,1,20241)

	-- Reins of the Silver War Talbuk - 34898
	self:AddMount(34898, 29104, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34898,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,34898,1,20241)

	-- Reins of the Tan War Talbuk - 34899
	self:AddMount(34899, 29105, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,34899,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,34899,1,20241)

	-- Purple Hawkstrider - 35018
	self:AddMount(35018, 29222, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35018,2,3,16)
	--self:AddCompanionAcquire(MountDB,35018,1,16264)

	-- Blue Hawkstrider - 35020
	self:AddMount(35020, 29220, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35020,2,3,16)
	--self:AddCompanionAcquire(MountDB,35020,1,16264)

	-- Black Hawkstrider - 35022
	self:AddMount(35022, 29221, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35022,2,3,16)
	--self:AddCompanionAcquire(MountDB,35022,1,16264)

	-- Swift Green Hawkstrider - 35025
	self:AddMount(35025, 29223, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35025,2,3,16)
	--self:AddCompanionAcquire(MountDB,35025,1,16264)

	-- Swift Purple Hawkstrider - 35027
	self:AddMount(35027, 29224, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35027,2,3,16)
	--self:AddCompanionAcquire(MountDB,35027,1,16264)

	-- Swift Warstrider - 35028
	self:AddMount(35028, 34129, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35028,16)
	-- No acquire information

	-- Gray Elekk - 35710
	self:AddMount(35710, 29744, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35710,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,35710,1,17584)

	-- Purple Elekk - 35711
	self:AddMount(35711, 29743, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35711,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,35711,1,17584)

	-- Great Green Elekk - 35712
	self:AddMount(35712, 29746, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35712,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,35712,1,17584,2,27717)

	-- Great Blue Elekk - 35713
	self:AddMount(35713, 29745, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35713,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,35713,1,17584)

	-- Great Purple Elekk - 35714
	self:AddMount(35714, 29747, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,35714,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,35714,1,17584)

	-- Fiery Warhorse's Reins - 36702
	self:AddMount(36702, 30480, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,36702,1,2,7,16)
	--self:AddCompanionAcquire(MountDB,36702,4,16152)

	-- Swift Nether Drake - 37015
	self:AddMount(37015, 30609, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,37015,16)
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	self:AddMount(39315, 31829, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39315,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39315,1,20241)

	-- Reins of the Dark Riding Talbuk - 39316
	self:AddMount(39316, 28915, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39316,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39316,1,21474,1,21485)

	-- Reins of the Silver Riding Talbuk - 39317
	self:AddMount(39317, 31831, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39317,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39317,1,20241)

	-- Reins of the Tan Riding Talbuk - 39318
	self:AddMount(39318, 31833, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39318,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39318,1,20241)

	-- Reins of the White Riding Talbuk - 39319
	self:AddMount(39319, 31835, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39319,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39319,1,20241)

	-- Green Riding Nether Ray - 39798
	self:AddMount(39798, 32314, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39798,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39798,1,23367)

	-- Red Riding Nether Ray - 39800
	self:AddMount(39800, 32317, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39800,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39800,1,23367)

	-- Purple Riding Nether Ray - 39801
	self:AddMount(39801, 32316, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39801,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39801,1,23367)

	-- Silver Riding Nether Ray - 39802
	self:AddMount(39802, 32318, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39802,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39802,1,23367)

	-- Blue Riding Nether Ray - 39803
	self:AddMount(39803, 32319, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,39803,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,39803,1,23367)

	-- Ashes of Al'ar - 40192
	self:AddMount(40192, 32458, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,40192,1,2,7,16)
	--self:AddCompanionAcquire(MountDB,40192,4,19622)

	-- Reins of the Raven Lord - 41252
	self:AddMount(41252, 32768, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41252,1,2,6,16)
	--self:AddCompanionAcquire(MountDB,41252,4,23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	self:AddMount(41513, 32857, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41513,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,41513,1,23489,2,11111)

	-- Reins of the Azure Netherwing Drake - 41514
	self:AddMount(41514, 32858, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41514,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,41514,1,23489,2,11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	self:AddMount(41515, 32859, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41515,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,41515,1,23489,2,11109)

	-- Reins of the Purple Netherwing Drake - 41516
	self:AddMount(41516, 32860, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41516,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,41516,1,23489,2,11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	self:AddMount(41517, 32861, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41517,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,41517,1,23489,2,11114)

	-- Reins of the Violet Netherwing Drake - 41518
	self:AddMount(41518, 32862, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,41518,1,2,3,4,16)
	--self:AddCompanionAcquire(MountDB,41518,1,23489,2,11113)

	-- Reins of the Spectral Tiger - 42776
	self:AddMount(42776, 33224, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,42776,16)
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	self:AddMount(42777, 33225, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,42777,16)
	-- No acquire information

	-- Amani War Bear - 43688
	self:AddMount(43688, 33809, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,43688,1,2,4,16)
	--self:AddCompanionAcquire(MountDB,43688,2,27704)

	-- Brewfest Ram - 43899
	self:AddMount(43899, 33976, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,43899,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,43899,1,24468,1,24510)

	-- Swift Brewfest Ram - 43900
	self:AddMount(43900, 33977, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,43900,1,2,3,10,16)
	--self:AddCompanionAcquire(MountDB,43900,1,24468,1,24510,4,23795,4,23872)

	-- Cenarion War Hippogryph - 43927
	self:AddMount(43927, 33999, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,43927,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,43927,1,17904)

	-- Merciless Nether Drake - 44744
	self:AddMount(44744, 34092, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,44744,16)
	-- No acquire information

	-- X-51 Nether-Rocket - 46197
	self:AddMount(46197, 35225, 1, GAME_BC)

	-- X-51 Nether-Rocket X-TREME-- 46199
	self:AddMount(46199, 35226, 1, GAME_BC)

	-- Swift White Hawkstrider - 46628
	self:AddMount(46628, 35513, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,46628,1,2,10,16)
	--self:AddCompanionAcquire(MountDB,46628,4,24664)

	-- The Horseman's Reins - 48025
	self:AddMount(48025, 37012, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,48025,16)
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	self:AddMount(48027, 35906, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,48027,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,48027,1,12783)

	-- Vengeful Nether Drake - 49193
	self:AddMount(49193, 37676, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,49193,16)
	-- No acquire information

	-- Swift Zhevra - 49322
	self:AddMount(49322, 37719, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,49322,16)
	-- No acquire information

	-- Great Brewfest Kodo - 49379
	self:AddMount(49379, 37828, 1, GAME_BC)
	--self:AddCompanionFlags(MountDB,49379,1,2,10,16)
	--self:AddCompanionAcquire(MountDB,49379,4,23795,4,23872)

	-- Big Battle Bear - 51412
	self:AddMount(51412, 38576, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,51412,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,51412,1,17249)

	-- Winged Steed of the Ebon Blade - 54729
	self:AddMount(54729, 40775, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,54729,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,54729,1,29587)

	-- Reins of the White Polar Bear - 54753
	self:AddMount(54753, 43962, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,54753,16)
	-- No acquire information

	-- Brutal Nether Drake - 58615
	self:AddMount(58615, 43516, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,58615,16)
	-- No acquire information

	-- Big Blizzard Bear - 58983
	self:AddMount(58983, 43599, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,58983,16)
	-- No acquire information

	-- Reins of the Azure Drake - 59567
	self:AddMount(59567, 43952, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59567,16)
	-- No acquire information

	-- Reins of the Blue Drake - 59568
	self:AddMount(59568, 43953, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59568,16)
	-- No acquire information

	-- Reins of the Bronze Drake - 59569
	self:AddMount(59569, 43951, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59569,1,2,6,16)
	--self:AddCompanionAcquire(MountDB,59569,4,26532,4,32273)

	-- Reins of the Red Drake - 59570
	self:AddMount(59570, 43955, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59570,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,59570,1,32533)

	-- Reins of the Black War Mammoth - 59785
	self:AddMount(59785, 43956, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59785,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,59785,1,32294)

	-- Reins of the Wooly Mammoth - 59791
	self:AddMount(59791, 44230, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59791,16)
	-- No acquire information

	-- Reins of the Ice Mammoth - 59797
	self:AddMount(59797, 44080, 1, GAME_WOTLK)
	----self:AddCompanionFlags(MountDB,59797,16)
	-- No acquire information

	-- Reins of the Ice Mammoth - 59799
	self:AddMount(59799, 43958, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59799,16)
	-- No acquire information

	-- Reins of the Grand Ice Mammoth - 61469
	self:AddMount(61469, 44086, 1, GAME_WOTLK)
	----self:AddCompanionFlags(MountDB,59799,16)
	-- No acquire information

	-- Reins of the Grand Ice Mammoth - 61470
	self:AddMount(61469, 43961, 1, GAME_WOTLK)
	----self:AddCompanionFlags(MountDB,59799,16)
	-- No acquire information

	-- Reins of the Red Proto-Drake - 59961
	self:AddMount(59961, 44160, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59961,16)
	-- No acquire information

	-- Reins of the Blue Proto-Drake - 59996
	self:AddMount(59996, 44151, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,59996,1,2,10,16)
	--self:AddCompanionAcquire(MountDB,59996,4,26693)

	-- Reins of the Time-Lost Proto-Drake - 60002
	self:AddMount(60002, 44168, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,60002,1,2,10,16)
	--self:AddCompanionAcquire(MountDB,60002,4,32491)

	-- Reins of the Albino Drake - 60025
	self:AddMount(60025, 44178, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,60025,16)
	-- No acquire information

	-- Reins of the Armored Brown Bear - 60114
	self:AddMount(60114, 44225, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,60114,16)
	-- No acquire information

	-- Reins of the Armored Brown Bear - 60116
	self:AddMount(60116, 44225, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,60116,16)
	-- No acquire information

	-- Reins of the Black War Bear - 60118
	self:AddMount(60118, 44226, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,60118,16)
	-- No acquire information

	-- Armored Snowy Gryphon - 61229
	self:AddMount(61229, 44689, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,61229,16)
	-- No acquire information

	-- Armored Blue Wind Rider - 61230
	self:AddMount(61230, 44690, 1, GAME_WOTLK)
	--self:AddCompanionFlags(MountDB,61230,1,2,3,16)
	--self:AddCompanionAcquire(MountDB,61230,1,32216)

	return companioncount

end
