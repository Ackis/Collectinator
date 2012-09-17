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

--DROP
	-- Parrot Cage (Hyacinth Macaw) -- 7391
	pet = AddPet(7391, V.ORIG, Q.EPIC)

	-- Parrot Cage (Green Wing Macaw) -- 7387
	pet = AddPet(7387, V.ORIG, Q.COMMON)

	-- Cat Carrier (Black Tabby) -- 7383
	pet = AddPet(7383, V.ORIG, Q.COMMON)

	-- Cat Carrier (Siamese) -- 7380
	pet = AddPet(7380, V.ORIG, Q.COMMON)

	-- Dark Whelpling -- 7543
	pet = AddPet(7543, V.ORIG, Q.COMMON)

	-- Azure Whelpling -- 7547
	pet = AddPet(7547, V.ORIG, Q.COMMON)

	-- Tiny Crimson Whelpling -- 7544
	pet = AddPet(7544, V.ORIG, Q.COMMON)

	-- Tiny Emerald Whelpling -- 7545
	pet = AddPet(7545, V.ORIG, Q.COMMON)

	-- Disgusting Oozeling -- 15429
	pet = AddPet(15429, V.ORIG, Q.COMMON)

	-- Captured Firefly -- 21076
	pet = AddPet(21076, V.TBC, Q.COMMON)

	-- Mojo -- 24480
	pet = AddPet(24480, V.TBC, Q.RARE)

	-- Phoenix Hatchling -- 26119
	pet = AddPet(26119, V.TBC, Q.RARE)

	-- Darting Hatchling -- 35396
	pet = AddPet(35396, V.WOTLK, Q.COMMON)

	-- Deviate Hatchling -- 35395
	pet = AddPet(35395, V.WOTLK, Q.COMMON)

	-- Gundrak Hatchling -- 35400
	pet = AddPet(35400, V.WOTLK, Q.COMMON)

	-- Leaping Hatchling -- 35387
	pet = AddPet(35387, V.WOTLK, Q.COMMON)

	-- Ravasaur Hatchling -- 35397
	pet = AddPet(35397, V.WOTLK, Q.COMMON)

	-- Razormaw Hatchling -- 35398
	pet = AddPet(35398, V.WOTLK, Q.COMMON)

	-- Razzashi Hatchling -- 35394
	pet = AddPet(35394, V.WOTLK, Q.COMMON)

	-- Mr. Grubbs -- 50586
	pet = AddPet(50586, V.CATA, Q.COMMON)

	-- Tiny Shale Spider -- 48982
	pet = AddPet(48982, V.CATA, Q.COMMON)

	-- Fox Kit -- 48641
	pet = AddPet(48641, V.CATA, Q.RARE)

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

--REP VENDOR ARGENT
	-- Teldrassil Sproutling -- 33188
	pet = AddPet(33188, V.WOTLK, Q.RARE)

	-- Dun Morogh Cub -- 33194
	pet = AddPet(33194, V.WOTLK, Q.RARE)

	-- Tirisfal Batling -- 33197
	pet = AddPet(33197, V.WOTLK, Q.RARE)

	-- Durotar Scorpion -- 33198
	pet = AddPet(33198, V.WOTLK, Q.RARE)

	-- Elwynn Lamb -- 33200
	pet = AddPet(33200, V.WOTLK, Q.RARE)

	-- Mulgore Hatchling -- 33219
	pet = AddPet(33219, V.WOTLK, Q.RARE)

	-- Ammen Vale Lashling -- 33205
	pet = AddPet(33205, V.WOTLK, Q.RARE)

	-- Enchanted Broom -- 33227
	pet = AddPet(33227, V.WOTLK, Q.RARE)

	-- Mechanopeep -- 33274
	pet = AddPet(33274, V.WOTLK, Q.RARE)

	-- Sen'jin Fetish -- 33810
	pet = AddPet(33810, V.WOTLK, Q.RARE)

--REP VENDOR NEUTRAL
	-- Tiny Sporebat -- 25062
	pet = AddPet(25062, V.TBC, Q.RARE)

	-- Nether Ray Fry -- 28470
	pet = AddPet(28470, V.TBC, Q.RARE)

	-- Tickbird Hatchling -- 32589
	pet = AddPet(32589, V.WOTLK, Q.COMMON)

	-- White Tickbird Hatchling -- 32590
	pet = AddPet(32590, V.WOTLK, Q.COMMON)

	-- Proto-Drake Whelp -- 32592
	pet = AddPet(32592, V.WOTLK, Q.COMMON)

	-- Cobra Hatchling -- 32591
	pet = AddPet(32591, V.WOTLK, Q.COMMON)

	-- Nurtured Penguin Egg -- 32595
	pet = AddPet(32595, V.WOTLK, Q.RARE)

	-- Rustberg Gull -- 48107
	pet = AddPet(48107, V.CATA, Q.RARE)

	-- Winterspring Cub -- 52831
	pet = AddPet(52831, V.CATA, Q.COMMON)

	-- Crimson Lasher -- 53661
	pet = AddPet(53661, V.CATA, Q.RARE)

	-- Hyjal Bear Cub -- 53658
	pet = AddPet(53658, V.CATA, Q.RARE)

--VENDOR NEUTRAL
	-- Parrot Cage (Cockatiel) -- 7390
	pet = AddPet(7390, V.ORIG, Q.COMMON)

	-- Parrot Cage (Senegal) -- 7389
	pet = AddPet(7389, V.ORIG, Q.COMMON)

	-- Ancona Chicken -- 7394
	pet = AddPet(7394, V.ORIG, Q.COMMON)

	-- Wood Frog Box -- 7550
	pet = AddPet(7550, V.ORIG, Q.COMMON)

	-- Tree Frog Box -- 7549
	pet = AddPet(7549, V.ORIG, Q.COMMON)

	-- Crimson Snake -- 7567
	pet = AddPet(7567, V.ORIG, Q.COMMON)

	-- Mana Wyrmling -- 20408
	pet = AddPet(20408, V.TBC, Q.COMMON)

	-- Brown Rabbit Crate -- 20472
	pet = AddPet(20472, V.ORIG, Q.COMMON)

	-- Red Moth Egg -- 21009
	pet = AddPet(21009, V.TBC, Q.COMMON)

	-- Blue Dragonhawk Hatchling -- 21056
	pet = AddPet(21056, V.TBC, Q.COMMON)

	-- Ghostly Skull -- 29147
	pet = AddPet(29147, V.WOTLK, Q.RARE)

	-- Obsidian Hatchling -- 35399
	pet = AddPet(35399, V.WOTLK, Q.COMMON)

	-- Blue Clockwork Rocket Bot -- 40295
	pet = AddPet(40295, V.WOTLK, Q.RARE)

	-- Calico Cat -- 34364
	pet = AddPet(34364, V.WOTLK, Q.COMMON)

	-- Albino Snake -- 7561
	pet = AddPet(7561, V.WOTLK, Q.COMMON)

	-- Scorched Stone -- 25706
	pet = AddPet(25706, V.TBC, Q.RARE)

