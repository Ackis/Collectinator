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

	-- Mechanical Squirrel -- 2671
	--[[ Profession: Engineering ]]--
	pet = AddPet(2671, V.MOP, Q.COMMON)

	-- Siamese Cat -- 7380
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 60 ]]--
	pet = AddPet(7380, V.MOP, Q.COMMON)

	-- Silver Tabby Cat -- 7381
	--[[ Vendor: Donni Anthania
Zone: Elwynn Forest
Cost: 40 ]]--
	pet = AddPet(7381, V.MOP, Q.COMMON)

	-- Orange Tabby Cat -- 7382
	--[[ Vendor: Donni Anthania, Steven Lisbane
Zone: Elwynn Forest
Cost: 40 ]]--
	pet = AddPet(7382, V.MOP, Q.COMMON)

	-- Black Tabby Cat -- 7383
	--[[ Drop: World Drop
Zone: Hillsbrad Foothills ]]--
	pet = AddPet(7383, V.MOP, Q.COMMON)

	-- Cornish Rex Cat -- 7384
	--[[ Vendor: Donni Anthania
Zone: Elwynn Forest
Cost: 40 ]]--
	pet = AddPet(7384, V.MOP, Q.COMMON)

	-- Bombay Cat -- 7385
	--[[ Vendor: Donni Anthania
Zone: Elwynn Forest
Cost: 40 ]]--
	pet = AddPet(7385, V.MOP, Q.COMMON)

	-- White Kitten -- 7386
	--[[ Vendor: Lil Timmy
Zone: Stormwind City
Cost: 60 ]]--
	pet = AddPet(7386, V.MOP, Q.COMMON)

	-- Green Wing Macaw -- 7387
	--[[ Drop: Defias Pirate
Zone: The Deadmines ]]--
	pet = AddPet(7387, V.MOP, Q.COMMON)

	-- Senegal -- 7389
	--[[ Vendor: Narkk, Harry No-Hooks
Zone: The Cape of Stranglethorn
Cost: 40

Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 40 ]]--
	pet = AddPet(7389, V.MOP, Q.COMMON)

	-- Cockatiel -- 7390
	--[[ Vendor: Harry No-Hooks, Narkk
Zone: The Cape of Stranglethorn
Cost: 40 ]]--
	pet = AddPet(7390, V.MOP, Q.COMMON)

	-- Hyacinth Macaw -- 7391
	--[[ Drop: World Drop
Zone: Northern Stranglethorn, The Cape of Stranglethorn ]]--
	pet = AddPet(7391, V.MOP, Q.COMMON)

	-- Ancona Chicken -- 7394
	--[[ Vendor: "Plucky" Johnson
Zone: Thousand Needles
Cost: 1 ]]--
	pet = AddPet(7394, V.MOP, Q.COMMON)

	-- Undercity Cockroach -- 7395
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 50

Vendor: Jeremiah Payson
Zone: Tirisfal Glades
Cost: 50 ]]--
	pet = AddPet(7395, V.MOP, Q.COMMON)

	-- Dark Whelpling -- 7543
	--[[ Drop: Whelplings
Zone: Wetlands, Dustwallow Marsh, Badlands, Burning Steppes ]]--
	pet = AddPet(7543, V.MOP, Q.COMMON)

	-- Crimson Whelpling -- 7544
	--[[ Drop: World Drop
Zone: Wetlands ]]--
	pet = AddPet(7544, V.MOP, Q.COMMON)

	-- Emerald Whelpling -- 7545
	--[[ Drop: Noxious Whelp
Zone: Feralas ]]--
	pet = AddPet(7545, V.MOP, Q.COMMON)

	-- Azure Whelpling -- 7547
	--[[ Drop: World Drop
Zone: Winterspring ]]--
	pet = AddPet(7547, V.MOP, Q.COMMON)

	-- Tree Frog -- 7549
	--[[ Vendor: Flik
Zone: Darkmoon Island
Cost: 1 ]]--
	pet = AddPet(7549, V.MOP, Q.COMMON)

	-- Wood Frog -- 7550
	--[[ Vendor: Flik
Zone: Darkmoon Island
Cost: 1 ]]--
	pet = AddPet(7550, V.MOP, Q.COMMON)

	-- Great Horned Owl -- 7553
	--[[ Vendor: Shylenai
Zone: Teldrassil
Cost: 50 ]]--
	pet = AddPet(7553, V.MOP, Q.COMMON)

	-- Snowy Owl -- 7554
	--[[ Pet Battle: Winterspring
Season: Winter ]]--
	pet = AddPet(7554, V.MOP, Q.COMMON)

	-- Hawk Owl -- 7555
	--[[ Vendor: Shylenai
Zone: Teldrassil
Cost: 50 ]]--
	pet = AddPet(7555, V.MOP, Q.COMMON)

	-- Snowshoe Rabbit -- 7560
	--[[ Vendor: Yarlyn Amberstill
Zone: Dun Morogh
Cost: 20 ]]--
	pet = AddPet(7560, V.MOP, Q.COMMON)

	-- Albino Snake -- 7561
	--[[ Vendor: Breanni
Zone: Crystalsong Forest
Cost: 50 ]]--
	pet = AddPet(7561, V.MOP, Q.COMMON)

	-- Brown Snake -- 7562
	--[[ Vendor: Xan'tish
Zone: Orgrimmar
Cost: 50 ]]--
	pet = AddPet(7562, V.MOP, Q.COMMON)

	-- Black Kingsnake -- 7565
	--[[ Vendor: Xan'tish
Zone: Orgrimmar
Cost: 50 ]]--
	pet = AddPet(7565, V.MOP, Q.COMMON)

	-- Crimson Snake -- 7567
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 50

