--[[

************************************************************************

./DB/PetDatabase.lua

Pet Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

96 found from data mining.
5 ignored.
0 WotLK ignored.

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
	-- method_crafted3928type15.2spellid4055source4rarity1level15methodcraftedid4401
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)
	self:AddCompanionFlags(PetDB, 4055, 5)
	self:AddCompanionAcquire(PetDB, 4055, 3, 0)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2method_vendorsprice400000descCrazy Cat Ladytype7react13minlevel5locs12nameDonni Anthaniaid6367spellid10673source2rarity1level20methodsold-byid8485
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:AddCompanionFlags(PetDB, 10673, 1,3)
	self:AddCompanionAcquire(PetDB, 10673, 1, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2method_vendorsprice400000descCrazy Cat Ladytype7react13minlevel5locs12nameDonni Anthaniaid6367spellid10674source2rarity1level20methodsold-byid8486
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:AddCompanionFlags(PetDB, 10674, 1,3)
	self:AddCompanionAcquire(PetDB, 10674, 1, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2spellid10675source1method_dropstype7react13minlevel31lootCount40maxlevel32totalLootCount24111locs36267nameDalaran Shield Guardid2271type7react13minlevel21lootCount33totalLootCount306locs130nameDalaran Spellscribeclassification4id1920type7react13minlevel34lootCount14maxlevel35totalLootCount13900locs36nameDalaran Summonerid2358type7react13minlevel32lootCount22maxlevel33totalLootCount10307locs36267nameDalaran Theurgistid2272rarity1level20methoddropped-byid8491
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:AddCompanionFlags(PetDB, 10675, 15)
	self:AddCompanionAcquire(PetDB, 10675, 4, 1920, 4, 2271, 4, 2272, 4, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2method_vendorsprice400000descCrazy Cat Ladytype7react13minlevel5locs12nameDonni Anthaniaid6367spellid10676source2rarity1level20methodsold-byid8487
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:AddCompanionFlags(PetDB, 10676, 1,3)
	self:AddCompanionAcquire(PetDB, 10676, 1, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2method_vendorsprice600000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid10677source12method_dropsdescThe Ship's Cooktype7react33disp1305minlevel20lootCount1590totalLootCount28314locs1581nameCookieclassification1id645rarity1level20methoddropped-by,sold-byid8490
	-- Instance: 1581 - type1minlevel15maxlevel20territory2nameThe Deadminescategory3id1581
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:AddCompanionFlags(PetDB, 10677, 1,2,3,6)
	self:AddCompanionAcquire(PetDB, 10677, 4, 645, 1, 20980)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2method_vendorsprice400000descCrazy Cat Ladytype7react13minlevel5locs12nameDonni Anthaniaid6367spellid10678source2rarity1level20methodsold-byid8488
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:AddCompanionFlags(PetDB, 10678, 1,3)
	self:AddCompanionAcquire(PetDB, 10678, 1, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2method_vendorsprice600000descBoy with kittenstype7react13disp7935minlevel5locs1519nameLil Timmyid8666spellid10679source2rarity1level20methodsold-byid8489
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:AddCompanionFlags(PetDB, 10679, 1,3)
	self:AddCompanionAcquire(PetDB, 10679, 1, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2method_vendorsprice400000descPirate Suppliestype7react13minlevel42locs33nameNarkkid2663spellid10680source2rarity1level20methodsold-byid8496
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:AddCompanionFlags(PetDB, 10680, 1,3)
	self:AddCompanionAcquire(PetDB, 10680, 1, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2spellid10682source13method_dropstype7react33minlevel39lootCount1totalLootCount5699locs33name\"Pretty Boy\" Duncanid2545type7react33minlevel42lootCount4totalLootCount10436locs33nameBloodsail Deckhandid4505type7react33minlevel39lootCount6maxlevel41totalLootCount35020locs33nameBloodsail Mageid1562type7react33disp793minlevel39lootCount9maxlevel41totalLootCount35811locs33nameBloodsail Raiderid1561type7react33disp796minlevel41lootCount4maxlevel42totalLootCount10895locs33nameBloodsail Sea Dogid1565type7react33disp1902minlevel40lootCount1totalLootCount16140locs33nameBloodsail Swabbyid4506type7react33disp796minlevel40lootCount5maxlevel41totalLootCount66557locs33nameBloodsail Swashbucklerid1563type7react33minlevel40lootCount4maxlevel41totalLootCount64146locs33nameBloodsail Warlockid1564rarity1level20methoddropped-byid8494
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:AddCompanionFlags(PetDB, 10682, 15)
	self:AddCompanionAcquire(PetDB, 10682, 4, 1561, 4, 1562, 4, 1563, 4, 1564, 4, 1565, 4, 2545, 4, 4505, 4, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2spellid10683source1method_dropstype7react33minlevel19lootCount3042maxlevel20totalLootCount104503locs1581nameDefias Pirateclassification1id657rarity1level20methoddropped-byid8492
	-- Instance: 1581 - type1minlevel15maxlevel20territory2nameThe Deadminescategory3id1581
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:AddCompanionFlags(PetDB, 10683, 6)
	self:AddCompanionAcquire(PetDB, 10683, 4, 657)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2method_vendorsprice400000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980price400000descPirate Suppliestype7react13minlevel42locs33nameNarkkid2663spellid10684source2rarity1level20methodsold-byid8495
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:AddCompanionFlags(PetDB, 10684, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10684, 1, 2663, 1, 20980)

	-- Ancona Chicken - 10685
	-- type15.2method_vendorsprice1000000type7react11minlevel51locs400nameMagus Tirthid6548spellid10685source2rarity1level35methodsold-byid11023
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:AddCompanionFlags(PetDB, 10685, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10685, 1, 6548)

	-- Cockroach - 10688
	-- type15.2method_vendorsprice500000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980price500000descCockroach Vendortype7react31minlevel30locs1497nameJeremiah Paysonid8403spellid10688source2rarity1level30methodsold-byid10393
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:AddCompanionFlags(PetDB, 10688, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10688, 1, 8403, 1, 20980)

	-- Dark Whelpling - 10695
	-- type15.2spellid10695source1method_dropstype2react33disp715minlevel41lootCount78maxlevel43totalLootCount71023locs3nameScalding Whelpid2725type2react33disp397minlevel39lootCount32maxlevel40totalLootCount34544locs152159nameSearing Whelpid4324rarity1level30methoddropped-byid10822
	-- Raid: 2159 - Onyxia's Lair
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:AddCompanionFlags(PetDB, 10695, 7,15)
	self:AddCompanionAcquire(PetDB, 10695, 4, 2725, 4, 4324)

	-- Azure Whelpling - 10696
	-- type15.2spellid10696source1method_dropstype2react33disp196minlevel50lootCount2maxlevel51totalLootCount3824locs16nameBlue Dragonspawnclassification1id193type2react33disp6760minlevel52lootCount3maxlevel53totalLootCount1451locs16nameBlue Scalebaneclassification1id6130type2react33disp6761minlevel51lootCount8maxlevel52totalLootCount5095locs16nameDraconic Mageweaverclassification1id6131rarity1level30methoddropped-byid34535
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:AddCompanionFlags(PetDB, 10696, 15)
	self:AddCompanionAcquire(PetDB, 10696, 4, 193, 4, 6130, 4, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2spellid10697source1method_dropstype2react33disp505minlevel25lootCount13maxlevel26totalLootCount4347locs11nameCrimson Whelpid1069type2react33disp8712minlevel26lootCount7maxlevel27totalLootCount1398locs11nameFlamesnorting Whelpid1044type2react33disp9583minlevel23lootCount11maxlevel24totalLootCount3731locs11nameRed Whelpid1042rarity1level30methoddropped-byid8499
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:AddCompanionFlags(PetDB, 10697, 15)
	self:AddCompanionAcquire(PetDB, 10697, 4, 1042, 4, 1044, 4, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2spellid10698source1method_dropstype2react33disp621minlevel35lootCount38maxlevel36totalLootCount16719locs8nameDreaming Whelpid741rarity1level30methoddropped-byid8498
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:AddCompanionFlags(PetDB, 10698, 15)
	self:AddCompanionAcquire(PetDB, 10698, 4, 741)

	-- Wood Frog Box - 10703
	-- type15.2method_vendorsprice1000000type7react21disp14589minlevel4maxlevel70locs122153519nameFlikid14860spellid10703source2rarity1level35methodsold-byid11027
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:AddCompanionFlags(PetDB, 10703, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10703, 1, 14860)

	-- Tree Frog Box - 10704
	-- type15.2method_vendorsprice1000000type7react21disp14589minlevel4maxlevel70locs122153519nameFlikid14860spellid10704source2rarity1level35methodsold-byid11026
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:AddCompanionFlags(PetDB, 10704, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10704, 1, 14860)

	-- Hawk Owl - 10706
	-- type15.2method_vendorsprice500000descOwl Trainertype7react13minlevel30locs1657nameShylenaiid8665spellid10706source2rarity1level30methodsold-byid8501
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:AddCompanionFlags(PetDB, 10706, 1,3)
	self:AddCompanionAcquire(PetDB, 10706, 1, 8665)

	-- Great Horned Owl - 10707
	-- type15.2method_vendorsprice500000descOwl Trainertype7react13minlevel30locs1657nameShylenaiid8665spellid10707source2rarity1level30methodsold-byid8500
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:AddCompanionFlags(PetDB, 10707, 1,3)
	self:AddCompanionAcquire(PetDB, 10707, 1, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2method_vendorsprice500000descPrairie Dog Vendortype7react31minlevel30locs1638nameHalpaid8401spellid10709source2rarity1level30methodsold-byid10394
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:AddCompanionFlags(PetDB, 10709, 2,3)
	self:AddCompanionAcquire(PetDB, 10709, 1, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2method_vendorsprice200000type7react13minlevel1locs1nameYarlyn Amberstillid1263spellid10711source23rarity1level20methodsold-byid8497
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:AddCompanionFlags(PetDB, 10711, 1,3)
	self:AddCompanionAcquire(PetDB, 10711, 1, 1263)

	-- Black Kingsnake - 10714
	-- type15.2method_vendorsprice500000descSnake Vendortype7react31minlevel30locs1637nameXan'tishid8404spellid10714source2rarity1level30methodsold-byid10360
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:AddCompanionFlags(PetDB, 10714, 2,3)
	self:AddCompanionAcquire(PetDB, 10714, 1, 8404)

	-- Brown Snake - 10716
	-- type15.2method_vendorsprice500000descSnake Vendortype7react31minlevel30locs1637nameXan'tishid8404spellid10716source2rarity1level30methodsold-byid10361
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:AddCompanionFlags(PetDB, 10716, 2,3)
	self:AddCompanionAcquire(PetDB, 10716, 1, 8404)

	-- Crimson Snake - 10717
	-- type15.2method_vendorsprice500000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980price500000descSnake Vendortype7react31minlevel30locs1637nameXan'tishid8404spellid10717source2rarity1level30methodsold-byid10392
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:AddCompanionFlags(PetDB, 10717, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10717, 1, 8404, 1, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2spellid12243source3rarity1level40method_queststype0side1coin6000xp7100level50givenitems103981nameAn OOX of Your Owncategory035id3721methodrewardfromid10398
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:AddCompanionFlags(PetDB, 12243, 1,2,4)
	self:AddCompanionAcquire(PetDB, 12243, 2, 3721)

	-- Chicken Egg - 13548
	-- type15.0spellid13548source1method_dropstype3lootCount842totalLootCount856locs40nameFarm Chicken Eggid161513rarity1level1methoddropped-by,contained-in-objectid11110
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:AddCompanionFlags(PetDB, 13548, 15)
	self:AddCompanionAcquire(PetDB, 13548, 4, 161513)

	-- Pet Bombling - 15048
	-- method_crafted15628type7.3spellid15048source4rarity1level41methodcraftedid11825
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)
	self:AddCompanionFlags(PetDB, 15048, 5)
	self:AddCompanionAcquire(PetDB, 15048, 3, 0)

	-- Lil' Smoky - 15049
	-- method_crafted15633type7.3spellid15049source4rarity1level41methodcraftedid11826
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)
	self:AddCompanionFlags(PetDB, 15049, 5)
	self:AddCompanionAcquire(PetDB, 15049, 3, 0)

	-- Sprite Darter Egg - 15067
	-- type15.0spellid15067source3rarity1level47method_queststype0side2coin360xp625level48givenitems114741nameBecoming a Parentcategory1357id4298methodrewardfromid11474
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:AddCompanionFlags(PetDB, 15067, 1,4)
	self:AddCompanionAcquire(PetDB, 15067, 2, 4298)

	-- Worg Carrier - 15999
	-- type15.0spellid15999source3rarity1level59method_queststype81side1coin9000xp13950level59givenitems122641nameKibler's Exotic Petscategory31583id4729methodrewardfromid12264
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:AddCompanionFlags(PetDB, 15999, 1,2,4)
	self:AddCompanionAcquire(PetDB, 15999, 2, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0spellid16450source3rarity1level59method_queststype81side1coin9000xp13950level59givenitems125291nameEn-Ay-Es-Tee-Whycategory31583id4862methodrewardfromid12529
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:AddCompanionFlags(PetDB, 16450, 1,2,4)
	self:AddCompanionAcquire(PetDB, 16450, 2, 4862)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1spellid17567source3armor63rarity2level60method_queststype0side1coin8700level60givenitems121851nameAvast Ye, Admiral!category033id4621methodrewardfromid12185
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:AddCompanionFlags(PetDB, 17567, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17567, 2, 4621)

	-- Panda Collar - 17707
	-- type15.0spellid17707source3rarity3level20method_queststype0coin0level1nameWelcome!category024id5805choiceitems135841135831135821type0coin0level1nameWelcome!category0132id5841choiceitems135841135831135821type0coin0level1nameWelcome!category1188id5842choiceitems135841135831135821type0coin0level1nameWelcome!category1363id5843choiceitems135841135831135821type0coin0level1nameWelcome!category1221id5844choiceitems135841135831135821type0coin0level1nameWelcome!category0154id5847choiceitems135841135831135821type0side4coin0level1nameWelcome!category03431id8547choiceitems135841135831135821type0side2coin0level1nameWelcome!category13526id9278choiceitems135841135831135821type0coin0level1nameWelcome!category00id12781choiceitems135841135831135821methodrewardfromid13583
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:AddCompanionFlags(PetDB, 17707, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17707, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Diablo Stone - 17708
	-- type15.0spellid17708source3rarity3level20method_queststype0coin0level1nameWelcome!category024id5805choiceitems135841135831135821type0coin0level1nameWelcome!category0132id5841choiceitems135841135831135821type0coin0level1nameWelcome!category1188id5842choiceitems135841135831135821type0coin0level1nameWelcome!category1363id5843choiceitems135841135831135821type0coin0level1nameWelcome!category1221id5844choiceitems135841135831135821type0coin0level1nameWelcome!category0154id5847choiceitems135841135831135821type0side4coin0level1nameWelcome!category03431id8547choiceitems135841135831135821type0side2coin0level1nameWelcome!category13526id9278choiceitems135841135831135821type0coin0level1nameWelcome!category00id12781choiceitems135841135831135821methodrewardfromid13584
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:AddCompanionFlags(PetDB, 17708, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17708, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Zergling Leash - 17709
	-- type15.0spellid17709source3rarity3level20method_queststype0coin0level1nameWelcome!category024id5805choiceitems135841135831135821type0coin0level1nameWelcome!category0132id5841choiceitems135841135831135821type0coin0level1nameWelcome!category1188id5842choiceitems135841135831135821type0coin0level1nameWelcome!category1363id5843choiceitems135841135831135821type0coin0level1nameWelcome!category1221id5844choiceitems135841135831135821type0coin0level1nameWelcome!category0154id5847choiceitems135841135831135821type0side4coin0level1nameWelcome!category03431id8547choiceitems135841135831135821type0side2coin0level1nameWelcome!category13526id9278choiceitems135841135831135821type0coin0level1nameWelcome!category00id12781choiceitems135841135831135821methodrewardfromid13582
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:AddCompanionFlags(PetDB, 17709, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17709, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Lifelike Mechanical Toad - 19772
	-- method_crafted19793type15.2spellid19772source4rarity1level53methodcraftedid15996
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)
	self:AddCompanionFlags(PetDB, 19772, 5)
	self:AddCompanionAcquire(PetDB, 19772, 3, 0)

	-- Orcish Orphan Whistle - 23012
	-- type15.0method_redemptionUnknownspellid23012source3rarity1level10methodredemptionid18597
	-- Redemption
	--self:AddCompanion(PetDB, 23012, 18597, 1)
	--self:AddCompanionFlags(PetDB, 23012, 10)
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0method_redemptionUnknownspellid23013source3rarity1level10methodredemptionid18598
	-- Redemption
	--self:AddCompanion(PetDB, 23013, 18598, 1)
	--self:AddCompanionFlags(PetDB, 23013, 10)
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2method_redemptionUnknownspellid23811rarity1level35methodredemptionid19450
	-- Redemption
	self:AddCompanion(PetDB, 23811, 19450, 1)
	self:AddCompanionFlags(PetDB, 23811, 10)
	-- No acquire information

	-- Blue Murloc Egg - 24696
	-- type15.0spellid24696rarity3level20methodid20371
	self:AddCompanion(PetDB, 24696, 20371, 3)
	-- No filter flags
	-- No acquire information

	-- Lurky's Egg - 24988
	-- type15.0spellid24988rarity3level1methodid30360
	self:AddCompanion(PetDB, 24988, 30360, 3)
	-- No filter flags
	-- No acquire information

	-- Disgusting Oozeling - 25162
	-- type15.2spellid25162method_dropstype15.0source1lootCount17totalLootCount951rarity1level50nameOozing Bagid20768rarity1level55methodcontained-in-itemid20769
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)
	-- No filter flags
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2spellid25849rarity1level20methodid21168
	--self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- method_crafted26011type15.2spellid26010source4rarity1level60methodcraftedid21277
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)
	self:AddCompanionFlags(PetDB, 26010, 5)
	self:AddCompanionAcquire(PetDB, 26010, 3, 0)

	-- Snowman Kit - 26469
	-- type15.3spellid26469source1method_dropstype15.0lootCount4totalLootCount31rarity1level1nameGaily Wrapped Presentid21310rlevel1rarity1level1methoddropped-by,contained-in-itemid21309
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26469, 4, 21310)

	-- Jingling Bell - 26528
	-- type15.3spellid26528source1method_dropstype15.0lootCount6totalLootCount31rarity1level1nameGaily Wrapped Presentid21310rlevel1rarity1level1methoddropped-by,contained-in-itemid21308
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26528, 4, 21310)

	-- Green Helper Box - 26532
	-- type15.3spellid26532source1method_dropstype15.0lootCount6totalLootCount31rarity1level1nameGaily Wrapped Presentid21310rlevel1rarity1level1methoddropped-by,contained-in-itemid21301
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26532, 4, 21310)

	-- Red Helper Box - 26541
	-- type15.3spellid26541source1method_dropstype15.0lootCount15totalLootCount31rarity1level1nameGaily Wrapped Presentid21310rlevel1rarity1level1methoddropped-by,contained-in-itemid21305
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 26541, 4, 21310)

	-- Pink Murloc Egg - 27241
	-- type15.0spellid27241rarity3level20methodid22114
	self:AddCompanion(PetDB, 27241, 22114, 3)
	-- No filter flags
	-- No acquire information

	-- Truesilver Shafted Arrow - 27570
	-- type15.0spellid27570method_dropstype15.3lootCount1totalLootCount18rarity1level1nameGift of Adoration: Stormwindid21981type15.3lootCount1totalLootCount12rarity1level1namePledge of Adoration: Ironforgeid22154rarity1level1methodcontained-in-itemid22235
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)
	-- No filter flags
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0spellid28505rarity1level1methodid22781
	self:AddCompanion(PetDB, 28505, 22781, 1)
	-- No filter flags
	-- No acquire information

	-- Turtle Box - 28738
	-- type15.0spellid28738source3rarity1level1method_queststype0side2coin1020xp3100level60nameA Warden of the Alliancecategory-3284id171choiceitems230071230151230021230221type0side4coin0xp3100level60nameA Warden of the Hordecategory-3284id5502choiceitems230071230151230021230221methodrewardfromid23002
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:AddCompanionFlags(PetDB, 28738, 1,2,4)
	self:AddCompanionAcquire(PetDB, 28738, 2, 171, 2, 5502)

	-- Piglet's Collar - 28739
	-- type15.0spellid28739source3rarity1level1method_queststype0side2coin1020xp3100level60nameA Warden of the Alliancecategory-3284id171choiceitems230071230151230021230221type0side4coin0xp3100level60nameA Warden of the Hordecategory-3284id5502choiceitems230071230151230021230221methodrewardfromid23007
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:AddCompanionFlags(PetDB, 28739, 1,2,4)
	self:AddCompanionAcquire(PetDB, 28739, 2, 171, 2, 5502)

	-- Rat Cage - 28740
	-- type15.0spellid28740source3rarity1level1method_queststype0side2coin1020xp3100level60nameA Warden of the Alliancecategory-3284id171choiceitems230071230151230021230221type0side4coin0xp3100level60nameA Warden of the Hordecategory-3284id5502choiceitems230071230151230021230221methodrewardfromid23015
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:AddCompanionFlags(PetDB, 28740, 1,2,4)
	self:AddCompanionAcquire(PetDB, 28740, 2, 171, 2, 5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0spellid30156rarity4level1methodid23713
	self:AddCompanion(PetDB, 30156, 23713, 4)
	-- No filter flags
	-- No acquire information

	-- Netherwhelp's Collar - 32298
	-- type15.0method_redemptionUnknownspellid32298source3rarity3level20methodredemptionid25535
	-- Redemption
	self:AddCompanion(PetDB, 32298, 25535, 3)
	self:AddCompanionFlags(PetDB, 32298, 10)
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0method_redemptionUnknownspellid33050rarity1level70methodredemptionid27445
	-- Redemption
	self:AddCompanion(PetDB, 33050, 27445, 1)
	self:AddCompanionFlags(PetDB, 33050, 10)
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2method_vendorsprice40000000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid35156source2rarity1level70methodsold-byid29363
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:AddCompanionFlags(PetDB, 35156, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35156, 1, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2method_vendorsprice10000000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid35239source2rarity1level70methodsold-byid29364
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:AddCompanionFlags(PetDB, 35239, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35239, 1, 20980)

	-- Blue Moth Egg - 35907
	-- type15.2method_vendorsprice500000descMoth Keepertype7react13minlevel30locs3557nameSixxid21019spellid35907source2rarity1level20methodsold-byid29901
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:AddCompanionFlags(PetDB, 35907, 1,3)
	self:AddCompanionAcquire(PetDB, 35907, 1, 21019)

	-- Red Moth Egg - 35909
	-- type15.2method_vendorsprice10000000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid35909source2rarity1level70methodsold-byid29902
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:AddCompanionFlags(PetDB, 35909, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35909, 1, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2method_vendorsprice500000descMoth Keepertype7react13minlevel30locs3557nameSixxid21019spellid35910source2rarity1level20methodsold-byid29903
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:AddCompanionFlags(PetDB, 35910, 1,3)
	self:AddCompanionAcquire(PetDB, 35910, 1, 21019)

	-- White Moth Egg - 35911
	-- type15.2method_vendorsprice500000descMoth Keepertype7react13minlevel30locs3557nameSixxid21019spellid35911source2rarity1level20methodsold-byid29904
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:AddCompanionFlags(PetDB, 35911, 1,3)
	self:AddCompanionAcquire(PetDB, 35911, 1, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2method_vendorsprice500000type7react31minlevel9locs3430nameJilanneid16860spellid36027source2rarity1level20methodsold-byid29953
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:AddCompanionFlags(PetDB, 36027, 2,3)
	self:AddCompanionAcquire(PetDB, 36027, 1, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2method_vendorsprice500000type7react31minlevel9locs3430nameJilanneid16860spellid36028source2rarity1level20methodsold-byid29956
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:AddCompanionFlags(PetDB, 36028, 2,3)
	self:AddCompanionAcquire(PetDB, 36028, 1, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2method_vendorsprice500000type7react31minlevel9locs3430nameJilanneid16860spellid36029source2rarity1level20methodsold-byid29957
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:AddCompanionFlags(PetDB, 36029, 2,3)
	self:AddCompanionAcquire(PetDB, 36029, 1, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2method_vendorsprice10000000descExotic Creaturestype7react11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid36031source2rarity1level70methodsold-byid29958
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:AddCompanionFlags(PetDB, 36031, 1,2,3)
	self:AddCompanionAcquire(PetDB, 36031, 1, 20980)

	-- Captured Firefly - 36034
	-- type15.2spellid36034source1method_dropstype10react33disp18723minlevel62lootCount77totalLootCount151282locs3521nameBogflare Needlerid20197rarity1level20methoddropped-byid29960
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:AddCompanionFlags(PetDB, 36034, 15)
	self:AddCompanionAcquire(PetDB, 36034, 4, 20197)

	-- Miniwing - 39181
	-- type15.0spellid39181source3rarity1level96method_queststype1side1coin66000xp13750level65givenitems317601nameSkywingcategory23519id10898choiceitems317661317651317641methodrewardfromid31760
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:AddCompanionFlags(PetDB, 39181, 1,2,4)
	self:AddCompanionAcquire(PetDB, 39181, 2, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0method_redemptionUnknownspellid39478source3rarity1level1methodredemptionid31880
	-- Redemption
	--self:AddCompanion(PetDB, 39478, 31880, 1)
	--self:AddCompanionFlags(PetDB, 39478, 10)
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0method_redemptionUnknownspellid39479source3rarity1level1methodredemptionid31881
	-- Redemption
	--self:AddCompanion(PetDB, 39479, 31881, 1)
	--self:AddCompanionFlags(PetDB, 39479, 10)
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0spellid39709source3rarity3level20method_queststype0coin0givenitems322331nameCatch the Wild Wolpertinger!category-3370id11117type0coin0givenitems322331nameCatch the Wild Wolpertinger!category-3370id11431methodrewardfromid32233
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:AddCompanionFlags(PetDB, 39709, 4)
	self:AddCompanionAcquire(PetDB, 39709, 2, 11117, 2, 11431)

	-- Fortune Coin - 40405
	-- type15.0method_redemptionUnknownspellid40405rarity3level1methodredemptionid32498
	-- Redemption
	self:AddCompanion(PetDB, 40405, 32498, 3)
	self:AddCompanionFlags(PetDB, 40405, 10)
	-- No acquire information

	-- Banana Charm - 40549
	-- type15.0method_redemptionUnknownspellid40549rarity3level1methodredemptionid32588
	-- Redemption
	self:AddCompanion(PetDB, 40549, 32588, 3)
	self:AddCompanionFlags(PetDB, 40549, 10)
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0spellid40613source3rarity3level20method_queststype0side2coin0xp12300level70nameBack to the Orphanagecategory-3284id10966choiceitems326221326161326171type0side4coin0xp12300level70nameBack to the Orphanagecategory-3284id10967choiceitems326161326221326171methodrewardfromid32617
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:AddCompanionFlags(PetDB, 40613, 1,2,4)
	self:AddCompanionAcquire(PetDB, 40613, 2, 10966, 2, 10967)

	-- Egbert's Egg - 40614
	-- type15.0spellid40614source3rarity3level20method_queststype0side2coin0xp12300level70nameBack to the Orphanagecategory-3284id10966choiceitems326221326161326171type0side4coin0xp12300level70nameBack to the Orphanagecategory-3284id10967choiceitems326161326221326171methodrewardfromid32616
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:AddCompanionFlags(PetDB, 40614, 1,2,4)
	self:AddCompanionAcquire(PetDB, 40614, 2, 10966, 2, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0spellid40634source3rarity3level20method_queststype0side2coin0xp12300level70nameBack to the Orphanagecategory-3284id10966choiceitems326221326161326171type0side4coin0xp12300level70nameBack to the Orphanagecategory-3284id10967choiceitems326161326221326171methodrewardfromid32622
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:AddCompanionFlags(PetDB, 40634, 1,2,4)
	self:AddCompanionAcquire(PetDB, 40634, 2, 10966, 2, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2spellid40990rarity3level1methodid40653
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0spellid42609rarity3level20methodid33154
	self:AddCompanion(PetDB, 42609, 33154, 3)
	-- No filter flags
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2spellid43697method_dropstype15.0source3lootCount45totalLootCount7879rarity1level70nameBag of Fishing Treasuresid35348rarity3level20methodcontained-in-itemid33816
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)
	-- No filter flags
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2spellid43698method_dropstype15.0source3lootCount49totalLootCount7879rarity1level70nameBag of Fishing Treasuresid35348rarity3level20methodcontained-in-itemid33818
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)
	-- No filter flags
	-- No acquire information

	-- Mojo - 43918
	-- type15.0method_redemptionUnknownspellid43918rarity3level20methodredemptionid33993
	-- Redemption
	self:AddCompanion(PetDB, 43918, 33993, 3)
	self:AddCompanionFlags(PetDB, 43918, 10)
	-- No acquire information

	-- Clockwork Rocket Bot - 45048
	-- type15.3spellid45048source1method_dropstype15.0lootCount33totalLootCount33rarity1level1nameWinter Veil Giftid34426rlevel1rarity3level1methoddropped-by,contained-in-itemid34425
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)
	-- No filter flags
	self:AddCompanionAcquire(PetDB, 45048, 4, 34426)

	-- Tiny Sporebat - 45082
	-- type15.2method_vendorsprice000242453000000000descSporeggar Quartermastertype7react11disp17626minlevel64locs3521nameMycahid18382spellid45082source2rarity3level70methodsold-byid34478
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:AddCompanionFlags(PetDB, 45082, 1,2,3)
	self:AddCompanionAcquire(PetDB, 45082, 1, 18382)

	-- Rocket Chicken - 45125
	-- type15.2method_redemptionUnknownspellid45125rarity3level1methodredemptionid34492
	-- Redemption
	self:AddCompanion(PetDB, 45125, 34492, 3)
	self:AddCompanionFlags(PetDB, 45125, 10)
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2method_redemptionUnknownspellid45127rarity4level1methodredemptionid34493
	-- Redemption
	self:AddCompanion(PetDB, 45127, 34493, 4)
	self:AddCompanionFlags(PetDB, 45127, 10)
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0spellid45890rarity3level20methodid34955
	self:AddCompanion(PetDB, 45890, 34955, 3)
	-- No filter flags
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2spellid46425method_dropstype15.0source3lootCount33totalLootCount7879rarity1level70nameBag of Fishing Treasuresid35348rarity3level20methodcontained-in-itemid35349
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)
	-- No filter flags
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2spellid46426method_dropstype15.0source3lootCount59totalLootCount7879rarity1level70nameBag of Fishing Treasuresid35348rarity3level20methodcontained-in-itemid35350
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)
	-- No filter flags
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2spellid46599source1method_dropsdescLord of the Blood Elvestype7react33disp20023minlevel72lootCount153totalLootCount9689locs409537033845nameKael'thas Sunstriderclassification3id23054descLord of the Blood Elvestype7react33disp22906minlevel72lootCount89totalLootCount6321locs4095nameKael'thas Sunstriderclassification1id24664rarity3level70methoddropped-byid35504
	-- Instance: 4095 - expansion1type1limit5minlevel70maxlevel70territory1nameMagisters' Terracecategory3id4095
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - expansion1type1limit5minlevel70maxlevel70territory1nameMagisters' Terracecategory3id4095
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:AddCompanionFlags(PetDB, 46599, 6,7,15)
	self:AddCompanionAcquire(PetDB, 46599, 4, 23054, 4, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2method_redemptionUnknownspellid49964rarity3level20methodredemptionid38050
	-- Redemption
	self:AddCompanion(PetDB, 49964, 38050, 3)
	self:AddCompanionFlags(PetDB, 49964, 10)
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- type15.2method_vendorsprice00000000descSkyguard Quartermastertype7react11minlevel70locs3519nameGrellaid23367spellid51716source2rarity3level70methodsold-byid38628
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:AddCompanionFlags(PetDB, 51716, 1,2,3)
	self:AddCompanionAcquire(PetDB, 51716, 1, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0method_redemptionUnknownspellid53082rarity3level20methodredemptionid39656
	-- Redemption
	self:AddCompanion(PetDB, 53082, 39656, 3)
	self:AddCompanionFlags(PetDB, 53082, 10)
	-- No acquire information

end
