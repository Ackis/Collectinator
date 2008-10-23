--[[

************************************************************************

./DB/PetDatabase.lua

Pet Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

96 found from data mining.  5 ignored.

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

function addon:MakeMiniPetTable(PetDB)

	-- Mechanical Squirrel Box - 4055
	-- type15.2spellid4055source4level15rarity1method_crafted3928methodcraftedid4401
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)
	-- No filter flags
	-- No acquire information

	-- Cat Carrier (Bombay) - 10673
	-- method_vendorstype7locs12price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5react13type15.2spellid10673source2level20rarity1methodsold-byid8485
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:AddCompanionFlags(PetDB, 10673, 1,4)
	self:AddCompanionAcquire(PetDB, 10673, 2, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- method_vendorstype7locs12price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5react13type15.2spellid10674source2level20rarity1methodsold-byid8486
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:AddCompanionFlags(PetDB, 10674, 1,4)
	self:AddCompanionAcquire(PetDB, 10674, 2, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2spellid10675method_dropslootCount40type7maxlevel32totalLootCount24111locs36267nameDalaran Shield Guardid2271minlevel31react13lootCount33type7totalLootCount306locs130classification4nameDalaran Spellscribeid1920minlevel21react13lootCount14type7maxlevel35totalLootCount13900locs36nameDalaran Summonerid2358minlevel34react13lootCount22type7maxlevel33totalLootCount10307locs36267nameDalaran Theurgistid2272minlevel32react13source1level20rarity1methoddropped-byid8491
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:AddCompanionFlags(PetDB, 10675, 11)
	self:AddCompanionAcquire(PetDB, 10675, 3, 1920, 3, 2271, 3, 2272, 3, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- method_vendorstype7locs12price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5react13type15.2spellid10676source2level20rarity1methodsold-byid8487
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:AddCompanionFlags(PetDB, 10676, 1,4)
	self:AddCompanionAcquire(PetDB, 10676, 2, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- method_vendorstype7locs352385price600000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type15.2spellid10677method_dropslootCount1590type7totalLootCount28314locs1581classification1descThe Ship's CooknameCookiedisp1305id645minlevel20react33source12level20rarity1methoddropped-by,sold-byid8490
	-- Instance: 1581 - type1maxlevel20territory2category3nameThe Deadminesid1581minlevel15
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:AddCompanionFlags(PetDB, 10677, 1,2,4,5)
	self:AddCompanionAcquire(PetDB, 10677, 3, 645, 2, 20980)

	-- Cat Carrier (Silver Tabby) - 10678
	-- method_vendorstype7locs12price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5react13type15.2spellid10678source2level20rarity1methodsold-byid8488
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:AddCompanionFlags(PetDB, 10678, 1,4)
	self:AddCompanionAcquire(PetDB, 10678, 2, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- method_vendorstype7locs1519price600000descBoy with kittensnameLil Timmydisp7935id8666minlevel5react13type15.2spellid10679source2level20rarity1methodsold-byid8489
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:AddCompanionFlags(PetDB, 10679, 1,4)
	self:AddCompanionAcquire(PetDB, 10679, 2, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- method_vendorstype7locs33price400000descPirate SuppliesnameNarkkid2663minlevel42react13type15.2spellid10680source2level20rarity1methodsold-byid8496
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:AddCompanionFlags(PetDB, 10680, 1,4)
	self:AddCompanionAcquire(PetDB, 10680, 2, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2spellid10682method_dropslootCount1type7totalLootCount5699locs33name\"Pretty Boy\" Duncanid2545minlevel39react33lootCount4type7totalLootCount10436locs33nameBloodsail Deckhandid4505minlevel42react33lootCount6type7maxlevel41totalLootCount35020locs33nameBloodsail Mageid1562minlevel39react33lootCount9type7maxlevel41totalLootCount35811locs33nameBloodsail Raiderdisp793id1561minlevel39react33lootCount4type7maxlevel42totalLootCount10895locs33nameBloodsail Sea Dogdisp796id1565minlevel41react33lootCount1type7totalLootCount16140locs33nameBloodsail Swabbydisp1902id4506minlevel40react33lootCount5type7maxlevel41totalLootCount66557locs33nameBloodsail Swashbucklerdisp796id1563minlevel40react33lootCount4type7maxlevel41totalLootCount64146locs33nameBloodsail Warlockid1564minlevel40react33source13level20rarity1methoddropped-byid8494
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:AddCompanionFlags(PetDB, 10682, 11)
	self:AddCompanionAcquire(PetDB, 10682, 3, 1561, 3, 1562, 3, 1563, 3, 1564, 3, 1565, 3, 2545, 3, 4505, 3, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2spellid10683method_dropslootCount3042type7maxlevel20totalLootCount104503locs1581classification1nameDefias Pirateid657minlevel19react33source1level20rarity1methoddropped-byid8492
	-- Instance: 1581 - type1maxlevel20territory2category3nameThe Deadminesid1581minlevel15
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:AddCompanionFlags(PetDB, 10683, 5)
	self:AddCompanionAcquire(PetDB, 10683, 3, 657)

	-- Parrot Cage (Senegal) - 10684
	-- method_vendorstype7locs352385price400000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type7locs33price400000descPirate SuppliesnameNarkkid2663minlevel42react13type15.2spellid10684source2level20rarity1methodsold-byid8495
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:AddCompanionFlags(PetDB, 10684, 1,2,4)
	self:AddCompanionAcquire(PetDB, 10684, 2, 2663, 2, 20980)

	-- Ancona Chicken - 10685
	-- method_vendorstype7locs400price1000000nameMagus Tirthid6548minlevel51react11type15.2spellid10685source2level35rarity1methodsold-byid11023
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:AddCompanionFlags(PetDB, 10685, 1,2,4)
	self:AddCompanionAcquire(PetDB, 10685, 2, 6548)

	-- Cockroach - 10688
	-- method_vendorstype7locs352385price500000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type7locs1497price500000descCockroach VendornameJeremiah Paysonid8403minlevel30react31type15.2spellid10688source2level30rarity1methodsold-byid10393
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:AddCompanionFlags(PetDB, 10688, 1,2,4)
	self:AddCompanionAcquire(PetDB, 10688, 2, 8403, 2, 20980)

	-- Dark Whelpling - 10695
	-- type15.2spellid10695method_dropslootCount78type2maxlevel43totalLootCount71023locs3nameScalding Whelpdisp715id2725minlevel41react33lootCount32type2maxlevel40totalLootCount34544locs152159nameSearing Whelpdisp397id4324minlevel39react33source1level30rarity1methoddropped-byid10822
	-- Raid: 2159 - Onyxia's Lair
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:AddCompanionFlags(PetDB, 10695, 6,11)
	self:AddCompanionAcquire(PetDB, 10695, 3, 2725, 3, 4324)

	-- Azure Whelpling - 10696
	-- type15.2spellid10696method_dropslootCount2type2maxlevel51totalLootCount3824locs16classification1nameBlue Dragonspawndisp196id193minlevel50react33lootCount3type2maxlevel53totalLootCount1451locs16classification1nameBlue Scalebanedisp6760id6130minlevel52react33lootCount8type2maxlevel52totalLootCount5095locs16classification1nameDraconic Mageweaverdisp6761id6131minlevel51react33source1level30rarity1methoddropped-byid34535
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:AddCompanionFlags(PetDB, 10696, 11)
	self:AddCompanionAcquire(PetDB, 10696, 3, 193, 3, 6130, 3, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2spellid10697method_dropslootCount13type2maxlevel26totalLootCount4347locs11nameCrimson Whelpdisp505id1069minlevel25react33lootCount7type2maxlevel27totalLootCount1398locs11nameFlamesnorting Whelpdisp8712id1044minlevel26react33lootCount11type2maxlevel24totalLootCount3731locs11nameRed Whelpdisp9583id1042minlevel23react33source1level30rarity1methoddropped-byid8499
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:AddCompanionFlags(PetDB, 10697, 11)
	self:AddCompanionAcquire(PetDB, 10697, 3, 1042, 3, 1044, 3, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2spellid10698method_dropslootCount38type2maxlevel36totalLootCount16719locs8nameDreaming Whelpdisp621id741minlevel35react33source1level30rarity1methoddropped-byid8498
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:AddCompanionFlags(PetDB, 10698, 11)
	self:AddCompanionAcquire(PetDB, 10698, 3, 741)

	-- Wood Frog Box - 10703
	-- method_vendorstype7maxlevel70locs122153519price1000000nameFlikdisp14589id14860minlevel4react21type15.2spellid10703source2level35rarity1methodsold-byid11027
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:AddCompanionFlags(PetDB, 10703, 1,2,4)
	self:AddCompanionAcquire(PetDB, 10703, 2, 14860)

	-- Tree Frog Box - 10704
	-- method_vendorstype7maxlevel70locs122153519price1000000nameFlikdisp14589id14860minlevel4react21type15.2spellid10704source2level35rarity1methodsold-byid11026
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:AddCompanionFlags(PetDB, 10704, 1,2,4)
	self:AddCompanionAcquire(PetDB, 10704, 2, 14860)

	-- Hawk Owl - 10706
	-- method_vendorstype7locs1657price500000descOwl TrainernameShylenaiid8665minlevel30react13type15.2spellid10706source2level30rarity1methodsold-byid8501
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:AddCompanionFlags(PetDB, 10706, 1,4)
	self:AddCompanionAcquire(PetDB, 10706, 2, 8665)

	-- Great Horned Owl - 10707
	-- method_vendorstype7locs1657price500000descOwl TrainernameShylenaiid8665minlevel30react13type15.2spellid10707source2level30rarity1methodsold-byid8500
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:AddCompanionFlags(PetDB, 10707, 1,4)
	self:AddCompanionAcquire(PetDB, 10707, 2, 8665)

	-- Prairie Dog Whistle - 10709
	-- method_vendorstype7locs1638price500000descPrairie Dog VendornameHalpaid8401minlevel30react31type15.2spellid10709source2level30rarity1methodsold-byid10394
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:AddCompanionFlags(PetDB, 10709, 2,4)
	self:AddCompanionAcquire(PetDB, 10709, 2, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- method_vendorstype7locs1price200000nameYarlyn Amberstillid1263minlevel1react13type15.2spellid10711source23level20rarity1methodsold-byid8497
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:AddCompanionFlags(PetDB, 10711, 1,4)
	self:AddCompanionAcquire(PetDB, 10711, 2, 1263)

	-- Black Kingsnake - 10714
	-- method_vendorstype7locs1637price500000descSnake VendornameXan'tishid8404minlevel30react31type15.2spellid10714source2level30rarity1methodsold-byid10360
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:AddCompanionFlags(PetDB, 10714, 2,4)
	self:AddCompanionAcquire(PetDB, 10714, 2, 8404)

	-- Brown Snake - 10716
	-- method_vendorstype7locs1637price500000descSnake VendornameXan'tishid8404minlevel30react31type15.2spellid10716source2level30rarity1methodsold-byid10361
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:AddCompanionFlags(PetDB, 10716, 2,4)
	self:AddCompanionAcquire(PetDB, 10716, 2, 8404)

	-- Crimson Snake - 10717
	-- method_vendorstype7locs352385price500000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type7locs1637price500000descSnake VendornameXan'tishid8404minlevel30react31type15.2spellid10717source2level30rarity1methodsold-byid10392
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:AddCompanionFlags(PetDB, 10717, 1,2,4)
	self:AddCompanionAcquire(PetDB, 10717, 2, 8404, 2, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2spellid12243source3level40rarity1method_queststype0level50givenitems103981category035coin6000nameAn OOX of Your Ownid3721side1xp7100methodrewardfromid10398
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:AddCompanionFlags(PetDB, 12243, 1,2,8)
	self:AddCompanionAcquire(PetDB, 12243, 4, 3721)

	-- Chicken Egg - 13548
	-- type15.0spellid13548method_dropslootCount842type3totalLootCount856locs40nameFarm Chicken Eggid161513source1level1rarity1methoddropped-by,contained-in-objectid11110
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:AddCompanionFlags(PetDB, 13548, 11)
	self:AddCompanionAcquire(PetDB, 13548, 3, 161513)

	-- Pet Bombling - 15048
	-- type7.3spellid15048source4level41rarity1method_crafted15628methodcraftedid11825
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)
	-- No filter flags
	-- No acquire information

	-- Lil' Smoky - 15049
	-- type7.3spellid15049source4level41rarity1method_crafted15633methodcraftedid11826
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)
	-- No filter flags
	-- No acquire information

	-- Sprite Darter Egg - 15067
	-- type15.0spellid15067source3level47rarity1method_queststype0level48givenitems114741category1357coin360nameBecoming a Parentid4298side2xp625methodrewardfromid11474
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:AddCompanionFlags(PetDB, 15067, 1,8)
	self:AddCompanionAcquire(PetDB, 15067, 4, 4298)

	-- Worg Carrier - 15999
	-- type15.0spellid15999source3level59rarity1method_queststype81level59givenitems122641category31583coin9000nameKibler's Exotic Petsid4729side1xp13950methodrewardfromid12264
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:AddCompanionFlags(PetDB, 15999, 1,2,8)
	self:AddCompanionAcquire(PetDB, 15999, 4, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0spellid16450source3level59rarity1method_queststype81level59givenitems125291category31583coin9000nameEn-Ay-Es-Tee-Whyid4862side1xp13950methodrewardfromid12529
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:AddCompanionFlags(PetDB, 16450, 1,2,8)
	self:AddCompanionAcquire(PetDB, 16450, 4, 4862)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1spellid17567armor63source3level60rarity2method_queststype0level60givenitems121851category033coin8700nameAvast Ye, Admiral!id4621side1methodrewardfromid12185
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:AddCompanionFlags(PetDB, 17567, 1,2,8)
	self:AddCompanionAcquire(PetDB, 17567, 4, 4621)

	-- Panda Collar - 17707
	-- type15.0spellid17707source3level20rarity3method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1category03431choiceitems135841135831135821coin0nameWelcome!id8547side4type0level1category13526choiceitems135841135831135821coin0nameWelcome!id9278side2type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781methodrewardfromid13583
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:AddCompanionFlags(PetDB, 17707, 1,2,8)
	self:AddCompanionAcquire(PetDB, 17707, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Diablo Stone - 17708
	-- type15.0spellid17708source3level20rarity3method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1category03431choiceitems135841135831135821coin0nameWelcome!id8547side4type0level1category13526choiceitems135841135831135821coin0nameWelcome!id9278side2type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781methodrewardfromid13584
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:AddCompanionFlags(PetDB, 17708, 1,2,8)
	self:AddCompanionAcquire(PetDB, 17708, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Zergling Leash - 17709
	-- type15.0spellid17709source3level20rarity3method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1category03431choiceitems135841135831135821coin0nameWelcome!id8547side4type0level1category13526choiceitems135841135831135821coin0nameWelcome!id9278side2type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781methodrewardfromid13582
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:AddCompanionFlags(PetDB, 17709, 1,2,8)
	self:AddCompanionAcquire(PetDB, 17709, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2spellid19772source4level53rarity1method_crafted19793methodcraftedid15996
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)
	-- No filter flags
	-- No acquire information

	-- Orcish Orphan Whistle - 23012
	-- type15.0spellid23012source3level10rarity1methodredemptionmethod_redemptionUnknownid18597
	-- Redemption
	--self:AddCompanion(PetDB, 23012, 18597, 1)
	-- No filter flags
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0spellid23013source3level10rarity1methodredemptionmethod_redemptionUnknownid18598
	-- Redemption
	--self:AddCompanion(PetDB, 23013, 18598, 1)
	-- No filter flags
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2spellid23811level35rarity1methodredemptionmethod_redemptionUnknownid19450
	-- Redemption
	self:AddCompanion(PetDB, 23811, 19450, 1)
	-- No filter flags
	-- No acquire information

	-- Blue Murloc Egg - 24696
	-- type15.0spellid24696level20rarity3methodid20371
	self:AddCompanion(PetDB, 24696, 20371, 3)
	-- No filter flags
	-- No acquire information

	-- Lurky's Egg - 24988
	-- type15.0spellid24988level1rarity3methodid30360
	self:AddCompanion(PetDB, 24988, 30360, 3)
	-- No filter flags
	-- No acquire information

	-- Disgusting Oozeling - 25162
	-- type15.2spellid25162method_dropslootCount17type15.0totalLootCount951source1level50rarity1nameOozing Bagid20768level55rarity1methodcontained-in-itemid20769
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)
	-- No filter flags
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2spellid25849level20rarity1methodid21168
	--self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2spellid26010source4level60rarity1method_crafted26011methodcraftedid21277
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)
	-- No filter flags
	-- No acquire information

	-- Snowman Kit - 26469
	-- type15.3spellid26469method_dropslootCount4type15.0totalLootCount31level1rarity1rlevel1nameGaily Wrapped Presentid21310source1level1rarity1methoddropped-by,contained-in-itemid21309
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26469, 3, 21310)

	-- Jingling Bell - 26528
	-- type15.3spellid26528method_dropslootCount6type15.0totalLootCount31level1rarity1rlevel1nameGaily Wrapped Presentid21310source1level1rarity1methoddropped-by,contained-in-itemid21308
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26528, 3, 21310)

	-- Green Helper Box - 26532
	-- type15.3spellid26532method_dropslootCount6type15.0totalLootCount31level1rarity1rlevel1nameGaily Wrapped Presentid21310source1level1rarity1methoddropped-by,contained-in-itemid21301
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26532, 3, 21310)

	-- Red Helper Box - 26541
	-- type15.3spellid26541method_dropslootCount15type15.0totalLootCount31level1rarity1rlevel1nameGaily Wrapped Presentid21310source1level1rarity1methoddropped-by,contained-in-itemid21305
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26541, 3, 21310)

	-- Pink Murloc Egg - 27241
	-- type15.0spellid27241level20rarity3methodid22114
	self:AddCompanion(PetDB, 27241, 22114, 3)
	-- No filter flags
	-- No acquire information

	-- Truesilver Shafted Arrow - 27570
	-- type15.0spellid27570method_dropslootCount1type15.3totalLootCount18level1rarity1nameGift of Adoration: Stormwindid21981lootCount1type15.3totalLootCount12level1rarity1namePledge of Adoration: Ironforgeid22154level1rarity1methodcontained-in-itemid22235
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)
	-- No filter flags
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0spellid28505level1rarity1methodid22781
	self:AddCompanion(PetDB, 28505, 22781, 1)
	-- No filter flags
	-- No acquire information

	-- Turtle Box - 28738
	-- type15.0spellid28738source3level1rarity1method_queststype0level60category-3284choiceitems230071230151230021230221coin1020nameA Warden of the Allianceid171side2xp3100type0level60category-3284choiceitems230071230151230021230221coin0nameA Warden of the Hordeid5502side4xp3100methodrewardfromid23002
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:AddCompanionFlags(PetDB, 28738, 1,2,8)
	self:AddCompanionAcquire(PetDB, 28738, 4, 171, 4, 5502)

	-- Piglet's Collar - 28739
	-- type15.0spellid28739source3level1rarity1method_queststype0level60category-3284choiceitems230071230151230021230221coin1020nameA Warden of the Allianceid171side2xp3100type0level60category-3284choiceitems230071230151230021230221coin0nameA Warden of the Hordeid5502side4xp3100methodrewardfromid23007
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:AddCompanionFlags(PetDB, 28739, 1,2,8)
	self:AddCompanionAcquire(PetDB, 28739, 4, 171, 4, 5502)

	-- Rat Cage - 28740
	-- type15.0spellid28740source3level1rarity1method_queststype0level60category-3284choiceitems230071230151230021230221coin1020nameA Warden of the Allianceid171side2xp3100type0level60category-3284choiceitems230071230151230021230221coin0nameA Warden of the Hordeid5502side4xp3100methodrewardfromid23015
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:AddCompanionFlags(PetDB, 28740, 1,2,8)
	self:AddCompanionAcquire(PetDB, 28740, 4, 171, 4, 5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0spellid30156level1rarity4methodid23713
	self:AddCompanion(PetDB, 30156, 23713, 4)
	-- No filter flags
	-- No acquire information

	-- Netherwhelp's Collar - 32298
	-- type15.0spellid32298source3level20rarity3methodredemptionmethod_redemptionUnknownid25535
	-- Redemption
	self:AddCompanion(PetDB, 32298, 25535, 3)
	-- No filter flags
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0spellid33050level70rarity1methodredemptionmethod_redemptionUnknownid27445
	-- Redemption
	self:AddCompanion(PetDB, 33050, 27445, 1)
	-- No filter flags
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- method_vendorstype7locs352385price40000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type15.2spellid35156source2level70rarity1methodsold-byid29363
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:AddCompanionFlags(PetDB, 35156, 1,2,4)
	self:AddCompanionAcquire(PetDB, 35156, 2, 20980)

	-- Brown Rabbit Crate - 35239
	-- method_vendorstype7locs352385price10000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type15.2spellid35239source2level70rarity1methodsold-byid29364
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:AddCompanionFlags(PetDB, 35239, 1,2,4)
	self:AddCompanionAcquire(PetDB, 35239, 2, 20980)

	-- Blue Moth Egg - 35907
	-- method_vendorstype7locs3557price500000descMoth KeepernameSixxid21019minlevel30react13type15.2spellid35907source2level20rarity1methodsold-byid29901
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:AddCompanionFlags(PetDB, 35907, 1,4)
	self:AddCompanionAcquire(PetDB, 35907, 2, 21019)

	-- Red Moth Egg - 35909
	-- method_vendorstype7locs352385price10000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type15.2spellid35909source2level70rarity1methodsold-byid29902
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:AddCompanionFlags(PetDB, 35909, 1,2,4)
	self:AddCompanionAcquire(PetDB, 35909, 2, 20980)

	-- Yellow Moth Egg - 35910
	-- method_vendorstype7locs3557price500000descMoth KeepernameSixxid21019minlevel30react13type15.2spellid35910source2level20rarity1methodsold-byid29903
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:AddCompanionFlags(PetDB, 35910, 1,4)
	self:AddCompanionAcquire(PetDB, 35910, 2, 21019)

	-- White Moth Egg - 35911
	-- method_vendorstype7locs3557price500000descMoth KeepernameSixxid21019minlevel30react13type15.2spellid35911source2level20rarity1methodsold-byid29904
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:AddCompanionFlags(PetDB, 35911, 1,4)
	self:AddCompanionAcquire(PetDB, 35911, 2, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- method_vendorstype7locs3430price500000nameJilanneid16860minlevel9react31type15.2spellid36027source2level20rarity1methodsold-byid29953
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:AddCompanionFlags(PetDB, 36027, 2,4)
	self:AddCompanionAcquire(PetDB, 36027, 2, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- method_vendorstype7locs3430price500000nameJilanneid16860minlevel9react31type15.2spellid36028source2level20rarity1methodsold-byid29956
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:AddCompanionFlags(PetDB, 36028, 2,4)
	self:AddCompanionAcquire(PetDB, 36028, 2, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- method_vendorstype7locs3430price500000nameJilanneid16860minlevel9react31type15.2spellid36029source2level20rarity1methodsold-byid29957
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:AddCompanionFlags(PetDB, 36029, 2,4)
	self:AddCompanionAcquire(PetDB, 36029, 2, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- method_vendorstype7locs352385price10000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60react11type15.2spellid36031source2level70rarity1methodsold-byid29958
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:AddCompanionFlags(PetDB, 36031, 1,2,4)
	self:AddCompanionAcquire(PetDB, 36031, 2, 20980)

	-- Captured Firefly - 36034
	-- type15.2spellid36034method_dropslootCount77type10totalLootCount151282locs3521nameBogflare Needlerdisp18723id20197minlevel62react33source1level20rarity1methoddropped-byid29960
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:AddCompanionFlags(PetDB, 36034, 11)
	self:AddCompanionAcquire(PetDB, 36034, 3, 20197)

	-- Miniwing - 39181
	-- type15.0spellid39181source3level96rarity1method_queststype1level65givenitems317601category23519choiceitems317661317651317641coin66000nameSkywingid10898side1xp13750methodrewardfromid31760
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:AddCompanionFlags(PetDB, 39181, 1,2,8)
	self:AddCompanionAcquire(PetDB, 39181, 4, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0spellid39478source3level1rarity1methodredemptionmethod_redemptionUnknownid31880
	-- Redemption
	--self:AddCompanion(PetDB, 39478, 31880, 1)
	-- No filter flags
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0spellid39479source3level1rarity1methodredemptionmethod_redemptionUnknownid31881
	-- Redemption
	--self:AddCompanion(PetDB, 39479, 31881, 1)
	-- No filter flags
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0spellid39709source3level20rarity3method_queststype0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11117type0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11431methodrewardfromid32233
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:AddCompanionFlags(PetDB, 39709, 8)
	self:AddCompanionAcquire(PetDB, 39709, 4, 11117, 4, 11431)

	-- Fortune Coin - 40405
	-- type15.0spellid40405level1rarity3methodredemptionmethod_redemptionUnknownid32498
	-- Redemption
	self:AddCompanion(PetDB, 40405, 32498, 3)
	-- No filter flags
	-- No acquire information

	-- Banana Charm - 40549
	-- type15.0spellid40549level1rarity3methodredemptionmethod_redemptionUnknownid32588
	-- Redemption
	self:AddCompanion(PetDB, 40549, 32588, 3)
	-- No filter flags
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0spellid40613source3level20rarity3method_queststype0level70category-3284choiceitems326221326161326171coin0nameBack to the Orphanageid10966side2xp12300type0level70category-3284choiceitems326161326221326171coin0nameBack to the Orphanageid10967side4xp12300methodrewardfromid32617
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:AddCompanionFlags(PetDB, 40613, 1,2,8)
	self:AddCompanionAcquire(PetDB, 40613, 4, 10966, 4, 10967)

	-- Egbert's Egg - 40614
	-- type15.0spellid40614source3level20rarity3method_queststype0level70category-3284choiceitems326221326161326171coin0nameBack to the Orphanageid10966side2xp12300type0level70category-3284choiceitems326161326221326171coin0nameBack to the Orphanageid10967side4xp12300methodrewardfromid32616
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:AddCompanionFlags(PetDB, 40614, 1,2,8)
	self:AddCompanionAcquire(PetDB, 40614, 4, 10966, 4, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0spellid40634source3level20rarity3method_queststype0level70category-3284choiceitems326221326161326171coin0nameBack to the Orphanageid10966side2xp12300type0level70category-3284choiceitems326161326221326171coin0nameBack to the Orphanageid10967side4xp12300methodrewardfromid32622
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:AddCompanionFlags(PetDB, 40634, 1,2,8)
	self:AddCompanionAcquire(PetDB, 40634, 4, 10966, 4, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2spellid40990level1rarity3methodid40653
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0spellid42609level20rarity3methodid33154
	self:AddCompanion(PetDB, 42609, 33154, 3)
	-- No filter flags
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2spellid43697method_dropslootCount45type15.0totalLootCount7879source3level70rarity1nameBag of Fishing Treasuresid35348level20rarity3methodcontained-in-itemid33816
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)
	-- No filter flags
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2spellid43698method_dropslootCount49type15.0totalLootCount7879source3level70rarity1nameBag of Fishing Treasuresid35348level20rarity3methodcontained-in-itemid33818
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)
	-- No filter flags
	-- No acquire information

	-- Mojo - 43918
	-- type15.0spellid43918level20rarity3methodredemptionmethod_redemptionUnknownid33993
	-- Redemption
	self:AddCompanion(PetDB, 43918, 33993, 3)
	-- No filter flags
	-- No acquire information

	-- Clockwork Rocket Bot - 45048
	-- type15.3spellid45048method_dropslootCount33type15.0totalLootCount33level1rarity1rlevel1nameWinter Veil Giftid34426source1level1rarity3methoddropped-by,contained-in-itemid34425
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 45048, 3, 34426)

	-- Tiny Sporebat - 45082
	-- method_vendorstype7locs3521price000242453000000000descSporeggar QuartermasternameMycahdisp17626id18382minlevel64react11type15.2spellid45082source2level70rarity3methodsold-byid34478
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:AddCompanionFlags(PetDB, 45082, 1,2,4)
	self:AddCompanionAcquire(PetDB, 45082, 2, 18382)

	-- Rocket Chicken - 45125
	-- type15.2spellid45125level1rarity3methodredemptionmethod_redemptionUnknownid34492
	-- Redemption
	self:AddCompanion(PetDB, 45125, 34492, 3)
	-- No filter flags
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2spellid45127level1rarity4methodredemptionmethod_redemptionUnknownid34493
	-- Redemption
	self:AddCompanion(PetDB, 45127, 34493, 4)
	-- No filter flags
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0spellid45890level20rarity3methodid34955
	self:AddCompanion(PetDB, 45890, 34955, 3)
	-- No filter flags
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2spellid46425method_dropslootCount33type15.0totalLootCount7879source3level70rarity1nameBag of Fishing Treasuresid35348level20rarity3methodcontained-in-itemid35349
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)
	-- No filter flags
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2spellid46426method_dropslootCount59type15.0totalLootCount7879source3level70rarity1nameBag of Fishing Treasuresid35348level20rarity3methodcontained-in-itemid35350
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)
	-- No filter flags
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2spellid46599method_dropslootCount153type7totalLootCount9689locs409537033845classification3descLord of the Blood ElvesnameKael'thas Sunstriderdisp20023id23054minlevel72react33lootCount89type7totalLootCount6321locs4095classification1descLord of the Blood ElvesnameKael'thas Sunstriderdisp22906id24664minlevel72react33source1level70rarity3methoddropped-byid35504
	-- Instance: 4095 - type1maxlevel70territory1category3expansion1nameMagisters' Terracelimit5id4095minlevel70
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1maxlevel70territory1category3expansion1nameMagisters' Terracelimit5id4095minlevel70
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:AddCompanionFlags(PetDB, 46599, 5,6,11)
	self:AddCompanionAcquire(PetDB, 46599, 3, 23054, 3, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2spellid49964level20rarity3methodredemptionmethod_redemptionUnknownid38050
	-- Redemption
	self:AddCompanion(PetDB, 49964, 38050, 3)
	-- No filter flags
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- method_vendorstype7locs3519price00000000descSkyguard QuartermasternameGrellaid23367minlevel70react11type15.2spellid51716source2level70rarity3methodsold-byid38628
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:AddCompanionFlags(PetDB, 51716, 1,2,4)
	self:AddCompanionAcquire(PetDB, 51716, 2, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0spellid53082level20rarity3methodredemptionmethod_redemptionUnknownid39656
	-- Redemption
	self:AddCompanion(PetDB, 53082, 39656, 3)
	-- No filter flags
	-- No acquire information

end
