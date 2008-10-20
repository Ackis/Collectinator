--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Ackis Recipe List

Auto-generated using ARLDataminer.rb
Entries to this file will be overwritten

144 found from data mining.  0 ignored.

************************************************************************

$Date$
$Rev$

************************************************************************

Format:

	self:AddCompanion(PetDB, SpellID, Item ID, Rarity)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:MakeMountTable(MountDB)

	-- Brown Horse Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmareact13totalLootCount34id6749type15.-1rlevel30rarity3source2slevel75methoddropped-by,sold-byspellid458level30method_vendorstype7price10000000locs15descHorse Breederminlevel35nameGregor MacVincereact13id4885type7price10000000locs12descHorse Breederminlevel10nameKatie Hunterreact03id384type7price10000000locs267descHorse Breederminlevel32nameMerideth Carlsonreact13id2357type7price10000000locs11descHorse Breederminlevel25nameUnger Statforthreact13id1460id5656
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 458, 5656, 3)
	self:addTradeFlags(RecipeDB, 458, 1,4,5)
	self:addTradeAcquire(RecipeDB, 458, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Black Stallion Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount3nameErmareact13totalLootCount34id6749type15.-1rlevel30rarity3source12slevel75methoddropped-by,sold-byspellid470level30method_vendorstype7price10000000locs11descHorse Breederminlevel25nameUnger Statforthreact13id1460id2411
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 470, 2411, 3)
	self:addTradeFlags(RecipeDB, 470, 1,4,5)
	self:addTradeAcquire(RecipeDB, 470, 3, 6749, 2, 1460)

	-- Pinto Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmareact13totalLootCount34id6749type15.-1rlevel30rarity3source2slevel75methoddropped-by,sold-byspellid472level30method_vendorstype7price10000000locs15descHorse Breederminlevel35nameGregor MacVincereact13id4885type7price10000000locs12descHorse Breederminlevel10nameKatie Hunterreact03id384type7price10000000locs267descHorse Breederminlevel32nameMerideth Carlsonreact13id2357type7price10000000locs11descHorse Breederminlevel25nameUnger Statforthreact13id1460id2414
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 472, 2414, 3)
	self:addTradeFlags(RecipeDB, 472, 1,4,5)
	self:addTradeAcquire(RecipeDB, 472, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Timber Wolf - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid580level30method_vendorstype7price10000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362id1132
	-- Vendor
	self:AddCompanion(PetDB, 580, 1132, 3)
	self:addTradeFlags(RecipeDB, 580, 2,4)
	self:addTradeAcquire(RecipeDB, 580, 2, 3362)

	-- Chestnut Mare Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount3nameErmareact13totalLootCount34id6749type15.-1rlevel30rarity3source12slevel75methoddropped-by,sold-byspellid6648level30method_vendorstype7price10000000locs15descHorse Breederminlevel35nameGregor MacVincereact13id4885type7price10000000locs12descHorse Breederminlevel10nameKatie Hunterreact03id384type7price10000000locs267descHorse Breederminlevel32nameMerideth Carlsonreact13id2357type7price10000000locs11descHorse Breederminlevel25nameUnger Statforthreact13id1460id5655
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 6648, 5655, 3)
	self:addTradeFlags(RecipeDB, 6648, 1,4,5)
	self:addTradeAcquire(RecipeDB, 6648, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Dire Wolf - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromspellid6653level30method_vendorstype7price10000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362id5665
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 6653, 5665, 3)
	self:addTradeFlags(RecipeDB, 6653, 2,4,8)
	self:addTradeAcquire(RecipeDB, 6653, 4, 1, 2, 3362)

	-- Horn of the Brown Wolf - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid6654level30method_vendorstype7price10000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362id5668
	-- Vendor
	self:AddCompanion(PetDB, 6654, 5668, 3)
	self:addTradeFlags(RecipeDB, 6654, 2,4)
	self:addTradeAcquire(RecipeDB, 6654, 2, 3362)

	-- Gray Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid6777level30method_vendorstype7price10000000locs1descRam Breederminlevel10nameVeron Amberstillreact13id1261id5864
	-- Vendor
	self:AddCompanion(PetDB, 6777, 5864, 3)
	self:addTradeFlags(RecipeDB, 6777, 1,4)
	self:addTradeAcquire(RecipeDB, 6777, 2, 1261)

	-- White Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid6898level30method_vendorstype7price10000000locs1descRam Breederminlevel10nameVeron Amberstillreact13id1261id5873
	-- Vendor
	self:AddCompanion(PetDB, 6898, 5873, 3)
	self:addTradeFlags(RecipeDB, 6898, 1,4)
	self:addTradeAcquire(RecipeDB, 6898, 2, 1261)

	-- Brown Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid6899level30method_vendorstype7price10000000locs1descRam Breederminlevel10nameVeron Amberstillreact13id1261id5872
	-- Vendor
	self:AddCompanion(PetDB, 6899, 5872, 3)
	self:addTradeFlags(RecipeDB, 6899, 1,4)
	self:addTradeAcquire(RecipeDB, 6899, 2, 1261)

	-- Reins of the Striped Frostsaber - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid8394level30method_vendorstype7price10000000locs1657descSaber Handlerminlevel35nameLelanaireact13id4730id8631
	-- Vendor
	self:AddCompanion(PetDB, 8394, 8631, 3)
	self:addTradeFlags(RecipeDB, 8394, 1,4)
	self:addTradeAcquire(RecipeDB, 8394, 2, 4730)

	-- Whistle of the Emerald Raptor - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromspellid8395level30method_vendorstype7price10000000locs14descRaptor Handlerminlevel45nameZjolnirreact31id7952id8588
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 8395, 8588, 3)
	self:addTradeFlags(RecipeDB, 8395, 2,4,8)
	self:addTradeAcquire(RecipeDB, 8395, 4, 1, 2, 7952)

	-- Reins of the Spotted Frostsaber - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid10789level30method_vendorstype7price10000000locs1657descSaber Handlerminlevel35nameLelanaireact13id4730id8632
	-- Vendor
	self:AddCompanion(PetDB, 10789, 8632, 3)
	self:addTradeFlags(RecipeDB, 10789, 1,4)
	self:addTradeAcquire(RecipeDB, 10789, 2, 4730)

	-- Reins of the Striped Nightsaber - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid10793level30method_vendorstype7price10000000locs1657descSaber Handlerminlevel35nameLelanaireact13id4730id8629
	-- Vendor
	self:AddCompanion(PetDB, 10793, 8629, 3)
	self:addTradeFlags(RecipeDB, 10793, 1,4)
	self:addTradeAcquire(RecipeDB, 10793, 2, 4730)

	-- Old Whistle of the Ivory Raptor - 
	-- type15.-1rlevel40rarity1slevel75methodspellid10795level40id8589
	self:AddCompanion(PetDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid10796level30method_vendorstype7price10000000locs14descRaptor Handlerminlevel45nameZjolnirreact31id7952id8591
	-- Vendor
	self:AddCompanion(PetDB, 10796, 8591, 3)
	self:addTradeFlags(RecipeDB, 10796, 2,4)
	self:addTradeAcquire(RecipeDB, 10796, 2, 7952)

	-- Whistle of the Violet Raptor - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid10799level30method_vendorstype7price10000000locs14descRaptor Handlerminlevel45nameZjolnirreact31id7952id8592
	-- Vendor
	self:AddCompanion(PetDB, 10799, 8592, 3)
	self:addTradeFlags(RecipeDB, 10799, 2,4)
	self:addTradeAcquire(RecipeDB, 10799, 2, 7952)

	-- Red Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid10873level30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id8563
	-- Vendor
	self:AddCompanion(PetDB, 10873, 8563, 3)
	self:addTradeFlags(RecipeDB, 10873, 1,4)
	self:addTradeAcquire(RecipeDB, 10873, 2, 7955)

	-- Blue Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid10969level30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id8595
	-- Vendor
	self:AddCompanion(PetDB, 10969, 8595, 3)
	self:addTradeFlags(RecipeDB, 10969, 1,4)
	self:addTradeAcquire(RecipeDB, 10969, 2, 7955)

	-- White Mechanostrider Mod A - 
	-- type15.-1rlevel60rarity4slevel150methodspellid15779level60id13326
	self:AddCompanion(PetDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 
	-- type15.-1rlevel60rarity4slevel150methodspellid16055level60id12303
	self:AddCompanion(PetDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 
	-- type15.-1rlevel60rarity4slevel150methodspellid16056level60id12302
	self:AddCompanion(PetDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 
	-- type15.-1rlevel60rarity4slevel150methodspellid16080level60id12330
	self:AddCompanion(PetDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 
	-- type15.-1rlevel60rarity4slevel150methodspellid16081level60id12351
	self:AddCompanion(PetDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmareact13totalLootCount34id6749type15.-1rlevel60rarity4source1slevel150methoddropped-byspellid16082level60id12354
	-- Mob Drop
	self:AddCompanion(PetDB, 16082, 12354, 4)
	self:addTradeFlags(RecipeDB, 16082, 5)
	self:addTradeAcquire(RecipeDB, 16082, 3, 6749)

	-- White Stallion Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount1nameErmareact13totalLootCount34id6749type15.-1rlevel60rarity4source1slevel150methoddropped-byspellid16083level60id12353
	-- Mob Drop
	self:AddCompanion(PetDB, 16083, 12353, 4)
	self:addTradeFlags(RecipeDB, 16083, 5)
	self:addTradeAcquire(RecipeDB, 16083, 3, 6749)

	-- Whistle of the Mottled Red Raptor - 
	-- type15.-1rlevel60rarity4slevel150methodspellid16084level60id8586
	self:AddCompanion(PetDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 
	-- type15.-1rlevel60rarity4source2slevel75methodsold-byspellid17229level60method_vendorstype7price100000000locs618descWintersaber Trainerminlevel62nameRivern Frostwindreact23id10618id13086
	-- Vendor
	self:AddCompanion(PetDB, 17229, 13086, 4)
	self:addTradeFlags(RecipeDB, 17229, 1,4)
	self:addTradeAcquire(RecipeDB, 17229, 2, 10618)

	-- Whistle of the Ivory Raptor - 
	-- type15.-1rlevel60rarity4slevel150methodspellid17450level60id13317
	self:AddCompanion(PetDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid17453level30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id13321
	-- Vendor
	self:AddCompanion(PetDB, 17453, 13321, 3)
	self:addTradeFlags(RecipeDB, 17453, 1,4)
	self:addTradeAcquire(RecipeDB, 17453, 2, 7955)

	-- Unpainted Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid17454level30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id13322
	-- Vendor
	self:AddCompanion(PetDB, 17454, 13322, 3)
	self:addTradeFlags(RecipeDB, 17454, 1,4)
	self:addTradeAcquire(RecipeDB, 17454, 2, 7955)

	-- Icy Blue Mechanostrider Mod A - 
	-- type15.-1rlevel60rarity4slevel150methodspellid17459level60id13327
	self:AddCompanion(PetDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 
	-- type15.-1rlevel60rarity4slevel150methodspellid17460level60id13329
	self:AddCompanion(PetDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 
	-- type15.-1rlevel60rarity4slevel150methodspellid17461level60id13328
	self:AddCompanion(PetDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid17462level30method_vendorstype7price10000000locs85descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731id13331
	-- Vendor
	self:AddCompanion(PetDB, 17462, 13331, 3)
	self:addTradeFlags(RecipeDB, 17462, 2,4)
	self:addTradeAcquire(RecipeDB, 17462, 2, 4731)

	-- Blue Skeletal Horse - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromspellid17463level30method_vendorstype7price10000000locs85descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731id13332
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 17463, 13332, 3)
	self:addTradeFlags(RecipeDB, 17463, 2,4,8)
	self:addTradeAcquire(RecipeDB, 17463, 4, 1, 2, 4731)

	-- Brown Skeletal Horse - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid17464level30method_vendorstype7price10000000locs85descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731id13333
	-- Vendor
	self:AddCompanion(PetDB, 17464, 13333, 3)
	self:addTradeFlags(RecipeDB, 17464, 2,4)
	self:addTradeAcquire(RecipeDB, 17464, 2, 4731)

	-- Green Skeletal Warhorse - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid17465level60method_vendorstype7price100000000locs85descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731id13334
	-- Vendor
	self:AddCompanion(PetDB, 17465, 13334, 4)
	self:addTradeFlags(RecipeDB, 17465, 2,4)
	self:addTradeAcquire(RecipeDB, 17465, 2, 4731)

	-- Deathcharger's Reins - 
	-- method_dropstype6classification1locs2017disp10729minlevel62lootCount1nameBaron Rivendarereact33totalLootCount12362id10440type15.-1rlevel60rarity4source1slevel150methoddropped-byspellid17481level60id13335
	-- Instance: 2017 - type1category3minlevel58maxlevel60nameStratholmeid2017territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 17481, 13335, 4)
	self:addTradeFlags(RecipeDB, 17481, 5)
	self:addTradeAcquire(RecipeDB, 17481, 3, 10440)

	-- Gray Kodo - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid18989level30method_vendorstype7price10000000locs215descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685id15277
	-- Vendor
	self:AddCompanion(PetDB, 18989, 15277, 3)
	self:addTradeFlags(RecipeDB, 18989, 2,4)
	self:addTradeAcquire(RecipeDB, 18989, 2, 3685)

	-- Brown Kodo - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromspellid18990level30method_vendorstype7price10000000locs215descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685id15290
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 18990, 15290, 3)
	self:addTradeFlags(RecipeDB, 18990, 2,4,8)
	self:addTradeAcquire(RecipeDB, 18990, 4, 1, 2, 3685)

	-- Green Kodo - 
	-- type15.-1rlevel60rarity4slevel150methodspellid18991level60id15292
	self:AddCompanion(PetDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 
	-- type15.-1rlevel60rarity4slevel150methodspellid18992level60id15293
	self:AddCompanion(PetDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 
	-- type15.-1rlevel55rarity4source8slevel75methodspellid22717level55id18241
	self:AddCompanion(PetDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 
	-- type15.-1rlevel55rarity4source8slevel75methodspellid22718level55id18247
	self:AddCompanion(PetDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid22719level60method_vendorstype7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterreact11id12783id29465
	-- Vendor
	self:AddCompanion(PetDB, 22719, 29465, 4)
	self:addTradeFlags(RecipeDB, 22719, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22719, 2, 12783)

	-- Black War Ram - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid22720level60method_vendorstype7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterreact11id12783id29467
	-- Vendor
	self:AddCompanion(PetDB, 22720, 29467, 4)
	self:addTradeFlags(RecipeDB, 22720, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22720, 2, 12783)

	-- Whistle of the Black War Raptor - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid22721level60method_vendorstype7price0002056030205593020558300000locs2917descMount Quartermasterminlevel55nameRaider Borkreact21id12796id29472
	-- Vendor
	self:AddCompanion(PetDB, 22721, 29472, 4)
	self:addTradeFlags(RecipeDB, 22721, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22721, 2, 12796)

	-- Red Skeletal Warhorse - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid22722level60method_vendorstype7price0002056030205593020558300000locs2917descMount Quartermasterminlevel55nameRaider Borkreact21id12796id29470
	-- Vendor
	self:AddCompanion(PetDB, 22722, 29470, 4)
	self:addTradeFlags(RecipeDB, 22722, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22722, 2, 12796)

	-- Reins of the Black War Tiger - 
	-- type15.-1rlevel60rarity4source28slevel150methodsold-byspellid22723level60method_vendorstype7price000205603020559302055830locs35243525148-1minlevel70nameGeneral Goods Vendorreact11id26304type7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterreact11id12783id29471
	-- Vendor
	self:AddCompanion(PetDB, 22723, 29471, 4)
	self:addTradeFlags(RecipeDB, 22723, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22723, 2, 12783, 2, 26304)

	-- Horn of the Black War Wolf - 
	-- type15.-1rlevel55rarity4source8slevel75methodspellid22724level55id18245
	self:AddCompanion(PetDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23219level60method_vendorstype7price100000000locs1657descSaber Handlerminlevel35nameLelanaireact13id4730id18767
	-- Vendor
	self:AddCompanion(PetDB, 23219, 18767, 4)
	self:addTradeFlags(RecipeDB, 23219, 1,4)
	self:addTradeAcquire(RecipeDB, 23219, 2, 4730)

	-- Reins of the Swift Frostsaber - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23221level60method_vendorstype7price100000000locs1657descSaber Handlerminlevel35nameLelanaireact13id4730id18766
	-- Vendor
	self:AddCompanion(PetDB, 23221, 18766, 4)
	self:addTradeFlags(RecipeDB, 23221, 1,4)
	self:addTradeAcquire(RecipeDB, 23221, 2, 4730)

	-- Swift Yellow Mechanostrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23222level60method_vendorstype7price100000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id18774
	-- Vendor
	self:AddCompanion(PetDB, 23222, 18774, 4)
	self:addTradeFlags(RecipeDB, 23222, 1,4)
	self:addTradeAcquire(RecipeDB, 23222, 2, 7955)

	-- Swift White Mechanostrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23223level60method_vendorstype7price100000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id18773
	-- Vendor
	self:AddCompanion(PetDB, 23223, 18773, 4)
	self:addTradeFlags(RecipeDB, 23223, 1,4)
	self:addTradeAcquire(RecipeDB, 23223, 2, 7955)

	-- Swift Green Mechanostrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23225level60method_vendorstype7price100000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955id18772
	-- Vendor
	self:AddCompanion(PetDB, 23225, 18772, 4)
	self:addTradeFlags(RecipeDB, 23225, 1,4)
	self:addTradeAcquire(RecipeDB, 23225, 2, 7955)

	-- Swift Palomino - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount1nameErmareact13totalLootCount34id6749type15.-1rlevel60rarity4source2slevel150method_queststype0category00choiceitems187771187761187781coin0level1nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromspellid23227level60method_vendorstype7price100000000locs15descHorse Breederminlevel35nameGregor MacVincereact13id4885type7price100000000locs12descHorse Breederminlevel10nameKatie Hunterreact03id384type7price100000000locs267descHorse Breederminlevel32nameMerideth Carlsonreact13id2357id18776
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23227, 18776, 4)
	self:addTradeFlags(RecipeDB, 23227, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23227, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift White Steed - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmareact13totalLootCount34id6749type15.-1rlevel60rarity4source2slevel150method_queststype0category00choiceitems187771187761187781coin0level1nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromspellid23228level60method_vendorstype7price100000000locs15descHorse Breederminlevel35nameGregor MacVincereact13id4885type7price100000000locs12descHorse Breederminlevel10nameKatie Hunterreact03id384type7price100000000locs267descHorse Breederminlevel32nameMerideth Carlsonreact13id2357id18778
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23228, 18778, 4)
	self:addTradeFlags(RecipeDB, 23228, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23228, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Steed - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmareact13totalLootCount34id6749type15.-1rlevel60rarity4source2slevel150method_queststype0category00choiceitems187771187761187781coin0level1nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromspellid23229level60method_vendorstype7price100000000locs15descHorse Breederminlevel35nameGregor MacVincereact13id4885type7price100000000locs12descHorse Breederminlevel10nameKatie Hunterreact03id384type7price100000000locs267descHorse Breederminlevel32nameMerideth Carlsonreact13id2357id18777
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23229, 18777, 4)
	self:addTradeFlags(RecipeDB, 23229, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23229, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Ram - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23238level60method_vendorstype7price100000000locs1descRam Breederminlevel10nameVeron Amberstillreact13id1261id18786
	-- Vendor
	self:AddCompanion(PetDB, 23238, 18786, 4)
	self:addTradeFlags(RecipeDB, 23238, 1,4)
	self:addTradeAcquire(RecipeDB, 23238, 2, 1261)

	-- Swift Gray Ram - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23239level60method_vendorstype7price100000000locs1descRam Breederminlevel10nameVeron Amberstillreact13id1261id18787
	-- Vendor
	self:AddCompanion(PetDB, 23239, 18787, 4)
	self:addTradeFlags(RecipeDB, 23239, 1,4)
	self:addTradeAcquire(RecipeDB, 23239, 2, 1261)

	-- Swift White Ram - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23240level60method_vendorstype7price100000000locs1descRam Breederminlevel10nameVeron Amberstillreact13id1261id18785
	-- Vendor
	self:AddCompanion(PetDB, 23240, 18785, 4)
	self:addTradeFlags(RecipeDB, 23240, 1,4)
	self:addTradeAcquire(RecipeDB, 23240, 2, 1261)

	-- Swift Blue Raptor - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23241level60method_vendorstype7price100000000locs14descRaptor Handlerminlevel45nameZjolnirreact31id7952id18788
	-- Vendor
	self:AddCompanion(PetDB, 23241, 18788, 4)
	self:addTradeFlags(RecipeDB, 23241, 2,4)
	self:addTradeAcquire(RecipeDB, 23241, 2, 7952)

	-- Swift Olive Raptor - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23242level60method_vendorstype7price100000000locs14descRaptor Handlerminlevel45nameZjolnirreact31id7952id18789
	-- Vendor
	self:AddCompanion(PetDB, 23242, 18789, 4)
	self:addTradeFlags(RecipeDB, 23242, 2,4)
	self:addTradeAcquire(RecipeDB, 23242, 2, 7952)

	-- Swift Orange Raptor - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23243level60method_vendorstype7price100000000locs14descRaptor Handlerminlevel45nameZjolnirreact31id7952id18790
	-- Vendor
	self:AddCompanion(PetDB, 23243, 18790, 4)
	self:addTradeFlags(RecipeDB, 23243, 2,4)
	self:addTradeAcquire(RecipeDB, 23243, 2, 7952)

	-- Purple Skeletal Warhorse - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23246level60method_vendorstype7price100000000locs85descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731id18791
	-- Vendor
	self:AddCompanion(PetDB, 23246, 18791, 4)
	self:addTradeFlags(RecipeDB, 23246, 2,4)
	self:addTradeAcquire(RecipeDB, 23246, 2, 4731)

	-- Great White Kodo - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23247level60method_vendorstype7price100000000locs215descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685id18793
	-- Vendor
	self:AddCompanion(PetDB, 23247, 18793, 4)
	self:addTradeFlags(RecipeDB, 23247, 2,4)
	self:addTradeAcquire(RecipeDB, 23247, 2, 3685)

	-- Great Gray Kodo - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23248level60method_vendorstype7price100000000locs215descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685id18795
	-- Vendor
	self:AddCompanion(PetDB, 23248, 18795, 4)
	self:addTradeFlags(RecipeDB, 23248, 2,4)
	self:addTradeAcquire(RecipeDB, 23248, 2, 3685)

	-- Great Brown Kodo - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23249level60method_vendorstype7price100000000locs215descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685id18794
	-- Vendor
	self:AddCompanion(PetDB, 23249, 18794, 4)
	self:addTradeFlags(RecipeDB, 23249, 2,4)
	self:addTradeAcquire(RecipeDB, 23249, 2, 3685)

	-- Horn of the Swift Brown Wolf - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23250level60method_vendorstype7price100000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362id18796
	-- Vendor
	self:AddCompanion(PetDB, 23250, 18796, 4)
	self:addTradeFlags(RecipeDB, 23250, 2,4)
	self:addTradeAcquire(RecipeDB, 23250, 2, 3362)

	-- Horn of the Swift Timber Wolf - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23251level60method_vendorstype7price100000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362id18797
	-- Vendor
	self:AddCompanion(PetDB, 23251, 18797, 4)
	self:addTradeFlags(RecipeDB, 23251, 2,4)
	self:addTradeAcquire(RecipeDB, 23251, 2, 3362)

	-- Horn of the Swift Gray Wolf - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23252level60method_vendorstype7price100000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362id18798
	-- Vendor
	self:AddCompanion(PetDB, 23252, 18798, 4)
	self:addTradeFlags(RecipeDB, 23252, 2,4)
	self:addTradeAcquire(RecipeDB, 23252, 2, 3362)

	-- Reins of the Swift Stormsaber - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid23338level60method_vendorstype7price100000000locs1657descSaber Handlerminlevel35nameLelanaireact13id4730id18902
	-- Vendor
	self:AddCompanion(PetDB, 23338, 18902, 4)
	self:addTradeFlags(RecipeDB, 23338, 1,4)
	self:addTradeAcquire(RecipeDB, 23338, 2, 4730)

	-- Horn of the Frostwolf Howler - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid23509level60method_vendorstype7classification1price000205605000000000locs2597descFrostwolf Supply Officerminlevel58maxlevel68nameGrunnda Wolfheartreact31id13218type7classification1price0002056050locs36267descFrostwolf Supply Officerminlevel58nameJekyll Flandringreact31id13219id19029
	-- Vendor
	self:AddCompanion(PetDB, 23509, 19029, 4)
	self:addTradeFlags(RecipeDB, 23509, 2,4)
	self:addTradeAcquire(RecipeDB, 23509, 2, 13218, 2, 13219)

	-- Stormpike Battle Charger - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid23510level60method_vendorstype7classification1price0002056050locs2597descStormpike Supply Officerminlevel68nameGaelden Hammersmithreact13id13216type7classification1price000205605000000000locs36descStormpike Supply Officerminlevel58nameThanthaldis Snowgleamreact13id13217id19030
	-- Vendor
	self:AddCompanion(PetDB, 23510, 19030, 4)
	self:addTradeFlags(RecipeDB, 23510, 1,4)
	self:addTradeAcquire(RecipeDB, 23510, 2, 13216, 2, 13217)

	-- Swift Razzashi Raptor - 
	-- method_dropstype7classification3locs1977lootCount35nameBloodlord Mandokirreact33totalLootCount8107id11382type15.-1rlevel60rarity4source1slevel150methoddropped-byspellid24242level60id19872
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(PetDB, 24242, 19872, 4)
	self:addTradeFlags(RecipeDB, 24242, 5,6)
	self:addTradeAcquire(RecipeDB, 24242, 3, 11382)

	-- Swift Zulian Tiger - 
	-- method_dropstype7classification3locs1977lootCount9nameHigh Priest Thekalreact33totalLootCount3676id14509type15.-1rlevel60rarity4source1slevel150methoddropped-byspellid24252level60id19902
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(PetDB, 24252, 19902, 4)
	self:addTradeFlags(RecipeDB, 24252, 5,6)
	self:addTradeAcquire(RecipeDB, 24252, 3, 14509)

	-- Black Qiraji Resonating Crystal - 
	-- type15.-1rlevel60rarity5slevel150methodspellid26656level60id21176
	self:AddCompanion(PetDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-byspellid32235level70method_vendorstype7price100000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25470
	-- Vendor
	self:AddCompanion(PetDB, 32235, 25470, 3)
	self:addTradeFlags(RecipeDB, 32235, 1,4)
	self:addTradeAcquire(RecipeDB, 32235, 2, 20510)

	-- Ebon Gryphon - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-byspellid32239level70method_vendorstype7price100000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25471
	-- Vendor
	self:AddCompanion(PetDB, 32239, 25471, 3)
	self:addTradeFlags(RecipeDB, 32239, 1,4)
	self:addTradeAcquire(RecipeDB, 32239, 2, 20510)

	-- Snowy Gryphon - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-byspellid32240level70method_vendorstype7price100000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25472
	-- Vendor
	self:AddCompanion(PetDB, 32240, 25472, 3)
	self:addTradeFlags(RecipeDB, 32240, 1,4)
	self:addTradeAcquire(RecipeDB, 32240, 2, 20510)

	-- Swift Blue Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32242level70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25473
	-- Vendor
	self:AddCompanion(PetDB, 32242, 25473, 4)
	self:addTradeFlags(RecipeDB, 32242, 1,4)
	self:addTradeAcquire(RecipeDB, 32242, 2, 20510)

	-- Tawny Windrider - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-byspellid32243level70method_vendorstype7price100000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25474
	-- Vendor
	self:AddCompanion(PetDB, 32243, 25474, 3)
	self:addTradeFlags(RecipeDB, 32243, 2,4)
	self:addTradeAcquire(RecipeDB, 32243, 2, 20494)

	-- Blue Windrider - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-byspellid32244level70method_vendorstype7price100000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25475
	-- Vendor
	self:AddCompanion(PetDB, 32244, 25475, 3)
	self:addTradeFlags(RecipeDB, 32244, 2,4)
	self:addTradeAcquire(RecipeDB, 32244, 2, 20494)

	-- Green Windrider - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-byspellid32245level70method_vendorstype7price100000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25476
	-- Vendor
	self:AddCompanion(PetDB, 32245, 25476, 3)
	self:addTradeFlags(RecipeDB, 32245, 2,4)
	self:addTradeAcquire(RecipeDB, 32245, 2, 20494)

	-- Swift Red Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32246level70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25477
	-- Vendor
	self:AddCompanion(PetDB, 32246, 25477, 4)
	self:addTradeFlags(RecipeDB, 32246, 2,4)
	self:addTradeAcquire(RecipeDB, 32246, 2, 20494)

	-- Swift Red Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32289level70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25527
	-- Vendor
	self:AddCompanion(PetDB, 32289, 25527, 4)
	self:addTradeFlags(RecipeDB, 32289, 1,4)
	self:addTradeAcquire(RecipeDB, 32289, 2, 20510)

	-- Swift Green Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32290level70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25528
	-- Vendor
	self:AddCompanion(PetDB, 32290, 25528, 4)
	self:addTradeFlags(RecipeDB, 32290, 1,4)
	self:addTradeAcquire(RecipeDB, 32290, 2, 20510)

	-- Swift Purple Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32292level70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510id25529
	-- Vendor
	self:AddCompanion(PetDB, 32292, 25529, 4)
	self:addTradeFlags(RecipeDB, 32292, 1,4)
	self:addTradeAcquire(RecipeDB, 32292, 2, 20510)

	-- Swift Green Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32295level70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25531
	-- Vendor
	self:AddCompanion(PetDB, 32295, 25531, 4)
	self:addTradeFlags(RecipeDB, 32295, 2,4)
	self:addTradeAcquire(RecipeDB, 32295, 2, 20494)

	-- Swift Yellow Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32296level70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25532
	-- Vendor
	self:AddCompanion(PetDB, 32296, 25532, 4)
	self:addTradeFlags(RecipeDB, 32296, 2,4)
	self:addTradeAcquire(RecipeDB, 32296, 2, 20494)

	-- Swift Purple Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid32297level70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmanereact31id20494id25533
	-- Vendor
	self:AddCompanion(PetDB, 32297, 25533, 4)
	self:addTradeFlags(RecipeDB, 32297, 2,4)
	self:addTradeAcquire(RecipeDB, 32297, 2, 20494)

	-- Swift Pink Hawkstrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid33660level60method_vendorstype7price100000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id28936
	-- Vendor
	self:AddCompanion(PetDB, 33660, 28936, 4)
	self:addTradeFlags(RecipeDB, 33660, 2,4)
	self:addTradeAcquire(RecipeDB, 33660, 2, 16264)

	-- Brown Elekk - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid34406level30method_vendorstype7price10000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584id28481
	-- Vendor
	self:AddCompanion(PetDB, 34406, 28481, 3)
	self:addTradeFlags(RecipeDB, 34406, 1,4)
	self:addTradeAcquire(RecipeDB, 34406, 2, 17584)

	-- Reins of the Dark War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid34790level60method_vendorstype7classification1price000260451002604420000000locs3518descBlade Merchantminlevel70nameAldraanreact13id21485type7classification1price000260451002604420000000locs3518descBlade Merchantminlevel70nameCoreielreact31id21474id29228
	-- Vendor
	self:AddCompanion(PetDB, 34790, 29228, 4)
	self:addTradeFlags(RecipeDB, 34790, 1,2,4)
	self:addTradeAcquire(RecipeDB, 34790, 2, 21474, 2, 21485)

	-- Red Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid34795level30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id28927
	-- Vendor
	self:AddCompanion(PetDB, 34795, 28927, 3)
	self:addTradeFlags(RecipeDB, 34795, 2,4)
	self:addTradeAcquire(RecipeDB, 34795, 2, 16264)

	-- Reins of the Cobalt War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid34896level60method_vendorstype7price100000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id29102
	-- Vendor
	self:AddCompanion(PetDB, 34896, 29102, 4)
	self:addTradeFlags(RecipeDB, 34896, 2,4)
	self:addTradeAcquire(RecipeDB, 34896, 2, 20241)

	-- Reins of the White War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid34897level60method_vendorstype7price100000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id29103
	-- Vendor
	self:AddCompanion(PetDB, 34897, 29103, 4)
	self:addTradeFlags(RecipeDB, 34897, 2,4)
	self:addTradeAcquire(RecipeDB, 34897, 2, 20241)

	-- Reins of the Silver War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid34898level60method_vendorstype7price100000000locs3518descKurenai Quartermasterminlevel65nameTrader Narasureact13id20240id29229
	-- Vendor
	self:AddCompanion(PetDB, 34898, 29229, 4)
	self:addTradeFlags(RecipeDB, 34898, 1,4)
	self:addTradeAcquire(RecipeDB, 34898, 2, 20240)

	-- Reins of the Tan War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid34899level60method_vendorstype7price100000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id29105
	-- Vendor
	self:AddCompanion(PetDB, 34899, 29105, 4)
	self:addTradeFlags(RecipeDB, 34899, 2,4)
	self:addTradeAcquire(RecipeDB, 34899, 2, 20241)

	-- Purple Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid35018level30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id29222
	-- Vendor
	self:AddCompanion(PetDB, 35018, 29222, 3)
	self:addTradeFlags(RecipeDB, 35018, 2,4)
	self:addTradeAcquire(RecipeDB, 35018, 2, 16264)

	-- Blue Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid35020level30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id29220
	-- Vendor
	self:AddCompanion(PetDB, 35020, 29220, 3)
	self:addTradeFlags(RecipeDB, 35020, 2,4)
	self:addTradeAcquire(RecipeDB, 35020, 2, 16264)

	-- Black Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromspellid35022level30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id29221
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 35022, 29221, 3)
	self:addTradeFlags(RecipeDB, 35022, 2,4,8)
	self:addTradeAcquire(RecipeDB, 35022, 4, 1, 2, 16264)

	-- Swift Green Hawkstrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid35025level60method_vendorstype7price100000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id29223
	-- Vendor
	self:AddCompanion(PetDB, 35025, 29223, 4)
	self:addTradeFlags(RecipeDB, 35025, 2,4)
	self:addTradeAcquire(RecipeDB, 35025, 2, 16264)

	-- Swift Purple Hawkstrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid35027level60method_vendorstype7price100000000locs3430descHawkstrider Breederminlevel15nameWinaestrareact31id16264id29224
	-- Vendor
	self:AddCompanion(PetDB, 35027, 29224, 4)
	self:addTradeFlags(RecipeDB, 35027, 2,4)
	self:addTradeAcquire(RecipeDB, 35027, 2, 16264)

	-- Swift Warstrider - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid35028level60method_vendorstype7price0002056030205593020558300000locs2917descMount Quartermasterminlevel55nameRaider Borkreact21id12796id34129
	-- Vendor
	self:AddCompanion(PetDB, 35028, 34129, 4)
	self:addTradeFlags(RecipeDB, 35028, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35028, 2, 12796)

	-- Gray Elekk - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid35710level30method_vendorstype7price10000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584id29744
	-- Vendor
	self:AddCompanion(PetDB, 35710, 29744, 3)
	self:addTradeFlags(RecipeDB, 35710, 1,4)
	self:addTradeAcquire(RecipeDB, 35710, 2, 17584)

	-- Purple Elekk - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid35711level30method_vendorstype7price10000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584id29743
	-- Vendor
	self:AddCompanion(PetDB, 35711, 29743, 3)
	self:addTradeFlags(RecipeDB, 35711, 1,4)
	self:addTradeAcquire(RecipeDB, 35711, 2, 17584)

	-- Great Green Elekk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid35712level60method_vendorstype7price100000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584id29746
	-- Vendor
	self:AddCompanion(PetDB, 35712, 29746, 4)
	self:addTradeFlags(RecipeDB, 35712, 1,4)
	self:addTradeAcquire(RecipeDB, 35712, 2, 17584)

	-- Great Blue Elekk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid35713level60method_vendorstype7price100000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584id29745
	-- Vendor
	self:AddCompanion(PetDB, 35713, 29745, 4)
	self:addTradeFlags(RecipeDB, 35713, 1,4)
	self:addTradeAcquire(RecipeDB, 35713, 2, 17584)

	-- Great Purple Elekk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid35714level60method_vendorstype7price100000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584id29747
	-- Vendor
	self:AddCompanion(PetDB, 35714, 29747, 4)
	self:addTradeFlags(RecipeDB, 35714, 1,4)
	self:addTradeAcquire(RecipeDB, 35714, 2, 17584)

	-- Fiery Warhorse's Reins - 
	-- method_dropstype6classification3locs3457disp16416lootCount78nameAttumen the Huntsmanreact33totalLootCount35478id15550type6classification3locs3457disp16040lootCount10nameAttumen the Huntsmanreact33totalLootCount6529id16152type15.-1rlevel70rarity4source1slevel150methoddropped-byspellid36702level70id30480
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	self:AddCompanion(PetDB, 36702, 30480, 4)
	self:addTradeFlags(RecipeDB, 36702, 5,6)
	self:addTradeAcquire(RecipeDB, 36702, 3, 15550, 3, 16152)

	-- Swift Nether Drake - 
	-- type15.-1rlevel70rarity4slevel300methodspellid37015level70id30609
	self:AddCompanion(PetDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid39315level60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id31829
	-- Vendor
	self:AddCompanion(PetDB, 39315, 31829, 4)
	self:addTradeFlags(RecipeDB, 39315, 2,4)
	self:addTradeAcquire(RecipeDB, 39315, 2, 20241)

	-- Reins of the Dark Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid39316level60method_vendorstype7classification1price00026045702604415000000locs3518descBlade Merchantminlevel70nameAldraanreact13id21485type7classification1price00026045702604415000000locs3518descBlade Merchantminlevel70nameCoreielreact31id21474id28915
	-- Vendor
	self:AddCompanion(PetDB, 39316, 28915, 4)
	self:addTradeFlags(RecipeDB, 39316, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39316, 2, 21474, 2, 21485)

	-- Reins of the Silver Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid39317level60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id31831
	-- Vendor
	self:AddCompanion(PetDB, 39317, 31831, 4)
	self:addTradeFlags(RecipeDB, 39317, 2,4)
	self:addTradeAcquire(RecipeDB, 39317, 2, 20241)

	-- Reins of the Tan Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid39318level60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id31833
	-- Vendor
	self:AddCompanion(PetDB, 39318, 31833, 4)
	self:addTradeFlags(RecipeDB, 39318, 2,4)
	self:addTradeAcquire(RecipeDB, 39318, 2, 20241)

	-- Reins of the White Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-byspellid39319level60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241id31835
	-- Vendor
	self:AddCompanion(PetDB, 39319, 31835, 4)
	self:addTradeFlags(RecipeDB, 39319, 2,4)
	self:addTradeAcquire(RecipeDB, 39319, 2, 20241)

	-- Green Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid39798level70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellareact11id23367id32314
	-- Vendor
	self:AddCompanion(PetDB, 39798, 32314, 4)
	self:addTradeFlags(RecipeDB, 39798, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39798, 2, 23367)

	-- Red Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid39800level70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellareact11id23367id32317
	-- Vendor
	self:AddCompanion(PetDB, 39800, 32317, 4)
	self:addTradeFlags(RecipeDB, 39800, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39800, 2, 23367)

	-- Purple Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid39801level70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellareact11id23367id32316
	-- Vendor
	self:AddCompanion(PetDB, 39801, 32316, 4)
	self:addTradeFlags(RecipeDB, 39801, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39801, 2, 23367)

	-- Silver Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid39802level70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellareact11id23367id32318
	-- Vendor
	self:AddCompanion(PetDB, 39802, 32318, 4)
	self:addTradeFlags(RecipeDB, 39802, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39802, 2, 23367)

	-- Blue Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid39803level70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellareact11id23367id32319
	-- Vendor
	self:AddCompanion(PetDB, 39803, 32319, 4)
	self:addTradeFlags(RecipeDB, 39803, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39803, 2, 23367)

	-- Ashes of Al'ar - 
	-- method_dropstype7classification3locs37033845descLord of the Blood Elvesdisp20023minlevel73lootCount14nameKael'thas Sunstriderreact33totalLootCount3723id19622type7classification3locs409537033845descLord of the Blood Elvesdisp20023minlevel72lootCount1nameKael'thas Sunstriderreact33totalLootCount9689id23054type15.-1rlevel70rarity4source1slevel300methoddropped-byspellid40192level70id32458
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	self:AddCompanion(PetDB, 40192, 32458, 4)
	self:addTradeFlags(RecipeDB, 40192, 5,6)
	self:addTradeAcquire(RecipeDB, 40192, 3, 19622, 3, 23054)

	-- Reins of the Raven Lord - 
	-- method_dropstype10classification1locs3791disp21492minlevel69lootCount12nameAnzureact33totalLootCount5155id23035type15.-1rlevel70rarity4source1slevel150methoddropped-byspellid41252level70id32768
	-- Instance: 3791 - type5category3expansion1minlevel67maxlevel69nameAuchindoun: Sethekk Hallsid3791territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 41252, 32768, 4)
	self:addTradeFlags(RecipeDB, 41252, 5)
	self:addTradeAcquire(RecipeDB, 41252, 3, 23035)

	-- Reins of the Onyx Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328571category23703coin0side1level70nameOnyxien the Onyx Netherwing Drakeid11111method_redemptionUnknownmethodredemption,rewardfromspellid41513level70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkreact11id23489id32857
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41513, 32857, 4)
	self:addTradeFlags(RecipeDB, 41513, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41513, 4, 11111)

	-- Reins of the Azure Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328581category23703coin0side1level70nameSuraku the Azure Netherwing Drakeid11112method_redemptionUnknownmethodredemption,rewardfromspellid41514level70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkreact11id23489id32858
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41514, 32858, 4)
	self:addTradeFlags(RecipeDB, 41514, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41514, 4, 11112)

	-- Reins of the Cobalt Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328591category23703coin0side1level70nameJorus the Cobalt Netherwing Drakeid11109method_redemptionUnknownmethodredemption,rewardfromspellid41515level70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkreact11id23489id32859
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41515, 32859, 4)
	self:addTradeFlags(RecipeDB, 41515, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41515, 4, 11109)

	-- Reins of the Purple Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328601category23703coin0side1level70nameMalfas the Purple Netherwing Drakeid11110method_redemptionUnknownmethodredemption,rewardfromspellid41516level70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkreact11id23489id32860
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41516, 32860, 4)
	self:addTradeFlags(RecipeDB, 41516, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41516, 4, 11110)

	-- Reins of the Veridian Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328611category23703coin0side1level70nameZoya the Veridian Netherwing Drakeid11114method_redemptionUnknownmethodredemption,rewardfromspellid41517level70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkreact11id23489id32861
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41517, 32861, 4)
	self:addTradeFlags(RecipeDB, 41517, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41517, 4, 11114)

	-- Reins of the Violet Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328621category23703coin0side1level70nameVoranaku the Violet Netherwing Drakeid11113method_redemptionUnknownmethodredemption,rewardfromspellid41518level70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkreact11id23489id32862
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41518, 32862, 4)
	self:addTradeFlags(RecipeDB, 41518, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41518, 4, 11113)

	-- Reins of the Spectral Tiger - 
	-- type15.-1rlevel30rarity3slevel75methodspellid42776level30id33224
	self:AddCompanion(PetDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 
	-- type15.-1rlevel60rarity4slevel150methodspellid42777level60id33225
	self:AddCompanion(PetDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 
	-- method_dropstype3locs3805lootCount19nameAshli's BagtotalLootCount25id186672type15.-1rlevel70rarity4slevel150methodcontained-in-objectspellid43688level70id33809
	-- Unknown
	self:AddCompanion(PetDB, 43688, 33809, 4)
	-- No filter flags
	-- No acquire information

	-- Brewfest Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-byspellid43899level30method_vendorstype7price00000000locs14descRam Racing ApprenticenameDriz Tumblequickid24510id33976
	-- Vendor
	self:AddCompanion(PetDB, 43899, 33976, 3)
	self:addTradeFlags(RecipeDB, 43899, 1,2,4)
	self:addTradeAcquire(RecipeDB, 43899, 2, 24510)

	-- Swift Brewfest Ram - 
	-- type15.-1rlevel60rarity4slevel150methodsold-byspellid43900level60method_vendorstype7price00000000locs14descRam Racing ApprenticenameDriz Tumblequickid24510id33977
	-- Vendor
	self:AddCompanion(PetDB, 43900, 33977, 4)
	self:addTradeFlags(RecipeDB, 43900, 1,2,4)
	self:addTradeAcquire(RecipeDB, 43900, 2, 24510)

	-- Cenarion War Hippogryph - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-byspellid43927level70method_vendorstype7classification1price00000000locs3521descCenarion Expedition Quartermasterminlevel60nameFedryen Swiftspearreact11id17904id33999
	-- Vendor
	self:AddCompanion(PetDB, 43927, 33999, 4)
	self:addTradeFlags(RecipeDB, 43927, 1,2,4)
	self:addTradeAcquire(RecipeDB, 43927, 2, 17904)

	-- Merciless Nether Drake - 
	-- type15.-1rlevel70rarity4slevel300method_redemptionUnknownmethodredemptionspellid44744level70id34092
	-- Redemption
	self:AddCompanion(PetDB, 44744, 34092, 4)
	-- No filter flags
	-- No acquire information

	-- Swift White Hawkstrider - 
	-- method_dropstype7classification1locs4095descLord of the Blood Elvesdisp22906minlevel72lootCount4nameKael'thas Sunstriderreact33totalLootCount6321id24664type15.-1rlevel60rarity4slevel150methoddropped-byspellid46628level60id35513
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 46628, 35513, 4)
	self:addTradeFlags(RecipeDB, 46628, 5)
	self:addTradeAcquire(RecipeDB, 46628, 3, 24664)

	-- Magic Broom - 
	-- type15.-1rlevel30rarity3slevel75speed0.5methodspellid47977level1id37011
	self:AddCompanion(PetDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 
	-- type15.-1rlevel60rarity4slevel75methodspellid48025level60id37012
	self:AddCompanion(PetDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-byspellid48027level60method_vendorstype7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterreact11id12783id35906
	-- Vendor
	self:AddCompanion(PetDB, 48027, 35906, 4)
	self:addTradeFlags(RecipeDB, 48027, 1,2,4)
	self:addTradeAcquire(RecipeDB, 48027, 2, 12783)

	-- Vengeful Nether Drake - 
	-- type15.-1rlevel70rarity4slevel300methodspellid49193level70id37676
	self:AddCompanion(PetDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 
	-- type15.-1rlevel60rarity4slevel150methodspellid51412level60id38576
	self:AddCompanion(PetDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

end
