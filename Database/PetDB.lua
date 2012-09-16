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

--UNKNOWN/MISC	
	-- Core Hound Pup -- 36871
	pet = AddPet(36871, V.WOTLK, Q.RARE)

	-- Zipao Tiger (Purple Jade Tiger) -- 36910
	pet = AddPet(36910, V.WOTLK, Q.RARE)

	-- Jade Tiger -- 34930
	pet = AddPet(34930, V.WOTLK, Q.RARE)

	-- Tiny Red Dragon -- 14756
	pet = AddPet(14756, V.WOTLK, Q.RARE)

	-- Tiny Green Dragon -- 14755
	pet = AddPet(14755, V.WOTLK, Q.RARE)

	-- Golden Pig -- 25146
	pet = AddPet(25146, V.WOTLK, Q.RARE)

--ACHIEVEMENTS
	-- Pilgrim Turkey -- 32818
	pet = AddPet(32818, V.WOTLK, Q.RARE)

	-- Kirin Tor Familiar -- 32643
	pet = AddPet(32643, V.WOTLK, Q.RARE)

	-- Reeking Pet Carrier -- 23274
	pet = AddPet(23274, V.TBC, Q.RARE)

	-- Little Fawn -- 32939
	pet = AddPet(32939, V.WOTLK, Q.RARE)

	-- Perky Pug -- 37865
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

	-- Magical Crawdad Box -- 18839
	pet = AddPet(18839, V.TBC, Q.COMMON)

	-- Toothy's Bucket -- 24388
	pet = AddPet(24388, V.TBC, Q.RARE)

	-- Muckbreath's Bucket -- 24389
	pet = AddPet(24389, V.TBC, Q.RARE)

	-- Snarly's Bucket -- 26050
	pet = AddPet(26050, V.TBC, Q.RARE)

	-- Chuck's Bucket -- 26056
	pet = AddPet(26056, V.TBC, Q.RARE)

	-- Giant Sewer Rat -- 31575
	pet = AddPet(31575, V.WOTLK, Q.RARE)

	-- Strand Crawler -- 33226
	pet = AddPet(33226, V.WOTLK, Q.RARE)

	-- Sea Pony -- 55386
	pet = AddPet(55386, V.CATA, Q.RARE)

--PLAYERMADE
	-- Mechanical Squirrel Box -- 2671
	pet = AddPet(2671, V.ORIG, Q.COMMON)

	-- Pet Bombling -- 9656
	pet = AddPet(9656, V.ORIG, Q.COMMON)

	-- Lil' Smoky -- 9657
	pet = AddPet(9657, V.ORIG, Q.COMMON)

	-- Lifelike Mechanical Toad -- 12419
	pet = AddPet(12419, V.ORIG, Q.COMMON)

	-- Tranquil Mechanical Yeti -- 15699
	pet = AddPet(15699, V.ORIG, Q.COMMON)

	-- Fossilized Hatchling -- 45340
	pet = AddPet(45340, V.CATA, Q.RARE)

	-- De-Weaponized Mechanical Companion -- 43916
	pet = AddPet(43916, V.CATA, Q.RARE)

	-- Elementium Geode -- 50722
	pet = AddPet(50722, V.CATA, Q.RARE)

	-- Personal World Destroyer -- 43800
	pet = AddPet(43800, V.CATA, Q.RARE)

	-- Clockwork Gnome -- 48609
	pet = AddPet(48609, V.CATA, Q.RARE)

	-- Crawling Claw -- 45128
	pet = AddPet(45128, V.CATA, Q.EPIC)

	-- Enchanted Lantern -- 46898
	pet = AddPet(46898, V.CATA, Q.RARE)

	-- Magic Lamp -- 50545
	pet = AddPet(50545, V.CATA, Q.RARE)

	-- Pterrordax Hatchling -- 53225
	pet = AddPet(53225, V.CATA, Q.RARE)

	-- Voodoo Figurine -- 53232
	pet = AddPet(53232, V.CATA, Q.RARE)

--WORLD EVENT DROP
	-- Sinister Squashling -- 23909
	pet = AddPet(23909, V.TBC, Q.RARE)

	-- Peddlefeet -- 16085
	pet = AddPet(16085, V.ORIG, Q.COMMON)

	-- Egbert -- 23258
	pet = AddPet(23258, V.TBC, Q.RARE)

	-- Speedy -- 16547
	pet = AddPet(16547, V.ORIG, Q.COMMON)

	-- Father Winter's Helper -- 15698
	pet = AddPet(15698, V.ORIG, Q.COMMON)

	-- Clockwork Rocket Bot -- 24968
	pet = AddPet(24968, V.TBC, Q.RARE)

	-- Wolpertinger -- 22943
	pet = AddPet(22943, V.TBC, Q.RARE)

	-- Spring Rabbit -- 32791
	pet = AddPet(32791, V.WOTLK, Q.RARE)

	-- Curious Wolvar Pup -- 33529
	pet = AddPet(33529, V.WOTLK, Q.RARE)

	-- Spirit of Summer -- 16701
	pet = AddPet(16701, V.ORIG, Q.RARE)

	-- Winter Reindeer -- 15706
	pet = AddPet(15706, V.ORIG, Q.RARE)

	-- Willy -- 23231
	pet = AddPet(23231, V.TBC, Q.RARE)

	-- Mr. Wiggles -- 16548
	pet = AddPet(16548, V.ORIG, Q.COMMON)

	-- Scooter the Snail -- 51635
	pet = AddPet(51635, V.CATA, Q.COMMON)

	-- Onyx Panther -- 35468
	pet = AddPet(35468, V.WOTLK, Q.RARE)

	-- Toxic Wasteling -- 38374
	pet = AddPet(38374, V.WOTLK, Q.RARE)

	-- Legs -- 53048
	pet = AddPet(53048, V.CATA, Q.COMMON)

	-- Feline Familiar -- 53884
	pet = AddPet(53884, V.CATA, Q.COMMON)

	-- Tiny Snowman -- 15710
	pet = AddPet(15710, V.ORIG, Q.COMMON)

	-- Whiskers the Rat -- 16549
	pet = AddPet(16549, V.ORIG, Q.COMMON)

	-- Frigid Frostling -- 40198
	pet = AddPet(40198, V.WOTLK, Q.RARE)

	-- Peanut -- 23266
	pet = AddPet(23266, V.TBC, Q.RARE)

	-- Curious Oracle Hatchling -- 33530
	pet = AddPet(33530, V.WOTLK, Q.RARE)

	-- Lumpy -- 55215
	pet = AddPet(55215, V.CATA, Q.RARE)

	-- Red Helper Box -- 15705
	pet = AddPet(15705, V.ORIG, Q.COMMON)

	-- Creepy Crate -- 54128
	pet = AddPet(54128, V.CATA, Q.COMMON)

