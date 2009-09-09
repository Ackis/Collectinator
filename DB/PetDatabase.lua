--[[

************************************************************************

PetDatabase.lua

Pet Database data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
Project version: @project-version@

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

function addon:MakeMiniPetTable(PetDB)

	local companioncount = 0

	-- Mechanical Squirrel Box - 4055
	self:AddCompanion(PetDB,4055,4401,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,4055,1,2,5,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,4055,3,4036,3928)

	-- Cat Carrier (Bombay) - 10673
	self:AddCompanion(PetDB,10673,8485,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10673,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10673,1,6367)

	-- Cat Carrier (Cornish Rex) - 10674
	self:AddCompanion(PetDB,10674,8486,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10674,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10674,1,6367)

	-- Cat Carrier (Black Tabby) - 10675
	self:AddCompanion(PetDB,10675,8491,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10675,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10675,4,1920,4,2271,4,2272,4,2358)

	-- Cat Carrier (Orange Tabby) - 10676
	self:AddCompanion(PetDB,10676,8487,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10676,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10676,1,6367)

	-- Cat Carrier (Siamese) - 10677
	self:AddCompanion(PetDB,10677,8490,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10677,1,2,3,6,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10677,1,20980,4,645)

	-- Cat Carrier (Silver Tabby) - 10678
	self:AddCompanion(PetDB,10678,8488,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10678,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10678,1,6367)

	-- Cat Carrier (White Kitten) - 10679
	self:AddCompanion(PetDB,10679,8489,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10679,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10679,1,8666)

	-- Parrot Cage (Cockatiel) - 10680
	self:AddCompanion(PetDB,10680,8496,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10680,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10680,1,2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	self:AddCompanion(PetDB,10682,8494,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10682,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10682,4,1561,4,1562,4,1563,4,1564,4,1565,4,1653,4,2545,4,4505,4,4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	self:AddCompanion(PetDB,10683,8492,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10683,1,2,6,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10683,4,657)

	-- Parrot Cage (Senegal) - 10684
	self:AddCompanion(PetDB,10684,8495,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10684,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10684,1,2663,1,20980)

	-- Ancona Chicken - 10685
	self:AddCompanion(PetDB,10685,11023,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10685,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10685,1,6548)

	-- Cockroach - 10688
	self:AddCompanion(PetDB,10688,10393,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10688,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10688,1,8403,1,20980)

	-- Dark Whelpling - 10695
	self:AddCompanion(PetDB,10695,10822,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10695,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10695,4,2725,4,4324)

	-- Azure Whelpling - 10696
	self:AddCompanion(PetDB,10696,34535,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10696,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10696,4,193,4,6129,4,6130,4,6131)

	-- Tiny Crimson Whelpling - 10697
	self:AddCompanion(PetDB,10697,8499,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10697,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10697,4,1042,4,1044,4,1069)

	-- Tiny Emerald Whelpling - 10698
	self:AddCompanion(PetDB,10698,8498,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10698,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10698,4,741)

	-- Wood Frog Box - 10703
	self:AddCompanion(PetDB,10703,11027,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,10703,1,2,3,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,10703,1,14860,7,3)

	-- Tree Frog Box - 10704
	self:AddCompanion(PetDB,10704,11026,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,10704,1,2,3,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,10704,1,14860,7,3)

	-- Hawk Owl - 10706
	self:AddCompanion(PetDB,10706,8501,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10706,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10706,1,8665)

	-- Great Horned Owl - 10707
	self:AddCompanion(PetDB,10707,8500,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10707,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10707,1,8665)

	-- Prairie Dog Whistle - 10709
	self:AddCompanion(PetDB,10709,10394,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10709,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10709,1,8401)

	-- Rabbit Crate (Snowshoe) - 10711
	self:AddCompanion(PetDB,10711,8497,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10711,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10711,1,1263)

	-- Black Kingsnake - 10714
	self:AddCompanion(PetDB,10714,10360,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10714,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10714,1,8404)

	-- Brown Snake - 10716
	self:AddCompanion(PetDB,10716,10361,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10716,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10716,1,8404)

	-- Crimson Snake - 10717
	self:AddCompanion(PetDB,10717,10392,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,10717,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10717,1,8404,1,20980)

	-- Mechanical Chicken - 12243
	self:AddCompanion(PetDB,12243,10398,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,12243,1,2,4,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,12243,2,3721,

	-- Chicken Egg - 13548
	self:AddCompanion(PetDB,13548,11110,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,13548,1,2,21,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,13548,8,2)

	-- Pet Bombling - 15048
	self:AddCompanion(PetDB,15048,11825,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,15048,1,2,5,21,29)
	--self:AddCompanionAcquire(PetDB,15048,3,4036,15628)

	-- Lil' Smoky - 15049
	self:AddCompanion(PetDB,15049,11826,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,15049,1,2,5,21,29)
	--self:AddCompanionAcquire(PetDB,15049,3,4036,15633)

	-- Sprite Darter Egg - 15067
	self:AddCompanion(PetDB,15067,11474,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,15067,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,15067,2,4298)

	-- Worg Carrier - 15999
	self:AddCompanion(PetDB,15999,12264,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,15999,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,15999,2,4729)

	-- Smolderweb Carrier - 16450
	self:AddCompanion(PetDB,16450,12529,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,16450,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,16450,2,4862)

	-- Panda Collar - 17707
	self:AddCompanion(PetDB,17707,13583,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,17707,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,17707,8,8)

	-- Diablo Stone - 17708
	self:AddCompanion(PetDB,17708,13584,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,17708,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,17708,8,8)

	-- Zergling Leash - 17709
	self:AddCompanion(PetDB,17709,13582,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,17709,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,17709,8,8)

	-- Lifelike Mechanical Toad - 19772
	self:AddCompanion(PetDB,19772,15996,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,19772,1,2,5,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,19772,3,4036,19793)

	-- A Jubling's Tiny Home - 23811
	self:AddCompanion(PetDB,23811,19450,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,23811,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,23811,7,3)

	-- Blue Murloc Egg - 24696 (Murky)
	self:AddCompanion(PetDB,24696,20371,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,24696,1,2,12,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,24696,8,4)

	-- Lurky's Egg - 24988
	self:AddCompanion(PetDB,24988,30360,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,24988,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,24988,8,10)

	-- Disgusting Oozeling - 25162
	self:AddCompanion(PetDB,25162,20769,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,25162,1,2,9,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,25162,8,3)

	-- Tranquil Mechanical Yeti - 26010
	self:AddCompanion(PetDB,26010,21277,1,"CRITTER",0)
	--self:AddCompanionFlags(PetDB,26010,1,2,5,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,26010,3,4036,26011)

	-- Snowman Kit - 26045
	self:AddCompanion(PetDB,26045,21309,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,26045,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26045,7,1)

	-- Jingling Bell - 26529
	self:AddCompanion(PetDB,26529,21308,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,26529,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26529,7,1)

	-- Green Helper Box - 26533
	self:AddCompanion(PetDB,26533,21301,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,26533,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26533,7,1)

	-- Red Helper Box - 26541
	self:AddCompanion(PetDB,26541,21305,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,26541,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26541,7,1)

	-- Pink Murloc Egg - 27241 (Gurky)
	self:AddCompanion(PetDB,27241,22114,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,27241,1,2,12,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,27241,8,6)

	-- Truesilver Shafted Arrow - 27570
	self:AddCompanion(PetDB,27570,22235,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,27570,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26541,7,5)

	-- Polar Bear Collar - 28505 (Poley)
	self:AddCompanion(PetDB,28505,22781,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,28505,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28505,8,7)

	-- Turtle Box - 28738
	self:AddCompanion(PetDB,28738,23002,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,28738,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28738,2,171,2,5502,7,8)

	-- Piglet's Collar - 28739
	self:AddCompanion(PetDB,28739,23007,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,28739,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28739,2,171,2,5502,7,8)

	-- Rat Cage - 28740
	self:AddCompanion(PetDB,28740,23015,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,28740,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28740,2,171,2,5502,7,8)

	-- Spirit of Summer - 28871
	self:AddCompanion(PetDB,28871,23083,3,"CRITTER",0)
	self:AddCompanionFlags(PetDB,28871,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28871,7,4)

	-- Hippogryph Hatchling - 30156
	self:AddCompanion(PetDB,30156,23713,4,"CRITTER",1)
	self:AddCompanionFlags(PetDB,30156,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,30156,8,1)

	-- Netherwhelp's Collar - 32298
	self:AddCompanion(PetDB,32298,25535,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,32298,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,32298,8,10)

	-- Magical Crawdad Box - 33050
	self:AddCompanion(PetDB,33050,27445,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,33050,1,2,9,21,36)
	self:AddCompanionAcquire(PetDB,33050,8,9)

	-- Mana Wyrmling - 35156
	self:AddCompanion(PetDB,35156,29363,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,35156,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35156,1,20980)

	-- Brown Rabbit Crate - 35239
	self:AddCompanion(PetDB,35239,29364,1,"CRITTER",0)
	self:AddCompanionFlags(PetDB,35239,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35239,1,20980)

	-- Blue Moth Egg - 35907
	self:AddCompanion(PetDB,35907,29901,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,35907,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35907,1,21019)

	-- Red Moth Egg - 35909
	self:AddCompanion(PetDB,35909,29902,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,35909,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35909,1,20980)

	-- Yellow Moth Egg - 35910
	self:AddCompanion(PetDB,35910,29903,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,35910,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35910,1,21019)

	-- White Moth Egg - 35911
	self:AddCompanion(PetDB,35911,29904,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,35911,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35911,1,21019)

	-- Golden Dragonhawk Hatchling - 36027
	self:AddCompanion(PetDB,36027,29953,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,36027,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36027,1,16860)

	-- Red Dragonhawk Hatchling - 36028
	self:AddCompanion(PetDB,36028,29956,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,36028,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36028,1,16860)

	-- Silver Dragonhawk Hatchling - 36029
	self:AddCompanion(PetDB,36029,29957,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,36029,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36029,1,16860)

	-- Blue Dragonhawk Hatchling - 36031
	self:AddCompanion(PetDB,36031,29958,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,36031,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36031,1,20980)

	-- Captured Firefly - 36034
	self:AddCompanion(PetDB,36034,29960,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,36034,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36034,4,20197)

	-- Miniwing - 39181
	self:AddCompanion(PetDB,39181,31760,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,39181,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,39181,2,10898)

	-- Wolpertinger's Tankard - 39709
	self:AddCompanion(PetDB,39709,32233,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,39709,1,2,3,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,39709,7,6)

	-- Fortune Coin - 40405 (Lucky)
	self:AddCompanion(PetDB,40405,32498,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,40405,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40405,8,12)

	-- Banana Charm - 40549
	self:AddCompanion(PetDB,40549,32588,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,40549,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40549,8,1)

	-- Sleepy Willy - 40613
	self:AddCompanion(PetDB,40613,32617,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,40613,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40613,2,10966,2,10967,5,8)

	-- Egbert's Egg - 40614
	self:AddCompanion(PetDB,40614,32616,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,40614,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40614,2,10966,2,10967,5,8)

	-- Elekk Training Collar - 40634
	self:AddCompanion(PetDB,40634,32622,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,40634,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40634,2,10966,2,10967,5,8)

	-- Reeking Pet Carrier - 40990
	self:AddCompanion(PetDB,40990,40653,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,40990,1,2,15,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40990,9,1250)

	-- Sinister Squashling - 42609
	self:AddCompanion(PetDB,42609,33154,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,42609,1,2,6,8,10,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,42609,4,23682,5,7)

	-- Toothy's Bucket - 43697
	self:AddCompanion(PetDB,43697,33816,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,43697,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,43697,2,11665,8,18)

	-- Muckbreath's Bucket - 43698
	self:AddCompanion(PetDB,43698,33818,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,43698,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,43698,2,11665,8,18)

	-- Mojo - 43918
	self:AddCompanion(PetDB,43918,33993,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,43918,1,2,7,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,43918,8,19)

	-- Tiny Sporebat - 45082
	self:AddCompanion(PetDB,45082,34478,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,45082,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,58)
	self:AddCompanionAcquire(PetDB,45082,6,970,4,18382)

	-- Rocket Chicken - 45125
	self:AddCompanion(PetDB,45125,34492,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,45125,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,45125,8,1)

	-- Dragon Kite - 45127
	self:AddCompanion(PetDB,45127,34493,4,"CRITTER",1)
	self:AddCompanionFlags(PetDB,45127,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,45127,8,1)

	-- Scorched Stone - 45890
	self:AddCompanion(PetDB,45890,34955,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,45890,1,2,6,8,10,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,45890,4,25740,5,4)

	-- Snarly's Bucket - 46425
	self:AddCompanion(PetDB,46425,35349,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,46425,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,46425,2,11665,8,18)

	-- Chuck's Bucket - 46426
	self:AddCompanion(PetDB,46426,35350,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,46426,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,46426,2,11665,8,18)

	-- Phoenix Hatchling - 46599
	self:AddCompanion(PetDB,46599,35504,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,46599,1,2,6,10,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,46599,4,24664)

	-- Spirit of Competition - 48406
	self:AddCompanion(PetDB,48406,37297,2,"CRITTER",1)
	self:AddCompanionFlags(PetDB,48406,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,48406,8,13)

	-- Essence of Competition - 48408
	self:AddCompanion(PetDB,48408,nil,2,"CRITTER",1)
	self:AddCompanionFlags(PetDB,48408,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,48408,8,13)

	-- Soul-Trader Beacon - 49964
	self:AddCompanion(PetDB,49964,38050,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,49964,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,49964,8,1)

	-- Nether Ray Fry - 51716
	self:AddCompanion(PetDB,51716,38628,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,51716,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,90)
	self:AddCompanionAcquire(PetDB,51716,6,1031,4,23367)

	-- Vampiric Batling - 51851
	self:AddCompanion(PetDB,51851,38658,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,51851,1,2,7,8,10,12,14,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,51851,4,28194,5,7)

	-- Frosty's Collar - 52615
	self:AddCompanion(PetDB,52615,39286,3,"CRITTER",2)
	self:AddCompanionFlags(PetDB,52615,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,52615,8,11)

	-- Tyrael's Hilt - 53082
	self:AddCompanion(PetDB,53082,39656,3,"CRITTER",1)
	self:AddCompanionFlags(PetDB,53082,1,2,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,53082,8,14)

	-- Ghostly Skull - 53316
	self:AddCompanion(PetDB,53316,39973,3,"CRITTER",2)
	self:AddCompanionFlags(PetDB,53316,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,53316,1,29537)

	-- Clockwork Rocket Bot - 54187
	self:AddCompanion(PetDB,54187,34425,3,"CRITTER",2)
	self:AddCompanionFlags(PetDB,54187,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,54187,5,1)

	-- Penguin Egg - 58636
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB,58636,43517,3,"CRITTER",2)
	--self:AddCompanionFlags(PetDB,58636,1,2,21,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,

	-- Giant Sewer Rat - 59250
	self:AddCompanion(PetDB,59250,43698,3,"CRITTER",2)
	self:AddCompanionFlags(PetDB,59250,1,2,9,21,36)
	self:AddCompanionAcquire(PetDB,59250,7,2,8,17)

	-- Tickbird Hatchling -- 61348
	self:AddCompanion(PetDB,61348,39896,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61348,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61348,6,1105,3,31910,8,16)

	-- White Tickbird Hatchling -- 61349
	self:AddCompanion(PetDB,61349,39899,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61349,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61349,6,1105,3,31910,8,16)

	-- Proto-Drake Whelp -- 61350
	self:AddCompanion(PetDB,61350,44721,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61350,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61350,6,1105,3,31910,8,16)

	-- Cobra Hatchling -- 61351
	self:AddCompanion(PetDB,61351,39898,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61351,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61351,6,1105,3,31910,8,16)

	-- Nurtured Penguin Egg - 61357
	self:AddCompanion(PetDB,61357,44723,3,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61357,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,65)
	self:AddCompanionAcquire(PetDB,61357,6,4,1073,31916,6,4,1073,32763)

	-- Kirin Tor Familiar - 61472
	self:AddCompanion(PetDB,61472,44738,3,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61472,1,2,15,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,61472,9,1956)

	-- Baby Blizzard Bear - 61855
	self:AddCompanion(PetDB,61855,44819,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61855,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,61855,8,15)

	-- Spring Rabbit - 61725
	self:AddCompanion(PetDB,61725,44794,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61725,1,2,8)
	self:AddCompanionAcquire(PetDB,61725,5,9)

	-- Little Fawn - 61991
	self:AddCompanion(PetDB,61991,44841,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,61991,1,2,15,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,61991,9,2516)

	-- Ammen Vale Lashling -- 62562
	self:AddCompanion(PetDB,62562,44984,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62562,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62562,1,33657)

	-- Dun Morogh Cub -- 62508
	self:AddCompanion(PetDB,62508,44970,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62508,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62508,1,33310)

	-- Elwynn Lamb -- 62516
	self:AddCompanion(PetDB,62516,44974,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62516,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62516,1,33307)

	-- Mechanopeep -- 62674
	self:AddCompanion(PetDB,62674,45002,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62674,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62674,1,33650)

	-- Teldrassil Sproutling -- 62491
	self:AddCompanion(PetDB,62491,44965,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62491,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62491,1,33653)

	-- Durotar Scorpion -- 62513
	self:AddCompanion(PetDB,62513,44973,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62513,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62513,1,33553)

	-- Enchanted Broom -- 62564
	self:AddCompanion(PetDB,62564,44982,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62564,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62564,1,33557)

	-- Mulgore Hatchling -- 62542
	self:AddCompanion(PetDB,62542,44980,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62542,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62542,1,33556)

	-- Sen'jin Fetish -- 63712
	self:AddCompanion(PetDB,63712,45606,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,63712,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,63712,1,33554)

	-- Tirisfal Batling -- 62510
	self:AddCompanion(PetDB,62510,44971,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62510,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62510,1,33555)

	-- Strand Crawler -- 62561
	self:AddCompanion(PetDB,62561,44983,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62561,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62561,8,20)

	-- Argent Squire -- 62609
	self:AddCompanion(PetDB,62609,44998,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62609,1,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62609,2,13702,2,13732,2,13733,2,13734,2,13735)

	-- Argent Gruntling -- 62746
	self:AddCompanion(PetDB,62746,45022,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,62746,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,62746,2,13736,2,13737,2,13738,2,13739,2,13740)

	-- Shimmering Wormling -- 66096
	self:AddCompanion(PetDB,66096,46820,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,66096,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,66096,6,1094,4,34881,6,1124,4,34772)

	-- Murkimus
	self:AddCompanion(PetDB,63318,45180,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,63318,1,2,12,16,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,63318,8,21)

	-- Heavy Murloc Egg
	self:AddCompanion(PetDB,66030,45180,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,66030,1,2,12,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,66030,8,22)

	-- Darting Hatchling
	self:AddCompanion(PetDB,67413,48112,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67413,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67413,4,14232)

	-- Deviate Hatchling
	self:AddCompanion(PetDB,67414,48114,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67414,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67414,4,3636,4,3637)

	-- Gundrak Hatchling
	self:AddCompanion(PetDB,67415,48116,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67415,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67415,4,29334)

	-- Leaping Hatchling
	self:AddCompanion(PetDB,67416,48118,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67416,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67416,4,5842)

	-- Obsidian Hatchling
	self:AddCompanion(PetDB,67417,48120,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67417,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67417,1,28951)

	-- Ravasaur Hatchling
	self:AddCompanion(PetDB,67418,48122,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67418,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67418,4,6581)

	-- Razormaw Hatchling
	self:AddCompanion(PetDB,67419,48124,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67419,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67419,4,1140)

	-- Razzashi Hatchling
	self:AddCompanion(PetDB,67420,48122,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,67420,1,2,7,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,67420,4,14821)

	-- Curious Oracle Hatchling
	self:AddCompanion(PetDB,65381,46545,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,65381,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,65381,5,8)

	-- Curious Wolvar Pup
	self:AddCompanion(PetDB,65382,46544,2,"CRITTER",2)
	self:AddCompanionFlags(PetDB,65382,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,65382,5,8)

	-- Battle-Bot
	self:AddCompanion(PetDB, 65682, 46767, 2, "CRITTER", 2)
	self:AddCompanionFlags(PetDB, 65682, 1, 2, 12, 14, 21, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)
	self:AddCompanionAcquire(PetDB, 65682, 8)

	return 134

end
