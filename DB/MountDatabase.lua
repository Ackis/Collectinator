--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

144 found from data mining.  0 ignored.

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
	-- method_vendorstype7locs15price10000000descHorse BreedernameGregor MacVinceid4885minlevel35react13type7locs12price10000000descHorse BreedernameKatie Hunterid384minlevel10react03type7locs267price10000000descHorse BreedernameMerideth Carlsonid2357minlevel32react13type7locs11price10000000descHorse BreedernameUnger Statforthid1460minlevel25react13type15.-1spellid458method_dropslootCount2type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source2level30rarity3rlevel30slevel75methoddropped-by,sold-byid5656
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 458, 5656, 3)
	self:AddCompanionFlags(MountDB, 458, 1,4,11)
	self:AddCompanionAcquire(MountDB, 458, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Black Stallion Bridle - 470
	-- method_vendorstype7locs11price10000000descHorse BreedernameUnger Statforthid1460minlevel25react13type15.-1spellid470method_dropslootCount3type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source12level30rarity3rlevel30slevel75methoddropped-by,sold-byid2411
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 470, 2411, 3)
	self:AddCompanionFlags(MountDB, 470, 1,4,11)
	self:AddCompanionAcquire(MountDB, 470, 3, 6749, 2, 1460)

	-- Pinto Bridle - 472
	-- method_vendorstype7locs15price10000000descHorse BreedernameGregor MacVinceid4885minlevel35react13type7locs12price10000000descHorse BreedernameKatie Hunterid384minlevel10react03type7locs267price10000000descHorse BreedernameMerideth Carlsonid2357minlevel32react13type7locs11price10000000descHorse BreedernameUnger Statforthid1460minlevel25react13type15.-1spellid472method_dropslootCount2type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source2level30rarity3rlevel30slevel75methoddropped-by,sold-byid2414
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 472, 2414, 3)
	self:AddCompanionFlags(MountDB, 472, 1,4,11)
	self:AddCompanionAcquire(MountDB, 472, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Timber Wolf - 580
	-- method_vendorstype7locs1637price10000000descKennel MasternameOgunaro Wolfrunnerid3362minlevel45react31type15.-1spellid580source2level30rarity3rlevel30slevel75methodsold-byid1132
	-- Vendor
	self:AddCompanion(MountDB, 580, 1132, 3)
	self:AddCompanionFlags(MountDB, 580, 2,4)
	self:AddCompanionAcquire(MountDB, 580, 2, 3362)

	-- Chestnut Mare Bridle - 6648
	-- method_vendorstype7locs15price10000000descHorse BreedernameGregor MacVinceid4885minlevel35react13type7locs12price10000000descHorse BreedernameKatie Hunterid384minlevel10react03type7locs267price10000000descHorse BreedernameMerideth Carlsonid2357minlevel32react13type7locs11price10000000descHorse BreedernameUnger Statforthid1460minlevel25react13type15.-1spellid6648method_dropslootCount3type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source12level30rarity3rlevel30slevel75methoddropped-by,sold-byid5655
	-- Mob Drop
	-- Vendor
	self:AddCompanion(MountDB, 6648, 5655, 3)
	self:AddCompanionFlags(MountDB, 6648, 1,4,11)
	self:AddCompanionAcquire(MountDB, 6648, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Dire Wolf - 6653
	-- method_vendorstype7locs1637price10000000descKennel MasternameOgunaro Wolfrunnerid3362minlevel45react31type15.-1spellid6653source2level30rarity3method_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4rlevel30slevel75methodsold-by,rewardfromid5665
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 6653, 5665, 3)
	self:AddCompanionFlags(MountDB, 6653, 2,4,8)
	self:AddCompanionAcquire(MountDB, 6653, 4, 1, 2, 3362)

	-- Horn of the Brown Wolf - 6654
	-- method_vendorstype7locs1637price10000000descKennel MasternameOgunaro Wolfrunnerid3362minlevel45react31type15.-1spellid6654source2level30rarity3rlevel30slevel75methodsold-byid5668
	-- Vendor
	self:AddCompanion(MountDB, 6654, 5668, 3)
	self:AddCompanionFlags(MountDB, 6654, 2,4)
	self:AddCompanionAcquire(MountDB, 6654, 2, 3362)

	-- Gray Ram - 6777
	-- method_vendorstype7locs1price10000000descRam BreedernameVeron Amberstillid1261minlevel10react13type15.-1spellid6777source2level30rarity3rlevel30slevel75methodsold-byid5864
	-- Vendor
	self:AddCompanion(MountDB, 6777, 5864, 3)
	self:AddCompanionFlags(MountDB, 6777, 1,4)
	self:AddCompanionAcquire(MountDB, 6777, 2, 1261)

	-- White Ram - 6898
	-- method_vendorstype7locs1price10000000descRam BreedernameVeron Amberstillid1261minlevel10react13type15.-1spellid6898source2level30rarity3rlevel30slevel75methodsold-byid5873
	-- Vendor
	self:AddCompanion(MountDB, 6898, 5873, 3)
	self:AddCompanionFlags(MountDB, 6898, 1,4)
	self:AddCompanionAcquire(MountDB, 6898, 2, 1261)

	-- Brown Ram - 6899
	-- method_vendorstype7locs1price10000000descRam BreedernameVeron Amberstillid1261minlevel10react13type15.-1spellid6899source2level30rarity3rlevel30slevel75methodsold-byid5872
	-- Vendor
	self:AddCompanion(MountDB, 6899, 5872, 3)
	self:AddCompanionFlags(MountDB, 6899, 1,4)
	self:AddCompanionAcquire(MountDB, 6899, 2, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- method_vendorstype7locs1657price10000000descSaber HandlernameLelanaiid4730minlevel35react13type15.-1spellid8394source2level30rarity3rlevel30slevel75methodsold-byid8631
	-- Vendor
	self:AddCompanion(MountDB, 8394, 8631, 3)
	self:AddCompanionFlags(MountDB, 8394, 1,4)
	self:AddCompanionAcquire(MountDB, 8394, 2, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- method_vendorstype7locs14price10000000descRaptor HandlernameZjolnirid7952minlevel45react31type15.-1spellid8395source2level30rarity3method_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4rlevel30slevel75methodsold-by,rewardfromid8588
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 8395, 8588, 3)
	self:AddCompanionFlags(MountDB, 8395, 2,4,8)
	self:AddCompanionAcquire(MountDB, 8395, 4, 1, 2, 7952)

	-- Reins of the Spotted Frostsaber - 10789
	-- method_vendorstype7locs1657price10000000descSaber HandlernameLelanaiid4730minlevel35react13type15.-1spellid10789source2level30rarity3rlevel30slevel75methodsold-byid8632
	-- Vendor
	self:AddCompanion(MountDB, 10789, 8632, 3)
	self:AddCompanionFlags(MountDB, 10789, 1,4)
	self:AddCompanionAcquire(MountDB, 10789, 2, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- method_vendorstype7locs1657price10000000descSaber HandlernameLelanaiid4730minlevel35react13type15.-1spellid10793source2level30rarity3rlevel30slevel75methodsold-byid8629
	-- Vendor
	self:AddCompanion(MountDB, 10793, 8629, 3)
	self:AddCompanionFlags(MountDB, 10793, 1,4)
	self:AddCompanionAcquire(MountDB, 10793, 2, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1spellid10795level40rarity1rlevel40slevel75methodid8589
	self:AddCompanion(MountDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- method_vendorstype7locs14price10000000descRaptor HandlernameZjolnirid7952minlevel45react31type15.-1spellid10796source2level30rarity3rlevel30slevel75methodsold-byid8591
	-- Vendor
	self:AddCompanion(MountDB, 10796, 8591, 3)
	self:AddCompanionFlags(MountDB, 10796, 2,4)
	self:AddCompanionAcquire(MountDB, 10796, 2, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- method_vendorstype7locs14price10000000descRaptor HandlernameZjolnirid7952minlevel45react31type15.-1spellid10799source2level30rarity3rlevel30slevel75methodsold-byid8592
	-- Vendor
	self:AddCompanion(MountDB, 10799, 8592, 3)
	self:AddCompanionFlags(MountDB, 10799, 2,4)
	self:AddCompanionAcquire(MountDB, 10799, 2, 7952)

	-- Red Mechanostrider - 10873
	-- method_vendorstype7locs1price10000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid10873source2level30rarity3rlevel30slevel75methodsold-byid8563
	-- Vendor
	self:AddCompanion(MountDB, 10873, 8563, 3)
	self:AddCompanionFlags(MountDB, 10873, 1,4)
	self:AddCompanionAcquire(MountDB, 10873, 2, 7955)

	-- Blue Mechanostrider - 10969
	-- method_vendorstype7locs1price10000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid10969source2level30rarity3rlevel30slevel75methodsold-byid8595
	-- Vendor
	self:AddCompanion(MountDB, 10969, 8595, 3)
	self:AddCompanionFlags(MountDB, 10969, 1,4)
	self:AddCompanionAcquire(MountDB, 10969, 2, 7955)

	-- White Mechanostrider Mod A - 15779
	-- type15.-1spellid15779level60rarity4rlevel60slevel150methodid13326
	self:AddCompanion(MountDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1spellid16055level60rarity4rlevel60slevel150methodid12303
	self:AddCompanion(MountDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 16056
	-- type15.-1spellid16056level60rarity4rlevel60slevel150methodid12302
	self:AddCompanion(MountDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1spellid16080level60rarity4rlevel60slevel150methodid12330
	self:AddCompanion(MountDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1spellid16081level60rarity4rlevel60slevel150methodid12351
	self:AddCompanion(MountDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1spellid16082method_dropslootCount2type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source1level60rarity4rlevel60slevel150methoddropped-byid12354
	-- Mob Drop
	self:AddCompanion(MountDB, 16082, 12354, 4)
	self:AddCompanionFlags(MountDB, 16082, 11)
	self:AddCompanionAcquire(MountDB, 16082, 3, 6749)

	-- White Stallion Bridle - 16083
	-- type15.-1spellid16083method_dropslootCount1type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source1level60rarity4rlevel60slevel150methoddropped-byid12353
	-- Mob Drop
	self:AddCompanion(MountDB, 16083, 12353, 4)
	self:AddCompanionFlags(MountDB, 16083, 11)
	self:AddCompanionAcquire(MountDB, 16083, 3, 6749)

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1spellid16084level60rarity4rlevel60slevel150methodid8586
	self:AddCompanion(MountDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- method_vendorstype7locs618price100000000descWintersaber TrainernameRivern Frostwindid10618minlevel62react23type15.-1spellid17229source2level60rarity4rlevel60slevel75methodsold-byid13086
	-- Vendor
	self:AddCompanion(MountDB, 17229, 13086, 4)
	self:AddCompanionFlags(MountDB, 17229, 1,4)
	self:AddCompanionAcquire(MountDB, 17229, 2, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1spellid17450level60rarity4rlevel60slevel150methodid13317
	self:AddCompanion(MountDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- method_vendorstype7locs1price10000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid17453source2level30rarity3rlevel30slevel75methodsold-byid13321
	-- Vendor
	self:AddCompanion(MountDB, 17453, 13321, 3)
	self:AddCompanionFlags(MountDB, 17453, 1,4)
	self:AddCompanionAcquire(MountDB, 17453, 2, 7955)

	-- Unpainted Mechanostrider - 17454
	-- method_vendorstype7locs1price10000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid17454source2level30rarity3rlevel30slevel75methodsold-byid13322
	-- Vendor
	self:AddCompanion(MountDB, 17454, 13322, 3)
	self:AddCompanionFlags(MountDB, 17454, 1,4)
	self:AddCompanionAcquire(MountDB, 17454, 2, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1spellid17459level60rarity4rlevel60slevel150methodid13327
	self:AddCompanion(MountDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1spellid17460level60rarity4rlevel60slevel150methodid13329
	self:AddCompanion(MountDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1spellid17461level60rarity4rlevel60slevel150methodid13328
	self:AddCompanion(MountDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- method_vendorstype7locs85price10000000descUndead Horse MerchantnameZachariah Postid4731minlevel30react31type15.-1spellid17462source2level30rarity3rlevel30slevel75methodsold-byid13331
	-- Vendor
	self:AddCompanion(MountDB, 17462, 13331, 3)
	self:AddCompanionFlags(MountDB, 17462, 2,4)
	self:AddCompanionAcquire(MountDB, 17462, 2, 4731)

	-- Blue Skeletal Horse - 17463
	-- method_vendorstype7locs85price10000000descUndead Horse MerchantnameZachariah Postid4731minlevel30react31type15.-1spellid17463source2level30rarity3method_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4rlevel30slevel75methodsold-by,rewardfromid13332
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 17463, 13332, 3)
	self:AddCompanionFlags(MountDB, 17463, 2,4,8)
	self:AddCompanionAcquire(MountDB, 17463, 4, 1, 2, 4731)

	-- Brown Skeletal Horse - 17464
	-- method_vendorstype7locs85price10000000descUndead Horse MerchantnameZachariah Postid4731minlevel30react31type15.-1spellid17464source2level30rarity3rlevel30slevel75methodsold-byid13333
	-- Vendor
	self:AddCompanion(MountDB, 17464, 13333, 3)
	self:AddCompanionFlags(MountDB, 17464, 2,4)
	self:AddCompanionAcquire(MountDB, 17464, 2, 4731)

	-- Green Skeletal Warhorse - 17465
	-- method_vendorstype7locs85price100000000descUndead Horse MerchantnameZachariah Postid4731minlevel30react31type15.-1spellid17465source2level60rarity4rlevel60slevel150methodsold-byid13334
	-- Vendor
	self:AddCompanion(MountDB, 17465, 13334, 4)
	self:AddCompanionFlags(MountDB, 17465, 2,4)
	self:AddCompanionAcquire(MountDB, 17465, 2, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1spellid17481method_dropslootCount1type6totalLootCount12362locs2017classification1nameBaron Rivendaredisp10729id10440minlevel62react33source1level60rarity4rlevel60slevel150methoddropped-byid13335
	-- Instance: 2017 - type1maxlevel60territory1category3nameStratholmeid2017minlevel58
	-- Mob Drop
	self:AddCompanion(MountDB, 17481, 13335, 4)
	self:AddCompanionFlags(MountDB, 17481, 5)
	self:AddCompanionAcquire(MountDB, 17481, 3, 10440)

	-- Gray Kodo - 18989
	-- method_vendorstype7locs215price10000000descKodo MountsnameHarb Clawhoofid3685minlevel45react31type15.-1spellid18989source2level30rarity3rlevel30slevel75methodsold-byid15277
	-- Vendor
	self:AddCompanion(MountDB, 18989, 15277, 3)
	self:AddCompanionFlags(MountDB, 18989, 2,4)
	self:AddCompanionAcquire(MountDB, 18989, 2, 3685)

	-- Brown Kodo - 18990
	-- method_vendorstype7locs215price10000000descKodo MountsnameHarb Clawhoofid3685minlevel45react31type15.-1spellid18990source2level30rarity3method_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4rlevel30slevel75methodsold-by,rewardfromid15290
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 18990, 15290, 3)
	self:AddCompanionFlags(MountDB, 18990, 2,4,8)
	self:AddCompanionAcquire(MountDB, 18990, 4, 1, 2, 3685)

	-- Green Kodo - 18991
	-- type15.-1spellid18991level60rarity4rlevel60slevel150methodid15292
	self:AddCompanion(MountDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1spellid18992level60rarity4rlevel60slevel150methodid15293
	self:AddCompanion(MountDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1spellid22717source8level55rarity4rlevel55slevel75methodid18241
	self:AddCompanion(MountDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1spellid22718source8level55rarity4rlevel55slevel75methodid18247
	self:AddCompanion(MountDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 22719
	-- method_vendorstype7locs2918price0002056030205593020558300000descMount VendornameLieutenant Karterid12783minlevel55react11type15.-1spellid22719source8level60rarity4rlevel60slevel150methodsold-byid29465
	-- Vendor
	self:AddCompanion(MountDB, 22719, 29465, 4)
	self:AddCompanionFlags(MountDB, 22719, 1,2,4)
	self:AddCompanionAcquire(MountDB, 22719, 2, 12783)

	-- Black War Ram - 22720
	-- method_vendorstype7locs2918price0002056030205593020558300000descMount VendornameLieutenant Karterid12783minlevel55react11type15.-1spellid22720source8level60rarity4rlevel60slevel150methodsold-byid29467
	-- Vendor
	self:AddCompanion(MountDB, 22720, 29467, 4)
	self:AddCompanionFlags(MountDB, 22720, 1,2,4)
	self:AddCompanionAcquire(MountDB, 22720, 2, 12783)

	-- Whistle of the Black War Raptor - 22721
	-- method_vendorstype7locs2917price0002056030205593020558300000descMount QuartermasternameRaider Borkid12796minlevel55react21type15.-1spellid22721source8level60rarity4rlevel60slevel150methodsold-byid29472
	-- Vendor
	self:AddCompanion(MountDB, 22721, 29472, 4)
	self:AddCompanionFlags(MountDB, 22721, 1,2,4)
	self:AddCompanionAcquire(MountDB, 22721, 2, 12796)

	-- Red Skeletal Warhorse - 22722
	-- method_vendorstype7locs2917price0002056030205593020558300000descMount QuartermasternameRaider Borkid12796minlevel55react21type15.-1spellid22722source8level60rarity4rlevel60slevel150methodsold-byid29470
	-- Vendor
	self:AddCompanion(MountDB, 22722, 29470, 4)
	self:AddCompanionFlags(MountDB, 22722, 1,2,4)
	self:AddCompanionAcquire(MountDB, 22722, 2, 12796)

	-- Reins of the Black War Tiger - 22723
	-- method_vendorstype7locs35243525148-1price000205603020559302055830nameGeneral Goods Vendorid26304minlevel70react11type7locs2918price0002056030205593020558300000descMount VendornameLieutenant Karterid12783minlevel55react11type15.-1spellid22723source28level60rarity4rlevel60slevel150methodsold-byid29471
	-- Vendor
	self:AddCompanion(MountDB, 22723, 29471, 4)
	self:AddCompanionFlags(MountDB, 22723, 1,2,4)
	self:AddCompanionAcquire(MountDB, 22723, 2, 12783, 2, 26304)

	-- Horn of the Black War Wolf - 22724
	-- type15.-1spellid22724source8level55rarity4rlevel55slevel75methodid18245
	self:AddCompanion(MountDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- method_vendorstype7locs1657price100000000descSaber HandlernameLelanaiid4730minlevel35react13type15.-1spellid23219source2level60rarity4rlevel60slevel150methodsold-byid18767
	-- Vendor
	self:AddCompanion(MountDB, 23219, 18767, 4)
	self:AddCompanionFlags(MountDB, 23219, 1,4)
	self:AddCompanionAcquire(MountDB, 23219, 2, 4730)

	-- Reins of the Swift Frostsaber - 23221
	-- method_vendorstype7locs1657price100000000descSaber HandlernameLelanaiid4730minlevel35react13type15.-1spellid23221source2level60rarity4rlevel60slevel150methodsold-byid18766
	-- Vendor
	self:AddCompanion(MountDB, 23221, 18766, 4)
	self:AddCompanionFlags(MountDB, 23221, 1,4)
	self:AddCompanionAcquire(MountDB, 23221, 2, 4730)

	-- Swift Yellow Mechanostrider - 23222
	-- method_vendorstype7locs1price100000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid23222source2level60rarity4rlevel60slevel150methodsold-byid18774
	-- Vendor
	self:AddCompanion(MountDB, 23222, 18774, 4)
	self:AddCompanionFlags(MountDB, 23222, 1,4)
	self:AddCompanionAcquire(MountDB, 23222, 2, 7955)

	-- Swift White Mechanostrider - 23223
	-- method_vendorstype7locs1price100000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid23223source2level60rarity4rlevel60slevel150methodsold-byid18773
	-- Vendor
	self:AddCompanion(MountDB, 23223, 18773, 4)
	self:AddCompanionFlags(MountDB, 23223, 1,4)
	self:AddCompanionAcquire(MountDB, 23223, 2, 7955)

	-- Swift Green Mechanostrider - 23225
	-- method_vendorstype7locs1price100000000descMechanostrider MerchantnameMilli Featherwhistleid7955minlevel50react13type15.-1spellid23225source2level60rarity4rlevel60slevel150methodsold-byid18772
	-- Vendor
	self:AddCompanion(MountDB, 23225, 18772, 4)
	self:AddCompanionFlags(MountDB, 23225, 1,4)
	self:AddCompanionAcquire(MountDB, 23225, 2, 7955)

	-- Swift Palomino - 23227
	-- method_vendorstype7locs15price100000000descHorse BreedernameGregor MacVinceid4885minlevel35react13type7locs12price100000000descHorse BreedernameKatie Hunterid384minlevel10react03type7locs267price100000000descHorse BreedernameMerideth Carlsonid2357minlevel32react13type15.-1spellid23227method_dropslootCount1type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source2level60rarity4method_queststype0level1category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677rlevel60slevel150methoddropped-by,sold-by,rewardfromid18776
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23227, 18776, 4)
	self:AddCompanionFlags(MountDB, 23227, 1,4,8,11)
	self:AddCompanionAcquire(MountDB, 23227, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift White Steed - 23228
	-- method_vendorstype7locs15price100000000descHorse BreedernameGregor MacVinceid4885minlevel35react13type7locs12price100000000descHorse BreedernameKatie Hunterid384minlevel10react03type7locs267price100000000descHorse BreedernameMerideth Carlsonid2357minlevel32react13type15.-1spellid23228method_dropslootCount2type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source2level60rarity4method_queststype0level1category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677rlevel60slevel150methoddropped-by,sold-by,rewardfromid18778
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23228, 18778, 4)
	self:AddCompanionFlags(MountDB, 23228, 1,4,8,11)
	self:AddCompanionAcquire(MountDB, 23228, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Steed - 23229
	-- method_vendorstype7locs15price100000000descHorse BreedernameGregor MacVinceid4885minlevel35react13type7locs12price100000000descHorse BreedernameKatie Hunterid384minlevel10react03type7locs267price100000000descHorse BreedernameMerideth Carlsonid2357minlevel32react13type15.-1spellid23229method_dropslootCount2type7totalLootCount34locs12descStable MasternameErmaid6749minlevel30react13source2level60rarity4method_queststype0level1category00choiceitems187771187761187781coin0nameWhite Stallion Exchangeid7677rlevel60slevel150methoddropped-by,sold-by,rewardfromid18777
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 23229, 18777, 4)
	self:AddCompanionFlags(MountDB, 23229, 1,4,8,11)
	self:AddCompanionAcquire(MountDB, 23229, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Ram - 23238
	-- method_vendorstype7locs1price100000000descRam BreedernameVeron Amberstillid1261minlevel10react13type15.-1spellid23238source2level60rarity4rlevel60slevel150methodsold-byid18786
	-- Vendor
	self:AddCompanion(MountDB, 23238, 18786, 4)
	self:AddCompanionFlags(MountDB, 23238, 1,4)
	self:AddCompanionAcquire(MountDB, 23238, 2, 1261)

	-- Swift Gray Ram - 23239
	-- method_vendorstype7locs1price100000000descRam BreedernameVeron Amberstillid1261minlevel10react13type15.-1spellid23239source2level60rarity4rlevel60slevel150methodsold-byid18787
	-- Vendor
	self:AddCompanion(MountDB, 23239, 18787, 4)
	self:AddCompanionFlags(MountDB, 23239, 1,4)
	self:AddCompanionAcquire(MountDB, 23239, 2, 1261)

	-- Swift White Ram - 23240
	-- method_vendorstype7locs1price100000000descRam BreedernameVeron Amberstillid1261minlevel10react13type15.-1spellid23240source2level60rarity4rlevel60slevel150methodsold-byid18785
	-- Vendor
	self:AddCompanion(MountDB, 23240, 18785, 4)
	self:AddCompanionFlags(MountDB, 23240, 1,4)
	self:AddCompanionAcquire(MountDB, 23240, 2, 1261)

	-- Swift Blue Raptor - 23241
	-- method_vendorstype7locs14price100000000descRaptor HandlernameZjolnirid7952minlevel45react31type15.-1spellid23241source2level60rarity4rlevel60slevel150methodsold-byid18788
	-- Vendor
	self:AddCompanion(MountDB, 23241, 18788, 4)
	self:AddCompanionFlags(MountDB, 23241, 2,4)
	self:AddCompanionAcquire(MountDB, 23241, 2, 7952)

	-- Swift Olive Raptor - 23242
	-- method_vendorstype7locs14price100000000descRaptor HandlernameZjolnirid7952minlevel45react31type15.-1spellid23242source2level60rarity4rlevel60slevel150methodsold-byid18789
	-- Vendor
	self:AddCompanion(MountDB, 23242, 18789, 4)
	self:AddCompanionFlags(MountDB, 23242, 2,4)
	self:AddCompanionAcquire(MountDB, 23242, 2, 7952)

	-- Swift Orange Raptor - 23243
	-- method_vendorstype7locs14price100000000descRaptor HandlernameZjolnirid7952minlevel45react31type15.-1spellid23243source2level60rarity4rlevel60slevel150methodsold-byid18790
	-- Vendor
	self:AddCompanion(MountDB, 23243, 18790, 4)
	self:AddCompanionFlags(MountDB, 23243, 2,4)
	self:AddCompanionAcquire(MountDB, 23243, 2, 7952)

	-- Purple Skeletal Warhorse - 23246
	-- method_vendorstype7locs85price100000000descUndead Horse MerchantnameZachariah Postid4731minlevel30react31type15.-1spellid23246source2level60rarity4rlevel60slevel150methodsold-byid18791
	-- Vendor
	self:AddCompanion(MountDB, 23246, 18791, 4)
	self:AddCompanionFlags(MountDB, 23246, 2,4)
	self:AddCompanionAcquire(MountDB, 23246, 2, 4731)

	-- Great White Kodo - 23247
	-- method_vendorstype7locs215price100000000descKodo MountsnameHarb Clawhoofid3685minlevel45react31type15.-1spellid23247source2level60rarity4rlevel60slevel150methodsold-byid18793
	-- Vendor
	self:AddCompanion(MountDB, 23247, 18793, 4)
	self:AddCompanionFlags(MountDB, 23247, 2,4)
	self:AddCompanionAcquire(MountDB, 23247, 2, 3685)

	-- Great Gray Kodo - 23248
	-- method_vendorstype7locs215price100000000descKodo MountsnameHarb Clawhoofid3685minlevel45react31type15.-1spellid23248source2level60rarity4rlevel60slevel150methodsold-byid18795
	-- Vendor
	self:AddCompanion(MountDB, 23248, 18795, 4)
	self:AddCompanionFlags(MountDB, 23248, 2,4)
	self:AddCompanionAcquire(MountDB, 23248, 2, 3685)

	-- Great Brown Kodo - 23249
	-- method_vendorstype7locs215price100000000descKodo MountsnameHarb Clawhoofid3685minlevel45react31type15.-1spellid23249source2level60rarity4rlevel60slevel150methodsold-byid18794
	-- Vendor
	self:AddCompanion(MountDB, 23249, 18794, 4)
	self:AddCompanionFlags(MountDB, 23249, 2,4)
	self:AddCompanionAcquire(MountDB, 23249, 2, 3685)

	-- Horn of the Swift Brown Wolf - 23250
	-- method_vendorstype7locs1637price100000000descKennel MasternameOgunaro Wolfrunnerid3362minlevel45react31type15.-1spellid23250source2level60rarity4rlevel60slevel150methodsold-byid18796
	-- Vendor
	self:AddCompanion(MountDB, 23250, 18796, 4)
	self:AddCompanionFlags(MountDB, 23250, 2,4)
	self:AddCompanionAcquire(MountDB, 23250, 2, 3362)

	-- Horn of the Swift Timber Wolf - 23251
	-- method_vendorstype7locs1637price100000000descKennel MasternameOgunaro Wolfrunnerid3362minlevel45react31type15.-1spellid23251source2level60rarity4rlevel60slevel150methodsold-byid18797
	-- Vendor
	self:AddCompanion(MountDB, 23251, 18797, 4)
	self:AddCompanionFlags(MountDB, 23251, 2,4)
	self:AddCompanionAcquire(MountDB, 23251, 2, 3362)

	-- Horn of the Swift Gray Wolf - 23252
	-- method_vendorstype7locs1637price100000000descKennel MasternameOgunaro Wolfrunnerid3362minlevel45react31type15.-1spellid23252source2level60rarity4rlevel60slevel150methodsold-byid18798
	-- Vendor
	self:AddCompanion(MountDB, 23252, 18798, 4)
	self:AddCompanionFlags(MountDB, 23252, 2,4)
	self:AddCompanionAcquire(MountDB, 23252, 2, 3362)

	-- Reins of the Swift Stormsaber - 23338
	-- method_vendorstype7locs1657price100000000descSaber HandlernameLelanaiid4730minlevel35react13type15.-1spellid23338source2level60rarity4rlevel60slevel150methodsold-byid18902
	-- Vendor
	self:AddCompanion(MountDB, 23338, 18902, 4)
	self:AddCompanionFlags(MountDB, 23338, 1,4)
	self:AddCompanionAcquire(MountDB, 23338, 2, 4730)

	-- Horn of the Frostwolf Howler - 23509
	-- method_vendorstype7maxlevel68locs2597classification1price000205605000000000descFrostwolf Supply OfficernameGrunnda Wolfheartid13218minlevel58react31type7locs36267classification1price0002056050descFrostwolf Supply OfficernameJekyll Flandringid13219minlevel58react31type15.-1spellid23509source8level60rarity4rlevel60slevel150methodsold-byid19029
	-- Vendor
	self:AddCompanion(MountDB, 23509, 19029, 4)
	self:AddCompanionFlags(MountDB, 23509, 2,4)
	self:AddCompanionAcquire(MountDB, 23509, 2, 13218, 2, 13219)

	-- Stormpike Battle Charger - 23510
	-- method_vendorstype7locs2597classification1price0002056050descStormpike Supply OfficernameGaelden Hammersmithid13216minlevel68react13type7locs36classification1price000205605000000000descStormpike Supply OfficernameThanthaldis Snowgleamid13217minlevel58react13type15.-1spellid23510source8level60rarity4rlevel60slevel150methodsold-byid19030
	-- Vendor
	self:AddCompanion(MountDB, 23510, 19030, 4)
	self:AddCompanionFlags(MountDB, 23510, 1,4)
	self:AddCompanionAcquire(MountDB, 23510, 2, 13216, 2, 13217)

	-- Swift Razzashi Raptor - 24242
	-- type15.-1spellid24242method_dropslootCount35type7totalLootCount8107locs1977classification3nameBloodlord Mandokirid11382react33source1level60rarity4rlevel60slevel150methoddropped-byid19872
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(MountDB, 24242, 19872, 4)
	self:AddCompanionFlags(MountDB, 24242, 6)
	self:AddCompanionAcquire(MountDB, 24242, 3, 11382)

	-- Swift Zulian Tiger - 24252
	-- type15.-1spellid24252method_dropslootCount9type7totalLootCount3676locs1977classification3nameHigh Priest Thekalid14509react33source1level60rarity4rlevel60slevel150methoddropped-byid19902
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(MountDB, 24252, 19902, 4)
	self:AddCompanionFlags(MountDB, 24252, 6)
	self:AddCompanionAcquire(MountDB, 24252, 3, 14509)

	-- Black Qiraji Resonating Crystal - 26656
	-- type15.-1spellid26656level60rarity5rlevel60slevel150methodid21176
	self:AddCompanion(MountDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 32235
	-- method_vendorstype7locs3520price100000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32235source2level70rarity3rlevel70slevel225methodsold-byid25470
	-- Vendor
	self:AddCompanion(MountDB, 32235, 25470, 3)
	self:AddCompanionFlags(MountDB, 32235, 1,4)
	self:AddCompanionAcquire(MountDB, 32235, 2, 20510)

	-- Ebon Gryphon - 32239
	-- method_vendorstype7locs3520price100000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32239source2level70rarity3rlevel70slevel225methodsold-byid25471
	-- Vendor
	self:AddCompanion(MountDB, 32239, 25471, 3)
	self:AddCompanionFlags(MountDB, 32239, 1,4)
	self:AddCompanionAcquire(MountDB, 32239, 2, 20510)

	-- Snowy Gryphon - 32240
	-- method_vendorstype7locs3520price100000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32240source2level70rarity3rlevel70slevel225methodsold-byid25472
	-- Vendor
	self:AddCompanion(MountDB, 32240, 25472, 3)
	self:AddCompanionFlags(MountDB, 32240, 1,4)
	self:AddCompanionAcquire(MountDB, 32240, 2, 20510)

	-- Swift Blue Gryphon - 32242
	-- method_vendorstype7locs3520price200000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32242source2level70rarity4rlevel70slevel300methodsold-byid25473
	-- Vendor
	self:AddCompanion(MountDB, 32242, 25473, 4)
	self:AddCompanionFlags(MountDB, 32242, 1,4)
	self:AddCompanionAcquire(MountDB, 32242, 2, 20510)

	-- Tawny Windrider - 32243
	-- method_vendorstype7locs3520price100000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32243source2level70rarity3rlevel70slevel225methodsold-byid25474
	-- Vendor
	self:AddCompanion(MountDB, 32243, 25474, 3)
	self:AddCompanionFlags(MountDB, 32243, 2,4)
	self:AddCompanionAcquire(MountDB, 32243, 2, 20494)

	-- Blue Windrider - 32244
	-- method_vendorstype7locs3520price100000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32244source2level70rarity3rlevel70slevel225methodsold-byid25475
	-- Vendor
	self:AddCompanion(MountDB, 32244, 25475, 3)
	self:AddCompanionFlags(MountDB, 32244, 2,4)
	self:AddCompanionAcquire(MountDB, 32244, 2, 20494)

	-- Green Windrider - 32245
	-- method_vendorstype7locs3520price100000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32245source2level70rarity3rlevel70slevel225methodsold-byid25476
	-- Vendor
	self:AddCompanion(MountDB, 32245, 25476, 3)
	self:AddCompanionFlags(MountDB, 32245, 2,4)
	self:AddCompanionAcquire(MountDB, 32245, 2, 20494)

	-- Swift Red Windrider - 32246
	-- method_vendorstype7locs3520price200000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32246source2level70rarity4rlevel70slevel300methodsold-byid25477
	-- Vendor
	self:AddCompanion(MountDB, 32246, 25477, 4)
	self:AddCompanionFlags(MountDB, 32246, 2,4)
	self:AddCompanionAcquire(MountDB, 32246, 2, 20494)

	-- Swift Red Gryphon - 32289
	-- method_vendorstype7locs3520price200000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32289source2level70rarity4rlevel70slevel300methodsold-byid25527
	-- Vendor
	self:AddCompanion(MountDB, 32289, 25527, 4)
	self:AddCompanionFlags(MountDB, 32289, 1,4)
	self:AddCompanionAcquire(MountDB, 32289, 2, 20510)

	-- Swift Green Gryphon - 32290
	-- method_vendorstype7locs3520price200000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32290source2level70rarity4rlevel70slevel300methodsold-byid25528
	-- Vendor
	self:AddCompanion(MountDB, 32290, 25528, 4)
	self:AddCompanionFlags(MountDB, 32290, 1,4)
	self:AddCompanionAcquire(MountDB, 32290, 2, 20510)

	-- Swift Purple Gryphon - 32292
	-- method_vendorstype7locs3520price200000000descGryphon KeepernameBrunn Flamebeardid20510minlevel70react13type15.-1spellid32292source2level70rarity4rlevel70slevel300methodsold-byid25529
	-- Vendor
	self:AddCompanion(MountDB, 32292, 25529, 4)
	self:AddCompanionFlags(MountDB, 32292, 1,4)
	self:AddCompanionAcquire(MountDB, 32292, 2, 20510)

	-- Swift Green Windrider - 32295
	-- method_vendorstype7locs3520price200000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32295source2level70rarity4rlevel70slevel300methodsold-byid25531
	-- Vendor
	self:AddCompanion(MountDB, 32295, 25531, 4)
	self:AddCompanionFlags(MountDB, 32295, 2,4)
	self:AddCompanionAcquire(MountDB, 32295, 2, 20494)

	-- Swift Yellow Windrider - 32296
	-- method_vendorstype7locs3520price200000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32296source2level70rarity4rlevel70slevel300methodsold-byid25532
	-- Vendor
	self:AddCompanion(MountDB, 32296, 25532, 4)
	self:AddCompanionFlags(MountDB, 32296, 2,4)
	self:AddCompanionAcquire(MountDB, 32296, 2, 20494)

	-- Swift Purple Windrider - 32297
	-- method_vendorstype7locs3520price200000000descWindrider KeepernameDama Wildmaneid20494minlevel70react31type15.-1spellid32297source2level70rarity4rlevel70slevel300methodsold-byid25533
	-- Vendor
	self:AddCompanion(MountDB, 32297, 25533, 4)
	self:AddCompanionFlags(MountDB, 32297, 2,4)
	self:AddCompanionAcquire(MountDB, 32297, 2, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- method_vendorstype7locs3430price100000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid33660source2level60rarity4rlevel60slevel150methodsold-byid28936
	-- Vendor
	self:AddCompanion(MountDB, 33660, 28936, 4)
	self:AddCompanionFlags(MountDB, 33660, 2,4)
	self:AddCompanionAcquire(MountDB, 33660, 2, 16264)

	-- Brown Elekk - 34406
	-- method_vendorstype7locs35243557price10000000descElekk BreedernameTorallius the Pack Handlerid17584minlevel14react13type15.-1spellid34406source2level30rarity3rlevel30slevel75methodsold-byid28481
	-- Vendor
	self:AddCompanion(MountDB, 34406, 28481, 3)
	self:AddCompanionFlags(MountDB, 34406, 1,4)
	self:AddCompanionAcquire(MountDB, 34406, 2, 17584)

	-- Reins of the Dark War Talbuk - 34790
	-- method_vendorstype7locs3518classification1price000260451002604420000000descBlade MerchantnameAldraanid21485minlevel70react13type7locs3518classification1price000260451002604420000000descBlade MerchantnameCoreielid21474minlevel70react31type15.-1spellid34790source2level60rarity4rlevel60slevel150methodsold-byid29228
	-- Vendor
	self:AddCompanion(MountDB, 34790, 29228, 4)
	self:AddCompanionFlags(MountDB, 34790, 1,2,4)
	self:AddCompanionAcquire(MountDB, 34790, 2, 21474, 2, 21485)

	-- Red Hawkstrider - 34795
	-- method_vendorstype7locs3430price10000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid34795source2level30rarity3rlevel30slevel75methodsold-byid28927
	-- Vendor
	self:AddCompanion(MountDB, 34795, 28927, 3)
	self:AddCompanionFlags(MountDB, 34795, 2,4)
	self:AddCompanionAcquire(MountDB, 34795, 2, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	-- method_vendorstype7locs3518price100000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid34896source2level60rarity4rlevel60slevel150methodsold-byid29102
	-- Vendor
	self:AddCompanion(MountDB, 34896, 29102, 4)
	self:AddCompanionFlags(MountDB, 34896, 2,4)
	self:AddCompanionAcquire(MountDB, 34896, 2, 20241)

	-- Reins of the White War Talbuk - 34897
	-- method_vendorstype7locs3518price100000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid34897source2level60rarity4rlevel60slevel150methodsold-byid29103
	-- Vendor
	self:AddCompanion(MountDB, 34897, 29103, 4)
	self:AddCompanionFlags(MountDB, 34897, 2,4)
	self:AddCompanionAcquire(MountDB, 34897, 2, 20241)

	-- Reins of the Silver War Talbuk - 34898
	-- method_vendorstype7locs3518price100000000descKurenai QuartermasternameTrader Narasuid20240minlevel65react13type15.-1spellid34898source2level60rarity4rlevel60slevel150methodsold-byid29229
	-- Vendor
	self:AddCompanion(MountDB, 34898, 29229, 4)
	self:AddCompanionFlags(MountDB, 34898, 1,4)
	self:AddCompanionAcquire(MountDB, 34898, 2, 20240)

	-- Reins of the Tan War Talbuk - 34899
	-- method_vendorstype7locs3518price100000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid34899source2level60rarity4rlevel60slevel150methodsold-byid29105
	-- Vendor
	self:AddCompanion(MountDB, 34899, 29105, 4)
	self:AddCompanionFlags(MountDB, 34899, 2,4)
	self:AddCompanionAcquire(MountDB, 34899, 2, 20241)

	-- Purple Hawkstrider - 35018
	-- method_vendorstype7locs3430price10000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid35018source2level30rarity3rlevel30slevel75methodsold-byid29222
	-- Vendor
	self:AddCompanion(MountDB, 35018, 29222, 3)
	self:AddCompanionFlags(MountDB, 35018, 2,4)
	self:AddCompanionAcquire(MountDB, 35018, 2, 16264)

	-- Blue Hawkstrider - 35020
	-- method_vendorstype7locs3430price10000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid35020source2level30rarity3rlevel30slevel75methodsold-byid29220
	-- Vendor
	self:AddCompanion(MountDB, 35020, 29220, 3)
	self:AddCompanionFlags(MountDB, 35020, 2,4)
	self:AddCompanionAcquire(MountDB, 35020, 2, 16264)

	-- Black Hawkstrider - 35022
	-- method_vendorstype7locs3430price10000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid35022source2level30rarity3method_queststype0level73category52597choiceitems29221113332115290156651coin8nameJoining the Battleid1side4rlevel30slevel75methodsold-by,rewardfromid29221
	-- Vendor
	-- Quest Reward
	self:AddCompanion(MountDB, 35022, 29221, 3)
	self:AddCompanionFlags(MountDB, 35022, 2,4,8)
	self:AddCompanionAcquire(MountDB, 35022, 4, 1, 2, 16264)

	-- Swift Green Hawkstrider - 35025
	-- method_vendorstype7locs3430price100000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid35025source2level60rarity4rlevel60slevel150methodsold-byid29223
	-- Vendor
	self:AddCompanion(MountDB, 35025, 29223, 4)
	self:AddCompanionFlags(MountDB, 35025, 2,4)
	self:AddCompanionAcquire(MountDB, 35025, 2, 16264)

	-- Swift Purple Hawkstrider - 35027
	-- method_vendorstype7locs3430price100000000descHawkstrider BreedernameWinaestraid16264minlevel15react31type15.-1spellid35027source2level60rarity4rlevel60slevel150methodsold-byid29224
	-- Vendor
	self:AddCompanion(MountDB, 35027, 29224, 4)
	self:AddCompanionFlags(MountDB, 35027, 2,4)
	self:AddCompanionAcquire(MountDB, 35027, 2, 16264)

	-- Swift Warstrider - 35028
	-- method_vendorstype7locs2917price0002056030205593020558300000descMount QuartermasternameRaider Borkid12796minlevel55react21type15.-1spellid35028source8level60rarity4rlevel60slevel150methodsold-byid34129
	-- Vendor
	self:AddCompanion(MountDB, 35028, 34129, 4)
	self:AddCompanionFlags(MountDB, 35028, 1,2,4)
	self:AddCompanionAcquire(MountDB, 35028, 2, 12796)

	-- Gray Elekk - 35710
	-- method_vendorstype7locs35243557price10000000descElekk BreedernameTorallius the Pack Handlerid17584minlevel14react13type15.-1spellid35710source2level30rarity3rlevel30slevel75methodsold-byid29744
	-- Vendor
	self:AddCompanion(MountDB, 35710, 29744, 3)
	self:AddCompanionFlags(MountDB, 35710, 1,4)
	self:AddCompanionAcquire(MountDB, 35710, 2, 17584)

	-- Purple Elekk - 35711
	-- method_vendorstype7locs35243557price10000000descElekk BreedernameTorallius the Pack Handlerid17584minlevel14react13type15.-1spellid35711source2level30rarity3rlevel30slevel75methodsold-byid29743
	-- Vendor
	self:AddCompanion(MountDB, 35711, 29743, 3)
	self:AddCompanionFlags(MountDB, 35711, 1,4)
	self:AddCompanionAcquire(MountDB, 35711, 2, 17584)

	-- Great Green Elekk - 35712
	-- method_vendorstype7locs35243557price100000000descElekk BreedernameTorallius the Pack Handlerid17584minlevel14react13type15.-1spellid35712source2level60rarity4rlevel60slevel150methodsold-byid29746
	-- Vendor
	self:AddCompanion(MountDB, 35712, 29746, 4)
	self:AddCompanionFlags(MountDB, 35712, 1,4)
	self:AddCompanionAcquire(MountDB, 35712, 2, 17584)

	-- Great Blue Elekk - 35713
	-- method_vendorstype7locs35243557price100000000descElekk BreedernameTorallius the Pack Handlerid17584minlevel14react13type15.-1spellid35713source2level60rarity4rlevel60slevel150methodsold-byid29745
	-- Vendor
	self:AddCompanion(MountDB, 35713, 29745, 4)
	self:AddCompanionFlags(MountDB, 35713, 1,4)
	self:AddCompanionAcquire(MountDB, 35713, 2, 17584)

	-- Great Purple Elekk - 35714
	-- method_vendorstype7locs35243557price100000000descElekk BreedernameTorallius the Pack Handlerid17584minlevel14react13type15.-1spellid35714source2level60rarity4rlevel60slevel150methodsold-byid29747
	-- Vendor
	self:AddCompanion(MountDB, 35714, 29747, 4)
	self:AddCompanionFlags(MountDB, 35714, 1,4)
	self:AddCompanionAcquire(MountDB, 35714, 2, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1spellid36702method_dropslootCount78type6totalLootCount35478locs3457classification3nameAttumen the Huntsmandisp16416id15550react33lootCount10type6totalLootCount6529locs3457classification3nameAttumen the Huntsmandisp16040id16152react33source1level70rarity4rlevel70slevel150methoddropped-byid30480
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	self:AddCompanion(MountDB, 36702, 30480, 4)
	self:AddCompanionFlags(MountDB, 36702, 6)
	self:AddCompanionAcquire(MountDB, 36702, 3, 15550, 3, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1spellid37015level70rarity4rlevel70slevel300methodid30609
	self:AddCompanion(MountDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- method_vendorstype7locs3518price70000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid39315source2level60rarity4rlevel60slevel150methodsold-byid31829
	-- Vendor
	self:AddCompanion(MountDB, 39315, 31829, 4)
	self:AddCompanionFlags(MountDB, 39315, 2,4)
	self:AddCompanionAcquire(MountDB, 39315, 2, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- method_vendorstype7locs3518classification1price00026045702604415000000descBlade MerchantnameAldraanid21485minlevel70react13type7locs3518classification1price00026045702604415000000descBlade MerchantnameCoreielid21474minlevel70react31type15.-1spellid39316source2level60rarity4rlevel60slevel150methodsold-byid28915
	-- Vendor
	self:AddCompanion(MountDB, 39316, 28915, 4)
	self:AddCompanionFlags(MountDB, 39316, 1,2,4)
	self:AddCompanionAcquire(MountDB, 39316, 2, 21474, 2, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- method_vendorstype7locs3518price70000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid39317source2level60rarity4rlevel60slevel150methodsold-byid31831
	-- Vendor
	self:AddCompanion(MountDB, 39317, 31831, 4)
	self:AddCompanionFlags(MountDB, 39317, 2,4)
	self:AddCompanionAcquire(MountDB, 39317, 2, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- method_vendorstype7locs3518price70000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid39318source2level60rarity4rlevel60slevel150methodsold-byid31833
	-- Vendor
	self:AddCompanion(MountDB, 39318, 31833, 4)
	self:AddCompanionFlags(MountDB, 39318, 2,4)
	self:AddCompanionAcquire(MountDB, 39318, 2, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- method_vendorstype7locs3518price70000000descMag'har QuartermasternameProvisioner Naselaid20241minlevel65react31type15.-1spellid39319source2level60rarity4rlevel60slevel150methodsold-byid31835
	-- Vendor
	self:AddCompanion(MountDB, 39319, 31835, 4)
	self:AddCompanionFlags(MountDB, 39319, 2,4)
	self:AddCompanionAcquire(MountDB, 39319, 2, 20241)

	-- Green Riding Nether Ray - 39798
	-- method_vendorstype7locs3519price00000000descSkyguard QuartermasternameGrellaid23367minlevel70react11type15.-1spellid39798source2level70rarity4rlevel70slevel300methodsold-byid32314
	-- Vendor
	self:AddCompanion(MountDB, 39798, 32314, 4)
	self:AddCompanionFlags(MountDB, 39798, 1,2,4)
	self:AddCompanionAcquire(MountDB, 39798, 2, 23367)

	-- Red Riding Nether Ray - 39800
	-- method_vendorstype7locs3519price00000000descSkyguard QuartermasternameGrellaid23367minlevel70react11type15.-1spellid39800source2level70rarity4rlevel70slevel300methodsold-byid32317
	-- Vendor
	self:AddCompanion(MountDB, 39800, 32317, 4)
	self:AddCompanionFlags(MountDB, 39800, 1,2,4)
	self:AddCompanionAcquire(MountDB, 39800, 2, 23367)

	-- Purple Riding Nether Ray - 39801
	-- method_vendorstype7locs3519price00000000descSkyguard QuartermasternameGrellaid23367minlevel70react11type15.-1spellid39801source2level70rarity4rlevel70slevel300methodsold-byid32316
	-- Vendor
	self:AddCompanion(MountDB, 39801, 32316, 4)
	self:AddCompanionFlags(MountDB, 39801, 1,2,4)
	self:AddCompanionAcquire(MountDB, 39801, 2, 23367)

	-- Silver Riding Nether Ray - 39802
	-- method_vendorstype7locs3519price00000000descSkyguard QuartermasternameGrellaid23367minlevel70react11type15.-1spellid39802source2level70rarity4rlevel70slevel300methodsold-byid32318
	-- Vendor
	self:AddCompanion(MountDB, 39802, 32318, 4)
	self:AddCompanionFlags(MountDB, 39802, 1,2,4)
	self:AddCompanionAcquire(MountDB, 39802, 2, 23367)

	-- Blue Riding Nether Ray - 39803
	-- method_vendorstype7locs3519price00000000descSkyguard QuartermasternameGrellaid23367minlevel70react11type15.-1spellid39803source2level70rarity4rlevel70slevel300methodsold-byid32319
	-- Vendor
	self:AddCompanion(MountDB, 39803, 32319, 4)
	self:AddCompanionFlags(MountDB, 39803, 1,2,4)
	self:AddCompanionAcquire(MountDB, 39803, 2, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1spellid40192method_dropslootCount14type7totalLootCount3723locs37033845classification3descLord of the Blood ElvesnameKael'thas Sunstriderdisp20023id19622minlevel73react33lootCount1type7totalLootCount9689locs409537033845classification3descLord of the Blood ElvesnameKael'thas Sunstriderdisp20023id23054minlevel72react33source1level70rarity4rlevel70slevel300methoddropped-byid32458
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1maxlevel70territory1category3expansion1nameMagisters' Terracelimit5id4095minlevel70
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	self:AddCompanion(MountDB, 40192, 32458, 4)
	self:AddCompanionFlags(MountDB, 40192, 5,6,11)
	self:AddCompanionAcquire(MountDB, 40192, 3, 19622, 3, 23054)

	-- Reins of the Raven Lord - 41252
	-- type15.-1spellid41252method_dropslootCount12type10totalLootCount5155locs3791classification1nameAnzudisp21492id23035minlevel69react33source1level70rarity4rlevel70slevel150methoddropped-byid32768
	-- Instance: 3791 - type5maxlevel69territory1category3expansion1nameAuchindoun: Sethekk Hallsid3791minlevel67
	-- Mob Drop
	self:AddCompanion(MountDB, 41252, 32768, 4)
	self:AddCompanionFlags(MountDB, 41252, 5)
	self:AddCompanionAcquire(MountDB, 41252, 3, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- method_vendorstype7locs3520price200000000nameDrake Dealer Hurlunkid23489minlevel70react11type15.-1spellid41513source23level70rarity4method_queststype0level70givenitems328571category23703coin0nameOnyxien the Onyx Netherwing Drakeid11111side1rlevel70slevel300methodredemption,rewardfrommethod_redemptionUnknownid32857
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41513, 32857, 4)
	self:AddCompanionFlags(MountDB, 41513, 1,2,8)
	self:AddCompanionAcquire(MountDB, 41513, 4, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- method_vendorstype7locs3520price200000000nameDrake Dealer Hurlunkid23489minlevel70react11type15.-1spellid41514source23level70rarity4method_queststype0level70givenitems328581category23703coin0nameSuraku the Azure Netherwing Drakeid11112side1rlevel70slevel300methodredemption,rewardfrommethod_redemptionUnknownid32858
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41514, 32858, 4)
	self:AddCompanionFlags(MountDB, 41514, 1,2,8)
	self:AddCompanionAcquire(MountDB, 41514, 4, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- method_vendorstype7locs3520price200000000nameDrake Dealer Hurlunkid23489minlevel70react11type15.-1spellid41515source23level70rarity4method_queststype0level70givenitems328591category23703coin0nameJorus the Cobalt Netherwing Drakeid11109side1rlevel70slevel300methodredemption,rewardfrommethod_redemptionUnknownid32859
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41515, 32859, 4)
	self:AddCompanionFlags(MountDB, 41515, 1,2,8)
	self:AddCompanionAcquire(MountDB, 41515, 4, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- method_vendorstype7locs3520price200000000nameDrake Dealer Hurlunkid23489minlevel70react11type15.-1spellid41516source23level70rarity4method_queststype0level70givenitems328601category23703coin0nameMalfas the Purple Netherwing Drakeid11110side1rlevel70slevel300methodredemption,rewardfrommethod_redemptionUnknownid32860
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41516, 32860, 4)
	self:AddCompanionFlags(MountDB, 41516, 1,2,8)
	self:AddCompanionAcquire(MountDB, 41516, 4, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- method_vendorstype7locs3520price200000000nameDrake Dealer Hurlunkid23489minlevel70react11type15.-1spellid41517source23level70rarity4method_queststype0level70givenitems328611category23703coin0nameZoya the Veridian Netherwing Drakeid11114side1rlevel70slevel300methodredemption,rewardfrommethod_redemptionUnknownid32861
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41517, 32861, 4)
	self:AddCompanionFlags(MountDB, 41517, 1,2,8)
	self:AddCompanionAcquire(MountDB, 41517, 4, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- method_vendorstype7locs3520price200000000nameDrake Dealer Hurlunkid23489minlevel70react11type15.-1spellid41518source23level70rarity4method_queststype0level70givenitems328621category23703coin0nameVoranaku the Violet Netherwing Drakeid11113side1rlevel70slevel300methodredemption,rewardfrommethod_redemptionUnknownid32862
	-- Redemption
	-- Quest Reward
	self:AddCompanion(MountDB, 41518, 32862, 4)
	self:AddCompanionFlags(MountDB, 41518, 1,2,8)
	self:AddCompanionAcquire(MountDB, 41518, 4, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1spellid42776level30rarity3rlevel30slevel75methodid33224
	self:AddCompanion(MountDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1spellid42777level60rarity4rlevel60slevel150methodid33225
	self:AddCompanion(MountDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 43688
	-- type15.-1spellid43688method_dropslootCount19type3totalLootCount25locs3805nameAshli's Bagid186672level70rarity4rlevel70slevel150methodcontained-in-objectid33809
	-- Unknown
	self:AddCompanion(MountDB, 43688, 33809, 4)
	-- No filter flags
	-- No acquire information

	-- Brewfest Ram - 43899
	-- method_vendorstype7locs14price00000000descRam Racing ApprenticenameDriz Tumblequickid24510type15.-1spellid43899source2level30rarity3rlevel30slevel75methodsold-byid33976
	-- Vendor
	self:AddCompanion(MountDB, 43899, 33976, 3)
	self:AddCompanionFlags(MountDB, 43899, 1,2,4)
	self:AddCompanionAcquire(MountDB, 43899, 2, 24510)

	-- Swift Brewfest Ram - 43900
	-- method_vendorstype7locs14price00000000descRam Racing ApprenticenameDriz Tumblequickid24510type15.-1spellid43900level60rarity4rlevel60slevel150methodsold-byid33977
	-- Vendor
	self:AddCompanion(MountDB, 43900, 33977, 4)
	self:AddCompanionFlags(MountDB, 43900, 1,2,4)
	self:AddCompanionAcquire(MountDB, 43900, 2, 24510)

	-- Cenarion War Hippogryph - 43927
	-- method_vendorstype7locs3521classification1price00000000descCenarion Expedition QuartermasternameFedryen Swiftspearid17904minlevel60react11type15.-1spellid43927source2level70rarity4rlevel70slevel300methodsold-byid33999
	-- Vendor
	self:AddCompanion(MountDB, 43927, 33999, 4)
	self:AddCompanionFlags(MountDB, 43927, 1,2,4)
	self:AddCompanionAcquire(MountDB, 43927, 2, 17904)

	-- Merciless Nether Drake - 44744
	-- type15.-1spellid44744level70rarity4rlevel70slevel300methodredemptionmethod_redemptionUnknownid34092
	-- Redemption
	self:AddCompanion(MountDB, 44744, 34092, 4)
	-- No filter flags
	-- No acquire information

	-- Swift White Hawkstrider - 46628
	-- type15.-1spellid46628method_dropslootCount4type7totalLootCount6321locs4095classification1descLord of the Blood ElvesnameKael'thas Sunstriderdisp22906id24664minlevel72react33level60rarity4rlevel60slevel150methoddropped-byid35513
	-- Instance: 4095 - type1maxlevel70territory1category3expansion1nameMagisters' Terracelimit5id4095minlevel70
	-- Mob Drop
	self:AddCompanion(MountDB, 46628, 35513, 4)
	self:AddCompanionFlags(MountDB, 46628, 5)
	self:AddCompanionAcquire(MountDB, 46628, 3, 24664)

	-- Magic Broom - 47977
	-- type15.-1spellid47977level1rarity3rlevel30slevel75methodspeed0.5id37011
	self:AddCompanion(MountDB, 47977, 37011, 3)
	-- No filter flags
	-- No acquire information

	-- The Horseman's Reins - 48025
	-- type15.-1spellid48025level60rarity4rlevel60slevel75methodid37012
	self:AddCompanion(MountDB, 48025, 37012, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- method_vendorstype7locs2918price0002056030205593020558300000descMount VendornameLieutenant Karterid12783minlevel55react11type15.-1spellid48027source8level60rarity4rlevel60slevel150methodsold-byid35906
	-- Vendor
	self:AddCompanion(MountDB, 48027, 35906, 4)
	self:AddCompanionFlags(MountDB, 48027, 1,2,4)
	self:AddCompanionAcquire(MountDB, 48027, 2, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1spellid49193level70rarity4rlevel70slevel300methodid37676
	self:AddCompanion(MountDB, 49193, 37676, 4)
	-- No filter flags
	-- No acquire information

	-- Big Battle Bear - 51412
	-- type15.-1spellid51412level60rarity4rlevel60slevel150methodid38576
	self:AddCompanion(MountDB, 51412, 38576, 4)
	-- No filter flags
	-- No acquire information

end
