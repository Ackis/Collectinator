--[[
************************************************************************
PetDB.lua
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
local F = private.FILTER_IDS
local A = private.ACQUIRE_TYPES
local Q = private.ITEM_QUALITIES
local REP = private.REP_LEVELS
local FAC = private.FACTION_IDS
local V = private.GAME_VERSIONS
local Z = private.ZONE_NAMES

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------

function addon:InitCritters()
self:Print("Initializing Critters")
	local function AddPet(spell_id, genesis, quality)
		return addon:AddCollectable(spell_id, "CRITTER", genesis, quality)
	end
	local pet

	-- Zergling - 11327
	pet = AddPet(11327, V.ORIG, Q.COMMON)

	-- Clockwork Rocket Bot - 24968
	pet = AddPet(24968, V.TBC, Q.RARE)

	-- Core Hound Pup - 69452
	AddPet(69452, 49646, V.WOTLK, Q.RARE)
--[[
	-- Zipao Tiger (Purple Jade Tiger) - 69539
	AddPet(69539, 49664, Q.RARE, V.WOTLK)

	-- Jade Tiger - 66520
	AddPet(66520, nil, Q.RARE, V.WOTLK)

	-- Onyx Panther - 67527
	AddPet(67527, 48527, Q.RARE, V.WOTLK)

	-- Tiny Red Dragon - 23530
	AddPet(23530, 19054, Q.RARE, V.WOTLK)

	-- Tiny Green Dragon - 23531
	AddPet(23531, 19055, Q.RARE, V.WOTLK)

	-- Golden Pig - 45174
	AddPet(45174, 34518, Q.RARE, V.WOTLK)

--ACHIEVEMENTS
	-- Pilgrim Turkey - 61773
	AddPet(61773, 44810, Q.RARE, V.WOTLK)

	-- Kirin Tor Familiar - 61472
	AddPet(61472, 44738, Q.RARE, V.WOTLK)

	-- Reeking Pet Carrier - 40990
	AddPet(40990, 40653, Q.RARE, V.TBC)

	-- Little Fawn - 61991
	AddPet(61991, 44841, Q.RARE, V.WOTLK)

	-- Perky Pug - 70613
	AddPet(70613, 49912, Q.RARE, V.WOTLK)

	-- Pebble -- 84492
	AddPet(84492, 60869, Q.COMMON, V.CATA)

	-- Armadillo Pup -- 89670
	AddPet(89670, 63398, Q.RARE, V.CATA)

	-- Dark Phoenix Hatchling -- 89039
	AddPet(89039, 63138, Q.RARE, V.CATA)

	-- Nuts' Acorn -- 100970
	AddPet(100970, 71140, Q.RARE, V.CATA)

	-- Celestial Dragon -- 75613
	AddPet(75613, 54810, Q.RARE, V.CATA)

	-- Brilliant Kaliri -- 101424
	AddPet(101424, 71387, Q.COMMON, V.CATA)

	-- Lil' Tarecgosa -- 100576
	AddPet(100576, 71033, Q.COMMON, V.CATA)

--FISHING
	-- Magical Crawdad Box - 33050
	AddPet(33050, 27445, Q.COMMON, V.TBC)

	-- Toothy's Bucket - 43697
	AddPet(43697, 33816, Q.RARE, V.TBC)

	-- Muckbreath's Bucket - 43698
	AddPet(43698, 33818, Q.RARE, V.TBC)

	-- Snarly's Bucket - 46425
	AddPet(46425, 35349, Q.RARE, V.TBC)

	-- Chuck's Bucket - 46426
	AddPet(46426, 35350, Q.RARE, V.TBC)

	-- Giant Sewer Rat - 59250
	AddPet(59250, 43698, Q.RARE, V.WOTLK)

	-- Strand Crawler -- 62561
	AddPet(62561, 44983, Q.RARE, V.WOTLK)

	-- Sea Pony -- 103588
	AddPet(103588, 73953, Q.RARE, V.CATA)

--PLAYERMADE
	-- Mechanical Squirrel Box - 4055
	AddPet(4055, 4401, Q.COMMON, V.ORIG)

	-- Pet Bombling - 15048
	AddPet(15048, 11825, Q.COMMON, V.ORIG)

	-- Lil' Smoky - 15049
	AddPet(15049, 11826, Q.COMMON, V.ORIG)

	-- Lifelike Mechanical Toad - 19772
	AddPet(19772, 15996, Q.COMMON, V.ORIG)

	-- Tranquil Mechanical Yeti - 26010
	AddPet(26010, 21277, Q.COMMON, V.ORIG)

	-- Fossilized Hatchling -- 84752
	AddPet(84752, 60955, Q.RARE, V.CATA)

	-- De-Weaponized Mechanical Companion -- 82173
	AddPet(82173, 60216, Q.RARE, V.CATA)

	-- Elementium Geode -- 93838
	AddPet(93838, 67282, Q.RARE, V.CATA)

	-- Personal World Destroyer -- 81937
	AddPet(81937, 59597, Q.RARE, V.CATA)

	-- Clockwork Gnome -- 90523
	AddPet(90523, 64372, Q.RARE, V.CATA)

	-- Crawling Claw -- 84263
	AddPet(84263, 60847, Q.EPIC, V.CATA)

	-- Enchanted Lantern -- 93836
	AddPet(93836, 67274, Q.RARE, V.CATA)

	-- Magic Lamp -- 93837
	AddPet(93837, 67275, Q.RARE, V.CATA)

	-- Pterrordax Hatchling -- 98571
	AddPet(98571, 69821, Q.RARE, V.CATA)

	-- Voodoo Figurine -- 98587
	AddPet(98587, 69824, Q.RARE, V.CATA)

--WORLD EVENT DROP
	-- Snowman Kit - 26045
	AddPet(26045, 21309, Q.COMMON, V.ORIG)

	-- Jingling Bell - 26529
	AddPet(26529, 21308, Q.COMMON, V.ORIG)

	-- Green Helper Box - 26533
	AddPet(26533, 21301, Q.COMMON, V.ORIG)

	-- Red Helper Box - 26541
	AddPet(26541, 21305, Q.COMMON, V.ORIG)

	-- Lumpy -- 103125
	AddPet(103125, 73797, Q.RARE, V.CATA)

	-- Darkmoon Balloon -- 103076
	AddPet(103076, 73762, Q.RARE, V.CATA)

	-- Darkmoon Cub -- 105122
	AddPet(105122, 74981, Q.RARE, V.CATA)

	-- Darkmoon Monkey -- 101733
	AddPet(101733, 73764, Q.RARE, V.CATA)

	-- Darkmoon Tonk -- 103544
	AddPet(103544, 73903, Q.RARE, V.CATA)

	-- Darkmoon Turtle -- 103074
	AddPet(103074, 73765, Q.RARE, V.CATA)

	-- Darkmoon Zeppelin -- 103549
	AddPet(103549, 73905, Q.RARE, V.CATA)

	-- Truesilver Shafted Arrow - 27570
	AddPet(27570, 22235, Q.COMMON, V.ORIG)

	-- Sinister Squashling - 42609
	AddPet(42609, 33154, Q.RARE, V.TBC)

	-- Clockwork Rocket Bot - 54187
	AddPet(54187, 34425, Q.RARE, V.TBC)

	-- Spring Rabbit - 61725
	AddPet(61725, 44794, Q.RARE, V.WOTLK)

	-- Toxic Wasteling - 71840
	AddPet(71840, 50446, Q.RARE, V.WOTLK)

	-- Ice Chip (Frigid Frostling) - 74932
	AddPet(74932, 53641, Q.RARE, V.WOTLK)

	-- Creepy Crate -- 100684
	AddPet(100684, 71076, Q.COMMON, V.CATA)

	-- Feline Familiar -- 100330
	AddPet(100330, 70908, Q.COMMON, V.CATA)

	-- Turtle Box - 28738
	AddPet(28738, 23002, Q.COMMON, V.ORIG)

	-- Piglet's Collar - 28739
	AddPet(28739, 23007, Q.COMMON, V.ORIG)

	-- Rat Cage - 28740
	AddPet(28740, 23015, Q.COMMON, V.ORIG)

	-- Sleepy Willy - 40613
	AddPet(40613, 32617, Q.RARE, V.TBC)

	-- Egbert's Egg - 40614
	AddPet(40614, 32616, Q.RARE, V.TBC)

	-- Elekk Training Collar - 40634
	AddPet(40634, 32622, Q.RARE, V.TBC)

	-- Curious Wolvar Pup
	AddPet(65382, 46544, Q.RARE, V.WOTLK)

	-- Curious Oracle Hatchling
	AddPet(65381, 46545, Q.RARE, V.WOTLK)

	-- Scooter the Snail -- 93817
	AddPet(93817, 66073, Q.COMMON, V.CATA)

	-- Legs -- 98079
	AddPet(98079, 69648, Q.RARE, V.CATA)

--WORLD EVENT VENDOR
	-- Spirit of Summer - 28871
	AddPet(28871, 23083, Q.RARE, V.ORIG)

	-- Pint-Sized Pink Pachyderm - 44369
	AddPet(44369, 46707, Q.RARE, V.TBC)

	-- Festival Lantern -- 104049
	AddPet(104049, 74611, Q.RARE, V.CATA)

	-- Lunar Lantern -- 104047
	AddPet(104047, 74610, Q.RARE, V.CATA)

--DROP
	-- Parrot Cage (Hyacinth Macaw) - 10682
	AddPet(10682, 8494, Q.EPIC, V.ORIG)

	-- Parrot Cage (Green Wing Macaw) - 10683
	AddPet(10683, 8492, Q.COMMON, V.ORIG)

	-- Cat Carrier (Black Tabby) - 10675
	AddPet(10675, 8491, Q.COMMON, V.ORIG)

	-- Cat Carrier (Siamese) - 10677
	AddPet(10677, 8490, Q.COMMON, V.ORIG)



	-- Dark Whelpling - 10695
	AddPet(10695, 10822, Q.COMMON, V.ORIG)



	-- Azure Whelpling - 10696
	AddPet(10696, 34535, Q.COMMON, V.ORIG)



	-- Tiny Crimson Whelpling - 10697
	AddPet(10697, 8499, Q.COMMON, V.ORIG)



	-- Tiny Emerald Whelpling - 10698
	AddPet(10698, 8498, Q.COMMON, V.ORIG)



	-- Disgusting Oozeling - 25162
	AddPet(25162, 20769, Q.COMMON, V.ORIG)



	-- Captured Firefly - 36034
	AddPet(36034, 29960, Q.COMMON, V.TBC)



	-- Mojo - 43918
	AddPet(43918, 33993, Q.RARE, V.TBC)



	-- Phoenix Hatchling - 46599
	AddPet(46599, 35504, Q.RARE, V.TBC)



	-- Darting Hatchling
	AddPet(67413, 48112, Q.COMMON, V.WOTLK)



	-- Deviate Hatchling
	AddPet(67414, 48114, Q.COMMON, V.WOTLK)



	-- Gundrak Hatchling
	AddPet(67415, 48116, Q.COMMON, V.WOTLK)



	-- Leaping Hatchling
	AddPet(67416, 48118, Q.COMMON, V.WOTLK)



	-- Ravasaur Hatchling
	AddPet(67418, 48122, Q.COMMON, V.WOTLK)



	-- Razormaw Hatchling
	AddPet(67419, 48124, Q.COMMON, V.WOTLK)



	-- Razzashi Hatchling
	AddPet(67420, 48126, Q.COMMON, V.WOTLK)



	-- Mr. Grubbs -- 93739
	AddPet(93739, 66076, Q.COMMON, V.CATA)



	-- Tiny Shale Spider -- 91343
	AddPet(91343, 64494, Q.COMMON, V.CATA)



	-- Fox Kit -- 90637
	AddPet(90637, 64403, Q.RARE, V.CATA)



--QUESTS
	-- Mechanical Chicken - 12243
	AddPet(12243, 10398, Q.COMMON, V.ORIG)



	-- Chicken Egg - 13548
	AddPet(13548, 11110, Q.COMMON, V.ORIG)



	-- Sprite Darter Egg - 15067
	AddPet(15067, 11474, Q.COMMON, V.ORIG)



	-- Worg Carrier - 15999
	AddPet(15999, 12264, Q.RARE, V.ORIG)



	-- Smolderweb Egg - 16450
	AddPet(16450, 68673, Q.RARE, V.CATA)



	-- A Jubling's Tiny Home - 23811
	AddPet(23811, 19450, Q.COMMON, V.ORIG)



	-- Miniwing - 39181
	AddPet(39181, 31760, Q.COMMON, V.TBC)



	-- Wolpertinger's Tankard - 39709
	AddPet(39709, 32233, Q.RARE, V.TBC)



	-- Gold Mini Jouster -- 78685
	AddPet(78685, 65662, Q.COMMON, V.CATA)



	-- Blue Mini Jouster -- 78683
	AddPet(78683, 65661, Q.COMMON, V.CATA)



	-- Withers -- 65046
	AddPet(65046, 46325, Q.COMMON, V.CATA)



	-- Brazie's Sunflower -- 93823
	AddPet(93823, 66067, Q.COMMON, V.CATA)



	-- Tiny Flamefly -- 93813
	AddPet(93813, 66080, Q.COMMON, V.CATA)



	-- Panther Cub -- 96571
	AddPet(96571, 68833, Q.COMMON, V.CATA)



	-- Lashtail Hatchling -- 97779
	AddPet(97779, 69251, Q.COMMON, V.CATA)



--REP VENDOR ARGENT
	-- Teldrassil Sproutling -- 62491
	AddPet(62491, 44965, Q.RARE, V.WOTLK)



	-- Dun Morogh Cub -- 62508
	AddPet(62508, 44970, Q.RARE, V.WOTLK)



	-- Tirisfal Batling -- 62510
	AddPet(62510, 44971, Q.RARE, V.WOTLK)



	-- Durotar Scorpion -- 62513
	AddPet(62513, 44973, Q.RARE, V.WOTLK)



	-- Elwynn Lamb -- 62516
	AddPet(62516, 44974, Q.RARE, V.WOTLK)



	-- Mulgore Hatchling -- 62542
	AddPet(62542, 44980, Q.RARE, V.WOTLK)



	-- Ammen Vale Lashling -- 62562
	AddPet(62562, 44984, Q.RARE, V.WOTLK)



	-- Enchanted Broom -- 62564
	AddPet(62564, 44982, Q.RARE, V.WOTLK)



	-- Mechanopeep -- 62674
	AddPet(62674, 45002, Q.RARE, V.WOTLK)



	-- Sen'jin Fetish -- 63712
	AddPet(63712, 45606, Q.RARE, V.WOTLK)



--REP VENDOR NEUTRAL
	-- Tiny Sporebat - 45082
	AddPet(45082, 34478, Q.RARE, V.TBC)



	-- Nether Ray Fry - 51716
	AddPet(51716, 38628, Q.RARE, V.TBC)



	-- Tickbird Hatchling -- 61348
	AddPet(61348, 39896, Q.COMMON, V.WOTLK)



	-- White Tickbird Hatchling -- 61349
	AddPet(61349, 39899, Q.COMMON, V.WOTLK)



	-- Proto-Drake Whelp -- 61350
	AddPet(61350, 44721, Q.COMMON, V.WOTLK)



	-- Cobra Hatchling -- 61351
	AddPet(61351, 39898, Q.COMMON, V.WOTLK)



	-- Nurtured Penguin Egg - 61357
	AddPet(61357, 44723, Q.RARE, V.WOTLK)



	-- Rustberg Gull -- 89472
	AddPet(89472, 63355, Q.RARE, V.CATA)



	-- Winterspring Cub -- 97638
	AddPet(97638, 69239, Q.COMMON, V.CATA)



	-- Crimson Lasher -- 99668
	AddPet(99668, 70160, Q.RARE, V.CATA)



	-- Hyjal Bear Cub -- 99663
	AddPet(99663, 70140, Q.RARE, V.CATA)



--VENDOR NEUTRAL
	-- Parrot Cage (Cockatiel) - 10680
	AddPet(10680, 8496, Q.COMMON, V.ORIG)



	-- Parrot Cage (Senegal) - 10684
	AddPet(10684, 8495, Q.COMMON, V.ORIG)



	-- Ancona Chicken - 10685
	AddPet(10685, 11023, Q.COMMON, V.ORIG)



	-- Wood Frog Box - 10703
	AddPet(10703, 11027, Q.COMMON, V.ORIG)



	-- Tree Frog Box - 10704
	AddPet(10704, 11026, Q.COMMON, V.ORIG)



	-- Crimson Snake - 10717
	AddPet(10717, 10392, Q.COMMON, V.ORIG)



	-- Mana Wyrmling - 35156
	AddPet(35156, 29363, Q.COMMON, V.TBC)



	-- Brown Rabbit Crate - 35239
	AddPet(35239, 29364, Q.COMMON, V.ORIG)



	-- Red Moth Egg - 35909
	AddPet(35909, 29902, Q.COMMON, V.TBC)



	-- Blue Dragonhawk Hatchling - 36031
	AddPet(36031, 29958, Q.COMMON, V.TBC)



	-- Ghostly Skull - 53316
	AddPet(53316, 39973, Q.RARE, V.WOTLK)



	-- Obsidian Hatchling
	AddPet(67417, 48120, Q.COMMON, V.WOTLK)



	-- Blue Clockwork Rocket Bot
	AddPet(75134, 54436, Q.RARE, V.WOTLK)



	-- Calico Cat
	AddPet(65358, 46398, Q.COMMON, V.WOTLK)



	-- Albino Snake
	AddPet(10713, 44822, Q.COMMON, V.WOTLK)



	-- Scorched Stone - 45890
	AddPet(45890, 34955, Q.RARE, V.TBC)



--VENDOR HORDE
	-- Cockroach - 10688
	AddPet(10688, 10393, Q.COMMON, V.ORIG)



	-- Prairie Dog Whistle - 10709
	AddPet(10709, 10394, Q.COMMON, V.ORIG)



	-- Black Kingsnake - 10714
	AddPet(10714, 10360, Q.COMMON, V.ORIG)



	-- Brown Snake - 10716
	AddPet(10716, 10361, Q.COMMON, V.ORIG)



	-- Golden Dragonhawk Hatchling - 36027
	AddPet(36027, 29953, Q.COMMON, V.TBC)



	-- Red Dragonhawk Hatchling - 36028
	AddPet(36028, 29956, Q.COMMON, V.TBC)



	-- Silver Dragonhawk Hatchling - 36029
	AddPet(36029, 29957, Q.COMMON, V.TBC)



--VENDOR ALLIANCE
	-- Cat Carrier (Bombay) - 10673
	AddPet(10673, 8485, Q.COMMON, V.ORIG)



	-- Cat Carrier (Cornish Rex) - 10674
	AddPet(10674, 8486, Q.COMMON, V.ORIG)



	-- Cat Carrier (Orange Tabby) - 10676
	AddPet(10676, 8487, Q.COMMON, V.ORIG)



	-- Cat Carrier (Silver Tabby) - 10678
	AddPet(10678, 8488, Q.COMMON, V.ORIG)



	-- Cat Carrier (White Kitten) - 10679
	AddPet(10679, 8489, Q.COMMON, V.ORIG)



	-- Hawk Owl - 10706
	AddPet(10706, 8501, Q.COMMON, V.ORIG)



	-- Great Horned Owl - 10707
	AddPet(10707, 8500, Q.COMMON, V.ORIG)



	-- Rabbit Crate (Snowshoe) - 10711
	AddPet(10711, 8497, Q.COMMON, V.ORIG)



	-- Blue Moth Egg - 35907
	AddPet(35907, 29901, Q.COMMON, V.TBC)



	-- Yellow Moth Egg - 35910
	AddPet(35910, 29903, Q.COMMON, V.TBC)



	-- White Moth Egg - 35911
	AddPet(35911, 29904, Q.COMMON, V.TBC)



--RETIRED
	-- Spirit of Competition - 48406
	AddPet(48406, 37297, Q.RARE, V.TBC)



	-- Essence of Competition - 48408
	AddPet(48408, nil, Q.UNCOMMON, V.TBC)



	-- Vampiric Batling - 51851
	AddPet(51851, 38658, Q.RARE, V.TBC)



	-- Baby Blizzard Bear - 61855
	AddPet(61855, 44819, Q.COMMON, V.WOTLK)



	-- Murkimus' Little Spear - 63318
	AddPet(63318, 45180, Q.RARE, V.WOTLK)



	-- Onyxian Whelpling - 69002
	AddPet(69002, 49362, Q.COMMON, V.WOTLK)



	-- Mr. Chilly - 55068
	AddPet(55068, 41133, Q.RARE, V.WOTLK)




--COLLECTORS EDITION
	-- Diablo Stone - 17708
	AddPet(17708, 13584, Q.RARE, V.ORIG)



	-- Panda Collar - 17707
	AddPet(17707, 13583, Q.RARE, V.ORIG)



	-- Zergling Leash - 17709
	AddPet(17709, 13582, Q.RARE, V.ORIG)



	-- Lurky's Egg - 24988
	AddPet(24988, 30360, Q.RARE, V.ORIG)



	-- Netherwhelp's Collar - 32298
	AddPet(32298, 25535, Q.RARE, V.TBC)



	-- Frosty's Collar - 52615
	AddPet(52615, 39286, Q.RARE, V.WOTLK)



	-- Mini Thor - 78381
	AddPet(78381, 56806, Q.RARE, V.WOTLK)



	-- Lil' Deathwing -- 87344
	AddPet(87344, 62540, Q.RARE, V.CATA)



	-- Fetish Shaman -- 105633
	AddPet(105633, 76062, Q.RARE, V.CATA)



--BLIZZCON
	-- Blue Murloc Egg - 24696 (Murky)
	AddPet(24696, 20371, Q.RARE, V.ORIG)



	-- Heavy Murloc Egg
	AddPet(66030, 45180, Q.RARE, V.WOTLK)



	-- Deathy
	AddPet(94070, 67418, Q.RARE, V.WOTLK)



	-- Murkablo -- 101606
	AddPet(101606, 71726, Q.RARE, V.CATA)



--PROMO
	-- Pink Murloc Egg - 27241 (Gurky)
	AddPet(27241, 22114, Q.RARE, V.ORIG)



	-- Polar Bear Collar - 28505 (Poley)
	AddPet(28505, 22781, Q.COMMON, V.ORIG)



	-- Fortune Coin - 40405 (Lucky)
	AddPet(40405, 32498, Q.RARE, V.TBC)



	-- Tyrael's Hilt - 53082
	AddPet(53082, 39656, Q.RARE, V.TBC)



	-- Warbot
	AddPet(65682, 46767, Q.RARE, V.WOTLK)



--TCG
	-- Banana Charm - 40549
	AddPet(40549, 32588, Q.RARE, V.TBC)



	-- Rocket Chicken - 45125
	AddPet(45125, 34492, Q.RARE, V.TBC)



	-- Dragon Kite - 45127
	AddPet(45127, 34493, Q.EPIC, V.TBC)



	-- Hippogryph Hatchling - 30156
	AddPet(30156, 23713, Q.EPIC, V.TBC)



	-- Soul-Trader Beacon - 49964
	AddPet(49964, 38050, Q.RARE, V.TBC)



	-- Tuskarr Kite - 68767
	AddPet(68767, 49287, Q.EPIC, V.WOTLK)



	-- Spectral Tiger Cub - 68810
	AddPet(68810, 49343, Q.RARE, V.WOTLK)



	-- Landro's Lil' XT -- 93624
	AddPet(93624, 67128, Q.RARE, V.CATA)



	-- Landro's Lichling -- 96817
	AddPet(96817, 68840, Q.RARE, V.CATA)



	-- Nightsaber Cub - 96819
	AddPet(96819, 68841, Q.COMMON, V.CATA)



	-- Purple Puffer -- 101493
	AddPet(101493, 71624, Q.RARE, V.CATA)



	-- Gregarious Grell -- 102317
	AddPet(102317, 72134, Q.RARE, V.CATA)



	-- Sand Scarab -- 102353
	AddPet(102353, 72153, Q.RARE, V.CATA)



--PURCHASED
	-- Lil' K.T. - 69677
	AddPet(69677, 49693, Q.RARE, V.WOTLK)



	-- Pandaren Monk - 69541
	AddPet(69541, 49665, Q.RARE, V.WOTLK)



	-- Gryphon Hatchling - 69535
	AddPet(69535, 49662, Q.RARE, V.WOTLK)



	-- Wind Rider Cub - 69536
	AddPet(69536, 49663, Q.RARE, V.WOTLK)



	-- Lil' XT - 75906
	AddPet(75906, 54847, Q.RARE, V.WOTLK)



	-- Lil' Ragnaros -- 95787
	AddPet(95787, 68385, Q.RARE, V.WOTLK)

	-- Cenarion Hatchling -- 99578
	AddPet(99578, 70099, Q.EPIC, V.CATA)

	-- Guardian Cub -- 98736
	AddPet(98736, 72068, Q.RARE, V.CATA)

	-- Soul of the Aspects -- 110029
	AddPet(110029, 78916, Q.RARE, V.CATA)

	-- Lucky Quilen Cub -- 124660
	AddPet(124660, 85871, Q.RARE, V.CATA)

]]--

	self.InitCritters = nil
end
