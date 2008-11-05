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

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

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
	-- method_vendorstype7price10000000descHorse Breederlocs15minlevel35nameGregor MacVinceid4885react13type7price10000000descHorse Breederlocs12minlevel10nameKatie Hunterid384react03type7price10000000descHorse Breederlocs267minlevel32nameMerideth Carlsonid2357react13type7price10000000descHorse Breederlocs11minlevel25nameUnger Statforthid1460react13type15.-1level30spellid458method_dropstype7descStable Masterlocs12minlevel30lootCount2nameErmatotalLootCount34id6749react13rlevel30source2slevel75rarity3item_bindsBOPmethoddropped-by,sold-byid5656
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 458, 5656, 3)
	self:AddCompanionFlags(MountDB, 458, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 458, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Black Stallion Bridle - 470
	-- method_vendorstype7price10000000descHorse Breederlocs11minlevel25nameUnger Statforthid1460react13type15.-1level30spellid470method_dropstype7descStable Masterlocs12minlevel30lootCount3nameErmatotalLootCount34id6749react13rlevel30source12slevel75rarity3item_bindsBOPmethoddropped-by,sold-byid2411
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 470, 2411, 3)
	self:AddCompanionFlags(MountDB, 470, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 470, 4, 6749, 1, 1460)

	-- Pinto Bridle - 472
	-- method_vendorstype7price10000000descHorse Breederlocs15minlevel35nameGregor MacVinceid4885react13type7price10000000descHorse Breederlocs12minlevel10nameKatie Hunterid384react03type7price10000000descHorse Breederlocs267minlevel32nameMerideth Carlsonid2357react13type7price10000000descHorse Breederlocs11minlevel25nameUnger Statforthid1460react13type15.-1level30spellid472method_dropstype7descStable Masterlocs12minlevel30lootCount2nameErmatotalLootCount34id6749react13rlevel30source2slevel75rarity3item_bindsBOPmethoddropped-by,sold-byid2414
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 472, 2414, 3)
	self:AddCompanionFlags(MountDB, 472, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 472, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Timber Wolf - 580
	-- method_vendorstype7price10000000descKennel Masterlocs1637minlevel45nameOgunaro Wolfrunnerid3362react31type15.-1level30spellid580rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid1132
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 580, 1132, 3)
	self:AddCompanionFlags(MountDB, 580, 2,3)
	self:AddCompanionAcquire(MountDB, 580, 1, 3362)

	-- Chestnut Mare Bridle - 6648
	-- method_vendorstype7price10000000descHorse Breederlocs15minlevel35nameGregor MacVinceid4885react13type7price10000000descHorse Breederlocs12minlevel10nameKatie Hunterid384react03type7price10000000descHorse Breederlocs267minlevel32nameMerideth Carlsonid2357react13type7price10000000descHorse Breederlocs11minlevel25nameUnger Statforthid1460react13type15.-1level30spellid6648method_dropstype7descStable Masterlocs12minlevel30lootCount3nameErmatotalLootCount34id6749react13rlevel30source12slevel75rarity3item_bindsBOPmethoddropped-by,sold-byid5655
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6648, 5655, 3)
	self:AddCompanionFlags(MountDB, 6648, 1,2,3,15)
	self:AddCompanionAcquire(MountDB, 6648, 4, 6749, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Dire Wolf - 6653
	-- method_vendorstype7price10000000descKennel Masterlocs1637minlevel45nameOgunaro Wolfrunnerid3362react31type15.-1level30spellid6653rlevel30source2slevel75rarity3item_bindsBOPmethod_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4methodsold-by,rewardfromid5665
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6653, 5665, 3)
	self:AddCompanionFlags(MountDB, 6653, 2,3,4)
	self:AddCompanionAcquire(MountDB, 6653, 1, 3362, 2, 1)

	-- Horn of the Brown Wolf - 6654
	-- method_vendorstype7price10000000descKennel Masterlocs1637minlevel45nameOgunaro Wolfrunnerid3362react31type15.-1level30spellid6654rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid5668
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6654, 5668, 3)
	self:AddCompanionFlags(MountDB, 6654, 2,3)
	self:AddCompanionAcquire(MountDB, 6654, 1, 3362)

	-- Gray Ram - 6777
	-- method_vendorstype7price10000000descRam Breederlocs1minlevel10nameVeron Amberstillid1261react13type15.-1level30spellid6777rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid5864
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6777, 5864, 3)
	self:AddCompanionFlags(MountDB, 6777, 1,3)
	self:AddCompanionAcquire(MountDB, 6777, 1, 1261)

	-- White Ram - 6898
	-- method_vendorstype7price10000000descRam Breederlocs1minlevel10nameVeron Amberstillid1261react13type15.-1level30spellid6898rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid5873
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6898, 5873, 3)
	self:AddCompanionFlags(MountDB, 6898, 1,3)
	self:AddCompanionAcquire(MountDB, 6898, 1, 1261)

	-- Brown Ram - 6899
	-- method_vendorstype7price10000000descRam Breederlocs1minlevel10nameVeron Amberstillid1261react13type15.-1level30spellid6899rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid5872
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 6899, 5872, 3)
	self:AddCompanionFlags(MountDB, 6899, 1,3)
	self:AddCompanionAcquire(MountDB, 6899, 1, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- method_vendorstype7price10000000descSaber Handlerlocs1657minlevel35nameLelanaiid4730react13type15.-1level30spellid8394rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8631
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 8394, 8631, 3)
	self:AddCompanionFlags(MountDB, 8394, 1,3)
	self:AddCompanionAcquire(MountDB, 8394, 1, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- method_vendorstype7price10000000descRaptor Handlerlocs14minlevel45nameZjolnirid7952react31type15.-1level30spellid8395rlevel30source2slevel75rarity3item_bindsBOPmethod_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4methodsold-by,rewardfromid8588
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 8395, 8588, 3)
	self:AddCompanionFlags(MountDB, 8395, 2,3,4)
	self:AddCompanionAcquire(MountDB, 8395, 1, 7952, 2, 1)

	-- Reins of the Spotted Frostsaber - 10789
	-- method_vendorstype7price10000000descSaber Handlerlocs1657minlevel35nameLelanaiid4730react13type15.-1level30spellid10789rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8632
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10789, 8632, 3)
	self:AddCompanionFlags(MountDB, 10789, 1,3)
	self:AddCompanionAcquire(MountDB, 10789, 1, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- method_vendorstype7price10000000descSaber Handlerlocs1657minlevel35nameLelanaiid4730react13type15.-1level30spellid10793rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8629
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10793, 8629, 3)
	self:AddCompanionFlags(MountDB, 10793, 1,3)
	self:AddCompanionAcquire(MountDB, 10793, 1, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1level40spellid10795rlevel40slevel75rarity1item_bindsBOUmethodid8589
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- method_vendorstype7price10000000descRaptor Handlerlocs14minlevel45nameZjolnirid7952react31type15.-1level30spellid10796rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8591
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10796, 8591, 3)
	self:AddCompanionFlags(MountDB, 10796, 2,3)
	self:AddCompanionAcquire(MountDB, 10796, 1, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- method_vendorstype7price10000000descRaptor Handlerlocs14minlevel45nameZjolnirid7952react31type15.-1level30spellid10799rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8592
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10799, 8592, 3)
	self:AddCompanionFlags(MountDB, 10799, 2,3)
	self:AddCompanionAcquire(MountDB, 10799, 1, 7952)

	-- Red Mechanostrider - 10873
	-- method_vendorstype7price10000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level30spellid10873rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8563
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10873, 8563, 3)
	self:AddCompanionFlags(MountDB, 10873, 1,3)
	self:AddCompanionAcquire(MountDB, 10873, 1, 7955)

	-- Blue Mechanostrider - 10969
	-- method_vendorstype7price10000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level30spellid10969rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid8595
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 10969, 8595, 3)
	self:AddCompanionFlags(MountDB, 10969, 1,3)
	self:AddCompanionAcquire(MountDB, 10969, 1, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1level60spellid15779rlevel60slevel150rarity4item_bindsBOPmethodid13326
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1level60spellid16055rlevel60slevel150rarity4item_bindsBOPmethodid12303
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 16056
	-- type15.-1level60spellid16056rlevel60slevel150rarity4item_bindsBOPmethodid12302
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1level60spellid16080rlevel60slevel150rarity4item_bindsBOPmethodid12330
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1level60spellid16081rlevel60slevel150rarity4item_bindsBOPmethodid12351
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1level60spellid16082method_dropstype7descStable Masterlocs12minlevel30lootCount2nameErmatotalLootCount34id6749react13rlevel60source1slevel150rarity4item_bindsBOPmethoddropped-byid12354
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16082, 12354, 4)
	self:AddCompanionFlags(MountDB, 16082, 1,2,15)
	self:AddCompanionAcquire(MountDB, 16082, 4, 6749)

	-- White Stallion Bridle - 16083
	-- type15.-1level60spellid16083method_dropstype7descStable Masterlocs12minlevel30lootCount1nameErmatotalLootCount34id6749react13rlevel60source1slevel150rarity4item_bindsBOPmethoddropped-byid12353
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16083, 12353, 4)
	self:AddCompanionFlags(MountDB, 16083, 1,2,15)
	self:AddCompanionAcquire(MountDB, 16083, 4, 6749)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1level60spellid16084rlevel60slevel150rarity4item_bindsBOPmethodid8586
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- method_vendorstype7price100000000descWintersaber Trainerlocs618minlevel62nameRivern Frostwindid10618react23type15.-1level60spellid17229rlevel60source2slevel75rarity4item_bindsBOPmethodsold-byid13086
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17229, 13086, 4)
	self:AddCompanionFlags(MountDB, 17229, 1,3)
	self:AddCompanionAcquire(MountDB, 17229, 1, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1level60spellid17450rlevel60slevel150rarity4item_bindsBOPmethodid13317
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- method_vendorstype7price10000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level30spellid17453rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid13321
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17453, 13321, 3)
	self:AddCompanionFlags(MountDB, 17453, 1,3)
	self:AddCompanionAcquire(MountDB, 17453, 1, 7955)

	-- Unpainted Mechanostrider - 17454
	-- method_vendorstype7price10000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level30spellid17454rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid13322
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17454, 13322, 3)
	self:AddCompanionFlags(MountDB, 17454, 1,3)
	self:AddCompanionAcquire(MountDB, 17454, 1, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1level60spellid17459rlevel60slevel150rarity4item_bindsBOPmethodid13327
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1level60spellid17460rlevel60slevel150rarity4item_bindsBOPmethodid13329
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1level60spellid17461rlevel60slevel150rarity4item_bindsBOPmethodid13328
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- method_vendorstype7price10000000descUndead Horse Merchantlocs85minlevel30nameZachariah Postid4731react31type15.-1level30spellid17462rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid13331
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17462, 13331, 3)
	self:AddCompanionFlags(MountDB, 17462, 2,3)
	self:AddCompanionAcquire(MountDB, 17462, 1, 4731)

	-- Blue Skeletal Horse - 17463
	-- method_vendorstype7price10000000descUndead Horse Merchantlocs85minlevel30nameZachariah Postid4731react31type15.-1level30spellid17463rlevel30source2slevel75rarity3item_bindsBOPmethod_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4methodsold-by,rewardfromid13332
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17463, 13332, 3)
	self:AddCompanionFlags(MountDB, 17463, 2,3,4)
	self:AddCompanionAcquire(MountDB, 17463, 1, 4731, 2, 1)

	-- Brown Skeletal Horse - 17464
	-- method_vendorstype7price10000000descUndead Horse Merchantlocs85minlevel30nameZachariah Postid4731react31type15.-1level30spellid17464rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid13333
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17464, 13333, 3)
	self:AddCompanionFlags(MountDB, 17464, 2,3)
	self:AddCompanionAcquire(MountDB, 17464, 1, 4731)

	-- Green Skeletal Warhorse - 17465
	-- method_vendorstype7price100000000descUndead Horse Merchantlocs85minlevel30nameZachariah Postid4731react31type15.-1level60spellid17465rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid13334
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17465, 13334, 4)
	self:AddCompanionFlags(MountDB, 17465, 2,3)
	self:AddCompanionAcquire(MountDB, 17465, 1, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1level60spellid17481method_dropstype6classification1locs2017disp10729minlevel62lootCount1nameBaron RivendaretotalLootCount12362id10440react33rlevel60source1slevel150rarity4item_bindsBOPmethoddropped-byid13335
	-- Instance: 2017 - type1category3minlevel58maxlevel60nameStratholmeid2017territory1
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 17481, 13335, 4)
	self:AddCompanionFlags(MountDB, 17481, 1,2,6)
	self:AddCompanionAcquire(MountDB, 17481, 4, 10440)

	-- Gray Kodo - 18989
	-- method_vendorstype7price10000000descKodo Mountslocs215minlevel45nameHarb Clawhoofid3685react31type15.-1level30spellid18989rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid15277
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18989, 15277, 3)
	self:AddCompanionFlags(MountDB, 18989, 2,3)
	self:AddCompanionAcquire(MountDB, 18989, 1, 3685)

	-- Brown Kodo - 18990
	-- method_vendorstype7price10000000descKodo Mountslocs215minlevel45nameHarb Clawhoofid3685react31type15.-1level30spellid18990rlevel30source2slevel75rarity3item_bindsBOPmethod_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4methodsold-by,rewardfromid15290
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18990, 15290, 3)
	self:AddCompanionFlags(MountDB, 18990, 2,3,4)
	self:AddCompanionAcquire(MountDB, 18990, 1, 3685, 2, 1)

	-- Green Kodo - 18991
	-- type15.-1level60spellid18991rlevel60slevel150rarity4item_bindsBOPmethodid15292
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1level60spellid18992rlevel60slevel150rarity4item_bindsBOPmethodid15293
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1level55spellid22717rlevel55source8slevel75rarity4item_bindsBOPmethodid18241
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1level55spellid22718rlevel55source8slevel75rarity4item_bindsBOPmethodid18247
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 22719
	-- method_vendorstype7price0002056030205593020558300000descMount Vendorlocs2918minlevel55nameLieutenant Karterid12783react11type15.-1level60spellid22719rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid29465
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22719, 29465, 4)
	self:AddCompanionFlags(MountDB, 22719, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22719, 1, 12783)

	-- Black War Ram - 22720
	-- method_vendorstype7price0002056030205593020558300000descMount Vendorlocs2918minlevel55nameLieutenant Karterid12783react11type15.-1level60spellid22720rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid29467
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22720, 29467, 4)
	self:AddCompanionFlags(MountDB, 22720, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22720, 1, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- method_vendorstype7price0002056030205593020558300000descMount Quartermasterlocs2917minlevel55nameRaider Borkid12796react21type15.-1level60spellid22721rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid29472
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22721, 29472, 4)
	self:AddCompanionFlags(MountDB, 22721, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22721, 1, 12796)

	-- Red Skeletal Warhorse - 22722
	-- method_vendorstype7price0002056030205593020558300000descMount Quartermasterlocs2917minlevel55nameRaider Borkid12796react21type15.-1level60spellid22722rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid29470
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22722, 29470, 4)
	self:AddCompanionFlags(MountDB, 22722, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22722, 1, 12796)

	-- Reins of the Black War Tiger - 22723
	-- method_vendorstype7price000205603020559302055830locs35243525148-1minlevel70nameGeneral Goods Vendorid26304react11type7price0002056030205593020558300000descMount Vendorlocs2918minlevel55nameLieutenant Karterid12783react11type15.-1level60spellid22723rlevel60source28slevel150rarity4item_bindsBOPmethodsold-byid29471
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22723, 29471, 4)
	self:AddCompanionFlags(MountDB, 22723, 1,2,3)
	self:AddCompanionAcquire(MountDB, 22723, 1, 12783, 1, 26304)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1level55spellid22724rlevel55source8slevel75rarity4item_bindsBOPmethodid18245
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- method_vendorstype7price100000000descSaber Handlerlocs1657minlevel35nameLelanaiid4730react13type15.-1level60spellid23219rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18767
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23219, 18767, 4)
	self:AddCompanionFlags(MountDB, 23219, 1,3)
	self:AddCompanionAcquire(MountDB, 23219, 1, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- method_vendorstype7price100000000descSaber Handlerlocs1657minlevel35nameLelanaiid4730react13type15.-1level60spellid23221rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18766
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23221, 18766, 4)
	self:AddCompanionFlags(MountDB, 23221, 1,3)
	self:AddCompanionAcquire(MountDB, 23221, 1, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- method_vendorstype7price100000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level60spellid23222rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18774
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23222, 18774, 4)
	self:AddCompanionFlags(MountDB, 23222, 1,3)
	self:AddCompanionAcquire(MountDB, 23222, 1, 7955)

	-- Swift White Mechanostrider - 23223
	-- method_vendorstype7price100000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level60spellid23223rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18773
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23223, 18773, 4)
	self:AddCompanionFlags(MountDB, 23223, 1,3)
	self:AddCompanionAcquire(MountDB, 23223, 1, 7955)

	-- Swift Green Mechanostrider - 23225
	-- method_vendorstype7price100000000descMechanostrider Merchantlocs1minlevel50nameMilli Featherwhistleid7955react13type15.-1level60spellid23225rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18772
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23225, 18772, 4)
	self:AddCompanionFlags(MountDB, 23225, 1,3)
	self:AddCompanionAcquire(MountDB, 23225, 1, 7955)

	-- Swift Palomino - 23227
	-- method_vendorstype7price100000000descHorse Breederlocs15minlevel35nameGregor MacVinceid4885react13type7price100000000descHorse Breederlocs12minlevel10nameKatie Hunterid384react03type7price100000000descHorse Breederlocs267minlevel32nameMerideth Carlsonid2357react13type15.-1level60spellid23227method_dropstype7descStable Masterlocs12minlevel30lootCount1nameErmatotalLootCount34id6749react13rlevel60source2slevel150rarity4item_bindsBOPmethod_queststype0level1category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromid18776
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23227, 18776, 4)
	self:AddCompanionFlags(MountDB, 23227, 1,2,3,4,15)
	self:AddCompanionAcquire(MountDB, 23227, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift White Steed - 23228
	-- method_vendorstype7price100000000descHorse Breederlocs15minlevel35nameGregor MacVinceid4885react13type7price100000000descHorse Breederlocs12minlevel10nameKatie Hunterid384react03type7price100000000descHorse Breederlocs267minlevel32nameMerideth Carlsonid2357react13type15.-1level60spellid23228method_dropstype7descStable Masterlocs12minlevel30lootCount2nameErmatotalLootCount34id6749react13rlevel60source2slevel150rarity4item_bindsBOPmethod_queststype0level1category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromid18778
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23228, 18778, 4)
	self:AddCompanionFlags(MountDB, 23228, 1,2,3,4,15)
	self:AddCompanionAcquire(MountDB, 23228, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Steed - 23229
	-- method_vendorstype7price100000000descHorse Breederlocs15minlevel35nameGregor MacVinceid4885react13type7price100000000descHorse Breederlocs12minlevel10nameKatie Hunterid384react03type7price100000000descHorse Breederlocs267minlevel32nameMerideth Carlsonid2357react13type15.-1level60spellid23229method_dropstype7descStable Masterlocs12minlevel30lootCount2nameErmatotalLootCount34id6749react13rlevel60source2slevel150rarity4item_bindsBOPmethod_queststype0level1category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromid18777
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23229, 18777, 4)
	self:AddCompanionFlags(MountDB, 23229, 1,2,3,4,15)
	self:AddCompanionAcquire(MountDB, 23229, 4, 6749, 1, 384, 1, 2357, 1, 4885, 2, 7677)

	-- Swift Brown Ram - 23238
	-- method_vendorstype7price100000000descRam Breederlocs1minlevel10nameVeron Amberstillid1261react13type15.-1level60spellid23238rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18786
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23238, 18786, 4)
	self:AddCompanionFlags(MountDB, 23238, 1,3)
	self:AddCompanionAcquire(MountDB, 23238, 1, 1261)

	-- Swift Gray Ram - 23239
	-- method_vendorstype7price100000000descRam Breederlocs1minlevel10nameVeron Amberstillid1261react13type15.-1level60spellid23239rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18787
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23239, 18787, 4)
	self:AddCompanionFlags(MountDB, 23239, 1,3)
	self:AddCompanionAcquire(MountDB, 23239, 1, 1261)

	-- Swift White Ram - 23240
	-- method_vendorstype7price100000000descRam Breederlocs1minlevel10nameVeron Amberstillid1261react13type15.-1level60spellid23240rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18785
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23240, 18785, 4)
	self:AddCompanionFlags(MountDB, 23240, 1,3)
	self:AddCompanionAcquire(MountDB, 23240, 1, 1261)

	-- Swift Blue Raptor - 23241
	-- method_vendorstype7price100000000descRaptor Handlerlocs14minlevel45nameZjolnirid7952react31type15.-1level60spellid23241rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18788
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23241, 18788, 4)
	self:AddCompanionFlags(MountDB, 23241, 2,3)
	self:AddCompanionAcquire(MountDB, 23241, 1, 7952)

	-- Swift Olive Raptor - 23242
	-- method_vendorstype7price100000000descRaptor Handlerlocs14minlevel45nameZjolnirid7952react31type15.-1level60spellid23242rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18789
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23242, 18789, 4)
	self:AddCompanionFlags(MountDB, 23242, 2,3)
	self:AddCompanionAcquire(MountDB, 23242, 1, 7952)

	-- Swift Orange Raptor - 23243
	-- method_vendorstype7price100000000descRaptor Handlerlocs14minlevel45nameZjolnirid7952react31type15.-1level60spellid23243rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18790
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23243, 18790, 4)
	self:AddCompanionFlags(MountDB, 23243, 2,3)
	self:AddCompanionAcquire(MountDB, 23243, 1, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- method_vendorstype7price100000000descUndead Horse Merchantlocs85minlevel30nameZachariah Postid4731react31type15.-1level60spellid23246rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18791
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23246, 18791, 4)
	self:AddCompanionFlags(MountDB, 23246, 2,3)
	self:AddCompanionAcquire(MountDB, 23246, 1, 4731)

	-- Great White Kodo - 23247
	-- method_vendorstype7price100000000descKodo Mountslocs215minlevel45nameHarb Clawhoofid3685react31type15.-1level60spellid23247rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18793
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23247, 18793, 4)
	self:AddCompanionFlags(MountDB, 23247, 2,3)
	self:AddCompanionAcquire(MountDB, 23247, 1, 3685)

	-- Great Gray Kodo - 23248
	-- method_vendorstype7price100000000descKodo Mountslocs215minlevel45nameHarb Clawhoofid3685react31type15.-1level60spellid23248rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18795
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23248, 18795, 4)
	self:AddCompanionFlags(MountDB, 23248, 2,3)
	self:AddCompanionAcquire(MountDB, 23248, 1, 3685)

	-- Great Brown Kodo - 23249
	-- method_vendorstype7price100000000descKodo Mountslocs215minlevel45nameHarb Clawhoofid3685react31type15.-1level60spellid23249rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18794
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23249, 18794, 4)
	self:AddCompanionFlags(MountDB, 23249, 2,3)
	self:AddCompanionAcquire(MountDB, 23249, 1, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- method_vendorstype7price100000000descKennel Masterlocs1637minlevel45nameOgunaro Wolfrunnerid3362react31type15.-1level60spellid23250rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18796
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23250, 18796, 4)
	self:AddCompanionFlags(MountDB, 23250, 2,3)
	self:AddCompanionAcquire(MountDB, 23250, 1, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- method_vendorstype7price100000000descKennel Masterlocs1637minlevel45nameOgunaro Wolfrunnerid3362react31type15.-1level60spellid23251rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18797
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23251, 18797, 4)
	self:AddCompanionFlags(MountDB, 23251, 2,3)
	self:AddCompanionAcquire(MountDB, 23251, 1, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- method_vendorstype7price100000000descKennel Masterlocs1637minlevel45nameOgunaro Wolfrunnerid3362react31type15.-1level60spellid23252rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18798
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23252, 18798, 4)
	self:AddCompanionFlags(MountDB, 23252, 2,3)
	self:AddCompanionAcquire(MountDB, 23252, 1, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- method_vendorstype7price100000000descSaber Handlerlocs1657minlevel35nameLelanaiid4730react13type15.-1level60spellid23338rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid18902
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23338, 18902, 4)
	self:AddCompanionFlags(MountDB, 23338, 1,3)
	self:AddCompanionAcquire(MountDB, 23338, 1, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- method_vendorstype7classification1price000205605000000000descFrostwolf Supply Officerlocs2597minlevel58maxlevel68nameGrunnda Wolfheartid13218react31type7classification1price0002056050descFrostwolf Supply Officerlocs36267minlevel58nameJekyll Flandringid13219react31type15.-1level60spellid23509rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid19029
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23509, 19029, 4)
	self:AddCompanionFlags(MountDB, 23509, 2,3)
	self:AddCompanionAcquire(MountDB, 23509, 1, 13218, 1, 13219)

	-- Stormpike Battle Charger - 23510
	-- method_vendorstype7classification1price0002056050descStormpike Supply Officerlocs2597minlevel68nameGaelden Hammersmithid13216react13type7classification1price000205605000000000descStormpike Supply Officerlocs36minlevel58nameThanthaldis Snowgleamid13217react13type15.-1level60spellid23510rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid19030
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 23510, 19030, 4)
	self:AddCompanionFlags(MountDB, 23510, 1,3)
	self:AddCompanionAcquire(MountDB, 23510, 1, 13216, 1, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1level60spellid24242method_dropstype7classification3locs1977lootCount35nameBloodlord MandokirtotalLootCount8107id11382react33rlevel60source1slevel150rarity4item_bindsBOPmethoddropped-byid19872
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 24242, 19872, 4)
	self:AddCompanionFlags(MountDB, 24242, 1,2,7)
	self:AddCompanionAcquire(MountDB, 24242, 4, 11382)

	-- Swift Zulian Tiger - 24252
	-- type15.-1level60spellid24252method_dropstype7classification3locs1977lootCount9nameHigh Priest ThekaltotalLootCount3676id14509react33rlevel60source1slevel150rarity4item_bindsBOPmethoddropped-byid19902
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 24252, 19902, 4)
	self:AddCompanionFlags(MountDB, 24252, 1,2,7)
	self:AddCompanionAcquire(MountDB, 24252, 4, 14509)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1level60spellid26656rlevel60slevel150rarity5item_bindsBOPmethodid21176
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 32235
	-- method_vendorstype7price100000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32235rlevel70source2slevel225rarity3item_bindsBOPmethodsold-byid25470
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32235, 25470, 3)
	self:AddCompanionFlags(MountDB, 32235, 1,3)
	self:AddCompanionAcquire(MountDB, 32235, 1, 20510)

	-- Ebon Gryphon - 32239
	-- method_vendorstype7price100000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32239rlevel70source2slevel225rarity3item_bindsBOPmethodsold-byid25471
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32239, 25471, 3)
	self:AddCompanionFlags(MountDB, 32239, 1,3)
	self:AddCompanionAcquire(MountDB, 32239, 1, 20510)

	-- Snowy Gryphon - 32240
	-- method_vendorstype7price100000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32240rlevel70source2slevel225rarity3item_bindsBOPmethodsold-byid25472
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32240, 25472, 3)
	self:AddCompanionFlags(MountDB, 32240, 1,3)
	self:AddCompanionAcquire(MountDB, 32240, 1, 20510)

	-- Swift Blue Gryphon - 32242
	-- method_vendorstype7price200000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32242rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25473
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32242, 25473, 4)
	self:AddCompanionFlags(MountDB, 32242, 1,3)
	self:AddCompanionAcquire(MountDB, 32242, 1, 20510)

	-- Tawny Windrider - 32243
	-- method_vendorstype7price100000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32243rlevel70source2slevel225rarity3item_bindsBOPmethodsold-byid25474
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32243, 25474, 3)
	self:AddCompanionFlags(MountDB, 32243, 2,3)
	self:AddCompanionAcquire(MountDB, 32243, 1, 20494)

	-- Blue Windrider - 32244
	-- method_vendorstype7price100000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32244rlevel70source2slevel225rarity3item_bindsBOPmethodsold-byid25475
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32244, 25475, 3)
	self:AddCompanionFlags(MountDB, 32244, 2,3)
	self:AddCompanionAcquire(MountDB, 32244, 1, 20494)

	-- Green Windrider - 32245
	-- method_vendorstype7price100000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32245rlevel70source2slevel225rarity3item_bindsBOPmethodsold-byid25476
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32245, 25476, 3)
	self:AddCompanionFlags(MountDB, 32245, 2,3)
	self:AddCompanionAcquire(MountDB, 32245, 1, 20494)

	-- Swift Red Windrider - 32246
	-- method_vendorstype7price200000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32246rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25477
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32246, 25477, 4)
	self:AddCompanionFlags(MountDB, 32246, 2,3)
	self:AddCompanionAcquire(MountDB, 32246, 1, 20494)

	-- Swift Red Gryphon - 32289
	-- method_vendorstype7price200000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32289rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25527
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32289, 25527, 4)
	self:AddCompanionFlags(MountDB, 32289, 1,3)
	self:AddCompanionAcquire(MountDB, 32289, 1, 20510)

	-- Swift Green Gryphon - 32290
	-- method_vendorstype7price200000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32290rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25528
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32290, 25528, 4)
	self:AddCompanionFlags(MountDB, 32290, 1,3)
	self:AddCompanionAcquire(MountDB, 32290, 1, 20510)

	-- Swift Purple Gryphon - 32292
	-- method_vendorstype7price200000000descGryphon Keeperlocs3520minlevel70nameBrunn Flamebeardid20510react13type15.-1level70spellid32292rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25529
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32292, 25529, 4)
	self:AddCompanionFlags(MountDB, 32292, 1,3)
	self:AddCompanionAcquire(MountDB, 32292, 1, 20510)

	-- Swift Green Windrider - 32295
	-- method_vendorstype7price200000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32295rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25531
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32295, 25531, 4)
	self:AddCompanionFlags(MountDB, 32295, 2,3)
	self:AddCompanionAcquire(MountDB, 32295, 1, 20494)

	-- Swift Yellow Windrider - 32296
	-- method_vendorstype7price200000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32296rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25532
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32296, 25532, 4)
	self:AddCompanionFlags(MountDB, 32296, 2,3)
	self:AddCompanionAcquire(MountDB, 32296, 1, 20494)

	-- Swift Purple Windrider - 32297
	-- method_vendorstype7price200000000descWindrider Keeperlocs3520minlevel70nameDama Wildmaneid20494react31type15.-1level70spellid32297rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid25533
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 32297, 25533, 4)
	self:AddCompanionFlags(MountDB, 32297, 2,3)
	self:AddCompanionAcquire(MountDB, 32297, 1, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- method_vendorstype7price100000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level60spellid33660rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid28936
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 33660, 28936, 4)
	self:AddCompanionFlags(MountDB, 33660, 2,3)
	self:AddCompanionAcquire(MountDB, 33660, 1, 16264)

	-- Brown Elekk - 34406
	-- method_vendorstype7price10000000descElekk Breederlocs35243557minlevel14nameTorallius the Pack Handlerid17584react13type15.-1level30spellid34406rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid28481
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34406, 28481, 3)
	self:AddCompanionFlags(MountDB, 34406, 1,3)
	self:AddCompanionAcquire(MountDB, 34406, 1, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- method_vendorstype7classification1price000260451002604420000000descBlade Merchantlocs3518minlevel70nameAldraanid21485react13type7classification1price000260451002604420000000descBlade Merchantlocs3518minlevel70nameCoreielid21474react31type15.-1level60spellid34790rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29228
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34790, 29228, 4)
	self:AddCompanionFlags(MountDB, 34790, 1,2,3)
	self:AddCompanionAcquire(MountDB, 34790, 1, 21474, 1, 21485)

	-- Red Hawkstrider - 34795
	-- method_vendorstype7price10000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level30spellid34795rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid28927
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34795, 28927, 3)
	self:AddCompanionFlags(MountDB, 34795, 2,3)
	self:AddCompanionAcquire(MountDB, 34795, 1, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- method_vendorstype7price100000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid34896rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29102
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34896, 29102, 4)
	self:AddCompanionFlags(MountDB, 34896, 2,3)
	self:AddCompanionAcquire(MountDB, 34896, 1, 20241)

	-- Reins of the White War Talbuk - 34897
	-- method_vendorstype7price100000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid34897rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29103
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34897, 29103, 4)
	self:AddCompanionFlags(MountDB, 34897, 2,3)
	self:AddCompanionAcquire(MountDB, 34897, 1, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- method_vendorstype7price100000000descKurenai Quartermasterlocs3518minlevel65nameTrader Narasuid20240react13type15.-1level60spellid34898rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29229
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34898, 29229, 4)
	self:AddCompanionFlags(MountDB, 34898, 1,3)
	self:AddCompanionAcquire(MountDB, 34898, 1, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- method_vendorstype7price100000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid34899rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29105
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 34899, 29105, 4)
	self:AddCompanionFlags(MountDB, 34899, 2,3)
	self:AddCompanionAcquire(MountDB, 34899, 1, 20241)

	-- Purple Hawkstrider - 35018
	-- method_vendorstype7price10000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level30spellid35018rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid29222
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35018, 29222, 3)
	self:AddCompanionFlags(MountDB, 35018, 2,3)
	self:AddCompanionAcquire(MountDB, 35018, 1, 16264)

	-- Blue Hawkstrider - 35020
	-- method_vendorstype7price10000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level30spellid35020rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid29220
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35020, 29220, 3)
	self:AddCompanionFlags(MountDB, 35020, 2,3)
	self:AddCompanionAcquire(MountDB, 35020, 1, 16264)

	-- Black Hawkstrider - 35022
	-- method_vendorstype7price10000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level30spellid35022rlevel30source2slevel75rarity3item_bindsBOPmethod_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4methodsold-by,rewardfromid29221
	-- Vendor
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35022, 29221, 3)
	self:AddCompanionFlags(MountDB, 35022, 2,3,4)
	self:AddCompanionAcquire(MountDB, 35022, 1, 16264, 2, 1)

	-- Swift Green Hawkstrider - 35025
	-- method_vendorstype7price100000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level60spellid35025rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29223
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35025, 29223, 4)
	self:AddCompanionFlags(MountDB, 35025, 2,3)
	self:AddCompanionAcquire(MountDB, 35025, 1, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- method_vendorstype7price100000000descHawkstrider Breederlocs3430minlevel15nameWinaestraid16264react31type15.-1level60spellid35027rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29224
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35027, 29224, 4)
	self:AddCompanionFlags(MountDB, 35027, 2,3)
	self:AddCompanionAcquire(MountDB, 35027, 1, 16264)

	-- Swift Warstrider - 35028
	-- method_vendorstype7price0002056030205593020558300000descMount Quartermasterlocs2917minlevel55nameRaider Borkid12796react21type15.-1level60spellid35028rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid34129
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35028, 34129, 4)
	self:AddCompanionFlags(MountDB, 35028, 1,2,3)
	self:AddCompanionAcquire(MountDB, 35028, 1, 12796)

	-- Gray Elekk - 35710
	-- method_vendorstype7price10000000descElekk Breederlocs35243557minlevel14nameTorallius the Pack Handlerid17584react13type15.-1level30spellid35710rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid29744
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35710, 29744, 3)
	self:AddCompanionFlags(MountDB, 35710, 1,3)
	self:AddCompanionAcquire(MountDB, 35710, 1, 17584)

	-- Purple Elekk - 35711
	-- method_vendorstype7price10000000descElekk Breederlocs35243557minlevel14nameTorallius the Pack Handlerid17584react13type15.-1level30spellid35711rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid29743
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35711, 29743, 3)
	self:AddCompanionFlags(MountDB, 35711, 1,3)
	self:AddCompanionAcquire(MountDB, 35711, 1, 17584)

	-- Great Green Elekk - 35712
	-- method_vendorstype7price100000000descElekk Breederlocs35243557minlevel14nameTorallius the Pack Handlerid17584react13type15.-1level60spellid35712rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29746
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35712, 29746, 4)
	self:AddCompanionFlags(MountDB, 35712, 1,3)
	self:AddCompanionAcquire(MountDB, 35712, 1, 17584)

	-- Great Blue Elekk - 35713
	-- method_vendorstype7price100000000descElekk Breederlocs35243557minlevel14nameTorallius the Pack Handlerid17584react13type15.-1level60spellid35713rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29745
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35713, 29745, 4)
	self:AddCompanionFlags(MountDB, 35713, 1,3)
	self:AddCompanionAcquire(MountDB, 35713, 1, 17584)

	-- Great Purple Elekk - 35714
	-- method_vendorstype7price100000000descElekk Breederlocs35243557minlevel14nameTorallius the Pack Handlerid17584react13type15.-1level60spellid35714rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid29747
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 35714, 29747, 4)
	self:AddCompanionFlags(MountDB, 35714, 1,3)
	self:AddCompanionAcquire(MountDB, 35714, 1, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1level70spellid36702method_dropstype6classification3locs3457disp16416lootCount78nameAttumen the HuntsmantotalLootCount35478id15550react33type6classification3locs3457disp16040lootCount10nameAttumen the HuntsmantotalLootCount6529id16152react33rlevel70source1slevel150rarity4item_bindsBOPmethoddropped-byid30480
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 36702, 30480, 4)
	self:AddCompanionFlags(MountDB, 36702, 1,2,7)
	self:AddCompanionAcquire(MountDB, 36702, 4, 15550, 4, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1level70spellid37015rlevel70slevel300rarity4item_bindsBOPmethodid30609
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- method_vendorstype7price70000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid39315rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid31829
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39315, 31829, 4)
	self:AddCompanionFlags(MountDB, 39315, 2,3)
	self:AddCompanionAcquire(MountDB, 39315, 1, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- method_vendorstype7classification1price00026045702604415000000descBlade Merchantlocs3518minlevel70nameAldraanid21485react13type7classification1price00026045702604415000000descBlade Merchantlocs3518minlevel70nameCoreielid21474react31type15.-1level60spellid39316rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid28915
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39316, 28915, 4)
	self:AddCompanionFlags(MountDB, 39316, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39316, 1, 21474, 1, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- method_vendorstype7price70000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid39317rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid31831
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39317, 31831, 4)
	self:AddCompanionFlags(MountDB, 39317, 2,3)
	self:AddCompanionAcquire(MountDB, 39317, 1, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- method_vendorstype7price70000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid39318rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid31833
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39318, 31833, 4)
	self:AddCompanionFlags(MountDB, 39318, 2,3)
	self:AddCompanionAcquire(MountDB, 39318, 1, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- method_vendorstype7price70000000descMag'har Quartermasterlocs3518minlevel65nameProvisioner Naselaid20241react31type15.-1level60spellid39319rlevel60source2slevel150rarity4item_bindsBOPmethodsold-byid31835
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39319, 31835, 4)
	self:AddCompanionFlags(MountDB, 39319, 2,3)
	self:AddCompanionAcquire(MountDB, 39319, 1, 20241)

	-- Green Riding Nether Ray - 39798
	-- method_vendorstype7price00000000descSkyguard Quartermasterlocs3519minlevel70nameGrellaid23367react11type15.-1level70spellid39798rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid32314
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39798, 32314, 4)
	self:AddCompanionFlags(MountDB, 39798, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39798, 1, 23367)

	-- Red Riding Nether Ray - 39800
	-- method_vendorstype7price00000000descSkyguard Quartermasterlocs3519minlevel70nameGrellaid23367react11type15.-1level70spellid39800rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid32317
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39800, 32317, 4)
	self:AddCompanionFlags(MountDB, 39800, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39800, 1, 23367)

	-- Purple Riding Nether Ray - 39801
	-- method_vendorstype7price00000000descSkyguard Quartermasterlocs3519minlevel70nameGrellaid23367react11type15.-1level70spellid39801rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid32316
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39801, 32316, 4)
	self:AddCompanionFlags(MountDB, 39801, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39801, 1, 23367)

	-- Silver Riding Nether Ray - 39802
	-- method_vendorstype7price00000000descSkyguard Quartermasterlocs3519minlevel70nameGrellaid23367react11type15.-1level70spellid39802rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid32318
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39802, 32318, 4)
	self:AddCompanionFlags(MountDB, 39802, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39802, 1, 23367)

	-- Blue Riding Nether Ray - 39803
	-- method_vendorstype7price00000000descSkyguard Quartermasterlocs3519minlevel70nameGrellaid23367react11type15.-1level70spellid39803rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid32319
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 39803, 32319, 4)
	self:AddCompanionFlags(MountDB, 39803, 1,2,3)
	self:AddCompanionAcquire(MountDB, 39803, 1, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1level70spellid40192method_dropstype7classification3descLord of the Blood Elveslocs37033845disp20023minlevel73lootCount14nameKael'thas SunstridertotalLootCount3723id19622react33type7classification3descLord of the Blood Elveslocs409537033845disp20023minlevel72lootCount1nameKael'thas SunstridertotalLootCount9689id23054react33rlevel70source1slevel300rarity4item_bindsBOPmethoddropped-byid32458
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 40192, 32458, 4)
	self:AddCompanionFlags(MountDB, 40192, 1,2,6,7,15)
	self:AddCompanionAcquire(MountDB, 40192, 4, 19622, 4, 23054)

	-- Reins of the Raven Lord - 41252
	-- type15.-1level70spellid41252method_dropstype10classification1locs3791disp21492minlevel69lootCount12nameAnzutotalLootCount5155id23035react33rlevel70source1slevel150rarity4item_bindsBOPmethoddropped-byid32768
	-- Instance: 3791 - type5category3expansion1minlevel67maxlevel69nameAuchindoun: Sethekk Hallsid3791territory1
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41252, 32768, 4)
	self:AddCompanionFlags(MountDB, 41252, 1,2,6)
	self:AddCompanionAcquire(MountDB, 41252, 4, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- method_redemptionUnknownmethod_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11type15.-1level70spellid41513rlevel70source23slevel300rarity4item_bindsBOPmethod_queststype0level70givenitems328571category23703coin0nameOnyxien the Onyx Netherwing Drakeid11111side1methodredemption,rewardfromid32857
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41513, 32857, 4)
	self:AddCompanionFlags(MountDB, 41513, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41513, 2, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- method_redemptionUnknownmethod_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11type15.-1level70spellid41514rlevel70source23slevel300rarity4item_bindsBOPmethod_queststype0level70givenitems328581category23703coin0nameSuraku the Azure Netherwing Drakeid11112side1methodredemption,rewardfromid32858
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41514, 32858, 4)
	self:AddCompanionFlags(MountDB, 41514, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41514, 2, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- method_redemptionUnknownmethod_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11type15.-1level70spellid41515rlevel70source23slevel300rarity4item_bindsBOPmethod_queststype0level70givenitems328591category23703coin0nameJorus the Cobalt Netherwing Drakeid11109side1methodredemption,rewardfromid32859
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41515, 32859, 4)
	self:AddCompanionFlags(MountDB, 41515, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41515, 2, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- method_redemptionUnknownmethod_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11type15.-1level70spellid41516rlevel70source23slevel300rarity4item_bindsBOPmethod_queststype0level70givenitems328601category23703coin0nameMalfas the Purple Netherwing Drakeid11110side1methodredemption,rewardfromid32860
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41516, 32860, 4)
	self:AddCompanionFlags(MountDB, 41516, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41516, 2, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- method_redemptionUnknownmethod_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11type15.-1level70spellid41517rlevel70source23slevel300rarity4item_bindsBOPmethod_queststype0level70givenitems328611category23703coin0nameZoya the Veridian Netherwing Drakeid11114side1methodredemption,rewardfromid32861
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41517, 32861, 4)
	self:AddCompanionFlags(MountDB, 41517, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41517, 2, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- method_redemptionUnknownmethod_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11type15.-1level70spellid41518rlevel70source23slevel300rarity4item_bindsBOPmethod_queststype0level70givenitems328621category23703coin0nameVoranaku the Violet Netherwing Drakeid11113side1methodredemption,rewardfromid32862
	-- Redemption
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 41518, 32862, 4)
	self:AddCompanionFlags(MountDB, 41518, 1,2,4,10)
	self:AddCompanionAcquire(MountDB, 41518, 2, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1level30spellid42776rlevel30slevel75rarity3item_bindsBOPmethodid33224
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1level60spellid42777rlevel60slevel150rarity4item_bindsBOPmethodid33225
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 43688
	-- type15.-1level70spellid43688method_dropstype3locs3805lootCount19nameAshli's BagtotalLootCount25id186672rlevel70slevel150rarity4item_bindsBOPmethodcontained-in-objectid33809
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43688, 33809, 4)
	self:AddCompanionFlags(MountDB, 43688, 1,2)
	-- No acquire information

	-- Brewfest Ram - 43899
	-- method_vendorstype7price00000000descRam Racing Apprenticelocs14nameDriz Tumblequickid24510type15.-1level30spellid43899rlevel30source2slevel75rarity3item_bindsBOPmethodsold-byid33976
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43899, 33976, 3)
	self:AddCompanionFlags(MountDB, 43899, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43899, 1, 24510)

	-- Swift Brewfest Ram - 43900
	-- method_vendorstype7price00000000descRam Racing Apprenticelocs14nameDriz Tumblequickid24510type15.-1level60spellid43900rlevel60slevel150rarity4item_bindsBOPmethodsold-byid33977
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43900, 33977, 4)
	self:AddCompanionFlags(MountDB, 43900, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43900, 1, 24510)

	-- Cenarion War Hippogryph - 43927
	-- method_vendorstype7classification1price00000000descCenarion Expedition Quartermasterlocs3521minlevel60nameFedryen Swiftspearid17904react11type15.-1level70spellid43927rlevel70source2slevel300rarity4item_bindsBOPmethodsold-byid33999
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 43927, 33999, 4)
	self:AddCompanionFlags(MountDB, 43927, 1,2,3)
	self:AddCompanionAcquire(MountDB, 43927, 1, 17904)

	-- Merciless Nether Drake - 44744
	-- method_redemptionUnknowntype15.-1level70spellid44744rlevel70slevel300rarity4item_bindsBOPmethodredemptionid34092
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 44744, 34092, 4)
	self:AddCompanionFlags(MountDB, 44744, 1,2,10)
	-- No acquire information

	-- Swift White Hawkstrider - 46628
	-- type15.-1level60spellid46628method_dropstype7classification1descLord of the Blood Elveslocs4095disp22906minlevel72lootCount4nameKael'thas SunstridertotalLootCount6321id24664react33rlevel60slevel150rarity4item_bindsBOPmethoddropped-byid35513
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 46628, 35513, 4)
	self:AddCompanionFlags(MountDB, 46628, 1,2,6)
	self:AddCompanionAcquire(MountDB, 46628, 4, 24664)

	-- Magic Broom - 47977
	-- type15.-1level1spellid47977rlevel30slevel75rarity3item_bindsBOUspeed0.5methodid37011
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 48025
	-- type15.-1level60spellid48025rlevel60slevel75rarity4item_bindsBOPmethodid37012
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- method_vendorstype7price0002056030205593020558300000descMount Vendorlocs2918minlevel55nameLieutenant Karterid12783react11type15.-1level60spellid48027rlevel60source8slevel150rarity4item_bindsBOPmethodsold-byid35906
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 48027, 35906, 4)
	self:AddCompanionFlags(MountDB, 48027, 1,2,3)
	self:AddCompanionAcquire(MountDB, 48027, 1, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1level70spellid49193rlevel70slevel300rarity4item_bindsBOPmethodid37676
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 51412
	-- type15.-1level60spellid51412rlevel60slevel150rarity4item_bindsBOPmethodid38576
	 companioncount = companioncount + 1	self:AddCompanion(MountDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

	return companioncount

end
