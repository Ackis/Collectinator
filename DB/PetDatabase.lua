--[[

************************************************************************

PetDatabase.lua

Pet Database data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:AddCompanion(PetDB,SpellID,Item ID,Rarity,Companion Type,Warcraftpets Pet ID)
	http://www.warcraftpets.com/go.asp?pet=
************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

function addon:MakeMiniPetTable(PetDB)

	local companioncount = 0

	-- Mechanical Squirrel Box - 4055
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,4055,4401,1,"CRITTER",10)
	self:AddCompanionFlags(PetDB,4055,1,2,5,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,4055,3,4036,3928)

	-- Cat Carrier (Bombay) - 10673
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10673,8485,1,"CRITTER",2)
	self:AddCompanionFlags(PetDB,10673,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10673,1,6367)

	-- Cat Carrier (Cornish Rex) - 10674
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10674,8486,1,"CRITTER",3)
	self:AddCompanionFlags(PetDB,10674,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10674,1,6367)

	-- Cat Carrier (Black Tabby) - 10675
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10675,8491,1,"CRITTER",1)
	self:AddCompanionFlags(PetDB,10675,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10675,4,1920,4,2271,4,2272,4,2358)

	-- Cat Carrier (Orange Tabby) - 10676
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10676,8487,1,"CRITTER",4)
	self:AddCompanionFlags(PetDB,10676,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10676,1,6367)

	-- Cat Carrier (Siamese) - 10677
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10677,8490,1,"CRITTER",5)
	self:AddCompanionFlags(PetDB,10677,1,2,3,6,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10677,1,20980,4,645)

	-- Cat Carrier (Silver Tabby) - 10678
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10678,8488,1,"CRITTER",6)
	self:AddCompanionFlags(PetDB,10678,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10678,1,6367)

	-- Cat Carrier (White Kitten) - 10679
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10679,8489,1,"CRITTER",7)
	self:AddCompanionFlags(PetDB,10679,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10679,1,8666)

	-- Parrot Cage (Cockatiel) - 10680
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10680,8496,1,"CRITTER",22)
	self:AddCompanionFlags(PetDB,10680,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10680,1,2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10682,8494,1,"CRITTER",24)
	self:AddCompanionFlags(PetDB,10682,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10682,4,1561,4,1562,4,1563,4,1564,4,1565,4,1653,4,2545,4,4505,4,4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10683,8492,1,"CRITTER",23)
	self:AddCompanionFlags(PetDB,10683,1,2,6,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10683,4,657)

	-- Parrot Cage (Senegal) - 10684
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10684,8495,1,"CRITTER",25)
	self:AddCompanionFlags(PetDB,10684,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10684,1,2663,1,20980)

	-- Ancona Chicken - 10685
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10685,11023,1,"CRITTER",16)
	self:AddCompanionFlags(PetDB,10685,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10685,1,6548)

	-- Cockroach - 10688
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10688,10393,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10688,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10688,1,8403,1,20980)

	-- Dark Whelpling - 10695
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10695,10822,1,"CRITTER",34)
	self:AddCompanionFlags(PetDB,10695,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10695,4,2725,4,4324)

	-- Azure Whelpling - 10696
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10696,34535,1,"CRITTER",78)
	self:AddCompanionFlags(PetDB,10696,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10696,4,193,4,6129,4,6130,4,6131)

	-- Tiny Crimson Whelpling - 10697
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10697,8499,1,"CRITTER",35)
	self:AddCompanionFlags(PetDB,10697,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10697,4,1042,4,1044,4,1069)

	-- Tiny Emerald Whelpling - 10698
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10698,8498,1,"CRITTER",36)
	self:AddCompanionFlags(PetDB,10698,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10698,4,741)

	-- Wood Frog Box - 10703
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10703,11027,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,10703,1,2,3,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,10703,1,14860,7,3)

	-- Tree Frog Box - 10704
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10704,11026,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,10704,1,2,3,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,10704,1,14860,7,3)

	-- Hawk Owl - 10706
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10706,8501,1,"CRITTER",20)
	self:AddCompanionFlags(PetDB,10706,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10706,1,8665)

	-- Great Horned Owl - 10707
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10707,8500,1,"CRITTER",19)
	self:AddCompanionFlags(PetDB,10707,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10707,1,8665)

	-- Prairie Dog Whistle - 10709
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10709,10394,1,"CRITTER",11)
	self:AddCompanionFlags(PetDB,10709,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10709,1,8401)

	-- Rabbit Crate (Snowshoe) - 10711
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10711,8497,1,"CRITTER",9)
	self:AddCompanionFlags(PetDB,10711,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10711,1,1263)

	-- Black Kingsnake - 10714
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10714,10360,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10714,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10714,1,8404)

	-- Brown Snake - 10716
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10716,10361,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10716,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10716,1,8404)

	-- Crimson Snake - 10717
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10717,10392,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10717,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,10717,1,8404,1,20980)

	-- Mechanical Chicken - 12243
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,12243,10398,1,"CRITTER",17)
	--self:AddCompanionFlags(PetDB,12243,1,2,4,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,12243,2,3721,

	-- Chicken Egg - 13548
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,13548,11110,1,"CRITTER",18)
	--self:AddCompanionFlags(PetDB,13548,1,2,21,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,13548,8,2)

	-- Pet Bombling - 15048
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15048,11825,1,"CRITTER",57)
	--self:AddCompanionFlags(PetDB,15048,1,2,5,21,29)
	--self:AddCompanionAcquire(PetDB,15048,3,4036,15628)

	-- Lil' Smoky - 15049
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15049,11826,1,"CRITTER",56)
	--self:AddCompanionFlags(PetDB,15049,1,2,5,21,29)
	--self:AddCompanionAcquire(PetDB,15049,3,4036,15633)

	-- Sprite Darter Egg - 15067
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15067,11474,1,"CRITTER")
	self:AddCompanionFlags(PetDB,15067,1,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,15067,2,4298)

	-- Worg Carrier - 15999
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15999,12264,1,"CRITTER")
	self:AddCompanionFlags(PetDB,15999,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,15999,2,4729)

	-- Smolderweb Carrier - 16450
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,16450,12529,1,"CRITTER")
	self:AddCompanionFlags(PetDB,16450,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,16450,2,4862)

	-- Panda Collar - 17707
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,17707,13583,3,"CRITTER",14)
	self:AddCompanionFlags(PetDB,17707,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,17707,8,8)

	-- Diablo Stone - 17708
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,17708,13584,3,"CRITTER",67)
	self:AddCompanionFlags(PetDB,17708,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,17708,8,8)

	-- Zergling Leash - 17709
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,17709,13582,3,"CRITTER",66)
	self:AddCompanionFlags(PetDB,17709,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,17709,8,8)

	-- Lifelike Mechanical Toad - 19772
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,19772,15996,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,19772,1,2,5,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,19772,3,4036,19793)

	-- A Jubling's Tiny Home - 23811
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,23811,19450,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,23811,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,23811,7,3)

	-- Blue Murloc Egg - 24696 (Murky)
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,24696,20371,3,"CRITTER",38)
	self:AddCompanionFlags(PetDB,24696,1,2,12,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,24696,8,4)

	-- Lurky's Egg - 24988
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,24988,30360,3,"CRITTER",40)
	self:AddCompanionFlags(PetDB,24988,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,24988,8,10)

	-- Disgusting Oozeling - 25162
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,25162,20769,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,25162,1,2,9,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,25162,8,3)

	-- Tranquil Mechanical Yeti - 26010
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26010,21277,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,26010,1,2,5,20,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,26010,3,4036,26011)

	-- Snowman Kit - 26045
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26045,21309,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26045,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26045,7,1)

	-- Jingling Bell - 26529
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26529,21308,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26529,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26529,7,1)

	-- Green Helper Box - 26533
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26533,21301,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26533,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26533,7,1)

	-- Red Helper Box - 26541
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26541,21305,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26541,1,2,8,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26541,7,1)

	-- Pink Murloc Egg - 27241 (Gurky)
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,27241,22114,3,"CRITTER",39)
	self:AddCompanionFlags(PetDB,27241,1,2,12,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,27241,8,6)

	-- Truesilver Shafted Arrow - 27570
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,27570,22235,1,"CRITTER")
	self:AddCompanionFlags(PetDB,27570,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,26541,7,5)

	-- Polar Bear Collar - 28505 (Poley)
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28505,22781,1,"CRITTER",109)
	self:AddCompanionFlags(PetDB,28505,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28505,8,7)

	-- Turtle Box - 28738
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28738,23002,1,"CRITTER",33)
	self:AddCompanionFlags(PetDB,28738,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28738,2,171,2,5502,7,8)

	-- Piglet's Collar - 28739
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28739,23007,1,"CRITTER",13)
	self:AddCompanionFlags(PetDB,28739,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28739,2,171,2,5502,7,8)

	-- Rat Cage - 28740
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28740,23015,1,"CRITTER",12)
	self:AddCompanionFlags(PetDB,28740,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28740,2,171,2,5502,7,8)

	-- Spirit of Summer - 28871
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28871,23083,3,"CRITTER",64)
	self:AddCompanionFlags(PetDB,28871,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,28871,7,4)

	-- Hippogryph Hatchling - 30156
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,30156,23713,4,"CRITTER",65)
	self:AddCompanionFlags(PetDB,30156,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,30156,8,1)

	-- Netherwhelp's Collar - 32298
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,32298,25535,3,"CRITTER",37)
	self:AddCompanionFlags(PetDB,32298,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,32298,8,10)

	-- Magical Crawdad Box - 33050
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,33050,27445,1,"CRITTER")
	self:AddCompanionFlags(PetDB,33050,1,2,9,21,36)
	self:AddCompanionAcquire(PetDB,33050,8,9)

	-- Mana Wyrmling - 35156
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35156,29363,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35156,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35156,1,20980)

	-- Brown Rabbit Crate - 35239
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35239,29364,1,"CRITTER",8)
	self:AddCompanionFlags(PetDB,35239,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35239,1,20980)

	-- Blue Moth Egg - 35907
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35907,29901,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35907,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35907,1,21019)

	-- Red Moth Egg - 35909
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35909,29902,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35909,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35909,1,20980)

	-- Yellow Moth Egg - 35910
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35910,29903,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35910,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35910,1,21019)

	-- White Moth Egg - 35911
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35911,29904,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35911,1,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,35911,1,21019)

	-- Golden Dragonhawk Hatchling - 36027
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36027,29953,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36027,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36027,1,16860)

	-- Red Dragonhawk Hatchling - 36028
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36028,29956,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36028,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36028,1,16860)

	-- Silver Dragonhawk Hatchling - 36029
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36029,29957,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36029,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36029,1,16860)

	-- Blue Dragonhawk Hatchling - 36031
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36031,29958,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36031,1,2,3,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36031,1,20980)

	-- Captured Firefly - 36034
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36034,29960,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36034,1,2,10,20,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,36034,4,20197)

	-- Miniwing - 39181
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,39181,31760,1,"CRITTER")
	self:AddCompanionFlags(PetDB,39181,1,2,4,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,39181,2,10898)

	-- Wolpertinger's Tankard - 39709
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,39709,32233,3,"CRITTER")
	self:AddCompanionFlags(PetDB,39709,1,2,3,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,39709,7,6)

	-- Fortune Coin - 40405 (Lucky)
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40405,32498,3,"CRITTER",72)
	self:AddCompanionFlags(PetDB,40405,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40405,8,12)

	-- Banana Charm - 40549
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40549,32588,3,"CRITTER",68)
	self:AddCompanionFlags(PetDB,40549,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40549,8,1)

	-- Sleepy Willy - 40613
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40613,32617,3,"CRITTER",71)
	self:AddCompanionFlags(PetDB,40613,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40613,2,10966,2,10967,5,8)

	-- Egbert's Egg - 40614
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40614,32616,3,"CRITTER",69)
	self:AddCompanionFlags(PetDB,40614,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40614,2,10966,2,10967,5,8)

	-- Elekk Training Collar - 40634
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40634,32622,3,"CRITTER",70)
	self:AddCompanionFlags(PetDB,40634,1,2,4,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40634,2,10966,2,10967,5,8)

	-- Reeking Pet Carrier - 40990
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40990,40653,3,"CRITTER",117)
	self:AddCompanionFlags(PetDB,40990,1,2,15,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,40990,9,1250)

	-- Sinister Squashling - 42609
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,42609,33154,3,"CRITTER")
	self:AddCompanionFlags(PetDB,42609,1,2,6,8,10,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,42609,4,23682,5,7)

	-- Toothy's Bucket - 43697
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,43697,33816,3,"CRITTER")
	self:AddCompanionFlags(PetDB,43697,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,43697,2,11665,8,18)

	-- Muckbreath's Bucket - 43698
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,43698,33818,3,"CRITTER")
	self:AddCompanionFlags(PetDB,43698,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,43698,2,11665,8,18)

	-- Mojo - 43918
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,43918,33993,3,"CRITTER")
	self:AddCompanionFlags(PetDB,43918,1,2,7,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,43918,8,19)

	-- Tiny Sporebat - 45082
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45082,34478,3,"CRITTER")
	self:AddCompanionFlags(PetDB,45082,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,58)
	self:AddCompanionAcquire(PetDB,45082,6,970,4,18382)

	-- Rocket Chicken - 45125
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45125,34492,3,"CRITTER",79)
	self:AddCompanionFlags(PetDB,45125,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,45125,8,1)

	-- Dragon Kite - 45127
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45127,34493,4,"CRITTER",80)
	self:AddCompanionFlags(PetDB,45127,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,45127,8,1)

	-- Scorched Stone - 45890
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45890,34955,3,"CRITTER")
	self:AddCompanionFlags(PetDB,45890,1,2,6,8,10,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,45890,4,25740,5,4)

	-- Snarly's Bucket - 46425
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,46425,35349,3,"CRITTER")
	self:AddCompanionFlags(PetDB,46425,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,46425,2,11665,8,18)

	-- Chuck's Bucket - 46426
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,46426,35350,3,"CRITTER")
	self:AddCompanionFlags(PetDB,46426,1,2,4,21,36)
	self:AddCompanionAcquire(PetDB,46426,2,11665,8,18)

	-- Phoenix Hatchling - 46599
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,46599,35504,3,"CRITTER")
	self:AddCompanionFlags(PetDB,46599,1,2,6,10,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,46599,4,24664)

	-- Spirit of Competition - 48406
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,48406,37297,2,"CRITTER",114)
	self:AddCompanionFlags(PetDB,48406,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,48406,8,13)

	-- Essence of Competition - 48408
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,48408,nil,2,"CRITTER",115)
	self:AddCompanionFlags(PetDB,48408,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,48408,8,13)

	-- Soul-Trader Beacon - 49964
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,49964,38050,3,"CRITTER",105)
	self:AddCompanionFlags(PetDB,49964,1,2,11,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,49964,8,1)

	-- Nether Ray Fry - 51716
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,51716,38628,3,"CRITTER")
	self:AddCompanionFlags(PetDB,51716,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,51716,6,1031,4,23367)