Vendor: Xan'tish
Zone: Orgrimmar
Cost: 50 ]]--
	pet = AddPet(7567, V.MOP, Q.COMMON)

	-- Mechanical Chicken -- 8376
	--[[ Quest: An OOX of Your Own
Zone: Booty Bay
]]--
	pet = AddPet(8376, V.MOP, Q.COMMON)

	-- Pet Bombling -- 9656
	--[[ Profession: Engineering ]]--
	pet = AddPet(9656, V.MOP, Q.COMMON)

	-- Lil' Smoky -- 9657
	--[[ Profession: Engineering ]]--
	pet = AddPet(9657, V.MOP, Q.COMMON)

	-- Sprite Darter Hatchling -- 9662
	--[[ Drop: World Drop
Zone: Feralas ]]--
	pet = AddPet(9662, V.MOP, Q.COMMON)

	-- Worg Pup -- 10259
	--[[ Drop: Quartermaster Zigris
Zone: Lower Blackrock Spire ]]--
	pet = AddPet(10259, V.MOP, Q.COMMON)

	-- Smolderweb Hatchling -- 10598
	--[[ Drop: Mother Smolderweb
Zone: Lower Blackrock Spire ]]--
	pet = AddPet(10598, V.MOP, Q.COMMON)

	-- Panda Cub -- 11325
	--[[ Promotion: World of Warcraft Collector's Edition ]]--
	pet = AddPet(11325, V.MOP, Q.COMMON)

	-- Mini Diablo -- 11326
	--[[ Promotion: World of Warcraft Collectors Edition ]]--
	pet = AddPet(11326, V.MOP, Q.COMMON)

	-- Zergling -- 11327
	--[[ Promotion: World of Warcraft Collectors Edition ]]--
	pet = AddPet(11327, V.MOP, Q.COMMON)

	-- Lifelike Toad -- 12419
	--[[ Profession: Engineering ]]--
	pet = AddPet(12419, V.MOP, Q.COMMON)

	-- Brown Prairie Dog -- 14421
	--[[ Vendor: Halpa, Naleen
Zone: Mulgore
Cost: 50 ]]--
	pet = AddPet(14421, V.MOP, Q.COMMON)

	-- Tiny Green Dragon -- 14755
	--[[ Promotion: iCoke China ]]--
	pet = AddPet(14755, V.MOP, Q.COMMON)

	-- Tiny Red Dragon -- 14756
	--[[ Promotion: iCoke China ]]--
	pet = AddPet(14756, V.MOP, Q.COMMON)

	-- Jubling -- 14878
	--[[ World Event: Darkmoon Faire ]]--
	pet = AddPet(14878, V.MOP, Q.COMMON)

	-- Murky -- 15186
	--[[ Promotion: BlizzCon 2005 ]]--
	pet = AddPet(15186, V.MOP, Q.COMMON)

	-- Lurky -- 15358
	--[[ Promotion: Burning Crusade Collector's Edition (EU only)
]]--
	pet = AddPet(15358, V.MOP, Q.COMMON)

	-- Disgusting Oozeling -- 15429
	--[[ Drop: World Drop
Creature: Oozes, Slimes and Worms ]]--
	pet = AddPet(15429, V.MOP, Q.COMMON)

	-- Father Winter's Helper -- 15698
	--[[ World Event: Feast of Winter Veil ]]--
	pet = AddPet(15698, V.MOP, Q.COMMON)

	-- Tranquil Mechanical Yeti -- 15699
	--[[ Profession: Engineering ]]--
	pet = AddPet(15699, V.MOP, Q.COMMON)

	-- Winter's Little Helper -- 15705
	--[[ World Event: Feast of Winter Veil ]]--
	pet = AddPet(15705, V.MOP, Q.COMMON)

	-- Winter Reindeer -- 15706
	--[[ World Event: Feast of Winter Veil ]]--
	pet = AddPet(15706, V.MOP, Q.COMMON)

	-- Tiny Snowman -- 15710
	--[[ World Event: Feast of Winter Veil
]]--
	pet = AddPet(15710, V.MOP, Q.COMMON)

	-- Gurky -- 16069
	--[[ Promotion: EU Fansite Promotion
]]--
	pet = AddPet(16069, V.MOP, Q.COMMON)

	-- Peddlefeet -- 16085
	--[[ World Event: Love is in the Air
Vendor: Lovely Merchant
Cost: 40
]]--
	pet = AddPet(16085, V.MOP, Q.COMMON)

	-- Terky -- 16445
	--[[ Promotion: iCoke Taiwan ]]--
	pet = AddPet(16445, V.MOP, Q.COMMON)

	-- Poley -- 16456
	--[[ Promotion: iCoke ]]--
	pet = AddPet(16456, V.MOP, Q.COMMON)

	-- Speedy -- 16547
	--[[ World Event: Children's Week ]]--
	pet = AddPet(16547, V.MOP, Q.COMMON)

	-- Mr. Wiggles -- 16548
	--[[ World Event: Children's Week ]]--
	pet = AddPet(16548, V.MOP, Q.COMMON)

	-- Whiskers the Rat -- 16549
	--[[ World Event: Children's Week ]]--
	pet = AddPet(16549, V.MOP, Q.COMMON)

	-- Spirit of Summer -- 16701
	--[[ World Event: Midsummer Fire Festival
Vendor: Midsummer Merchant
Cost: 350 ]]--
	pet = AddPet(16701, V.MOP, Q.COMMON)

	-- Hippogryph Hatchling -- 17255
	--[[ Trading Card Game: Heroes of Azeroth ]]--
	pet = AddPet(17255, V.MOP, Q.COMMON)

	-- Netherwhelp -- 18381
	--[[ Promotion: Burning Crusade Collector's Edition ]]--
	pet = AddPet(18381, V.MOP, Q.COMMON)

	-- Magical Crawdad -- 18839
	--[[ Fishing: Fishing (430)
Zone: Terokkar Forest (Fishing Nodes) ]]--
	pet = AddPet(18839, V.MOP, Q.COMMON)

	-- Mana Wyrmling -- 20408
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 40 ]]--
	pet = AddPet(20408, V.MOP, Q.COMMON)

	-- Brown Rabbit -- 20472
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 10 ]]--
	pet = AddPet(20472, V.MOP, Q.COMMON)

	-- Yellow Moth -- 21008
	--[[ Vendor: Sixx
Zone: The Exodar
Cost: 50 ]]--
	pet = AddPet(21008, V.MOP, Q.COMMON)

	-- Red Moth -- 21009
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 10 ]]--
	pet = AddPet(21009, V.MOP, Q.COMMON)

	-- Blue Moth -- 21010
	--[[ Vendor: Sixx
Zone: The Exodar
Cost: 50 ]]--
	pet = AddPet(21010, V.MOP, Q.COMMON)

	-- White Moth -- 21018
	--[[ Vendor: Sixx
Zone: The Exodar
Cost: 50 ]]--
	pet = AddPet(21018, V.MOP, Q.COMMON)

	-- Golden Dragonhawk Hatchling -- 21055
	--[[ Vendor: Jilanne
Zone: Eversong Woods
Cost: 50 ]]--
	pet = AddPet(21055, V.MOP, Q.COMMON)

	-- Blue Dragonhawk Hatchling -- 21056
	--[[ Vendor: Dealer Rashaad
Zone: Netherstorm
Cost: 10 ]]--
	pet = AddPet(21056, V.MOP, Q.COMMON)

	-- Silver Dragonhawk Hatchling -- 21063
	--[[ Vendor: Jilanne
Zone: Eversong Woods
Cost: 50 ]]--
	pet = AddPet(21063, V.MOP, Q.COMMON)

	-- Red Dragonhawk Hatchling -- 21064
	--[[ Vendor: Jilanne
Zone: Eversong Woods
Cost: 50 ]]--
	pet = AddPet(21064, V.MOP, Q.COMMON)

	-- Firefly -- 21076
	--[[ Drop: Bogflare Needler
Zone: Zangarmarsh ]]--
	pet = AddPet(21076, V.MOP, Q.COMMON)

	-- Miniwing -- 22445
	--[[ Quest: Skywing
Zone: Terokkar Forest

]]--
	pet = AddPet(22445, V.MOP, Q.COMMON)

	-- Wolpertinger -- 22943
	--[[ World Event: Brewfest ]]--
	pet = AddPet(22943, V.MOP, Q.COMMON)

	-- Lucky -- 23198
	--[[ Promotion: World Wide Invitational 2007
]]--
	pet = AddPet(23198, V.MOP, Q.COMMON)

	-- Willy -- 23231
	--[[ World Event: Children's Week ]]--
	pet = AddPet(23231, V.MOP, Q.COMMON)

	-- Bananas -- 23234
	--[[ Trading Card Game: Through the Dark Portal ]]--
	pet = AddPet(23234, V.MOP, Q.COMMON)

	-- Egbert -- 23258
	--[[ World Event: Children's Week ]]--
	pet = AddPet(23258, V.MOP, Q.COMMON)

	-- Peanut -- 23266
	--[[ World Event: Children's Week ]]--
	pet = AddPet(23266, V.MOP, Q.COMMON)

	-- Stinker -- 23274
	--[[ Achievement: Shop Smart, Shop Pet...Smart
Category: Pet Battles ]]--
	pet = AddPet(23274, V.MOP, Q.COMMON)

	-- Sinister Squashling -- 23909
	--[[ World Event: Hallow's End ]]--
	pet = AddPet(23909, V.MOP, Q.COMMON)

	-- Toothy -- 24388
	--[[ Profession: Fishing
Zone: Shattrath ]]--
	pet = AddPet(24388, V.MOP, Q.COMMON)

	-- Muckbreath -- 24389
	--[[ Profession: Fishing
Zone: Shattrath ]]--
	pet = AddPet(24389, V.MOP, Q.COMMON)

	-- Mojo -- 24480
	--[[ Drop: Forest Frog
Zone: Zul'Aman ]]--
	pet = AddPet(24480, V.MOP, Q.COMMON)

	-- Pint-Sized Pink Pachyderm -- 24753
	--[[ World Event: Brewfest
Vendor: Belbi Quikswitch
Zone: Dun Morogh
Cost: 100

Vendor: Bliz Fixwidget
Zone: Durotar
Cost: 100 ]]--
	pet = AddPet(24753, V.MOP, Q.COMMON)

	-- Clockwork Rocket Bot -- 24968
	--[[ World Event: Feast of Winter Veil ]]--
	pet = AddPet(24968, V.MOP, Q.COMMON)

	-- Tiny Sporebat -- 25062
	--[[ Vendor: Mycah
Zone: Zangarmarsh
Faction: Sporeggar - Exalted
Cost: 30 ]]--
	pet = AddPet(25062, V.MOP, Q.COMMON)

	-- Rocket Chicken -- 25109
	--[[ Trading Card Game: March of the Legion ]]--
	pet = AddPet(25109, V.MOP, Q.COMMON)

	-- Dragon Kite -- 25110
	--[[ Trading Card Game: March of the Legion ]]--
	pet = AddPet(25110, V.MOP, Q.COMMON)

	-- Golden Pig -- 25146
	--[[ Promotion: China New Year's Celebration
]]--
	pet = AddPet(25146, V.MOP, Q.COMMON)

	-- Silver Pig -- 25147
	--[[ Promotion: Chinese New Years ]]--
	pet = AddPet(25147, V.MOP, Q.COMMON)

	-- Searing Scorchling -- 25706
	--[[ Vendor: Zen'Vorka
Zone: Molten Front
Cost: 30 ]]--
	pet = AddPet(25706, V.MOP, Q.COMMON)

	-- Snarly -- 26050
	--[[ Profession: Fishing
Zone: Shattrath ]]--
	pet = AddPet(26050, V.MOP, Q.COMMON)

	-- Chuck -- 26056
	--[[ Profession: Fishing
Zone: Shattrath ]]--
	pet = AddPet(26056, V.MOP, Q.COMMON)

	-- Phoenix Hatchling -- 26119
	--[[ Drop: Kael'thas Sunstrider
Zone: Magisters' Terrace ]]--
	pet = AddPet(26119, V.MOP, Q.COMMON)

	-- Spirit of Competition -- 27217
	--[[ Promotion: Battleground Event ]]--
	pet = AddPet(27217, V.MOP, Q.COMMON)

	-- Essence of Competition -- 27346
	--[[ Promotion: China PVP Event ]]--
	pet = AddPet(27346, V.MOP, Q.COMMON)

	-- Ethereal Soul-Trader -- 27914
	--[[ Trading Card Game: The Hunt for Illidan ]]--
	pet = AddPet(27914, V.MOP, Q.COMMON)

	-- Nether Ray Fry -- 28470
	--[[ Vendor: Grella
Zone: Terokkar Forest
Faction: Sha'tari Skyguard - Exalted
Cost: 40 ]]--
	pet = AddPet(28470, V.MOP, Q.COMMON)

	-- Vampiric Batling -- 28513
	--[[ Drop: Prince Tenris Mirkblood
Zone: Karazhan ]]--
	pet = AddPet(28513, V.MOP, Q.COMMON)

	-- Frosty -- 28883
	--[[ Promotion: Wrath of the Lich King Collector's Edition ]]--
	pet = AddPet(28883, V.MOP, Q.COMMON)

	-- Mini Tyrael -- 29089
	--[[ Promotion: World Wide Invitational 2008 ]]--
	pet = AddPet(29089, V.MOP, Q.COMMON)

	-- Ghostly Skull -- 29147
	--[[ Vendor: Darahir
Zone: Crystalsong Forest
Cost: 40 ]]--
	pet = AddPet(29147, V.MOP, Q.COMMON)

	-- Mr. Chilly -- 29726
	--[[ Promotion: Wow/Battle.net Account Merger ]]--
	pet = AddPet(29726, V.MOP, Q.COMMON)

	-- Westfall Chicken -- 30379
	--[[ Quest: CLUCK!
Zone: Westfall ]]--
	pet = AddPet(30379, V.MOP, Q.COMMON)

	-- Giant Sewer Rat -- 31575
	--[[ Profession: Fishing
Zone: Dalaran ]]--
	pet = AddPet(31575, V.MOP, Q.COMMON)

	-- Tickbird Hatchling -- 32589
	--[[ Drop: Mysterious Egg ]]--
	pet = AddPet(32589, V.MOP, Q.COMMON)

	-- White Tickbird Hatchling -- 32590
	--[[ Drop: Mysterious Egg ]]--
	pet = AddPet(32590, V.MOP, Q.COMMON)

	-- Cobra Hatchling -- 32591
	--[[ Drop: Mysterious Egg ]]--
	pet = AddPet(32591, V.MOP, Q.COMMON)

	-- Proto-Drake Whelp -- 32592
	--[[ Drop: Mysterious Egg ]]--
	pet = AddPet(32592, V.MOP, Q.COMMON)

	-- Pengu -- 32595
	--[[ Vendor: Sairuk
Zone: Dragonblight
Faction: The Kalu'ak - Exalted
Cost: 12

Vendor: Tanaika
Zone: Howling Fjord
Faction: The Kalu'ak - Exalted
Cost: 12 ]]--
	pet = AddPet(32595, V.MOP, Q.COMMON)

	-- Kirin Tor Familiar -- 32643
	--[[ Achievement: Higher Learning
Category: General ]]--
	pet = AddPet(32643, V.MOP, Q.COMMON)

	-- Spring Rabbit -- 32791
	--[[ World Event: Noblegarden
Vendor: Noblegarden Merchant
Cost: 100 ]]--
	pet = AddPet(32791, V.MOP, Q.COMMON)

	-- Plump Turkey -- 32818
	--[[ World Event: Pilgrim's Bounty ]]--
	pet = AddPet(32818, V.MOP, Q.COMMON)

	-- Baby Blizzard Bear -- 32841
	--[[ Achievement: WoW's 4th Anniversary
Category: Feats of Strength ]]--
	pet = AddPet(32841, V.MOP, Q.COMMON)

	-- Little Fawn -- 32939
	--[[ Achievement: Lil' Game Hunter
Category: Pet Battles ]]--
	pet = AddPet(32939, V.MOP, Q.COMMON)

	-- Teldrassil Sproutling -- 33188
	--[[ Vendor: Rook Hawkfist
Zone: Icecrown
Cost: 40 ]]--
	pet = AddPet(33188, V.MOP, Q.COMMON)

	-- Dun Morogh Cub -- 33194
	--[[ Vendor: Derrick Brindlebeard
Zone: Icecrown
Cost: 40  ]]--
	pet = AddPet(33194, V.MOP, Q.COMMON)

	-- Tirisfal Batling -- 33197
	--[[ Vendor: Eliza Killian
Zone: Icecrown
Cost: 40 ]]--
	pet = AddPet(33197, V.MOP, Q.COMMON)

	-- Durotar Scorpion -- 33198
	--[[ Vendor: Freka Bloodaxe
Zone: Icecrown
Cost: 40  ]]--
	pet = AddPet(33198, V.MOP, Q.COMMON)

	-- Elwynn Lamb -- 33200
	--[[ Vendor: Corporal Arthur Flew
Zone: Icecrown
Cost: 40  ]]--
	pet = AddPet(33200, V.MOP, Q.COMMON)

	-- Ammen Vale Lashling -- 33205
	--[[ Vendor: Irisee
Zone: Icecrown
Cost: 40
]]--
	pet = AddPet(33205, V.MOP, Q.COMMON)

	-- Mulgore Hatchling -- 33219
	--[[ Vendor: Doru Thunderhorn
Zone: Icecrown
Cost: 40  ]]--
	pet = AddPet(33219, V.MOP, Q.COMMON)

	-- Strand Crawler -- 33226
	--[[ Profession: Fishing
Zone: Northrend, Stormwind, Orgrimmar ]]--
	pet = AddPet(33226, V.MOP, Q.COMMON)

	-- Enchanted Broom -- 33227
	--[[ Vendor: Trellis Morningsun
Zone: Icecrown
Cost: 40  ]]--
	pet = AddPet(33227, V.MOP, Q.COMMON)

	-- Argent Squire -- 33238
	--[[ Quest: A Champion Rises
Zone: Icecrown ]]--
	pet = AddPet(33238, V.MOP, Q.COMMON)

	-- Argent Gruntling -- 33239
	--[[ Quest: A Champion Rises
Zone: Icecrown ]]--
	pet = AddPet(33239, V.MOP, Q.COMMON)

	-- Mechanopeep -- 33274
	--[[ Vendor: Rillie Spindlenut
Zone: Icecrown ]]--
	pet = AddPet(33274, V.MOP, Q.COMMON)

	-- Curious Wolvar Pup -- 33529
	--[[ World Event: Children's Week ]]--
	pet = AddPet(33529, V.MOP, Q.COMMON)

	-- Curious Oracle Hatchling -- 33530
	--[[ World Event: Children's Week ]]--
	pet = AddPet(33530, V.MOP, Q.COMMON)

	-- Murkimus the Gladiator -- 33578
	--[[ Promotion: Arena Tournament 2009
]]--
	pet = AddPet(33578, V.MOP, Q.COMMON)

	-- Sen'jin Fetish -- 33810
	--[[ Vendor: Samamba
Zone: Icecrown
Cost: 40
]]--
	pet = AddPet(33810, V.MOP, Q.COMMON)

	-- Withers -- 34278
	--[[ Quest: Remembrance of Auberdine
Zone: Darkshore ]]--
	pet = AddPet(34278, V.MOP, Q.COMMON)

	-- Calico Cat -- 34364
	--[[ Vendor: Breanni
Zone: Crystalsong Forest
Cost: 50 ]]--
	pet = AddPet(34364, V.MOP, Q.COMMON)

	-- Warbot -- 34587
	--[[ Promotion: Mountain Dew Promotion ]]--
	pet = AddPet(34587, V.MOP, Q.COMMON)

	-- Grunty -- 34694
	--[[ Promotion: BlizzCon 2009 ]]--
	pet = AddPet(34694, V.MOP, Q.COMMON)

	-- Shimmering Wyrmling -- 34724
	--[[ Vendor: Hiren Loresong
Zone: Icecrown
Faction: The Silver Covenant - Exalted
Cost: 40
]]--
	pet = AddPet(34724, V.MOP, Q.COMMON)

	-- Jade Tiger -- 34930
	--[[ Achievement: Jade Tiger
Category: Feats of Strength ]]--
	pet = AddPet(34930, V.MOP, Q.COMMON)

	-- Leaping Hatchling -- 35387
	--[[ Drop: Takk's Nest
Zone: The Barrens ]]--
	pet = AddPet(35387, V.MOP, Q.COMMON)

	-- Razzashi Hatchling -- 35394
	--[[ Drop: World Drop
Zone: Northern Stranglethorn, The Cape of Stranglethorn ]]--
	pet = AddPet(35394, V.MOP, Q.COMMON)

	-- Deviate Hatchling -- 35395
	--[[ Drop: Deviate Guardian, Deviate Ravager
Zone: Wailing Caverns ]]--
	pet = AddPet(35395, V.MOP, Q.COMMON)

	-- Darting Hatchling -- 35396
	--[[ Drop: Dart's Nest
Zone: Dustwallow Marsh ]]--
	pet = AddPet(35396, V.MOP, Q.COMMON)

	-- Ravasaur Hatchling -- 35397
	--[[ Drop: Ravasaur Matriarch's Nest
Zone: Un'goro Crater ]]--
	pet = AddPet(35397, V.MOP, Q.COMMON)

	-- Razormaw Hatchling -- 35398
	--[[ Drop: Razormaw Matriarch's Nest
Zone: Wetlands ]]--
	pet = AddPet(35398, V.MOP, Q.COMMON)

	-- Obsidian Hatchling -- 35399
	--[[ Vendor: Breanni
Zone: Crystalsong Forest
Cost: 50 ]]--
	pet = AddPet(35399, V.MOP, Q.COMMON)

	-- Gundrak Hatchling -- 35400
	--[[ Drop: Gundrak Raptor
Zone: Zul'Drak ]]--
	pet = AddPet(35400, V.MOP, Q.COMMON)

	-- Onyx Panther -- 35468
	--[[ Promotion: Korea World Event ]]--
	pet = AddPet(35468, V.MOP, Q.COMMON)

	-- Tuskarr Kite -- 36482
	--[[ Trading Card Game: Scourgewar ]]--
	pet = AddPet(36482, V.MOP, Q.COMMON)

	-- Spectral Tiger Cub -- 36511
	--[[ Trading Card Game: Scourgewar ]]--
	pet = AddPet(36511, V.MOP, Q.COMMON)

	-- Onyxian Whelpling -- 36607
	--[[ Achievement: WoW's 5th Anniversary
Category: Feats of Strength ]]--
	pet = AddPet(36607, V.MOP, Q.COMMON)

	-- Core Hound Pup -- 36871
	--[[ Promotion: Authenticator Account Link
]]--
	pet = AddPet(36871, V.MOP, Q.COMMON)

	-- Gryphon Hatchling -- 36908
	--[[ Pet Store ]]--
	pet = AddPet(36908, V.MOP, Q.COMMON)

	-- Wind Rider Cub -- 36909
	--[[ Pet Store ]]--
	pet = AddPet(36909, V.MOP, Q.COMMON)

	-- Zipao Tiger -- 36910
	--[[ Promotion: China Billing Promotion ]]--
	pet = AddPet(36910, V.MOP, Q.COMMON)

	-- Pandaren Monk -- 36911
	--[[ Pet Store ]]--
	pet = AddPet(36911, V.MOP, Q.COMMON)

	-- Lil' K.T. -- 36979
	--[[ Pet Store ]]--
	pet = AddPet(36979, V.MOP, Q.COMMON)

	-- Perky Pug -- 37865
	--[[ Achievement: Looking For Multitudes
Category: Dungeons & Raids ]]--
	pet = AddPet(37865, V.MOP, Q.COMMON)

	-- Toxic Wasteling -- 38374
	--[[ World Event: Love is in the Air ]]--
	pet = AddPet(38374, V.MOP, Q.COMMON)

	-- Frigid Frostling -- 40198
	--[[ World Event: Midsummer Fire Festival ]]--
	pet = AddPet(40198, V.MOP, Q.COMMON)

	-- Blue Clockwork Rocket Bot -- 40295
	--[[ Vendor: World Vendors
Cost: 50 ]]--
	pet = AddPet(40295, V.MOP, Q.COMMON)

	-- Celestial Dragon -- 40624
	--[[ Achievement: Littlest Pet Shop
Category: Pet Battles ]]--
	pet = AddPet(40624, V.MOP, Q.COMMON)

	-- Lil' XT -- 40703
	--[[ Pet Store ]]--
	pet = AddPet(40703, V.MOP, Q.COMMON)

	-- Mini Thor -- 42078
	--[[ Promotion: Starcraft 2: Wings of Liberty Collector's Edition ]]--
	pet = AddPet(42078, V.MOP, Q.COMMON)

	-- Blue Mini Jouster -- 42177
	--[[ Quest: Egg Wave
Zone: Mount Hyjal

]]--
	pet = AddPet(42177, V.MOP, Q.COMMON)

	-- Gold Mini Jouster -- 42183
	--[[ Quest: Egg Wave
Zone: Mount Hyjal

]]--
	pet = AddPet(42183, V.MOP, Q.COMMON)

	-- Personal World Destroyer -- 43800
	--[[ Profession: Engineering ]]--
	pet = AddPet(43800, V.MOP, Q.COMMON)

	-- De-Weaponized Mechanical Companion -- 43916
	--[[ Profession: Engineering ]]--
	pet = AddPet(43916, V.MOP, Q.COMMON)

	-- Crawling Claw -- 45128
	--[[ Profession: Archaeology ]]--
	pet = AddPet(45128, V.MOP, Q.COMMON)

	-- Pebble -- 45247
	--[[ Achievement: Rock Lover
Category: Quests ]]--
	pet = AddPet(45247, V.MOP, Q.COMMON)

	-- Fossilized Hatchling -- 45340
	--[[ Profession: Archaeology ]]--
	pet = AddPet(45340, V.MOP, Q.COMMON)

	-- Lil' Deathwing -- 46896
	--[[ Promotion: Cataclysm Collector's Edition ]]--
	pet = AddPet(46896, V.MOP, Q.COMMON)

	-- Enchanted Lantern -- 46898
	--[[ Profession: Enchanting (525)
Formula: Enchanted Lantern ]]--
	pet = AddPet(46898, V.MOP, Q.COMMON)

	-- Dark Phoenix Hatchling -- 47944
	--[[ Vendor: World Vendors
Cost: 300 ]]--
	pet = AddPet(47944, V.MOP, Q.COMMON)

	-- Rustberg Gull -- 48107
	--[[ Vendor: Quartermaster Brazie
Zone: Tol Barad Peninsula
Faction: Baradin's Wardens - Honored
Cost: 50 ]]--
	pet = AddPet(48107, V.MOP, Q.COMMON)

	-- Armadillo Pup -- 48242
	--[[ Vendor: World Vendors
Cost: 300 ]]--
	pet = AddPet(48242, V.MOP, Q.COMMON)

	-- Clockwork Gnome -- 48609
	--[[ Profession: Archaeology ]]--
	pet = AddPet(48609, V.MOP, Q.COMMON)

	-- Fox Kit -- 48641
	--[[ Drop: Baradin Fox
Zone: Tol Barad Peninsula ]]--
	pet = AddPet(48641, V.MOP, Q.COMMON)

	-- Tiny Shale Spider -- 48982
	--[[ Drop: Jadefang
Zone: Deepholm ]]--
	pet = AddPet(48982, V.MOP, Q.COMMON)

	-- Guild Page -- 49586
	--[[ Vendor: World Vendors
Cost: 300
Cooldown: 8 hrs ]]--
	pet = AddPet(49586, V.MOP, Q.COMMON)

	-- Guild Herald -- 49587
	--[[ Vendor: World Vendors
Cost: 500
Cooldown: 4 hrs
]]--
	pet = AddPet(49587, V.MOP, Q.COMMON)

	-- Guild Page -- 49588
	--[[ Vendor: World Vendors
Cost: 300
Cooldown: 8 hrs
]]--
	pet = AddPet(49588, V.MOP, Q.COMMON)

	-- Guild Herald -- 49590
	--[[ Vendor: World Vendors
Cost: 500
Cooldown: 4 hrs ]]--
	pet = AddPet(49590, V.MOP, Q.COMMON)

	-- Landro's Lil' XT -- 50468
	--[[ Trading Card Game: Worldbreaker
]]--
	pet = AddPet(50468, V.MOP, Q.COMMON)

	-- Magic Lamp -- 50545
	--[[ Profession: Enchanting ]]--
	pet = AddPet(50545, V.MOP, Q.COMMON)

	-- Mr. Grubbs -- 50586
	--[[ World Drop: Eastern Plaguelands (requires Fiona's Lucky Charm) ]]--
	pet = AddPet(50586, V.MOP, Q.COMMON)

	-- Elementium Geode -- 50722
	--[[ Drop: Elementium Vein, Rich Elementium Vein
Zone: Deepholm, Twilight Highlands, Uldum ]]--
	pet = AddPet(50722, V.MOP, Q.COMMON)

	-- Singing Sunflower -- 51090
	--[[ Quest: Lawn of the Dead
Zone: Hillsbrad Foothills
]]--
	pet = AddPet(51090, V.MOP, Q.COMMON)

	-- Deathy -- 51122
	--[[ Promotion: BlizzCon 2010 ]]--
	pet = AddPet(51122, V.MOP, Q.COMMON)

	-- Lil' Ragnaros -- 51600
	--[[ Pet Store ]]--
	pet = AddPet(51600, V.MOP, Q.COMMON)

	-- Moonkin Hatchling -- 51601
	--[[ Pet Store: Alliance ]]--
	pet = AddPet(51601, V.MOP, Q.COMMON)

	-- Tiny Flamefly -- 51632
	--[[ Quest: SEVEN! YUP!, Not Fireflies, Flameflies
Zone: Burning Steppes
]]--
	pet = AddPet(51632, V.MOP, Q.COMMON)

	-- Scooter the Snail -- 51635
	--[[ World Event: Children's Week ]]--
	pet = AddPet(51635, V.MOP, Q.COMMON)

	-- Moonkin Hatchling -- 51649
	--[[ Pet Store: Horde ]]--
	pet = AddPet(51649, V.MOP, Q.COMMON)

	-- Panther Cub -- 52226
	--[[ Quest: Some Good Will Come
Zone: Northern Stranglethorn

]]--
	pet = AddPet(52226, V.MOP, Q.COMMON)

	-- Landro's Lichling -- 52343
	--[[ Trading Card Game: Worldbreaker ]]--
	pet = AddPet(52343, V.MOP, Q.COMMON)

	-- Nightsaber Cub -- 52344
	--[[ Trading Card Game: Twilight of the Dragons ]]--
	pet = AddPet(52344, V.MOP, Q.COMMON)

	-- Winterspring Cub -- 52831
	--[[ Vendor: Michelle De Rum
Zone: Winterspring
Cost: 50 ]]--
	pet = AddPet(52831, V.MOP, Q.COMMON)

	-- Lashtail Hatchling -- 52894
	--[[ Quest: An Old Friend
Zone: Zul'gurub ]]--
	pet = AddPet(52894, V.MOP, Q.COMMON)

	-- Legs -- 53048
	--[[ World Event: Children's Week ]]--
	pet = AddPet(53048, V.MOP, Q.COMMON)

	-- Pterrordax Hatchling -- 53225
	--[[ Profession: Archaeology ]]--
	pet = AddPet(53225, V.MOP, Q.COMMON)

	-- Voodoo Figurine -- 53232
	--[[ Profession: Archaeology ]]--
	pet = AddPet(53232, V.MOP, Q.COMMON)

	-- Guardian Cub -- 53283
	--[[ Pet Store ]]--
	pet = AddPet(53283, V.MOP, Q.COMMON)

	-- Cenarion Hatchling -- 53623
	--[[ Pet Store ]]--
	pet = AddPet(53623, V.MOP, Q.COMMON)

	-- Hyjal Bear Cub -- 53658
	--[[ Vendor: Varlan Highbough
Zone: Molten Front
Cost: 1500 ]]--
	pet = AddPet(53658, V.MOP, Q.COMMON)

	-- Feline Familiar -- 53884
	--[[ World Event: Hallow's End
Vendor: Chub
Zone: Tirisfal Glades
Cost: 150

Vendor: Dorothy
Zone: Stormwind City
Cost: 150 ]]--
	pet = AddPet(53884, V.MOP, Q.COMMON)

	-- Lil' Tarecgosa -- 54027
	--[[ Vendor: World Vendors
Cost: 1500 ]]--
	pet = AddPet(54027, V.MOP, Q.COMMON)

	-- Nuts -- 54227
	--[[ Achievement: Petting Zoo
Category: Pet Battles ]]--
	pet = AddPet(54227, V.MOP, Q.COMMON)

	-- Brilliant Kaliri -- 54374
	--[[ Achievement: Menagerie
Category: Pet Battles ]]--
	pet = AddPet(54374, V.MOP, Q.COMMON)

	-- Purple Puffer -- 54383
	--[[ Trading Card Game: Throne of the Tides ]]--
	pet = AddPet(54383, V.MOP, Q.COMMON)

	-- Murkablo -- 54438
	--[[ Promotion: BlizzCon 2011 ]]--
	pet = AddPet(54438, V.MOP, Q.COMMON)

	-- Darkmoon Turtle -- 54487
	--[[ Vendor: Lhara
Zone: Darkmoon Island
Cost: 90  ]]--
	pet = AddPet(54487, V.MOP, Q.COMMON)

	-- Darkmoon Monkey -- 54491
	--[[ Vendor: Lhara
Zone: Darkmoon Island
Cost: 90
]]--
	pet = AddPet(54491, V.MOP, Q.COMMON)

	-- Alliance Balloon -- 54539
	--[[ Quest: Blown Away
Zone: Stormwind ]]--
	pet = AddPet(54539, V.MOP, Q.COMMON)

	-- Horde Balloon -- 54541
	--[[ Quest: Blown Away
Zone: Orgrimmar
]]--
	pet = AddPet(54541, V.MOP, Q.COMMON)

	-- Gregarious Grell -- 54730
	--[[ Trading Card Game: Crown of the Heavens ]]--
	pet = AddPet(54730, V.MOP, Q.COMMON)

	-- Sand Scarab -- 54745
	--[[ Trading Card Game: Tomb of the Forgotten
]]--
	pet = AddPet(54745, V.MOP, Q.COMMON)

	-- Darkmoon Balloon -- 55187
	--[[ Vendor: Lhara
Zone: Darkmoon Island
Cost: 90
]]--
	pet = AddPet(55187, V.MOP, Q.COMMON)

	-- Lumpy -- 55215
	--[[ World Event: Feast of Winter Veil ]]--
	pet = AddPet(55215, V.MOP, Q.COMMON)

	-- Darkmoon Tonk -- 55356
	--[[ Vendor: Lhara
Zone: Darkmoon Island
Cost: 90  ]]--
	pet = AddPet(55356, V.MOP, Q.COMMON)

	-- Darkmoon Zeppelin -- 55367
	--[[ Vendor: Lhara
Zone: Darkmoon Island
Cost: 90  ]]--
	pet = AddPet(55367, V.MOP, Q.COMMON)

	-- Sea Pony -- 55386
	--[[ Profession: Fishing
Zone: Darkmoon Island ]]--
	pet = AddPet(55386, V.MOP, Q.COMMON)

	-- Lunar Lantern -- 55571
	--[[ World Event: Lunar Festival ]]--
	pet = AddPet(55571, V.MOP, Q.COMMON)

	-- Festival Lantern -- 55574
	--[[ Vendor: Valadar Starsong
Zone: Moonglade
Cost: 50 ]]--
	pet = AddPet(55574, V.MOP, Q.COMMON)

	-- Darkmoon Cub -- 56031
	--[[ Vendor: Lhara
Zone: Darkmoon Island
Cost: 90
]]--
	pet = AddPet(56031, V.MOP, Q.COMMON)

	-- Green Balloon -- 56082
	--[[ Vendor: Carl Goodup
Zone: Darkmoon Island
Cost: 10 ]]--
	pet = AddPet(56082, V.MOP, Q.COMMON)

	-- Yellow Balloon -- 56083
	--[[ Vendor: Carl Goodup
Zone: Darkmoon Island
Cost: 10 ]]--
	pet = AddPet(56083, V.MOP, Q.COMMON)

	-- Fetish Shaman -- 56266
	--[[ Promotion: Diablo 3 Collector's Edition ]]--
	pet = AddPet(56266, V.MOP, Q.COMMON)

	-- Soul of the Aspects -- 58163
	--[[ Pet Store ]]--
	pet = AddPet(58163, V.MOP, Q.COMMON)

	-- Eye of the Legion -- 59020
	--[[ Trading Card Game: Timewalkers: War of the Anicents
]]--
	pet = AddPet(59020, V.MOP, Q.COMMON)

	-- Darkmoon Rabbit -- 59358
	--[[ Drop: Darkmoon Rabbit
Zone: Darkmoon Island ]]--
	pet = AddPet(59358, V.MOP, Q.COMMON)

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

	-- Porcupette -- 61086
	--[[ Drop: Sack of Pet Supplies
]]--
	pet = AddPet(61086, V.MOP, Q.COMMON)

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

	-- Jade Owl -- 61877
	--[[ Profession: Jewelcrafting
]]--
	pet = AddPet(61877, V.MOP, Q.COMMON)

	-- Sapphire Cub -- 61883
	--[[ Profession: Jewelcrafting
]]--
	pet = AddPet(61883, V.MOP, Q.COMMON)

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

	-- Fishy -- 62829
	--[[ Quest: Let Them Burn
Zone: The Jade Forest ]]--
	pet = AddPet(62829, V.MOP, Q.COMMON)

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

	-- Shore Crawler -- 63097
	--[[ Vendor: Matty
Zone: Orgrimmar ]]--
	pet = AddPet(63097, V.MOP, Q.COMMON)

	-- Gilnean Raven -- 63098
	--[[ Vendor: Will Larsons
Zone: Lor'danel ]]--
	pet = AddPet(63098, V.MOP, Q.COMMON)

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

	-- Terrible Turnip -- 63365
	--[[ Drop: World Drop
Zone: Valley of the Four Winds ]]--
	pet = AddPet(63365, V.MOP, Q.COMMON)

	-- Red Cricket -- 63370
	--[[ Quest: Sho in Valley of the Four Winds
]]--
	pet = AddPet(63370, V.MOP, Q.COMMON)

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

	-- Tiny Goldfish -- 63559
	--[[ Vendor: Nat Pagle
Zone: Krasarang Wilds
Faction: The Anglers - Honored
Cost: 250 ]]--
	pet = AddPet(63559, V.MOP, Q.COMMON)

	-- Szechuan Chicken -- 63585
	--[[ Pet Battle: Kun-Lai Summit ]]--
	pet = AddPet(63585, V.MOP, Q.COMMON)

	-- Feral Vermling -- 63621
	--[[ Achievement: Going to Need More Leashes
Category: Collect ]]--
	pet = AddPet(63621, V.MOP, Q.COMMON)

	-- Jumping Spider -- 63715
	--[[ Pet Battle: The Jade Forest
]]--
	pet = AddPet(63715, V.MOP, Q.COMMON)

	-- Masked Tanuki Pup -- 63716
	--[[ Pet Battle: The Jade Forest ]]--
	pet = AddPet(63716, V.MOP, Q.COMMON)

	-- Lucky Quilen Cub -- 63832
	--[[ Promotion: Mists of Pandaria Collector's Edition Pet ]]--
	pet = AddPet(63832, V.MOP, Q.COMMON)

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

	-- Hopling -- 64632
	--[[ Achievement: Ling-Ting's Herbal Journey
Category: Dungeons and Raids ]]--
	pet = AddPet(64632, V.MOP, Q.COMMON)

	-- Aqua Strider -- 64633
	--[[ Drop: Nalash Verdantis
Zone: Dread Wastes

]]--
	pet = AddPet(64633, V.MOP, Q.COMMON)

	-- Grinder -- 64634
	--[[ Drop: Karr the Darkener
Zone: Dread Wastes

]]--
	pet = AddPet(64634, V.MOP, Q.COMMON)

	-- Silent Hedgehog -- 64804
	--[[ Pet Battle: Dread Wastes
]]--
	pet = AddPet(64804, V.MOP, Q.COMMON)

	-- Mechanical Pandaren Dragonling -- 64899
	--[[ Profession: Engineering ]]--
	pet = AddPet(64899, V.MOP, Q.COMMON)

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

	-- Thundering Serpent Hatchling -- 65313
	--[[ Vendor: Guild Vendor
Zone: Stormwind, Orgrimmar
Cost: 300
]]--
	pet = AddPet(65313, V.MOP, Q.COMMON)

	-- Jade Crane Chick -- 65314
	--[[ Vendor: Audrey Burnhep, Varzog
Zone: Stormwind, Orgrimmar
Cost: 50 ]]--
	pet = AddPet(65314, V.MOP, Q.COMMON)

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

	-- Chi-ji Kite -- 66104
	--[[ Profession: Inscription ]]--
	pet = AddPet(66104, V.MOP, Q.COMMON)

	-- Yu'lon Kite -- 66105
	--[[ Profession: Inscription ]]--
	pet = AddPet(66105, V.MOP, Q.COMMON)

	-- Jade Tentacle -- 66450
	--[[ Achievement: Time To Open a Pet Store
Category: Pet Battles ]]--
	pet = AddPet(66450, V.MOP, Q.COMMON)

	-- Venus -- 66491
	--[[ Achievement: That's a Lot of Pet Food
Category: Collect ]]--
	pet = AddPet(66491, V.MOP, Q.COMMON)

	-- Baneling -- 66984
	--[[ Promotion: Starcraft II: Heart of the Swarm Collectors Edition ]]--
	pet = AddPet(66984, V.MOP, Q.COMMON)

	-- Wanderer's Festival Hatchling -- 67022
	--[[ Pet Battle:  Krasarang Wilds
Event:  Wanderer's Festival ]]--
	pet = AddPet(67022, V.MOP, Q.COMMON)

	self.InitCritters = nil
end
