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

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:MakeMountTable(MountDB)

	-- Brown Horse Bridle - 458
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs15price10000000descHorse Breederminlevel35react13nameGregor MacVinceid4885type7locs12price10000000descHorse Breederminlevel10react03nameKatie Hunterid384type7locs267price10000000descHorse Breederminlevel32react13nameMerideth Carlsonid2357type7locs11price10000000descHorse Breederminlevel25react13nameUnger Statforthid1460methoddropped-by,sold-byspellid458method_dropstype7locs12descStable Masterminlevel30react13lootCount2nameErmatotalLootCount34id6749id5656level30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 458, 5656, 3)
	self:addTradeFlags(RecipeDB, 458, 1,4,5)
	self:addTradeAcquire(RecipeDB, 458, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Black Stallion Bridle - 470
	-- type15.-1rarity3rlevel30source12slevel75method_vendorstype7locs11price10000000descHorse Breederminlevel25react13nameUnger Statforthid1460methoddropped-by,sold-byspellid470method_dropstype7locs12descStable Masterminlevel30react13lootCount3nameErmatotalLootCount34id6749id2411level30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 470, 2411, 3)
	self:addTradeFlags(RecipeDB, 470, 1,4,5)
	self:addTradeAcquire(RecipeDB, 470, 3, 6749, 2, 1460)

	-- Pinto Bridle - 472
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs15price10000000descHorse Breederminlevel35react13nameGregor MacVinceid4885type7locs12price10000000descHorse Breederminlevel10react03nameKatie Hunterid384type7locs267price10000000descHorse Breederminlevel32react13nameMerideth Carlsonid2357type7locs11price10000000descHorse Breederminlevel25react13nameUnger Statforthid1460methoddropped-by,sold-byspellid472method_dropstype7locs12descStable Masterminlevel30react13lootCount2nameErmatotalLootCount34id6749id2414level30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 472, 2414, 3)
	self:addTradeFlags(RecipeDB, 472, 1,4,5)
	self:addTradeAcquire(RecipeDB, 472, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Timber Wolf - 580
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1637price10000000descKennel Masterminlevel45react31nameOgunaro Wolfrunnerid3362methodsold-byspellid580id1132level30
	-- Vendor
	self:AddCompanion(PetDB, 580, 1132, 3)
	self:addTradeFlags(RecipeDB, 580, 2,4)
	self:addTradeAcquire(RecipeDB, 580, 2, 3362)

	-- Chestnut Mare Bridle - 6648
	-- type15.-1rarity3rlevel30source12slevel75method_vendorstype7locs15price10000000descHorse Breederminlevel35react13nameGregor MacVinceid4885type7locs12price10000000descHorse Breederminlevel10react03nameKatie Hunterid384type7locs267price10000000descHorse Breederminlevel32react13nameMerideth Carlsonid2357type7locs11price10000000descHorse Breederminlevel25react13nameUnger Statforthid1460methoddropped-by,sold-byspellid6648method_dropstype7locs12descStable Masterminlevel30react13lootCount3nameErmatotalLootCount34id6749id5655level30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 6648, 5655, 3)
	self:addTradeFlags(RecipeDB, 6648, 1,4,5)
	self:addTradeAcquire(RecipeDB, 6648, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Dire Wolf - 6653
	-- type15.-1rarity3method_queststype0category52597choiceitems29221113332115290156651coin8side4nameJoining the Battleid1level73rlevel30source2slevel75method_vendorstype7locs1637price10000000descKennel Masterminlevel45react31nameOgunaro Wolfrunnerid3362methodsold-by,rewardfromspellid6653id5665level30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 6653, 5665, 3)
	self:addTradeFlags(RecipeDB, 6653, 2,4,8)
	self:addTradeAcquire(RecipeDB, 6653, 4, 1, 2, 3362)

	-- Horn of the Brown Wolf - 6654
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1637price10000000descKennel Masterminlevel45react31nameOgunaro Wolfrunnerid3362methodsold-byspellid6654id5668level30
	-- Vendor
	self:AddCompanion(PetDB, 6654, 5668, 3)
	self:addTradeFlags(RecipeDB, 6654, 2,4)
	self:addTradeAcquire(RecipeDB, 6654, 2, 3362)

	-- Gray Ram - 6777
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descRam Breederminlevel10react13nameVeron Amberstillid1261methodsold-byspellid6777id5864level30
	-- Vendor
	self:AddCompanion(PetDB, 6777, 5864, 3)
	self:addTradeFlags(RecipeDB, 6777, 1,4)
	self:addTradeAcquire(RecipeDB, 6777, 2, 1261)

	-- White Ram - 6898
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descRam Breederminlevel10react13nameVeron Amberstillid1261methodsold-byspellid6898id5873level30
	-- Vendor
	self:AddCompanion(PetDB, 6898, 5873, 3)
	self:addTradeFlags(RecipeDB, 6898, 1,4)
	self:addTradeAcquire(RecipeDB, 6898, 2, 1261)

	-- Brown Ram - 6899
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descRam Breederminlevel10react13nameVeron Amberstillid1261methodsold-byspellid6899id5872level30
	-- Vendor
	self:AddCompanion(PetDB, 6899, 5872, 3)
	self:addTradeFlags(RecipeDB, 6899, 1,4)
	self:addTradeAcquire(RecipeDB, 6899, 2, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1657price10000000descSaber Handlerminlevel35react13nameLelanaiid4730methodsold-byspellid8394id8631level30
	-- Vendor
	self:AddCompanion(PetDB, 8394, 8631, 3)
	self:addTradeFlags(RecipeDB, 8394, 1,4)
	self:addTradeAcquire(RecipeDB, 8394, 2, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- type15.-1rarity3method_queststype0category52597choiceitems29221113332115290156651coin8side4nameJoining the Battleid1level73rlevel30source2slevel75method_vendorstype7locs14price10000000descRaptor Handlerminlevel45react31nameZjolnirid7952methodsold-by,rewardfromspellid8395id8588level30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 8395, 8588, 3)
	self:addTradeFlags(RecipeDB, 8395, 2,4,8)
	self:addTradeAcquire(RecipeDB, 8395, 4, 1, 2, 7952)

	-- Reins of the Spotted Frostsaber - 10789
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1657price10000000descSaber Handlerminlevel35react13nameLelanaiid4730methodsold-byspellid10789id8632level30
	-- Vendor
	self:AddCompanion(PetDB, 10789, 8632, 3)
	self:addTradeFlags(RecipeDB, 10789, 1,4)
	self:addTradeAcquire(RecipeDB, 10789, 2, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1657price10000000descSaber Handlerminlevel35react13nameLelanaiid4730methodsold-byspellid10793id8629level30
	-- Vendor
	self:AddCompanion(PetDB, 10793, 8629, 3)
	self:addTradeFlags(RecipeDB, 10793, 1,4)
	self:addTradeAcquire(RecipeDB, 10793, 2, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1rarity1rlevel40slevel75methodspellid10795id8589level40
	self:AddCompanion(PetDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs14price10000000descRaptor Handlerminlevel45react31nameZjolnirid7952methodsold-byspellid10796id8591level30
	-- Vendor
	self:AddCompanion(PetDB, 10796, 8591, 3)
	self:addTradeFlags(RecipeDB, 10796, 2,4)
	self:addTradeAcquire(RecipeDB, 10796, 2, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs14price10000000descRaptor Handlerminlevel45react31nameZjolnirid7952methodsold-byspellid10799id8592level30
	-- Vendor
	self:AddCompanion(PetDB, 10799, 8592, 3)
	self:addTradeFlags(RecipeDB, 10799, 2,4)
	self:addTradeAcquire(RecipeDB, 10799, 2, 7952)

	-- Red Mechanostrider - 10873
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid10873id8563level30
	-- Vendor
	self:AddCompanion(PetDB, 10873, 8563, 3)
	self:addTradeFlags(RecipeDB, 10873, 1,4)
	self:addTradeAcquire(RecipeDB, 10873, 2, 7955)

	-- Blue Mechanostrider - 10969
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid10969id8595level30
	-- Vendor
	self:AddCompanion(PetDB, 10969, 8595, 3)
	self:addTradeFlags(RecipeDB, 10969, 1,4)
	self:addTradeAcquire(RecipeDB, 10969, 2, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1rarity4rlevel60slevel150methodspellid15779id13326level60
	self:AddCompanion(PetDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1rarity4rlevel60slevel150methodspellid16055id12303level60
	self:AddCompanion(PetDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 16056
	-- type15.-1rarity4rlevel60slevel150methodspellid16056id12302level60
	self:AddCompanion(PetDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1rarity4rlevel60slevel150methodspellid16080id12330level60
	self:AddCompanion(PetDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1rarity4rlevel60slevel150methodspellid16081id12351level60
	self:AddCompanion(PetDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1rarity4rlevel60source1slevel150methoddropped-byspellid16082method_dropstype7locs12descStable Masterminlevel30react13lootCount2nameErmatotalLootCount34id6749id12354level60
	-- Mob Drop
	self:AddCompanion(PetDB, 16082, 12354, 4)
	self:addTradeFlags(RecipeDB, 16082, 5)
	self:addTradeAcquire(RecipeDB, 16082, 3, 6749)

	-- White Stallion Bridle - 16083
	-- type15.-1rarity4rlevel60source1slevel150methoddropped-byspellid16083method_dropstype7locs12descStable Masterminlevel30react13lootCount1nameErmatotalLootCount34id6749id12353level60
	-- Mob Drop
	self:AddCompanion(PetDB, 16083, 12353, 4)
	self:addTradeFlags(RecipeDB, 16083, 5)
	self:addTradeAcquire(RecipeDB, 16083, 3, 6749)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1rarity4rlevel60slevel150methodspellid16084id8586level60
	self:AddCompanion(PetDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- type15.-1rarity4rlevel60source2slevel75method_vendorstype7locs618price100000000descWintersaber Trainerminlevel62react23nameRivern Frostwindid10618methodsold-byspellid17229id13086level60
	-- Vendor
	self:AddCompanion(PetDB, 17229, 13086, 4)
	self:addTradeFlags(RecipeDB, 17229, 1,4)
	self:addTradeAcquire(RecipeDB, 17229, 2, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1rarity4rlevel60slevel150methodspellid17450id13317level60
	self:AddCompanion(PetDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid17453id13321level30
	-- Vendor
	self:AddCompanion(PetDB, 17453, 13321, 3)
	self:addTradeFlags(RecipeDB, 17453, 1,4)
	self:addTradeAcquire(RecipeDB, 17453, 2, 7955)

	-- Unpainted Mechanostrider - 17454
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs1price10000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid17454id13322level30
	-- Vendor
	self:AddCompanion(PetDB, 17454, 13322, 3)
	self:addTradeFlags(RecipeDB, 17454, 1,4)
	self:addTradeAcquire(RecipeDB, 17454, 2, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1rarity4rlevel60slevel150methodspellid17459id13327level60
	self:AddCompanion(PetDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1rarity4rlevel60slevel150methodspellid17460id13329level60
	self:AddCompanion(PetDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1rarity4rlevel60slevel150methodspellid17461id13328level60
	self:AddCompanion(PetDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs85price10000000descUndead Horse Merchantminlevel30react31nameZachariah Postid4731methodsold-byspellid17462id13331level30
	-- Vendor
	self:AddCompanion(PetDB, 17462, 13331, 3)
	self:addTradeFlags(RecipeDB, 17462, 2,4)
	self:addTradeAcquire(RecipeDB, 17462, 2, 4731)

	-- Blue Skeletal Horse - 17463
	-- type15.-1rarity3method_queststype0category52597choiceitems29221113332115290156651coin8side4nameJoining the Battleid1level73rlevel30source2slevel75method_vendorstype7locs85price10000000descUndead Horse Merchantminlevel30react31nameZachariah Postid4731methodsold-by,rewardfromspellid17463id13332level30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 17463, 13332, 3)
	self:addTradeFlags(RecipeDB, 17463, 2,4,8)
	self:addTradeAcquire(RecipeDB, 17463, 4, 1, 2, 4731)

	-- Brown Skeletal Horse - 17464
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs85price10000000descUndead Horse Merchantminlevel30react31nameZachariah Postid4731methodsold-byspellid17464id13333level30
	-- Vendor
	self:AddCompanion(PetDB, 17464, 13333, 3)
	self:addTradeFlags(RecipeDB, 17464, 2,4)
	self:addTradeAcquire(RecipeDB, 17464, 2, 4731)

	-- Green Skeletal Warhorse - 17465
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs85price100000000descUndead Horse Merchantminlevel30react31nameZachariah Postid4731methodsold-byspellid17465id13334level60
	-- Vendor
	self:AddCompanion(PetDB, 17465, 13334, 4)
	self:addTradeFlags(RecipeDB, 17465, 2,4)
	self:addTradeAcquire(RecipeDB, 17465, 2, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1rarity4rlevel60source1slevel150methoddropped-byspellid17481method_dropstype6locs2017classification1disp10729minlevel62react33lootCount1nameBaron RivendaretotalLootCount12362id10440id13335level60
	-- Instance: 2017 - type1category3minlevel58maxlevel60nameStratholmeid2017territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 17481, 13335, 4)
	self:addTradeFlags(RecipeDB, 17481, 5)
	self:addTradeAcquire(RecipeDB, 17481, 3, 10440)

	-- Gray Kodo - 18989
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs215price10000000descKodo Mountsminlevel45react31nameHarb Clawhoofid3685methodsold-byspellid18989id15277level30
	-- Vendor
	self:AddCompanion(PetDB, 18989, 15277, 3)
	self:addTradeFlags(RecipeDB, 18989, 2,4)
	self:addTradeAcquire(RecipeDB, 18989, 2, 3685)

	-- Brown Kodo - 18990
	-- type15.-1rarity3method_queststype0category52597choiceitems29221113332115290156651coin8side4nameJoining the Battleid1level73rlevel30source2slevel75method_vendorstype7locs215price10000000descKodo Mountsminlevel45react31nameHarb Clawhoofid3685methodsold-by,rewardfromspellid18990id15290level30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 18990, 15290, 3)
	self:addTradeFlags(RecipeDB, 18990, 2,4,8)
	self:addTradeAcquire(RecipeDB, 18990, 4, 1, 2, 3685)

	-- Green Kodo - 18991
	-- type15.-1rarity4rlevel60slevel150methodspellid18991id15292level60
	self:AddCompanion(PetDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1rarity4rlevel60slevel150methodspellid18992id15293level60
	self:AddCompanion(PetDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1rarity4rlevel55source8slevel75methodspellid22717id18241level55
	self:AddCompanion(PetDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1rarity4rlevel55source8slevel75methodspellid22718id18247level55
	self:AddCompanion(PetDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 22719
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2918price0002056030205593020558300000descMount Vendorminlevel55react11nameLieutenant Karterid12783methodsold-byspellid22719id29465level60
	-- Vendor
	self:AddCompanion(PetDB, 22719, 29465, 4)
	self:addTradeFlags(RecipeDB, 22719, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22719, 2, 12783)

	-- Black War Ram - 22720
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2918price0002056030205593020558300000descMount Vendorminlevel55react11nameLieutenant Karterid12783methodsold-byspellid22720id29467level60
	-- Vendor
	self:AddCompanion(PetDB, 22720, 29467, 4)
	self:addTradeFlags(RecipeDB, 22720, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22720, 2, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2917price0002056030205593020558300000descMount Quartermasterminlevel55react21nameRaider Borkid12796methodsold-byspellid22721id29472level60
	-- Vendor
	self:AddCompanion(PetDB, 22721, 29472, 4)
	self:addTradeFlags(RecipeDB, 22721, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22721, 2, 12796)

	-- Red Skeletal Warhorse - 22722
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2917price0002056030205593020558300000descMount Quartermasterminlevel55react21nameRaider Borkid12796methodsold-byspellid22722id29470level60
	-- Vendor
	self:AddCompanion(PetDB, 22722, 29470, 4)
	self:addTradeFlags(RecipeDB, 22722, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22722, 2, 12796)

	-- Reins of the Black War Tiger - 22723
	-- type15.-1rarity4rlevel60source28slevel150method_vendorstype7locs35243525148-1price000205603020559302055830minlevel70react11nameGeneral Goods Vendorid26304type7locs2918price0002056030205593020558300000descMount Vendorminlevel55react11nameLieutenant Karterid12783methodsold-byspellid22723id29471level60
	-- Vendor
	self:AddCompanion(PetDB, 22723, 29471, 4)
	self:addTradeFlags(RecipeDB, 22723, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22723, 2, 12783, 2, 26304)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1rarity4rlevel55source8slevel75methodspellid22724id18245level55
	self:AddCompanion(PetDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1657price100000000descSaber Handlerminlevel35react13nameLelanaiid4730methodsold-byspellid23219id18767level60
	-- Vendor
	self:AddCompanion(PetDB, 23219, 18767, 4)
	self:addTradeFlags(RecipeDB, 23219, 1,4)
	self:addTradeAcquire(RecipeDB, 23219, 2, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1657price100000000descSaber Handlerminlevel35react13nameLelanaiid4730methodsold-byspellid23221id18766level60
	-- Vendor
	self:AddCompanion(PetDB, 23221, 18766, 4)
	self:addTradeFlags(RecipeDB, 23221, 1,4)
	self:addTradeAcquire(RecipeDB, 23221, 2, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1price100000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid23222id18774level60
	-- Vendor
	self:AddCompanion(PetDB, 23222, 18774, 4)
	self:addTradeFlags(RecipeDB, 23222, 1,4)
	self:addTradeAcquire(RecipeDB, 23222, 2, 7955)

	-- Swift White Mechanostrider - 23223
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1price100000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid23223id18773level60
	-- Vendor
	self:AddCompanion(PetDB, 23223, 18773, 4)
	self:addTradeFlags(RecipeDB, 23223, 1,4)
	self:addTradeAcquire(RecipeDB, 23223, 2, 7955)

	-- Swift Green Mechanostrider - 23225
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1price100000000descMechanostrider Merchantminlevel50react13nameMilli Featherwhistleid7955methodsold-byspellid23225id18772level60
	-- Vendor
	self:AddCompanion(PetDB, 23225, 18772, 4)
	self:addTradeFlags(RecipeDB, 23225, 1,4)
	self:addTradeAcquire(RecipeDB, 23225, 2, 7955)

	-- Swift Palomino - 23227
	-- type15.-1rarity4method_queststype0category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677level1rlevel60source2slevel150method_vendorstype7locs15price100000000descHorse Breederminlevel35react13nameGregor MacVinceid4885type7locs12price100000000descHorse Breederminlevel10react03nameKatie Hunterid384type7locs267price100000000descHorse Breederminlevel32react13nameMerideth Carlsonid2357methoddropped-by,sold-by,rewardfromspellid23227method_dropstype7locs12descStable Masterminlevel30react13lootCount1nameErmatotalLootCount34id6749id18776level60
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23227, 18776, 4)
	self:addTradeFlags(RecipeDB, 23227, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23227, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift White Steed - 23228
	-- type15.-1rarity4method_queststype0category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677level1rlevel60source2slevel150method_vendorstype7locs15price100000000descHorse Breederminlevel35react13nameGregor MacVinceid4885type7locs12price100000000descHorse Breederminlevel10react03nameKatie Hunterid384type7locs267price100000000descHorse Breederminlevel32react13nameMerideth Carlsonid2357methoddropped-by,sold-by,rewardfromspellid23228method_dropstype7locs12descStable Masterminlevel30react13lootCount2nameErmatotalLootCount34id6749id18778level60
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23228, 18778, 4)
	self:addTradeFlags(RecipeDB, 23228, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23228, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Steed - 23229
	-- type15.-1rarity4method_queststype0category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677level1rlevel60source2slevel150method_vendorstype7locs15price100000000descHorse Breederminlevel35react13nameGregor MacVinceid4885type7locs12price100000000descHorse Breederminlevel10react03nameKatie Hunterid384type7locs267price100000000descHorse Breederminlevel32react13nameMerideth Carlsonid2357methoddropped-by,sold-by,rewardfromspellid23229method_dropstype7locs12descStable Masterminlevel30react13lootCount2nameErmatotalLootCount34id6749id18777level60
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23229, 18777, 4)
	self:addTradeFlags(RecipeDB, 23229, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23229, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Ram - 23238
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1price100000000descRam Breederminlevel10react13nameVeron Amberstillid1261methodsold-byspellid23238id18786level60
	-- Vendor
	self:AddCompanion(PetDB, 23238, 18786, 4)
	self:addTradeFlags(RecipeDB, 23238, 1,4)
	self:addTradeAcquire(RecipeDB, 23238, 2, 1261)

	-- Swift Gray Ram - 23239
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1price100000000descRam Breederminlevel10react13nameVeron Amberstillid1261methodsold-byspellid23239id18787level60
	-- Vendor
	self:AddCompanion(PetDB, 23239, 18787, 4)
	self:addTradeFlags(RecipeDB, 23239, 1,4)
	self:addTradeAcquire(RecipeDB, 23239, 2, 1261)

	-- Swift White Ram - 23240
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1price100000000descRam Breederminlevel10react13nameVeron Amberstillid1261methodsold-byspellid23240id18785level60
	-- Vendor
	self:AddCompanion(PetDB, 23240, 18785, 4)
	self:addTradeFlags(RecipeDB, 23240, 1,4)
	self:addTradeAcquire(RecipeDB, 23240, 2, 1261)

	-- Swift Blue Raptor - 23241
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs14price100000000descRaptor Handlerminlevel45react31nameZjolnirid7952methodsold-byspellid23241id18788level60
	-- Vendor
	self:AddCompanion(PetDB, 23241, 18788, 4)
	self:addTradeFlags(RecipeDB, 23241, 2,4)
	self:addTradeAcquire(RecipeDB, 23241, 2, 7952)

	-- Swift Olive Raptor - 23242
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs14price100000000descRaptor Handlerminlevel45react31nameZjolnirid7952methodsold-byspellid23242id18789level60
	-- Vendor
	self:AddCompanion(PetDB, 23242, 18789, 4)
	self:addTradeFlags(RecipeDB, 23242, 2,4)
	self:addTradeAcquire(RecipeDB, 23242, 2, 7952)

	-- Swift Orange Raptor - 23243
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs14price100000000descRaptor Handlerminlevel45react31nameZjolnirid7952methodsold-byspellid23243id18790level60
	-- Vendor
	self:AddCompanion(PetDB, 23243, 18790, 4)
	self:addTradeFlags(RecipeDB, 23243, 2,4)
	self:addTradeAcquire(RecipeDB, 23243, 2, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs85price100000000descUndead Horse Merchantminlevel30react31nameZachariah Postid4731methodsold-byspellid23246id18791level60
	-- Vendor
	self:AddCompanion(PetDB, 23246, 18791, 4)
	self:addTradeFlags(RecipeDB, 23246, 2,4)
	self:addTradeAcquire(RecipeDB, 23246, 2, 4731)

	-- Great White Kodo - 23247
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs215price100000000descKodo Mountsminlevel45react31nameHarb Clawhoofid3685methodsold-byspellid23247id18793level60
	-- Vendor
	self:AddCompanion(PetDB, 23247, 18793, 4)
	self:addTradeFlags(RecipeDB, 23247, 2,4)
	self:addTradeAcquire(RecipeDB, 23247, 2, 3685)

	-- Great Gray Kodo - 23248
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs215price100000000descKodo Mountsminlevel45react31nameHarb Clawhoofid3685methodsold-byspellid23248id18795level60
	-- Vendor
	self:AddCompanion(PetDB, 23248, 18795, 4)
	self:addTradeFlags(RecipeDB, 23248, 2,4)
	self:addTradeAcquire(RecipeDB, 23248, 2, 3685)

	-- Great Brown Kodo - 23249
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs215price100000000descKodo Mountsminlevel45react31nameHarb Clawhoofid3685methodsold-byspellid23249id18794level60
	-- Vendor
	self:AddCompanion(PetDB, 23249, 18794, 4)
	self:addTradeFlags(RecipeDB, 23249, 2,4)
	self:addTradeAcquire(RecipeDB, 23249, 2, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1637price100000000descKennel Masterminlevel45react31nameOgunaro Wolfrunnerid3362methodsold-byspellid23250id18796level60
	-- Vendor
	self:AddCompanion(PetDB, 23250, 18796, 4)
	self:addTradeFlags(RecipeDB, 23250, 2,4)
	self:addTradeAcquire(RecipeDB, 23250, 2, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1637price100000000descKennel Masterminlevel45react31nameOgunaro Wolfrunnerid3362methodsold-byspellid23251id18797level60
	-- Vendor
	self:AddCompanion(PetDB, 23251, 18797, 4)
	self:addTradeFlags(RecipeDB, 23251, 2,4)
	self:addTradeAcquire(RecipeDB, 23251, 2, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1637price100000000descKennel Masterminlevel45react31nameOgunaro Wolfrunnerid3362methodsold-byspellid23252id18798level60
	-- Vendor
	self:AddCompanion(PetDB, 23252, 18798, 4)
	self:addTradeFlags(RecipeDB, 23252, 2,4)
	self:addTradeAcquire(RecipeDB, 23252, 2, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs1657price100000000descSaber Handlerminlevel35react13nameLelanaiid4730methodsold-byspellid23338id18902level60
	-- Vendor
	self:AddCompanion(PetDB, 23338, 18902, 4)
	self:addTradeFlags(RecipeDB, 23338, 1,4)
	self:addTradeAcquire(RecipeDB, 23338, 2, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2597classification1price000205605000000000descFrostwolf Supply Officerminlevel58react31maxlevel68nameGrunnda Wolfheartid13218type7locs36267classification1price0002056050descFrostwolf Supply Officerminlevel58react31nameJekyll Flandringid13219methodsold-byspellid23509id19029level60
	-- Vendor
	self:AddCompanion(PetDB, 23509, 19029, 4)
	self:addTradeFlags(RecipeDB, 23509, 2,4)
	self:addTradeAcquire(RecipeDB, 23509, 2, 13218, 2, 13219)

	-- Stormpike Battle Charger - 23510
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2597classification1price0002056050descStormpike Supply Officerminlevel68react13nameGaelden Hammersmithid13216type7locs36classification1price000205605000000000descStormpike Supply Officerminlevel58react13nameThanthaldis Snowgleamid13217methodsold-byspellid23510id19030level60
	-- Vendor
	self:AddCompanion(PetDB, 23510, 19030, 4)
	self:addTradeFlags(RecipeDB, 23510, 1,4)
	self:addTradeAcquire(RecipeDB, 23510, 2, 13216, 2, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1rarity4rlevel60source1slevel150methoddropped-byspellid24242method_dropstype7locs1977classification3react33lootCount35nameBloodlord MandokirtotalLootCount8107id11382id19872level60
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(PetDB, 24242, 19872, 4)
	self:addTradeFlags(RecipeDB, 24242, 5,6)
	self:addTradeAcquire(RecipeDB, 24242, 3, 11382)

	-- Swift Zulian Tiger - 24252
	-- type15.-1rarity4rlevel60source1slevel150methoddropped-byspellid24252method_dropstype7locs1977classification3react33lootCount9nameHigh Priest ThekaltotalLootCount3676id14509id19902level60
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(PetDB, 24252, 19902, 4)
	self:addTradeFlags(RecipeDB, 24252, 5,6)
	self:addTradeAcquire(RecipeDB, 24252, 3, 14509)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1rarity5rlevel60slevel150methodspellid26656id21176level60
	self:AddCompanion(PetDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 32235
	-- type15.-1rarity3rlevel70source2slevel225method_vendorstype7locs3520price100000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32235id25470level70
	-- Vendor
	self:AddCompanion(PetDB, 32235, 25470, 3)
	self:addTradeFlags(RecipeDB, 32235, 1,4)
	self:addTradeAcquire(RecipeDB, 32235, 2, 20510)

	-- Ebon Gryphon - 32239
	-- type15.-1rarity3rlevel70source2slevel225method_vendorstype7locs3520price100000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32239id25471level70
	-- Vendor
	self:AddCompanion(PetDB, 32239, 25471, 3)
	self:addTradeFlags(RecipeDB, 32239, 1,4)
	self:addTradeAcquire(RecipeDB, 32239, 2, 20510)

	-- Snowy Gryphon - 32240
	-- type15.-1rarity3rlevel70source2slevel225method_vendorstype7locs3520price100000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32240id25472level70
	-- Vendor
	self:AddCompanion(PetDB, 32240, 25472, 3)
	self:addTradeFlags(RecipeDB, 32240, 1,4)
	self:addTradeAcquire(RecipeDB, 32240, 2, 20510)

	-- Swift Blue Gryphon - 32242
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32242id25473level70
	-- Vendor
	self:AddCompanion(PetDB, 32242, 25473, 4)
	self:addTradeFlags(RecipeDB, 32242, 1,4)
	self:addTradeAcquire(RecipeDB, 32242, 2, 20510)

	-- Tawny Windrider - 32243
	-- type15.-1rarity3rlevel70source2slevel225method_vendorstype7locs3520price100000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32243id25474level70
	-- Vendor
	self:AddCompanion(PetDB, 32243, 25474, 3)
	self:addTradeFlags(RecipeDB, 32243, 2,4)
	self:addTradeAcquire(RecipeDB, 32243, 2, 20494)

	-- Blue Windrider - 32244
	-- type15.-1rarity3rlevel70source2slevel225method_vendorstype7locs3520price100000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32244id25475level70
	-- Vendor
	self:AddCompanion(PetDB, 32244, 25475, 3)
	self:addTradeFlags(RecipeDB, 32244, 2,4)
	self:addTradeAcquire(RecipeDB, 32244, 2, 20494)

	-- Green Windrider - 32245
	-- type15.-1rarity3rlevel70source2slevel225method_vendorstype7locs3520price100000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32245id25476level70
	-- Vendor
	self:AddCompanion(PetDB, 32245, 25476, 3)
	self:addTradeFlags(RecipeDB, 32245, 2,4)
	self:addTradeAcquire(RecipeDB, 32245, 2, 20494)

	-- Swift Red Windrider - 32246
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32246id25477level70
	-- Vendor
	self:AddCompanion(PetDB, 32246, 25477, 4)
	self:addTradeFlags(RecipeDB, 32246, 2,4)
	self:addTradeAcquire(RecipeDB, 32246, 2, 20494)

	-- Swift Red Gryphon - 32289
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32289id25527level70
	-- Vendor
	self:AddCompanion(PetDB, 32289, 25527, 4)
	self:addTradeFlags(RecipeDB, 32289, 1,4)
	self:addTradeAcquire(RecipeDB, 32289, 2, 20510)

	-- Swift Green Gryphon - 32290
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32290id25528level70
	-- Vendor
	self:AddCompanion(PetDB, 32290, 25528, 4)
	self:addTradeFlags(RecipeDB, 32290, 1,4)
	self:addTradeAcquire(RecipeDB, 32290, 2, 20510)

	-- Swift Purple Gryphon - 32292
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descGryphon Keeperminlevel70react13nameBrunn Flamebeardid20510methodsold-byspellid32292id25529level70
	-- Vendor
	self:AddCompanion(PetDB, 32292, 25529, 4)
	self:addTradeFlags(RecipeDB, 32292, 1,4)
	self:addTradeAcquire(RecipeDB, 32292, 2, 20510)

	-- Swift Green Windrider - 32295
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32295id25531level70
	-- Vendor
	self:AddCompanion(PetDB, 32295, 25531, 4)
	self:addTradeFlags(RecipeDB, 32295, 2,4)
	self:addTradeAcquire(RecipeDB, 32295, 2, 20494)

	-- Swift Yellow Windrider - 32296
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32296id25532level70
	-- Vendor
	self:AddCompanion(PetDB, 32296, 25532, 4)
	self:addTradeFlags(RecipeDB, 32296, 2,4)
	self:addTradeAcquire(RecipeDB, 32296, 2, 20494)

	-- Swift Purple Windrider - 32297
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3520price200000000descWindrider Keeperminlevel70react31nameDama Wildmaneid20494methodsold-byspellid32297id25533level70
	-- Vendor
	self:AddCompanion(PetDB, 32297, 25533, 4)
	self:addTradeFlags(RecipeDB, 32297, 2,4)
	self:addTradeAcquire(RecipeDB, 32297, 2, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3430price100000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-byspellid33660id28936level60
	-- Vendor
	self:AddCompanion(PetDB, 33660, 28936, 4)
	self:addTradeFlags(RecipeDB, 33660, 2,4)
	self:addTradeAcquire(RecipeDB, 33660, 2, 16264)

	-- Brown Elekk - 34406
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs35243557price10000000descElekk Breederminlevel14react13nameTorallius the Pack Handlerid17584methodsold-byspellid34406id28481level30
	-- Vendor
	self:AddCompanion(PetDB, 34406, 28481, 3)
	self:addTradeFlags(RecipeDB, 34406, 1,4)
	self:addTradeAcquire(RecipeDB, 34406, 2, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518classification1price000260451002604420000000descBlade Merchantminlevel70react13nameAldraanid21485type7locs3518classification1price000260451002604420000000descBlade Merchantminlevel70react31nameCoreielid21474methodsold-byspellid34790id29228level60
	-- Vendor
	self:AddCompanion(PetDB, 34790, 29228, 4)
	self:addTradeFlags(RecipeDB, 34790, 1,2,4)
	self:addTradeAcquire(RecipeDB, 34790, 2, 21474, 2, 21485)

	-- Red Hawkstrider - 34795
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-byspellid34795id28927level30
	-- Vendor
	self:AddCompanion(PetDB, 34795, 28927, 3)
	self:addTradeFlags(RecipeDB, 34795, 2,4)
	self:addTradeAcquire(RecipeDB, 34795, 2, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price100000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid34896id29102level60
	-- Vendor
	self:AddCompanion(PetDB, 34896, 29102, 4)
	self:addTradeFlags(RecipeDB, 34896, 2,4)
	self:addTradeAcquire(RecipeDB, 34896, 2, 20241)

	-- Reins of the White War Talbuk - 34897
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price100000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid34897id29103level60
	-- Vendor
	self:AddCompanion(PetDB, 34897, 29103, 4)
	self:addTradeFlags(RecipeDB, 34897, 2,4)
	self:addTradeAcquire(RecipeDB, 34897, 2, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price100000000descKurenai Quartermasterminlevel65react13nameTrader Narasuid20240methodsold-byspellid34898id29229level60
	-- Vendor
	self:AddCompanion(PetDB, 34898, 29229, 4)
	self:addTradeFlags(RecipeDB, 34898, 1,4)
	self:addTradeAcquire(RecipeDB, 34898, 2, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price100000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid34899id29105level60
	-- Vendor
	self:AddCompanion(PetDB, 34899, 29105, 4)
	self:addTradeFlags(RecipeDB, 34899, 2,4)
	self:addTradeAcquire(RecipeDB, 34899, 2, 20241)

	-- Purple Hawkstrider - 35018
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-byspellid35018id29222level30
	-- Vendor
	self:AddCompanion(PetDB, 35018, 29222, 3)
	self:addTradeFlags(RecipeDB, 35018, 2,4)
	self:addTradeAcquire(RecipeDB, 35018, 2, 16264)

	-- Blue Hawkstrider - 35020
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-byspellid35020id29220level30
	-- Vendor
	self:AddCompanion(PetDB, 35020, 29220, 3)
	self:addTradeFlags(RecipeDB, 35020, 2,4)
	self:addTradeAcquire(RecipeDB, 35020, 2, 16264)

	-- Black Hawkstrider - 35022
	-- type15.-1rarity3method_queststype0category52597choiceitems29221113332115290156651coin8side4nameJoining the Battleid1level73rlevel30source2slevel75method_vendorstype7locs3430price10000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-by,rewardfromspellid35022id29221level30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 35022, 29221, 3)
	self:addTradeFlags(RecipeDB, 35022, 2,4,8)
	self:addTradeAcquire(RecipeDB, 35022, 4, 1, 2, 16264)

	-- Swift Green Hawkstrider - 35025
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3430price100000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-byspellid35025id29223level60
	-- Vendor
	self:AddCompanion(PetDB, 35025, 29223, 4)
	self:addTradeFlags(RecipeDB, 35025, 2,4)
	self:addTradeAcquire(RecipeDB, 35025, 2, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3430price100000000descHawkstrider Breederminlevel15react31nameWinaestraid16264methodsold-byspellid35027id29224level60
	-- Vendor
	self:AddCompanion(PetDB, 35027, 29224, 4)
	self:addTradeFlags(RecipeDB, 35027, 2,4)
	self:addTradeAcquire(RecipeDB, 35027, 2, 16264)

	-- Swift Warstrider - 35028
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2917price0002056030205593020558300000descMount Quartermasterminlevel55react21nameRaider Borkid12796methodsold-byspellid35028id34129level60
	-- Vendor
	self:AddCompanion(PetDB, 35028, 34129, 4)
	self:addTradeFlags(RecipeDB, 35028, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35028, 2, 12796)

	-- Gray Elekk - 35710
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs35243557price10000000descElekk Breederminlevel14react13nameTorallius the Pack Handlerid17584methodsold-byspellid35710id29744level30
	-- Vendor
	self:AddCompanion(PetDB, 35710, 29744, 3)
	self:addTradeFlags(RecipeDB, 35710, 1,4)
	self:addTradeAcquire(RecipeDB, 35710, 2, 17584)

	-- Purple Elekk - 35711
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs35243557price10000000descElekk Breederminlevel14react13nameTorallius the Pack Handlerid17584methodsold-byspellid35711id29743level30
	-- Vendor
	self:AddCompanion(PetDB, 35711, 29743, 3)
	self:addTradeFlags(RecipeDB, 35711, 1,4)
	self:addTradeAcquire(RecipeDB, 35711, 2, 17584)

	-- Great Green Elekk - 35712
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs35243557price100000000descElekk Breederminlevel14react13nameTorallius the Pack Handlerid17584methodsold-byspellid35712id29746level60
	-- Vendor
	self:AddCompanion(PetDB, 35712, 29746, 4)
	self:addTradeFlags(RecipeDB, 35712, 1,4)
	self:addTradeAcquire(RecipeDB, 35712, 2, 17584)

	-- Great Blue Elekk - 35713
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs35243557price100000000descElekk Breederminlevel14react13nameTorallius the Pack Handlerid17584methodsold-byspellid35713id29745level60
	-- Vendor
	self:AddCompanion(PetDB, 35713, 29745, 4)
	self:addTradeFlags(RecipeDB, 35713, 1,4)
	self:addTradeAcquire(RecipeDB, 35713, 2, 17584)

	-- Great Purple Elekk - 35714
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs35243557price100000000descElekk Breederminlevel14react13nameTorallius the Pack Handlerid17584methodsold-byspellid35714id29747level60
	-- Vendor
	self:AddCompanion(PetDB, 35714, 29747, 4)
	self:addTradeFlags(RecipeDB, 35714, 1,4)
	self:addTradeAcquire(RecipeDB, 35714, 2, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1rarity4rlevel70source1slevel150methoddropped-byspellid36702method_dropstype6locs3457classification3disp16416react33lootCount78nameAttumen the HuntsmantotalLootCount35478id15550type6locs3457classification3disp16040react33lootCount10nameAttumen the HuntsmantotalLootCount6529id16152id30480level70
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	self:AddCompanion(PetDB, 36702, 30480, 4)
	self:addTradeFlags(RecipeDB, 36702, 5,6)
	self:addTradeAcquire(RecipeDB, 36702, 3, 15550, 3, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1rarity4rlevel70slevel300methodspellid37015id30609level70
	self:AddCompanion(PetDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid39315id31829level60
	-- Vendor
	self:AddCompanion(PetDB, 39315, 31829, 4)
	self:addTradeFlags(RecipeDB, 39315, 2,4)
	self:addTradeAcquire(RecipeDB, 39315, 2, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518classification1price00026045702604415000000descBlade Merchantminlevel70react13nameAldraanid21485type7locs3518classification1price00026045702604415000000descBlade Merchantminlevel70react31nameCoreielid21474methodsold-byspellid39316id28915level60
	-- Vendor
	self:AddCompanion(PetDB, 39316, 28915, 4)
	self:addTradeFlags(RecipeDB, 39316, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39316, 2, 21474, 2, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid39317id31831level60
	-- Vendor
	self:AddCompanion(PetDB, 39317, 31831, 4)
	self:addTradeFlags(RecipeDB, 39317, 2,4)
	self:addTradeAcquire(RecipeDB, 39317, 2, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid39318id31833level60
	-- Vendor
	self:AddCompanion(PetDB, 39318, 31833, 4)
	self:addTradeFlags(RecipeDB, 39318, 2,4)
	self:addTradeAcquire(RecipeDB, 39318, 2, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- type15.-1rarity4rlevel60source2slevel150method_vendorstype7locs3518price70000000descMag'har Quartermasterminlevel65react31nameProvisioner Naselaid20241methodsold-byspellid39319id31835level60
	-- Vendor
	self:AddCompanion(PetDB, 39319, 31835, 4)
	self:addTradeFlags(RecipeDB, 39319, 2,4)
	self:addTradeAcquire(RecipeDB, 39319, 2, 20241)

	-- Green Riding Nether Ray - 39798
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70react11nameGrellaid23367methodsold-byspellid39798id32314level70
	-- Vendor
	self:AddCompanion(PetDB, 39798, 32314, 4)
	self:addTradeFlags(RecipeDB, 39798, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39798, 2, 23367)

	-- Red Riding Nether Ray - 39800
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70react11nameGrellaid23367methodsold-byspellid39800id32317level70
	-- Vendor
	self:AddCompanion(PetDB, 39800, 32317, 4)
	self:addTradeFlags(RecipeDB, 39800, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39800, 2, 23367)

	-- Purple Riding Nether Ray - 39801
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70react11nameGrellaid23367methodsold-byspellid39801id32316level70
	-- Vendor
	self:AddCompanion(PetDB, 39801, 32316, 4)
	self:addTradeFlags(RecipeDB, 39801, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39801, 2, 23367)

	-- Silver Riding Nether Ray - 39802
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70react11nameGrellaid23367methodsold-byspellid39802id32318level70
	-- Vendor
	self:AddCompanion(PetDB, 39802, 32318, 4)
	self:addTradeFlags(RecipeDB, 39802, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39802, 2, 23367)

	-- Blue Riding Nether Ray - 39803
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70react11nameGrellaid23367methodsold-byspellid39803id32319level70
	-- Vendor
	self:AddCompanion(PetDB, 39803, 32319, 4)
	self:addTradeFlags(RecipeDB, 39803, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39803, 2, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1rarity4rlevel70source1slevel300methoddropped-byspellid40192method_dropstype7locs37033845classification3descLord of the Blood Elvesdisp20023minlevel73react33lootCount14nameKael'thas SunstridertotalLootCount3723id19622type7locs409537033845classification3descLord of the Blood Elvesdisp20023minlevel72react33lootCount1nameKael'thas SunstridertotalLootCount9689id23054id32458level70
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	self:AddCompanion(PetDB, 40192, 32458, 4)
	self:addTradeFlags(RecipeDB, 40192, 5,6)
	self:addTradeAcquire(RecipeDB, 40192, 3, 19622, 3, 23054)

	-- Reins of the Raven Lord - 41252
	-- type15.-1rarity4rlevel70source1slevel150methoddropped-byspellid41252method_dropstype10locs3791classification1disp21492minlevel69react33lootCount12nameAnzutotalLootCount5155id23035id32768level70
	-- Instance: 3791 - type5category3expansion1minlevel67maxlevel69nameAuchindoun: Sethekk Hallsid3791territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 41252, 32768, 4)
	self:addTradeFlags(RecipeDB, 41252, 5)
	self:addTradeAcquire(RecipeDB, 41252, 3, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- type15.-1rarity4method_queststype0givenitems328571category23703coin0side1nameOnyxien the Onyx Netherwing Drakeid11111level70rlevel70source23slevel300method_redemptionUnknownmethod_vendorstype7locs3520price200000000minlevel70react11nameDrake Dealer Hurlunkid23489methodredemption,rewardfromspellid41513id32857level70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41513, 32857, 4)
	self:addTradeFlags(RecipeDB, 41513, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41513, 4, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- type15.-1rarity4method_queststype0givenitems328581category23703coin0side1nameSuraku the Azure Netherwing Drakeid11112level70rlevel70source23slevel300method_redemptionUnknownmethod_vendorstype7locs3520price200000000minlevel70react11nameDrake Dealer Hurlunkid23489methodredemption,rewardfromspellid41514id32858level70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41514, 32858, 4)
	self:addTradeFlags(RecipeDB, 41514, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41514, 4, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- type15.-1rarity4method_queststype0givenitems328591category23703coin0side1nameJorus the Cobalt Netherwing Drakeid11109level70rlevel70source23slevel300method_redemptionUnknownmethod_vendorstype7locs3520price200000000minlevel70react11nameDrake Dealer Hurlunkid23489methodredemption,rewardfromspellid41515id32859level70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41515, 32859, 4)
	self:addTradeFlags(RecipeDB, 41515, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41515, 4, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- type15.-1rarity4method_queststype0givenitems328601category23703coin0side1nameMalfas the Purple Netherwing Drakeid11110level70rlevel70source23slevel300method_redemptionUnknownmethod_vendorstype7locs3520price200000000minlevel70react11nameDrake Dealer Hurlunkid23489methodredemption,rewardfromspellid41516id32860level70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41516, 32860, 4)
	self:addTradeFlags(RecipeDB, 41516, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41516, 4, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- type15.-1rarity4method_queststype0givenitems328611category23703coin0side1nameZoya the Veridian Netherwing Drakeid11114level70rlevel70source23slevel300method_redemptionUnknownmethod_vendorstype7locs3520price200000000minlevel70react11nameDrake Dealer Hurlunkid23489methodredemption,rewardfromspellid41517id32861level70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41517, 32861, 4)
	self:addTradeFlags(RecipeDB, 41517, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41517, 4, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- type15.-1rarity4method_queststype0givenitems328621category23703coin0side1nameVoranaku the Violet Netherwing Drakeid11113level70rlevel70source23slevel300method_redemptionUnknownmethod_vendorstype7locs3520price200000000minlevel70react11nameDrake Dealer Hurlunkid23489methodredemption,rewardfromspellid41518id32862level70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41518, 32862, 4)
	self:addTradeFlags(RecipeDB, 41518, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41518, 4, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1rarity3rlevel30slevel75methodspellid42776id33224level30
	self:AddCompanion(PetDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1rarity4rlevel60slevel150methodspellid42777id33225level60
	self:AddCompanion(PetDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 43688
	-- type15.-1rarity4rlevel70slevel150methodcontained-in-objectspellid43688method_dropstype3locs3805lootCount19nameAshli's BagtotalLootCount25id186672id33809level70
	-- Unknown
	self:AddCompanion(PetDB, 43688, 33809, 4)
	-- No filter flags
	-- No acquire information

	-- Brewfest Ram - 43899
	-- type15.-1rarity3rlevel30source2slevel75method_vendorstype7locs14price00000000descRam Racing ApprenticenameDriz Tumblequickid24510methodsold-byspellid43899id33976level30
	-- Vendor
	self:AddCompanion(PetDB, 43899, 33976, 3)
	self:addTradeFlags(RecipeDB, 43899, 1,2,4)
	self:addTradeAcquire(RecipeDB, 43899, 2, 24510)

	-- Swift Brewfest Ram - 43900
	-- type15.-1rarity4rlevel60slevel150method_vendorstype7locs14price00000000descRam Racing ApprenticenameDriz Tumblequickid24510methodsold-byspellid43900id33977level60
	-- Vendor
	self:AddCompanion(PetDB, 43900, 33977, 4)
	self:addTradeFlags(RecipeDB, 43900, 1,2,4)
	self:addTradeAcquire(RecipeDB, 43900, 2, 24510)

	-- Cenarion War Hippogryph - 43927
	-- type15.-1rarity4rlevel70source2slevel300method_vendorstype7locs3521classification1price00000000descCenarion Expedition Quartermasterminlevel60react11nameFedryen Swiftspearid17904methodsold-byspellid43927id33999level70
	-- Vendor
	self:AddCompanion(PetDB, 43927, 33999, 4)
	self:addTradeFlags(RecipeDB, 43927, 1,2,4)
	self:addTradeAcquire(RecipeDB, 43927, 2, 17904)

	-- Merciless Nether Drake - 44744
	-- type15.-1rarity4rlevel70slevel300method_redemptionUnknownmethodredemptionspellid44744id34092level70
	-- Redemption
	self:AddCompanion(PetDB, 44744, 34092, 4)
	-- No filter flags
	-- No acquire information

	-- Swift White Hawkstrider - 46628
	-- type15.-1rarity4rlevel60slevel150methoddropped-byspellid46628method_dropstype7locs4095classification1descLord of the Blood Elvesdisp22906minlevel72react33lootCount4nameKael'thas SunstridertotalLootCount6321id24664id35513level60
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 46628, 35513, 4)
	self:addTradeFlags(RecipeDB, 46628, 5)
	self:addTradeAcquire(RecipeDB, 46628, 3, 24664)

	-- Magic Broom - 47977
	-- type15.-1rarity3rlevel30slevel75speed0.5methodspellid47977id37011level1
	self:AddCompanion(PetDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 48025
	-- type15.-1rarity4rlevel60slevel75methodspellid48025id37012level60
	self:AddCompanion(PetDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- type15.-1rarity4rlevel60source8slevel150method_vendorstype7locs2918price0002056030205593020558300000descMount Vendorminlevel55react11nameLieutenant Karterid12783methodsold-byspellid48027id35906level60
	-- Vendor
	self:AddCompanion(PetDB, 48027, 35906, 4)
	self:addTradeFlags(RecipeDB, 48027, 1,2,4)
	self:addTradeAcquire(RecipeDB, 48027, 2, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1rarity4rlevel70slevel300methodspellid49193id37676level70
	self:AddCompanion(PetDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 51412
	-- type15.-1rarity4rlevel60slevel150methodspellid51412id38576level60
	self:AddCompanion(PetDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

end