--WORLD EVENT VENDOR
	-- Darkmoon Balloon -- 55187
	pet = AddPet(55187, V.CATA, Q.RARE)

	-- Darkmoon Cub -- 56031
	pet = AddPet(56031, V.CATA, Q.RARE)

	-- Darkmoon Monkey -- 54491
	pet = AddPet(54491, V.CATA, Q.RARE)

	-- Darkmoon Tonk -- 55356
	pet = AddPet(55356, V.CATA, Q.RARE)

	-- Darkmoon Turtle -- 54487
	pet = AddPet(54487, V.CATA, Q.RARE)

	-- Darkmoon Zeppelin -- 55367
	pet = AddPet(55367, V.CATA, Q.RARE)

	-- Festival Lantern -- 55574
	pet = AddPet(55574, V.CATA, Q.RARE)

	-- Lunar Lantern -- 55571
	pet = AddPet(55571, V.CATA, Q.RARE)

	-- Pint-Sized Pink Pachyderm -- 24753
	pet = AddPet(24753, V.TBC, Q.RARE)
--[[
--DROP
	-- Parrot Cage (Hyacinth Macaw) -- 10682
	pet = AddPet(10682, V.ORIG, Q.EPIC)

	-- Parrot Cage (Green Wing Macaw) -- 10683
	pet = AddPet(10683, V.ORIG, Q.COMMON)

	-- Cat Carrier (Black Tabby) -- 10675
	pet = AddPet(10675, V.ORIG, Q.COMMON)

	-- Cat Carrier (Siamese) -- 10677
	pet = AddPet(10677, V.ORIG, Q.COMMON)

	-- Dark Whelpling -- 10695
	pet = AddPet(10695, V.ORIG, Q.COMMON)

	-- Azure Whelpling -- 10696
	pet = AddPet(10696, V.ORIG, Q.COMMON)

	-- Tiny Crimson Whelpling -- 10697
	pet = AddPet(10697, V.ORIG, Q.COMMON)

	-- Tiny Emerald Whelpling -- 10698
	pet = AddPet(10698, V.ORIG, Q.COMMON)

	-- Disgusting Oozeling -- 25162
	pet = AddPet(25162, V.ORIG, Q.COMMON)

	-- Captured Firefly -- 36034
	pet = AddPet(36034, V.TBC, Q.COMMON)

	-- Mojo -- 43918
	pet = AddPet(43918, V.TBC, Q.RARE)

	-- Phoenix Hatchling -- 46599
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
]]--
--QUESTS
	-- Mechanical Chicken -- 8376
	pet = AddPet(8376, V.ORIG, Q.COMMON)

	-- Chicken Egg -- 30379
	pet = AddPet(30379, V.ORIG, Q.COMMON)

	-- Sprite Darter Egg -- 9662
	pet = AddPet(9662, V.ORIG, Q.COMMON)

	-- Worg Carrier -- 10259
	pet = AddPet(10259, V.ORIG, Q.RARE)

	-- Smolderweb Egg -- 10598
	pet = AddPet(10598, V.CATA, Q.RARE)

	-- A Jubling's Tiny Home -- 14878
	pet = AddPet(14878, V.ORIG, Q.COMMON)

	-- Miniwing -- 22445
	pet = AddPet(22445, V.TBC, Q.COMMON)

	-- Gold Mini Jouster -- 42183
	pet = AddPet(42183, V.CATA, Q.COMMON)

	-- Blue Mini Jouster -- 42177
	pet = AddPet(42177, V.CATA, Q.COMMON)

	-- Withers -- 34278
	pet = AddPet(34278, V.CATA, Q.COMMON)

	-- Brazie's Sunflower -- 51090
	pet = AddPet(51090, V.CATA, Q.COMMON)

	-- Tiny Flamefly -- 51632
	pet = AddPet(51632, V.CATA, Q.COMMON)

	-- Panther Cub -- 52226
	pet = AddPet(52226, V.CATA, Q.COMMON)

	-- Lashtail Hatchling -- 52894
	pet = AddPet(52894, V.CATA, Q.COMMON)

	-- Alliance Balloon -- 54539
	pet = AddPet(54539, V.CATA, Q.COMMON)

	-- Horde Balloon -- 54541
	pet = AddPet(54541, V.CATA, Q.COMMON)
