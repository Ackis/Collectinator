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
	-- type15.-1slevel75method_vendorsprice10000000descHorse Breedertype7react13minlevel35locs15nameGregor MacVinceid4885price10000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price10000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460spellid458source2method_dropsdescStable Mastertype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity3level30methoddropped-by,sold-byid5656rlevel30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 458, 5656, 3)
	self:AddCompanionFlags(MountDB, 458, 1,3,15)
	self:AddCompanionAcquire(MountDB, 458, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Black Stallion Bridle - 470
	-- type15.-1slevel75method_vendorsprice10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460spellid470source12method_dropsdescStable Mastertype7react13minlevel30lootCount3totalLootCount34locs12nameErmaid6749rarity3level30methoddropped-by,sold-byid2411rlevel30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 470, 2411, 3)
	self:AddCompanionFlags(MountDB, 470, 1,3,15)
	self:AddCompanionAcquire(MountDB, 470, 4, 6749, 1, 1460)

	-- Pinto Bridle - 472
	-- type15.-1slevel75method_vendorsprice10000000descHorse Breedertype7react13minlevel35locs15nameGregor MacVinceid4885price10000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price10000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460spellid472source2method_dropsdescStable Mastertype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity3level30methoddropped-by,sold-byid2414rlevel30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 472, 2414, 3)
	self:AddCompanionFlags(MountDB, 472, 1,3,15)
	self:AddCompanionAcquire(MountDB, 472, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Timber Wolf - 580
	-- type15.-1slevel75method_vendorsprice10000000descKennel Mastertype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid580source2rarity3level30methodsold-byid1132rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 580, 1132, 3)
	self:AddCompanionFlags(MountDB, 580, 2,3)
	self:AddCompanionAcquire(MountDB, 580, 1, 3362)

	-- Chestnut Mare Bridle - 6648
	-- type15.-1slevel75method_vendorsprice10000000descHorse Breedertype7react13minlevel35locs15nameGregor MacVinceid4885price10000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price10000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357price10000000descHorse Breedertype7react13minlevel25locs11nameUnger Statforthid1460spellid6648source12method_dropsdescStable Mastertype7react13minlevel30lootCount3totalLootCount34locs12nameErmaid6749rarity3level30methoddropped-by,sold-byid5655rlevel30
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 6648, 5655, 3)
	self:AddCompanionFlags(MountDB, 6648, 1,3,15)
	self:AddCompanionAcquire(MountDB, 6648, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Dire Wolf - 6653
	-- type15.-1slevel75method_vendorsprice10000000descKennel Mastertype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid6653source2rarity3level30method_queststype0side4coin8level73nameJoining the Battlecategory52597id1choiceitems29221113332115290156651methodsold-by,rewardfromid5665rlevel30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 6653, 5665, 3)
	self:AddCompanionFlags(MountDB, 6653, 2,3,4)
	self:AddCompanionAcquire(MountDB, 6653, 1, 3362, 2, 1)

	-- Horn of the Brown Wolf - 6654
	-- type15.-1slevel75method_vendorsprice10000000descKennel Mastertype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid6654source2rarity3level30methodsold-byid5668rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 6654, 5668, 3)
	self:AddCompanionFlags(MountDB, 6654, 2,3)
	self:AddCompanionAcquire(MountDB, 6654, 1, 3362)

	-- Gray Ram - 6777
	-- type15.-1slevel75method_vendorsprice10000000descRam Breedertype7react13minlevel10locs1nameVeron Amberstillid1261spellid6777source2rarity3level30methodsold-byid5864rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 6777, 5864, 3)
	self:AddCompanionFlags(MountDB, 6777, 1,3)
	self:AddCompanionAcquire(MountDB, 6777, 1, 1261)

	-- White Ram - 6898
	-- type15.-1slevel75method_vendorsprice10000000descRam Breedertype7react13minlevel10locs1nameVeron Amberstillid1261spellid6898source2rarity3level30methodsold-byid5873rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 6898, 5873, 3)
	self:AddCompanionFlags(MountDB, 6898, 1,3)
	self:AddCompanionAcquire(MountDB, 6898, 1, 1261)

	-- Brown Ram - 6899
	-- type15.-1slevel75method_vendorsprice10000000descRam Breedertype7react13minlevel10locs1nameVeron Amberstillid1261spellid6899source2rarity3level30methodsold-byid5872rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 6899, 5872, 3)
	self:AddCompanionFlags(MountDB, 6899, 1,3)
	self:AddCompanionAcquire(MountDB, 6899, 1, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- type15.-1slevel75method_vendorsprice10000000descSaber Handlertype7react13minlevel35locs1657nameLelanaiid4730spellid8394source2rarity3level30methodsold-byid8631rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 8394, 8631, 3)
	self:AddCompanionFlags(MountDB, 8394, 1,3)
	self:AddCompanionAcquire(MountDB, 8394, 1, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- type15.-1slevel75method_vendorsprice10000000descRaptor Handlertype7react31minlevel45locs14nameZjolnirid7952spellid8395source2rarity3level30method_queststype0side4coin8level73nameJoining the Battlecategory52597id1choiceitems29221113332115290156651methodsold-by,rewardfromid8588rlevel30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 8395, 8588, 3)
	self:AddCompanionFlags(MountDB, 8395, 2,3,4)
	self:AddCompanionAcquire(MountDB, 8395, 1, 7952, 2, 1)

	-- Reins of the Spotted Frostsaber - 10789
	-- type15.-1slevel75method_vendorsprice10000000descSaber Handlertype7react13minlevel35locs1657nameLelanaiid4730spellid10789source2rarity3level30methodsold-byid8632rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 10789, 8632, 3)
	self:AddCompanionFlags(MountDB, 10789, 1,3)
	self:AddCompanionAcquire(MountDB, 10789, 1, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- type15.-1slevel75method_vendorsprice10000000descSaber Handlertype7react13minlevel35locs1657nameLelanaiid4730spellid10793source2rarity3level30methodsold-byid8629rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 10793, 8629, 3)
	self:AddCompanionFlags(MountDB, 10793, 1,3)
	self:AddCompanionAcquire(MountDB, 10793, 1, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1slevel75spellid10795rarity1level40methodid8589rlevel40
	self:AddCompanion(MountDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- type15.-1slevel75method_vendorsprice10000000descRaptor Handlertype7react31minlevel45locs14nameZjolnirid7952spellid10796source2rarity3level30methodsold-byid8591rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 10796, 8591, 3)
	self:AddCompanionFlags(MountDB, 10796, 2,3)
	self:AddCompanionAcquire(MountDB, 10796, 1, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- type15.-1slevel75method_vendorsprice10000000descRaptor Handlertype7react31minlevel45locs14nameZjolnirid7952spellid10799source2rarity3level30methodsold-byid8592rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 10799, 8592, 3)
	self:AddCompanionFlags(MountDB, 10799, 2,3)
	self:AddCompanionAcquire(MountDB, 10799, 1, 7952)

	-- Red Mechanostrider - 10873
	-- type15.-1slevel75method_vendorsprice10000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid10873source2rarity3level30methodsold-byid8563rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 10873, 8563, 3)
	self:AddCompanionFlags(MountDB, 10873, 1,3)
	self:AddCompanionAcquire(MountDB, 10873, 1, 7955)

	-- Blue Mechanostrider - 10969
	-- type15.-1slevel75method_vendorsprice10000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid10969source2rarity3level30methodsold-byid8595rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 10969, 8595, 3)
	self:AddCompanionFlags(MountDB, 10969, 1,3)
	self:AddCompanionAcquire(MountDB, 10969, 1, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1slevel150spellid15779rarity4level60methodid13326rlevel60
	self:AddCompanion(MountDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1slevel150spellid16055rarity4level60methodid12303rlevel60
	self:AddCompanion(MountDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 16056
	-- type15.-1slevel150spellid16056rarity4level60methodid12302rlevel60
	self:AddCompanion(MountDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1slevel150spellid16080rarity4level60methodid12330rlevel60
	self:AddCompanion(MountDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1slevel150spellid16081rarity4level60methodid12351rlevel60
	self:AddCompanion(MountDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1slevel150spellid16082source1method_dropsdescStable Mastertype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity4level60methoddropped-byid12354rlevel60
	-- Mob Drop
	self:AddCompanion(MountDB, 16082, 12354, 4)
	self:AddCompanionFlags(MountDB, 16082, 15)
	self:AddCompanionAcquire(MountDB, 16082, 4, 6749)

	-- White Stallion Bridle - 16083
	-- type15.-1slevel150spellid16083source1method_dropsdescStable Mastertype7react13minlevel30lootCount1totalLootCount34locs12nameErmaid6749rarity4level60methoddropped-byid12353rlevel60
	-- Mob Drop
	self:AddCompanion(MountDB, 16083, 12353, 4)
	self:AddCompanionFlags(MountDB, 16083, 15)
	self:AddCompanionAcquire(MountDB, 16083, 4, 6749)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1slevel150spellid16084rarity4level60methodid8586rlevel60
	self:AddCompanion(MountDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- type15.-1slevel75method_vendorsprice100000000descWintersaber Trainertype7react23minlevel62locs618nameRivern Frostwindid10618spellid17229source2rarity4level60methodsold-byid13086rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 17229, 13086, 4)
	self:AddCompanionFlags(MountDB, 17229, 1,3)
	self:AddCompanionAcquire(MountDB, 17229, 1, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1slevel150spellid17450rarity4level60methodid13317rlevel60
	self:AddCompanion(MountDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- type15.-1slevel75method_vendorsprice10000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid17453source2rarity3level30methodsold-byid13321rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 17453, 13321, 3)
	self:AddCompanionFlags(MountDB, 17453, 1,3)
	self:AddCompanionAcquire(MountDB, 17453, 1, 7955)

	-- Unpainted Mechanostrider - 17454
	-- type15.-1slevel75method_vendorsprice10000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid17454source2rarity3level30methodsold-byid13322rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 17454, 13322, 3)
	self:AddCompanionFlags(MountDB, 17454, 1,3)
	self:AddCompanionAcquire(MountDB, 17454, 1, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1slevel150spellid17459rarity4level60methodid13327rlevel60
	self:AddCompanion(MountDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1slevel150spellid17460rarity4level60methodid13329rlevel60
	self:AddCompanion(MountDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1slevel150spellid17461rarity4level60methodid13328rlevel60
	self:AddCompanion(MountDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- type15.-1slevel75method_vendorsprice10000000descUndead Horse Merchanttype7react31minlevel30locs85nameZachariah Postid4731spellid17462source2rarity3level30methodsold-byid13331rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 17462, 13331, 3)
	self:AddCompanionFlags(MountDB, 17462, 2,3)
	self:AddCompanionAcquire(MountDB, 17462, 1, 4731)

	-- Blue Skeletal Horse - 17463
	-- type15.-1slevel75method_vendorsprice10000000descUndead Horse Merchanttype7react31minlevel30locs85nameZachariah Postid4731spellid17463source2rarity3level30method_queststype0side4coin8level73nameJoining the Battlecategory52597id1choiceitems29221113332115290156651methodsold-by,rewardfromid13332rlevel30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 17463, 13332, 3)
	self:AddCompanionFlags(MountDB, 17463, 2,3,4)
	self:AddCompanionAcquire(MountDB, 17463, 1, 4731, 2, 1)

	-- Brown Skeletal Horse - 17464
	-- type15.-1slevel75method_vendorsprice10000000descUndead Horse Merchanttype7react31minlevel30locs85nameZachariah Postid4731spellid17464source2rarity3level30methodsold-byid13333rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 17464, 13333, 3)
	self:AddCompanionFlags(MountDB, 17464, 2,3)
	self:AddCompanionAcquire(MountDB, 17464, 1, 4731)

	-- Green Skeletal Warhorse - 17465
	-- type15.-1slevel150method_vendorsprice100000000descUndead Horse Merchanttype7react31minlevel30locs85nameZachariah Postid4731spellid17465source2rarity4level60methodsold-byid13334rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 17465, 13334, 4)
	self:AddCompanionFlags(MountDB, 17465, 2,3)
	self:AddCompanionAcquire(MountDB, 17465, 1, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1slevel150spellid17481source1method_dropstype6react33disp10729minlevel62lootCount1totalLootCount12362locs2017nameBaron Rivendareclassification1id10440rarity4level60methoddropped-byid13335rlevel60
	-- Instance: 2017 - type1minlevel58maxlevel60territory1nameStratholmecategory3id2017
	-- Mob Drop
	self:AddCompanion(MountDB, 17481, 13335, 4)
	self:AddCompanionFlags(MountDB, 17481, 6)
	self:AddCompanionAcquire(MountDB, 17481, 4, 10440)

	-- Gray Kodo - 18989
	-- type15.-1slevel75method_vendorsprice10000000descKodo Mountstype7react31minlevel45locs215nameHarb Clawhoofid3685spellid18989source2rarity3level30methodsold-byid15277rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 18989, 15277, 3)
	self:AddCompanionFlags(MountDB, 18989, 2,3)
	self:AddCompanionAcquire(MountDB, 18989, 1, 3685)

	-- Brown Kodo - 18990
	-- type15.-1slevel75method_vendorsprice10000000descKodo Mountstype7react31minlevel45locs215nameHarb Clawhoofid3685spellid18990source2rarity3level30method_queststype0side4coin8level73nameJoining the Battlecategory52597id1choiceitems29221113332115290156651methodsold-by,rewardfromid15290rlevel30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 18990, 15290, 3)
	self:AddCompanionFlags(MountDB, 18990, 2,3,4)
	self:AddCompanionAcquire(MountDB, 18990, 1, 3685, 2, 1)

	-- Green Kodo - 18991
	-- type15.-1slevel150spellid18991rarity4level60methodid15292rlevel60
	self:AddCompanion(MountDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1slevel150spellid18992rarity4level60methodid15293rlevel60
	self:AddCompanion(MountDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1slevel75spellid22717source8rarity4level55methodid18241rlevel55
	self:AddCompanion(MountDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1slevel75spellid22718source8rarity4level55methodid18247rlevel55
	self:AddCompanion(MountDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 22719
	-- type15.-1slevel150method_vendorsprice0002056030205593020558300000descMount Vendortype7react11minlevel55locs2918nameLieutenant Karterid12783spellid22719source8rarity4level60methodsold-byid29465rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 22719, 29465, 4)
	self:AddCompanionFlags(MountDB, 22719, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22719, 1, 12783)

	-- Black War Ram - 22720
	-- type15.-1slevel150method_vendorsprice0002056030205593020558300000descMount Vendortype7react11minlevel55locs2918nameLieutenant Karterid12783spellid22720source8rarity4level60methodsold-byid29467rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 22720, 29467, 4)
	self:AddCompanionFlags(MountDB, 22720, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22720, 1, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- type15.-1slevel150method_vendorsprice0002056030205593020558300000descMount Quartermastertype7react21minlevel55locs2917nameRaider Borkid12796spellid22721source8rarity4level60methodsold-byid29472rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 22721, 29472, 4)
	self:AddCompanionFlags(MountDB, 22721, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22721, 1, 12796)

	-- Red Skeletal Warhorse - 22722
	-- type15.-1slevel150method_vendorsprice0002056030205593020558300000descMount Quartermastertype7react21minlevel55locs2917nameRaider Borkid12796spellid22722source8rarity4level60methodsold-byid29470rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 22722, 29470, 4)
	self:AddCompanionFlags(MountDB, 22722, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22722, 1, 12796)

	-- Reins of the Black War Tiger - 22723
	-- type15.-1slevel150method_vendorsprice000205603020559302055830type7react11minlevel70locs35243525148-1nameGeneral Goods Vendorid26304price0002056030205593020558300000descMount Vendortype7react11minlevel55locs2918nameLieutenant Karterid12783spellid22723source28rarity4level60methodsold-byid29471rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 22723, 29471, 4)
	self:AddCompanionFlags(MountDB, 22723, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22723, 1, 12783, 1, 26304)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1slevel75spellid22724source8rarity4level55methodid18245rlevel55
	self:AddCompanion(MountDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- type15.-1slevel150method_vendorsprice100000000descSaber Handlertype7react13minlevel35locs1657nameLelanaiid4730spellid23219source2rarity4level60methodsold-byid18767rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23219, 18767, 4)
	self:AddCompanionFlags(MountDB, 23219, 1,3)
	self:AddCompanionAcquire(MountDB, 23219, 1, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- type15.-1slevel150method_vendorsprice100000000descSaber Handlertype7react13minlevel35locs1657nameLelanaiid4730spellid23221source2rarity4level60methodsold-byid18766rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23221, 18766, 4)
	self:AddCompanionFlags(MountDB, 23221, 1,3)
	self:AddCompanionAcquire(MountDB, 23221, 1, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- type15.-1slevel150method_vendorsprice100000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid23222source2rarity4level60methodsold-byid18774rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23222, 18774, 4)
	self:AddCompanionFlags(MountDB, 23222, 1,3)
	self:AddCompanionAcquire(MountDB, 23222, 1, 7955)

	-- Swift White Mechanostrider - 23223
	-- type15.-1slevel150method_vendorsprice100000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid23223source2rarity4level60methodsold-byid18773rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23223, 18773, 4)
	self:AddCompanionFlags(MountDB, 23223, 1,3)
	self:AddCompanionAcquire(MountDB, 23223, 1, 7955)

	-- Swift Green Mechanostrider - 23225
	-- type15.-1slevel150method_vendorsprice100000000descMechanostrider Merchanttype7react13minlevel50locs1nameMilli Featherwhistleid7955spellid23225source2rarity4level60methodsold-byid18772rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23225, 18772, 4)
	self:AddCompanionFlags(MountDB, 23225, 1,3)
	self:AddCompanionAcquire(MountDB, 23225, 1, 7955)

	-- Swift Palomino - 23227
	-- type15.-1slevel150method_vendorsprice100000000descHorse Breedertype7react13minlevel35locs15nameGregor MacVinceid4885price100000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price100000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357spellid23227source2method_dropsdescStable Mastertype7react13minlevel30lootCount1totalLootCount34locs12nameErmaid6749rarity4level60method_queststype0coin0level1nameWhite Stallion Exchangecategory00id7677choiceitems187771187761187781methoddropped-by,sold-by,rewardfromid18776rlevel60
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23227, 18776, 4)
	self:AddCompanionFlags(MountDB, 23227, 1,3,4,15)
	self:AddCompanionAcquire(MountDB, 23227, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift White Steed - 23228
	-- type15.-1slevel150method_vendorsprice100000000descHorse Breedertype7react13minlevel35locs15nameGregor MacVinceid4885price100000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price100000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357spellid23228source2method_dropsdescStable Mastertype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity4level60method_queststype0coin0level1nameWhite Stallion Exchangecategory00id7677choiceitems187771187761187781methoddropped-by,sold-by,rewardfromid18778rlevel60
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23228, 18778, 4)
	self:AddCompanionFlags(MountDB, 23228, 1,3,4,15)
	self:AddCompanionAcquire(MountDB, 23228, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Steed - 23229
	-- type15.-1slevel150method_vendorsprice100000000descHorse Breedertype7react13minlevel35locs15nameGregor MacVinceid4885price100000000descHorse Breedertype7react03minlevel10locs12nameKatie Hunterid384price100000000descHorse Breedertype7react13minlevel32locs267nameMerideth Carlsonid2357spellid23229source2method_dropsdescStable Mastertype7react13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity4level60method_queststype0coin0level1nameWhite Stallion Exchangecategory00id7677choiceitems187771187761187781methoddropped-by,sold-by,rewardfromid18777rlevel60
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23229, 18777, 4)
	self:AddCompanionFlags(MountDB, 23229, 1,3,4,15)
	self:AddCompanionAcquire(MountDB, 23229, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Ram - 23238
	-- type15.-1slevel150method_vendorsprice100000000descRam Breedertype7react13minlevel10locs1nameVeron Amberstillid1261spellid23238source2rarity4level60methodsold-byid18786rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23238, 18786, 4)
	self:AddCompanionFlags(MountDB, 23238, 1,3)
	self:AddCompanionAcquire(MountDB, 23238, 1, 1261)

	-- Swift Gray Ram - 23239
	-- type15.-1slevel150method_vendorsprice100000000descRam Breedertype7react13minlevel10locs1nameVeron Amberstillid1261spellid23239source2rarity4level60methodsold-byid18787rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23239, 18787, 4)
	self:AddCompanionFlags(MountDB, 23239, 1,3)
	self:AddCompanionAcquire(MountDB, 23239, 1, 1261)

	-- Swift White Ram - 23240
	-- type15.-1slevel150method_vendorsprice100000000descRam Breedertype7react13minlevel10locs1nameVeron Amberstillid1261spellid23240source2rarity4level60methodsold-byid18785rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23240, 18785, 4)
	self:AddCompanionFlags(MountDB, 23240, 1,3)
	self:AddCompanionAcquire(MountDB, 23240, 1, 1261)

	-- Swift Blue Raptor - 23241
	-- type15.-1slevel150method_vendorsprice100000000descRaptor Handlertype7react31minlevel45locs14nameZjolnirid7952spellid23241source2rarity4level60methodsold-byid18788rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23241, 18788, 4)
	self:AddCompanionFlags(MountDB, 23241, 2,3)
	self:AddCompanionAcquire(MountDB, 23241, 1, 7952)

	-- Swift Olive Raptor - 23242
	-- type15.-1slevel150method_vendorsprice100000000descRaptor Handlertype7react31minlevel45locs14nameZjolnirid7952spellid23242source2rarity4level60methodsold-byid18789rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23242, 18789, 4)
	self:AddCompanionFlags(MountDB, 23242, 2,3)
	self:AddCompanionAcquire(MountDB, 23242, 1, 7952)

	-- Swift Orange Raptor - 23243
	-- type15.-1slevel150method_vendorsprice100000000descRaptor Handlertype7react31minlevel45locs14nameZjolnirid7952spellid23243source2rarity4level60methodsold-byid18790rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23243, 18790, 4)
	self:AddCompanionFlags(MountDB, 23243, 2,3)
	self:AddCompanionAcquire(MountDB, 23243, 1, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- type15.-1slevel150method_vendorsprice100000000descUndead Horse Merchanttype7react31minlevel30locs85nameZachariah Postid4731spellid23246source2rarity4level60methodsold-byid18791rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23246, 18791, 4)
	self:AddCompanionFlags(MountDB, 23246, 2,3)
	self:AddCompanionAcquire(MountDB, 23246, 1, 4731)

	-- Great White Kodo - 23247
	-- type15.-1slevel150method_vendorsprice100000000descKodo Mountstype7react31minlevel45locs215nameHarb Clawhoofid3685spellid23247source2rarity4level60methodsold-byid18793rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23247, 18793, 4)
	self:AddCompanionFlags(MountDB, 23247, 2,3)
	self:AddCompanionAcquire(MountDB, 23247, 1, 3685)

	-- Great Gray Kodo - 23248
	-- type15.-1slevel150method_vendorsprice100000000descKodo Mountstype7react31minlevel45locs215nameHarb Clawhoofid3685spellid23248source2rarity4level60methodsold-byid18795rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23248, 18795, 4)
	self:AddCompanionFlags(MountDB, 23248, 2,3)
	self:AddCompanionAcquire(MountDB, 23248, 1, 3685)

	-- Great Brown Kodo - 23249
	-- type15.-1slevel150method_vendorsprice100000000descKodo Mountstype7react31minlevel45locs215nameHarb Clawhoofid3685spellid23249source2rarity4level60methodsold-byid18794rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23249, 18794, 4)
	self:AddCompanionFlags(MountDB, 23249, 2,3)
	self:AddCompanionAcquire(MountDB, 23249, 1, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- type15.-1slevel150method_vendorsprice100000000descKennel Mastertype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid23250source2rarity4level60methodsold-byid18796rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23250, 18796, 4)
	self:AddCompanionFlags(MountDB, 23250, 2,3)
	self:AddCompanionAcquire(MountDB, 23250, 1, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- type15.-1slevel150method_vendorsprice100000000descKennel Mastertype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid23251source2rarity4level60methodsold-byid18797rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23251, 18797, 4)
	self:AddCompanionFlags(MountDB, 23251, 2,3)
	self:AddCompanionAcquire(MountDB, 23251, 1, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- type15.-1slevel150method_vendorsprice100000000descKennel Mastertype7react31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid23252source2rarity4level60methodsold-byid18798rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23252, 18798, 4)
	self:AddCompanionFlags(MountDB, 23252, 2,3)
	self:AddCompanionAcquire(MountDB, 23252, 1, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- type15.-1slevel150method_vendorsprice100000000descSaber Handlertype7react13minlevel35locs1657nameLelanaiid4730spellid23338source2rarity4level60methodsold-byid18902rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23338, 18902, 4)
	self:AddCompanionFlags(MountDB, 23338, 1,3)
	self:AddCompanionAcquire(MountDB, 23338, 1, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- type15.-1slevel150method_vendorsprice000205605000000000descFrostwolf Supply Officertype7react31minlevel58maxlevel68locs2597nameGrunnda Wolfheartclassification1id13218price0002056050descFrostwolf Supply Officertype7react31minlevel58locs36267nameJekyll Flandringclassification1id13219spellid23509source8rarity4level60methodsold-byid19029rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23509, 19029, 4)
	self:AddCompanionFlags(MountDB, 23509, 2,3)
	self:AddCompanionAcquire(MountDB, 23509, 1, 13218, 1, 13219)

	-- Stormpike Battle Charger - 23510
	-- type15.-1slevel150method_vendorsprice0002056050descStormpike Supply Officertype7react13minlevel68locs2597nameGaelden Hammersmithclassification1id13216price000205605000000000descStormpike Supply Officertype7react13minlevel58locs36nameThanthaldis Snowgleamclassification1id13217spellid23510source8rarity4level60methodsold-byid19030rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 23510, 19030, 4)
	self:AddCompanionFlags(MountDB, 23510, 1,3)
	self:AddCompanionAcquire(MountDB, 23510, 1, 13216, 1, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1slevel150spellid24242source1method_dropstype7react33lootCount35totalLootCount8107locs1977nameBloodlord Mandokirclassification3id11382rarity4level60methoddropped-byid19872rlevel60
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(MountDB, 24242, 19872, 4)
	self:AddCompanionFlags(MountDB, 24242, 7)
	self:AddCompanionAcquire(MountDB, 24242, 4, 11382)

	-- Swift Zulian Tiger - 24252
	-- type15.-1slevel150spellid24252source1method_dropstype7react33lootCount9totalLootCount3676locs1977nameHigh Priest Thekalclassification3id14509rarity4level60methoddropped-byid19902rlevel60
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(MountDB, 24252, 19902, 4)
	self:AddCompanionFlags(MountDB, 24252, 7)
	self:AddCompanionAcquire(MountDB, 24252, 4, 14509)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1slevel150spellid26656rarity5level60methodid21176rlevel60
	self:AddCompanion(MountDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 32235
	-- type15.-1slevel225method_vendorsprice100000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32235source2rarity3level70methodsold-byid25470rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32235, 25470, 3)
	self:AddCompanionFlags(MountDB, 32235, 1,3)
	self:AddCompanionAcquire(MountDB, 32235, 1, 20510)

	-- Ebon Gryphon - 32239
	-- type15.-1slevel225method_vendorsprice100000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32239source2rarity3level70methodsold-byid25471rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32239, 25471, 3)
	self:AddCompanionFlags(MountDB, 32239, 1,3)
	self:AddCompanionAcquire(MountDB, 32239, 1, 20510)

	-- Snowy Gryphon - 32240
	-- type15.-1slevel225method_vendorsprice100000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32240source2rarity3level70methodsold-byid25472rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32240, 25472, 3)
	self:AddCompanionFlags(MountDB, 32240, 1,3)
	self:AddCompanionAcquire(MountDB, 32240, 1, 20510)

	-- Swift Blue Gryphon - 32242
	-- type15.-1slevel300method_vendorsprice200000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32242source2rarity4level70methodsold-byid25473rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32242, 25473, 4)
	self:AddCompanionFlags(MountDB, 32242, 1,3)
	self:AddCompanionAcquire(MountDB, 32242, 1, 20510)

	-- Tawny Windrider - 32243
	-- type15.-1slevel225method_vendorsprice100000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32243source2rarity3level70methodsold-byid25474rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32243, 25474, 3)
	self:AddCompanionFlags(MountDB, 32243, 2,3)
	self:AddCompanionAcquire(MountDB, 32243, 1, 20494)

	-- Blue Windrider - 32244
	-- type15.-1slevel225method_vendorsprice100000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32244source2rarity3level70methodsold-byid25475rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32244, 25475, 3)
	self:AddCompanionFlags(MountDB, 32244, 2,3)
	self:AddCompanionAcquire(MountDB, 32244, 1, 20494)

	-- Green Windrider - 32245
	-- type15.-1slevel225method_vendorsprice100000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32245source2rarity3level70methodsold-byid25476rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32245, 25476, 3)
	self:AddCompanionFlags(MountDB, 32245, 2,3)
	self:AddCompanionAcquire(MountDB, 32245, 1, 20494)

	-- Swift Red Windrider - 32246
	-- type15.-1slevel300method_vendorsprice200000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32246source2rarity4level70methodsold-byid25477rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32246, 25477, 4)
	self:AddCompanionFlags(MountDB, 32246, 2,3)
	self:AddCompanionAcquire(MountDB, 32246, 1, 20494)

	-- Swift Red Gryphon - 32289
	-- type15.-1slevel300method_vendorsprice200000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32289source2rarity4level70methodsold-byid25527rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32289, 25527, 4)
	self:AddCompanionFlags(MountDB, 32289, 1,3)
	self:AddCompanionAcquire(MountDB, 32289, 1, 20510)

	-- Swift Green Gryphon - 32290
	-- type15.-1slevel300method_vendorsprice200000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32290source2rarity4level70methodsold-byid25528rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32290, 25528, 4)
	self:AddCompanionFlags(MountDB, 32290, 1,3)
	self:AddCompanionAcquire(MountDB, 32290, 1, 20510)

	-- Swift Purple Gryphon - 32292
	-- type15.-1slevel300method_vendorsprice200000000descGryphon Keepertype7react13minlevel70locs3520nameBrunn Flamebeardid20510spellid32292source2rarity4level70methodsold-byid25529rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32292, 25529, 4)
	self:AddCompanionFlags(MountDB, 32292, 1,3)
	self:AddCompanionAcquire(MountDB, 32292, 1, 20510)

	-- Swift Green Windrider - 32295
	-- type15.-1slevel300method_vendorsprice200000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32295source2rarity4level70methodsold-byid25531rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32295, 25531, 4)
	self:AddCompanionFlags(MountDB, 32295, 2,3)
	self:AddCompanionAcquire(MountDB, 32295, 1, 20494)

	-- Swift Yellow Windrider - 32296
	-- type15.-1slevel300method_vendorsprice200000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32296source2rarity4level70methodsold-byid25532rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32296, 25532, 4)
	self:AddCompanionFlags(MountDB, 32296, 2,3)
	self:AddCompanionAcquire(MountDB, 32296, 1, 20494)

	-- Swift Purple Windrider - 32297
	-- type15.-1slevel300method_vendorsprice200000000descWindrider Keepertype7react31minlevel70locs3520nameDama Wildmaneid20494spellid32297source2rarity4level70methodsold-byid25533rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 32297, 25533, 4)
	self:AddCompanionFlags(MountDB, 32297, 2,3)
	self:AddCompanionAcquire(MountDB, 32297, 1, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- type15.-1slevel150method_vendorsprice100000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid33660source2rarity4level60methodsold-byid28936rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 33660, 28936, 4)
	self:AddCompanionFlags(MountDB, 33660, 2,3)
	self:AddCompanionAcquire(MountDB, 33660, 1, 16264)

	-- Brown Elekk - 34406
	-- type15.-1slevel75method_vendorsprice10000000descElekk Breedertype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid34406source2rarity3level30methodsold-byid28481rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 34406, 28481, 3)
	self:AddCompanionFlags(MountDB, 34406, 1,3)
	self:AddCompanionAcquire(MountDB, 34406, 1, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- type15.-1slevel150method_vendorsprice000260451002604420000000descBlade Merchanttype7react13minlevel70locs3518nameAldraanclassification1id21485price000260451002604420000000descBlade Merchanttype7react31minlevel70locs3518nameCoreielclassification1id21474spellid34790source2rarity4level60methodsold-byid29228rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 34790, 29228, 4)
	self:AddCompanionFlags(MountDB, 34790, 1,2,3)
	self:AddCompanionAcquire(MountDB, 34790, 1, 21474, 1, 21485)

	-- Red Hawkstrider - 34795
	-- type15.-1slevel75method_vendorsprice10000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid34795source2rarity3level30methodsold-byid28927rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 34795, 28927, 3)
	self:AddCompanionFlags(MountDB, 34795, 2,3)
	self:AddCompanionAcquire(MountDB, 34795, 1, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- type15.-1slevel150method_vendorsprice100000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid34896source2rarity4level60methodsold-byid29102rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 34896, 29102, 4)
	self:AddCompanionFlags(MountDB, 34896, 2,3)
	self:AddCompanionAcquire(MountDB, 34896, 1, 20241)

	-- Reins of the White War Talbuk - 34897
	-- type15.-1slevel150method_vendorsprice100000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid34897source2rarity4level60methodsold-byid29103rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 34897, 29103, 4)
	self:AddCompanionFlags(MountDB, 34897, 2,3)
	self:AddCompanionAcquire(MountDB, 34897, 1, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- type15.-1slevel150method_vendorsprice100000000descKurenai Quartermastertype7react13minlevel65locs3518nameTrader Narasuid20240spellid34898source2rarity4level60methodsold-byid29229rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 34898, 29229, 4)
	self:AddCompanionFlags(MountDB, 34898, 1,3)
	self:AddCompanionAcquire(MountDB, 34898, 1, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- type15.-1slevel150method_vendorsprice100000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid34899source2rarity4level60methodsold-byid29105rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 34899, 29105, 4)
	self:AddCompanionFlags(MountDB, 34899, 2,3)
	self:AddCompanionAcquire(MountDB, 34899, 1, 20241)

	-- Purple Hawkstrider - 35018
	-- type15.-1slevel75method_vendorsprice10000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid35018source2rarity3level30methodsold-byid29222rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 35018, 29222, 3)
	self:AddCompanionFlags(MountDB, 35018, 2,3)
	self:AddCompanionAcquire(MountDB, 35018, 1, 16264)

	-- Blue Hawkstrider - 35020
	-- type15.-1slevel75method_vendorsprice10000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid35020source2rarity3level30methodsold-byid29220rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 35020, 29220, 3)
	self:AddCompanionFlags(MountDB, 35020, 2,3)
	self:AddCompanionAcquire(MountDB, 35020, 1, 16264)

	-- Black Hawkstrider - 35022
	-- type15.-1slevel75method_vendorsprice10000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid35022source2rarity3level30method_queststype0side4coin8level73nameJoining the Battlecategory52597id1choiceitems29221113332115290156651methodsold-by,rewardfromid29221rlevel30
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 35022, 29221, 3)
	self:AddCompanionFlags(MountDB, 35022, 2,3,4)
	self:AddCompanionAcquire(MountDB, 35022, 1, 16264, 2, 1)

	-- Swift Green Hawkstrider - 35025
	-- type15.-1slevel150method_vendorsprice100000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid35025source2rarity4level60methodsold-byid29223rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 35025, 29223, 4)
	self:AddCompanionFlags(MountDB, 35025, 2,3)
	self:AddCompanionAcquire(MountDB, 35025, 1, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- type15.-1slevel150method_vendorsprice100000000descHawkstrider Breedertype7react31minlevel15locs3430nameWinaestraid16264spellid35027source2rarity4level60methodsold-byid29224rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 35027, 29224, 4)
	self:AddCompanionFlags(MountDB, 35027, 2,3)
	self:AddCompanionAcquire(MountDB, 35027, 1, 16264)

	-- Swift Warstrider - 35028
	-- type15.-1slevel150method_vendorsprice0002056030205593020558300000descMount Quartermastertype7react21minlevel55locs2917nameRaider Borkid12796spellid35028source8rarity4level60methodsold-byid34129rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 35028, 34129, 4)
	self:AddCompanionFlags(MountDB, 35028, 1,2,3)
	self:AddCompanionAcquire(MountDB, 35028, 1, 12796)

	-- Gray Elekk - 35710
	-- type15.-1slevel75method_vendorsprice10000000descElekk Breedertype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35710source2rarity3level30methodsold-byid29744rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 35710, 29744, 3)
	self:AddCompanionFlags(MountDB, 35710, 1,3)
	self:AddCompanionAcquire(MountDB, 35710, 1, 17584)

	-- Purple Elekk - 35711
	-- type15.-1slevel75method_vendorsprice10000000descElekk Breedertype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35711source2rarity3level30methodsold-byid29743rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 35711, 29743, 3)
	self:AddCompanionFlags(MountDB, 35711, 1,3)
	self:AddCompanionAcquire(MountDB, 35711, 1, 17584)

	-- Great Green Elekk - 35712
	-- type15.-1slevel150method_vendorsprice100000000descElekk Breedertype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35712source2rarity4level60methodsold-byid29746rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 35712, 29746, 4)
	self:AddCompanionFlags(MountDB, 35712, 1,3)
	self:AddCompanionAcquire(MountDB, 35712, 1, 17584)

	-- Great Blue Elekk - 35713
	-- type15.-1slevel150method_vendorsprice100000000descElekk Breedertype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35713source2rarity4level60methodsold-byid29745rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 35713, 29745, 4)
	self:AddCompanionFlags(MountDB, 35713, 1,3)
	self:AddCompanionAcquire(MountDB, 35713, 1, 17584)

	-- Great Purple Elekk - 35714
	-- type15.-1slevel150method_vendorsprice100000000descElekk Breedertype7react13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35714source2rarity4level60methodsold-byid29747rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 35714, 29747, 4)
	self:AddCompanionFlags(MountDB, 35714, 1,3)
	self:AddCompanionAcquire(MountDB, 35714, 1, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1slevel150spellid36702source1method_dropstype6react33disp16416lootCount78totalLootCount35478locs3457nameAttumen the Huntsmanclassification3id15550type6react33disp16040lootCount10totalLootCount6529locs3457nameAttumen the Huntsmanclassification3id16152rarity4level70methoddropped-byid30480rlevel70
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	self:AddCompanion(MountDB, 36702, 30480, 4)
	self:AddCompanionFlags(MountDB, 36702, 7)
	self:AddCompanionAcquire(MountDB, 36702, 4, 15550, 4, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1slevel300spellid37015rarity4level70methodid30609rlevel70
	self:AddCompanion(MountDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- type15.-1slevel150method_vendorsprice70000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid39315source2rarity4level60methodsold-byid31829rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 39315, 31829, 4)
	self:AddCompanionFlags(MountDB, 39315, 2,3)
	self:AddCompanionAcquire(MountDB, 39315, 1, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- type15.-1slevel150method_vendorsprice00026045702604415000000descBlade Merchanttype7react13minlevel70locs3518nameAldraanclassification1id21485price00026045702604415000000descBlade Merchanttype7react31minlevel70locs3518nameCoreielclassification1id21474spellid39316source2rarity4level60methodsold-byid28915rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 39316, 28915, 4)
	self:AddCompanionFlags(MountDB, 39316, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39316, 1, 21474, 1, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- type15.-1slevel150method_vendorsprice70000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid39317source2rarity4level60methodsold-byid31831rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 39317, 31831, 4)
	self:AddCompanionFlags(MountDB, 39317, 2,3)
	self:AddCompanionAcquire(MountDB, 39317, 1, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- type15.-1slevel150method_vendorsprice70000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid39318source2rarity4level60methodsold-byid31833rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 39318, 31833, 4)
	self:AddCompanionFlags(MountDB, 39318, 2,3)
	self:AddCompanionAcquire(MountDB, 39318, 1, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- type15.-1slevel150method_vendorsprice70000000descMag'har Quartermastertype7react31minlevel65locs3518nameProvisioner Naselaid20241spellid39319source2rarity4level60methodsold-byid31835rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 39319, 31835, 4)
	self:AddCompanionFlags(MountDB, 39319, 2,3)
	self:AddCompanionAcquire(MountDB, 39319, 1, 20241)

	-- Green Riding Nether Ray - 39798
	-- type15.-1slevel300method_vendorsprice00000000descSkyguard Quartermastertype7react11minlevel70locs3519nameGrellaid23367spellid39798source2rarity4level70methodsold-byid32314rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 39798, 32314, 4)
	self:AddCompanionFlags(MountDB, 39798, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39798, 1, 23367)

	-- Red Riding Nether Ray - 39800
	-- type15.-1slevel300method_vendorsprice00000000descSkyguard Quartermastertype7react11minlevel70locs3519nameGrellaid23367spellid39800source2rarity4level70methodsold-byid32317rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 39800, 32317, 4)
	self:AddCompanionFlags(MountDB, 39800, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39800, 1, 23367)

	-- Purple Riding Nether Ray - 39801
	-- type15.-1slevel300method_vendorsprice00000000descSkyguard Quartermastertype7react11minlevel70locs3519nameGrellaid23367spellid39801source2rarity4level70methodsold-byid32316rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 39801, 32316, 4)
	self:AddCompanionFlags(MountDB, 39801, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39801, 1, 23367)

	-- Silver Riding Nether Ray - 39802
	-- type15.-1slevel300method_vendorsprice00000000descSkyguard Quartermastertype7react11minlevel70locs3519nameGrellaid23367spellid39802source2rarity4level70methodsold-byid32318rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 39802, 32318, 4)
	self:AddCompanionFlags(MountDB, 39802, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39802, 1, 23367)

	-- Blue Riding Nether Ray - 39803
	-- type15.-1slevel300method_vendorsprice00000000descSkyguard Quartermastertype7react11minlevel70locs3519nameGrellaid23367spellid39803source2rarity4level70methodsold-byid32319rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 39803, 32319, 4)
	self:AddCompanionFlags(MountDB, 39803, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39803, 1, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1slevel300spellid40192source1method_dropsdescLord of the Blood Elvestype7react33disp20023minlevel73lootCount14totalLootCount3723locs37033845nameKael'thas Sunstriderclassification3id19622descLord of the Blood Elvestype7react33disp20023minlevel72lootCount1totalLootCount9689locs409537033845nameKael'thas Sunstriderclassification3id23054rarity4level70methoddropped-byid32458rlevel70
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - expansion1type1limit5minlevel70maxlevel70territory1nameMagisters' Terracecategory3id4095
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	self:AddCompanion(MountDB, 40192, 32458, 4)
	self:AddCompanionFlags(MountDB, 40192, 6,7,15)
	self:AddCompanionAcquire(MountDB, 40192, 4, 19622, 4, 23054)

	-- Reins of the Raven Lord - 41252
	-- type15.-1slevel150spellid41252source1method_dropstype10react33disp21492minlevel69lootCount12totalLootCount5155locs3791nameAnzuclassification1id23035rarity4level70methoddropped-byid32768rlevel70
	-- Instance: 3791 - expansion1type5minlevel67maxlevel69territory1nameAuchindoun: Sethekk Hallscategory3id3791
	-- Mob Drop
	self:AddCompanion(MountDB, 41252, 32768, 4)
	self:AddCompanionFlags(MountDB, 41252, 6)
	self:AddCompanionAcquire(MountDB, 41252, 4, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- type15.-1slevel300method_redemptionUnknownmethod_vendorsprice200000000type7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41513source23rarity4level70method_queststype0side1coin0level70givenitems328571nameOnyxien the Onyx Netherwing Drakecategory23703id11111methodredemption,rewardfromid32857rlevel70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41513, 32857, 4)
	self:AddCompanionFlags(MountDB, 41513, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41513, 2, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- type15.-1slevel300method_redemptionUnknownmethod_vendorsprice200000000type7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41514source23rarity4level70method_queststype0side1coin0level70givenitems328581nameSuraku the Azure Netherwing Drakecategory23703id11112methodredemption,rewardfromid32858rlevel70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41514, 32858, 4)
	self:AddCompanionFlags(MountDB, 41514, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41514, 2, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- type15.-1slevel300method_redemptionUnknownmethod_vendorsprice200000000type7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41515source23rarity4level70method_queststype0side1coin0level70givenitems328591nameJorus the Cobalt Netherwing Drakecategory23703id11109methodredemption,rewardfromid32859rlevel70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41515, 32859, 4)
	self:AddCompanionFlags(MountDB, 41515, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41515, 2, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- type15.-1slevel300method_redemptionUnknownmethod_vendorsprice200000000type7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41516source23rarity4level70method_queststype0side1coin0level70givenitems328601nameMalfas the Purple Netherwing Drakecategory23703id11110methodredemption,rewardfromid32860rlevel70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41516, 32860, 4)
	self:AddCompanionFlags(MountDB, 41516, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41516, 2, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- type15.-1slevel300method_redemptionUnknownmethod_vendorsprice200000000type7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41517source23rarity4level70method_queststype0side1coin0level70givenitems328611nameZoya the Veridian Netherwing Drakecategory23703id11114methodredemption,rewardfromid32861rlevel70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41517, 32861, 4)
	self:AddCompanionFlags(MountDB, 41517, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41517, 2, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- type15.-1slevel300method_redemptionUnknownmethod_vendorsprice200000000type7react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41518source23rarity4level70method_queststype0side1coin0level70givenitems328621nameVoranaku the Violet Netherwing Drakecategory23703id11113methodredemption,rewardfromid32862rlevel70
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41518, 32862, 4)
	self:AddCompanionFlags(MountDB, 41518, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41518, 2, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1slevel75spellid42776rarity3level30methodid33224rlevel30
	self:AddCompanion(MountDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1slevel150spellid42777rarity4level60methodid33225rlevel60
	self:AddCompanion(MountDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 43688
	-- type15.-1slevel150spellid43688method_dropstype3lootCount19totalLootCount25locs3805nameAshli's Bagid186672rarity4level70methodcontained-in-objectid33809rlevel70
	-- Unknown
	self:AddCompanion(MountDB, 43688, 33809, 4)
	-- No filter flags
	-- No acquire information

	-- Brewfest Ram - 43899
	-- type15.-1slevel75method_vendorsprice00000000descRam Racing Apprenticetype7locs14nameDriz Tumblequickid24510spellid43899source2rarity3level30methodsold-byid33976rlevel30
	-- Vendor
	self:AddCompanion(MountDB, 43899, 33976, 3)
	self:AddCompanionFlags(MountDB, 43899, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43899, 1, 24510)

	-- Swift Brewfest Ram - 43900
	-- type15.-1slevel150method_vendorsprice00000000descRam Racing Apprenticetype7locs14nameDriz Tumblequickid24510spellid43900rarity4level60methodsold-byid33977rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 43900, 33977, 4)
	self:AddCompanionFlags(MountDB, 43900, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43900, 1, 24510)

	-- Cenarion War Hippogryph - 43927
	-- type15.-1slevel300method_vendorsprice00000000descCenarion Expedition Quartermastertype7react11minlevel60locs3521nameFedryen Swiftspearclassification1id17904spellid43927source2rarity4level70methodsold-byid33999rlevel70
	-- Vendor
	self:AddCompanion(MountDB, 43927, 33999, 4)
	self:AddCompanionFlags(MountDB, 43927, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43927, 1, 17904)

	-- Merciless Nether Drake - 44744
	-- type15.-1slevel300method_redemptionUnknownspellid44744rarity4level70methodredemptionid34092rlevel70
	-- Redemption
	self:AddCompanion(MountDB, 44744, 34092, 4)
	self:AddCompanionFlags(MountDB, 44744, 10)
	-- No acquire information

	-- Swift White Hawkstrider - 46628
	-- type15.-1slevel150spellid46628method_dropsdescLord of the Blood Elvestype7react33disp22906minlevel72lootCount4totalLootCount6321locs4095nameKael'thas Sunstriderclassification1id24664rarity4level60methoddropped-byid35513rlevel60
	-- Instance: 4095 - expansion1type1limit5minlevel70maxlevel70territory1nameMagisters' Terracecategory3id4095
	-- Mob Drop
	self:AddCompanion(MountDB, 46628, 35513, 4)
	self:AddCompanionFlags(MountDB, 46628, 6)
	self:AddCompanionAcquire(MountDB, 46628, 4, 24664)

	-- Magic Broom - 47977
	-- type15.-1slevel75speed0.5spellid47977rarity3level1methodid37011rlevel30
	self:AddCompanion(MountDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 48025
	-- type15.-1slevel75spellid48025rarity4level60methodid37012rlevel60
	self:AddCompanion(MountDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- type15.-1slevel150method_vendorsprice0002056030205593020558300000descMount Vendortype7react11minlevel55locs2918nameLieutenant Karterid12783spellid48027source8rarity4level60methodsold-byid35906rlevel60
	-- Vendor
	self:AddCompanion(MountDB, 48027, 35906, 4)
	self:AddCompanionFlags(MountDB, 48027, 1,2,3)
	self:AddCompanionAcquire(MountDB, 48027, 1, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1slevel300spellid49193rarity4level70methodid37676rlevel70
	self:AddCompanion(MountDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 51412
	-- type15.-1slevel150spellid51412rarity4level60methodid38576rlevel60
	self:AddCompanion(MountDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

end
