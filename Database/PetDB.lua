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

	-- Core Hound Pup - 36871
	pet = AddPet(36871, V.WOTLK, Q.RARE)

	-- Zipao Tiger (Purple Jade Tiger) - 69539
	pet = AddPet(69539, Q.RARE, V.WOTLK)

	-- Jade Tiger - 66520
	pet = AddPet(66520, Q.RARE, V.WOTLK)

	-- Onyx Panther - 67527
	pet = AddPet(67527, Q.RARE, V.WOTLK)

	-- Tiny Red Dragon - 23530
	pet = AddPet(23530, Q.RARE, V.WOTLK)

	-- Tiny Green Dragon - 23531
	pet = AddPet(23531, Q.RARE, V.WOTLK)

	-- Golden Pig - 45174
	pet = AddPet(45174, Q.RARE, V.WOTLK)

--ACHIEVEMENTS
	-- Pilgrim Turkey - 61773
	pet = AddPet(61773, Q.RARE, V.WOTLK)

	-- Kirin Tor Familiar - 61472
	pet = AddPet(61472, Q.RARE, V.WOTLK)

	-- Reeking Pet Carrier - 40990
	pet = AddPet(40990, Q.RARE, V.TBC)

	-- Little Fawn - 61991
	pet = AddPet(61991, Q.RARE, V.WOTLK)

	-- Perky Pug - 70613
	pet = AddPet(70613, Q.RARE, V.WOTLK)

	-- Pebble -- 84492
	pet = AddPet(84492, Q.COMMON, V.CATA)

	-- Armadillo Pup -- 89670
	pet = AddPet(89670, Q.RARE, V.CATA)

	-- Dark Phoenix Hatchling -- 89039
	pet = AddPet(89039, Q.RARE, V.CATA)

	-- Nuts' Acorn -- 100970
	pet = AddPet(100970, Q.RARE, V.CATA)

	-- Celestial Dragon -- 75613
	pet = AddPet(75613, Q.RARE, V.CATA)

	-- Brilliant Kaliri -- 101424
	pet = AddPet(101424, Q.COMMON, V.CATA)

	-- Lil' Tarecgosa -- 100576
	pet = AddPet(100576, Q.COMMON, V.CATA)

--FISHING
	-- Magical Crawdad Box - 33050
	pet = AddPet(33050, Q.COMMON, V.TBC)

	-- Toothy's Bucket - 43697
	pet = AddPet(43697, Q.RARE, V.TBC)

	-- Muckbreath's Bucket - 43698
	pet = AddPet(43698, Q.RARE, V.TBC)

	-- Snarly's Bucket - 46425
	pet = AddPet(46425, Q.RARE, V.TBC)

	-- Chuck's Bucket - 46426
	pet = AddPet(46426, Q.RARE, V.TBC)

	-- Giant Sewer Rat - 59250
	pet = AddPet(59250, Q.RARE, V.WOTLK)

	-- Strand Crawler -- 62561
	pet = AddPet(62561, Q.RARE, V.WOTLK)

	-- Sea Pony -- 103588
	pet = AddPet(103588, Q.RARE, V.CATA)

--PLAYERMADE
	-- Mechanical Squirrel Box - 4055
	pet = AddPet(4055, Q.COMMON, V.ORIG)

	-- Pet Bombling - 15048
	pet = AddPet(15048, Q.COMMON, V.ORIG)

	-- Lil' Smoky - 15049
	pet = AddPet(15049, Q.COMMON, V.ORIG)

	-- Lifelike Mechanical Toad - 19772
	pet = AddPet(19772, Q.COMMON, V.ORIG)

	-- Tranquil Mechanical Yeti - 26010
	pet = AddPet(26010, Q.COMMON, V.ORIG)

	-- Fossilized Hatchling -- 84752
	pet = AddPet(84752, Q.RARE, V.CATA)

	-- De-Weaponized Mechanical Companion -- 82173
	pet = AddPet(82173, Q.RARE, V.CATA)

	-- Elementium Geode -- 93838
	pet = AddPet(93838, Q.RARE, V.CATA)

	-- Personal World Destroyer -- 81937
	pet = AddPet(81937, Q.RARE, V.CATA)

	-- Clockwork Gnome -- 90523
	pet = AddPet(90523, Q.RARE, V.CATA)

	-- Crawling Claw -- 84263
	pet = AddPet(84263, Q.EPIC, V.CATA)

	-- Enchanted Lantern -- 93836
	pet = AddPet(93836, Q.RARE, V.CATA)

	-- Magic Lamp -- 93837
	pet = AddPet(93837, Q.RARE, V.CATA)

	-- Pterrordax Hatchling -- 98571
	pet = AddPet(98571, Q.RARE, V.CATA)

	-- Voodoo Figurine -- 98587
	pet = AddPet(98587, Q.RARE, V.CATA)

