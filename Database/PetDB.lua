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

	-- Zipao Tiger (Purple Jade Tiger) - 36910
	pet = AddPet(36910, V.WOTLK, Q.RARE)

	-- Jade Tiger - 34930
	pet = AddPet(34930, V.WOTLK, Q.RARE)

	-- Onyx Panther - 35468
	pet = AddPet(35468, V.WOTLK, Q.RARE)

	-- Tiny Red Dragon - 14756
	pet = AddPet(14756, V.WOTLK, Q.RARE)

	-- Tiny Green Dragon - 14755
	pet = AddPet(14755, V.WOTLK, Q.RARE)

	-- Golden Pig - 25146
	pet = AddPet(25146, V.WOTLK, Q.RARE)

--ACHIEVEMENTS
	-- Pilgrim Turkey - 32818
	pet = AddPet(32818, V.WOTLK, Q.RARE)

	-- Kirin Tor Familiar - 32643
	pet = AddPet(32643, V.WOTLK, Q.RARE)

	-- Reeking Pet Carrier - 23274
	pet = AddPet(23274, V.TBC, Q.RARE)

	-- Little Fawn - 32939
	pet = AddPet(32939, V.WOTLK, Q.RARE)

	-- Perky Pug - 37865
	pet = AddPet(37865, V.WOTLK, Q.RARE)

	-- Pebble -- 45247
	pet = AddPet(45247, V.CATA, Q.COMMON)

	-- Armadillo Pup -- 48242
	pet = AddPet(48242, V.CATA, Q.RARE)

	-- Dark Phoenix Hatchling -- 47944
	pet = AddPet(47944, V.CATA, Q.RARE)

	-- Nuts' Acorn -- 54227
	pet = AddPet(54227, V.CATA, Q.RARE)

	-- Celestial Dragon -- 40624
	pet = AddPet(40624, V.CATA, Q.RARE)

	-- Brilliant Kaliri -- 54374
	pet = AddPet(54374, V.CATA, Q.COMMON)

	-- Lil' Tarecgosa -- 54027
	pet = AddPet(54027, V.CATA, Q.COMMON)

--FISHING
--[[
	-- Magical Crawdad Box - 33050
	pet = AddPet(33050, V.TBC, Q.COMMON)

	-- Toothy's Bucket - 43697
	pet = AddPet(43697, V.TBC, Q.RARE)

	-- Muckbreath's Bucket - 43698
	pet = AddPet(43698, V.TBC, Q.RARE)

	-- Snarly's Bucket - 46425
	pet = AddPet(46425, V.TBC, Q.RARE)

	-- Chuck's Bucket - 46426
	pet = AddPet(46426, V.TBC, Q.RARE)

	-- Giant Sewer Rat - 59250
	pet = AddPet(59250, V.WOTLK, Q.RARE)

	-- Strand Crawler -- 62561
	pet = AddPet(62561, V.WOTLK, Q.RARE)

	-- Sea Pony -- 103588
	pet = AddPet(103588, V.CATA, Q.RARE)

--PLAYERMADE
	-- Mechanical Squirrel Box - 4055
	pet = AddPet(4055, V.ORIG, Q.COMMON)

	-- Pet Bombling - 15048
	pet = AddPet(15048, V.ORIG, Q.COMMON)

	-- Lil' Smoky - 15049
	pet = AddPet(15049, V.ORIG, Q.COMMON)

	-- Lifelike Mechanical Toad - 19772
	pet = AddPet(19772, V.ORIG, Q.COMMON)

	-- Tranquil Mechanical Yeti - 26010
	pet = AddPet(26010, V.ORIG, Q.COMMON)

	-- Fossilized Hatchling -- 84752
	pet = AddPet(84752, V.CATA, Q.RARE)

	-- De-Weaponized Mechanical Companion -- 82173
	pet = AddPet(82173, V.CATA, Q.RARE)

	-- Elementium Geode -- 93838
	pet = AddPet(93838, V.CATA, Q.RARE)

	-- Personal World Destroyer -- 81937
	pet = AddPet(81937, V.CATA, Q.RARE)

	-- Clockwork Gnome -- 90523
	pet = AddPet(90523, V.CATA, Q.RARE)
]]--
	-- Crawling Claw -- 45128
	pet = AddPet(45128, V.CATA, Q.EPIC)