--[[
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

	-- Ammen Vale Lashling -- 33205
	pet = AddPet(33205, V.WOTLK, Q.RARE)

	-- Enchanted Broom -- 62564
	pet = AddPet(62564, V.WOTLK, Q.RARE)

	-- Mechanopeep -- 62674
	pet = AddPet(62674, V.WOTLK, Q.RARE)

	-- Sen'jin Fetish -- 63712
	pet = AddPet(63712, V.WOTLK, Q.RARE)

--REP VENDOR NEUTRAL
	-- Tiny Sporebat -- 45082
	pet = AddPet(45082, V.TBC, Q.RARE)

	-- Nether Ray Fry -- 51716
	pet = AddPet(51716, V.TBC, Q.RARE)

	-- Tickbird Hatchling -- 61348
	pet = AddPet(61348, V.WOTLK, Q.COMMON)

	-- White Tickbird Hatchling -- 61349
	pet = AddPet(61349, V.WOTLK, Q.COMMON)

	-- Proto-Drake Whelp -- 61350
	pet = AddPet(61350, V.WOTLK, Q.COMMON)

	-- Cobra Hatchling -- 61351
	pet = AddPet(61351, V.WOTLK, Q.COMMON)

	-- Nurtured Penguin Egg -- 61357
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
	-- Parrot Cage (Cockatiel) -- 10680
	pet = AddPet(10680, V.ORIG, Q.COMMON)

	-- Parrot Cage (Senegal) -- 10684
	pet = AddPet(10684, V.ORIG, Q.COMMON)

	-- Ancona Chicken -- 10685
	pet = AddPet(10685, V.ORIG, Q.COMMON)

	-- Wood Frog Box -- 10703
	pet = AddPet(10703, V.ORIG, Q.COMMON)

	-- Tree Frog Box -- 10704
	pet = AddPet(10704, V.ORIG, Q.COMMON)

	-- Crimson Snake -- 10717
	pet = AddPet(10717, V.ORIG, Q.COMMON)

	-- Mana Wyrmling -- 35156
	pet = AddPet(35156, V.TBC, Q.COMMON)

	-- Brown Rabbit Crate -- 35239
	pet = AddPet(35239, V.ORIG, Q.COMMON)

	-- Red Moth Egg -- 35909
	pet = AddPet(35909, V.TBC, Q.COMMON)

	-- Blue Dragonhawk Hatchling -- 36031
	pet = AddPet(36031, V.TBC, Q.COMMON)

	-- Ghostly Skull -- 53316
	pet = AddPet(53316, V.WOTLK, Q.RARE)

	-- Obsidian Hatchling
	pet = AddPet(67417, V.WOTLK, Q.COMMON)

	-- Blue Clockwork Rocket Bot
	pet = AddPet(75134, V.WOTLK, Q.RARE)

	-- Calico Cat
	pet = AddPet(65358, V.WOTLK, Q.COMMON)

	-- Albino Snake
	pet = AddPet(7561, V.WOTLK, Q.COMMON)

	-- Scorched Stone -- 45890
	pet = AddPet(45890, V.TBC, Q.RARE)

--VENDOR HORDE
	-- Cockroach -- 10688
	pet = AddPet(10688, V.ORIG, Q.COMMON)

	-- Prairie Dog Whistle -- 10709
	pet = AddPet(10709, V.ORIG, Q.COMMON)

	-- Black Kingsnake -- 10714
	pet = AddPet(10714, V.ORIG, Q.COMMON)

	-- Brown Snake -- 10716
	pet = AddPet(10716, V.ORIG, Q.COMMON)

	-- Golden Dragonhawk Hatchling -- 36027
	pet = AddPet(36027, V.TBC, Q.COMMON)

	-- Red Dragonhawk Hatchling -- 36028
	pet = AddPet(36028, V.TBC, Q.COMMON)

	-- Silver Dragonhawk Hatchling -- 36029
	pet = AddPet(36029, V.TBC, Q.COMMON)

--VENDOR ALLIANCE
	-- Cat Carrier (Bombay) -- 10673
	pet = AddPet(10673, V.ORIG, Q.COMMON)

	-- Cat Carrier (Cornish Rex) -- 10674
	pet = AddPet(10674, V.ORIG, Q.COMMON)

	-- Cat Carrier (Orange Tabby) -- 10676
	pet = AddPet(10676, V.ORIG, Q.COMMON)

	-- Cat Carrier (Silver Tabby) -- 10678
	pet = AddPet(10678, V.ORIG, Q.COMMON)

	-- Cat Carrier (White Kitten) -- 10679
	pet = AddPet(10679, V.ORIG, Q.COMMON)

	-- Hawk Owl -- 10706
	pet = AddPet(10706, V.ORIG, Q.COMMON)

	-- Great Horned Owl -- 10707
	pet = AddPet(10707, V.ORIG, Q.COMMON)

	-- Rabbit Crate (Snowshoe) -- 10711
	pet = AddPet(10711, V.ORIG, Q.COMMON)

	-- Blue Moth Egg -- 35907
	pet = AddPet(35907, V.TBC, Q.COMMON)

	-- Yellow Moth Egg -- 35910
	pet = AddPet(35910, V.TBC, Q.COMMON)

	-- White Moth Egg -- 35911
	pet = AddPet(35911, V.TBC, Q.COMMON)

--RETIRED
	-- Spirit of Competition -- 48406
	pet = AddPet(48406, V.TBC, Q.RARE)

	-- Essence of Competition -- 48408
	pet = AddPet(48408, V.TBC, Q.UNCOMMON)

	-- Vampiric Batling -- 51851
	pet = AddPet(51851, V.TBC, Q.RARE)

	-- Baby Blizzard Bear -- 61855
	pet = AddPet(61855, V.WOTLK, Q.COMMON)

	-- Murkimus' Little Spear -- 63318
	pet = AddPet(63318, V.WOTLK, Q.RARE)

	-- Onyxian Whelpling -- 69002
	pet = AddPet(69002, V.WOTLK, Q.COMMON)

	-- Mr. Chilly -- 55068
	pet = AddPet(55068, V.WOTLK, Q.RARE)

--COLLECTORS EDITION
	-- Diablo Stone -- 17708
	pet = AddPet(17708, V.ORIG, Q.RARE)

	-- Panda Collar -- 17707
	pet = AddPet(17707, V.ORIG, Q.RARE)
]]--
	-- Zergling Leash -- 11327
	pet = AddPet(11327, V.ORIG, Q.COMMON)