--WORLD EVENT DROP
	-- Snowman Kit - 26045
	pet = AddPet(26045, Q.COMMON, V.ORIG)

	-- Jingling Bell - 26529
	pet = AddPet(26529, Q.COMMON, V.ORIG)

	-- Green Helper Box - 26533
	pet = AddPet(26533, Q.COMMON, V.ORIG)

	-- Red Helper Box - 26541
	pet = AddPet(26541, Q.COMMON, V.ORIG)

	-- Lumpy -- 103125
	pet = AddPet(103125, Q.RARE, V.CATA)

	-- Darkmoon Balloon -- 103076
	pet = AddPet(103076, Q.RARE, V.CATA)

	-- Darkmoon Cub -- 105122
	pet = AddPet(105122, Q.RARE, V.CATA)

	-- Darkmoon Monkey -- 101733
	pet = AddPet(101733, Q.RARE, V.CATA)

	-- Darkmoon Tonk -- 103544
	pet = AddPet(103544, Q.RARE, V.CATA)

	-- Darkmoon Turtle -- 103074
	pet = AddPet(103074, Q.RARE, V.CATA)

	-- Darkmoon Zeppelin -- 103549
	pet = AddPet(103549, Q.RARE, V.CATA)

	-- Truesilver Shafted Arrow - 27570
	pet = AddPet(27570, Q.COMMON, V.ORIG)

	-- Sinister Squashling - 42609
	pet = AddPet(42609, Q.RARE, V.TBC)

	-- Clockwork Rocket Bot - 54187
	pet = AddPet(54187, Q.RARE, V.TBC)

	-- Spring Rabbit - 61725
	pet = AddPet(61725, Q.RARE, V.WOTLK)

	-- Toxic Wasteling - 71840
	pet = AddPet(71840, Q.RARE, V.WOTLK)

	-- Ice Chip (Frigid Frostling) - 74932
	pet = AddPet(74932, Q.RARE, V.WOTLK)

	-- Creepy Crate -- 100684
	pet = AddPet(100684, Q.COMMON, V.CATA)

	-- Feline Familiar -- 100330
	pet = AddPet(100330, Q.COMMON, V.CATA)

	-- Turtle Box - 28738
	pet = AddPet(28738, Q.COMMON, V.ORIG)

	-- Piglet's Collar - 28739
	pet = AddPet(28739, Q.COMMON, V.ORIG)

	-- Rat Cage - 28740
	pet = AddPet(28740, Q.COMMON, V.ORIG)

	-- Sleepy Willy - 40613
	pet = AddPet(40613, Q.RARE, V.TBC)

	-- Egbert's Egg - 40614
	pet = AddPet(40614, Q.RARE, V.TBC)

	-- Elekk Training Collar - 40634
	pet = AddPet(40634, Q.RARE, V.TBC)

	-- Curious Wolvar Pup
	pet = AddPet(65382, Q.RARE, V.WOTLK)

	-- Curious Oracle Hatchling
	pet = AddPet(65381, Q.RARE, V.WOTLK)

	-- Scooter the Snail -- 93817
	pet = AddPet(93817, Q.COMMON, V.CATA)

	-- Legs -- 98079
	pet = AddPet(98079, Q.RARE, V.CATA)

