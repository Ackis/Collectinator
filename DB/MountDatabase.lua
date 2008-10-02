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

	-- Brown Horse Bridle - 458
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs15price10000000descHorse Breederminlevel35nameGregor MacVincereact13id4885type7locs12price10000000descHorse Breederminlevel10nameKatie Hunterreact03id384type7locs267price10000000descHorse Breederminlevel32nameMerideth Carlsonreact13id2357type7locs11price10000000descHorse Breederminlevel25nameUnger Statforthreact13id1460methoddropped-by,sold-byslevel75level30id5656method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount2spell_id458
	-- Mob Drop
	-- Instance: 15 - type1territory4category3minlevel25nameRazorfen Kraulmaxlevel30id491
	-- Instance: 12 - type5territory1category3expansion1minlevel66nameCaverns of Time: Old Hillsbrad Foothillsmaxlevel68id2367
	-- Instance: 11 - type1territory1category3minlevel43nameMaraudonmaxlevel49id2100
	-- Vendor
	self:AddCompanion(PetDB, 458, 5656, 3)
	self:addTradeFlags(RecipeDB, 458, 4,1,5,1,5,1,1,5)
	self:addTradeAcquire(RecipeDB, 458, 2, 4885, 2, 384, 2, 2357, 2, 1460)

	-- Black Stallion Bridle - 470
	-- type15.-1source12rarity3rlevel30method_vendorstype7locs11price10000000descHorse Breederminlevel25nameUnger Statforthreact13id1460methoddropped-by,sold-byslevel75level30id2411method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount3spell_id470
	-- Mob Drop
	-- Instance: 11 - type1territory1category3minlevel43nameMaraudonmaxlevel49id2100
	-- Vendor
	self:AddCompanion(PetDB, 470, 2411, 3)
	self:addTradeFlags(RecipeDB, 470, 4,1,5)
	self:addTradeAcquire(RecipeDB, 470, 2, 1460)

	-- Pinto Bridle - 472
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs15price10000000descHorse Breederminlevel35nameGregor MacVincereact13id4885type7locs12price10000000descHorse Breederminlevel10nameKatie Hunterreact03id384type7locs267price10000000descHorse Breederminlevel32nameMerideth Carlsonreact13id2357type7locs11price10000000descHorse Breederminlevel25nameUnger Statforthreact13id1460methoddropped-by,sold-byslevel75level30id2414method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount2spell_id472
	-- Mob Drop
	-- Instance: 15 - type1territory4category3minlevel25nameRazorfen Kraulmaxlevel30id491
	-- Instance: 12 - type5territory1category3expansion1minlevel66nameCaverns of Time: Old Hillsbrad Foothillsmaxlevel68id2367
	-- Instance: 11 - type1territory1category3minlevel43nameMaraudonmaxlevel49id2100
	-- Vendor
	self:AddCompanion(PetDB, 472, 2414, 3)
	self:addTradeFlags(RecipeDB, 472, 4,1,5,1,5,1,1,5)
	self:addTradeAcquire(RecipeDB, 472, 2, 4885, 2, 384, 2, 2357, 2, 1460)

	-- Horn of the Timber Wolf - 580
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1637price10000000descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362methodsold-byslevel75level30id1132spell_id580
	-- Vendor
	self:AddCompanion(PetDB, 580, 1132, 3)
	self:addTradeFlags(RecipeDB, 580, 4,2)
	self:addTradeAcquire(RecipeDB, 580, 2, 3362)

	-- Chestnut Mare Bridle - 6648
	-- type15.-1source12rarity3rlevel30method_vendorstype7locs15price10000000descHorse Breederminlevel35nameGregor MacVincereact13id4885type7locs12price10000000descHorse Breederminlevel10nameKatie Hunterreact03id384type7locs267price10000000descHorse Breederminlevel32nameMerideth Carlsonreact13id2357type7locs11price10000000descHorse Breederminlevel25nameUnger Statforthreact13id1460methoddropped-by,sold-byslevel75level30id5655method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount3spell_id6648
	-- Mob Drop
	-- Instance: 15 - type1territory4category3minlevel25nameRazorfen Kraulmaxlevel30id491
	-- Instance: 12 - type5territory1category3expansion1minlevel66nameCaverns of Time: Old Hillsbrad Foothillsmaxlevel68id2367
	-- Instance: 11 - type1territory1category3minlevel43nameMaraudonmaxlevel49id2100
	-- Vendor
	self:AddCompanion(PetDB, 6648, 5655, 3)
	self:addTradeFlags(RecipeDB, 6648, 4,1,5,1,5,1,1,5)
	self:addTradeAcquire(RecipeDB, 6648, 2, 4885, 2, 384, 2, 2357, 2, 1460)

	-- Horn of the Dire Wolf - 6653
	-- method_queststype0category52597choiceitems29221113332115290156651coin8nameJoining the Battleside4level73id1type15.-1source2rarity3rlevel30method_vendorstype7locs1637price10000000descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362methodsold-by,rewardfromslevel75level30id5665spell_id6653
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 6653, 5665, 3)
	self:addTradeFlags(RecipeDB, 6653, 4,2)
	self:addTradeAcquire(RecipeDB, 6653, 2, 3362)

	-- Horn of the Brown Wolf - 6654
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1637price10000000descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362methodsold-byslevel75level30id5668spell_id6654
	-- Vendor
	self:AddCompanion(PetDB, 6654, 5668, 3)
	self:addTradeFlags(RecipeDB, 6654, 4,2)
	self:addTradeAcquire(RecipeDB, 6654, 2, 3362)

	-- Gray Ram - 6777
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descRam Breederminlevel10nameVeron Amberstillreact13id1261methodsold-byslevel75level30id5864spell_id6777
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 6777, 5864, 3)
	self:addTradeFlags(RecipeDB, 6777, 4,1,5)
	self:addTradeAcquire(RecipeDB, 6777, 2, 1261)

	-- White Ram - 6898
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descRam Breederminlevel10nameVeron Amberstillreact13id1261methodsold-byslevel75level30id5873spell_id6898
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 6898, 5873, 3)
	self:addTradeFlags(RecipeDB, 6898, 4,1,5)
	self:addTradeAcquire(RecipeDB, 6898, 2, 1261)

	-- Brown Ram - 6899
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descRam Breederminlevel10nameVeron Amberstillreact13id1261methodsold-byslevel75level30id5872spell_id6899
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 6899, 5872, 3)
	self:addTradeFlags(RecipeDB, 6899, 4,1,5)
	self:addTradeAcquire(RecipeDB, 6899, 2, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1657price10000000descSaber Handlerminlevel35nameLelanaireact13id4730methodsold-byslevel75level30id8631spell_id8394
	-- Vendor
	self:AddCompanion(PetDB, 8394, 8631, 3)
	self:addTradeFlags(RecipeDB, 8394, 4,1)
	self:addTradeAcquire(RecipeDB, 8394, 2, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- method_queststype0category52597choiceitems29221113332115290156651coin8nameJoining the Battleside4level73id1type15.-1source2rarity3rlevel30method_vendorstype7locs14price10000000descRaptor Handlerminlevel45nameZjolnirreact31id7952methodsold-by,rewardfromslevel75level30id8588spell_id8395
	-- Instance: 14 - type1territory4category3minlevel33nameRazorfen Downsmaxlevel40id722
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 8395, 8588, 3)
	self:addTradeFlags(RecipeDB, 8395, 4,2,5)
	self:addTradeAcquire(RecipeDB, 8395, 2, 7952)

	-- Reins of the Spotted Frostsaber - 10789
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1657price10000000descSaber Handlerminlevel35nameLelanaireact13id4730methodsold-byslevel75level30id8632spell_id10789
	-- Vendor
	self:AddCompanion(PetDB, 10789, 8632, 3)
	self:addTradeFlags(RecipeDB, 10789, 4,1)
	self:addTradeAcquire(RecipeDB, 10789, 2, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1657price10000000descSaber Handlerminlevel35nameLelanaireact13id4730methodsold-byslevel75level30id8629spell_id10793
	-- Vendor
	self:AddCompanion(PetDB, 10793, 8629, 3)
	self:addTradeFlags(RecipeDB, 10793, 4,1)
	self:addTradeAcquire(RecipeDB, 10793, 2, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1rarity1rlevel40methodslevel75level40id8589spell_id10795
	self:AddCompanion(PetDB, 10795, 8589, 1)

	-- Whistle of the Turquoise Raptor - 10796
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs14price10000000descRaptor Handlerminlevel45nameZjolnirreact31id7952methodsold-byslevel75level30id8591spell_id10796
	-- Instance: 14 - type1territory4category3minlevel33nameRazorfen Downsmaxlevel40id722
	-- Vendor
	self:AddCompanion(PetDB, 10796, 8591, 3)
	self:addTradeFlags(RecipeDB, 10796, 4,2,5)
	self:addTradeAcquire(RecipeDB, 10796, 2, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs14price10000000descRaptor Handlerminlevel45nameZjolnirreact31id7952methodsold-byslevel75level30id8592spell_id10799
	-- Instance: 14 - type1territory4category3minlevel33nameRazorfen Downsmaxlevel40id722
	-- Vendor
	self:AddCompanion(PetDB, 10799, 8592, 3)
	self:addTradeFlags(RecipeDB, 10799, 4,2,5)
	self:addTradeAcquire(RecipeDB, 10799, 2, 7952)

	-- Red Mechanostrider - 10873
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel75level30id8563spell_id10873
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 10873, 8563, 3)
	self:addTradeFlags(RecipeDB, 10873, 4,1,5)
	self:addTradeAcquire(RecipeDB, 10873, 2, 7955)

	-- Blue Mechanostrider - 10969
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel75level30id8595spell_id10969
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 10969, 8595, 3)
	self:addTradeFlags(RecipeDB, 10969, 4,1,5)
	self:addTradeAcquire(RecipeDB, 10969, 2, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1rarity4rlevel60methodslevel150level60id13326spell_id15779
	self:AddCompanion(PetDB, 15779, 13326, 4)

	-- Reins of the Nightsaber - 16055
	-- type15.-1rarity4rlevel60methodslevel150level60id12303spell_id16055
	self:AddCompanion(PetDB, 16055, 12303, 4)

	-- Reins of the Frostsaber - 16056
	-- type15.-1rarity4rlevel60methodslevel150level60id12302spell_id16056
	self:AddCompanion(PetDB, 16056, 12302, 4)

	-- Horn of the Red Wolf - 16080
	-- type15.-1rarity4rlevel60methodslevel150level60id12330spell_id16080
	self:AddCompanion(PetDB, 16080, 12330, 4)

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1rarity4rlevel60methodslevel150level60id12351spell_id16081
	self:AddCompanion(PetDB, 16081, 12351, 4)

	-- Palomino Bridle - 16082
	-- type15.-1source1rarity4rlevel60methoddropped-byslevel150level60id12354method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount2spell_id16082
	-- Mob Drop
	self:AddCompanion(PetDB, 16082, 12354, 4)

	-- White Stallion Bridle - 16083
	-- type15.-1source1rarity4rlevel60methoddropped-byslevel150level60id12353method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount1spell_id16083
	-- Mob Drop
	self:AddCompanion(PetDB, 16083, 12353, 4)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1rarity4rlevel60methodslevel150level60id8586spell_id16084
	self:AddCompanion(PetDB, 16084, 8586, 4)

	-- Reins of the Winterspring Frostsaber - 17229
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs618price100000000descWintersaber Trainerminlevel62nameRivern Frostwindreact23id10618methodsold-byslevel75level60id13086spell_id17229
	-- Vendor
	self:AddCompanion(PetDB, 17229, 13086, 4)
	self:addTradeFlags(RecipeDB, 17229, 4,1)
	self:addTradeAcquire(RecipeDB, 17229, 2, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1rarity4rlevel60methodslevel150level60id13317spell_id17450
	self:AddCompanion(PetDB, 17450, 13317, 4)

	-- Green Mechanostrider - 17453
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel75level30id13321spell_id17453
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 17453, 13321, 3)
	self:addTradeFlags(RecipeDB, 17453, 4,1,5)
	self:addTradeAcquire(RecipeDB, 17453, 2, 7955)

	-- Unpainted Mechanostrider - 17454
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel75level30id13322spell_id17454
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 17454, 13322, 3)
	self:addTradeFlags(RecipeDB, 17454, 4,1,5)
	self:addTradeAcquire(RecipeDB, 17454, 2, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1rarity4rlevel60methodslevel150level60id13327spell_id17459
	self:AddCompanion(PetDB, 17459, 13327, 4)

	-- Frost Ram - 17460
	-- type15.-1rarity4rlevel60methodslevel150level60id13329spell_id17460
	self:AddCompanion(PetDB, 17460, 13329, 4)

	-- Black Ram - 17461
	-- type15.-1rarity4rlevel60methodslevel150level60id13328spell_id17461
	self:AddCompanion(PetDB, 17461, 13328, 4)

	-- Red Skeletal Horse - 17462
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs85price10000000descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731methodsold-byslevel75level30id13331spell_id17462
	-- Vendor
	self:AddCompanion(PetDB, 17462, 13331, 3)
	self:addTradeFlags(RecipeDB, 17462, 4,2)
	self:addTradeAcquire(RecipeDB, 17462, 2, 4731)

	-- Blue Skeletal Horse - 17463
	-- method_queststype0category52597choiceitems29221113332115290156651coin8nameJoining the Battleside4level73id1type15.-1source2rarity3rlevel30method_vendorstype7locs85price10000000descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731methodsold-by,rewardfromslevel75level30id13332spell_id17463
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 17463, 13332, 3)
	self:addTradeFlags(RecipeDB, 17463, 4,2)
	self:addTradeAcquire(RecipeDB, 17463, 2, 4731)

	-- Brown Skeletal Horse - 17464
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs85price10000000descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731methodsold-byslevel75level30id13333spell_id17464
	-- Vendor
	self:AddCompanion(PetDB, 17464, 13333, 3)
	self:addTradeFlags(RecipeDB, 17464, 4,2)
	self:addTradeAcquire(RecipeDB, 17464, 2, 4731)

	-- Green Skeletal Warhorse - 17465
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs85price100000000descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731methodsold-byslevel150level60id13334spell_id17465
	-- Vendor
	self:AddCompanion(PetDB, 17465, 13334, 4)
	self:addTradeFlags(RecipeDB, 17465, 4,2)
	self:addTradeAcquire(RecipeDB, 17465, 2, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1source1rarity4rlevel60methoddropped-byslevel150level60id13335method_dropstype6totalLootCount12362locs2017classification1minlevel62disp10729nameBaron Rivendarereact33id10440lootCount1spell_id17481
	-- Mob Drop
	self:AddCompanion(PetDB, 17481, 13335, 4)

	-- Gray Kodo - 18989
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs215price10000000descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685methodsold-byslevel75level30id15277spell_id18989
	-- Vendor
	self:AddCompanion(PetDB, 18989, 15277, 3)
	self:addTradeFlags(RecipeDB, 18989, 4,2)
	self:addTradeAcquire(RecipeDB, 18989, 2, 3685)

	-- Brown Kodo - 18990
	-- method_queststype0category52597choiceitems29221113332115290156651coin8nameJoining the Battleside4level73id1type15.-1source2rarity3rlevel30method_vendorstype7locs215price10000000descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685methodsold-by,rewardfromslevel75level30id15290spell_id18990
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 18990, 15290, 3)
	self:addTradeFlags(RecipeDB, 18990, 4,2)
	self:addTradeAcquire(RecipeDB, 18990, 2, 3685)

	-- Green Kodo - 18991
	-- type15.-1rarity4rlevel60methodslevel150level60id15292spell_id18991
	self:AddCompanion(PetDB, 18991, 15292, 4)

	-- Teal Kodo - 18992
	-- type15.-1rarity4rlevel60methodslevel150level60id15293spell_id18992
	self:AddCompanion(PetDB, 18992, 15293, 4)

	-- Black War Steed Bridle - 22717
	-- type15.-1source8rarity4rlevel55methodslevel75level55id18241spell_id22717
	self:AddCompanion(PetDB, 22717, 18241, 4)

	-- Black War Kodo - 22718
	-- type15.-1source8rarity4rlevel55methodslevel75level55id18247spell_id22718
	self:AddCompanion(PetDB, 22718, 18247, 4)

	-- Black Battlestrider - 22719
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2918price0002056030205593020558300000descMount Vendorminlevel55nameLieutenant Karterreact11id12783methodsold-byslevel150level60id29465spell_id22719
	-- Vendor
	self:AddCompanion(PetDB, 22719, 29465, 4)
	self:addTradeFlags(RecipeDB, 22719, 4,1,2)
	self:addTradeAcquire(RecipeDB, 22719, 2, 12783)

	-- Black War Ram - 22720
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2918price0002056030205593020558300000descMount Vendorminlevel55nameLieutenant Karterreact11id12783methodsold-byslevel150level60id29467spell_id22720
	-- Vendor
	self:AddCompanion(PetDB, 22720, 29467, 4)
	self:addTradeFlags(RecipeDB, 22720, 4,1,2)
	self:addTradeAcquire(RecipeDB, 22720, 2, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2917price0002056030205593020558300000descMount Quartermasterminlevel55nameRaider Borkreact21id12796methodsold-byslevel150level60id29472spell_id22721
	-- Vendor
	self:AddCompanion(PetDB, 22721, 29472, 4)
	self:addTradeFlags(RecipeDB, 22721, 4,1,2)
	self:addTradeAcquire(RecipeDB, 22721, 2, 12796)

	-- Red Skeletal Warhorse - 22722
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2917price0002056030205593020558300000descMount Quartermasterminlevel55nameRaider Borkreact21id12796methodsold-byslevel150level60id29470spell_id22722
	-- Vendor
	self:AddCompanion(PetDB, 22722, 29470, 4)
	self:addTradeFlags(RecipeDB, 22722, 4,1,2)
	self:addTradeAcquire(RecipeDB, 22722, 2, 12796)

	-- Reins of the Black War Tiger - 22723
	-- type15.-1source28rarity4rlevel60method_vendorstype7locs35243525148-1price000205603020559302055830minlevel70nameGeneral Goods Vendorreact11id26304type7locs2918price0002056030205593020558300000descMount Vendorminlevel55nameLieutenant Karterreact11id12783methodsold-byslevel150level60id29471spell_id22723
	-- Instance: -1 - type1territory1category3minlevel43nameZul'Farrakmaxlevel47id1176
	-- Vendor
	self:AddCompanion(PetDB, 22723, 29471, 4)
	self:addTradeFlags(RecipeDB, 22723, 4,1,2,5,1,2)
	self:addTradeAcquire(RecipeDB, 22723, 2, 26304, 2, 12783)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1source8rarity4rlevel55methodslevel75level55id18245spell_id22724
	self:AddCompanion(PetDB, 22724, 18245, 4)

	-- Reins of the Swift Mistsaber - 23219
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1657price100000000descSaber Handlerminlevel35nameLelanaireact13id4730methodsold-byslevel150level60id18767spell_id23219
	-- Vendor
	self:AddCompanion(PetDB, 23219, 18767, 4)
	self:addTradeFlags(RecipeDB, 23219, 4,1)
	self:addTradeAcquire(RecipeDB, 23219, 2, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1657price100000000descSaber Handlerminlevel35nameLelanaireact13id4730methodsold-byslevel150level60id18766spell_id23221
	-- Vendor
	self:AddCompanion(PetDB, 23221, 18766, 4)
	self:addTradeFlags(RecipeDB, 23221, 4,1)
	self:addTradeAcquire(RecipeDB, 23221, 2, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1price100000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel150level60id18774spell_id23222
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 23222, 18774, 4)
	self:addTradeFlags(RecipeDB, 23222, 4,1,5)
	self:addTradeAcquire(RecipeDB, 23222, 2, 7955)

	-- Swift White Mechanostrider - 23223
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1price100000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel150level60id18773spell_id23223
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 23223, 18773, 4)
	self:addTradeFlags(RecipeDB, 23223, 4,1,5)
	self:addTradeAcquire(RecipeDB, 23223, 2, 7955)

	-- Swift Green Mechanostrider - 23225
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1price100000000descMechanostrider Merchantminlevel50nameMilli Featherwhistlereact13id7955methodsold-byslevel150level60id18772spell_id23225
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 23225, 18772, 4)
	self:addTradeFlags(RecipeDB, 23225, 4,1,5)
	self:addTradeAcquire(RecipeDB, 23225, 2, 7955)

	-- Swift Palomino - 23227
	-- method_queststype0category00choiceitems187771187761187781coin0nameWhite Stallion Exchangelevel1id7677type15.-1source2rarity4rlevel60method_vendorstype7locs15price100000000descHorse Breederminlevel35nameGregor MacVincereact13id4885type7locs12price100000000descHorse Breederminlevel10nameKatie Hunterreact03id384type7locs267price100000000descHorse Breederminlevel32nameMerideth Carlsonreact13id2357methoddropped-by,sold-by,rewardfromslevel150level60id18776method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount1spell_id23227
	-- Mob Drop
	-- Instance: 15 - type1territory4category3minlevel25nameRazorfen Kraulmaxlevel30id491
	-- Instance: 12 - type5territory1category3expansion1minlevel66nameCaverns of Time: Old Hillsbrad Foothillsmaxlevel68id2367
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23227, 18776, 4)
	self:addTradeFlags(RecipeDB, 23227, 4,1,5,1,5,1)
	self:addTradeAcquire(RecipeDB, 23227, 2, 4885, 2, 384, 2, 2357)

	-- Swift White Steed - 23228
	-- method_queststype0category00choiceitems187771187761187781coin0nameWhite Stallion Exchangelevel1id7677type15.-1source2rarity4rlevel60method_vendorstype7locs15price100000000descHorse Breederminlevel35nameGregor MacVincereact13id4885type7locs12price100000000descHorse Breederminlevel10nameKatie Hunterreact03id384type7locs267price100000000descHorse Breederminlevel32nameMerideth Carlsonreact13id2357methoddropped-by,sold-by,rewardfromslevel150level60id18778method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount2spell_id23228
	-- Mob Drop
	-- Instance: 15 - type1territory4category3minlevel25nameRazorfen Kraulmaxlevel30id491
	-- Instance: 12 - type5territory1category3expansion1minlevel66nameCaverns of Time: Old Hillsbrad Foothillsmaxlevel68id2367
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23228, 18778, 4)
	self:addTradeFlags(RecipeDB, 23228, 4,1,5,1,5,1)
	self:addTradeAcquire(RecipeDB, 23228, 2, 4885, 2, 384, 2, 2357)

	-- Swift Brown Steed - 23229
	-- method_queststype0category00choiceitems187771187761187781coin0nameWhite Stallion Exchangelevel1id7677type15.-1source2rarity4rlevel60method_vendorstype7locs15price100000000descHorse Breederminlevel35nameGregor MacVincereact13id4885type7locs12price100000000descHorse Breederminlevel10nameKatie Hunterreact03id384type7locs267price100000000descHorse Breederminlevel32nameMerideth Carlsonreact13id2357methoddropped-by,sold-by,rewardfromslevel150level60id18777method_dropstype7totalLootCount34locs12descStable Masterminlevel30nameErmareact13id6749lootCount2spell_id23229
	-- Mob Drop
	-- Instance: 15 - type1territory4category3minlevel25nameRazorfen Kraulmaxlevel30id491
	-- Instance: 12 - type5territory1category3expansion1minlevel66nameCaverns of Time: Old Hillsbrad Foothillsmaxlevel68id2367
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23229, 18777, 4)
	self:addTradeFlags(RecipeDB, 23229, 4,1,5,1,5,1)
	self:addTradeAcquire(RecipeDB, 23229, 2, 4885, 2, 384, 2, 2357)

	-- Swift Brown Ram - 23238
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1price100000000descRam Breederminlevel10nameVeron Amberstillreact13id1261methodsold-byslevel150level60id18786spell_id23238
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 23238, 18786, 4)
	self:addTradeFlags(RecipeDB, 23238, 4,1,5)
	self:addTradeAcquire(RecipeDB, 23238, 2, 1261)

	-- Swift Gray Ram - 23239
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1price100000000descRam Breederminlevel10nameVeron Amberstillreact13id1261methodsold-byslevel150level60id18787spell_id23239
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 23239, 18787, 4)
	self:addTradeFlags(RecipeDB, 23239, 4,1,5)
	self:addTradeAcquire(RecipeDB, 23239, 2, 1261)

	-- Swift White Ram - 23240
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1price100000000descRam Breederminlevel10nameVeron Amberstillreact13id1261methodsold-byslevel150level60id18785spell_id23240
	-- Instance: 1 - type1territory1category3minlevel20nameBlackfathom Deepsmaxlevel27id719
	-- Vendor
	self:AddCompanion(PetDB, 23240, 18785, 4)
	self:addTradeFlags(RecipeDB, 23240, 4,1,5)
	self:addTradeAcquire(RecipeDB, 23240, 2, 1261)

	-- Swift Blue Raptor - 23241
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs14price100000000descRaptor Handlerminlevel45nameZjolnirreact31id7952methodsold-byslevel150level60id18788spell_id23241
	-- Instance: 14 - type1territory4category3minlevel33nameRazorfen Downsmaxlevel40id722
	-- Vendor
	self:AddCompanion(PetDB, 23241, 18788, 4)
	self:addTradeFlags(RecipeDB, 23241, 4,2,5)
	self:addTradeAcquire(RecipeDB, 23241, 2, 7952)

	-- Swift Olive Raptor - 23242
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs14price100000000descRaptor Handlerminlevel45nameZjolnirreact31id7952methodsold-byslevel150level60id18789spell_id23242
	-- Instance: 14 - type1territory4category3minlevel33nameRazorfen Downsmaxlevel40id722
	-- Vendor
	self:AddCompanion(PetDB, 23242, 18789, 4)
	self:addTradeFlags(RecipeDB, 23242, 4,2,5)
	self:addTradeAcquire(RecipeDB, 23242, 2, 7952)

	-- Swift Orange Raptor - 23243
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs14price100000000descRaptor Handlerminlevel45nameZjolnirreact31id7952methodsold-byslevel150level60id18790spell_id23243
	-- Instance: 14 - type1territory4category3minlevel33nameRazorfen Downsmaxlevel40id722
	-- Vendor
	self:AddCompanion(PetDB, 23243, 18790, 4)
	self:addTradeFlags(RecipeDB, 23243, 4,2,5)
	self:addTradeAcquire(RecipeDB, 23243, 2, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs85price100000000descUndead Horse Merchantminlevel30nameZachariah Postreact31id4731methodsold-byslevel150level60id18791spell_id23246
	-- Vendor
	self:AddCompanion(PetDB, 23246, 18791, 4)
	self:addTradeFlags(RecipeDB, 23246, 4,2)
	self:addTradeAcquire(RecipeDB, 23246, 2, 4731)

	-- Great White Kodo - 23247
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs215price100000000descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685methodsold-byslevel150level60id18793spell_id23247
	-- Vendor
	self:AddCompanion(PetDB, 23247, 18793, 4)
	self:addTradeFlags(RecipeDB, 23247, 4,2)
	self:addTradeAcquire(RecipeDB, 23247, 2, 3685)

	-- Great Gray Kodo - 23248
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs215price100000000descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685methodsold-byslevel150level60id18795spell_id23248
	-- Vendor
	self:AddCompanion(PetDB, 23248, 18795, 4)
	self:addTradeFlags(RecipeDB, 23248, 4,2)
	self:addTradeAcquire(RecipeDB, 23248, 2, 3685)

	-- Great Brown Kodo - 23249
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs215price100000000descKodo Mountsminlevel45nameHarb Clawhoofreact31id3685methodsold-byslevel150level60id18794spell_id23249
	-- Vendor
	self:AddCompanion(PetDB, 23249, 18794, 4)
	self:addTradeFlags(RecipeDB, 23249, 4,2)
	self:addTradeAcquire(RecipeDB, 23249, 2, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1637price100000000descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362methodsold-byslevel150level60id18796spell_id23250
	-- Vendor
	self:AddCompanion(PetDB, 23250, 18796, 4)
	self:addTradeFlags(RecipeDB, 23250, 4,2)
	self:addTradeAcquire(RecipeDB, 23250, 2, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1637price100000000descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362methodsold-byslevel150level60id18797spell_id23251
	-- Vendor
	self:AddCompanion(PetDB, 23251, 18797, 4)
	self:addTradeFlags(RecipeDB, 23251, 4,2)
	self:addTradeAcquire(RecipeDB, 23251, 2, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1637price100000000descKennel Masterminlevel45nameOgunaro Wolfrunnerreact31id3362methodsold-byslevel150level60id18798spell_id23252
	-- Vendor
	self:AddCompanion(PetDB, 23252, 18798, 4)
	self:addTradeFlags(RecipeDB, 23252, 4,2)
	self:addTradeAcquire(RecipeDB, 23252, 2, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs1657price100000000descSaber Handlerminlevel35nameLelanaireact13id4730methodsold-byslevel150level60id18902spell_id23338
	-- Vendor
	self:AddCompanion(PetDB, 23338, 18902, 4)
	self:addTradeFlags(RecipeDB, 23338, 4,1)
	self:addTradeAcquire(RecipeDB, 23338, 2, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2597price000205605000000000classification1descFrostwolf Supply Officerminlevel58nameGrunnda Wolfheartreact31maxlevel68id13218type7locs36267price0002056050classification1descFrostwolf Supply Officerminlevel58nameJekyll Flandringreact31id13219methodsold-byslevel150level60id19029spell_id23509
	-- Instance: 36 - type1territory1category3minlevel39nameUldamanmaxlevel47id1337
	-- Vendor
	self:AddCompanion(PetDB, 23509, 19029, 4)
	self:addTradeFlags(RecipeDB, 23509, 4,2,2,5)
	self:addTradeAcquire(RecipeDB, 23509, 2, 13218, 2, 13219)

	-- Stormpike Battle Charger - 23510
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2597price0002056050classification1descStormpike Supply Officerminlevel68nameGaelden Hammersmithreact13id13216type7locs36price000205605000000000classification1descStormpike Supply Officerminlevel58nameThanthaldis Snowgleamreact13id13217methodsold-byslevel150level60id19030spell_id23510
	-- Instance: 36 - type1territory1category3minlevel39nameUldamanmaxlevel47id1337
	-- Vendor
	self:AddCompanion(PetDB, 23510, 19030, 4)
	self:addTradeFlags(RecipeDB, 23510, 4,1,1,5)
	self:addTradeAcquire(RecipeDB, 23510, 2, 13216, 2, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1source1rarity4rlevel60methoddropped-byslevel150level60id19872method_dropstype7totalLootCount8107locs1977classification3nameBloodlord Mandokirreact33id11382lootCount35spell_id24242
	-- Mob Drop
	self:AddCompanion(PetDB, 24242, 19872, 4)

	-- Swift Zulian Tiger - 24252
	-- type15.-1source1rarity4rlevel60methoddropped-byslevel150level60id19902method_dropstype7totalLootCount3676locs1977classification3nameHigh Priest Thekalreact33id14509lootCount9spell_id24252
	-- Mob Drop
	self:AddCompanion(PetDB, 24252, 19902, 4)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1rarity5rlevel60methodslevel150level60id21176spell_id26656
	self:AddCompanion(PetDB, 26656, 21176, 5)

	-- Golden Gryphon - 32235
	-- type15.-1source2rarity3rlevel70method_vendorstype7locs3520price100000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel225level70id25470spell_id32235
	-- Vendor
	self:AddCompanion(PetDB, 32235, 25470, 3)
	self:addTradeFlags(RecipeDB, 32235, 4,1)
	self:addTradeAcquire(RecipeDB, 32235, 2, 20510)

	-- Ebon Gryphon - 32239
	-- type15.-1source2rarity3rlevel70method_vendorstype7locs3520price100000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel225level70id25471spell_id32239
	-- Vendor
	self:AddCompanion(PetDB, 32239, 25471, 3)
	self:addTradeFlags(RecipeDB, 32239, 4,1)
	self:addTradeAcquire(RecipeDB, 32239, 2, 20510)

	-- Snowy Gryphon - 32240
	-- type15.-1source2rarity3rlevel70method_vendorstype7locs3520price100000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel225level70id25472spell_id32240
	-- Vendor
	self:AddCompanion(PetDB, 32240, 25472, 3)
	self:addTradeFlags(RecipeDB, 32240, 4,1)
	self:addTradeAcquire(RecipeDB, 32240, 2, 20510)

	-- Swift Blue Gryphon - 32242
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel300level70id25473spell_id32242
	-- Vendor
	self:AddCompanion(PetDB, 32242, 25473, 4)
	self:addTradeFlags(RecipeDB, 32242, 4,1)
	self:addTradeAcquire(RecipeDB, 32242, 2, 20510)

	-- Tawny Windrider - 32243
	-- type15.-1source2rarity3rlevel70method_vendorstype7locs3520price100000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel225level70id25474spell_id32243
	-- Vendor
	self:AddCompanion(PetDB, 32243, 25474, 3)
	self:addTradeFlags(RecipeDB, 32243, 4,2)
	self:addTradeAcquire(RecipeDB, 32243, 2, 20494)

	-- Blue Windrider - 32244
	-- type15.-1source2rarity3rlevel70method_vendorstype7locs3520price100000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel225level70id25475spell_id32244
	-- Vendor
	self:AddCompanion(PetDB, 32244, 25475, 3)
	self:addTradeFlags(RecipeDB, 32244, 4,2)
	self:addTradeAcquire(RecipeDB, 32244, 2, 20494)

	-- Green Windrider - 32245
	-- type15.-1source2rarity3rlevel70method_vendorstype7locs3520price100000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel225level70id25476spell_id32245
	-- Vendor
	self:AddCompanion(PetDB, 32245, 25476, 3)
	self:addTradeFlags(RecipeDB, 32245, 4,2)
	self:addTradeAcquire(RecipeDB, 32245, 2, 20494)

	-- Swift Red Windrider - 32246
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel300level70id25477spell_id32246
	-- Vendor
	self:AddCompanion(PetDB, 32246, 25477, 4)
	self:addTradeFlags(RecipeDB, 32246, 4,2)
	self:addTradeAcquire(RecipeDB, 32246, 2, 20494)

	-- Swift Red Gryphon - 32289
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel300level70id25527spell_id32289
	-- Vendor
	self:AddCompanion(PetDB, 32289, 25527, 4)
	self:addTradeFlags(RecipeDB, 32289, 4,1)
	self:addTradeAcquire(RecipeDB, 32289, 2, 20510)

	-- Swift Green Gryphon - 32290
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel300level70id25528spell_id32290
	-- Vendor
	self:AddCompanion(PetDB, 32290, 25528, 4)
	self:addTradeFlags(RecipeDB, 32290, 4,1)
	self:addTradeAcquire(RecipeDB, 32290, 2, 20510)

	-- Swift Purple Gryphon - 32292
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70nameBrunn Flamebeardreact13id20510methodsold-byslevel300level70id25529spell_id32292
	-- Vendor
	self:AddCompanion(PetDB, 32292, 25529, 4)
	self:addTradeFlags(RecipeDB, 32292, 4,1)
	self:addTradeAcquire(RecipeDB, 32292, 2, 20510)

	-- Swift Green Windrider - 32295
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel300level70id25531spell_id32295
	-- Vendor
	self:AddCompanion(PetDB, 32295, 25531, 4)
	self:addTradeFlags(RecipeDB, 32295, 4,2)
	self:addTradeAcquire(RecipeDB, 32295, 2, 20494)

	-- Swift Yellow Windrider - 32296
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel300level70id25532spell_id32296
	-- Vendor
	self:AddCompanion(PetDB, 32296, 25532, 4)
	self:addTradeFlags(RecipeDB, 32296, 4,2)
	self:addTradeAcquire(RecipeDB, 32296, 2, 20494)

	-- Swift Purple Windrider - 32297
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70nameDama Wildmanereact31id20494methodsold-byslevel300level70id25533spell_id32297
	-- Vendor
	self:AddCompanion(PetDB, 32297, 25533, 4)
	self:addTradeFlags(RecipeDB, 32297, 4,2)
	self:addTradeAcquire(RecipeDB, 32297, 2, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3430price100000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-byslevel150level60id28936spell_id33660
	-- Vendor
	self:AddCompanion(PetDB, 33660, 28936, 4)
	self:addTradeFlags(RecipeDB, 33660, 4,2)
	self:addTradeAcquire(RecipeDB, 33660, 2, 16264)

	-- Brown Elekk - 34406
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs35243557price10000000descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584methodsold-byslevel75level30id28481spell_id34406
	-- Vendor
	self:AddCompanion(PetDB, 34406, 28481, 3)
	self:addTradeFlags(RecipeDB, 34406, 4,1)
	self:addTradeAcquire(RecipeDB, 34406, 2, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price000260451002604420000000classification1descBlade Merchantminlevel70nameAldraanreact13id21485type7locs3518price000260451002604420000000classification1descBlade Merchantminlevel70nameCoreielreact31id21474methodsold-byslevel150level60id29228spell_id34790
	-- Vendor
	self:AddCompanion(PetDB, 34790, 29228, 4)
	self:addTradeFlags(RecipeDB, 34790, 4,1,2)
	self:addTradeAcquire(RecipeDB, 34790, 2, 21485, 2, 21474)

	-- Red Hawkstrider - 34795
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-byslevel75level30id28927spell_id34795
	-- Vendor
	self:AddCompanion(PetDB, 34795, 28927, 3)
	self:addTradeFlags(RecipeDB, 34795, 4,2)
	self:addTradeAcquire(RecipeDB, 34795, 2, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price100000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id29102spell_id34896
	-- Vendor
	self:AddCompanion(PetDB, 34896, 29102, 4)
	self:addTradeFlags(RecipeDB, 34896, 4,2)
	self:addTradeAcquire(RecipeDB, 34896, 2, 20241)

	-- Reins of the White War Talbuk - 34897
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price100000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id29103spell_id34897
	-- Vendor
	self:AddCompanion(PetDB, 34897, 29103, 4)
	self:addTradeFlags(RecipeDB, 34897, 4,2)
	self:addTradeAcquire(RecipeDB, 34897, 2, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price100000000descKurenai Quartermasterminlevel65nameTrader Narasureact13id20240methodsold-byslevel150level60id29229spell_id34898
	-- Vendor
	self:AddCompanion(PetDB, 34898, 29229, 4)
	self:addTradeFlags(RecipeDB, 34898, 4,1)
	self:addTradeAcquire(RecipeDB, 34898, 2, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price100000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id29105spell_id34899
	-- Vendor
	self:AddCompanion(PetDB, 34899, 29105, 4)
	self:addTradeFlags(RecipeDB, 34899, 4,2)
	self:addTradeAcquire(RecipeDB, 34899, 2, 20241)

	-- Purple Hawkstrider - 35018
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-byslevel75level30id29222spell_id35018
	-- Vendor
	self:AddCompanion(PetDB, 35018, 29222, 3)
	self:addTradeFlags(RecipeDB, 35018, 4,2)
	self:addTradeAcquire(RecipeDB, 35018, 2, 16264)

	-- Blue Hawkstrider - 35020
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-byslevel75level30id29220spell_id35020
	-- Vendor
	self:AddCompanion(PetDB, 35020, 29220, 3)
	self:addTradeFlags(RecipeDB, 35020, 4,2)
	self:addTradeAcquire(RecipeDB, 35020, 2, 16264)

	-- Black Hawkstrider - 35022
	-- method_queststype0category52597choiceitems29221113332115290156651coin8nameJoining the Battleside4level73id1type15.-1source2rarity3rlevel30method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-by,rewardfromslevel75level30id29221spell_id35022
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 35022, 29221, 3)
	self:addTradeFlags(RecipeDB, 35022, 4,2)
	self:addTradeAcquire(RecipeDB, 35022, 2, 16264)

	-- Swift Green Hawkstrider - 35025
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3430price100000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-byslevel150level60id29223spell_id35025
	-- Vendor
	self:AddCompanion(PetDB, 35025, 29223, 4)
	self:addTradeFlags(RecipeDB, 35025, 4,2)
	self:addTradeAcquire(RecipeDB, 35025, 2, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3430price100000000descHawkstrider Breederminlevel15nameWinaestrareact31id16264methodsold-byslevel150level60id29224spell_id35027
	-- Vendor
	self:AddCompanion(PetDB, 35027, 29224, 4)
	self:addTradeFlags(RecipeDB, 35027, 4,2)
	self:addTradeAcquire(RecipeDB, 35027, 2, 16264)

	-- Swift Warstrider - 35028
	-- type15.-1source8rarity4rlevel60method_vendorstype7locs2917price0002056030205593020558300000descMount Quartermasterminlevel55nameRaider Borkreact21id12796methodsold-byslevel150level60id34129spell_id35028
	-- Vendor
	self:AddCompanion(PetDB, 35028, 34129, 4)
	self:addTradeFlags(RecipeDB, 35028, 4,1,2)
	self:addTradeAcquire(RecipeDB, 35028, 2, 12796)

	-- Gray Elekk - 35710
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs35243557price10000000descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584methodsold-byslevel75level30id29744spell_id35710
	-- Vendor
	self:AddCompanion(PetDB, 35710, 29744, 3)
	self:addTradeFlags(RecipeDB, 35710, 4,1)
	self:addTradeAcquire(RecipeDB, 35710, 2, 17584)

	-- Purple Elekk - 35711
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs35243557price10000000descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584methodsold-byslevel75level30id29743spell_id35711
	-- Vendor
	self:AddCompanion(PetDB, 35711, 29743, 3)
	self:addTradeFlags(RecipeDB, 35711, 4,1)
	self:addTradeAcquire(RecipeDB, 35711, 2, 17584)

	-- Great Green Elekk - 35712
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs35243557price100000000descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584methodsold-byslevel150level60id29746spell_id35712
	-- Vendor
	self:AddCompanion(PetDB, 35712, 29746, 4)
	self:addTradeFlags(RecipeDB, 35712, 4,1)
	self:addTradeAcquire(RecipeDB, 35712, 2, 17584)

	-- Great Blue Elekk - 35713
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs35243557price100000000descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584methodsold-byslevel150level60id29745spell_id35713
	-- Vendor
	self:AddCompanion(PetDB, 35713, 29745, 4)
	self:addTradeFlags(RecipeDB, 35713, 4,1)
	self:addTradeAcquire(RecipeDB, 35713, 2, 17584)

	-- Great Purple Elekk - 35714
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs35243557price100000000descElekk Breederminlevel14nameTorallius the Pack Handlerreact13id17584methodsold-byslevel150level60id29747spell_id35714
	-- Vendor
	self:AddCompanion(PetDB, 35714, 29747, 4)
	self:addTradeFlags(RecipeDB, 35714, 4,1)
	self:addTradeAcquire(RecipeDB, 35714, 2, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1source1rarity4rlevel70methoddropped-byslevel150level70id30480method_dropstype6totalLootCount35478locs3457classification3disp16416nameAttumen the Huntsmanreact33id15550lootCount78type6totalLootCount6529locs3457classification3disp16040nameAttumen the Huntsmanreact33id16152lootCount10spell_id36702
	-- Mob Drop
	self:AddCompanion(PetDB, 36702, 30480, 4)

	-- Swift Nether Drake - 37015
	-- type15.-1rarity4rlevel70methodslevel300level70id30609spell_id37015
	self:AddCompanion(PetDB, 37015, 30609, 4)

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id31829spell_id39315
	-- Vendor
	self:AddCompanion(PetDB, 39315, 31829, 4)
	self:addTradeFlags(RecipeDB, 39315, 4,2)
	self:addTradeAcquire(RecipeDB, 39315, 2, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price00026045702604415000000classification1descBlade Merchantminlevel70nameAldraanreact13id21485type7locs3518price00026045702604415000000classification1descBlade Merchantminlevel70nameCoreielreact31id21474methodsold-byslevel150level60id28915spell_id39316
	-- Vendor
	self:AddCompanion(PetDB, 39316, 28915, 4)
	self:addTradeFlags(RecipeDB, 39316, 4,1,2)
	self:addTradeAcquire(RecipeDB, 39316, 2, 21485, 2, 21474)

	-- Reins of the Silver Riding Talbuk - 39317
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id31831spell_id39317
	-- Vendor
	self:AddCompanion(PetDB, 39317, 31831, 4)
	self:addTradeFlags(RecipeDB, 39317, 4,2)
	self:addTradeAcquire(RecipeDB, 39317, 2, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id31833spell_id39318
	-- Vendor
	self:AddCompanion(PetDB, 39318, 31833, 4)
	self:addTradeFlags(RecipeDB, 39318, 4,2)
	self:addTradeAcquire(RecipeDB, 39318, 2, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- type15.-1source2rarity4rlevel60method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65nameProvisioner Naselareact31id20241methodsold-byslevel150level60id31835spell_id39319
	-- Vendor
	self:AddCompanion(PetDB, 39319, 31835, 4)
	self:addTradeFlags(RecipeDB, 39319, 4,2)
	self:addTradeAcquire(RecipeDB, 39319, 2, 20241)

	-- Green Riding Nether Ray - 39798
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70nameGrellareact11id23367methodsold-byslevel300level70id32314spell_id39798
	-- Vendor
	self:AddCompanion(PetDB, 39798, 32314, 4)
	self:addTradeFlags(RecipeDB, 39798, 4,1,2)
	self:addTradeAcquire(RecipeDB, 39798, 2, 23367)

	-- Red Riding Nether Ray - 39800
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70nameGrellareact11id23367methodsold-byslevel300level70id32317spell_id39800
	-- Vendor
	self:AddCompanion(PetDB, 39800, 32317, 4)
	self:addTradeFlags(RecipeDB, 39800, 4,1,2)
	self:addTradeAcquire(RecipeDB, 39800, 2, 23367)

	-- Purple Riding Nether Ray - 39801
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70nameGrellareact11id23367methodsold-byslevel300level70id32316spell_id39801
	-- Vendor
	self:AddCompanion(PetDB, 39801, 32316, 4)
	self:addTradeFlags(RecipeDB, 39801, 4,1,2)
	self:addTradeAcquire(RecipeDB, 39801, 2, 23367)

	-- Silver Riding Nether Ray - 39802
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70nameGrellareact11id23367methodsold-byslevel300level70id32318spell_id39802
	-- Vendor
	self:AddCompanion(PetDB, 39802, 32318, 4)
	self:addTradeFlags(RecipeDB, 39802, 4,1,2)
	self:addTradeAcquire(RecipeDB, 39802, 2, 23367)

	-- Blue Riding Nether Ray - 39803
	-- type15.-1source2rarity4rlevel70method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70nameGrellareact11id23367methodsold-byslevel300level70id32319spell_id39803
	-- Vendor
	self:AddCompanion(PetDB, 39803, 32319, 4)
	self:addTradeFlags(RecipeDB, 39803, 4,1,2)
	self:addTradeAcquire(RecipeDB, 39803, 2, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1source1rarity4rlevel70methoddropped-byslevel300level70id32458method_dropstype7totalLootCount3723locs37033845classification3descLord of the Blood Elvesminlevel73disp20023nameKael'thas Sunstriderreact33id19622lootCount14type7totalLootCount9689locs409537033845classification3descLord of the Blood Elvesminlevel72disp20023nameKael'thas Sunstriderreact33id23054lootCount1spell_id40192
	-- Mob Drop
	self:AddCompanion(PetDB, 40192, 32458, 4)

	-- Reins of the Raven Lord - 41252
	-- type15.-1source1rarity4rlevel70methoddropped-byslevel150level70id32768method_dropstype10totalLootCount5155locs3791classification1minlevel69disp21492nameAnzureact33id23035lootCount12spell_id41252
	-- Mob Drop
	self:AddCompanion(PetDB, 41252, 32768, 4)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- method_queststype0category23703givenitems328571coin0nameOnyxien the Onyx Netherwing Drakeside1level70id11111type15.-1method_crafted41546source23rarity4rlevel70method_vendorstype7locs3520price200000000minlevel70nameDrake Dealer Hurlunkreact11id23489methodsold-by,crafted,rewardfromslevel300level70id32857spell_id41513
	-- Vendor
	-- Crafted
	-- Quest Reward
	self:AddCompanion(PetDB, 41513, 32857, 4)
	self:addTradeFlags(RecipeDB, 41513, 4,1,2)
	self:addTradeAcquire(RecipeDB, 41513, 2, 23489)

	-- Reins of the Azure Netherwing Drake - 41514
	-- method_queststype0category23703givenitems328581coin0nameSuraku the Azure Netherwing Drakeside1level70id11112type15.-1method_crafted41547source23rarity4rlevel70method_vendorstype7locs3520price200000000minlevel70nameDrake Dealer Hurlunkreact11id23489methodsold-by,crafted,rewardfromslevel300level70id32858spell_id41514
	-- Vendor
	-- Crafted
	-- Quest Reward
	self:AddCompanion(PetDB, 41514, 32858, 4)
	self:addTradeFlags(RecipeDB, 41514, 4,1,2)
	self:addTradeAcquire(RecipeDB, 41514, 2, 23489)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- method_queststype0category23703givenitems328591coin0nameJorus the Cobalt Netherwing Drakeside1level70id11109type15.-1method_crafted41543source23rarity4rlevel70method_vendorstype7locs3520price200000000minlevel70nameDrake Dealer Hurlunkreact11id23489methodsold-by,crafted,rewardfromslevel300level70id32859spell_id41515
	-- Vendor
	-- Crafted
	-- Quest Reward
	self:AddCompanion(PetDB, 41515, 32859, 4)
	self:addTradeFlags(RecipeDB, 41515, 4,1,2)
	self:addTradeAcquire(RecipeDB, 41515, 2, 23489)

	-- Reins of the Purple Netherwing Drake - 41516
	-- method_queststype0category23703givenitems328601coin0nameMalfas the Purple Netherwing Drakeside1level70id11110type15.-1method_crafted41544source23rarity4rlevel70method_vendorstype7locs3520price200000000minlevel70nameDrake Dealer Hurlunkreact11id23489methodsold-by,crafted,rewardfromslevel300level70id32860spell_id41516
	-- Vendor
	-- Crafted
	-- Quest Reward
	self:AddCompanion(PetDB, 41516, 32860, 4)
	self:addTradeFlags(RecipeDB, 41516, 4,1,2)
	self:addTradeAcquire(RecipeDB, 41516, 2, 23489)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- method_queststype0category23703givenitems328611coin0nameZoya the Veridian Netherwing Drakeside1level70id11114type15.-1method_crafted41549source23rarity4rlevel70method_vendorstype7locs3520price200000000minlevel70nameDrake Dealer Hurlunkreact11id23489methodsold-by,crafted,rewardfromslevel300level70id32861spell_id41517
	-- Vendor
	-- Crafted
	-- Quest Reward
	self:AddCompanion(PetDB, 41517, 32861, 4)
	self:addTradeFlags(RecipeDB, 41517, 4,1,2)
	self:addTradeAcquire(RecipeDB, 41517, 2, 23489)

	-- Reins of the Violet Netherwing Drake - 41518
	-- method_queststype0category23703givenitems328621coin0nameVoranaku the Violet Netherwing Drakeside1level70id11113type15.-1method_crafted41548source23rarity4rlevel70method_vendorstype7locs3520price200000000minlevel70nameDrake Dealer Hurlunkreact11id23489methodsold-by,crafted,rewardfromslevel300level70id32862spell_id41518
	-- Vendor
	-- Crafted
	-- Quest Reward
	self:AddCompanion(PetDB, 41518, 32862, 4)
	self:addTradeFlags(RecipeDB, 41518, 4,1,2)
	self:addTradeAcquire(RecipeDB, 41518, 2, 23489)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1rarity3rlevel30methodslevel75level30id33224spell_id42776
	self:AddCompanion(PetDB, 42776, 33224, 3)

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1rarity4rlevel60methodslevel150level60id33225spell_id42777
	self:AddCompanion(PetDB, 42777, 33225, 4)

	-- Amani War Bear - 43688
	-- type15.-1rarity4rlevel70methodcontained-in-objectslevel150level70id33809method_dropstype3totalLootCount25locs3805nameAshli's Bagid186672lootCount19spell_id43688
	-- Unknown
	self:AddCompanion(PetDB, 43688, 33809, 4)

	-- Brewfest Ram - 43899
	-- type15.-1source2rarity3rlevel30method_vendorstype7locs14price00000000descRam Racing ApprenticenameDriz Tumblequickid24510methodsold-byslevel75level30id33976spell_id43899

end