--VENDOR HORDE
	-- Cockroach -- 7395
	pet = AddPet(7395, V.ORIG, Q.COMMON)

	-- Prairie Dog Whistle -- 14421
	pet = AddPet(14421, V.ORIG, Q.COMMON)

	-- Black Kingsnake -- 7565
	pet = AddPet(7565, V.ORIG, Q.COMMON)

	-- Brown Snake -- 7562
	pet = AddPet(7562, V.ORIG, Q.COMMON)

	-- Golden Dragonhawk Hatchling -- 21055
	pet = AddPet(21055, V.TBC, Q.COMMON)

	-- Red Dragonhawk Hatchling -- 21064
	pet = AddPet(21064, V.TBC, Q.COMMON)

	-- Silver Dragonhawk Hatchling -- 21063
	pet = AddPet(21063, V.TBC, Q.COMMON)
--[[
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
]]--

-- PET BATTLE
	-- Snowy Owl -- 7554
	--[[ Pet Battle: Winterspring
Season: Winter ]]--
	pet = AddPet(7554, V.MOP, Q.COMMON)

	-- Prairie Mouse -- 59702
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(59702, V.MOP, Q.COMMON)

	-- Black Lamb -- 60649
	--[[ Pet Battle: Elwynn Forest ]]--
	pet = AddPet(60649, V.MOP, Q.COMMON)

	-- Small Frog -- 61071
	--[[ Pet Battle: Arathi Highlands, Darnassus, Desolace, Dun Morogh, Elwynn Forest, Eversong Woods, Ghostlands, Gilneas, Loch Modan, Northern Barrens, Southern Barrens, Swamp of Sorrows, Teldrassil, The Lost Isles, Zangarmarsh ]]--
	pet = AddPet(61071, V.MOP, Q.COMMON)

	-- Rabbit -- 61080
	--[[ Pet Battle: Azshara, Azuremyst Isle, Blade's Edge Mountains, Crystalsong Forest, Darkshore, Dun Morogh, Duskwood, Elwynn Forest, Eversong Woods, Feralas, Hillsbrad Foothills, Howling Fjord, Moonglade, Mount Hyjal, Mulgore, Nagrand, Redridge Mountains, Scarlet Monastery, Silvermoon City, Silverpine Forest, Stonetalon Mountains, Stormwind City, Teldrassil, The Culling of Stratholme, Tirisfal Glades, Western Plaguelands, Wetlands ]]--
	pet = AddPet(61080, V.MOP, Q.COMMON)

	-- Squirrel -- 61081
	--[[ Pet Battle: Ashenvale, Azshara, Azuremyst Isle, Blade's Edge Mountains, Crystalsong Forest, Darkshore, Dun Morogh, Duskwood, Dustwallow Marsh, Elwynn Forest, Feralas, Gilneas, Hillsbrad Foothills, Howling Fjord, Loch Modan, Magisters' Terrace, Moonglade, Mount Hyjal, Nagrand, Ruins of Gilneas, Sholazar Basin, Silverpine Forest, Stormwind City, Teldrassil, Terokkar Forest, Tol Barad Peninsula, Well of Eternity, Western Plaguelands, Wetlands, Zul'Aman ]]--
	pet = AddPet(61081, V.MOP, Q.COMMON)

	-- Prairie Dog -- 61141
	--[[ Pet Battle: Arathi Highlands, Mulgore, Nagrand, Northern Barrens, Stormwind City, Westfall ]]--
	pet = AddPet(61141, V.MOP, Q.COMMON)

	-- Snake -- 61142
	--[[ Pet Battle: Black Temple, Dun Morogh, Dustwallow Marsh, Eversong Woods, Feralas, Ghostlands, Gilneas, Gundrak, Howling Fjord, Loch Modan, Nagrand, Northern Stranglethorn, Sholazar Basin, Silverpine Forest, Sunken Temple, Terokkar Forest, The Black Morass, The Shattered Halls, Tol Barad, Wailing Caverns, Westfall, Zangarmarsh, Zul'Drak ]]--
	pet = AddPet(61142, V.MOP, Q.COMMON)

	-- Mouse -- 61143
	--[[ Pet Battle: Duskwood, Dustwallow Marsh, Grizzly Hills, Mulgore, Netherstorm, Westfall, Wetlands ]]--
	pet = AddPet(61143, V.MOP, Q.COMMON)

	-- Shore Crab -- 61158
	--[[ Pet Battle: Azshara, Borean Tundra, Howling Fjord, Krasarang Wilds, Twilight Highlands, Westfall ]]--
	pet = AddPet(61158, V.MOP, Q.COMMON)

	-- Tiny Harvester -- 61160
	--[[ Pet Battle: Westfall ]]--
	pet = AddPet(61160, V.MOP, Q.COMMON)

	-- Fawn -- 61165
	--[[ Pet Battle: Elwynn Forest, Grizzly Hills, Teldrassil, The Culling of Stratholme ]]--
	pet = AddPet(61165, V.MOP, Q.COMMON)

	-- Mountain Cottontail -- 61167
	--[[ Pet Battle: Mulgore, Redridge Mountains ]]--
	pet = AddPet(61167, V.MOP, Q.COMMON)

	-- Redridge Rat -- 61168
	--[[ Pet Battle: Redridge Mountains ]]--
	pet = AddPet(61168, V.MOP, Q.COMMON)

	-- Roach -- 61169
	--[[ Pet Battle: Ahn'Qiraj, Ahn'kahet: The Old Kingdom, Ashenvale, Azjol-Nerub, Azshara, Desolace, Dun Morogh, Duskwood, Gilneas, Gilneas City, Howling Fjord, Icecrown Citadel, Kezan, Loch Modan, Northern Stranglethorn, Razorfen Downs, Redridge Mountains, Ruins of Ahn'Qiraj, Stonetalon Mountains, The Cape of Stranglethorn, The Culling of Stratholme, Thousand Needles, Tirisfal Glades ]]--
	pet = AddPet(61169, V.MOP, Q.COMMON)

	-- Fledgling Buzzard -- 61171
	--[[ Pet Battle: Redridge Mountains ]]--
	pet = AddPet(61171, V.MOP, Q.COMMON)

	-- Dusk Spiderling -- 61253
	--[[ Pet Battle: Duskwood ]]--
	pet = AddPet(61253, V.MOP, Q.COMMON)

	-- Skunk -- 61255
	--[[ Pet Battle: Azshara, Azuremyst Isle, Bloodmyst Isle, Duskwood, Gilneas, Howling Fjord, Terokkar Forest ]]--
	pet = AddPet(61255, V.MOP, Q.COMMON)

	-- Black Rat -- 61257
	--[[ Pet Battle: Ahn'kahet: The Old Kingdom, Badlands, Crypt of Forgotten Kings, Drak'Tharon Keep, Dun Morogh, Duskwood, Dustwallow Marsh, Eastern Plaguelands, Halls of Stone, Icecrown Citadel, Kezan, Pit of Saron, Razorfen Downs, ScholomanceOLD, Shadowfang Keep, Sunwell Plateau, The Forge of Souls, The Shattered Halls, The Violet Hold, Thousand Needles, Twilight Highlands, Utgarde Keep, Utgarde Pinnacle, Western Plaguelands, Wetlands ]]--
	pet = AddPet(61257, V.MOP, Q.COMMON)

	-- Strand Crab -- 61312
	--[[ Pet Battle: Ashenvale, Dragonblight, Dun Morogh, Gilneas, Kezan, Northern Stranglethorn, Swamp of Sorrows, The Cape of Stranglethorn, The Lost Isles ]]--
	pet = AddPet(61312, V.MOP, Q.COMMON)

	-- Forest Spiderling -- 61320
	--[[ Pet Battle: Northern Stranglethorn, The Cape of Stranglethorn ]]--
	pet = AddPet(61320, V.MOP, Q.COMMON)

	-- Adder -- 61325
	--[[ Pet Battle: Blasted Lands, Dun Morogh, Durotar, Hellfire Peninsula, Nagrand, Northern Barrens, Northern Stranglethorn ]]--
	pet = AddPet(61325, V.MOP, Q.COMMON)

	-- Scorpid -- 61326
	--[[ Pet Battle: Ahn'Qiraj, Blade's Edge Mountains, Blasted Lands, Burning Steppes, Eastern Plaguelands, Hellfire Peninsula, Orgrimmar, Ruins of Ahn'Qiraj, Shadowmoon Valley, Silithus, Thousand Needles, Twilight Highlands ]]--
	pet = AddPet(61326, V.MOP, Q.COMMON)

	-- Spider -- 61327
	--[[ Pet Battle: Ahn'kahet: The Old Kingdom, Azjol-Nerub, Azshara, Black Temple, Blasted Lands, Drak'Tharon Keep, Dun Morogh, Dustwallow Marsh, Eastern Plaguelands, Elwynn Forest, Ghostlands, Gilneas, Gilneas City, Halls of Reflection, Hillsbrad Foothills, Howling Fjord, Icecrown Citadel, Karazhan, Naxxramas, Orgrimmar, Pit of Saron, Ruins of Gilneas, Stonetalon Mountains, Swamp of Sorrows, Teldrassil, The Culling of Stratholme, The Forge of Souls, The Hinterlands, The Storm Peaks, The Violet Hold, Tirisfal Glades, Utgarde Keep, Utgarde Pinnacle, Winterspring, Zul'Aman, Zul'Drak ]]--
	pet = AddPet(61327, V.MOP, Q.COMMON)

	-- Fire Beetle -- 61328
	--[[ Pet Battle: Blasted Lands, Burning Steppes, Mount Hyjal, Searing Gorge, The Shattered Halls, Un'Goro Crater ]]--
	pet = AddPet(61328, V.MOP, Q.COMMON)

	-- Scorpling -- 61329
	--[[ Pet Battle: Blasted Lands ]]--
	pet = AddPet(61329, V.MOP, Q.COMMON)

	-- Huge Toad -- 61368
	--[[ Pet Battle: Hillsbrad Foothills, Swamp of Sorrows, Twilight Highlands, Zul'Drak ]]--
	pet = AddPet(61368, V.MOP, Q.COMMON)

	-- Toad -- 61369
	--[[ Pet Battle: Ashenvale, Black Temple, Dun Morogh, Durotar, Dustwallow Marsh, Eversong Woods, Felwood, Ghostlands, Gilneas, Hillsbrad Foothills, Howling Fjord, Nagrand, Orgrimmar, Ruins of Gilneas, Silverpine Forest, Swamp of Sorrows, Teldrassil, Wetlands ]]--
	pet = AddPet(61369, V.MOP, Q.COMMON)

	-- Swamp Moth -- 61370
	--[[ Pet Battle: Swamp of Sorrows ]]--
	pet = AddPet(61370, V.MOP, Q.COMMON)

	-- Moccasin -- 61372
	--[[ Pet Battle: Swamp of Sorrows ]]--
	pet = AddPet(61372, V.MOP, Q.COMMON)

	-- Restless Shadeling -- 61375
	--[[ Pet Battle: Deadwind Pass
Time: Early Morning ]]--
	pet = AddPet(61375, V.MOP, Q.COMMON)

	-- Lava Crab -- 61383
	--[[ Pet Battle: Burning Steppes, Searing Gorge ]]--
	pet = AddPet(61383, V.MOP, Q.COMMON)

	-- Cockroach -- 61384
	--[[ Pet Battle: Burning Steppes, Eastern Plaguelands, End Time, Icecrown, The Hinterlands, Twilight Highlands, Un'Goro Crater ]]--
	pet = AddPet(61384, V.MOP, Q.COMMON)

	-- Ash Viper -- 61385
	--[[ Pet Battle: Burning Steppes, Shadowmoon Valley ]]--
	pet = AddPet(61385, V.MOP, Q.COMMON)

	-- Lava Beetle -- 61386
	--[[ Pet Battle: Burning Steppes ]]--
	pet = AddPet(61386, V.MOP, Q.COMMON)

	-- Ash Spiderling -- 61420
	--[[ Pet Battle: Searing Gorge ]]--
	pet = AddPet(61420, V.MOP, Q.COMMON)

	-- Molten Hatchling -- 61425
	--[[ Pet Battle: Searing Gorge ]]--
	pet = AddPet(61425, V.MOP, Q.COMMON)

	-- Gold Beetle -- 61438
	--[[ Pet Battle: Badlands, Halls of Lightning, Halls of Stone, Tanaris ]]--
	pet = AddPet(61438, V.MOP, Q.COMMON)

	-- Rattlesnake -- 61439
	--[[ Pet Battle: Badlands, Tanaris, Twilight Highlands ]]--
	pet = AddPet(61439, V.MOP, Q.COMMON)

	-- Stripe-Tailed Scorpid -- 61440
	--[[ Pet Battle: Badlands, Tanaris, Terokkar Forest ]]--
	pet = AddPet(61440, V.MOP, Q.COMMON)

	-- Spiky Lizard -- 61441
	--[[ Pet Battle: Badlands, Silithus ]]--
	pet = AddPet(61441, V.MOP, Q.COMMON)

	-- King Snake -- 61443
	--[[ Pet Battle: Badlands ]]--
	pet = AddPet(61443, V.MOP, Q.COMMON)

	-- Little Black Ram -- 61459
	--[[ Pet Battle: Loch Modan ]]--
	pet = AddPet(61459, V.MOP, Q.COMMON)

	-- Mountain Skunk -- 61677
	--[[ Pet Battle: Grizzly Hills, Stonetalon Mountains, The Storm Peaks, Wetlands, Winterspring ]]--
	pet = AddPet(61677, V.MOP, Q.COMMON)

	-- Tiny Bog Beast -- 61686
	--[[ Pet Battle: Wetlands ]]--
	pet = AddPet(61686, V.MOP, Q.COMMON)

	-- Snow Cub -- 61689
	--[[ Pet Battle: Dun Morogh ]]--
	pet = AddPet(61689, V.MOP, Q.COMMON)

	-- Alpine Hare -- 61690
	--[[ Pet Battle: Dun Morogh, Winterspring ]]--
	pet = AddPet(61690, V.MOP, Q.COMMON)

	-- Irradiated Roach -- 61691
	--[[ Pet Battle: Dun Morogh ]]--
	pet = AddPet(61691, V.MOP, Q.COMMON)

	-- Tiny Twister -- 61703
	--[[ Pet Battle: Arathi Highlands ]]--
	pet = AddPet(61703, V.MOP, Q.COMMON)

	-- Grasslands Cottontail -- 61704
	--[[ Pet Battle: Arathi Highlands ]]--
	pet = AddPet(61704, V.MOP, Q.COMMON)

	-- Jade Oozeling -- 61718
	--[[ Pet Battle: The Hinterlands ]]--
	pet = AddPet(61718, V.MOP, Q.COMMON)

	-- Hare -- 61751
	--[[ Pet Battle: Arathi Highlands, Durotar, The Hinterlands ]]--
	pet = AddPet(61751, V.MOP, Q.COMMON)

	-- Brown Marmot -- 61752
	--[[ Pet Battle: Blade's Edge Mountains, The Hinterlands ]]--
	pet = AddPet(61752, V.MOP, Q.COMMON)

	-- Maggot -- 61753
	--[[ Pet Battle: Ashenvale, Dun Morogh, Ghostlands, Hillsbrad Foothills, Howling Fjord, Naxxramas, The Hinterlands, Tirisfal Glades ]]--
	pet = AddPet(61753, V.MOP, Q.COMMON)

	-- Snowshoe Hare -- 61755
	--[[ Pet Battle: Hillsbrad Foothills ]]--
	pet = AddPet(61755, V.MOP, Q.COMMON)

	-- Red-Tailed Chipmunk -- 61757
	--[[ Pet Battle: Darnassus, Desolace, Hillsbrad Foothills, Teldrassil ]]--
	pet = AddPet(61757, V.MOP, Q.COMMON)

	-- Infested Bear Cub -- 61758
	--[[ Pet Battle: Hillsbrad Foothills ]]--
	pet = AddPet(61758, V.MOP, Q.COMMON)

	-- Blighthawk -- 61826
	--[[ Pet Battle: Western Plaguelands ]]--
	pet = AddPet(61826, V.MOP, Q.COMMON)

	-- Infected Fawn -- 61827
	--[[ Pet Battle: Bloodmyst Isle, Eastern Plaguelands, Silverpine Forest ]]--
	pet = AddPet(61827, V.MOP, Q.COMMON)

	-- Infected Squirrel -- 61828
	--[[ Pet Battle: Bloodmyst Isle, Eastern Plaguelands, Silverpine Forest ]]--
	pet = AddPet(61828, V.MOP, Q.COMMON)

	-- Bat -- 61829
	--[[ Pet Battle: Eastern Plaguelands, Mount Hyjal, Tirisfal Glades ]]--
	pet = AddPet(61829, V.MOP, Q.COMMON)

	-- Festering Maggot -- 61830
	--[[ Pet Battle: Eastern Plaguelands ]]--
	pet = AddPet(61830, V.MOP, Q.COMMON)

	-- Undercity Rat -- 61889
	--[[ Pet Battle: Tirisfal Glades ]]--
	pet = AddPet(61889, V.MOP, Q.COMMON)

	-- Blighted Squirrel -- 61890
	--[[ Pet Battle: Silverpine Forest ]]--
	pet = AddPet(61890, V.MOP, Q.COMMON)

	-- Lost of Lordaeron -- 61905
	--[[ Pet Battle: Tirisfal Glades ]]--
	pet = AddPet(61905, V.MOP, Q.COMMON)

	-- Cat -- 62019
	--[[ Pet Battle: Arathi Highlands, Elwynn Forest, Eversong Woods, Gilneas City, Netherstorm, Silvermoon City, The Culling of Stratholme ]]--
	pet = AddPet(62019, V.MOP, Q.COMMON)

	-- Ruby Sapling -- 62020
	--[[ Pet Battle: Eversong Woods ]]--
	pet = AddPet(62020, V.MOP, Q.COMMON)

	-- Larva -- 62022
	--[[ Pet Battle: Ghostlands, Naxxramas ]]--
	pet = AddPet(62022, V.MOP, Q.COMMON)

	-- Spirit Crab -- 62034
	--[[ Pet Battle: Ghostlands ]]--
	pet = AddPet(62034, V.MOP, Q.COMMON)

	-- Grey Moth -- 62050
	--[[ Pet Battle: Azuremyst Isle ]]--
	pet = AddPet(62050, V.MOP, Q.COMMON)

	-- Ravager Hatchling -- 62051
	--[[ Pet Battle: Bloodmyst Isle ]]--
	pet = AddPet(62051, V.MOP, Q.COMMON)

	-- Spiny Lizard -- 62114
	--[[ Pet Battle: Durotar, Orgrimmar ]]--
	pet = AddPet(62114, V.MOP, Q.COMMON)

	-- Dung Beetle -- 62115
	--[[ Pet Battle: Durotar, Lost City of the Tol'vir, Orgrimmar, Uldum ]]--
	pet = AddPet(62115, V.MOP, Q.COMMON)

	-- Creepy Crawly -- 62116
	--[[ Pet Battle: Durotar ]]--
	pet = AddPet(62116, V.MOP, Q.COMMON)

	-- Twilight Spider -- 62117
	--[[ Pet Battle: Azshara, Deepholm, Twilight Highlands ]]--
	pet = AddPet(62117, V.MOP, Q.COMMON)

	-- Twilight Beetle -- 62118
	--[[ Pet Battle: Azshara, Deepholm, Mount Hyjal ]]--
	pet = AddPet(62118, V.MOP, Q.COMMON)

	-- Robo-Chick -- 62119
	--[[ Pet Battle: Azshara, Kezan, Orgrimmar, Winterspring ]]--
	pet = AddPet(62119, V.MOP, Q.COMMON)

	-- Rabid Nut Varmint 5000 -- 62120
	--[[ Pet Battle: Azshara, Kezan, Stonetalon Mountains, Winterspring ]]--
	pet = AddPet(62120, V.MOP, Q.COMMON)

	-- Turquoise Turtle -- 62121
	--[[ Pet Battle: Azshara ]]--
	pet = AddPet(62121, V.MOP, Q.COMMON)

	-- Emerald Boa -- 62127
	--[[ Pet Battle: Lost City of the Tol'vir, Northern Barrens, Southern Barrens, Uldum, Un'Goro Crater ]]--
	pet = AddPet(62127, V.MOP, Q.COMMON)

	-- Cheetah Cub -- 62129
	--[[ Pet Battle: Northern Barrens ]]--
	pet = AddPet(62129, V.MOP, Q.COMMON)

	-- Giraffe Calf -- 62130
	--[[ Pet Battle: Southern Barrens ]]--
	pet = AddPet(62130, V.MOP, Q.COMMON)

	-- Gazelle Fawn -- 62176
	--[[ Pet Battle: Mulgore ]]--
	pet = AddPet(62176, V.MOP, Q.COMMON)

	-- Forest Moth -- 62177
	--[[ Pet Battle: Ashenvale, Darnassus, Desolace, Moonglade, Mount Hyjal, Teldrassil ]]--
	pet = AddPet(62177, V.MOP, Q.COMMON)

	-- Elfin Rabbit -- 62178
	--[[ Pet Battle: Darnassus, Desolace, Mount Hyjal, Teldrassil ]]--
	pet = AddPet(62178, V.MOP, Q.COMMON)

	-- Topaz Shale Hatchling -- 62181
	--[[ Pet Battle: Deepholm, Desolace, The Stonecore ]]--
	pet = AddPet(62181, V.MOP, Q.COMMON)

	-- Amethyst Shale Hatchling -- 62182
	--[[ Pet Battle: Deepholm, Desolace ]]--
	pet = AddPet(62182, V.MOP, Q.COMMON)

	-- Rock Viper -- 62184
	--[[ Pet Battle: Blade's Edge Mountains, Desolace, Mount Hyjal, Silithus ]]--
	pet = AddPet(62184, V.MOP, Q.COMMON)

	-- Horny Toad -- 62185
	--[[ Pet Battle: Desolace ]]--
	pet = AddPet(62185, V.MOP, Q.COMMON)

	-- Desert Spider -- 62186
	--[[ Pet Battle: Desolace, Lost City of the Tol'vir, Silithus, Tanaris, Uldum ]]--
	pet = AddPet(62186, V.MOP, Q.COMMON)

	-- Stone Armadillo -- 62187
	--[[ Pet Battle: Desolace
Time: Night
]]--
	pet = AddPet(62187, V.MOP, Q.COMMON)

	-- Alpine Chipmunk -- 62189
	--[[ Pet Battle: Mount Hyjal, Stonetalon Mountains, Winterspring ]]--
	pet = AddPet(62189, V.MOP, Q.COMMON)

	-- Coral Snake -- 62190
	--[[ Pet Battle: Stonetalon Mountains ]]--
	pet = AddPet(62190, V.MOP, Q.COMMON)

	-- Venomspitter Hatchling -- 62191
	--[[ Pet Battle: Stonetalon Mountains ]]--
	pet = AddPet(62191, V.MOP, Q.COMMON)

	-- Spawn of Onyxia -- 62201
	--[[ Pet Battle: Dustwallow Marsh ]]--
	pet = AddPet(62201, V.MOP, Q.COMMON)

	-- Crested Owl -- 62242
	--[[ Pet Battle: Teldrassil ]]--
	pet = AddPet(62242, V.MOP, Q.COMMON)

	-- Shimmershell Snail -- 62246
	--[[ Pet Battle: Darkshore ]]--
	pet = AddPet(62246, V.MOP, Q.COMMON)

	-- Darkshore Cub -- 62250
	--[[ Pet Battle: Darkshore ]]--
	pet = AddPet(62250, V.MOP, Q.COMMON)

	-- Twilight Iguana -- 62255
	--[[ Pet Battle: Thousand Needles ]]--
	pet = AddPet(62255, V.MOP, Q.COMMON)

	-- Stinkbug -- 62256
	--[[ Pet Battle: Tanaris ]]--
	pet = AddPet(62256, V.MOP, Q.COMMON)

	-- Sand Kitten -- 62257
	--[[ Pet Battle: Tanaris ]]--
	pet = AddPet(62257, V.MOP, Q.COMMON)

	-- Silithid Hatchling -- 62258
	--[[ Pet Battle: Tanaris
Weather: Sandstorm ]]--
	pet = AddPet(62258, V.MOP, Q.COMMON)

	-- Frog -- 62312
	--[[ Pet Battle: Ashenvale, The Lost Isles ]]--
	pet = AddPet(62312, V.MOP, Q.COMMON)

	-- Rusty Snail -- 62313
	--[[ Pet Battle: Ashenvale ]]--
	pet = AddPet(62313, V.MOP, Q.COMMON)

	-- Tainted Cockroach -- 62314
	--[[ Pet Battle: Felwood, Shadowmoon Valley ]]--
	pet = AddPet(62314, V.MOP, Q.COMMON)

	-- Tainted Moth -- 62315
	--[[ Pet Battle: Felwood ]]--
	pet = AddPet(62315, V.MOP, Q.COMMON)

	-- Tainted Rat -- 62316
	--[[ Pet Battle: Felwood ]]--
	pet = AddPet(62316, V.MOP, Q.COMMON)

	-- Minfernal -- 62317
	--[[ Pet Battle: Felwood ]]--
	pet = AddPet(62317, V.MOP, Q.COMMON)

	-- Ash Lizard -- 62364
	--[[ Pet Battle: Mount Hyjal, Un'Goro Crater ]]--
	pet = AddPet(62364, V.MOP, Q.COMMON)

	-- Spotted Bell Frog -- 62370
	--[[ Pet Battle: Un'Goro Crater ]]--
	pet = AddPet(62370, V.MOP, Q.COMMON)

	-- Silky Moth -- 62373
	--[[ Pet Battle: Moonglade, Mount Hyjal, Un'Goro Crater ]]--
	pet = AddPet(62373, V.MOP, Q.COMMON)

	-- Diemetradon Hatchling -- 62375
	--[[ Pet Battle: Un'Goro Crater ]]--
	pet = AddPet(62375, V.MOP, Q.COMMON)

	-- Nether Faerie Dragon -- 62395
	--[[ Pet Battle: Feralas ]]--
	pet = AddPet(62395, V.MOP, Q.COMMON)

	-- Crystal Spider -- 62435
	--[[ Pet Battle: Dun Morogh, The Oculus, Winterspring ]]--
	pet = AddPet(62435, V.MOP, Q.COMMON)

	-- Sidewinder -- 62523
	--[[ Pet Battle: Silithus, Uldum ]]--
	pet = AddPet(62523, V.MOP, Q.COMMON)

	-- Scarab Hatchling -- 62524
	--[[ Pet Battle: Silithus ]]--
	pet = AddPet(62524, V.MOP, Q.COMMON)

	-- Qiraji Guardling -- 62526
	--[[ Pet Battle: Silithus
Season: Summer ]]--
	pet = AddPet(62526, V.MOP, Q.COMMON)

	-- Flayer Youngling -- 62555
	--[[ Pet Battle: Hellfire Peninsula ]]--
	pet = AddPet(62555, V.MOP, Q.COMMON)

	-- Sporeling Sprout -- 62564
	--[[ Pet Battle: Zangarmarsh ]]--
	pet = AddPet(62564, V.MOP, Q.COMMON)

	-- Warpstalker Hatchling -- 62583
	--[[ Pet Battle: Terokkar Forest ]]--
	pet = AddPet(62583, V.MOP, Q.COMMON)

	-- Clefthoof Runt -- 62620
	--[[ Pet Battle: Nagrand ]]--
	pet = AddPet(62620, V.MOP, Q.COMMON)

	-- Fel Flame -- 62621
	--[[ Pet Battle: Shadowmoon Valley ]]--
	pet = AddPet(62621, V.MOP, Q.COMMON)

	-- Nether Roach -- 62625
	--[[ Pet Battle: Netherstorm ]]--
	pet = AddPet(62625, V.MOP, Q.COMMON)

	-- Fledgling Nether Ray -- 62627
	--[[ Pet Battle: Netherstorm ]]--
	pet = AddPet(62627, V.MOP, Q.COMMON)

	-- Scalded Basilisk Hatchling -- 62628
	--[[ Pet Battle: Blade's Edge Mountains ]]--
	pet = AddPet(62628, V.MOP, Q.COMMON)

	-- Skittering Cavern Crawler -- 62638
	--[[ Pet Battle: Blade's Edge Mountains ]]--
	pet = AddPet(62638, V.MOP, Q.COMMON)

	-- Fjord Rat -- 62641
	--[[ Pet Battle: Howling Fjord ]]--
	pet = AddPet(62641, V.MOP, Q.COMMON)

	-- Turkey -- 62648
	--[[ Pet Battle: Howling Fjord ]]--
	pet = AddPet(62648, V.MOP, Q.COMMON)

	-- Chicken -- 62664
	--[[ Pet Battle: Arathi Basin, Azuremyst Isle, Bloodmyst Isle, Duskwood, Dustwallow Marsh, Elwynn Forest, Gilneas, Hillsbrad Foothills, Howling Fjord, Northern Barrens, Redridge Mountains, Shattrath City, Tirisfal Glades, Westfall, Wetlands ]]--
	pet = AddPet(62664, V.MOP, Q.COMMON)

	-- Fjord Worg Pup -- 62669
	--[[ Pet Battle: Howling Fjord ]]--
	pet = AddPet(62669, V.MOP, Q.COMMON)

	-- Arctic Hare -- 62693
	--[[ Pet Battle: Borean Tundra, Dragonblight, The Storm Peaks, Zul'Drak ]]--
	pet = AddPet(62693, V.MOP, Q.COMMON)

	-- Borean Marmot -- 62695
	--[[ Pet Battle: Borean Tundra ]]--
	pet = AddPet(62695, V.MOP, Q.COMMON)

	-- Oily Slimeling -- 62697
	--[[ Pet Battle: Borean Tundra ]]--
	pet = AddPet(62697, V.MOP, Q.COMMON)

	-- Biletoad -- 62815
	--[[ Pet Battle: Northern Barrens, Sholazar Basin, Wailing Caverns ]]--
	pet = AddPet(62815, V.MOP, Q.COMMON)

	-- Stunted Shardhorn -- 62816
	--[[ Pet Battle: Sholazar Basin ]]--
	pet = AddPet(62816, V.MOP, Q.COMMON)

	-- Grizzly Squirrel -- 62818
	--[[ Pet Battle: Grizzly Hills, Twilight Highlands ]]--
	pet = AddPet(62818, V.MOP, Q.COMMON)

	-- Imperial Eagle Chick -- 62819
	--[[ Pet Battle: Grizzly Hills ]]--
	pet = AddPet(62819, V.MOP, Q.COMMON)

	-- Water Waveling -- 62820
	--[[ Pet Battle: Zul'Drak ]]--
	pet = AddPet(62820, V.MOP, Q.COMMON)

	-- Tundra Penguin -- 62835
	--[[ Pet Battle: Borean Tundra, Dragonblight ]]--
	pet = AddPet(62835, V.MOP, Q.COMMON)

	-- Dragonbone Hatchling -- 62852
	--[[ Pet Battle: Dragonblight ]]--
	pet = AddPet(62852, V.MOP, Q.COMMON)

	-- Scourged Whelpling -- 62854
	--[[ Pet Battle: Icecrown ]]--
	pet = AddPet(62854, V.MOP, Q.COMMON)

	-- Arctic Fox Kit -- 62864
	--[[ Pet Battle: The Storm Peaks
Weather: Snow ]]--
	pet = AddPet(62864, V.MOP, Q.COMMON)

	-- Grotto Vole -- 62884
	--[[ Pet Battle: Mount Hyjal ]]--
	pet = AddPet(62884, V.MOP, Q.COMMON)

	-- Carrion Rat -- 62885
	--[[ Pet Battle: Mount Hyjal ]]--
	pet = AddPet(62885, V.MOP, Q.COMMON)

	-- Fire-Proof Roach -- 62886
	--[[ Pet Battle: Mount Hyjal ]]--
	pet = AddPet(62886, V.MOP, Q.COMMON)

	-- Death's Head Cockroach -- 62887
	--[[ Pet Battle: Mount Hyjal
]]--
	pet = AddPet(62887, V.MOP, Q.COMMON)

	-- Nordrassil Wisp -- 62888
	--[[ Pet Battle: Mount Hyjal ]]--
	pet = AddPet(62888, V.MOP, Q.COMMON)

	-- Mac Frog -- 62892
	--[[ Pet Battle: Lost City of the Tol'vir, Uldum ]]--
	pet = AddPet(62892, V.MOP, Q.COMMON)

	-- Locust -- 62893
	--[[ Pet Battle: Lost City of the Tol'vir, Uldum ]]--
	pet = AddPet(62893, V.MOP, Q.COMMON)

	-- Horned Lizard -- 62894
	--[[ Pet Battle: Badlands, Silithus ]]--
	pet = AddPet(62894, V.MOP, Q.COMMON)

	-- Oasis Moth -- 62895
	--[[ Pet Battle: Lost City of the Tol'vir, Uldum ]]--
	pet = AddPet(62895, V.MOP, Q.COMMON)

	-- Leopard Scorpid -- 62896
	--[[ Pet Battle: Uldum ]]--
	pet = AddPet(62896, V.MOP, Q.COMMON)

	-- Tol'vir Scarab -- 62899
	--[[ Pet Battle: Uldum ]]--
	pet = AddPet(62899, V.MOP, Q.COMMON)

	-- Wildhammer Gryphon Hatchling -- 62900
	--[[ Pet Battle: Twilight Highlands ]]--
	pet = AddPet(62900, V.MOP, Q.COMMON)

	-- Yellow-Bellied Marmot -- 62904
	--[[ Pet Battle: Twilight Highlands ]]--
	pet = AddPet(62904, V.MOP, Q.COMMON)

	-- Highlands Mouse -- 62905
	--[[ Pet Battle: Twilight Highlands ]]--
	pet = AddPet(62905, V.MOP, Q.COMMON)

	-- Highlands Turkey -- 62906
	--[[ Pet Battle: Twilight Highlands ]]--
	pet = AddPet(62906, V.MOP, Q.COMMON)

	-- Highlands Skunk -- 62907
	--[[ Pet Battle: Grizzly Hills, Stonetalon Mountains, The Storm Peaks, Wetlands, Winterspring ]]--
	pet = AddPet(62907, V.MOP, Q.COMMON)

	-- Twilight Fiendling -- 62914
	--[[ Pet Battle: Twilight Highlands ]]--
	pet = AddPet(62914, V.MOP, Q.COMMON)

	-- Emerald Shale Hatchling -- 62915
	--[[ Pet Battle: Deepholm, The Stonecore ]]--
	pet = AddPet(62915, V.MOP, Q.COMMON)

	-- Fungal Moth -- 62916
	--[[ Pet Battle: Deepholm
]]--
	pet = AddPet(62916, V.MOP, Q.COMMON)

	-- Stowaway Rat -- 62921
	--[[ Pet Battle: Deepholm ]]--
	pet = AddPet(62921, V.MOP, Q.COMMON)

	-- Crimson Shale Hatchling -- 62922
	--[[ Pet Battle: Deepholm, The Stonecore ]]--
	pet = AddPet(62922, V.MOP, Q.COMMON)

	-- Deepholm Cockroach -- 62924
	--[[ Pet Battle: Deepholm ]]--
	pet = AddPet(62924, V.MOP, Q.COMMON)

	-- Crystal Beetle -- 62925
	--[[ Pet Battle: Deepholm ]]--
	pet = AddPet(62925, V.MOP, Q.COMMON)

	-- Crimson Geode -- 62927
	--[[ Pet Battle: Deepholm ]]--
	pet = AddPet(62927, V.MOP, Q.COMMON)

	-- Sea Gull -- 62953
	--[[ Pet Battle: Elwynn Forest, Krasarang Wilds, Tanaris ]]--
	pet = AddPet(62953, V.MOP, Q.COMMON)

	-- Stormwind Rat -- 62954
	--[[ Pet Battle: Elwynn Forest ]]--
	pet = AddPet(62954, V.MOP, Q.COMMON)

	-- Coral Adder -- 62991
	--[[ Pet Battle: The Jade Forest
]]--
	pet = AddPet(62991, V.MOP, Q.COMMON)

	-- Bucktooth Flapper -- 62992
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(62992, V.MOP, Q.COMMON)

	-- Emerald Turtle -- 62994
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(62994, V.MOP, Q.COMMON)

	-- Jungle Darter -- 62997
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(62997, V.MOP, Q.COMMON)

	-- Mirror Strider -- 62998
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(62998, V.MOP, Q.COMMON)

	-- Temple Snake -- 62999
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(62999, V.MOP, Q.COMMON)

	-- Garden Frog -- 63002
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63002, V.MOP, Q.COMMON)

	-- Masked Tanuki -- 63003
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63003, V.MOP, Q.COMMON)

	-- Grove Viper -- 63004
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63004, V.MOP, Q.COMMON)

	-- Spirebound Crab -- 63005
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63005, V.MOP, Q.COMMON)

	-- Sandy Petrel -- 63006
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63006, V.MOP, Q.COMMON)

	-- Sifang Otter -- 63057
	--[[ Pet Battle: Valley of Four Winds ]]--
	pet = AddPet(63057, V.MOP, Q.COMMON)

	-- Softshell Snapling -- 63060
	--[[ Pet Battle:  Valley of the Four Winds ]]--
	pet = AddPet(63060, V.MOP, Q.COMMON)

	-- Bandicoon -- 63062
	--[[ Pet Battle: Valley of Four Winds ]]--
	pet = AddPet(63062, V.MOP, Q.COMMON)

	-- Bandicoon Kit -- 63064
	--[[ Pet Battle:  Valley of Four Winds ]]--
	pet = AddPet(63064, V.MOP, Q.COMMON)

	-- Malayan Quillrat -- 63094
	--[[ Pet Battle:  Valley of Four Winds ]]--
	pet = AddPet(63094, V.MOP, Q.COMMON)

	-- Malayan Quillrat Pup -- 63095
	--[[ Pet Battle:  Valley of Four Winds ]]--
	pet = AddPet(63095, V.MOP, Q.COMMON)

	-- Marsh Fiddler -- 63096
	--[[ Pet Battle:  Valley of Four Winds ]]--
	pet = AddPet(63096, V.MOP, Q.COMMON)

	-- Amethyst Spiderling -- 63288
	--[[ Pet Battle: Krasarang Wilds
]]--
	pet = AddPet(63288, V.MOP, Q.COMMON)

	-- Savory Beetle -- 63291
	--[[ Pet Battle: Krasarang Wilds

]]--
	pet = AddPet(63291, V.MOP, Q.COMMON)

	-- Spiny Terrapin -- 63293
	--[[ Pet Battle:  Krasarang Wilds ]]--
	pet = AddPet(63293, V.MOP, Q.COMMON)

	-- Jungle Grub -- 63304
	--[[ Pet Battle: Krasarang Wilds ]]--
	pet = AddPet(63304, V.MOP, Q.COMMON)

	-- Sifang Otter Pup -- 63358
	--[[ Pet Battle:  Valley of Four Winds ]]--
	pet = AddPet(63358, V.MOP, Q.COMMON)

	-- Plains Monitor -- 63547
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(63547, V.MOP, Q.COMMON)

	-- Crunchy Scorpion -- 63548
	--[[ Pet Battle: Dread Wastes
]]--
	pet = AddPet(63548, V.MOP, Q.COMMON)

	-- Grassland Hopper -- 63549
	--[[ Pet Battle:  Townlong Steppes ]]--
	pet = AddPet(63549, V.MOP, Q.COMMON)

	-- Alpine Foxling -- 63550
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(63550, V.MOP, Q.COMMON)

	-- Alpine Foxling Kit -- 63551
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(63551, V.MOP, Q.COMMON)

	-- Zooey Snake -- 63555
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(63555, V.MOP, Q.COMMON)

	-- Tolai Hare -- 63557
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(63557, V.MOP, Q.COMMON)

	-- Tolai Hare Pup -- 63558
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(63558, V.MOP, Q.COMMON)

	-- Szechuan Chicken -- 63585
	--[[ Pet Battle: Kun-Lai Summit ]]--
	pet = AddPet(63585, V.MOP, Q.COMMON)

	-- Jumping Spider -- 63715
	--[[ Pet Battle: The Jade Forest
]]--
	pet = AddPet(63715, V.MOP, Q.COMMON)

	-- Masked Tanuki Pup -- 63716
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63716, V.MOP, Q.COMMON)

	-- Gilded Moth -- 63838
	--[[ Pet Battle: Vale of Eternal Blossoms
]]--
	pet = AddPet(63838, V.MOP, Q.COMMON)

	-- Golden Civet -- 63841
	--[[ Pet Battle: Vale of Eternal Blossoms ]]--
	pet = AddPet(63841, V.MOP, Q.COMMON)

	-- Golden Civet Kitten -- 63842
	--[[ Pet Battle: Vale of Eternal Blossoms ]]--
	pet = AddPet(63842, V.MOP, Q.COMMON)

	-- Dancing Water Skimmer -- 63847
	--[[ Pet Battle: Vale of Eternal Blossoms
]]--
	pet = AddPet(63847, V.MOP, Q.COMMON)

	-- Yellow-Bellied Bullfrog -- 63849
	--[[ Pet Battle: Vale of Eternal Blossoms
]]--
	pet = AddPet(63849, V.MOP, Q.COMMON)

	-- Effervescent Glowfly -- 63850
	--[[ Pet Battle: Vale of Eternal Blossoms
]]--
	pet = AddPet(63850, V.MOP, Q.COMMON)

	-- Leopard Tree Frog -- 63919
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63919, V.MOP, Q.COMMON)

	-- Kuitan Mongoose -- 63953
	--[[ Pet Battle: Townlong Steppes
]]--
	pet = AddPet(63953, V.MOP, Q.COMMON)

	-- Mongoose Pup -- 63954
	--[[ Pet Battle: Townlong Steppes
]]--
	pet = AddPet(63954, V.MOP, Q.COMMON)

	-- Yakrat -- 63957
	--[[ Pet Battle: Townlong Steppes
Pet Battle: Dread Wastes
]]--
	pet = AddPet(63957, V.MOP, Q.COMMON)

	-- Singing Cricket -- 64232
	--[[ Achievement: Pro Pet Mob
Category: Pet Battle ]]--
	pet = AddPet(64232, V.MOP, Q.COMMON)

	-- Resilient Roach -- 64238
	--[[ Pet Battle: Dread Wastes
]]--
	pet = AddPet(64238, V.MOP, Q.COMMON)

	-- Clouded Hedgehog -- 64242
	--[[ Pet Battle: Dread Wastes
]]--
	pet = AddPet(64242, V.MOP, Q.COMMON)

	-- Shy Bandicoon -- 64246
	--[[ Pet Battle: Valley of the Four Winds ]]--
	pet = AddPet(64246, V.MOP, Q.COMMON)

	-- Summit Kid -- 64248
	--[[ Pet Battle: Kun-Lai Summit
]]--
	pet = AddPet(64248, V.MOP, Q.COMMON)

	-- Rapana Whelk -- 64352
	--[[ Pet Battle: Dread Wastes

]]--
	pet = AddPet(64352, V.MOP, Q.COMMON)

	-- Silent Hedgehog -- 64804
	--[[ Pet Battle: Dread Wastes
]]--
	pet = AddPet(64804, V.MOP, Q.COMMON)

	-- Luyu Moth -- 65124
	--[[ Pet Battle: Krasarang Wilds
]]--
	pet = AddPet(65124, V.MOP, Q.COMMON)

	-- Mei Li Sparkler -- 65185
	--[[ Pet Battle: Krasarang Wilds
]]--
	pet = AddPet(65185, V.MOP, Q.COMMON)

	-- Amber Moth -- 65187
	--[[ Pet Battle: Dread Wastes
Pet Battle: Townlong Steppes ]]--
	pet = AddPet(65187, V.MOP, Q.COMMON)

	-- Mongoose -- 65190
	--[[ Pet Battle: Townlong Steppes
]]--
	pet = AddPet(65190, V.MOP, Q.COMMON)

	-- Wild Crimson Hatchling -- 65321
	--[[ Pet Battle: The Jade Forest
Faction: Order of the Cloud Serpent (Exalted)
]]--
	pet = AddPet(65321, V.MOP, Q.COMMON)

	-- Wild Jade Hatchling -- 65323
	--[[ Pet Battle: The Jade Forest
Faction: Order of the Cloud Serpent (Exalted)
]]--
	pet = AddPet(65323, V.MOP, Q.COMMON)

	-- Wild Golden Hatchling -- 65324
	--[[ Pet Battle: The Jade Forest
Faction: Order of the Cloud Serpent (Exalted) ]]--
	pet = AddPet(65324, V.MOP, Q.COMMON)

	-- Jade Tentacle -- 66450
	--[[ Achievement: Time To Open a Pet Store
Category: Pet Battles ]]--
	pet = AddPet(66450, V.MOP, Q.COMMON)

	-- Wanderer's Festival Hatchling -- 67022
	--[[ Pet Battle:  Krasarang Wilds
Event:  Wanderer's Festival ]]--
	pet = AddPet(67022, V.MOP, Q.COMMON)

	self.InitCritters = nil
end