--WORLD EVENT VENDOR
	-- Spirit of Summer - 28871
	pet = AddPet(28871, Q.RARE, V.ORIG)

	-- Pint-Sized Pink Pachyderm - 44369
	pet = AddPet(44369, Q.RARE, V.TBC)

	-- Festival Lantern -- 104049
	pet = AddPet(104049, Q.RARE, V.CATA)

	-- Lunar Lantern -- 104047
	pet = AddPet(104047, Q.RARE, V.CATA)

--DROP
	-- Parrot Cage (Hyacinth Macaw) - 10682
	pet = AddPet(10682, Q.EPIC, V.ORIG)

	-- Parrot Cage (Green Wing Macaw) - 10683
	pet = AddPet(10683, Q.COMMON, V.ORIG)

	-- Cat Carrier (Black Tabby) - 10675
	pet = AddPet(10675, Q.COMMON, V.ORIG)

	-- Cat Carrier (Siamese) - 10677
	pet = AddPet(10677, Q.COMMON, V.ORIG)

	-- Dark Whelpling - 10695
	pet = AddPet(10695, Q.COMMON, V.ORIG)

	-- Azure Whelpling - 10696
	pet = AddPet(10696, Q.COMMON, V.ORIG)

	-- Tiny Crimson Whelpling - 10697
	pet = AddPet(10697, Q.COMMON, V.ORIG)

	-- Tiny Emerald Whelpling - 10698
	pet = AddPet(10698, Q.COMMON, V.ORIG)

	-- Disgusting Oozeling - 25162
	pet = AddPet(25162, Q.COMMON, V.ORIG)

	-- Captured Firefly - 36034
	pet = AddPet(36034, Q.COMMON, V.TBC)

	-- Mojo - 43918
	pet = AddPet(43918, Q.RARE, V.TBC)

	-- Phoenix Hatchling - 46599
	pet = AddPet(46599, Q.RARE, V.TBC)

	-- Darting Hatchling
	pet = AddPet(67413, Q.COMMON, V.WOTLK)

	-- Deviate Hatchling
	pet = AddPet(67414, Q.COMMON, V.WOTLK)

	-- Gundrak Hatchling
	pet = AddPet(67415, Q.COMMON, V.WOTLK)

	-- Leaping Hatchling
	pet = AddPet(67416, Q.COMMON, V.WOTLK)

	-- Ravasaur Hatchling
	pet = AddPet(67418, Q.COMMON, V.WOTLK)

	-- Razormaw Hatchling
	pet = AddPet(67419, Q.COMMON, V.WOTLK)

	-- Razzashi Hatchling
	pet = AddPet(67420, Q.COMMON, V.WOTLK)

	-- Mr. Grubbs -- 93739
	pet = AddPet(93739, Q.COMMON, V.CATA)

	-- Tiny Shale Spider -- 91343
	pet = AddPet(91343, Q.COMMON, V.CATA)

	-- Fox Kit -- 90637
	pet = AddPet(90637, Q.RARE, V.CATA)

--QUESTS
	-- Mechanical Chicken - 12243
	pet = AddPet(12243, Q.COMMON, V.ORIG)

	-- Chicken Egg - 13548
	pet = AddPet(13548, Q.COMMON, V.ORIG)

	-- Sprite Darter Egg - 15067
	pet = AddPet(15067, Q.COMMON, V.ORIG)

	-- Worg Carrier - 15999
	pet = AddPet(15999, Q.RARE, V.ORIG)

	-- Smolderweb Egg - 16450
	pet = AddPet(16450, Q.RARE, V.CATA)

	-- A Jubling's Tiny Home - 23811
	pet = AddPet(23811, Q.COMMON, V.ORIG)

	-- Miniwing - 39181
	pet = AddPet(39181, Q.COMMON, V.TBC)

	-- Wolpertinger's Tankard - 39709
	pet = AddPet(39709, Q.RARE, V.TBC)

	-- Gold Mini Jouster -- 78685
	pet = AddPet(78685, Q.COMMON, V.CATA)

	-- Blue Mini Jouster -- 78683
	pet = AddPet(78683, Q.COMMON, V.CATA)

	-- Withers -- 65046
	pet = AddPet(65046, Q.COMMON, V.CATA)

	-- Brazie's Sunflower -- 93823
	pet = AddPet(93823, Q.COMMON, V.CATA)

	-- Tiny Flamefly -- 93813
	pet = AddPet(93813, Q.COMMON, V.CATA)

	-- Panther Cub -- 96571
	pet = AddPet(96571, Q.COMMON, V.CATA)

	-- Lashtail Hatchling -- 97779
	pet = AddPet(97779, Q.COMMON, V.CATA)

