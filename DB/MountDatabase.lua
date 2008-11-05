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

	local companioncount = 0

	-- Brown Horse Bridle - 458
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHorse Breederreact13minlevel35locs15nameGregor MacVinceid4885type7price10000000descHorse Breederreact03minlevel10locs12nameKatie Hunterid384type7price10000000descHorse Breederreact13minlevel32locs267nameMerideth Carlsonid2357type7price10000000descHorse Breederreact13minlevel25locs11nameUnger Statforthid1460spellid458item_bindsBOPsource2method_dropstype7descStable Masterreact13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity3methoddropped-by,sold-bylevel30id5656
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 458, 5656, 3)
	self:AddCompanionFlags(MountDB, 458, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 458, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Black Stallion Bridle - 470
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHorse Breederreact13minlevel25locs11nameUnger Statforthid1460spellid470item_bindsBOPsource12method_dropstype7descStable Masterreact13minlevel30lootCount3totalLootCount34locs12nameErmaid6749rarity3methoddropped-by,sold-bylevel30id2411
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 470, 2411, 3)
	self:AddCompanionFlags(MountDB, 470, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 470, 4, 6749, 1, 1460)

	-- Pinto Bridle - 472
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHorse Breederreact13minlevel35locs15nameGregor MacVinceid4885type7price10000000descHorse Breederreact03minlevel10locs12nameKatie Hunterid384type7price10000000descHorse Breederreact13minlevel32locs267nameMerideth Carlsonid2357type7price10000000descHorse Breederreact13minlevel25locs11nameUnger Statforthid1460spellid472item_bindsBOPsource2method_dropstype7descStable Masterreact13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity3methoddropped-by,sold-bylevel30id2414
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 472, 2414, 3)
	self:AddCompanionFlags(MountDB, 472, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 472, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Timber Wolf - 580
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descKennel Masterreact31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid580item_bindsBOPsource2rarity3methodsold-bylevel30id1132
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 580, 1132, 3)
	self:AddCompanionFlags(MountDB, 580, 2,3)
	self:AddCompanionAcquire(MountDB, 580, 1, 3362)

	-- Chestnut Mare Bridle - 6648
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHorse Breederreact13minlevel35locs15nameGregor MacVinceid4885type7price10000000descHorse Breederreact03minlevel10locs12nameKatie Hunterid384type7price10000000descHorse Breederreact13minlevel32locs267nameMerideth Carlsonid2357type7price10000000descHorse Breederreact13minlevel25locs11nameUnger Statforthid1460spellid6648item_bindsBOPsource12method_dropstype7descStable Masterreact13minlevel30lootCount3totalLootCount34locs12nameErmaid6749rarity3methoddropped-by,sold-bylevel30id5655
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6648, 5655, 3)
	self:AddCompanionFlags(MountDB, 6648, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 6648, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Dire Wolf - 6653
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descKennel Masterreact31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid6653item_bindsBOPsource2rarity3method_queststype0choiceitems29221113332115290156651side4coin8nameJoining the Battlelevel73id1category52597methodsold-by,rewardfromlevel30id5665
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6653, 5665, 3)
	self:AddCompanionFlags(MountDB, 6653, 2,3,4)
	self:AddCompanionAcquire(MountDB, 6653, 1, 3362, 2, 1)

	-- Horn of the Brown Wolf - 6654
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descKennel Masterreact31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid6654item_bindsBOPsource2rarity3methodsold-bylevel30id5668
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6654, 5668, 3)
	self:AddCompanionFlags(MountDB, 6654, 2,3)
	self:AddCompanionAcquire(MountDB, 6654, 1, 3362)

	-- Gray Ram - 6777
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descRam Breederreact13minlevel10locs1nameVeron Amberstillid1261spellid6777item_bindsBOPsource2rarity3methodsold-bylevel30id5864
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6777, 5864, 3)
	self:AddCompanionFlags(MountDB, 6777, 1,3)
	self:AddCompanionAcquire(MountDB, 6777, 1, 1261)

	-- White Ram - 6898
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descRam Breederreact13minlevel10locs1nameVeron Amberstillid1261spellid6898item_bindsBOPsource2rarity3methodsold-bylevel30id5873
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6898, 5873, 3)
	self:AddCompanionFlags(MountDB, 6898, 1,3)
	self:AddCompanionAcquire(MountDB, 6898, 1, 1261)

	-- Brown Ram - 6899
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descRam Breederreact13minlevel10locs1nameVeron Amberstillid1261spellid6899item_bindsBOPsource2rarity3methodsold-bylevel30id5872
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6899, 5872, 3)
	self:AddCompanionFlags(MountDB, 6899, 1,3)
	self:AddCompanionAcquire(MountDB, 6899, 1, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descSaber Handlerreact13minlevel35locs1657nameLelanaiid4730spellid8394item_bindsBOPsource2rarity3methodsold-bylevel30id8631
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 8394, 8631, 3)
	self:AddCompanionFlags(MountDB, 8394, 1,3)
	self:AddCompanionAcquire(MountDB, 8394, 1, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descRaptor Handlerreact31minlevel45locs14nameZjolnirid7952spellid8395item_bindsBOPsource2rarity3method_queststype0choiceitems29221113332115290156651side4coin8nameJoining the Battlelevel73id1category52597methodsold-by,rewardfromlevel30id8588
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 8395, 8588, 3)
	self:AddCompanionFlags(MountDB, 8395, 2,3,4)
	self:AddCompanionAcquire(MountDB, 8395, 1, 7952, 2, 1)

	-- Reins of the Spotted Frostsaber - 10789
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descSaber Handlerreact13minlevel35locs1657nameLelanaiid4730spellid10789item_bindsBOPsource2rarity3methodsold-bylevel30id8632
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10789, 8632, 3)
	self:AddCompanionFlags(MountDB, 10789, 1,3)
	self:AddCompanionAcquire(MountDB, 10789, 1, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descSaber Handlerreact13minlevel35locs1657nameLelanaiid4730spellid10793item_bindsBOPsource2rarity3methodsold-bylevel30id8629
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10793, 8629, 3)
	self:AddCompanionFlags(MountDB, 10793, 1,3)
	self:AddCompanionAcquire(MountDB, 10793, 1, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1rlevel40slevel75spellid10795item_bindsBOUrarity1methodlevel40id8589
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descRaptor Handlerreact31minlevel45locs14nameZjolnirid7952spellid10796item_bindsBOPsource2rarity3methodsold-bylevel30id8591
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10796, 8591, 3)
	self:AddCompanionFlags(MountDB, 10796, 2,3)
	self:AddCompanionAcquire(MountDB, 10796, 1, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descRaptor Handlerreact31minlevel45locs14nameZjolnirid7952spellid10799item_bindsBOPsource2rarity3methodsold-bylevel30id8592
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10799, 8592, 3)
	self:AddCompanionFlags(MountDB, 10799, 2,3)
	self:AddCompanionAcquire(MountDB, 10799, 1, 7952)

	-- Red Mechanostrider - 10873
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid10873item_bindsBOPsource2rarity3methodsold-bylevel30id8563
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10873, 8563, 3)
	self:AddCompanionFlags(MountDB, 10873, 1,3)
	self:AddCompanionAcquire(MountDB, 10873, 1, 7955)

	-- Blue Mechanostrider - 10969
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid10969item_bindsBOPsource2rarity3methodsold-bylevel30id8595
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10969, 8595, 3)
	self:AddCompanionFlags(MountDB, 10969, 1,3)
	self:AddCompanionAcquire(MountDB, 10969, 1, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1rlevel60slevel150spellid15779item_bindsBOPrarity4methodlevel60id13326
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1rlevel60slevel150spellid16055item_bindsBOPrarity4methodlevel60id12303
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 16056
	-- type15.-1rlevel60slevel150spellid16056item_bindsBOPrarity4methodlevel60id12302
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1rlevel60slevel150spellid16080item_bindsBOPrarity4methodlevel60id12330
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1rlevel60slevel150spellid16081item_bindsBOPrarity4methodlevel60id12351
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1rlevel60slevel150spellid16082item_bindsBOPsource1method_dropstype7descStable Masterreact13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity4methoddropped-bylevel60id12354
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16082, 12354, 4)
	self:AddCompanionFlags(MountDB, 16082, 1,2,15)
	self:AddCompanionAcquire(MountDB, 16082, 4, 6749)

	-- White Stallion Bridle - 16083
	-- type15.-1rlevel60slevel150spellid16083item_bindsBOPsource1method_dropstype7descStable Masterreact13minlevel30lootCount1totalLootCount34locs12nameErmaid6749rarity4methoddropped-bylevel60id12353
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16083, 12353, 4)
	self:AddCompanionFlags(MountDB, 16083, 1,2,15)
	self:AddCompanionAcquire(MountDB, 16083, 4, 6749)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1rlevel60slevel150spellid16084item_bindsBOPrarity4methodlevel60id8586
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- type15.-1rlevel60slevel75method_vendorstype7price100000000descWintersaber Trainerreact23minlevel62locs618nameRivern Frostwindid10618spellid17229item_bindsBOPsource2rarity4methodsold-bylevel60id13086
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17229, 13086, 4)
	self:AddCompanionFlags(MountDB, 17229, 1,3)
	self:AddCompanionAcquire(MountDB, 17229, 1, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1rlevel60slevel150spellid17450item_bindsBOPrarity4methodlevel60id13317
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid17453item_bindsBOPsource2rarity3methodsold-bylevel30id13321
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17453, 13321, 3)
	self:AddCompanionFlags(MountDB, 17453, 1,3)
	self:AddCompanionAcquire(MountDB, 17453, 1, 7955)

	-- Unpainted Mechanostrider - 17454
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid17454item_bindsBOPsource2rarity3methodsold-bylevel30id13322
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17454, 13322, 3)
	self:AddCompanionFlags(MountDB, 17454, 1,3)
	self:AddCompanionAcquire(MountDB, 17454, 1, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1rlevel60slevel150spellid17459item_bindsBOPrarity4methodlevel60id13327
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1rlevel60slevel150spellid17460item_bindsBOPrarity4methodlevel60id13329
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1rlevel60slevel150spellid17461item_bindsBOPrarity4methodlevel60id13328
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descUndead Horse Merchantreact31minlevel30locs85nameZachariah Postid4731spellid17462item_bindsBOPsource2rarity3methodsold-bylevel30id13331
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17462, 13331, 3)
	self:AddCompanionFlags(MountDB, 17462, 2,3)
	self:AddCompanionAcquire(MountDB, 17462, 1, 4731)

	-- Blue Skeletal Horse - 17463
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descUndead Horse Merchantreact31minlevel30locs85nameZachariah Postid4731spellid17463item_bindsBOPsource2rarity3method_queststype0choiceitems29221113332115290156651side4coin8nameJoining the Battlelevel73id1category52597methodsold-by,rewardfromlevel30id13332
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17463, 13332, 3)
	self:AddCompanionFlags(MountDB, 17463, 2,3,4)
	self:AddCompanionAcquire(MountDB, 17463, 1, 4731, 2, 1)

	-- Brown Skeletal Horse - 17464
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descUndead Horse Merchantreact31minlevel30locs85nameZachariah Postid4731spellid17464item_bindsBOPsource2rarity3methodsold-bylevel30id13333
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17464, 13333, 3)
	self:AddCompanionFlags(MountDB, 17464, 2,3)
	self:AddCompanionAcquire(MountDB, 17464, 1, 4731)

	-- Green Skeletal Warhorse - 17465
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descUndead Horse Merchantreact31minlevel30locs85nameZachariah Postid4731spellid17465item_bindsBOPsource2rarity4methodsold-bylevel60id13334
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17465, 13334, 4)
	self:AddCompanionFlags(MountDB, 17465, 2,3)
	self:AddCompanionAcquire(MountDB, 17465, 1, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1rlevel60slevel150spellid17481item_bindsBOPsource1method_dropstype6react33disp10729minlevel62lootCount1totalLootCount12362locs2017nameBaron Rivendareid10440classification1rarity4methoddropped-bylevel60id13335
	-- Instance: 2017 - type1minlevel58maxlevel60territory1nameStratholmeid2017category3
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17481, 13335, 4)
	self:AddCompanionFlags(MountDB, 17481, 1,2,6)
	self:AddCompanionAcquire(MountDB, 17481, 4, 10440)

	-- Gray Kodo - 18989
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descKodo Mountsreact31minlevel45locs215nameHarb Clawhoofid3685spellid18989item_bindsBOPsource2rarity3methodsold-bylevel30id15277
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18989, 15277, 3)
	self:AddCompanionFlags(MountDB, 18989, 2,3)
	self:AddCompanionAcquire(MountDB, 18989, 1, 3685)

	-- Brown Kodo - 18990
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descKodo Mountsreact31minlevel45locs215nameHarb Clawhoofid3685spellid18990item_bindsBOPsource2rarity3method_queststype0choiceitems29221113332115290156651side4coin8nameJoining the Battlelevel73id1category52597methodsold-by,rewardfromlevel30id15290
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18990, 15290, 3)
	self:AddCompanionFlags(MountDB, 18990, 2,3,4)
	self:AddCompanionAcquire(MountDB, 18990, 1, 3685, 2, 1)

	-- Green Kodo - 18991
	-- type15.-1rlevel60slevel150spellid18991item_bindsBOPrarity4methodlevel60id15292
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1rlevel60slevel150spellid18992item_bindsBOPrarity4methodlevel60id15293
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1rlevel55slevel75spellid22717item_bindsBOPsource8rarity4methodlevel55id18241
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1rlevel55slevel75spellid22718item_bindsBOPsource8rarity4methodlevel55id18247
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 22719
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056030205593020558300000descMount Vendorreact11minlevel55locs2918nameLieutenant Karterid12783spellid22719item_bindsBOPsource8rarity4methodsold-bylevel60id29465
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22719, 29465, 4)
	self:AddCompanionFlags(MountDB, 22719, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22719, 1, 12783)

	-- Black War Ram - 22720
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056030205593020558300000descMount Vendorreact11minlevel55locs2918nameLieutenant Karterid12783spellid22720item_bindsBOPsource8rarity4methodsold-bylevel60id29467
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22720, 29467, 4)
	self:AddCompanionFlags(MountDB, 22720, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22720, 1, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056030205593020558300000descMount Quartermasterreact21minlevel55locs2917nameRaider Borkid12796spellid22721item_bindsBOPsource8rarity4methodsold-bylevel60id29472
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22721, 29472, 4)
	self:AddCompanionFlags(MountDB, 22721, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22721, 1, 12796)

	-- Red Skeletal Warhorse - 22722
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056030205593020558300000descMount Quartermasterreact21minlevel55locs2917nameRaider Borkid12796spellid22722item_bindsBOPsource8rarity4methodsold-bylevel60id29470
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22722, 29470, 4)
	self:AddCompanionFlags(MountDB, 22722, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22722, 1, 12796)

	-- Reins of the Black War Tiger - 22723
	-- type15.-1rlevel60slevel150method_vendorstype7price000205603020559302055830react11minlevel70locs35243525148-1nameGeneral Goods Vendorid26304type7price0002056030205593020558300000descMount Vendorreact11minlevel55locs2918nameLieutenant Karterid12783spellid22723item_bindsBOPsource28rarity4methodsold-bylevel60id29471
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22723, 29471, 4)
	self:AddCompanionFlags(MountDB, 22723, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22723, 1, 12783, 1, 26304)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1rlevel55slevel75spellid22724item_bindsBOPsource8rarity4methodlevel55id18245
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descSaber Handlerreact13minlevel35locs1657nameLelanaiid4730spellid23219item_bindsBOPsource2rarity4methodsold-bylevel60id18767
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23219, 18767, 4)
	self:AddCompanionFlags(MountDB, 23219, 1,3)
	self:AddCompanionAcquire(MountDB, 23219, 1, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descSaber Handlerreact13minlevel35locs1657nameLelanaiid4730spellid23221item_bindsBOPsource2rarity4methodsold-bylevel60id18766
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23221, 18766, 4)
	self:AddCompanionFlags(MountDB, 23221, 1,3)
	self:AddCompanionAcquire(MountDB, 23221, 1, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid23222item_bindsBOPsource2rarity4methodsold-bylevel60id18774
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23222, 18774, 4)
	self:AddCompanionFlags(MountDB, 23222, 1,3)
	self:AddCompanionAcquire(MountDB, 23222, 1, 7955)

	-- Swift White Mechanostrider - 23223
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid23223item_bindsBOPsource2rarity4methodsold-bylevel60id18773
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23223, 18773, 4)
	self:AddCompanionFlags(MountDB, 23223, 1,3)
	self:AddCompanionAcquire(MountDB, 23223, 1, 7955)

	-- Swift Green Mechanostrider - 23225
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descMechanostrider Merchantreact13minlevel50locs1nameMilli Featherwhistleid7955spellid23225item_bindsBOPsource2rarity4methodsold-bylevel60id18772
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23225, 18772, 4)
	self:AddCompanionFlags(MountDB, 23225, 1,3)
	self:AddCompanionAcquire(MountDB, 23225, 1, 7955)

	-- Swift Palomino - 23227
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descHorse Breederreact13minlevel35locs15nameGregor MacVinceid4885type7price100000000descHorse Breederreact03minlevel10locs12nameKatie Hunterid384type7price100000000descHorse Breederreact13minlevel32locs267nameMerideth Carlsonid2357spellid23227item_bindsBOPsource2method_dropstype7descStable Masterreact13minlevel30lootCount1totalLootCount34locs12nameErmaid6749rarity4method_queststype0choiceitems187771187761187781coin0nameWhite Stallion Exchangelevel1id7677category00methoddropped-by,sold-by,rewardfromlevel60id18776
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23227, 18776, 4)
	self:AddCompanionFlags(MountDB, 23227, 1,2,3,4,15)
	self:AddCompanionAcquire(MountDB, 23227, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift White Steed - 23228
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descHorse Breederreact13minlevel35locs15nameGregor MacVinceid4885type7price100000000descHorse Breederreact03minlevel10locs12nameKatie Hunterid384type7price100000000descHorse Breederreact13minlevel32locs267nameMerideth Carlsonid2357spellid23228item_bindsBOPsource2method_dropstype7descStable Masterreact13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity4method_queststype0choiceitems187771187761187781coin0nameWhite Stallion Exchangelevel1id7677category00methoddropped-by,sold-by,rewardfromlevel60id18778
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23228, 18778, 4)
	self:AddCompanionFlags(MountDB, 23228, 1,2,3,4,15)
	self:AddCompanionAcquire(MountDB, 23228, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Steed - 23229
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descHorse Breederreact13minlevel35locs15nameGregor MacVinceid4885type7price100000000descHorse Breederreact03minlevel10locs12nameKatie Hunterid384type7price100000000descHorse Breederreact13minlevel32locs267nameMerideth Carlsonid2357spellid23229item_bindsBOPsource2method_dropstype7descStable Masterreact13minlevel30lootCount2totalLootCount34locs12nameErmaid6749rarity4method_queststype0choiceitems187771187761187781coin0nameWhite Stallion Exchangelevel1id7677category00methoddropped-by,sold-by,rewardfromlevel60id18777
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23229, 18777, 4)
	self:AddCompanionFlags(MountDB, 23229, 1,2,3,4,15)
	self:AddCompanionAcquire(MountDB, 23229, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Ram - 23238
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descRam Breederreact13minlevel10locs1nameVeron Amberstillid1261spellid23238item_bindsBOPsource2rarity4methodsold-bylevel60id18786
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23238, 18786, 4)
	self:AddCompanionFlags(MountDB, 23238, 1,3)
	self:AddCompanionAcquire(MountDB, 23238, 1, 1261)

	-- Swift Gray Ram - 23239
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descRam Breederreact13minlevel10locs1nameVeron Amberstillid1261spellid23239item_bindsBOPsource2rarity4methodsold-bylevel60id18787
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23239, 18787, 4)
	self:AddCompanionFlags(MountDB, 23239, 1,3)
	self:AddCompanionAcquire(MountDB, 23239, 1, 1261)

	-- Swift White Ram - 23240
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descRam Breederreact13minlevel10locs1nameVeron Amberstillid1261spellid23240item_bindsBOPsource2rarity4methodsold-bylevel60id18785
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23240, 18785, 4)
	self:AddCompanionFlags(MountDB, 23240, 1,3)
	self:AddCompanionAcquire(MountDB, 23240, 1, 1261)

	-- Swift Blue Raptor - 23241
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descRaptor Handlerreact31minlevel45locs14nameZjolnirid7952spellid23241item_bindsBOPsource2rarity4methodsold-bylevel60id18788
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23241, 18788, 4)
	self:AddCompanionFlags(MountDB, 23241, 2,3)
	self:AddCompanionAcquire(MountDB, 23241, 1, 7952)

	-- Swift Olive Raptor - 23242
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descRaptor Handlerreact31minlevel45locs14nameZjolnirid7952spellid23242item_bindsBOPsource2rarity4methodsold-bylevel60id18789
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23242, 18789, 4)
	self:AddCompanionFlags(MountDB, 23242, 2,3)
	self:AddCompanionAcquire(MountDB, 23242, 1, 7952)

	-- Swift Orange Raptor - 23243
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descRaptor Handlerreact31minlevel45locs14nameZjolnirid7952spellid23243item_bindsBOPsource2rarity4methodsold-bylevel60id18790
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23243, 18790, 4)
	self:AddCompanionFlags(MountDB, 23243, 2,3)
	self:AddCompanionAcquire(MountDB, 23243, 1, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descUndead Horse Merchantreact31minlevel30locs85nameZachariah Postid4731spellid23246item_bindsBOPsource2rarity4methodsold-bylevel60id18791
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23246, 18791, 4)
	self:AddCompanionFlags(MountDB, 23246, 2,3)
	self:AddCompanionAcquire(MountDB, 23246, 1, 4731)

	-- Great White Kodo - 23247
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKodo Mountsreact31minlevel45locs215nameHarb Clawhoofid3685spellid23247item_bindsBOPsource2rarity4methodsold-bylevel60id18793
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23247, 18793, 4)
	self:AddCompanionFlags(MountDB, 23247, 2,3)
	self:AddCompanionAcquire(MountDB, 23247, 1, 3685)

	-- Great Gray Kodo - 23248
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKodo Mountsreact31minlevel45locs215nameHarb Clawhoofid3685spellid23248item_bindsBOPsource2rarity4methodsold-bylevel60id18795
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23248, 18795, 4)
	self:AddCompanionFlags(MountDB, 23248, 2,3)
	self:AddCompanionAcquire(MountDB, 23248, 1, 3685)

	-- Great Brown Kodo - 23249
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKodo Mountsreact31minlevel45locs215nameHarb Clawhoofid3685spellid23249item_bindsBOPsource2rarity4methodsold-bylevel60id18794
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23249, 18794, 4)
	self:AddCompanionFlags(MountDB, 23249, 2,3)
	self:AddCompanionAcquire(MountDB, 23249, 1, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKennel Masterreact31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid23250item_bindsBOPsource2rarity4methodsold-bylevel60id18796
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23250, 18796, 4)
	self:AddCompanionFlags(MountDB, 23250, 2,3)
	self:AddCompanionAcquire(MountDB, 23250, 1, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKennel Masterreact31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid23251item_bindsBOPsource2rarity4methodsold-bylevel60id18797
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23251, 18797, 4)
	self:AddCompanionFlags(MountDB, 23251, 2,3)
	self:AddCompanionAcquire(MountDB, 23251, 1, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKennel Masterreact31minlevel45locs1637nameOgunaro Wolfrunnerid3362spellid23252item_bindsBOPsource2rarity4methodsold-bylevel60id18798
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23252, 18798, 4)
	self:AddCompanionFlags(MountDB, 23252, 2,3)
	self:AddCompanionAcquire(MountDB, 23252, 1, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descSaber Handlerreact13minlevel35locs1657nameLelanaiid4730spellid23338item_bindsBOPsource2rarity4methodsold-bylevel60id18902
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23338, 18902, 4)
	self:AddCompanionFlags(MountDB, 23338, 1,3)
	self:AddCompanionAcquire(MountDB, 23338, 1, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- type15.-1rlevel60slevel150method_vendorstype7price000205605000000000descFrostwolf Supply Officerreact31minlevel58maxlevel68locs2597nameGrunnda Wolfheartid13218classification1type7price0002056050descFrostwolf Supply Officerreact31minlevel58locs36267nameJekyll Flandringid13219classification1spellid23509item_bindsBOPsource8rarity4methodsold-bylevel60id19029
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23509, 19029, 4)
	self:AddCompanionFlags(MountDB, 23509, 2,3)
	self:AddCompanionAcquire(MountDB, 23509, 1, 13218, 1, 13219)

	-- Stormpike Battle Charger - 23510
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056050descStormpike Supply Officerreact13minlevel68locs2597nameGaelden Hammersmithid13216classification1type7price000205605000000000descStormpike Supply Officerreact13minlevel58locs36nameThanthaldis Snowgleamid13217classification1spellid23510item_bindsBOPsource8rarity4methodsold-bylevel60id19030
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23510, 19030, 4)
	self:AddCompanionFlags(MountDB, 23510, 1,3)
	self:AddCompanionAcquire(MountDB, 23510, 1, 13216, 1, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1rlevel60slevel150spellid24242item_bindsBOPsource1method_dropstype7react33lootCount35totalLootCount8107locs1977nameBloodlord Mandokirid11382classification3rarity4methoddropped-bylevel60id19872
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 24242, 19872, 4)
	self:AddCompanionFlags(MountDB, 24242, 1,2,7)
	self:AddCompanionAcquire(MountDB, 24242, 4, 11382)

	-- Swift Zulian Tiger - 24252
	-- type15.-1rlevel60slevel150spellid24252item_bindsBOPsource1method_dropstype7react33lootCount9totalLootCount3676locs1977nameHigh Priest Thekalid14509classification3rarity4methoddropped-bylevel60id19902
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 24252, 19902, 4)
	self:AddCompanionFlags(MountDB, 24252, 1,2,7)
	self:AddCompanionAcquire(MountDB, 24252, 4, 14509)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1rlevel60slevel150spellid26656item_bindsBOPrarity5methodlevel60id21176
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 32235
	-- type15.-1rlevel70slevel225method_vendorstype7price100000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32235item_bindsBOPsource2rarity3methodsold-bylevel70id25470
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32235, 25470, 3)
	self:AddCompanionFlags(MountDB, 32235, 1,3)
	self:AddCompanionAcquire(MountDB, 32235, 1, 20510)

	-- Ebon Gryphon - 32239
	-- type15.-1rlevel70slevel225method_vendorstype7price100000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32239item_bindsBOPsource2rarity3methodsold-bylevel70id25471
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32239, 25471, 3)
	self:AddCompanionFlags(MountDB, 32239, 1,3)
	self:AddCompanionAcquire(MountDB, 32239, 1, 20510)

	-- Snowy Gryphon - 32240
	-- type15.-1rlevel70slevel225method_vendorstype7price100000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32240item_bindsBOPsource2rarity3methodsold-bylevel70id25472
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32240, 25472, 3)
	self:AddCompanionFlags(MountDB, 32240, 1,3)
	self:AddCompanionAcquire(MountDB, 32240, 1, 20510)

	-- Swift Blue Gryphon - 32242
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32242item_bindsBOPsource2rarity4methodsold-bylevel70id25473
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32242, 25473, 4)
	self:AddCompanionFlags(MountDB, 32242, 1,3)
	self:AddCompanionAcquire(MountDB, 32242, 1, 20510)

	-- Tawny Windrider - 32243
	-- type15.-1rlevel70slevel225method_vendorstype7price100000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32243item_bindsBOPsource2rarity3methodsold-bylevel70id25474
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32243, 25474, 3)
	self:AddCompanionFlags(MountDB, 32243, 2,3)
	self:AddCompanionAcquire(MountDB, 32243, 1, 20494)

	-- Blue Windrider - 32244
	-- type15.-1rlevel70slevel225method_vendorstype7price100000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32244item_bindsBOPsource2rarity3methodsold-bylevel70id25475
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32244, 25475, 3)
	self:AddCompanionFlags(MountDB, 32244, 2,3)
	self:AddCompanionAcquire(MountDB, 32244, 1, 20494)

	-- Green Windrider - 32245
	-- type15.-1rlevel70slevel225method_vendorstype7price100000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32245item_bindsBOPsource2rarity3methodsold-bylevel70id25476
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32245, 25476, 3)
	self:AddCompanionFlags(MountDB, 32245, 2,3)
	self:AddCompanionAcquire(MountDB, 32245, 1, 20494)

	-- Swift Red Windrider - 32246
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32246item_bindsBOPsource2rarity4methodsold-bylevel70id25477
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32246, 25477, 4)
	self:AddCompanionFlags(MountDB, 32246, 2,3)
	self:AddCompanionAcquire(MountDB, 32246, 1, 20494)

	-- Swift Red Gryphon - 32289
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32289item_bindsBOPsource2rarity4methodsold-bylevel70id25527
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32289, 25527, 4)
	self:AddCompanionFlags(MountDB, 32289, 1,3)
	self:AddCompanionAcquire(MountDB, 32289, 1, 20510)

	-- Swift Green Gryphon - 32290
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32290item_bindsBOPsource2rarity4methodsold-bylevel70id25528
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32290, 25528, 4)
	self:AddCompanionFlags(MountDB, 32290, 1,3)
	self:AddCompanionAcquire(MountDB, 32290, 1, 20510)

	-- Swift Purple Gryphon - 32292
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descGryphon Keeperreact13minlevel70locs3520nameBrunn Flamebeardid20510spellid32292item_bindsBOPsource2rarity4methodsold-bylevel70id25529
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32292, 25529, 4)
	self:AddCompanionFlags(MountDB, 32292, 1,3)
	self:AddCompanionAcquire(MountDB, 32292, 1, 20510)

	-- Swift Green Windrider - 32295
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32295item_bindsBOPsource2rarity4methodsold-bylevel70id25531
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32295, 25531, 4)
	self:AddCompanionFlags(MountDB, 32295, 2,3)
	self:AddCompanionAcquire(MountDB, 32295, 1, 20494)

	-- Swift Yellow Windrider - 32296
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32296item_bindsBOPsource2rarity4methodsold-bylevel70id25532
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32296, 25532, 4)
	self:AddCompanionFlags(MountDB, 32296, 2,3)
	self:AddCompanionAcquire(MountDB, 32296, 1, 20494)

	-- Swift Purple Windrider - 32297
	-- type15.-1rlevel70slevel300method_vendorstype7price200000000descWindrider Keeperreact31minlevel70locs3520nameDama Wildmaneid20494spellid32297item_bindsBOPsource2rarity4methodsold-bylevel70id25533
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32297, 25533, 4)
	self:AddCompanionFlags(MountDB, 32297, 2,3)
	self:AddCompanionAcquire(MountDB, 32297, 1, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid33660item_bindsBOPsource2rarity4methodsold-bylevel60id28936
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 33660, 28936, 4)
	self:AddCompanionFlags(MountDB, 33660, 2,3)
	self:AddCompanionAcquire(MountDB, 33660, 1, 16264)

	-- Brown Elekk - 34406
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descElekk Breederreact13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid34406item_bindsBOPsource2rarity3methodsold-bylevel30id28481
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34406, 28481, 3)
	self:AddCompanionFlags(MountDB, 34406, 1,3)
	self:AddCompanionAcquire(MountDB, 34406, 1, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- type15.-1rlevel60slevel150method_vendorstype7price000260451002604420000000descBlade Merchantreact13minlevel70locs3518nameAldraanid21485classification1type7price000260451002604420000000descBlade Merchantreact31minlevel70locs3518nameCoreielid21474classification1spellid34790item_bindsBOPsource2rarity4methodsold-bylevel60id29228
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34790, 29228, 4)
	self:AddCompanionFlags(MountDB, 34790, 1,2,3)
	self:AddCompanionAcquire(MountDB, 34790, 1, 21474, 1, 21485)

	-- Red Hawkstrider - 34795
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid34795item_bindsBOPsource2rarity3methodsold-bylevel30id28927
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34795, 28927, 3)
	self:AddCompanionFlags(MountDB, 34795, 2,3)
	self:AddCompanionAcquire(MountDB, 34795, 1, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid34896item_bindsBOPsource2rarity4methodsold-bylevel60id29102
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34896, 29102, 4)
	self:AddCompanionFlags(MountDB, 34896, 2,3)
	self:AddCompanionAcquire(MountDB, 34896, 1, 20241)

	-- Reins of the White War Talbuk - 34897
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid34897item_bindsBOPsource2rarity4methodsold-bylevel60id29103
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34897, 29103, 4)
	self:AddCompanionFlags(MountDB, 34897, 2,3)
	self:AddCompanionAcquire(MountDB, 34897, 1, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descKurenai Quartermasterreact13minlevel65locs3518nameTrader Narasuid20240spellid34898item_bindsBOPsource2rarity4methodsold-bylevel60id29229
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34898, 29229, 4)
	self:AddCompanionFlags(MountDB, 34898, 1,3)
	self:AddCompanionAcquire(MountDB, 34898, 1, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid34899item_bindsBOPsource2rarity4methodsold-bylevel60id29105
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34899, 29105, 4)
	self:AddCompanionFlags(MountDB, 34899, 2,3)
	self:AddCompanionAcquire(MountDB, 34899, 1, 20241)

	-- Purple Hawkstrider - 35018
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid35018item_bindsBOPsource2rarity3methodsold-bylevel30id29222
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35018, 29222, 3)
	self:AddCompanionFlags(MountDB, 35018, 2,3)
	self:AddCompanionAcquire(MountDB, 35018, 1, 16264)

	-- Blue Hawkstrider - 35020
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid35020item_bindsBOPsource2rarity3methodsold-bylevel30id29220
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35020, 29220, 3)
	self:AddCompanionFlags(MountDB, 35020, 2,3)
	self:AddCompanionAcquire(MountDB, 35020, 1, 16264)

	-- Black Hawkstrider - 35022
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid35022item_bindsBOPsource2rarity3method_queststype0choiceitems29221113332115290156651side4coin8nameJoining the Battlelevel73id1category52597methodsold-by,rewardfromlevel30id29221
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35022, 29221, 3)
	self:AddCompanionFlags(MountDB, 35022, 2,3,4)
	self:AddCompanionAcquire(MountDB, 35022, 1, 16264, 2, 1)

	-- Swift Green Hawkstrider - 35025
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid35025item_bindsBOPsource2rarity4methodsold-bylevel60id29223
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35025, 29223, 4)
	self:AddCompanionFlags(MountDB, 35025, 2,3)
	self:AddCompanionAcquire(MountDB, 35025, 1, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descHawkstrider Breederreact31minlevel15locs3430nameWinaestraid16264spellid35027item_bindsBOPsource2rarity4methodsold-bylevel60id29224
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35027, 29224, 4)
	self:AddCompanionFlags(MountDB, 35027, 2,3)
	self:AddCompanionAcquire(MountDB, 35027, 1, 16264)

	-- Swift Warstrider - 35028
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056030205593020558300000descMount Quartermasterreact21minlevel55locs2917nameRaider Borkid12796spellid35028item_bindsBOPsource8rarity4methodsold-bylevel60id34129
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35028, 34129, 4)
	self:AddCompanionFlags(MountDB, 35028, 1,2,3)
	self:AddCompanionAcquire(MountDB, 35028, 1, 12796)

	-- Gray Elekk - 35710
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descElekk Breederreact13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35710item_bindsBOPsource2rarity3methodsold-bylevel30id29744
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35710, 29744, 3)
	self:AddCompanionFlags(MountDB, 35710, 1,3)
	self:AddCompanionAcquire(MountDB, 35710, 1, 17584)

	-- Purple Elekk - 35711
	-- type15.-1rlevel30slevel75method_vendorstype7price10000000descElekk Breederreact13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35711item_bindsBOPsource2rarity3methodsold-bylevel30id29743
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35711, 29743, 3)
	self:AddCompanionFlags(MountDB, 35711, 1,3)
	self:AddCompanionAcquire(MountDB, 35711, 1, 17584)

	-- Great Green Elekk - 35712
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descElekk Breederreact13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35712item_bindsBOPsource2rarity4methodsold-bylevel60id29746
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35712, 29746, 4)
	self:AddCompanionFlags(MountDB, 35712, 1,3)
	self:AddCompanionAcquire(MountDB, 35712, 1, 17584)

	-- Great Blue Elekk - 35713
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descElekk Breederreact13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35713item_bindsBOPsource2rarity4methodsold-bylevel60id29745
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35713, 29745, 4)
	self:AddCompanionFlags(MountDB, 35713, 1,3)
	self:AddCompanionAcquire(MountDB, 35713, 1, 17584)

	-- Great Purple Elekk - 35714
	-- type15.-1rlevel60slevel150method_vendorstype7price100000000descElekk Breederreact13minlevel14locs35243557nameTorallius the Pack Handlerid17584spellid35714item_bindsBOPsource2rarity4methodsold-bylevel60id29747
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35714, 29747, 4)
	self:AddCompanionFlags(MountDB, 35714, 1,3)
	self:AddCompanionAcquire(MountDB, 35714, 1, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1rlevel70slevel150spellid36702item_bindsBOPsource1method_dropstype6react33disp16416lootCount78totalLootCount35478locs3457nameAttumen the Huntsmanid15550classification3type6react33disp16040lootCount10totalLootCount6529locs3457nameAttumen the Huntsmanid16152classification3rarity4methoddropped-bylevel70id30480
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 36702, 30480, 4)
	self:AddCompanionFlags(MountDB, 36702, 1,2,7)
	self:AddCompanionAcquire(MountDB, 36702, 4, 15550, 4, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1rlevel70slevel300spellid37015item_bindsBOPrarity4methodlevel70id30609
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- type15.-1rlevel60slevel150method_vendorstype7price70000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid39315item_bindsBOPsource2rarity4methodsold-bylevel60id31829
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39315, 31829, 4)
	self:AddCompanionFlags(MountDB, 39315, 2,3)
	self:AddCompanionAcquire(MountDB, 39315, 1, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- type15.-1rlevel60slevel150method_vendorstype7price00026045702604415000000descBlade Merchantreact13minlevel70locs3518nameAldraanid21485classification1type7price00026045702604415000000descBlade Merchantreact31minlevel70locs3518nameCoreielid21474classification1spellid39316item_bindsBOPsource2rarity4methodsold-bylevel60id28915
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39316, 28915, 4)
	self:AddCompanionFlags(MountDB, 39316, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39316, 1, 21474, 1, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- type15.-1rlevel60slevel150method_vendorstype7price70000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid39317item_bindsBOPsource2rarity4methodsold-bylevel60id31831
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39317, 31831, 4)
	self:AddCompanionFlags(MountDB, 39317, 2,3)
	self:AddCompanionAcquire(MountDB, 39317, 1, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- type15.-1rlevel60slevel150method_vendorstype7price70000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid39318item_bindsBOPsource2rarity4methodsold-bylevel60id31833
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39318, 31833, 4)
	self:AddCompanionFlags(MountDB, 39318, 2,3)
	self:AddCompanionAcquire(MountDB, 39318, 1, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- type15.-1rlevel60slevel150method_vendorstype7price70000000descMag'har Quartermasterreact31minlevel65locs3518nameProvisioner Naselaid20241spellid39319item_bindsBOPsource2rarity4methodsold-bylevel60id31835
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39319, 31835, 4)
	self:AddCompanionFlags(MountDB, 39319, 2,3)
	self:AddCompanionAcquire(MountDB, 39319, 1, 20241)

	-- Green Riding Nether Ray - 39798
	-- type15.-1rlevel70slevel300method_vendorstype7price00000000descSkyguard Quartermasterreact11minlevel70locs3519nameGrellaid23367spellid39798item_bindsBOPsource2rarity4methodsold-bylevel70id32314
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39798, 32314, 4)
	self:AddCompanionFlags(MountDB, 39798, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39798, 1, 23367)

	-- Red Riding Nether Ray - 39800
	-- type15.-1rlevel70slevel300method_vendorstype7price00000000descSkyguard Quartermasterreact11minlevel70locs3519nameGrellaid23367spellid39800item_bindsBOPsource2rarity4methodsold-bylevel70id32317
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39800, 32317, 4)
	self:AddCompanionFlags(MountDB, 39800, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39800, 1, 23367)

	-- Purple Riding Nether Ray - 39801
	-- type15.-1rlevel70slevel300method_vendorstype7price00000000descSkyguard Quartermasterreact11minlevel70locs3519nameGrellaid23367spellid39801item_bindsBOPsource2rarity4methodsold-bylevel70id32316
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39801, 32316, 4)
	self:AddCompanionFlags(MountDB, 39801, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39801, 1, 23367)

	-- Silver Riding Nether Ray - 39802
	-- type15.-1rlevel70slevel300method_vendorstype7price00000000descSkyguard Quartermasterreact11minlevel70locs3519nameGrellaid23367spellid39802item_bindsBOPsource2rarity4methodsold-bylevel70id32318
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39802, 32318, 4)
	self:AddCompanionFlags(MountDB, 39802, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39802, 1, 23367)

	-- Blue Riding Nether Ray - 39803
	-- type15.-1rlevel70slevel300method_vendorstype7price00000000descSkyguard Quartermasterreact11minlevel70locs3519nameGrellaid23367spellid39803item_bindsBOPsource2rarity4methodsold-bylevel70id32319
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39803, 32319, 4)
	self:AddCompanionFlags(MountDB, 39803, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39803, 1, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1rlevel70slevel300spellid40192item_bindsBOPsource1method_dropstype7descLord of the Blood Elvesreact33disp20023minlevel73lootCount14totalLootCount3723locs37033845nameKael'thas Sunstriderid19622classification3type7descLord of the Blood Elvesreact33disp20023minlevel72lootCount1totalLootCount9689locs409537033845nameKael'thas Sunstriderid23054classification3rarity4methoddropped-bylevel70id32458
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1expansion1limit5minlevel70maxlevel70territory1nameMagisters' Terraceid4095category3
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 40192, 32458, 4)
	self:AddCompanionFlags(MountDB, 40192, 1,2,6,7,15)
	self:AddCompanionAcquire(MountDB, 40192, 4, 19622, 4, 23054)

	-- Reins of the Raven Lord - 41252
	-- type15.-1rlevel70slevel150spellid41252item_bindsBOPsource1method_dropstype10react33disp21492minlevel69lootCount12totalLootCount5155locs3791nameAnzuid23035classification1rarity4methoddropped-bylevel70id32768
	-- Instance: 3791 - type5expansion1minlevel67maxlevel69territory1nameAuchindoun: Sethekk Hallsid3791category3
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41252, 32768, 4)
	self:AddCompanionFlags(MountDB, 41252, 1,2,6)
	self:AddCompanionAcquire(MountDB, 41252, 4, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- type15.-1rlevel70slevel300method_redemptionUnknownmethod_vendorstype7price200000000react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41513item_bindsBOPsource23rarity4method_queststype0side1coin0nameOnyxien the Onyx Netherwing Drakelevel70givenitems328571id11111category23703methodredemption,rewardfromlevel70id32857
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41513, 32857, 4)
	self:AddCompanionFlags(MountDB, 41513, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41513, 2, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- type15.-1rlevel70slevel300method_redemptionUnknownmethod_vendorstype7price200000000react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41514item_bindsBOPsource23rarity4method_queststype0side1coin0nameSuraku the Azure Netherwing Drakelevel70givenitems328581id11112category23703methodredemption,rewardfromlevel70id32858
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41514, 32858, 4)
	self:AddCompanionFlags(MountDB, 41514, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41514, 2, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- type15.-1rlevel70slevel300method_redemptionUnknownmethod_vendorstype7price200000000react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41515item_bindsBOPsource23rarity4method_queststype0side1coin0nameJorus the Cobalt Netherwing Drakelevel70givenitems328591id11109category23703methodredemption,rewardfromlevel70id32859
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41515, 32859, 4)
	self:AddCompanionFlags(MountDB, 41515, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41515, 2, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- type15.-1rlevel70slevel300method_redemptionUnknownmethod_vendorstype7price200000000react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41516item_bindsBOPsource23rarity4method_queststype0side1coin0nameMalfas the Purple Netherwing Drakelevel70givenitems328601id11110category23703methodredemption,rewardfromlevel70id32860
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41516, 32860, 4)
	self:AddCompanionFlags(MountDB, 41516, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41516, 2, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- type15.-1rlevel70slevel300method_redemptionUnknownmethod_vendorstype7price200000000react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41517item_bindsBOPsource23rarity4method_queststype0side1coin0nameZoya the Veridian Netherwing Drakelevel70givenitems328611id11114category23703methodredemption,rewardfromlevel70id32861
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41517, 32861, 4)
	self:AddCompanionFlags(MountDB, 41517, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41517, 2, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- type15.-1rlevel70slevel300method_redemptionUnknownmethod_vendorstype7price200000000react11minlevel70locs3520nameDrake Dealer Hurlunkid23489spellid41518item_bindsBOPsource23rarity4method_queststype0side1coin0nameVoranaku the Violet Netherwing Drakelevel70givenitems328621id11113category23703methodredemption,rewardfromlevel70id32862
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41518, 32862, 4)
	self:AddCompanionFlags(MountDB, 41518, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41518, 2, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1rlevel30slevel75spellid42776item_bindsBOPrarity3methodlevel30id33224
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1rlevel60slevel150spellid42777item_bindsBOPrarity4methodlevel60id33225
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 43688
	-- type15.-1rlevel70slevel150spellid43688item_bindsBOPmethod_dropstype3lootCount19totalLootCount25locs3805nameAshli's Bagid186672rarity4methodcontained-in-objectlevel70id33809
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43688, 33809, 4)
	self:AddCompanionFlags(MountDB, 43688, 1,2)
	-- No acquire information

	-- Brewfest Ram - 43899
	-- type15.-1rlevel30slevel75method_vendorstype7price00000000descRam Racing Apprenticelocs14nameDriz Tumblequickid24510spellid43899item_bindsBOPsource2rarity3methodsold-bylevel30id33976
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43899, 33976, 3)
	self:AddCompanionFlags(MountDB, 43899, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43899, 1, 24510)

	-- Swift Brewfest Ram - 43900
	-- type15.-1rlevel60slevel150method_vendorstype7price00000000descRam Racing Apprenticelocs14nameDriz Tumblequickid24510spellid43900item_bindsBOPrarity4methodsold-bylevel60id33977
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43900, 33977, 4)
	self:AddCompanionFlags(MountDB, 43900, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43900, 1, 24510)

	-- Cenarion War Hippogryph - 43927
	-- type15.-1rlevel70slevel300method_vendorstype7price00000000descCenarion Expedition Quartermasterreact11minlevel60locs3521nameFedryen Swiftspearid17904classification1spellid43927item_bindsBOPsource2rarity4methodsold-bylevel70id33999
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43927, 33999, 4)
	self:AddCompanionFlags(MountDB, 43927, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43927, 1, 17904)

	-- Merciless Nether Drake - 44744
	-- type15.-1rlevel70slevel300method_redemptionUnknownspellid44744item_bindsBOPrarity4methodredemptionlevel70id34092
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 44744, 34092, 4)
	self:AddCompanionFlags(MountDB, 44744, 1,2,10)
	-- No acquire information

	-- Swift White Hawkstrider - 46628
	-- type15.-1rlevel60slevel150spellid46628item_bindsBOPmethod_dropstype7descLord of the Blood Elvesreact33disp22906minlevel72lootCount4totalLootCount6321locs4095nameKael'thas Sunstriderid24664classification1rarity4methoddropped-bylevel60id35513
	-- Instance: 4095 - type1expansion1limit5minlevel70maxlevel70territory1nameMagisters' Terraceid4095category3
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 46628, 35513, 4)
	self:AddCompanionFlags(MountDB, 46628, 1,2,6)
	self:AddCompanionAcquire(MountDB, 46628, 4, 24664)

	-- Magic Broom - 47977
	-- type15.-1rlevel30slevel75spellid47977item_bindsBOUspeed0.5rarity3methodlevel1id37011
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 48025
	-- type15.-1rlevel60slevel75spellid48025item_bindsBOPrarity4methodlevel60id37012
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- type15.-1rlevel60slevel150method_vendorstype7price0002056030205593020558300000descMount Vendorreact11minlevel55locs2918nameLieutenant Karterid12783spellid48027item_bindsBOPsource8rarity4methodsold-bylevel60id35906
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 48027, 35906, 4)
	self:AddCompanionFlags(MountDB, 48027, 1,2,3)
	self:AddCompanionAcquire(MountDB, 48027, 1, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1rlevel70slevel300spellid49193item_bindsBOPrarity4methodlevel70id37676
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 51412
	-- type15.-1rlevel60slevel150spellid51412item_bindsBOPrarity4methodlevel60id38576
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

	return companioncount

end
