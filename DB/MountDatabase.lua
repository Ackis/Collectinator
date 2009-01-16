--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

165 found from data mining.
0 ignored.
0 WotLK ignored.

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:AddCompanion(MountDB, SpellID, Item ID, Rarity, Companion Type)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

function addon:MakeMountTable(MountDB)

	local companioncount = 0

	-- Brown Horse Bridle - 458
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 458, 5656, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 458, 1,3,16)
	self:AddCompanionAcquire(MountDB, 458, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Black Stallion Bridle - 470
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 470, 2411, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 470, 1,3,16)
	self:AddCompanionAcquire(MountDB, 470, 1, 1460)

	-- Pinto Bridle - 472
	-- type15.-1rlevel30source2slevel75spellid472level30method_vendorsprice10000000locs12type7react13descHorse BreedernameKatie Hunterminlevel10id384price10000000locs11type7react13descHorse BreedernameUnger Statforthid1460price10000000locs267type7react13descHorse BreedernameMerideth Carlsonminlevel32id2357price10000000locs15type7react13descHorse BreedernameGregor MacVinceminlevel35id4885methodsold-byid2414item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 472, 2414, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 472, 1,3,16)
	self:AddCompanionAcquire(MountDB, 472, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Timber Wolf - 580
	-- type15.-1rlevel30source2slevel75spellid580level30method_vendorsprice10000000locs1637type7react31descKennel MasternameOgunaro Wolfrunnerminlevel45id3362methodsold-byid1132item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 580, 1132, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 580, 2,3,16)
	self:AddCompanionAcquire(MountDB, 580, 1, 3362)

	-- Chestnut Mare Bridle - 6648
	-- type15.-1rlevel30source12slevel75spellid6648level30method_vendorsprice10000000locs12type7react13descHorse BreedernameKatie Hunterminlevel10id384price10000000locs11type7react13descHorse BreedernameUnger Statforthid1460price10000000locs267type7react13descHorse BreedernameMerideth Carlsonminlevel32id2357price10000000locs15type7react13descHorse BreedernameGregor MacVinceminlevel35id4885methodsold-byid5655item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 6648, 5655, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 6648, 1,3,16)
	self:AddCompanionAcquire(MountDB, 6648, 1, 384, 1, 1460, 1, 2357, 1, 4885)

	-- Horn of the Dire Wolf - 6653
	-- type15.-1rlevel30source23slevel75spellid6653level30method_vendorsprice10000000locs1637type7react31descKennel MasternameOgunaro Wolfrunnerminlevel45id3362methodsold-byid5665item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 6653, 5665, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 6653, 2,3,16)
	self:AddCompanionAcquire(MountDB, 6653, 1, 3362)

	-- Horn of the Brown Wolf - 6654
	-- type15.-1rlevel30source2slevel75spellid6654level30method_vendorsprice10000000locs1637type7react31descKennel MasternameOgunaro Wolfrunnerminlevel45id3362methodsold-byid5668item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 6654, 5668, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 6654, 2,3,16)
	self:AddCompanionAcquire(MountDB, 6654, 1, 3362)

	-- Gray Ram - 6777
	-- type15.-1rlevel30source2slevel75spellid6777level30method_vendorsprice10000000locs1type7react13descRam BreedernameVeron Amberstillminlevel10id1261methodsold-byid5864item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 6777, 5864, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 6777, 1,3,16)
	self:AddCompanionAcquire(MountDB, 6777, 1, 1261)

	-- White Ram - 6898
	-- type15.-1rlevel30source2slevel75spellid6898level30method_vendorsprice10000000locs1type7react13descRam BreedernameVeron Amberstillminlevel10id1261methodsold-byid5873item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 6898, 5873, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 6898, 1,3,16)
	self:AddCompanionAcquire(MountDB, 6898, 1, 1261)

	-- Brown Ram - 6899
	-- type15.-1rlevel30source2slevel75spellid6899level30method_vendorsprice10000000locs1type7react13descRam BreedernameVeron Amberstillminlevel10id1261methodsold-byid5872item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 6899, 5872, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 6899, 1,3,16)
	self:AddCompanionAcquire(MountDB, 6899, 1, 1261)

	-- Reins of the Striped Frostsaber - 8394
	-- type15.-1rlevel30source2slevel75spellid8394level30method_vendorsprice10000000locs1657type7react13descSaber HandlernameLelanaiminlevel35id4730methodsold-byid8631item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 8394, 8631, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 8394, 1,3,16)
	self:AddCompanionAcquire(MountDB, 8394, 1, 4730)

	-- Whistle of the Emerald Raptor - 8395
	-- type15.-1rlevel30source23slevel75spellid8395level30method_vendorsprice10000000locs14type7react31descRaptor HandlernameZjolnirminlevel45id7952methodsold-byid8588item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 8395, 8588, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 8395, 2,3,16)
	self:AddCompanionAcquire(MountDB, 8395, 1, 7952)

	-- Reins of the Spotted Frostsaber - 10789
	-- type15.-1rlevel30source2slevel75spellid10789level30method_vendorsprice10000000locs1657type7react13descSaber HandlernameLelanaiminlevel35id4730methodsold-byid8632item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10789, 8632, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 10789, 1,3,16)
	self:AddCompanionAcquire(MountDB, 10789, 1, 4730)

	-- Reins of the Striped Nightsaber - 10793
	-- type15.-1rlevel30source2slevel75spellid10793level30method_vendorsprice10000000locs1657type7react13descSaber HandlernameLelanaiminlevel35id4730methodsold-byid8629item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10793, 8629, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 10793, 1,3,16)
	self:AddCompanionAcquire(MountDB, 10793, 1, 4730)

	-- Old Whistle of the Ivory Raptor - 10795
	-- type15.-1rlevel40slevel75spellid10795level40methodid8589item_bindsBOUrarity1

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10795, 8589, 1, "MOUNT")
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 10796
	-- type15.-1rlevel30source2slevel75spellid10796level30method_vendorsprice10000000locs14type7react31descRaptor HandlernameZjolnirminlevel45id7952methodsold-byid8591item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10796, 8591, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 10796, 2,3,16)
	self:AddCompanionAcquire(MountDB, 10796, 1, 7952)

	-- Whistle of the Violet Raptor - 10799
	-- type15.-1rlevel30source2slevel75spellid10799level30method_vendorsprice10000000locs14type7react31descRaptor HandlernameZjolnirminlevel45id7952methodsold-byid8592item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10799, 8592, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 10799, 2,3,16)
	self:AddCompanionAcquire(MountDB, 10799, 1, 7952)

	-- Red Mechanostrider - 10873
	-- type15.-1rlevel30source2slevel75spellid10873level30method_vendorsprice10000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-byid8563item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10873, 8563, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 10873, 1,3,16)
	self:AddCompanionAcquire(MountDB, 10873, 1, 7955)

	-- Blue Mechanostrider - 10969
	-- type15.-1rlevel30source2slevel75spellid10969level30method_vendorsprice10000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-byid8595item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 10969, 8595, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 10969, 1,3,16)
	self:AddCompanionAcquire(MountDB, 10969, 1, 7955)

	-- White Mechanostrider Mod B - 15779
	-- type15.-1rlevel60slevel150spellid15779level60methodid13326item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 15779, 13326, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 15779, 16)
	-- No acquire information

	-- Reins of the Nightsaber - 16055
	-- type15.-1rlevel60slevel150spellid16055level60methodid12303item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16055, 12303, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16055, 16)
	-- No acquire information

	-- Reins of the Ancient Frostsaber - 16056
	-- type15.-1rlevel60slevel150spellid16056level60methodid12302item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16056, 12302, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16056, 16)
	-- No acquire information

	-- Horn of the Red Wolf - 16080
	-- type15.-1rlevel60slevel150spellid16080level60methodid12330item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16080, 12330, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16080, 16)
	-- No acquire information

	-- Horn of the Arctic Wolf - 16081
	-- type15.-1rlevel60slevel150spellid16081level60methodid12351item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16081, 12351, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16081, 16)
	-- No acquire information

	-- Palomino Bridle - 16082
	-- type15.-1rlevel60source1slevel150spellid16082level60methodid12354item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16082, 12354, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16082, 16)
	-- No acquire information

	-- White Stallion Bridle - 16083
	-- type15.-1rlevel60source1slevel150spellid16083level60methodid12353item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16083, 12353, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16083, 16)
	-- No acquire information

	-- Whistle of the Mottled Red Raptor - 16084
	-- type15.-1rlevel60slevel150spellid16084level60methodid8586item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 16084, 8586, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 16084, 16)
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 17229
	-- type15.-1rlevel60source2slevel75spellid17229level60method_vendorsprice100000000locs618type7react13descWintersaber TrainernameRivern Frostwindminlevel62id10618methodsold-byid13086item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17229, 13086, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17229, 1,3,16)
	self:AddCompanionAcquire(MountDB, 17229, 1, 10618)

	-- Whistle of the Ivory Raptor - 17450
	-- type15.-1rlevel60slevel150spellid17450level60methodid13317item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17450, 13317, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17450, 16)
	-- No acquire information

	-- Green Mechanostrider - 17453
	-- type15.-1rlevel30source2slevel75spellid17453level30method_vendorsprice10000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-byid13321item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17453, 13321, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 17453, 1,3,16)
	self:AddCompanionAcquire(MountDB, 17453, 1, 7955)

	-- Unpainted Mechanostrider - 17454
	-- type15.-1rlevel30source2slevel75spellid17454level30method_vendorsprice10000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-byid13322item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17454, 13322, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 17454, 1,3,16)
	self:AddCompanionAcquire(MountDB, 17454, 1, 7955)

	-- Icy Blue Mechanostrider Mod A - 17459
	-- type15.-1rlevel60slevel150spellid17459level60methodid13327item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17459, 13327, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17459, 16)
	-- No acquire information

	-- Frost Ram - 17460
	-- type15.-1rlevel60slevel150spellid17460level60methodid13329item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17460, 13329, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17460, 16)
	-- No acquire information

	-- Black Ram - 17461
	-- type15.-1rlevel60slevel150spellid17461level60methodid13328item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17461, 13328, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17461, 16)
	-- No acquire information

	-- Red Skeletal Horse - 17462
	-- type15.-1rlevel30source2slevel75spellid17462level30method_vendorsprice10000000locs85type7react1descUndead Horse MerchantnameZachariah Postminlevel30id4731methodsold-byid13331item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17462, 13331, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 17462, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 17462, 1, 4731)

	-- Blue Skeletal Horse - 17463
	-- type15.-1rlevel30source23slevel75spellid17463level30method_vendorsprice10000000locs85type7react1descUndead Horse MerchantnameZachariah Postminlevel30id4731methodsold-byid13332item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17463, 13332, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 17463, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 17463, 1, 4731)

	-- Brown Skeletal Horse - 17464
	-- type15.-1rlevel30source2slevel75spellid17464level30method_vendorsprice10000000locs85type7react1descUndead Horse MerchantnameZachariah Postminlevel30id4731methodsold-byid13333item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17464, 13333, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 17464, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 17464, 1, 4731)

	-- Green Skeletal Warhorse - 17465
	-- type15.-1rlevel60source2slevel150spellid17465level60method_vendorsprice100000000locs85type7react1descUndead Horse MerchantnameZachariah Postminlevel30id4731methodsold-byid13334item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17465, 13334, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17465, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 17465, 1, 4731)

	-- Deathcharger's Reins - 17481
	-- type15.-1rlevel60source1slevel150spellid17481level60method_dropstype6react33classification1lootCount8nameBaron Rivendareminlevel62id10440totalLootCount19843methoddropped-byid13335item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 17481, 13335, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 17481, 1,2,16)
	self:AddCompanionAcquire(MountDB, 17481, 4, 10440)

	-- Gray Kodo - 18989
	-- type15.-1rlevel30source2slevel75spellid18989level30method_vendorsprice10000000locs215type7react31descKodo MountsnameHarb Clawhoofminlevel45id3685methodsold-byid15277item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 18989, 15277, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 18989, 2,3,16)
	self:AddCompanionAcquire(MountDB, 18989, 1, 3685)

	-- Brown Kodo - 18990
	-- type15.-1rlevel30source23slevel75spellid18990level30method_vendorsprice10000000locs215type7react31descKodo MountsnameHarb Clawhoofminlevel45id3685methodsold-byid15290item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 18990, 15290, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 18990, 2,3,16)
	self:AddCompanionAcquire(MountDB, 18990, 1, 3685)

	-- Green Kodo - 18991
	-- type15.-1rlevel60slevel150spellid18991level60methodid15292item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 18991, 15292, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 18991, 16)
	-- No acquire information

	-- Teal Kodo - 18992
	-- type15.-1rlevel60slevel150spellid18992level60methodid15293item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 18992, 15293, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 18992, 16)
	-- No acquire information

	-- Black War Steed Bridle - 22717
	-- type15.-1rlevel55source8slevel75spellid22717level55methodid18241item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22717, 18241, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22717, 16)
	-- No acquire information

	-- Black War Kodo - 22718
	-- type15.-1rlevel55source8slevel75spellid22718level55methodid18247item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22718, 18247, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22718, 16)
	-- No acquire information

	-- Black Battlestrider - 22719
	-- type15.-1rlevel55source8slevel75spellid22719level55methodid18243item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22719, 18243, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22719, 16)
	-- No acquire information

	-- Black War Ram - 22720
	-- type15.-1rlevel55source8slevel75spellid22720level55methodid18244item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22720, 18244, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22720, 16)
	-- No acquire information

	-- Whistle of the Black War Raptor - 22721
	-- type15.-1rlevel55source8slevel75spellid22721level55methodid18246item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22721, 18246, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22721, 16)
	-- No acquire information

	-- Red Skeletal Warhorse - 22722
	-- type15.-1rlevel55source8slevel75spellid22722level55methodid18248item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22722, 18248, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22722, 16)
	-- No acquire information

	-- Reins of the Black War Tiger - 22723
	-- type15.-1rlevel55source8slevel75spellid22723level55methodid18242item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22723, 18242, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22723, 16)
	-- No acquire information

	-- Horn of the Black War Wolf - 22724
	-- type15.-1rlevel55source8slevel75spellid22724level55methodid18245item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 22724, 18245, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 22724, 16)
	-- No acquire information

	-- Reins of the Swift Mistsaber - 23219
	-- type15.-1method_queststype0choiceitems189021187661187671category00level1coin0nameFrostsaber Replacementid7671type0choiceitems189021187661187671category00level1coin0nameNightsaber Replacementid7672type0choiceitems187671187761187871187741category-3284level60coin0nameStarting Mountid27717rlevel60source23slevel150spellid23219level60method_vendorsprice100000000locs1657type7react13descSaber HandlernameLelanaiminlevel35id4730methodsold-by,rewardfromid18767item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23219, 18767, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23219, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23219, 1, 4730, 2, 7671, 2, 7672, 2, 27717)

	-- Reins of the Swift Frostsaber - 23221
	-- type15.-1method_queststype0choiceitems189021187661187671category00level1coin0nameFrostsaber Replacementid7671type0choiceitems189021187661187671category00level1coin0nameNightsaber Replacementid7672rlevel60source23slevel150spellid23221level60method_vendorsprice100000000locs1657type7react13descSaber HandlernameLelanaiminlevel35id4730methodsold-by,rewardfromid18766item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23221, 18766, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23221, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23221, 1, 4730, 2, 7671, 2, 7672)

	-- Swift Yellow Mechanostrider - 23222
	-- type15.-1method_queststype0choiceitems187721187731187741category00level30coin0nameIcy Blue Mechanostrider Replacementid7675type0choiceitems187721187731187741category00level30coin0nameWhite Mechanostrider Replacementid7676type0choiceitems187671187761187871187741category-3284level60coin0nameStarting Mountid27717rlevel60source23slevel150spellid23222level60method_vendorsprice100000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-by,rewardfromid18774item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23222, 18774, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23222, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23222, 1, 7955, 2, 7675, 2, 7676, 2, 27717)

	-- Swift White Mechanostrider - 23223
	-- type15.-1method_queststype0choiceitems187721187731187741category00level30coin0nameIcy Blue Mechanostrider Replacementid7675type0choiceitems187721187731187741category00level30coin0nameWhite Mechanostrider Replacementid7676rlevel60source23slevel150spellid23223level60method_vendorsprice100000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-by,rewardfromid18773item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23223, 18773, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23223, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23223, 1, 7955, 2, 7675, 2, 7676)

	-- Swift Green Mechanostrider - 23225
	-- type15.-1method_queststype0choiceitems187721187731187741category00level30coin0nameIcy Blue Mechanostrider Replacementid7675type0choiceitems187721187731187741category00level30coin0nameWhite Mechanostrider Replacementid7676rlevel60source23slevel150spellid23225level60method_vendorsprice100000000locs1type7react13descMechanostrider MerchantnameMilli Featherwhistleminlevel50id7955methodsold-by,rewardfromid18772item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23225, 18772, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23225, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23225, 1, 7955, 2, 7675, 2, 7676)

	-- Swift Palomino - 23227
	-- type15.-1method_queststype0choiceitems187771187761187781category00level1coin0nameWhite Stallion Exchangeid7677type0choiceitems187771187761187781category00level1coin0namePalomino Exchangeid7678type0choiceitems187671187761187871187741category-3284level60coin0nameStarting Mountid27717rlevel60source23slevel150spellid23227level60method_vendorsprice100000000locs12type7react13descHorse BreedernameKatie Hunterminlevel10id384price100000000locs267type7react13descHorse BreedernameMerideth Carlsonminlevel32id2357price100000000locs15type7react13descHorse BreedernameGregor MacVinceminlevel35id4885methodsold-by,rewardfromid18776item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23227, 18776, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23227, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23227, 1, 384, 1, 2357, 1, 4885, 2, 7677, 2, 7678, 2, 27717)

	-- Swift White Steed - 23228
	-- type15.-1method_queststype0choiceitems187771187761187781category00level1coin0nameWhite Stallion Exchangeid7677type0choiceitems187771187761187781category00level1coin0namePalomino Exchangeid7678rlevel60source23slevel150spellid23228level60method_vendorsprice100000000locs12type7react13descHorse BreedernameKatie Hunterminlevel10id384price100000000locs267type7react13descHorse BreedernameMerideth Carlsonminlevel32id2357price100000000locs15type7react13descHorse BreedernameGregor MacVinceminlevel35id4885methodsold-by,rewardfromid18778item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23228, 18778, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23228, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23228, 1, 384, 1, 2357, 1, 4885, 2, 7677, 2, 7678)

	-- Swift Brown Steed - 23229
	-- type15.-1method_queststype0choiceitems187771187761187781category00level1coin0nameWhite Stallion Exchangeid7677type0choiceitems187771187761187781category00level1coin0namePalomino Exchangeid7678rlevel60source23slevel150spellid23229level60method_vendorsprice100000000locs12type7react13descHorse BreedernameKatie Hunterminlevel10id384price100000000locs267type7react13descHorse BreedernameMerideth Carlsonminlevel32id2357price100000000locs15type7react13descHorse BreedernameGregor MacVinceminlevel35id4885methodsold-by,rewardfromid18777item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23229, 18777, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23229, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23229, 1, 384, 1, 2357, 1, 4885, 2, 7677, 2, 7678)

	-- Swift Brown Ram - 23238
	-- type15.-1method_queststype0choiceitems187861187871187851category00level1coin0nameFrost Ram Exchangeid7673type0choiceitems187861187871187851category00level1coin0nameBlack Ram Exchangeid7674rlevel60source23slevel150spellid23238level60method_vendorsprice100000000locs1type7react13descRam BreedernameVeron Amberstillminlevel10id1261methodsold-by,rewardfromid18786item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23238, 18786, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23238, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23238, 1, 1261, 2, 7673, 2, 7674)

	-- Swift Gray Ram - 23239
	-- type15.-1method_queststype0choiceitems187861187871187851category00level1coin0nameFrost Ram Exchangeid7673type0choiceitems187861187871187851category00level1coin0nameBlack Ram Exchangeid7674type0choiceitems187671187761187871187741category-3284level60coin0nameStarting Mountid27717rlevel60source23slevel150spellid23239level60method_vendorsprice100000000locs1type7react13descRam BreedernameVeron Amberstillminlevel10id1261methodsold-by,rewardfromid18787item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23239, 18787, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23239, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23239, 1, 1261, 2, 7673, 2, 7674, 2, 27717)

	-- Swift White Ram - 23240
	-- type15.-1method_queststype0choiceitems187861187871187851category00level1coin0nameFrost Ram Exchangeid7673type0choiceitems187861187871187851category00level1coin0nameBlack Ram Exchangeid7674rlevel60source23slevel150spellid23240level60method_vendorsprice100000000locs1type7react13descRam BreedernameVeron Amberstillminlevel10id1261methodsold-by,rewardfromid18785item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23240, 18785, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23240, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23240, 1, 1261, 2, 7673, 2, 7674)

	-- Swift Blue Raptor - 23241
	-- type15.-1method_queststype0choiceitems187881187891187901category00level1coin0nameIvory Raptor Replacementid7664type0choiceitems187881187891187901category00level1coin0nameRed Raptor Replacementid7665type0choiceitems187941187981187881187911category-3284level60coin0nameStarting Mountid27716rlevel60source23slevel150spellid23241level60method_vendorsprice100000000locs14type7react31descRaptor HandlernameZjolnirminlevel45id7952methodsold-by,rewardfromid18788item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23241, 18788, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23241, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23241, 1, 7952, 2, 7664, 2, 7665, 2, 27716)

	-- Swift Olive Raptor - 23242
	-- type15.-1method_queststype0choiceitems187881187891187901category00level1coin0nameIvory Raptor Replacementid7664type0choiceitems187881187891187901category00level1coin0nameRed Raptor Replacementid7665rlevel60source23slevel150spellid23242level60method_vendorsprice100000000locs14type7react31descRaptor HandlernameZjolnirminlevel45id7952methodsold-by,rewardfromid18789item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23242, 18789, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23242, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23242, 1, 7952, 2, 7664, 2, 7665)

	-- Swift Orange Raptor - 23243
	-- type15.-1method_queststype0choiceitems187881187891187901category00level1coin0nameIvory Raptor Replacementid7664type0choiceitems187881187891187901category00level1coin0nameRed Raptor Replacementid7665rlevel60source23slevel150spellid23243level60method_vendorsprice100000000locs14type7react31descRaptor HandlernameZjolnirminlevel45id7952methodsold-by,rewardfromid18790item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23243, 18790, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23243, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23243, 1, 7952, 2, 7664, 2, 7665)

	-- Purple Skeletal Warhorse - 23246
	-- type15.-1method_queststype0choiceitems187941187981187881187911category-3284level60coin0nameStarting Mountid27716rlevel60source23slevel150spellid23246level60method_vendorsprice100000000locs85type7react1descUndead Horse MerchantnameZachariah Postminlevel30id4731methodsold-by,rewardfromid18791item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23246, 18791, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23246, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23246, 1, 4731, 2, 27716)

	-- Great White Kodo - 23247
	-- type15.-1method_queststype0choiceitems187941187951187931category00level1coin0nameNew Kodo - Tealid7662type0choiceitems187941187951187931category00level1coin0nameNew Kodo - Greenid7663rlevel60source23slevel150spellid23247level60method_vendorsprice100000000locs215type7react31descKodo MountsnameHarb Clawhoofminlevel45id3685methodsold-by,rewardfromid18793item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23247, 18793, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23247, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23247, 1, 3685, 2, 7662, 2, 7663)

	-- Great Gray Kodo - 23248
	-- type15.-1method_queststype0choiceitems187941187951187931category00level1coin0nameNew Kodo - Tealid7662type0choiceitems187941187951187931category00level1coin0nameNew Kodo - Greenid7663rlevel60source23slevel150spellid23248level60method_vendorsprice100000000locs215type7react31descKodo MountsnameHarb Clawhoofminlevel45id3685methodsold-by,rewardfromid18795item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23248, 18795, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23248, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23248, 1, 3685, 2, 7662, 2, 7663)

	-- Great Brown Kodo - 23249
	-- type15.-1method_queststype0choiceitems187941187951187931category00level1coin0nameNew Kodo - Tealid7662type0choiceitems187941187951187931category00level1coin0nameNew Kodo - Greenid7663type0choiceitems187941187981187881187911category-3284level60coin0nameStarting Mountid27716rlevel60source23slevel150spellid23249level60method_vendorsprice100000000locs215type7react31descKodo MountsnameHarb Clawhoofminlevel45id3685methodsold-by,rewardfromid18794item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23249, 18794, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23249, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23249, 1, 3685, 2, 7662, 2, 7663, 2, 27716)

	-- Horn of the Swift Brown Wolf - 23250
	-- type15.-1method_queststype0choiceitems187961187981187971category00level1coin0nameWolf Swapping - Arctic Wolfid7660type0choiceitems187961187981187971category00level1coin0nameWolf Swapping - Red Wolfid7661rlevel60source2slevel150spellid23250level60method_vendorsprice100000000locs1637type7react31descKennel MasternameOgunaro Wolfrunnerminlevel45id3362methodsold-by,rewardfromid18796item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23250, 18796, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23250, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23250, 1, 3362, 2, 7660, 2, 7661)

	-- Horn of the Swift Timber Wolf - 23251
	-- type15.-1method_queststype0choiceitems187961187981187971category00level1coin0nameWolf Swapping - Arctic Wolfid7660type0choiceitems187961187981187971category00level1coin0nameWolf Swapping - Red Wolfid7661rlevel60source2slevel150spellid23251level60method_vendorsprice100000000locs1637type7react31descKennel MasternameOgunaro Wolfrunnerminlevel45id3362methodsold-by,rewardfromid18797item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23251, 18797, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23251, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23251, 1, 3362, 2, 7660, 2, 7661)

	-- Horn of the Swift Gray Wolf - 23252
	-- type15.-1method_queststype0choiceitems187961187981187971category00level1coin0nameWolf Swapping - Arctic Wolfid7660type0choiceitems187961187981187971category00level1coin0nameWolf Swapping - Red Wolfid7661type0choiceitems187941187981187881187911category-3284level60coin0nameStarting Mountid27716rlevel60source23slevel150spellid23252level60method_vendorsprice100000000locs1637type7react31descKennel MasternameOgunaro Wolfrunnerminlevel45id3362methodsold-by,rewardfromid18798item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23252, 18798, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23252, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 23252, 1, 3362, 2, 7660, 2, 7661, 2, 27716)

	-- Reins of the Swift Stormsaber - 23338
	-- type15.-1method_queststype0choiceitems189021187661187671category00level1coin0nameFrostsaber Replacementid7671type0choiceitems189021187661187671category00level1coin0nameNightsaber Replacementid7672rlevel60source23slevel150spellid23338level60method_vendorsprice100000000locs1657type7react13descSaber HandlernameLelanaiminlevel35id4730methodsold-by,rewardfromid18902item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23338, 18902, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23338, 1,3,4,16)
	self:AddCompanionAcquire(MountDB, 23338, 1, 4730, 2, 7671, 2, 7672)

	-- Horn of the Frostwolf Howler - 23509
	-- type15.-1rlevel60source28slevel150spellid23509level60method_vendorsprice0002056050type7react31classification1descFrostwolf Supply OfficernameGrunnda Wolfheartminlevel58id13218price000locs36267type7react31classification1descFrostwolf Supply OfficernameJekyll Flandringminlevel58id13219methodsold-byid19029item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23509, 19029, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23509, 2,3,16)
	self:AddCompanionAcquire(MountDB, 23509, 1, 13218, 1, 13219)

	-- Stormpike Battle Charger - 23510
	-- type15.-1rlevel60source28slevel150spellid23510level60method_vendorsprice000type7react13classification1descStormpike Supply OfficernameGaelden Hammersmithminlevel58id13216price0002056050locs36type7react13classification1descStormpike Supply OfficernameThanthaldis Snowgleamminlevel58id13217methodsold-byid19030item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 23510, 19030, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 23510, 1,3,16)
	self:AddCompanionAcquire(MountDB, 23510, 1, 13216, 1, 13217)

	-- Swift Razzashi Raptor - 24242
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 24242, 19872, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 24242, 1,2,7,16)
	self:AddCompanionAcquire(MountDB, 24242, 4, 11382)

	-- Swift Zulian Tiger - 24252
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 24252, 19902, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 24252, 1,2,7,16)
	self:AddCompanionAcquire(MountDB, 24252, 4, 14509)

	-- Blue Qiraji Battle Tank -- 25953
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,25953,21218,2,"MOUNT")
	--self:AddCompanionFlags(MountDB,
	--self:AddCompanionAcquire(MountDB,

	-- Red Qiraji Battle Tank -- 26054
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,26054,21321,2,"MOUNT")
	--self:AddCompanionFlags(MountDB,
	--self:AddCompanionAcquire(MountDB,

	-- Yellow Qiraji Battle Tank -- 26055
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,26055,21324,2,"MOUNT")
	--self:AddCompanionFlags(MountDB,
	--self:AddCompanionAcquire(MountDB,

	-- Green Qiraji Battle Tank -- 26056
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,26056,21323,2,"MOUNT")
	--self:AddCompanionFlags(MountDB,
	--self:AddCompanionAcquire(MountDB,

	-- Black Qiraji Resonating Crystal - 26656
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 26656, 21176, 5, "MOUNT")
	self:AddCompanionFlags(MountDB, 26656, 4,16)
	self:AddCompanionAcquire(MountDB, 26656, 2, 8743)

	-- Riding Tutle - 30174
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 30174, 23720, 4, "MOUNT")
	self:AddCompanionFlags(MountDB,30174,21) 

	-- Golden Gryphon - 32235
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32235, 25470, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 32235, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32235, 1, 20510)

	-- Ebon Gryphon - 32239
	-- type15.-1rlevel70source2slevel225spellid32239level70method_vendorsprice100000000locs3520type7react1descGryphon KeepernameBrunn Flamebeardminlevel70id20510methodsold-byid25471item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32239, 25471, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 32239, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32239, 1, 20510)

	-- Snowy Gryphon - 32240
	-- type15.-1rlevel70source2slevel225spellid32240level70method_vendorsprice100000000locs3520type7react1descGryphon KeepernameBrunn Flamebeardminlevel70id20510methodsold-byid25472item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32240, 25472, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 32240, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32240, 1, 20510)

	-- Swift Blue Gryphon - 32242
	-- type15.-1rlevel70source2slevel300spellid32242level70method_vendorsprice200000000locs3520type7react1descGryphon KeepernameBrunn Flamebeardminlevel70id20510methodsold-byid25473item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32242, 25473, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32242, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32242, 1, 20510)

	-- Tawny Wind Rider - 32243
	-- type15.-1rlevel70source2slevel225spellid32243level70method_vendorsprice100000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25474item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32243, 25474, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 32243, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32243, 1, 20494)

	-- Blue Wind Rider - 32244
	-- type15.-1rlevel70source2slevel225spellid32244level70method_vendorsprice100000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25475item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32244, 25475, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 32244, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32244, 1, 20494)

	-- Green Wind Rider - 32245
	-- type15.-1rlevel70source2slevel225spellid32245level70method_vendorsprice100000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25476item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32245, 25476, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 32245, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32245, 1, 20494)

	-- Swift Red Wind Rider - 32246
	-- type15.-1rlevel70source2slevel300spellid32246level70method_vendorsprice200000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25477item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32246, 25477, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32246, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32246, 1, 20494)

	-- Swift Red Gryphon - 32289
	-- type15.-1rlevel70source2slevel300spellid32289level70method_vendorsprice200000000locs3520type7react1descGryphon KeepernameBrunn Flamebeardminlevel70id20510methodsold-byid25527item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32289, 25527, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32289, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32289, 1, 20510)

	-- Swift Green Gryphon - 32290
	-- type15.-1rlevel70source2slevel300spellid32290level70method_vendorsprice200000000locs3520type7react1descGryphon KeepernameBrunn Flamebeardminlevel70id20510methodsold-byid25528item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32290, 25528, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32290, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32290, 1, 20510)

	-- Swift Purple Gryphon - 32292
	-- type15.-1rlevel70source2slevel300spellid32292level70method_vendorsprice200000000locs3520type7react1descGryphon KeepernameBrunn Flamebeardminlevel70id20510methodsold-byid25529item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32292, 25529, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32292, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32292, 1, 20510)

	-- Swift Green Wind Rider - 32295
	-- type15.-1rlevel70source2slevel300spellid32295level70method_vendorsprice200000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25531item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32295, 25531, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32295, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32295, 1, 20494)

	-- Swift Yellow Wind Rider - 32296
	-- type15.-1rlevel70source2slevel300spellid32296level70method_vendorsprice200000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25532item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32296, 25532, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32296, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32296, 1, 20494)

	-- Swift Purple Wind Rider - 32297
	-- type15.-1rlevel70source2slevel300spellid32297level70method_vendorsprice200000000locs3520type7react1descWind Rider KeepernameDama Wildmaneminlevel70id20494methodsold-byid25533item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 32297, 25533, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 32297, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 32297, 1, 20494)

	-- Swift Pink Hawkstrider - 33660
	-- type15.-1method_queststype0choiceitems187941187981187881187911category-3284level60coin0nameStarting Mountid27716rlevel60source23slevel150spellid33660level60method_vendorsprice100000000locs3430type7react31descHawkstrider BreedernameWinaestraminlevel15id16264methodsold-by,rewardfromid28936item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 33660, 28936, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 33660, 2,3,4,16)
	self:AddCompanionAcquire(MountDB, 33660, 1, 16264, 2, 27716)

	-- Brown Elekk - 34406
	-- type15.-1rlevel30source2slevel75spellid34406level30method_vendorsprice10000000locs35243557type7react1descElekk BreedernameTorallius the Pack Handlerminlevel14id17584methodsold-byid28481item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34406, 28481, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 34406, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 34406, 1, 17584)

	-- Reins of the Dark War Talbuk - 34790
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34790, 29228, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 34790, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 34790, 1, 21474, 1, 21485)

	-- Red Hawkstrider - 34795
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34795, 28927, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 34795, 2,3,16)
	self:AddCompanionAcquire(MountDB, 34795, 1, 16264)

	-- Reins of the Cobalt War Talbuk - 34896
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34896, 29102, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 34896, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 34896, 1, 20241)

	-- Reins of the White War Talbuk - 34897
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34897, 29103, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 34897, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 34897, 1, 20241)

	-- Reins of the Silver War Talbuk - 34898
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34898, 29104, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 34898, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 34898, 1, 20241)

	-- Reins of the Tan War Talbuk - 34899
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 34899, 29105, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 34899, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 34899, 1, 20241)

	-- Purple Hawkstrider - 35018
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35018, 29222, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 35018, 2,3,16)
	self:AddCompanionAcquire(MountDB, 35018, 1, 16264)

	-- Blue Hawkstrider - 35020
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35020, 29220, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 35020, 2,3,16)
	self:AddCompanionAcquire(MountDB, 35020, 1, 16264)

	-- Black Hawkstrider - 35022
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35022, 29221, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 35022, 2,3,16)
	self:AddCompanionAcquire(MountDB, 35022, 1, 16264)

	-- Swift Green Hawkstrider - 35025
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35025, 29223, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 35025, 2,3,16)
	self:AddCompanionAcquire(MountDB, 35025, 1, 16264)

	-- Swift Purple Hawkstrider - 35027
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35027, 29224, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 35027, 2,3,16)
	self:AddCompanionAcquire(MountDB, 35027, 1, 16264)

	-- Swift Warstrider - 35028
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35028, 34129, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 35028, 16)
	-- No acquire information

	-- Gray Elekk - 35710
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35710, 29744, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 35710, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 35710, 1, 17584)

	-- Purple Elekk - 35711
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35711, 29743, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 35711, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 35711, 1, 17584)

	-- Great Green Elekk - 35712
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35712, 29746, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 35712, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 35712, 1, 17584, 2, 27717)

	-- Great Blue Elekk - 35713
	-- type15.-1rlevel60source2slevel150spellid35713level60method_vendorsprice100000000locs35243557type7react1descElekk BreedernameTorallius the Pack Handlerminlevel14id17584methodsold-byid29745item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35713, 29745, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 35713, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 35713, 1, 17584)

	-- Great Purple Elekk - 35714
	-- type15.-1rlevel60source2slevel150spellid35714level60method_vendorsprice100000000locs35243557type7react1descElekk BreedernameTorallius the Pack Handlerminlevel14id17584methodsold-byid29747item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 35714, 29747, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 35714, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 35714, 1, 17584)

	-- Fiery Warhorse's Reins - 36702
	-- type15.-1rlevel70source1slevel150spellid36702level70method_dropslocs3457type6react33classification3lootCount954nameAttumen the Huntsmanid16152totalLootCount394849methoddropped-byid30480item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 36702, 30480, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 36702, 1,2,7,16)
	self:AddCompanionAcquire(MountDB, 36702, 4, 16152)

	-- Swift Nether Drake - 37015
	-- type15.-1rlevel70slevel300spellid37015level70methodid30609item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 37015, 30609, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 37015, 16)
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 39315
	-- type15.-1rlevel60source2slevel150spellid39315level60method_vendorsprice70000000locs3518type7react1descMag'har QuartermasternameProvisioner Naselaminlevel65id20241methodsold-byid31829item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39315, 31829, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39315, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39315, 1, 20241)

	-- Reins of the Dark Riding Talbuk - 39316
	-- type15.-1rlevel60source2slevel150spellid39316level60method_vendorsprice00026045702604426044locs3518type7react31classification1descBlade MerchantnameCoreielminlevel70id21474price00026045702604426044locs3518type7react13classification1descBlade MerchantnameAldraanminlevel70id21485methodsold-byid28915item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39316, 28915, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39316, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39316, 1, 21474, 1, 21485)

	-- Reins of the Silver Riding Talbuk - 39317
	-- type15.-1rlevel60source2slevel150spellid39317level60method_vendorsprice70000000locs3518type7react1descMag'har QuartermasternameProvisioner Naselaminlevel65id20241methodsold-byid31831item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39317, 31831, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39317, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39317, 1, 20241)

	-- Reins of the Tan Riding Talbuk - 39318
	-- type15.-1rlevel60source2slevel150spellid39318level60method_vendorsprice70000000locs3518type7react1descMag'har QuartermasternameProvisioner Naselaminlevel65id20241methodsold-byid31833item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39318, 31833, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39318, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39318, 1, 20241)

	-- Reins of the White Riding Talbuk - 39319
	-- type15.-1rlevel60source2slevel150spellid39319level60method_vendorsprice70000000locs3518type7react1descMag'har QuartermasternameProvisioner Naselaminlevel65id20241methodsold-byid31835item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39319, 31835, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39319, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39319, 1, 20241)

	-- Green Riding Nether Ray - 39798
	-- type15.-1rlevel70source2slevel300spellid39798level70method_vendorsprice200000000locs3519type7react11descSkyguard QuartermasternameGrellaminlevel70id23367methodsold-byid32314item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39798, 32314, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39798, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39798, 1, 23367)

	-- Red Riding Nether Ray - 39800
	-- type15.-1rlevel70source2slevel300spellid39800level70method_vendorsprice200000000locs3519type7react11descSkyguard QuartermasternameGrellaminlevel70id23367methodsold-byid32317item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39800, 32317, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39800, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39800, 1, 23367)

	-- Purple Riding Nether Ray - 39801
	-- type15.-1rlevel70source2slevel300spellid39801level70method_vendorsprice200000000locs3519type7react11descSkyguard QuartermasternameGrellaminlevel70id23367methodsold-byid32316item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39801, 32316, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39801, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39801, 1, 23367)

	-- Silver Riding Nether Ray - 39802
	-- type15.-1rlevel70source2slevel300spellid39802level70method_vendorsprice200000000locs3519type7react11descSkyguard QuartermasternameGrellaminlevel70id23367methodsold-byid32318item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39802, 32318, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39802, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39802, 1, 23367)

	-- Blue Riding Nether Ray - 39803
	-- type15.-1rlevel70source2slevel300spellid39803level70method_vendorsprice200000000locs3519type7react11descSkyguard QuartermasternameGrellaminlevel70id23367methodsold-byid32319item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 39803, 32319, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 39803, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 39803, 1, 23367)

	-- Ashes of Al'ar - 40192
	-- type15.-1rlevel70source1slevel300spellid40192level70method_dropslocs3845type7react33classification3descLord of the Blood ElveslootCount6nameKael'thas Sunstriderid19622totalLootCount7200methoddropped-byid32458item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 40192, 32458, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 40192, 1,2,7,16)
	self:AddCompanionAcquire(MountDB, 40192, 4, 19622)

	-- Reins of the Raven Lord - 41252
	-- type15.-1rlevel70source1slevel150spellid41252level70method_dropslocs3791type10react33classification1lootCount79nameAnzuid23035totalLootCount30486methoddropped-byid32768item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41252, 32768, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41252, 1,2,6,16)
	self:AddCompanionAcquire(MountDB, 41252, 4, 23035)

	-- Reins of the Onyx Netherwing Drake - 41513
	-- type15.-1method_queststype0category23703level70coin0givenitems328571nameOnyxien the Onyx Netherwing Drakeid11111rlevel70source23slevel300spellid41513level70method_vendorsprice200000000locs3520type7react11nameDrake Dealer Hurlunkminlevel70id23489methodsold-by,rewardfromid32857item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41513, 32857, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41513, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 41513, 1, 23489, 2, 11111)

	-- Reins of the Azure Netherwing Drake - 41514
	-- type15.-1method_queststype0category23703level70coin0givenitems328581nameSuraku the Azure Netherwing Drakeid11112rlevel70source23slevel300spellid41514level70method_vendorsprice200000000locs3520type7react11nameDrake Dealer Hurlunkminlevel70id23489methodsold-by,rewardfromid32858item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41514, 32858, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41514, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 41514, 1, 23489, 2, 11112)

	-- Reins of the Cobalt Netherwing Drake - 41515
	-- type15.-1method_queststype0category23703level70coin0givenitems328591nameJorus the Cobalt Netherwing Drakeid11109rlevel70source23slevel300spellid41515level70method_vendorsprice200000000locs3520type7react11nameDrake Dealer Hurlunkminlevel70id23489methodsold-by,rewardfromid32859item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41515, 32859, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41515, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 41515, 1, 23489, 2, 11109)

	-- Reins of the Purple Netherwing Drake - 41516
	-- type15.-1method_queststype0category23703level70coin0givenitems328601nameMalfas the Purple Netherwing Drakeid11110rlevel70source23slevel300spellid41516level70method_vendorsprice200000000locs3520type7react11nameDrake Dealer Hurlunkminlevel70id23489methodsold-by,rewardfromid32860item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41516, 32860, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41516, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 41516, 1, 23489, 2, 11110)

	-- Reins of the Veridian Netherwing Drake - 41517
	-- type15.-1method_queststype0category23703level70coin0givenitems328611nameZoya the Veridian Netherwing Drakeid11114rlevel70source23slevel300spellid41517level70method_vendorsprice200000000locs3520type7react11nameDrake Dealer Hurlunkminlevel70id23489methodsold-by,rewardfromid32861item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41517, 32861, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41517, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 41517, 1, 23489, 2, 11114)

	-- Reins of the Violet Netherwing Drake - 41518
	-- type15.-1method_queststype0category23703level70coin0givenitems328621nameVoranaku the Violet Netherwing Drakeid11113rlevel70source23slevel300spellid41518level70method_vendorsprice200000000locs3520type7react11nameDrake Dealer Hurlunkminlevel70id23489methodsold-by,rewardfromid32862item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 41518, 32862, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 41518, 1,2,3,4,16)
	self:AddCompanionAcquire(MountDB, 41518, 1, 23489, 2, 11113)

	-- Reins of the Spectral Tiger - 42776
	-- type15.-1rlevel30slevel75spellid42776level30methodid33224item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 42776, 33224, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 42776, 16)
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 42777
	-- type15.-1rlevel60slevel150spellid42777level60methodid33225item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 42777, 33225, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 42777, 16)
	-- No acquire information

	-- Amani War Bear - 43688
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 43688, 33809, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 43688, 1,2,4,16)
	self:AddCompanionAcquire(MountDB, 43688, 2, 27704)

	-- Brewfest Ram - 43899
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 43899, 33976, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 43899, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 43899, 1, 24468, 1, 24510)

	-- Swift Brewfest Ram - 43900
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 43900, 33977, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 43900, 1,2,3,10,16)
	self:AddCompanionAcquire(MountDB, 43900, 1, 24468, 1, 24510, 4, 23795, 4, 23872)

	-- Cenarion War Hippogryph - 43927
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 43927, 33999, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 43927, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 43927, 1, 17904)

	-- Merciless Nether Drake - 44744
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 44744, 34092, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 44744, 16)
	-- No acquire information

	-- X-51 Nether-Rocket - 46197
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,46197,35225,4,"MOUNT")

	-- X-51 Nether-Rocket X-TREME-- 46199
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,46199,35226,4,"MOUNT")

	-- Swift White Hawkstrider - 46628
	companioncount = companioncount + 1
	self:AddCompanion(MountDB,46628,35513,4,"MOUNT")
	self:AddCompanionFlags(MountDB, 46628, 1,2,10,16)
	self:AddCompanionAcquire(MountDB, 46628, 4, 24664)

	-- The Horseman's Reins - 48025
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 48025, 37012, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 48025, 16)
	-- No acquire information

	-- Reins of the Black War Elekk - 48027
	-- type15.-1rlevel60source28slevel150spellid48027level60method_vendorsprice000205603020559205592055830locs15192918type7react1descMount VendornameLieutenant Karterminlevel55id12783methodsold-byid35906item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 48027, 35906, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 48027, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 48027, 1, 12783)

	-- Vengeful Nether Drake - 49193
	-- type15.-1rlevel70slevel300spellid49193level70methodid37676item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 49193, 37676, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 49193, 16)
	-- No acquire information

	-- Swift Zhevra - 49322
	-- type15.-1rlevel60slevel150spellid49322level60methodid37719item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 49322, 37719, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 49322, 16)
	-- No acquire information

	-- Great Brewfest Kodo - 49379
	-- type15.-1rlevel60slevel150spellid49379level60method_dropslocs11451-1maxlevel70type7react13lootCount2nameDark Iron Antagonistminlevel65id23795totalLootCount206locs11451-1maxlevel73type7react11classification1lootCount2860nameCoren Direbrewminlevel70id23872totalLootCount235614methoddropped-byid37828item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 49379, 37828, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 49379, 1,2,10,16)
	self:AddCompanionAcquire(MountDB, 49379, 4, 23795, 4, 23872)

	-- Big Battle Bear - 51412
	-- type15.-1rlevel60source2slevel150spellid51412level60method_vendorsprice100000000locs33type7react11descThe Black FlamenameLandro Longshotminlevel60id17249methodsold-byid38576item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 51412, 38576, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 51412, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 51412, 1, 17249)

	-- Winged Steed of the Ebon Blade - 54729
	-- type15.-1rlevel70source2slevel225spellid54729level70method_vendorsprice1000000000locs65139495-1type6react11classification1nameDread Commander Thalanorminlevel80id29587methodsold-byid40775item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 54729, 40775, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 54729, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 54729, 1, 29587)

	-- Reins of the White Polar Bear - 54753
	-- type15.-1rlevel60slevel150spellid54753level60methodid43962item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 54753, 43962, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 54753, 16)
	-- No acquire information

	-- Brutal Nether Drake - 58615
	-- type15.-1rlevel70slevel300spellid58615level70methodid43516item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 58615, 43516, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 58615, 16)
	-- No acquire information

	-- Big Blizzard Bear - 58983
	-- type15.-1rlevel30slevel75spellid58983level30methodid43599item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 58983, 43599, 3, "MOUNT")
	self:AddCompanionFlags(MountDB, 58983, 16)
	-- No acquire information

	-- Reins of the Azure Drake - 59567
	-- type15.-1rlevel70slevel300spellid59567level70methodid43952item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59567, 43952, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59567, 16)
	-- No acquire information

	-- Reins of the Blue Drake - 59568
	-- type15.-1rlevel70slevel300spellid59568level70methodid43953item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59568, 43953, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59568, 16)
	-- No acquire information

	-- Reins of the Bronze Drake - 59569
	-- type15.-1rlevel70source1slevel300spellid59569level70method_dropslocs4100type2react33classification1lootCount4nameChrono-Lord Epochminlevel82id26532totalLootCount16308locs4100type2react33classification1lootCount494nameInfinite Corruptorid32273totalLootCount1366methoddropped-byid43951item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59569, 43951, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59569, 1,2,6,16)
	self:AddCompanionAcquire(MountDB, 59569, 4, 26532, 4, 32273)

	-- Reins of the Red Drake - 59570
	-- type15.-1rlevel70source2slevel300spellid59570level70method_vendorsprice2000000000locs65type7react11descWyrmrest Accord QuartermasternameCielstraszaminlevel80id32533methodsold-byid43955item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59570, 43955, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59570, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 59570, 1, 32533)

	-- Reins of the Black War Mammoth - 59785
	-- type15.-1rlevel60source2slevel150spellid59785level60method_vendorsprice000locs4197type7react1descWintergrasp QuartermasternameKnight Dameronminlevel80id32294methodsold-byid43956item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59785, 43956, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59785, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 59785, 1, 32294)

	-- Reins of the Wooly Mammoth - 59791
	-- type15.-1rlevel60source2slevel150spellid59791level60methodid44230item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59791, 44230, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59791, 16)
	-- No acquire information

	-- Reins of the Ice Mammoth - 59797
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59797, 44080, 4, "MOUNT")
	--self:AddCompanionFlags(MountDB, 59797, 16)
	-- No acquire information

	-- Reins of the Ice Mammoth - 59799
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59799, 43958, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59799, 16)
	-- No acquire information

	-- Reins of the Grand Ice Mammoth - 61469
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 61469, 44086, 4, "MOUNT")
	--self:AddCompanionFlags(MountDB, 59799, 16)
	-- No acquire information

	-- Reins of the Grand Ice Mammoth - 61470
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 61469, 43961, 4, "MOUNT")
	--self:AddCompanionFlags(MountDB, 59799, 16)
	-- No acquire information

	-- Reins of the Red Proto-Drake - 59961
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59961, 44160, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59961, 16)
	-- No acquire information

	-- Reins of the Blue Proto-Drake - 59996
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 59996, 44151, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 59996, 1,2,10,16)
	self:AddCompanionAcquire(MountDB, 59996, 4, 26693)

	-- Reins of the Time-Lost Proto-Drake - 60002
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 60002, 44168, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 60002, 1,2,10,16)
	self:AddCompanionAcquire(MountDB, 60002, 4, 32491)

	-- Reins of the Albino Drake - 60025
	-- type15.-1rlevel70slevel300spellid60025level70methodid44178item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 60025, 44178, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 60025, 16)
	-- No acquire information

	-- Reins of the Armored Brown Bear - 60114
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 60114, 44225, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 60114, 16)
	-- No acquire information

	-- Reins of the Armored Brown Bear - 60116
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 60116, 44225, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 60116, 16)
	-- No acquire information

	-- Reins of the Black War Bear - 60118
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 60118, 44226, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 60118, 16)
	-- No acquire information

	-- Armored Snowy Gryphon - 61229
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 61229, 44689, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 61229, 16)
	-- No acquire information

	-- Armored Blue Wind Rider - 61230
	companioncount = companioncount + 1
	self:AddCompanion(MountDB, 61230, 44690, 4, "MOUNT")
	self:AddCompanionFlags(MountDB, 61230, 1,2,3,16)
	self:AddCompanionAcquire(MountDB, 61230, 1, 32216)

	return companioncount

end