--REP VENDOR ARGENT
	-- Teldrassil Sproutling -- 62491
	pet = AddPet(62491, Q.RARE, V.WOTLK)

	-- Dun Morogh Cub -- 62508
	pet = AddPet(62508, Q.RARE, V.WOTLK)

	-- Tirisfal Batling -- 62510
	pet = AddPet(62510, Q.RARE, V.WOTLK)

	-- Durotar Scorpion -- 62513
	pet = AddPet(62513, Q.RARE, V.WOTLK)

	-- Elwynn Lamb -- 62516
	pet = AddPet(62516, Q.RARE, V.WOTLK)

	-- Mulgore Hatchling -- 62542
	pet = AddPet(62542, Q.RARE, V.WOTLK)

	-- Ammen Vale Lashling -- 62562
	pet = AddPet(62562, Q.RARE, V.WOTLK)

	-- Enchanted Broom -- 62564
	pet = AddPet(62564, Q.RARE, V.WOTLK)

	-- Mechanopeep -- 62674
	pet = AddPet(62674, Q.RARE, V.WOTLK)

	-- Sen'jin Fetish -- 63712
	pet = AddPet(63712, Q.RARE, V.WOTLK)

--REP VENDOR NEUTRAL
	-- Tiny Sporebat - 45082
	pet = AddPet(45082, Q.RARE, V.TBC)

	-- Nether Ray Fry - 51716
	pet = AddPet(51716, Q.RARE, V.TBC)

	-- Tickbird Hatchling -- 61348
	pet = AddPet(61348, Q.COMMON, V.WOTLK)

	-- White Tickbird Hatchling -- 61349
	pet = AddPet(61349, Q.COMMON, V.WOTLK)

	-- Proto-Drake Whelp -- 61350
	pet = AddPet(61350, Q.COMMON, V.WOTLK)

	-- Cobra Hatchling -- 61351
	pet = AddPet(61351, Q.COMMON, V.WOTLK)

	-- Nurtured Penguin Egg - 61357
	pet = AddPet(61357, Q.RARE, V.WOTLK)

	-- Rustberg Gull -- 89472
	pet = AddPet(89472, Q.RARE, V.CATA)

	-- Winterspring Cub -- 97638
	pet = AddPet(97638, Q.COMMON, V.CATA)

	-- Crimson Lasher -- 99668
	pet = AddPet(99668, Q.RARE, V.CATA)

	-- Hyjal Bear Cub -- 99663
	pet = AddPet(99663, Q.RARE, V.CATA)

--VENDOR NEUTRAL
	-- Parrot Cage (Cockatiel) - 10680
	pet = AddPet(10680, Q.COMMON, V.ORIG)

	-- Parrot Cage (Senegal) - 10684
	pet = AddPet(10684, Q.COMMON, V.ORIG)

	-- Ancona Chicken - 10685
	pet = AddPet(10685, Q.COMMON, V.ORIG)

	-- Wood Frog Box - 10703
	pet = AddPet(10703, Q.COMMON, V.ORIG)

	-- Tree Frog Box - 10704
	pet = AddPet(10704, Q.COMMON, V.ORIG)

	-- Crimson Snake - 10717
	pet = AddPet(10717, Q.COMMON, V.ORIG)

	-- Mana Wyrmling - 35156
	pet = AddPet(35156, Q.COMMON, V.TBC)

	-- Brown Rabbit Crate - 35239
	pet = AddPet(35239, Q.COMMON, V.ORIG)

	-- Red Moth Egg - 35909
	pet = AddPet(35909, Q.COMMON, V.TBC)

	-- Blue Dragonhawk Hatchling - 36031
	pet = AddPet(36031, Q.COMMON, V.TBC)

	-- Ghostly Skull - 53316
	pet = AddPet(53316, Q.RARE, V.WOTLK)

	-- Obsidian Hatchling
	pet = AddPet(67417, Q.COMMON, V.WOTLK)

	-- Blue Clockwork Rocket Bot
	pet = AddPet(75134, Q.RARE, V.WOTLK)

	-- Calico Cat
	pet = AddPet(65358, Q.COMMON, V.WOTLK)

	-- Albino Snake
	pet = AddPet(10713, Q.COMMON, V.WOTLK)

	-- Scorched Stone - 45890
	pet = AddPet(45890, Q.RARE, V.TBC)

