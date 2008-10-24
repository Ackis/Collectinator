--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

144 found from data mining.
0 ignored.
0 WotLK ignored.

************************************************************************

$Date$
$Rev$

************************************************************************

Format:

	self:AddCompanion(MountDB, SpellID, Item ID, Rarity)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:MakeMountTable(MountDB)

	-- Brown Horse Bridle - 458
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs15nameGregor MacVinceid4885price10000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price10000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460price10000000descHorse Breederspellid458source2method_dropstype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749descStable Masterrarity3level30methoddropped-by,sold-byrlevel30id5656slevel75
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 458, 5656, 3)
	self:AddCompanionFlags(MountDB, 458, 1,3,15)
	self:AddCompanionAcquire(MountDB, 458, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Black Stallion Bridle - 470
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel25locs11nameUnger Statforthid1460price10000000descHorse Breederspellid470source12method_dropstype7react13minlevel30lootCount3totalLootCount34locs12nameErmaid6749descStable Masterrarity3level30methoddropped-by,sold-byrlevel30id2411slevel75
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 470, 2411, 3)
	self:AddCompanionFlags(MountDB, 470, 1,3,15)
	self:AddCompanionAcquire(MountDB, 470, 4, 6749, 1, 1460)

	-- Pinto Bridle - 472
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs15nameGregor MacVinceid4885price10000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price10000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460price10000000descHorse Breederspellid472source2method_dropstype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749descStable Masterrarity3level30methoddropped-by,sold-byrlevel30id2414slevel75
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 472, 2414, 3)
	self:AddCompanionFlags(MountDB, 472, 1,3,15)
	self:AddCompanionAcquire(MountDB, 472, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Timber Wolf - 580
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362price10000000descKennel Masterspellid580source2rarity3level30methodsold-byrlevel30id1132slevel75
	-- Vendor
	self:AddCompanion(MountDB, 580, 1132, 3)
	self:AddCompanionFlags(MountDB, 580, 2,3)
	self:AddCompanionAcquire(MountDB, 580, 1, 3362)

	-- Chestnut Mare Bridle - 6648
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs15nameGregor MacVinceid4885price10000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price10000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460price10000000descHorse Breederspellid6648source12method_dropstype7react13minlevel30lootCount3totalLootCount34locs12nameErmaid6749descStable Masterrarity3level30methoddropped-by,sold-byrlevel30id5655slevel75
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 6648, 5655, 3)
	self:AddCompanionFlags(MountDB, 6648, 1,3,15)
	self:AddCompanionAcquire(MountDB, 6648, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Dire Wolf - 6653
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362price10000000descKennel Masterspellid6653source2rarity3level30method_queststype0coin8side4level73category52597nameJoining the Battlechoiceitems29221113332115290156651id1methodsold-by,rewardfromrlevel30id5665slevel75
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 6653, 5665, 3)
	self:AddCompanionFlags(MountDB, 6653, 2,3,4)
	self:AddCompanionAcquire(MountDB, 6653, 1, 3362, 2, 1)

	-- Horn of the Brown Wolf - 6654
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362price10000000descKennel Masterspellid6654source2rarity3level30methodsold-byrlevel30id5668slevel75
	-- Vendor
	self:AddCompanion(MountDB, 6654, 5668, 3)
	self:AddCompanionFlags(MountDB, 6654, 2,3)
	self:AddCompanionAcquire(MountDB, 6654, 1, 3362)

	-- Gray Ram - 6777
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel10locs1nameVeron Amberstillid1261price10000000descRam Breederspellid6777source2rarity3level30methodsold-byrlevel30id5864slevel75
	-- Vendor
	self:AddCompanion(MountDB, 6777, 5864, 3)
	self:AddCompanionFlags(MountDB, 6777, 1,3)
	self:AddCompanionAcquire(MountDB, 6777, 1, 1261)

	-- White Ram - 6898
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel10locs1nameVeron Amberstillid1261price10000000descRam Breederspellid6898source2rarity3level30methodsold-byrlevel30id5873slevel75
	-- Vendor
	self:AddCompanion(MountDB, 6898, 5873, 3)
	self:AddCompanionFlags(MountDB, 6898, 1,3)
	self:AddCompanionAcquire(MountDB, 6898, 1, 1261)

	-- Brown Ram - 6899
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel10locs1nameVeron Amberstillid1261price10000000descRam Breederspellid6899source2rarity3level30methodsold-byrlevel30id5872slevel75
	-- Vendor
	self:AddCompanion(MountDB, 6899, 5872, 3)
	self:AddCompanionFlags(MountDB, 6899, 1,3)
	self:AddCompanionAcquire(MountDB, 6899, 1, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs1657nameLelanaiid4730price10000000descSaber Handlerspellid8394source2rarity3level30methodsold-byrlevel30id8631slevel75
	-- Vendor
	self:AddCompanion(MountDB, 8394, 8631, 3)
	self:AddCompanionFlags(MountDB, 8394, 1,3)
	self:AddCompanionAcquire(MountDB, 8394, 1, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs14nameZjolnirid7952price10000000descRaptor Handlerspellid8395source2rarity3level30method_queststype0coin8side4level73category52597nameJoining the Battlechoiceitems29221113332115290156651id1methodsold-by,rewardfromrlevel30id8588slevel75
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 8395, 8588, 3)
	self:AddCompanionFlags(MountDB, 8395, 2,3,4)
	self:AddCompanionAcquire(MountDB, 8395, 1, 7952, 2, 1)

	-- Reins of the Spotted Frostsaber - 10789
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs1657nameLelanaiid4730price10000000descSaber Handlerspellid10789source2rarity3level30methodsold-byrlevel30id8632slevel75
	-- Vendor
	self:AddCompanion(MountDB, 10789, 8632, 3)
	self:AddCompanionFlags(MountDB, 10789, 1,3)
	self:AddCompanionAcquire(MountDB, 10789, 1, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs1657nameLelanaiid4730price10000000descSaber Handlerspellid10793source2rarity3level30methodsold-byrlevel30id8629slevel75
	-- Vendor
	self:AddCompanion(MountDB, 10793, 8629, 3)
	self:AddCompanionFlags(MountDB, 10793, 1,3)
	self:AddCompanionAcquire(MountDB, 10793, 1, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1item_bindsBOUspellid10795rarity1level40methodrlevel40id8589slevel75
	self:AddCompanion(MountDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs14nameZjolnirid7952price10000000descRaptor Handlerspellid10796source2rarity3level30methodsold-byrlevel30id8591slevel75
	-- Vendor
	self:AddCompanion(MountDB, 10796, 8591, 3)
	self:AddCompanionFlags(MountDB, 10796, 2,3)
	self:AddCompanionAcquire(MountDB, 10796, 1, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs14nameZjolnirid7952price10000000descRaptor Handlerspellid10799source2rarity3level30methodsold-byrlevel30id8592slevel75
	-- Vendor
	self:AddCompanion(MountDB, 10799, 8592, 3)
	self:AddCompanionFlags(MountDB, 10799, 2,3)
	self:AddCompanionAcquire(MountDB, 10799, 1, 7952)

	-- Red Mechanostrider - 10873
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price10000000descMechanostrider Merchantspellid10873source2rarity3level30methodsold-byrlevel30id8563slevel75
	-- Vendor
	self:AddCompanion(MountDB, 10873, 8563, 3)
	self:AddCompanionFlags(MountDB, 10873, 1,3)
	self:AddCompanionAcquire(MountDB, 10873, 1, 7955)

	-- Blue Mechanostrider - 10969
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price10000000descMechanostrider Merchantspellid10969source2rarity3level30methodsold-byrlevel30id8595slevel75
	-- Vendor
	self:AddCompanion(MountDB, 10969, 8595, 3)
	self:AddCompanionFlags(MountDB, 10969, 1,3)
	self:AddCompanionAcquire(MountDB, 10969, 1, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1item_bindsBOPspellid15779rarity4level60methodrlevel60id13326slevel150
	self:AddCompanion(MountDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1item_bindsBOPspellid16055rarity4level60methodrlevel60id12303slevel150
	self:AddCompanion(MountDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 16056
	-- type15.-1item_bindsBOPspellid16056rarity4level60methodrlevel60id12302slevel150
	self:AddCompanion(MountDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1item_bindsBOPspellid16080rarity4level60methodrlevel60id12330slevel150
	self:AddCompanion(MountDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1item_bindsBOPspellid16081rarity4level60methodrlevel60id12351slevel150
	self:AddCompanion(MountDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1item_bindsBOPspellid16082source1method_dropstype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749descStable Masterrarity4level60methoddropped-byrlevel60id12354slevel150
	-- Mob Drop
	self:AddCompanion(MountDB, 16082, 12354, 4)
	self:AddCompanionFlags(MountDB, 16082, 15)
	self:AddCompanionAcquire(MountDB, 16082, 4, 6749)

	-- White Stallion Bridle - 16083
	-- type15.-1item_bindsBOPspellid16083source1method_dropstype7react13minlevel30lootCount1totalLootCount34locs12nameErmaid6749descStable Masterrarity4level60methoddropped-byrlevel60id12353slevel150
	-- Mob Drop
	self:AddCompanion(MountDB, 16083, 12353, 4)
	self:AddCompanionFlags(MountDB, 16083, 15)
	self:AddCompanionAcquire(MountDB, 16083, 4, 6749)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1item_bindsBOPspellid16084rarity4level60methodrlevel60id8586slevel150
	self:AddCompanion(MountDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- type15.-1item_bindsBOPmethod_vendorstype7react23minlevel62locs618nameRivern Frostwindid10618price100000000descWintersaber Trainerspellid17229source2rarity4level60methodsold-byrlevel60id13086slevel75
	-- Vendor
	self:AddCompanion(MountDB, 17229, 13086, 4)
	self:AddCompanionFlags(MountDB, 17229, 1,3)
	self:AddCompanionAcquire(MountDB, 17229, 1, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1item_bindsBOPspellid17450rarity4level60methodrlevel60id13317slevel150
	self:AddCompanion(MountDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price10000000descMechanostrider Merchantspellid17453source2rarity3level30methodsold-byrlevel30id13321slevel75
	-- Vendor
	self:AddCompanion(MountDB, 17453, 13321, 3)
	self:AddCompanionFlags(MountDB, 17453, 1,3)
	self:AddCompanionAcquire(MountDB, 17453, 1, 7955)

	-- Unpainted Mechanostrider - 17454
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price10000000descMechanostrider Merchantspellid17454source2rarity3level30methodsold-byrlevel30id13322slevel75
	-- Vendor
	self:AddCompanion(MountDB, 17454, 13322, 3)
	self:AddCompanionFlags(MountDB, 17454, 1,3)
	self:AddCompanionAcquire(MountDB, 17454, 1, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1item_bindsBOPspellid17459rarity4level60methodrlevel60id13327slevel150
	self:AddCompanion(MountDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1item_bindsBOPspellid17460rarity4level60methodrlevel60id13329slevel150
	self:AddCompanion(MountDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1item_bindsBOPspellid17461rarity4level60methodrlevel60id13328slevel150
	self:AddCompanion(MountDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel30locs85nameZachariah Postid4731price10000000descUndead Horse Merchantspellid17462source2rarity3level30methodsold-byrlevel30id13331slevel75
	-- Vendor
	self:AddCompanion(MountDB, 17462, 13331, 3)
	self:AddCompanionFlags(MountDB, 17462, 2,3)
	self:AddCompanionAcquire(MountDB, 17462, 1, 4731)

	-- Blue Skeletal Horse - 17463
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel30locs85nameZachariah Postid4731price10000000descUndead Horse Merchantspellid17463source2rarity3level30method_queststype0coin8side4level73category52597nameJoining the Battlechoiceitems29221113332115290156651id1methodsold-by,rewardfromrlevel30id13332slevel75
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 17463, 13332, 3)
	self:AddCompanionFlags(MountDB, 17463, 2,3,4)
	self:AddCompanionAcquire(MountDB, 17463, 1, 4731, 2, 1)

	-- Brown Skeletal Horse - 17464
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel30locs85nameZachariah Postid4731price10000000descUndead Horse Merchantspellid17464source2rarity3level30methodsold-byrlevel30id13333slevel75
	-- Vendor
	self:AddCompanion(MountDB, 17464, 13333, 3)
	self:AddCompanionFlags(MountDB, 17464, 2,3)
	self:AddCompanionAcquire(MountDB, 17464, 1, 4731)

	-- Green Skeletal Warhorse - 17465
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel30locs85nameZachariah Postid4731price100000000descUndead Horse Merchantspellid17465source2rarity4level60methodsold-byrlevel60id13334slevel150
	-- Vendor
	self:AddCompanion(MountDB, 17465, 13334, 4)
	self:AddCompanionFlags(MountDB, 17465, 2,3)
	self:AddCompanionAcquire(MountDB, 17465, 1, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1item_bindsBOPspellid17481source1method_dropstype6disp10729react33minlevel62lootCount1totalLootCount12362locs2017nameBaron Rivendareclassification1id10440rarity4level60methoddropped-byrlevel60id13335slevel150
	-- Instance: 2017 - type1minlevel58maxlevel60territory1category3nameStratholmeid2017
	-- Mob Drop
	self:AddCompanion(MountDB, 17481, 13335, 4)
	self:AddCompanionFlags(MountDB, 17481, 6)
	self:AddCompanionAcquire(MountDB, 17481, 4, 10440)

	-- Gray Kodo - 18989
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs215nameHarb Clawhoofid3685price10000000descKodo Mountsspellid18989source2rarity3level30methodsold-byrlevel30id15277slevel75
	-- Vendor
	self:AddCompanion(MountDB, 18989, 15277, 3)
	self:AddCompanionFlags(MountDB, 18989, 2,3)
	self:AddCompanionAcquire(MountDB, 18989, 1, 3685)

	-- Brown Kodo - 18990
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs215nameHarb Clawhoofid3685price10000000descKodo Mountsspellid18990source2rarity3level30method_queststype0coin8side4level73category52597nameJoining the Battlechoiceitems29221113332115290156651id1methodsold-by,rewardfromrlevel30id15290slevel75
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 18990, 15290, 3)
	self:AddCompanionFlags(MountDB, 18990, 2,3,4)
	self:AddCompanionAcquire(MountDB, 18990, 1, 3685, 2, 1)

	-- Green Kodo - 18991
	-- type15.-1item_bindsBOPspellid18991rarity4level60methodrlevel60id15292slevel150
	self:AddCompanion(MountDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1item_bindsBOPspellid18992rarity4level60methodrlevel60id15293slevel150
	self:AddCompanion(MountDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1item_bindsBOPspellid22717source8rarity4level55methodrlevel55id18241slevel75
	self:AddCompanion(MountDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1item_bindsBOPspellid22718source8rarity4level55methodrlevel55id18247slevel75
	self:AddCompanion(MountDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 22719
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel55locs2918nameLieutenant Karterid12783price0002056030205593020558300000descMount Vendorspellid22719source8rarity4level60methodsold-byrlevel60id29465slevel150
	-- Vendor
	self:AddCompanion(MountDB, 22719, 29465, 4)
	self:AddCompanionFlags(MountDB, 22719, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22719, 1, 12783)

	-- Black War Ram - 22720
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel55locs2918nameLieutenant Karterid12783price0002056030205593020558300000descMount Vendorspellid22720source8rarity4level60methodsold-byrlevel60id29467slevel150
	-- Vendor
	self:AddCompanion(MountDB, 22720, 29467, 4)
	self:AddCompanionFlags(MountDB, 22720, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22720, 1, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- type15.-1item_bindsBOPmethod_vendorstype7react21minlevel55locs2917nameRaider Borkid12796price0002056030205593020558300000descMount Quartermasterspellid22721source8rarity4level60methodsold-byrlevel60id29472slevel150
	-- Vendor
	self:AddCompanion(MountDB, 22721, 29472, 4)
	self:AddCompanionFlags(MountDB, 22721, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22721, 1, 12796)

	-- Red Skeletal Warhorse - 22722
	-- type15.-1item_bindsBOPmethod_vendorstype7react21minlevel55locs2917nameRaider Borkid12796price0002056030205593020558300000descMount Quartermasterspellid22722source8rarity4level60methodsold-byrlevel60id29470slevel150
	-- Vendor
	self:AddCompanion(MountDB, 22722, 29470, 4)
	self:AddCompanionFlags(MountDB, 22722, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22722, 1, 12796)

	-- Reins of the Black War Tiger - 22723
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel70locs35243525148-1nameGeneral Goods Vendorid26304price000205603020559302055830type7react11minlevel55locs2918nameLieutenant Karterid12783price0002056030205593020558300000descMount Vendorspellid22723source28rarity4level60methodsold-byrlevel60id29471slevel150
	-- Vendor
	self:AddCompanion(MountDB, 22723, 29471, 4)
	self:AddCompanionFlags(MountDB, 22723, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22723, 1, 12783, 1, 26304)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1item_bindsBOPspellid22724source8rarity4level55methodrlevel55id18245slevel75
	self:AddCompanion(MountDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs1657nameLelanaiid4730price100000000descSaber Handlerspellid23219source2rarity4level60methodsold-byrlevel60id18767slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23219, 18767, 4)
	self:AddCompanionFlags(MountDB, 23219, 1,3)
	self:AddCompanionAcquire(MountDB, 23219, 1, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs1657nameLelanaiid4730price100000000descSaber Handlerspellid23221source2rarity4level60methodsold-byrlevel60id18766slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23221, 18766, 4)
	self:AddCompanionFlags(MountDB, 23221, 1,3)
	self:AddCompanionAcquire(MountDB, 23221, 1, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price100000000descMechanostrider Merchantspellid23222source2rarity4level60methodsold-byrlevel60id18774slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23222, 18774, 4)
	self:AddCompanionFlags(MountDB, 23222, 1,3)
	self:AddCompanionAcquire(MountDB, 23222, 1, 7955)

	-- Swift White Mechanostrider - 23223
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price100000000descMechanostrider Merchantspellid23223source2rarity4level60methodsold-byrlevel60id18773slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23223, 18773, 4)
	self:AddCompanionFlags(MountDB, 23223, 1,3)
	self:AddCompanionAcquire(MountDB, 23223, 1, 7955)

	-- Swift Green Mechanostrider - 23225
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel50locs1nameMilli Featherwhistleid7955price100000000descMechanostrider Merchantspellid23225source2rarity4level60methodsold-byrlevel60id18772slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23225, 18772, 4)
	self:AddCompanionFlags(MountDB, 23225, 1,3)
	self:AddCompanionAcquire(MountDB, 23225, 1, 7955)

	-- Swift Palomino - 23227
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs15nameGregor MacVinceid4885price100000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price100000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price100000000descHorse Breederspellid23227source2method_dropstype7react13minlevel30lootCount1totalLootCount34locs12nameErmaid6749descStable Masterrarity4level60method_queststype0coin0level1category00nameWhite Stallion Exchangechoiceitems187771187761187781id7677methoddropped-by,sold-by,rewardfromrlevel60id18776slevel150
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23227, 18776, 4)
	self:AddCompanionFlags(MountDB, 23227, 1,3,4,15)
	self:AddCompanionAcquire(MountDB, 23227, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift White Steed - 23228
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs15nameGregor MacVinceid4885price100000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price100000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price100000000descHorse Breederspellid23228source2method_dropstype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749descStable Masterrarity4level60method_queststype0coin0level1category00nameWhite Stallion Exchangechoiceitems187771187761187781id7677methoddropped-by,sold-by,rewardfromrlevel60id18778slevel150
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23228, 18778, 4)
	self:AddCompanionFlags(MountDB, 23228, 1,3,4,15)
	self:AddCompanionAcquire(MountDB, 23228, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Steed - 23229
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs15nameGregor MacVinceid4885price100000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price100000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price100000000descHorse Breederspellid23229source2method_dropstype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749descStable Masterrarity4level60method_queststype0coin0level1category00nameWhite Stallion Exchangechoiceitems187771187761187781id7677methoddropped-by,sold-by,rewardfromrlevel60id18777slevel150
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23229, 18777, 4)
	self:AddCompanionFlags(MountDB, 23229, 1,3,4,15)
	self:AddCompanionAcquire(MountDB, 23229, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Ram - 23238
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel10locs1nameVeron Amberstillid1261price100000000descRam Breederspellid23238source2rarity4level60methodsold-byrlevel60id18786slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23238, 18786, 4)
	self:AddCompanionFlags(MountDB, 23238, 1,3)
	self:AddCompanionAcquire(MountDB, 23238, 1, 1261)

	-- Swift Gray Ram - 23239
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel10locs1nameVeron Amberstillid1261price100000000descRam Breederspellid23239source2rarity4level60methodsold-byrlevel60id18787slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23239, 18787, 4)
	self:AddCompanionFlags(MountDB, 23239, 1,3)
	self:AddCompanionAcquire(MountDB, 23239, 1, 1261)

	-- Swift White Ram - 23240
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel10locs1nameVeron Amberstillid1261price100000000descRam Breederspellid23240source2rarity4level60methodsold-byrlevel60id18785slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23240, 18785, 4)
	self:AddCompanionFlags(MountDB, 23240, 1,3)
	self:AddCompanionAcquire(MountDB, 23240, 1, 1261)

	-- Swift Blue Raptor - 23241
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs14nameZjolnirid7952price100000000descRaptor Handlerspellid23241source2rarity4level60methodsold-byrlevel60id18788slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23241, 18788, 4)
	self:AddCompanionFlags(MountDB, 23241, 2,3)
	self:AddCompanionAcquire(MountDB, 23241, 1, 7952)

	-- Swift Olive Raptor - 23242
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs14nameZjolnirid7952price100000000descRaptor Handlerspellid23242source2rarity4level60methodsold-byrlevel60id18789slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23242, 18789, 4)
	self:AddCompanionFlags(MountDB, 23242, 2,3)
	self:AddCompanionAcquire(MountDB, 23242, 1, 7952)

	-- Swift Orange Raptor - 23243
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs14nameZjolnirid7952price100000000descRaptor Handlerspellid23243source2rarity4level60methodsold-byrlevel60id18790slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23243, 18790, 4)
	self:AddCompanionFlags(MountDB, 23243, 2,3)
	self:AddCompanionAcquire(MountDB, 23243, 1, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel30locs85nameZachariah Postid4731price100000000descUndead Horse Merchantspellid23246source2rarity4level60methodsold-byrlevel60id18791slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23246, 18791, 4)
	self:AddCompanionFlags(MountDB, 23246, 2,3)
	self:AddCompanionAcquire(MountDB, 23246, 1, 4731)

	-- Great White Kodo - 23247
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs215nameHarb Clawhoofid3685price100000000descKodo Mountsspellid23247source2rarity4level60methodsold-byrlevel60id18793slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23247, 18793, 4)
	self:AddCompanionFlags(MountDB, 23247, 2,3)
	self:AddCompanionAcquire(MountDB, 23247, 1, 3685)

	-- Great Gray Kodo - 23248
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs215nameHarb Clawhoofid3685price100000000descKodo Mountsspellid23248source2rarity4level60methodsold-byrlevel60id18795slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23248, 18795, 4)
	self:AddCompanionFlags(MountDB, 23248, 2,3)
	self:AddCompanionAcquire(MountDB, 23248, 1, 3685)

	-- Great Brown Kodo - 23249
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs215nameHarb Clawhoofid3685price100000000descKodo Mountsspellid23249source2rarity4level60methodsold-byrlevel60id18794slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23249, 18794, 4)
	self:AddCompanionFlags(MountDB, 23249, 2,3)
	self:AddCompanionAcquire(MountDB, 23249, 1, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362price100000000descKennel Masterspellid23250source2rarity4level60methodsold-byrlevel60id18796slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23250, 18796, 4)
	self:AddCompanionFlags(MountDB, 23250, 2,3)
	self:AddCompanionAcquire(MountDB, 23250, 1, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362price100000000descKennel Masterspellid23251source2rarity4level60methodsold-byrlevel60id18797slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23251, 18797, 4)
	self:AddCompanionFlags(MountDB, 23251, 2,3)
	self:AddCompanionAcquire(MountDB, 23251, 1, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362price100000000descKennel Masterspellid23252source2rarity4level60methodsold-byrlevel60id18798slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23252, 18798, 4)
	self:AddCompanionFlags(MountDB, 23252, 2,3)
	self:AddCompanionAcquire(MountDB, 23252, 1, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel35locs1657nameLelanaiid4730price100000000descSaber Handlerspellid23338source2rarity4level60methodsold-byrlevel60id18902slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23338, 18902, 4)
	self:AddCompanionFlags(MountDB, 23338, 1,3)
	self:AddCompanionAcquire(MountDB, 23338, 1, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel58maxlevel68locs2597nameGrunnda Wolfheartclassification1id13218price000205605000000000descFrostwolf Supply Officertype7react31minlevel58locs36267nameJekyll Flandringclassification1id13219price0002056050descFrostwolf Supply Officerspellid23509source8rarity4level60methodsold-byrlevel60id19029slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23509, 19029, 4)
	self:AddCompanionFlags(MountDB, 23509, 2,3)
	self:AddCompanionAcquire(MountDB, 23509, 1, 13218, 1, 13219)

	-- Stormpike Battle Charger - 23510
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel68locs2597nameGaelden Hammersmithclassification1id13216price0002056050descStormpike Supply Officertype7react13minlevel58locs36nameThanthaldis Snowgleamclassification1id13217price000205605000000000descStormpike Supply Officerspellid23510source8rarity4level60methodsold-byrlevel60id19030slevel150
	-- Vendor
	self:AddCompanion(MountDB, 23510, 19030, 4)
	self:AddCompanionFlags(MountDB, 23510, 1,3)
	self:AddCompanionAcquire(MountDB, 23510, 1, 13216, 1, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1item_bindsBOPspellid24242source1method_dropstype7react33lootCount35totalLootCount8107locs1977nameBloodlord Mandokirclassification3id11382rarity4level60methoddropped-byrlevel60id19872slevel150
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(MountDB, 24242, 19872, 4)
	self:AddCompanionFlags(MountDB, 24242, 7)
	self:AddCompanionAcquire(MountDB, 24242, 4, 11382)

	-- Swift Zulian Tiger - 24252
	-- type15.-1item_bindsBOPspellid24252source1method_dropstype7react33lootCount9totalLootCount3676locs1977nameHigh Priest Thekalclassification3id14509rarity4level60methoddropped-byrlevel60id19902slevel150
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(MountDB, 24252, 19902, 4)
	self:AddCompanionFlags(MountDB, 24252, 7)
	self:AddCompanionAcquire(MountDB, 24252, 4, 14509)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1item_bindsBOPspellid26656rarity5level60methodrlevel60id21176slevel150
	self:AddCompanion(MountDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 32235
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price100000000descGryphon Keeperspellid32235source2rarity3level70methodsold-byrlevel70id25470slevel225
	-- Vendor
	self:AddCompanion(MountDB, 32235, 25470, 3)
	self:AddCompanionFlags(MountDB, 32235, 1,3)
	self:AddCompanionAcquire(MountDB, 32235, 1, 20510)

	-- Ebon Gryphon - 32239
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price100000000descGryphon Keeperspellid32239source2rarity3level70methodsold-byrlevel70id25471slevel225
	-- Vendor
	self:AddCompanion(MountDB, 32239, 25471, 3)
	self:AddCompanionFlags(MountDB, 32239, 1,3)
	self:AddCompanionAcquire(MountDB, 32239, 1, 20510)

	-- Snowy Gryphon - 32240
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price100000000descGryphon Keeperspellid32240source2rarity3level70methodsold-byrlevel70id25472slevel225
	-- Vendor
	self:AddCompanion(MountDB, 32240, 25472, 3)
	self:AddCompanionFlags(MountDB, 32240, 1,3)
	self:AddCompanionAcquire(MountDB, 32240, 1, 20510)

	-- Swift Blue Gryphon - 32242
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price200000000descGryphon Keeperspellid32242source2rarity4level70methodsold-byrlevel70id25473slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32242, 25473, 4)
	self:AddCompanionFlags(MountDB, 32242, 1,3)
	self:AddCompanionAcquire(MountDB, 32242, 1, 20510)

	-- Tawny Windrider - 32243
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price100000000descWindrider Keeperspellid32243source2rarity3level70methodsold-byrlevel70id25474slevel225
	-- Vendor
	self:AddCompanion(MountDB, 32243, 25474, 3)
	self:AddCompanionFlags(MountDB, 32243, 2,3)
	self:AddCompanionAcquire(MountDB, 32243, 1, 20494)

	-- Blue Windrider - 32244
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price100000000descWindrider Keeperspellid32244source2rarity3level70methodsold-byrlevel70id25475slevel225
	-- Vendor
	self:AddCompanion(MountDB, 32244, 25475, 3)
	self:AddCompanionFlags(MountDB, 32244, 2,3)
	self:AddCompanionAcquire(MountDB, 32244, 1, 20494)

	-- Green Windrider - 32245
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price100000000descWindrider Keeperspellid32245source2rarity3level70methodsold-byrlevel70id25476slevel225
	-- Vendor
	self:AddCompanion(MountDB, 32245, 25476, 3)
	self:AddCompanionFlags(MountDB, 32245, 2,3)
	self:AddCompanionAcquire(MountDB, 32245, 1, 20494)

	-- Swift Red Windrider - 32246
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price200000000descWindrider Keeperspellid32246source2rarity4level70methodsold-byrlevel70id25477slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32246, 25477, 4)
	self:AddCompanionFlags(MountDB, 32246, 2,3)
	self:AddCompanionAcquire(MountDB, 32246, 1, 20494)

	-- Swift Red Gryphon - 32289
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price200000000descGryphon Keeperspellid32289source2rarity4level70methodsold-byrlevel70id25527slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32289, 25527, 4)
	self:AddCompanionFlags(MountDB, 32289, 1,3)
	self:AddCompanionAcquire(MountDB, 32289, 1, 20510)

	-- Swift Green Gryphon - 32290
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price200000000descGryphon Keeperspellid32290source2rarity4level70methodsold-byrlevel70id25528slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32290, 25528, 4)
	self:AddCompanionFlags(MountDB, 32290, 1,3)
	self:AddCompanionAcquire(MountDB, 32290, 1, 20510)

	-- Swift Purple Gryphon - 32292
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3520nameBrunn Flamebeardid20510price200000000descGryphon Keeperspellid32292source2rarity4level70methodsold-byrlevel70id25529slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32292, 25529, 4)
	self:AddCompanionFlags(MountDB, 32292, 1,3)
	self:AddCompanionAcquire(MountDB, 32292, 1, 20510)

	-- Swift Green Windrider - 32295
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price200000000descWindrider Keeperspellid32295source2rarity4level70methodsold-byrlevel70id25531slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32295, 25531, 4)
	self:AddCompanionFlags(MountDB, 32295, 2,3)
	self:AddCompanionAcquire(MountDB, 32295, 1, 20494)

	-- Swift Yellow Windrider - 32296
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price200000000descWindrider Keeperspellid32296source2rarity4level70methodsold-byrlevel70id25532slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32296, 25532, 4)
	self:AddCompanionFlags(MountDB, 32296, 2,3)
	self:AddCompanionAcquire(MountDB, 32296, 1, 20494)

	-- Swift Purple Windrider - 32297
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel70locs3520nameDama Wildmaneid20494price200000000descWindrider Keeperspellid32297source2rarity4level70methodsold-byrlevel70id25533slevel300
	-- Vendor
	self:AddCompanion(MountDB, 32297, 25533, 4)
	self:AddCompanionFlags(MountDB, 32297, 2,3)
	self:AddCompanionAcquire(MountDB, 32297, 1, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price100000000descHawkstrider Breederspellid33660source2rarity4level60methodsold-byrlevel60id28936slevel150
	-- Vendor
	self:AddCompanion(MountDB, 33660, 28936, 4)
	self:AddCompanionFlags(MountDB, 33660, 2,3)
	self:AddCompanionAcquire(MountDB, 33660, 1, 16264)

	-- Brown Elekk - 34406
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584price10000000descElekk Breederspellid34406source2rarity3level30methodsold-byrlevel30id28481slevel75
	-- Vendor
	self:AddCompanion(MountDB, 34406, 28481, 3)
	self:AddCompanionFlags(MountDB, 34406, 1,3)
	self:AddCompanionAcquire(MountDB, 34406, 1, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3518nameAldraanclassification1id21485price000260451002604420000000descBlade Merchanttype7react31minlevel70locs3518nameCoreielclassification1id21474price000260451002604420000000descBlade Merchantspellid34790source2rarity4level60methodsold-byrlevel60id29228slevel150
	-- Vendor
	self:AddCompanion(MountDB, 34790, 29228, 4)
	self:AddCompanionFlags(MountDB, 34790, 1,2,3)
	self:AddCompanionAcquire(MountDB, 34790, 1, 21474, 1, 21485)

	-- Red Hawkstrider - 34795
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price10000000descHawkstrider Breederspellid34795source2rarity3level30methodsold-byrlevel30id28927slevel75
	-- Vendor
	self:AddCompanion(MountDB, 34795, 28927, 3)
	self:AddCompanionFlags(MountDB, 34795, 2,3)
	self:AddCompanionAcquire(MountDB, 34795, 1, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price100000000descMag'har Quartermasterspellid34896source2rarity4level60methodsold-byrlevel60id29102slevel150
	-- Vendor
	self:AddCompanion(MountDB, 34896, 29102, 4)
	self:AddCompanionFlags(MountDB, 34896, 2,3)
	self:AddCompanionAcquire(MountDB, 34896, 1, 20241)

	-- Reins of the White War Talbuk - 34897
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price100000000descMag'har Quartermasterspellid34897source2rarity4level60methodsold-byrlevel60id29103slevel150
	-- Vendor
	self:AddCompanion(MountDB, 34897, 29103, 4)
	self:AddCompanionFlags(MountDB, 34897, 2,3)
	self:AddCompanionAcquire(MountDB, 34897, 1, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel65locs3518nameTrader Narasuid20240price100000000descKurenai Quartermasterspellid34898source2rarity4level60methodsold-byrlevel60id29229slevel150
	-- Vendor
	self:AddCompanion(MountDB, 34898, 29229, 4)
	self:AddCompanionFlags(MountDB, 34898, 1,3)
	self:AddCompanionAcquire(MountDB, 34898, 1, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price100000000descMag'har Quartermasterspellid34899source2rarity4level60methodsold-byrlevel60id29105slevel150
	-- Vendor
	self:AddCompanion(MountDB, 34899, 29105, 4)
	self:AddCompanionFlags(MountDB, 34899, 2,3)
	self:AddCompanionAcquire(MountDB, 34899, 1, 20241)

	-- Purple Hawkstrider - 35018
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price10000000descHawkstrider Breederspellid35018source2rarity3level30methodsold-byrlevel30id29222slevel75
	-- Vendor
	self:AddCompanion(MountDB, 35018, 29222, 3)
	self:AddCompanionFlags(MountDB, 35018, 2,3)
	self:AddCompanionAcquire(MountDB, 35018, 1, 16264)

	-- Blue Hawkstrider - 35020
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price10000000descHawkstrider Breederspellid35020source2rarity3level30methodsold-byrlevel30id29220slevel75
	-- Vendor
	self:AddCompanion(MountDB, 35020, 29220, 3)
	self:AddCompanionFlags(MountDB, 35020, 2,3)
	self:AddCompanionAcquire(MountDB, 35020, 1, 16264)

	-- Black Hawkstrider - 35022
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price10000000descHawkstrider Breederspellid35022source2rarity3level30method_queststype0coin8side4level73category52597nameJoining the Battlechoiceitems29221113332115290156651id1methodsold-by,rewardfromrlevel30id29221slevel75
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 35022, 29221, 3)
	self:AddCompanionFlags(MountDB, 35022, 2,3,4)
	self:AddCompanionAcquire(MountDB, 35022, 1, 16264, 2, 1)

	-- Swift Green Hawkstrider - 35025
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price100000000descHawkstrider Breederspellid35025source2rarity4level60methodsold-byrlevel60id29223slevel150
	-- Vendor
	self:AddCompanion(MountDB, 35025, 29223, 4)
	self:AddCompanionFlags(MountDB, 35025, 2,3)
	self:AddCompanionAcquire(MountDB, 35025, 1, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel15locs3430nameWinaestraid16264price100000000descHawkstrider Breederspellid35027source2rarity4level60methodsold-byrlevel60id29224slevel150
	-- Vendor
	self:AddCompanion(MountDB, 35027, 29224, 4)
	self:AddCompanionFlags(MountDB, 35027, 2,3)
	self:AddCompanionAcquire(MountDB, 35027, 1, 16264)

	-- Swift Warstrider - 35028
	-- type15.-1item_bindsBOPmethod_vendorstype7react21minlevel55locs2917nameRaider Borkid12796price0002056030205593020558300000descMount Quartermasterspellid35028source8rarity4level60methodsold-byrlevel60id34129slevel150
	-- Vendor
	self:AddCompanion(MountDB, 35028, 34129, 4)
	self:AddCompanionFlags(MountDB, 35028, 1,2,3)
	self:AddCompanionAcquire(MountDB, 35028, 1, 12796)

	-- Gray Elekk - 35710
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584price10000000descElekk Breederspellid35710source2rarity3level30methodsold-byrlevel30id29744slevel75
	-- Vendor
	self:AddCompanion(MountDB, 35710, 29744, 3)
	self:AddCompanionFlags(MountDB, 35710, 1,3)
	self:AddCompanionAcquire(MountDB, 35710, 1, 17584)

	-- Purple Elekk - 35711
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584price10000000descElekk Breederspellid35711source2rarity3level30methodsold-byrlevel30id29743slevel75
	-- Vendor
	self:AddCompanion(MountDB, 35711, 29743, 3)
	self:AddCompanionFlags(MountDB, 35711, 1,3)
	self:AddCompanionAcquire(MountDB, 35711, 1, 17584)

	-- Great Green Elekk - 35712
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584price100000000descElekk Breederspellid35712source2rarity4level60methodsold-byrlevel60id29746slevel150
	-- Vendor
	self:AddCompanion(MountDB, 35712, 29746, 4)
	self:AddCompanionFlags(MountDB, 35712, 1,3)
	self:AddCompanionAcquire(MountDB, 35712, 1, 17584)

	-- Great Blue Elekk - 35713
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584price100000000descElekk Breederspellid35713source2rarity4level60methodsold-byrlevel60id29745slevel150
	-- Vendor
	self:AddCompanion(MountDB, 35713, 29745, 4)
	self:AddCompanionFlags(MountDB, 35713, 1,3)
	self:AddCompanionAcquire(MountDB, 35713, 1, 17584)

	-- Great Purple Elekk - 35714
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584price100000000descElekk Breederspellid35714source2rarity4level60methodsold-byrlevel60id29747slevel150
	-- Vendor
	self:AddCompanion(MountDB, 35714, 29747, 4)
	self:AddCompanionFlags(MountDB, 35714, 1,3)
	self:AddCompanionAcquire(MountDB, 35714, 1, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1item_bindsBOPspellid36702source1method_dropstype6disp16416react33lootCount78totalLootCount35478locs3457nameAttumen the Huntsmanclassification3id15550type6disp16040react33lootCount10totalLootCount6529locs3457nameAttumen the Huntsmanclassification3id16152rarity4level70methoddropped-byrlevel70id30480slevel150
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	self:AddCompanion(MountDB, 36702, 30480, 4)
	self:AddCompanionFlags(MountDB, 36702, 7)
	self:AddCompanionAcquire(MountDB, 36702, 4, 15550, 4, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1item_bindsBOPspellid37015rarity4level70methodrlevel70id30609slevel300
	self:AddCompanion(MountDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price70000000descMag'har Quartermasterspellid39315source2rarity4level60methodsold-byrlevel60id31829slevel150
	-- Vendor
	self:AddCompanion(MountDB, 39315, 31829, 4)
	self:AddCompanionFlags(MountDB, 39315, 2,3)
	self:AddCompanionAcquire(MountDB, 39315, 1, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- type15.-1item_bindsBOPmethod_vendorstype7react13minlevel70locs3518nameAldraanclassification1id21485price00026045702604415000000descBlade Merchanttype7react31minlevel70locs3518nameCoreielclassification1id21474price00026045702604415000000descBlade Merchantspellid39316source2rarity4level60methodsold-byrlevel60id28915slevel150
	-- Vendor
	self:AddCompanion(MountDB, 39316, 28915, 4)
	self:AddCompanionFlags(MountDB, 39316, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39316, 1, 21474, 1, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price70000000descMag'har Quartermasterspellid39317source2rarity4level60methodsold-byrlevel60id31831slevel150
	-- Vendor
	self:AddCompanion(MountDB, 39317, 31831, 4)
	self:AddCompanionFlags(MountDB, 39317, 2,3)
	self:AddCompanionAcquire(MountDB, 39317, 1, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price70000000descMag'har Quartermasterspellid39318source2rarity4level60methodsold-byrlevel60id31833slevel150
	-- Vendor
	self:AddCompanion(MountDB, 39318, 31833, 4)
	self:AddCompanionFlags(MountDB, 39318, 2,3)
	self:AddCompanionAcquire(MountDB, 39318, 1, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- type15.-1item_bindsBOPmethod_vendorstype7react31minlevel65locs3518nameProvisioner Naselaid20241price70000000descMag'har Quartermasterspellid39319source2rarity4level60methodsold-byrlevel60id31835slevel150
	-- Vendor
	self:AddCompanion(MountDB, 39319, 31835, 4)
	self:AddCompanionFlags(MountDB, 39319, 2,3)
	self:AddCompanionAcquire(MountDB, 39319, 1, 20241)

	-- Green Riding Nether Ray - 39798
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel70locs3519nameGrellaid23367price00000000descSkyguard Quartermasterspellid39798source2rarity4level70methodsold-byrlevel70id32314slevel300
	-- Vendor
	self:AddCompanion(MountDB, 39798, 32314, 4)
	self:AddCompanionFlags(MountDB, 39798, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39798, 1, 23367)

	-- Red Riding Nether Ray - 39800
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel70locs3519nameGrellaid23367price00000000descSkyguard Quartermasterspellid39800source2rarity4level70methodsold-byrlevel70id32317slevel300
	-- Vendor
	self:AddCompanion(MountDB, 39800, 32317, 4)
	self:AddCompanionFlags(MountDB, 39800, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39800, 1, 23367)

	-- Purple Riding Nether Ray - 39801
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel70locs3519nameGrellaid23367price00000000descSkyguard Quartermasterspellid39801source2rarity4level70methodsold-byrlevel70id32316slevel300
	-- Vendor
	self:AddCompanion(MountDB, 39801, 32316, 4)
	self:AddCompanionFlags(MountDB, 39801, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39801, 1, 23367)

	-- Silver Riding Nether Ray - 39802
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel70locs3519nameGrellaid23367price00000000descSkyguard Quartermasterspellid39802source2rarity4level70methodsold-byrlevel70id32318slevel300
	-- Vendor
	self:AddCompanion(MountDB, 39802, 32318, 4)
	self:AddCompanionFlags(MountDB, 39802, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39802, 1, 23367)

	-- Blue Riding Nether Ray - 39803
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel70locs3519nameGrellaid23367price00000000descSkyguard Quartermasterspellid39803source2rarity4level70methodsold-byrlevel70id32319slevel300
	-- Vendor
	self:AddCompanion(MountDB, 39803, 32319, 4)
	self:AddCompanionFlags(MountDB, 39803, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39803, 1, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1item_bindsBOPspellid40192source1method_dropstype7disp20023react33minlevel73lootCount14totalLootCount3723locs37033845nameKael'thas Sunstriderclassification3id19622descLord of the Blood Elvestype7disp20023react33minlevel72lootCount1totalLootCount9689locs409537033845nameKael'thas Sunstriderclassification3id23054descLord of the Blood Elvesrarity4level70methoddropped-byrlevel70id32458slevel300
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1limit5minlevel70maxlevel70territory1category3nameMagisters' Terraceid4095expansion1
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	self:AddCompanion(MountDB, 40192, 32458, 4)
	self:AddCompanionFlags(MountDB, 40192, 6,7,15)
	self:AddCompanionAcquire(MountDB, 40192, 4, 19622, 4, 23054)

	-- Reins of the Raven Lord - 41252
	-- type15.-1item_bindsBOPspellid41252source1method_dropstype10disp21492react33minlevel69lootCount12totalLootCount5155locs3791nameAnzuclassification1id23035rarity4level70methoddropped-byrlevel70id32768slevel150
	-- Instance: 3791 - type5minlevel67maxlevel69territory1category3nameAuchindoun: Sethekk Hallsid3791expansion1
	-- Mob Drop
	self:AddCompanion(MountDB, 41252, 32768, 4)
	self:AddCompanionFlags(MountDB, 41252, 6)
	self:AddCompanionAcquire(MountDB, 41252, 4, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- type15.-1item_bindsBOPmethod_redemptionUnknownmethod_vendorstype7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489price200000000spellid41513source23rarity4level70method_queststype0coin0side1level70givenitems328571category23703nameOnyxien the Onyx Netherwing Drakeid11111methodredemption,rewardfromrlevel70id32857slevel300
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41513, 32857, 4)
	self:AddCompanionFlags(MountDB, 41513, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41513, 2, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- type15.-1item_bindsBOPmethod_redemptionUnknownmethod_vendorstype7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489price200000000spellid41514source23rarity4level70method_queststype0coin0side1level70givenitems328581category23703nameSuraku the Azure Netherwing Drakeid11112methodredemption,rewardfromrlevel70id32858slevel300
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41514, 32858, 4)
	self:AddCompanionFlags(MountDB, 41514, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41514, 2, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- type15.-1item_bindsBOPmethod_redemptionUnknownmethod_vendorstype7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489price200000000spellid41515source23rarity4level70method_queststype0coin0side1level70givenitems328591category23703nameJorus the Cobalt Netherwing Drakeid11109methodredemption,rewardfromrlevel70id32859slevel300
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41515, 32859, 4)
	self:AddCompanionFlags(MountDB, 41515, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41515, 2, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- type15.-1item_bindsBOPmethod_redemptionUnknownmethod_vendorstype7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489price200000000spellid41516source23rarity4level70method_queststype0coin0side1level70givenitems328601category23703nameMalfas the Purple Netherwing Drakeid11110methodredemption,rewardfromrlevel70id32860slevel300
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41516, 32860, 4)
	self:AddCompanionFlags(MountDB, 41516, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41516, 2, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- type15.-1item_bindsBOPmethod_redemptionUnknownmethod_vendorstype7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489price200000000spellid41517source23rarity4level70method_queststype0coin0side1level70givenitems328611category23703nameZoya the Veridian Netherwing Drakeid11114methodredemption,rewardfromrlevel70id32861slevel300
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41517, 32861, 4)
	self:AddCompanionFlags(MountDB, 41517, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41517, 2, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- type15.-1item_bindsBOPmethod_redemptionUnknownmethod_vendorstype7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489price200000000spellid41518source23rarity4level70method_queststype0coin0side1level70givenitems328621category23703nameVoranaku the Violet Netherwing Drakeid11113methodredemption,rewardfromrlevel70id32862slevel300
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41518, 32862, 4)
	self:AddCompanionFlags(MountDB, 41518, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41518, 2, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1item_bindsBOPspellid42776rarity3level30methodrlevel30id33224slevel75
	self:AddCompanion(MountDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1item_bindsBOPspellid42777rarity4level60methodrlevel60id33225slevel150
	self:AddCompanion(MountDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 43688
	-- type15.-1item_bindsBOPspellid43688method_dropstype3lootCount19totalLootCount25locs3805nameAshli's Bagid186672rarity4level70methodcontained-in-objectrlevel70id33809slevel150
	-- Unknown
	self:AddCompanion(MountDB, 43688, 33809, 4)
	-- No filter flags
	-- No acquire information

	-- Brewfest Ram - 43899
	-- type15.-1item_bindsBOPmethod_vendorstype7locs14nameDriz Tumblequickid24510price00000000descRam Racing Apprenticespellid43899source2rarity3level30methodsold-byrlevel30id33976slevel75
	-- Vendor
	self:AddCompanion(MountDB, 43899, 33976, 3)
	self:AddCompanionFlags(MountDB, 43899, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43899, 1, 24510)

	-- Swift Brewfest Ram - 43900
	-- type15.-1item_bindsBOPmethod_vendorstype7locs14nameDriz Tumblequickid24510price00000000descRam Racing Apprenticespellid43900rarity4level60methodsold-byrlevel60id33977slevel150
	-- Vendor
	self:AddCompanion(MountDB, 43900, 33977, 4)
	self:AddCompanionFlags(MountDB, 43900, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43900, 1, 24510)

	-- Cenarion War Hippogryph - 43927
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel60locs3521nameFedryen Swiftspearclassification1id17904price00000000descCenarion Expedition Quartermasterspellid43927source2rarity4level70methodsold-byrlevel70id33999slevel300
	-- Vendor
	self:AddCompanion(MountDB, 43927, 33999, 4)
	self:AddCompanionFlags(MountDB, 43927, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43927, 1, 17904)

	-- Merciless Nether Drake - 44744
	-- type15.-1item_bindsBOPmethod_redemptionUnknownspellid44744rarity4level70methodredemptionrlevel70id34092slevel300
	-- Redemption
	self:AddCompanion(MountDB, 44744, 34092, 4)
	self:AddCompanionFlags(MountDB, 44744, 10)
	-- No acquire information

	-- Swift White Hawkstrider - 46628
	-- type15.-1item_bindsBOPspellid46628method_dropstype7disp22906react33minlevel72lootCount4totalLootCount6321locs4095nameKael'thas Sunstriderclassification1id24664descLord of the Blood Elvesrarity4level60methoddropped-byrlevel60id35513slevel150
	-- Instance: 4095 - type1limit5minlevel70maxlevel70territory1category3nameMagisters' Terraceid4095expansion1
	-- Mob Drop
	self:AddCompanion(MountDB, 46628, 35513, 4)
	self:AddCompanionFlags(MountDB, 46628, 6)
	self:AddCompanionAcquire(MountDB, 46628, 4, 24664)

	-- Magic Broom - 47977
	-- type15.-1item_bindsBOUspeed0.5spellid47977rarity3level1methodrlevel30id37011slevel75
	self:AddCompanion(MountDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 48025
	-- type15.-1item_bindsBOPspellid48025rarity4level60methodrlevel60id37012slevel75
	self:AddCompanion(MountDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- type15.-1item_bindsBOPmethod_vendorstype7react11minlevel55locs2918nameLieutenant Karterid12783price0002056030205593020558300000descMount Vendorspellid48027source8rarity4level60methodsold-byrlevel60id35906slevel150
	-- Vendor
	self:AddCompanion(MountDB, 48027, 35906, 4)
	self:AddCompanionFlags(MountDB, 48027, 1,2,3)
	self:AddCompanionAcquire(MountDB, 48027, 1, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1item_bindsBOPspellid49193rarity4level70methodrlevel70id37676slevel300
	self:AddCompanion(MountDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 51412
	-- type15.-1item_bindsBOPspellid51412rarity4level60methodrlevel60id38576slevel150
	self:AddCompanion(MountDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

end