--[[
	-- Enchanted Lantern -- 93836
	pet = AddPet(93836, V.CATA, Q.RARE)

	-- Magic Lamp -- 93837
	pet = AddPet(93837, V.CATA, Q.RARE)

	-- Pterrordax Hatchling -- 98571
	pet = AddPet(98571, V.CATA, Q.RARE)

	-- Voodoo Figurine -- 98587
	pet = AddPet(98587, V.CATA, Q.RARE)

--WORLD EVENT DROP
	-- Snowman Kit - 26045
	pet = AddPet(26045, V.ORIG, Q.COMMON)

	-- Jingling Bell - 26529
	pet = AddPet(26529, V.ORIG, Q.COMMON)

	-- Green Helper Box - 26533
	pet = AddPet(26533, V.ORIG, Q.COMMON)

	-- Red Helper Box - 26541
	pet = AddPet(26541, V.ORIG, Q.COMMON)

	-- Lumpy -- 103125
	pet = AddPet(103125, V.CATA, Q.RARE)

	-- Darkmoon Balloon -- 103076
	pet = AddPet(103076, V.CATA, Q.RARE)

	-- Darkmoon Cub -- 105122
	pet = AddPet(105122, V.CATA, Q.RARE)

	-- Darkmoon Monkey -- 101733
	pet = AddPet(101733, V.CATA, Q.RARE)

	-- Darkmoon Tonk -- 103544
	pet = AddPet(103544, V.CATA, Q.RARE)

	-- Darkmoon Turtle -- 103074
	pet = AddPet(103074, V.CATA, Q.RARE)

	-- Darkmoon Zeppelin -- 103549
	pet = AddPet(103549, V.CATA, Q.RARE)

	-- Truesilver Shafted Arrow - 27570
	pet = AddPet(27570, V.ORIG, Q.COMMON)

	-- Sinister Squashling - 42609
	pet = AddPet(42609, V.TBC, Q.RARE)

	-- Clockwork Rocket Bot - 54187
	pet = AddPet(54187, V.TBC, Q.RARE)

	-- Spring Rabbit - 61725
	pet = AddPet(61725, V.WOTLK, Q.RARE)

	-- Toxic Wasteling - 71840
	pet = AddPet(71840, V.WOTLK, Q.RARE)

	-- Ice Chip (Frigid Frostling) - 74932
	pet = AddPet(74932, V.WOTLK, Q.RARE)

	-- Creepy Crate -- 100684
	pet = AddPet(100684, V.CATA, Q.COMMON)

	-- Feline Familiar -- 100330
	pet = AddPet(100330, V.CATA, Q.COMMON)

	-- Turtle Box - 28738
	pet = AddPet(28738, V.ORIG, Q.COMMON)

	-- Piglet's Collar - 28739
	pet = AddPet(28739, V.ORIG, Q.COMMON)

	-- Rat Cage - 28740
	pet = AddPet(28740, V.ORIG, Q.COMMON)

	-- Sleepy Willy - 40613
	pet = AddPet(40613, V.TBC, Q.RARE)

	-- Egbert's Egg - 40614
	pet = AddPet(40614, V.TBC, Q.RARE)

	-- Elekk Training Collar - 40634
	pet = AddPet(40634, V.TBC, Q.RARE)

	-- Curious Wolvar Pup
	pet = AddPet(65382, V.WOTLK, Q.RARE)

	-- Curious Oracle Hatchling
	pet = AddPet(65381, V.WOTLK, Q.RARE)

	-- Scooter the Snail -- 93817
	pet = AddPet(93817, V.CATA, Q.COMMON)

	-- Legs -- 98079
	pet = AddPet(98079, V.CATA, Q.RARE)
]]--

	--WORLD EVENT VENDOR
	-- Spirit of Summer - 28871
	pet = AddPet(16701, V.ORIG, Q.RARE)

	-- Pint-Sized Pink Pachyderm - 44369
	pet = AddPet(24753, V.TBC, Q.RARE)

	-- Festival Lantern -- 104049
	pet = AddPet(55574, V.CATA, Q.RARE)

	-- Lunar Lantern -- 104047
	pet = AddPet(55571, V.CATA, Q.RARE)
	--[[

--DROP
	-- Parrot Cage (Hyacinth Macaw) - 10682
	pet = AddPet(10682, V.ORIG, Q.EPIC)

	-- Parrot Cage (Green Wing Macaw) - 10683
	pet = AddPet(10683, V.ORIG, Q.COMMON)

	-- Cat Carrier (Black Tabby) - 10675
	pet = AddPet(10675, V.ORIG, Q.COMMON)

	-- Cat Carrier (Siamese) - 10677
	pet = AddPet(10677, V.ORIG, Q.COMMON)

	-- Dark Whelpling - 10695
	pet = AddPet(10695, V.ORIG, Q.COMMON)

	-- Azure Whelpling - 10696
	pet = AddPet(10696, V.ORIG, Q.COMMON)

	-- Tiny Crimson Whelpling - 10697
	pet = AddPet(10697, V.ORIG, Q.COMMON)

	-- Tiny Emerald Whelpling - 10698
	pet = AddPet(10698, V.ORIG, Q.COMMON)

	-- Disgusting Oozeling - 25162
	pet = AddPet(25162, V.ORIG, Q.COMMON)

	-- Captured Firefly - 36034
	pet = AddPet(36034, V.TBC, Q.COMMON)

	-- Mojo - 43918
	pet = AddPet(43918, V.TBC, Q.RARE)

	-- Phoenix Hatchling - 46599
	pet = AddPet(46599, V.TBC, Q.RARE)

	-- Darting Hatchling
	pet = AddPet(67413, V.WOTLK, Q.COMMON)

	-- Deviate Hatchling
	pet = AddPet(67414, V.WOTLK, Q.COMMON)

	-- Gundrak Hatchling
	pet = AddPet(67415, V.WOTLK, Q.COMMON)

	-- Leaping Hatchling
	pet = AddPet(67416, V.WOTLK, Q.COMMON)

	-- Ravasaur Hatchling
	pet = AddPet(67418, V.WOTLK, Q.COMMON)

	-- Razormaw Hatchling
	pet = AddPet(67419, V.WOTLK, Q.COMMON)

	-- Razzashi Hatchling
	pet = AddPet(67420, V.WOTLK, Q.COMMON)

	-- Mr. Grubbs -- 93739
	pet = AddPet(93739, V.CATA, Q.COMMON)

	-- Tiny Shale Spider -- 91343
	pet = AddPet(91343, V.CATA, Q.COMMON)

	-- Fox Kit -- 90637
	pet = AddPet(90637, V.CATA, Q.RARE)

--QUESTS
	-- Mechanical Chicken - 12243
	pet = AddPet(12243, V.ORIG, Q.COMMON)

	-- Chicken Egg - 13548
	pet = AddPet(13548, V.ORIG, Q.COMMON)

	-- Sprite Darter Egg - 15067
	pet = AddPet(15067, V.ORIG, Q.COMMON)

	-- Worg Carrier - 15999
	pet = AddPet(15999, V.ORIG, Q.RARE)

	-- Smolderweb Egg - 16450
	pet = AddPet(16450, V.CATA, Q.RARE)

	-- A Jubling's Tiny Home - 23811
	pet = AddPet(23811, V.ORIG, Q.COMMON)

	-- Miniwing - 39181
	pet = AddPet(39181, V.TBC, Q.COMMON)

	-- Wolpertinger's Tankard - 39709
	pet = AddPet(39709, V.TBC, Q.RARE)

	-- Gold Mini Jouster -- 78685
	pet = AddPet(78685, V.CATA, Q.COMMON)

	-- Blue Mini Jouster -- 78683
	pet = AddPet(78683, V.CATA, Q.COMMON)

	-- Withers -- 65046
	pet = AddPet(65046, V.CATA, Q.COMMON)

	-- Brazie's Sunflower -- 93823
	pet = AddPet(93823, V.CATA, Q.COMMON)

	-- Tiny Flamefly -- 93813
	pet = AddPet(93813, V.CATA, Q.COMMON)

	-- Panther Cub -- 96571
	pet = AddPet(96571, V.CATA, Q.COMMON)

	-- Lashtail Hatchling -- 97779
	pet = AddPet(97779, V.CATA, Q.COMMON)

--REP VENDOR ARGENT
	-- Teldrassil Sproutling -- 62491
	pet = AddPet(62491, V.WOTLK, Q.RARE)

	-- Dun Morogh Cub -- 62508
	pet = AddPet(62508, V.WOTLK, Q.RARE)

	-- Tirisfal Batling -- 62510
	pet = AddPet(62510, V.WOTLK, Q.RARE)

	-- Durotar Scorpion -- 62513
	pet = AddPet(62513, V.WOTLK, Q.RARE)

	-- Elwynn Lamb -- 62516
	pet = AddPet(62516, V.WOTLK, Q.RARE)

	-- Mulgore Hatchling -- 62542
	pet = AddPet(62542, V.WOTLK, Q.RARE)

	-- Ammen Vale Lashling -- 62562
	pet = AddPet(62562, V.WOTLK, Q.RARE)

	-- Enchanted Broom -- 62564
	pet = AddPet(62564, V.WOTLK, Q.RARE)

	-- Mechanopeep -- 62674
	pet = AddPet(62674, V.WOTLK, Q.RARE)

	-- Sen'jin Fetish -- 63712
	pet = AddPet(63712, V.WOTLK, Q.RARE)

--REP VENDOR NEUTRAL
	-- Tiny Sporebat - 45082
	pet = AddPet(45082, V.TBC, Q.RARE)

	-- Nether Ray Fry - 51716
	pet = AddPet(51716, V.TBC, Q.RARE)

	-- Tickbird Hatchling -- 61348
	pet = AddPet(61348, V.WOTLK, Q.COMMON)

	-- White Tickbird Hatchling -- 61349
	pet = AddPet(61349, V.WOTLK, Q.COMMON)

	-- Proto-Drake Whelp -- 61350
	pet = AddPet(61350, V.WOTLK, Q.COMMON)

	-- Cobra Hatchling -- 61351
	pet = AddPet(61351, V.WOTLK, Q.COMMON)

	-- Nurtured Penguin Egg - 61357
	pet = AddPet(61357, V.WOTLK, Q.RARE)

	-- Rustberg Gull -- 89472
	pet = AddPet(89472, V.CATA, Q.RARE)

	-- Winterspring Cub -- 97638
	pet = AddPet(97638, V.CATA, Q.COMMON)

	-- Crimson Lasher -- 99668
	pet = AddPet(99668, V.CATA, Q.RARE)

	-- Hyjal Bear Cub -- 99663
	pet = AddPet(99663, V.CATA, Q.RARE)

--VENDOR NEUTRAL
	-- Parrot Cage (Cockatiel) - 10680
	pet = AddPet(10680, V.ORIG, Q.COMMON)

	-- Parrot Cage (Senegal) - 10684
	pet = AddPet(10684, V.ORIG, Q.COMMON)

	-- Ancona Chicken - 10685
	pet = AddPet(10685, V.ORIG, Q.COMMON)

	-- Wood Frog Box - 10703
	pet = AddPet(10703, V.ORIG, Q.COMMON)

	-- Tree Frog Box - 10704
	pet = AddPet(10704, V.ORIG, Q.COMMON)

	-- Crimson Snake - 10717
	pet = AddPet(10717, V.ORIG, Q.COMMON)

	-- Mana Wyrmling - 35156
	pet = AddPet(35156, V.TBC, Q.COMMON)

	-- Brown Rabbit Crate - 35239
	pet = AddPet(35239, V.ORIG, Q.COMMON)

	-- Red Moth Egg - 35909
	pet = AddPet(35909, V.TBC, Q.COMMON)

	-- Blue Dragonhawk Hatchling - 36031
	pet = AddPet(36031, V.TBC, Q.COMMON)

	-- Ghostly Skull - 53316
	pet = AddPet(53316, V.WOTLK, Q.RARE)

	-- Obsidian Hatchling
	pet = AddPet(67417, V.WOTLK, Q.COMMON)

	-- Blue Clockwork Rocket Bot
	pet = AddPet(75134, V.WOTLK, Q.RARE)

	-- Calico Cat
	pet = AddPet(65358, V.WOTLK, Q.COMMON)

	-- Albino Snake
	pet = AddPet(10713, V.WOTLK, Q.COMMON)

	-- Scorched Stone - 45890
	pet = AddPet(45890, V.TBC, Q.RARE)

--VENDOR HORDE
	-- Cockroach - 10688
	pet = AddPet(10688, V.ORIG, Q.COMMON)

	-- Prairie Dog Whistle - 10709
	pet = AddPet(10709, V.ORIG, Q.COMMON)

	-- Black Kingsnake - 10714
	pet = AddPet(10714, V.ORIG, Q.COMMON)

	-- Brown Snake - 10716
	pet = AddPet(10716, V.ORIG, Q.COMMON)

	-- Golden Dragonhawk Hatchling - 36027
	pet = AddPet(36027, V.TBC, Q.COMMON)

	-- Red Dragonhawk Hatchling - 36028
	pet = AddPet(36028, V.TBC, Q.COMMON)

	-- Silver Dragonhawk Hatchling - 36029
	pet = AddPet(36029, V.TBC, Q.COMMON)

--VENDOR ALLIANCE
	-- Cat Carrier (Bombay) - 10673
	pet = AddPet(10673, V.ORIG, Q.COMMON)

	-- Cat Carrier (Cornish Rex) - 10674
	pet = AddPet(10674, V.ORIG, Q.COMMON)

	-- Cat Carrier (Orange Tabby) - 10676
	pet = AddPet(10676, V.ORIG, Q.COMMON)

	-- Cat Carrier (Silver Tabby) - 10678
	pet = AddPet(10678, V.ORIG, Q.COMMON)

	-- Cat Carrier (White Kitten) - 10679
	pet = AddPet(10679, V.ORIG, Q.COMMON)

	-- Hawk Owl - 10706
	pet = AddPet(10706, V.ORIG, Q.COMMON)

	-- Great Horned Owl - 10707
	pet = AddPet(10707, V.ORIG, Q.COMMON)

	-- Rabbit Crate (Snowshoe) - 10711
	pet = AddPet(10711, V.ORIG, Q.COMMON)

	-- Blue Moth Egg - 35907
	pet = AddPet(35907, V.TBC, Q.COMMON)

	-- Yellow Moth Egg - 35910
	pet = AddPet(35910, V.TBC, Q.COMMON)

	-- White Moth Egg - 35911
	pet = AddPet(35911, V.TBC, Q.COMMON)

--RETIRED
	-- Spirit of Competition - 48406
	pet = AddPet(48406, V.TBC, Q.RARE)

	-- Essence of Competition - 48408
	pet = AddPet(48408, V.TBC, Q.UNCOMMON)

	-- Vampiric Batling - 51851
	pet = AddPet(51851, V.TBC, Q.RARE)

	-- Baby Blizzard Bear - 61855
	pet = AddPet(61855, V.WOTLK, Q.COMMON)

	-- Murkimus' Little Spear - 63318
	pet = AddPet(63318, V.WOTLK, Q.RARE)

	-- Onyxian Whelpling - 69002
	pet = AddPet(69002, V.WOTLK, Q.COMMON)

	-- Mr. Chilly - 55068
	pet = AddPet(55068, V.WOTLK, Q.RARE)

--COLLECTORS EDITION
	-- Diablo Stone - 17708
	pet = AddPet(17708, V.ORIG, Q.RARE)

	-- Panda Collar - 17707
	pet = AddPet(17707, V.ORIG, Q.RARE)

	-- Zergling Leash - 17709
	pet = AddPet(17709, V.ORIG, Q.RARE)

	-- Lurky's Egg - 24988
	pet = AddPet(24988, V.ORIG, Q.RARE)

	-- Netherwhelp's Collar - 32298
	pet = AddPet(32298, V.TBC, Q.RARE)

	-- Frosty's Collar - 52615
	pet = AddPet(52615, V.WOTLK, Q.RARE)

	-- Mini Thor - 78381
	pet = AddPet(78381, V.WOTLK, Q.RARE)

	-- Lil' Deathwing -- 87344
	pet = AddPet(87344, V.CATA, Q.RARE)

	-- Fetish Shaman -- 105633
	pet = AddPet(105633, V.CATA, Q.RARE)

--BLIZZCON
	-- Blue Murloc Egg - 24696 (Murky)
	pet = AddPet(24696, V.ORIG, Q.RARE)

	-- Heavy Murloc Egg
	pet = AddPet(66030, V.WOTLK, Q.RARE)

	-- Deathy
	pet = AddPet(94070, V.WOTLK, Q.RARE)

	-- Murkablo -- 101606
	pet = AddPet(101606, V.CATA, Q.RARE)

--PROMO
	-- Pink Murloc Egg - 27241 (Gurky)
	pet = AddPet(27241, V.ORIG, Q.RARE)

	-- Polar Bear Collar - 28505 (Poley)
	pet = AddPet(28505, V.ORIG, Q.COMMON)

	-- Fortune Coin - 40405 (Lucky)
	pet = AddPet(40405, V.TBC, Q.RARE)

	-- Tyrael's Hilt - 53082
	pet = AddPet(53082, V.TBC, Q.RARE)

	-- Warbot
	pet = AddPet(65682, V.WOTLK, Q.RARE)

--TCG
	-- Banana Charm - 40549
	pet = AddPet(40549, V.TBC, Q.RARE)

	-- Rocket Chicken - 45125
	pet = AddPet(45125, V.TBC, Q.RARE)

	-- Dragon Kite - 45127
	pet = AddPet(45127, V.TBC, Q.EPIC)

	-- Hippogryph Hatchling - 30156
	pet = AddPet(30156, V.TBC, Q.EPIC)

	-- Soul-Trader Beacon - 49964
	pet = AddPet(49964, V.TBC, Q.RARE)

	-- Tuskarr Kite - 68767
	pet = AddPet(68767, V.WOTLK, Q.EPIC)

	-- Spectral Tiger Cub - 68810
	pet = AddPet(68810, V.WOTLK, Q.RARE)

	-- Landro's Lil' XT -- 93624
	pet = AddPet(93624, V.CATA, Q.RARE)

	-- Landro's Lichling -- 96817
	pet = AddPet(96817, V.CATA, Q.RARE)

	-- Nightsaber Cub - 96819
	pet = AddPet(96819, V.CATA, Q.COMMON)

	-- Purple Puffer -- 101493
	pet = AddPet(101493, V.CATA, Q.RARE)

	-- Gregarious Grell -- 102317
	pet = AddPet(102317, V.CATA, Q.RARE)

	-- Sand Scarab -- 102353
	pet = AddPet(102353, V.CATA, Q.RARE)

--PURCHASED
	-- Lil' K.T. - 69677
	pet = AddPet(69677, V.WOTLK, Q.RARE)

	-- Pandaren Monk - 69541
	pet = AddPet(69541, V.WOTLK, Q.RARE)

	-- Gryphon Hatchling - 69535
	pet = AddPet(69535, V.WOTLK, Q.RARE)

	-- Wind Rider Cub - 69536
	pet = AddPet(69536, V.WOTLK, Q.RARE)

	-- Lil' XT - 75906
	pet = AddPet(75906, V.WOTLK, Q.RARE)

	-- Lil' Ragnaros -- 95787
	pet = AddPet(95787, V.WOTLK, Q.RARE)

	-- Cenarion Hatchling -- 99578
	pet = AddPet(99578, V.CATA, Q.EPIC)

	-- Guardian Cub -- 98736
	pet = AddPet(98736, V.CATA, Q.RARE)

	-- Soul of the Aspects -- 110029
	pet = AddPet(110029, V.CATA, Q.RARE)

	-- Lucky Quilen Cub -- 124660
	pet = AddPet(124660, V.CATA, Q.RARE)
]]--
	self.InitCritters = nil
end