--VENDOR HORDE
	-- Cockroach - 10688
	pet = AddPet(10688, Q.COMMON, V.ORIG)

	-- Prairie Dog Whistle - 10709
	pet = AddPet(10709, Q.COMMON, V.ORIG)

	-- Black Kingsnake - 10714
	pet = AddPet(10714, Q.COMMON, V.ORIG)

	-- Brown Snake - 10716
	pet = AddPet(10716, Q.COMMON, V.ORIG)

	-- Golden Dragonhawk Hatchling - 36027
	pet = AddPet(36027, Q.COMMON, V.TBC)

	-- Red Dragonhawk Hatchling - 36028
	pet = AddPet(36028, Q.COMMON, V.TBC)

	-- Silver Dragonhawk Hatchling - 36029
	pet = AddPet(36029, Q.COMMON, V.TBC)

--VENDOR ALLIANCE
	-- Cat Carrier (Bombay) - 10673
	pet = AddPet(10673, Q.COMMON, V.ORIG)

	-- Cat Carrier (Cornish Rex) - 10674
	pet = AddPet(10674, Q.COMMON, V.ORIG)

	-- Cat Carrier (Orange Tabby) - 10676
	pet = AddPet(10676, Q.COMMON, V.ORIG)

	-- Cat Carrier (Silver Tabby) - 10678
	pet = AddPet(10678, Q.COMMON, V.ORIG)

	-- Cat Carrier (White Kitten) - 10679
	pet = AddPet(10679, Q.COMMON, V.ORIG)

	-- Hawk Owl - 10706
	pet = AddPet(10706, Q.COMMON, V.ORIG)

	-- Great Horned Owl - 10707
	pet = AddPet(10707, Q.COMMON, V.ORIG)

	-- Rabbit Crate (Snowshoe) - 10711
	pet = AddPet(10711, Q.COMMON, V.ORIG)

	-- Blue Moth Egg - 35907
	pet = AddPet(35907, Q.COMMON, V.TBC)

	-- Yellow Moth Egg - 35910
	pet = AddPet(35910, Q.COMMON, V.TBC)

	-- White Moth Egg - 35911
	pet = AddPet(35911, Q.COMMON, V.TBC)

--RETIRED
	-- Spirit of Competition - 48406
	pet = AddPet(48406, Q.RARE, V.TBC)

	-- Essence of Competition - 48408
	pet = AddPet(48408, Q.UNCOMMON, V.TBC)

	-- Vampiric Batling - 51851
	pet = AddPet(51851, Q.RARE, V.TBC)

	-- Baby Blizzard Bear - 61855
	pet = AddPet(61855, Q.COMMON, V.WOTLK)

	-- Murkimus' Little Spear - 63318
	pet = AddPet(63318, Q.RARE, V.WOTLK)

	-- Onyxian Whelpling - 69002
	pet = AddPet(69002, Q.COMMON, V.WOTLK)

	-- Mr. Chilly - 55068
	pet = AddPet(55068, Q.RARE, V.WOTLK)

--COLLECTORS EDITION
	-- Diablo Stone - 17708
	pet = AddPet(17708, Q.RARE, V.ORIG)

	-- Panda Collar - 17707
	pet = AddPet(17707, Q.RARE, V.ORIG)

	-- Zergling Leash - 17709
	pet = AddPet(17709, Q.RARE, V.ORIG)

	-- Lurky's Egg - 24988
	pet = AddPet(24988, Q.RARE, V.ORIG)

	-- Netherwhelp's Collar - 32298
	pet = AddPet(32298, Q.RARE, V.TBC)

	-- Frosty's Collar - 52615
	pet = AddPet(52615, Q.RARE, V.WOTLK)

	-- Mini Thor - 78381
	pet = AddPet(78381, Q.RARE, V.WOTLK)

	-- Lil' Deathwing -- 87344
	pet = AddPet(87344, Q.RARE, V.CATA)

	-- Fetish Shaman -- 105633
	pet = AddPet(105633, Q.RARE, V.CATA)