-- Need shatari skyguard

	-- Vampiric Batling - 51851
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,51851,38658,3,"CRITTER")
	self:AddCompanionFlags(PetDB,51851,1,2,7,8,10,12,14,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,51851,4,28194,5,7)

	-- Frosty's Collar - 52615
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,52615,39286,3,"CRITTER",118)
	self:AddCompanionFlags(PetDB,52615,1,2,13,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,52615,8,11)

	-- Tyrael's Hilt - 53082
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,53082,39656,3,"CRITTER")
	self:AddCompanionFlags(PetDB,53082,1,2,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,53082,8,14)

	-- Ghostly Skull - 53316
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,53316,39973,3,"CRITTER")
	self:AddCompanionFlags(PetDB,53316,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,53316,1,29537)

	-- Clockwork Rocket Bot - 54187
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,54187,34425,3,"CRITTER")
	self:AddCompanionFlags(PetDB,54187,1,2,8,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionAcquire(PetDB,54187,5,1)

	-- Penguin Egg - 58636
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB,58636,43517,3,"CRITTER")
	--self:AddCompanionFlags(PetDB,58636,1,2,21,25,26,27,28,29,30,31,32,33,34,35,36)
	--self:AddCompanionAcquire(PetDB,

	-- Giant Sewer Rat - 59250
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,59250,43698,3,"CRITTER")
	self:AddCompanionFlags(PetDB,59250,1,2,9,21,36)
	self:AddCompanionAcquire(PetDB,7,2,8,17)

	-- Tickbird Hatchling -- 61348
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61348,39896,1,"CRITTER",126)
	self:AddCompanionFlags(PetDB,61348,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61348,6,1105,3,31910,8,16)

	-- White Tickbird Hatchling -- 61349
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61349,39899,1,"CRITTER",127)
	self:AddCompanionFlags(PetDB,61349,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61349,6,1105,3,31910,8,16)

	-- Proto-Drake Whelp -- 61350
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61350,44721,1,"CRITTER",125)
	self:AddCompanionFlags(PetDB,61350,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61350,6,1105,3,31910,8,16)

	-- Cobra Hatchling -- 61351
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61351,39898,1,"CRITTER",124)
	self:AddCompanionFlags(PetDB,61351,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,66)
	self:AddCompanionAcquire(PetDB,61351,6,1105,3,31910,8,16)

	-- Nurtured Penguin Egg - 61357
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61357,44723,3,"CRITTER")
	self:AddCompanionFlags(PetDB,61357,1,2,3,21,25,26,27,28,29,30,31,32,33,34,35,36,65)
	self:AddCompanionAcquire(PetDB,61357,6,4,1073,31916,6,4,1073,32763)

	-- Kirin Tor Familiar - 61472
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61472,44738,3,"CRITTER",121)
	self:AddCompanionFlags(PetDB,61472,1,2,15,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionFlags(PetDB,61472,9,1956)

	-- Baby Blizzard Bear - 61855
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61855,44819,1,"CRITTER",128)
	self:AddCompanionFlags(PetDB,61855,1,2,12,14,22,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionFlags(PetDB,61855,8,15)

	-- Little Fawn - 61991
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61991,44841,1,"CRITTER",129)
	self:AddCompanionFlags(PetDB,61991,1,2,15,21,25,26,27,28,29,30,31,32,33,34,35,36)
	self:AddCompanionFlags(PetDB,61991,9,2516)

	return companioncount

end