--[[
	-- Lurky's Egg -- 24988
	pet = AddPet(24988, V.ORIG, Q.RARE)

	-- Netherwhelp's Collar -- 32298
	pet = AddPet(32298, V.TBC, Q.RARE)

	-- Frosty's Collar -- 52615
	pet = AddPet(52615, V.WOTLK, Q.RARE)

	-- Mini Thor -- 78381
	pet = AddPet(78381, V.WOTLK, Q.RARE)

	-- Lil' Deathwing -- 87344
	pet = AddPet(87344, V.CATA, Q.RARE)

	-- Fetish Shaman -- 105633
	pet = AddPet(105633, V.CATA, Q.RARE)

	-- Lucky Quilen Cub -- 124660
	pet = AddPet(124660, V.MOP, Q.RARE)

--BLIZZCON
	-- Blue Murloc Egg -- 24696 (Murky)
	pet = AddPet(24696, V.ORIG, Q.RARE)

	-- Heavy Murloc Egg
	pet = AddPet(66030, V.WOTLK, Q.RARE)

	-- Deathy
	pet = AddPet(94070, V.WOTLK, Q.RARE)

	-- Murkablo -- 101606
	pet = AddPet(101606, V.CATA, Q.RARE)

--PROMO
	-- Pink Murloc Egg -- 27241 (Gurky)
	pet = AddPet(27241, V.ORIG, Q.RARE)

	-- Polar Bear Collar -- 28505 (Poley)
	pet = AddPet(28505, V.ORIG, Q.COMMON)

	-- Fortune Coin -- 40405 (Lucky)
	pet = AddPet(40405, V.TBC, Q.RARE)

	-- Tyrael's Hilt -- 53082
	pet = AddPet(53082, V.TBC, Q.RARE)

	-- Warbot
	pet = AddPet(65682, V.WOTLK, Q.RARE)

--TCG
	-- Banana Charm -- 40549
	pet = AddPet(40549, V.TBC, Q.RARE)

	-- Rocket Chicken -- 45125
	pet = AddPet(45125, V.TBC, Q.RARE)

	-- Dragon Kite -- 45127
	pet = AddPet(45127, V.TBC, Q.EPIC)

	-- Hippogryph Hatchling -- 30156
	pet = AddPet(30156, V.TBC, Q.EPIC)

	-- Soul-Trader Beacon -- 49964
	pet = AddPet(49964, V.TBC, Q.RARE)

	-- Tuskarr Kite -- 68767
	pet = AddPet(68767, V.WOTLK, Q.EPIC)

	-- Spectral Tiger Cub -- 68810
	pet = AddPet(68810, V.WOTLK, Q.RARE)

	-- Landro's Lil' XT -- 93624
	pet = AddPet(93624, V.CATA, Q.RARE)

	-- Landro's Lichling -- 96817
	pet = AddPet(96817, V.CATA, Q.RARE)

	-- Nightsaber Cub -- 96819
	pet = AddPet(96819, V.CATA, Q.COMMON)

	-- Purple Puffer -- 101493
	pet = AddPet(101493, V.CATA, Q.RARE)

	-- Gregarious Grell -- 102317
	pet = AddPet(102317, V.CATA, Q.RARE)

	-- Sand Scarab -- 102353
	pet = AddPet(102353, V.CATA, Q.RARE)

--PURCHASED
	-- Lil' K.T. -- 69677
	pet = AddPet(69677, V.WOTLK, Q.RARE)

	-- Pandaren Monk -- 69541
	pet = AddPet(69541, V.WOTLK, Q.RARE)

	-- Gryphon Hatchling -- 69535
	pet = AddPet(69535, V.WOTLK, Q.RARE)

	-- Wind Rider Cub -- 69536
	pet = AddPet(69536, V.WOTLK, Q.RARE)

	-- Lil' XT -- 75906
	pet = AddPet(75906, V.WOTLK, Q.RARE)

	-- Lil' Ragnaros -- 95787
	pet = AddPet(95787, V.WOTLK, Q.RARE)

	-- Cenarion Hatchling -- 99578
	pet = AddPet(99578, V.CATA, Q.EPIC)

	-- Guardian Cub -- 98736
	pet = AddPet(98736, V.CATA, Q.RARE)

	-- Soul of the Aspects -- 110029
	pet = AddPet(110029, V.CATA, Q.RARE)

-- PET BATTLE
	-- Nuts
	pet = AddPet(42183, V.MOP, Q.COMMON)

	-- Stinker
	pet = AddPet(62905, V.MOP, Q.COMMON)

	-- Crystal Beetle
	pet = AddPet(62895, V.MOP, Q.COMMON)

	-- Crimson Shale Hatchling
	pet = AddPet(62893, V.MOP, Q.COMMON)

	-- Stowaway Rat
	pet = AddPet(62892, V.MOP, Q.COMMON)

	-- Twilight Fiendling
	pet = AddPet(62886, V.MOP, Q.COMMON)

	-- Highlands Mouse
	pet = AddPet(62885, V.MOP, Q.COMMON)

	-- Skunk
	pet = AddPet(61327, V.MOP, Q.COMMON)

	-- Yellow-Bellied Marmot
	pet = AddPet(61326, V.MOP, Q.COMMON)

	-- Wildhammer Gryphon Hatchling
	pet = AddPet(62854, V.MOP, Q.COMMON)

	-- Nordrassil Wisp
	pet = AddPet(61329, V.MOP, Q.COMMON)

	-- Strand Crab
	pet = AddPet(61071, V.MOP, Q.COMMON)

	-- Swamp Moth
	pet = AddPet(62835, V.MOP, Q.COMMON)

	-- Tol'vir Scarab
	pet = AddPet(62820, V.MOP, Q.COMMON)

	-- Leopard Scorpid
	pet = AddPet(61158, V.MOP, Q.COMMON)

	-- Oasis Moth
	pet = AddPet(61142, V.MOP, Q.COMMON)

	-- Locust
	pet = AddPet(62395, V.MOP, Q.COMMON)

	-- Mac Frog
	pet = AddPet(62864, V.MOP, Q.COMMON)

	-- Fire-Proof Roach
	pet = AddPet(62927, V.MOP, Q.COMMON)

	-- Carrion Rat
	pet = AddPet(62953, V.MOP, Q.COMMON)

	-- Spider
	pet = AddPet(61081, V.MOP, Q.COMMON)

	-- Scorpid
	pet = AddPet(62991, V.MOP, Q.COMMON)

	-- Scourged Whelpling
	pet = AddPet(62994, V.MOP, Q.COMMON)

	-- Scorpling
	pet = AddPet(62997, V.MOP, Q.COMMON)

	-- Small Frog
	pet = AddPet(58163, V.MOP, Q.COMMON)

	-- Tundra Penguin
	pet = AddPet(62998, V.MOP, Q.COMMON)

	-- Water Waveling
	pet = AddPet(62999, V.MOP, Q.COMMON)

	-- Shore Crab
	pet = AddPet(63003, V.MOP, Q.COMMON)

	-- Snake
	pet = AddPet(63005, V.MOP, Q.COMMON)

	-- Nether Faerie Dragon -- 62395
	pet = AddPet(62395, V.MOP, Q.COMMON)

	-- Arctic Fox Kit -- 62864
	pet = AddPet(62864, V.MOP, Q.COMMON)

	-- Crimson Geode
	pet = AddPet(61829, V.MOP, Q.COMMON)

	-- Sea Gull
	pet = AddPet(61828, V.MOP, Q.COMMON)

	-- Squirrel
	pet = AddPet(61827, V.MOP, Q.COMMON)

	-- Coral Adder
	pet = AddPet(63097, V.MOP, Q.COMMON)

	-- Emerald Turtle
	pet = AddPet(62127, V.MOP, Q.COMMON)

	-- Jungle Darter
	pet = AddPet(62364, V.MOP, Q.COMMON)

	-- Mirror Strider
	pet = AddPet(62435, V.MOP, Q.COMMON)

	-- Temple Snake
	pet = AddPet(62177, V.MOP, Q.COMMON)

	-- Masked Tanuki
	pet = AddPet(62181, V.MOP, Q.COMMON)

	-- Spirebound Crab
	pet = AddPet(62184, V.MOP, Q.COMMON)

	-- Sandy Petrel
	pet = AddPet(62186, V.MOP, Q.COMMON)

	-- Bat
	pet = AddPet(62187, V.MOP, Q.COMMON)

	-- Infected Squirrel
	pet = AddPet(62189, V.MOP, Q.COMMON)

	-- Infected Fawn
	pet = AddPet(62190, V.MOP, Q.COMMON)

	-- Emerald Boa
	pet = AddPet(62114, V.MOP, Q.COMMON)

	-- Ash Lizard
	pet = AddPet(62620, V.MOP, Q.COMMON)

	-- Mountain Skunk
	pet = AddPet(62257, V.MOP, Q.COMMON)

	-- Crystal Spider
	pet = AddPet(62256, V.MOP, Q.COMMON)

	-- Forest Moth
	pet = AddPet(62034, V.MOP, Q.COMMON)

	-- Topaz Shale Hatchling
	pet = AddPet(62246, V.MOP, Q.COMMON)

	-- Rock Viper
	pet = AddPet(62258, V.MOP, Q.COMMON)

	-- Horny Toad
	pet = AddPet(62312, V.MOP, Q.COMMON)

	-- Desert Spider
	pet = AddPet(62313, V.MOP, Q.COMMON)

	-- Stone Armadillo
	pet = AddPet(62314, V.MOP, Q.COMMON)

	-- Alpine Chipmunk
	pet = AddPet(62315, V.MOP, Q.COMMON)

	-- Coral Snake
	pet = AddPet(62316, V.MOP, Q.COMMON)

	-- Spawn of Onyxia
	pet = AddPet(62317, V.MOP, Q.COMMON)

	-- Spiny Lizard
	pet = AddPet(62242, V.MOP, Q.COMMON)

	-- Clefthoof Runt
	pet = AddPet(62370, V.MOP, Q.COMMON)

	-- Sand Kitten
	pet = AddPet(62373, V.MOP, Q.COMMON)

	-- Stinkbug
	pet = AddPet(62375, V.MOP, Q.COMMON)

	-- Spirit Crab
	pet = AddPet(62924, V.MOP, Q.COMMON)

	-- Shimmershell Snail
	pet = AddPet(62255, V.MOP, Q.COMMON)

	-- Silithid Hatchling
	pet = AddPet(62191, V.MOP, Q.COMMON)

	-- Frog
	pet = AddPet(62250, V.MOP, Q.COMMON)

	-- Rusty Snail
	pet = AddPet(62523, V.MOP, Q.COMMON)

	-- Tainted Cockroach
	pet = AddPet(62524, V.MOP, Q.COMMON)

	-- Tainted Moth
	pet = AddPet(61686, V.MOP, Q.COMMON)

	-- Tainted Rat
	pet = AddPet(62526, V.MOP, Q.COMMON)

	-- Minfernal
	pet = AddPet(61689, V.MOP, Q.COMMON)

	-- Crested Owl
	pet = AddPet(62915, V.MOP, Q.COMMON)

	-- Spotted Bell Frog
	pet = AddPet(62555, V.MOP, Q.COMMON)

	-- Silky Moth
	pet = AddPet(62564, V.MOP, Q.COMMON)

	-- Diemetradon Hatchling
	pet = AddPet(62583, V.MOP, Q.COMMON)

	-- Deepholm Cockroach
	pet = AddPet(61441, V.MOP, Q.COMMON)

	-- Twilight Iguana
	pet = AddPet(61440, V.MOP, Q.COMMON)

	-- Venomspitter Hatchling
	pet = AddPet(63850, V.MOP, Q.COMMON)

	-- Darkshore Cub
	pet = AddPet(62621, V.MOP, Q.COMMON)

	-- Sidewinder
	pet = AddPet(62627, V.MOP, Q.COMMON)

	-- Scarab Hatchling
	pet = AddPet(62628, V.MOP, Q.COMMON)

	-- Tiny Bog Beast
	pet = AddPet(62648, V.MOP, Q.COMMON)

	-- Qiraji Guardling
	pet = AddPet(62669, V.MOP, Q.COMMON)

	-- Snow Cub
	pet = AddPet(62852, V.MOP, Q.COMMON)

	-- Emerald Shale Hatchling
	pet = AddPet(62697, V.MOP, Q.COMMON)

	-- Flayer Youngling
	pet = AddPet(62816, V.MOP, Q.COMMON)

	-- Sporeling Sprout
	pet = AddPet(62178, V.MOP, Q.COMMON)

	-- Warpstalker Hatchling
	pet = AddPet(62819, V.MOP, Q.COMMON)

	-- Spiky Lizard
	pet = AddPet(63549, V.MOP, Q.COMMON)

	-- Stripe-Tailed Scorpid
	pet = AddPet(65190, V.MOP, Q.COMMON)

	-- Effervescent Glowfly
	pet = AddPet(34724, V.MOP, Q.COMMON)

	-- Fel Flame
	pet = AddPet(63954, V.MOP, Q.COMMON)

	-- Fledgling Nether Ray
	pet = AddPet(63957, V.MOP, Q.COMMON)

	-- Scalded Basilisk Hatchling
	pet = AddPet(66491, V.MOP, Q.COMMON)

	-- Turkey
	pet = AddPet(64804, V.MOP, Q.COMMON)

	-- Fjord Worg Pup
	pet = AddPet(33810, V.MOP, Q.COMMON)

	-- Dragonbone Hatchling
	pet = AddPet(64242, V.MOP, Q.COMMON)

	-- Oily Slimeling
	pet = AddPet(63551, V.MOP, Q.COMMON)

	-- Stunted Shardhorn
	pet = AddPet(63550, V.MOP, Q.COMMON)

	-- Elfin Rabbit
	pet = AddPet(64352, V.MOP, Q.COMMON)

	-- Imperial Eagle Chick
	pet = AddPet(64238, V.MOP, Q.COMMON)

	-- Grassland Hopper
	pet = AddPet(63548, V.MOP, Q.COMMON)

	-- Mongoose
	pet = AddPet(63838, V.MOP, Q.COMMON)

	-- Mongoose Pup
	pet = AddPet(63841, V.MOP, Q.COMMON)

	-- Yakrat
	pet = AddPet(63842, V.MOP, Q.COMMON)

	-- Silent Hedgehog
	pet = AddPet(63849, V.MOP, Q.COMMON)

	-- Clouded Hedgehog
	pet = AddPet(62916, V.MOP, Q.COMMON)

	-- Rapana Whelk
	pet = AddPet(65314, V.MOP, Q.COMMON)

	-- Resilient Roach
	pet = AddPet(65313, V.MOP, Q.COMMON)

	-- Crunchy Scorpion
	pet = AddPet(65323, V.MOP, Q.COMMON)

	-- Gilded Moth
	pet = AddPet(27217, V.MOP, Q.COMMON)

	-- Golden Civet
	pet = AddPet(25706, V.MOP, Q.COMMON)

	-- Golden Civet Kitten
	pet = AddPet(25147, V.MOP, Q.COMMON)

	-- Dancing Water Skimmer
	pet = AddPet(65321, V.MOP, Q.COMMON)

	-- Yellow-Bellied Bullfrog
	pet = AddPet(64232, V.MOP, Q.COMMON)

	-- Death's Head Cockroach
	pet = AddPet(63621, V.MOP, Q.COMMON)

	-- Fungal Moth
	pet = AddPet(64634, V.MOP, Q.COMMON)

	-- Wild Jade Hatchling
	pet = AddPet(64899, V.MOP, Q.COMMON)

	-- Wild Golden Hatchling
	pet = AddPet(61883, V.MOP, Q.COMMON)

	-- Wild Crimson Hatchling
	pet = AddPet(59358, V.MOP, Q.COMMON)

	-- Singing Cricket
	pet = AddPet(66105, V.MOP, Q.COMMON)

	-- Highlands Skunk
	pet = AddPet(67022, V.MOP, Q.COMMON)

	-- Amethyst Shale Hatchling
	pet = AddPet(16445, V.MOP, Q.COMMON)

	-- Horned Lizard
	pet = AddPet(62693, V.MOP, Q.COMMON)

	-- Jade Tentacle
	pet = AddPet(62641, V.MOP, Q.COMMON)

	-- Wanderer's Festival Hatchling
	pet = AddPet(62906, V.MOP, Q.COMMON)

	-- Snowy Owl
	pet = AddPet(62818, V.MOP, Q.COMMON)

	-- Adder
	pet = AddPet(61368, V.MOP, Q.COMMON)

	-- Skittering Cavern Crawler
	pet = AddPet(62815, V.MOP, Q.COMMON)

	-- Nether Roach
	pet = AddPet(63002, V.MOP, Q.COMMON)

	-- Borean Marmot
	pet = AddPet(54745, V.MOP, Q.COMMON)

	-- Snowshoe Hare
	pet = AddPet(64246, V.MOP, Q.COMMON)

	-- Arctic Hare
	pet = AddPet(51090, V.MOP, Q.COMMON)

	-- Fjord Rat
	pet = AddPet(51635, V.MOP, Q.COMMON)

	-- Highlands Turkey
	pet = AddPet(63304, V.MOP, Q.COMMON)

	-- Chicken
	pet = AddPet(64248, V.MOP, Q.COMMON)

	-- Grizzly Squirrel
	pet = AddPet(63715, V.MOP, Q.COMMON)

	-- Grove Viper
	pet = AddPet(63953, V.MOP, Q.COMMON)

	-- Huge Toad
	pet = AddPet(63919, V.MOP, Q.COMMON)

	-- Biletoad
	pet = AddPet(63716, V.MOP, Q.COMMON)

	-- Garden Frog
	pet = AddPet(63062, V.MOP, Q.COMMON)

	-- Stormwind Rat
	pet = AddPet(63095, V.MOP, Q.COMMON)

	-- Shy Bandicoon
	pet = AddPet(63096, V.MOP, Q.COMMON)

	-- Jungle Grub
	pet = AddPet(63060, V.MOP, Q.COMMON)

	-- Summit Kid
	pet = AddPet(63559, V.MOP, Q.COMMON)

	-- Jumping Spider
	pet = AddPet(63365, V.MOP, Q.COMMON)

	-- Kuitan Mongoose
	pet = AddPet(63288, V.MOP, Q.COMMON)

	-- Leopard Tree Frog
	pet = AddPet(63291, V.MOP, Q.COMMON)

	-- Masked Tanuki Pup
	pet = AddPet(65124, V.MOP, Q.COMMON)

	-- Bandicoon
	pet = AddPet(65185, V.MOP, Q.COMMON)

	-- Bandicoon Kit
	pet = AddPet(63293, V.MOP, Q.COMMON)

	-- Malayan Quillrat
	pet = AddPet(63547, V.MOP, Q.COMMON)

	-- Malayan Quillrat Pup
	pet = AddPet(59702, V.MOP, Q.COMMON)

	-- Marsh Fiddler
	pet = AddPet(63585, V.MOP, Q.COMMON)

	-- Sifang Otter
	pet = AddPet(62884, V.MOP, Q.COMMON)

	-- Sifang Otter Pup
	pet = AddPet(36511, V.MOP, Q.COMMON)

	-- Softshell Snapling
	pet = AddPet(63557, V.MOP, Q.COMMON)

	-- Amethyst Spiderling
	pet = AddPet(65187, V.MOP, Q.COMMON)

	-- Savory Beetle
	pet = AddPet(34694, V.MOP, Q.COMMON)

	-- Mei Li Sparkler
	pet = AddPet(35395, V.MOP, Q.COMMON)

	-- Spiny Terrapin
	pet = AddPet(35400, V.MOP, Q.COMMON)

	-- Plains Monitor
	pet = AddPet(35394, V.MOP, Q.COMMON)

	-- Szechuan Chicken
	pet = AddPet(36482, V.MOP, Q.COMMON)

	-- Grotto Vole
	pet = AddPet(36908, V.MOP, Q.COMMON)

	-- Tolai Hare
	pet = AddPet(36909, V.MOP, Q.COMMON)

	-- Tolai Hare Pup
	pet = AddPet(33194, V.MOP, Q.COMMON)

	-- Amber Moth
	pet = AddPet(38374, V.MOP, Q.COMMON)

	-- Celestial Dragon
	pet = AddPet(50468, V.MOP, Q.COMMON)

	-- Fire Beetle
	pet = AddPet(61171, V.MOP, Q.COMMON)

	-- Forest Spiderling
	pet = AddPet(45340, V.MOP, Q.COMMON)

	-- Fledgling Buzzard
	pet = AddPet(25109, V.MOP, Q.COMMON)

	-- Fawn
	pet = AddPet(26119, V.MOP, Q.COMMON)

	-- Festering Maggot
	pet = AddPet(31575, V.MOP, Q.COMMON)

	-- Toad
	pet = AddPet(61690, V.MOP, Q.COMMON)

	-- Lava Crab
	pet = AddPet(61691, V.MOP, Q.COMMON)

	-- Moccasin
	pet = AddPet(61704, V.MOP, Q.COMMON)

	-- Roach
	pet = AddPet(61703, V.MOP, Q.COMMON)

	-- Ash Viper
	pet = AddPet(61718, V.MOP, Q.COMMON)

	-- Ash Spiderling
	pet = AddPet(61751, V.MOP, Q.COMMON)

	-- Lava Beetle
	pet = AddPet(61752, V.MOP, Q.COMMON)

	-- Molten Hatchling
	pet = AddPet(61753, V.MOP, Q.COMMON)

	-- Gold Beetle
	pet = AddPet(61757, V.MOP, Q.COMMON)

	-- Rattlesnake
	pet = AddPet(61758, V.MOP, Q.COMMON)

	-- King Snake
	pet = AddPet(61890, V.MOP, Q.COMMON)

	-- Little Black Ram
	pet = AddPet(61826, V.MOP, Q.COMMON)

	-- Restless Shadeling
	pet = AddPet(61905, V.MOP, Q.COMMON)

	-- Alpine Hare
	pet = AddPet(62019, V.MOP, Q.COMMON)

	-- Irradiated Roach
	pet = AddPet(62020, V.MOP, Q.COMMON)

	-- Grasslands Cottontail
	pet = AddPet(62022, V.MOP, Q.COMMON)

	-- Tiny Twister
	pet = AddPet(62050, V.MOP, Q.COMMON)

	-- Jade Oozeling
	pet = AddPet(17255, V.MOP, Q.COMMON)

	-- Hare
	pet = AddPet(62051, V.MOP, Q.COMMON)

	-- Brown Marmot
	pet = AddPet(62116, V.MOP, Q.COMMON)

	-- Maggot
	pet = AddPet(62115, V.MOP, Q.COMMON)

	-- Red-Tailed Chipmunk
	pet = AddPet(62118, V.MOP, Q.COMMON)

	-- Infested Bear Cub
	pet = AddPet(62117, V.MOP, Q.COMMON)

	-- Blighted Squirrel
	pet = AddPet(62119, V.MOP, Q.COMMON)

	-- Blighthawk
	pet = AddPet(62120, V.MOP, Q.COMMON)

	-- Lost of Lordaeron
	pet = AddPet(62121, V.MOP, Q.COMMON)

	-- Cat
	pet = AddPet(62129, V.MOP, Q.COMMON)

	-- Ruby Sapling
	pet = AddPet(62130, V.MOP, Q.COMMON)

	-- Larva
	pet = AddPet(62176, V.MOP, Q.COMMON)

	-- Grey Moth
	pet = AddPet(7391, V.MOP, Q.COMMON)

	-- Dung Beetle
	pet = AddPet(54383, V.MOP, Q.COMMON)

	-- Twilight Beetle
	pet = AddPet(54438, V.MOP, Q.COMMON)

	-- Twilight Spider
	pet = AddPet(54491, V.MOP, Q.COMMON)

	-- Robo-Chick
	pet = AddPet(54539, V.MOP, Q.COMMON)

	-- Rabid Nut Varmint 5000
	pet = AddPet(54730, V.MOP, Q.COMMON)

	-- Turquoise Turtle
	pet = AddPet(54487, V.MOP, Q.COMMON)

	-- Cheetah Cub
	pet = AddPet(55187, V.MOP, Q.COMMON)

	-- Giraffe Calf
	pet = AddPet(55215, V.MOP, Q.COMMON)

	-- Gazelle Fawn
	pet = AddPet(55356, V.MOP, Q.COMMON)

	-- Brilliant Kaliri
	pet = AddPet(56082, V.MOP, Q.COMMON)

	-- Undercity Rat
	pet = AddPet(61258, V.MOP, Q.COMMON)

	-- Black Lamb
	pet = AddPet(61259, V.MOP, Q.COMMON)

	-- Rabbit
	pet = AddPet(61313, V.MOP, Q.COMMON)

	-- Bucktooth Flapper
	pet = AddPet(61317, V.MOP, Q.COMMON)

	-- Mouse
	pet = AddPet(61319, V.MOP, Q.COMMON)

	-- Prairie Dog
	pet = AddPet(61321, V.MOP, Q.COMMON)

	-- Tiny Harvester
	pet = AddPet(61322, V.MOP, Q.COMMON)

	-- Mountain Cottontail
	pet = AddPet(61324, V.MOP, Q.COMMON)

	-- Redridge Rat
	pet = AddPet(54128, V.MOP, Q.COMMON)

	-- Cockroach
	pet = AddPet(61366, V.MOP, Q.COMMON)

	-- Dusk Spiderling
	pet = AddPet(53661, V.MOP, Q.COMMON)

	-- Black Rat
	pet = AddPet(61367, V.MOP, Q.COMMON)
]]--
	self.InitCritters = nil
end