--BLIZZCON
	-- Blue Murloc Egg - 24696 (Murky)
	pet = AddPet(24696, Q.RARE, V.ORIG)

	-- Heavy Murloc Egg
	pet = AddPet(66030, Q.RARE, V.WOTLK)

	-- Deathy
	pet = AddPet(94070, Q.RARE, V.WOTLK)

	-- Murkablo -- 101606
	pet = AddPet(101606, Q.RARE, V.CATA)

--PROMO
	-- Pink Murloc Egg - 27241 (Gurky)
	pet = AddPet(27241, Q.RARE, V.ORIG)

	-- Polar Bear Collar - 28505 (Poley)
	pet = AddPet(28505, Q.COMMON, V.ORIG)

	-- Fortune Coin - 40405 (Lucky)
	pet = AddPet(40405, Q.RARE, V.TBC)

	-- Tyrael's Hilt - 53082
	pet = AddPet(53082, Q.RARE, V.TBC)

	-- Warbot
	pet = AddPet(65682, Q.RARE, V.WOTLK)

--TCG
	-- Banana Charm - 40549
	pet = AddPet(40549, Q.RARE, V.TBC)

	-- Rocket Chicken - 45125
	pet = AddPet(45125, Q.RARE, V.TBC)

	-- Dragon Kite - 45127
	pet = AddPet(45127, Q.EPIC, V.TBC)

	-- Hippogryph Hatchling - 30156
	pet = AddPet(30156, Q.EPIC, V.TBC)

	-- Soul-Trader Beacon - 49964
	pet = AddPet(49964, Q.RARE, V.TBC)

	-- Tuskarr Kite - 68767
	pet = AddPet(68767, Q.EPIC, V.WOTLK)

	-- Spectral Tiger Cub - 68810
	pet = AddPet(68810, Q.RARE, V.WOTLK)

	-- Landro's Lil' XT -- 93624
	pet = AddPet(93624, Q.RARE, V.CATA)

	-- Landro's Lichling -- 96817
	pet = AddPet(96817, Q.RARE, V.CATA)

	-- Nightsaber Cub - 96819
	pet = AddPet(96819, Q.COMMON, V.CATA)

	-- Purple Puffer -- 101493
	pet = AddPet(101493, Q.RARE, V.CATA)

	-- Gregarious Grell -- 102317
	pet = AddPet(102317, Q.RARE, V.CATA)

	-- Sand Scarab -- 102353
	pet = AddPet(102353, Q.RARE, V.CATA)

--PURCHASED
	-- Lil' K.T. - 69677
	pet = AddPet(69677, Q.RARE, V.WOTLK)

	-- Pandaren Monk - 69541
	pet = AddPet(69541, Q.RARE, V.WOTLK)

	-- Gryphon Hatchling - 69535
	pet = AddPet(69535, Q.RARE, V.WOTLK)

	-- Wind Rider Cub - 69536
	pet = AddPet(69536, Q.RARE, V.WOTLK)

	-- Lil' XT - 75906
	pet = AddPet(75906, Q.RARE, V.WOTLK)

	-- Lil' Ragnaros -- 95787
	pet = AddPet(95787, Q.RARE, V.WOTLK)

	-- Cenarion Hatchling -- 99578
	pet = AddPet(99578, Q.EPIC, V.CATA)

	-- Guardian Cub -- 98736
	pet = AddPet(98736, Q.RARE, V.CATA)

	-- Soul of the Aspects -- 110029
	pet = AddPet(110029, Q.RARE, V.CATA)

	-- Lucky Quilen Cub -- 124660
	pet = AddPet(124660, Q.RARE, V.CATA)

	self.InitCritters = nil
end
