--[[

************************************************************************

./DB/PetDatabase.lua

Pet Database data for all of Ackis Recipe List

Auto-generated using ARLDataminer.rb
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

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:MakeMiniPetTable(PetDB)

	-- Mechanical Squirrel Box - 
	-- type15.2rarity1source4method_crafted3928methodcraftedlevel15id4401spellid4055
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)
	-- No filter flags
	-- No acquire information

	-- Cat Carrier (Bombay) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniaid6367react13id8485spellid10673
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:addTradeFlags(RecipeDB, 10673, 1,4)
	self:addTradeAcquire(RecipeDB, 10673, 2, 6367)

	-- Cat Carrier (Cornish Rex) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniaid6367react13id8486spellid10674
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:addTradeFlags(RecipeDB, 10674, 1,4)
	self:addTradeAcquire(RecipeDB, 10674, 2, 6367)

	-- Cat Carrier (Black Tabby) - 
	-- method_dropstype7locs36267minlevel31lootCount40maxlevel32nameDalaran Shield GuardtotalLootCount24111id2271react13type7classification4locs130minlevel21lootCount33nameDalaran SpellscribetotalLootCount306id1920react13type7locs36minlevel34lootCount14maxlevel35nameDalaran SummonertotalLootCount13900id2358react13type7locs36267minlevel32lootCount22maxlevel33nameDalaran TheurgisttotalLootCount10307id2272react13type15.2rarity1source1methoddropped-bylevel20id8491spellid10675
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:addTradeFlags(RecipeDB, 10675, 5)
	self:addTradeAcquire(RecipeDB, 10675, 3, 1920, 3, 2271, 3, 2272, 3, 2358)

	-- Cat Carrier (Orange Tabby) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniaid6367react13id8487spellid10676
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:addTradeFlags(RecipeDB, 10676, 1,4)
	self:addTradeAcquire(RecipeDB, 10676, 2, 6367)

	-- Cat Carrier (Siamese) - 
	-- method_dropstype7classification1locs1581descThe Ship's Cookdisp1305minlevel20lootCount1590nameCookietotalLootCount28314id645react33type15.2rarity1source12methoddropped-by,sold-bylevel20method_vendorstype7price600000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11id8490spellid10677
	-- Instance: 1581 - type1category3minlevel15maxlevel20nameThe Deadminesid1581territory2
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:addTradeFlags(RecipeDB, 10677, 1,2,4,5)
	self:addTradeAcquire(RecipeDB, 10677, 3, 645, 2, 20980)

	-- Cat Carrier (Silver Tabby) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniaid6367react13id8488spellid10678
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:addTradeFlags(RecipeDB, 10678, 1,4)
	self:addTradeAcquire(RecipeDB, 10678, 2, 6367)

	-- Cat Carrier (White Kitten) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price600000locs1519descBoy with kittensdisp7935minlevel5nameLil Timmyid8666react13id8489spellid10679
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:addTradeFlags(RecipeDB, 10679, 1,4)
	self:addTradeAcquire(RecipeDB, 10679, 2, 8666)

	-- Parrot Cage (Cockatiel) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price400000locs33descPirate Suppliesminlevel42nameNarkkid2663react13id8496spellid10680
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:addTradeFlags(RecipeDB, 10680, 1,4)
	self:addTradeAcquire(RecipeDB, 10680, 2, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 
	-- method_dropstype7locs33minlevel39lootCount1name\"Pretty Boy\" DuncantotalLootCount5699id2545react33type7locs33minlevel42lootCount4nameBloodsail DeckhandtotalLootCount10436id4505react33type7locs33minlevel39lootCount6maxlevel41nameBloodsail MagetotalLootCount35020id1562react33type7locs33disp793minlevel39lootCount9maxlevel41nameBloodsail RaidertotalLootCount35811id1561react33type7locs33disp796minlevel41lootCount4maxlevel42nameBloodsail Sea DogtotalLootCount10895id1565react33type7locs33disp1902minlevel40lootCount1nameBloodsail SwabbytotalLootCount16140id4506react33type7locs33disp796minlevel40lootCount5maxlevel41nameBloodsail SwashbucklertotalLootCount66557id1563react33type7locs33minlevel40lootCount4maxlevel41nameBloodsail WarlocktotalLootCount64146id1564react33type15.2rarity1source13methoddropped-bylevel20id8494spellid10682
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:addTradeFlags(RecipeDB, 10682, 5)
	self:addTradeAcquire(RecipeDB, 10682, 3, 1561, 3, 1562, 3, 1563, 3, 1564, 3, 1565, 3, 2545, 3, 4505, 3, 4506)

	-- Parrot Cage (Green Wing Macaw) - 
	-- method_dropstype7classification1locs1581minlevel19lootCount3042maxlevel20nameDefias PiratetotalLootCount104503id657react33type15.2rarity1source1methoddropped-bylevel20id8492spellid10683
	-- Instance: 1581 - type1category3minlevel15maxlevel20nameThe Deadminesid1581territory2
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:addTradeFlags(RecipeDB, 10683, 5)
	self:addTradeAcquire(RecipeDB, 10683, 3, 657)

	-- Parrot Cage (Senegal) - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price400000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11type7price400000locs33descPirate Suppliesminlevel42nameNarkkid2663react13id8495spellid10684
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:addTradeFlags(RecipeDB, 10684, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10684, 2, 2663, 2, 20980)

	-- Ancona Chicken - 
	-- type15.2rarity1source2methodsold-bylevel35method_vendorstype7price1000000locs400minlevel51nameMagus Tirthid6548react11id11023spellid10685
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:addTradeFlags(RecipeDB, 10685, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10685, 2, 6548)

	-- Cockroach - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11type7price500000locs1497descCockroach Vendorminlevel30nameJeremiah Paysonid8403react31id10393spellid10688
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:addTradeFlags(RecipeDB, 10688, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10688, 2, 8403, 2, 20980)

	-- Dark Whelpling - 
	-- method_dropstype2locs3disp715minlevel41lootCount78maxlevel43nameScalding WhelptotalLootCount71023id2725react33type2locs152159disp397minlevel39lootCount32maxlevel40nameSearing WhelptotalLootCount34544id4324react33type15.2rarity1source1methoddropped-bylevel30id10822spellid10695
	-- Raid: 2159 - Onyxia's Lair
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:addTradeFlags(RecipeDB, 10695, 5,6)
	self:addTradeAcquire(RecipeDB, 10695, 3, 2725, 3, 4324)

	-- Azure Whelpling - 
	-- method_dropstype2classification1locs16disp196minlevel50lootCount2maxlevel51nameBlue DragonspawntotalLootCount3824id193react33type2classification1locs16disp6760minlevel52lootCount3maxlevel53nameBlue ScalebanetotalLootCount1451id6130react33type2classification1locs16disp6761minlevel51lootCount8maxlevel52nameDraconic MageweavertotalLootCount5095id6131react33type15.2rarity1source1methoddropped-bylevel30id34535spellid10696
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:addTradeFlags(RecipeDB, 10696, 5)
	self:addTradeAcquire(RecipeDB, 10696, 3, 193, 3, 6130, 3, 6131)

	-- Tiny Crimson Whelpling - 
	-- method_dropstype2locs11disp505minlevel25lootCount13maxlevel26nameCrimson WhelptotalLootCount4347id1069react33type2locs11disp8712minlevel26lootCount7maxlevel27nameFlamesnorting WhelptotalLootCount1398id1044react33type2locs11disp9583minlevel23lootCount11maxlevel24nameRed WhelptotalLootCount3731id1042react33type15.2rarity1source1methoddropped-bylevel30id8499spellid10697
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:addTradeFlags(RecipeDB, 10697, 5)
	self:addTradeAcquire(RecipeDB, 10697, 3, 1042, 3, 1044, 3, 1069)

	-- Tiny Emerald Whelpling - 
	-- method_dropstype2locs8disp621minlevel35lootCount38maxlevel36nameDreaming WhelptotalLootCount16719id741react33type15.2rarity1source1methoddropped-bylevel30id8498spellid10698
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:addTradeFlags(RecipeDB, 10698, 5)
	self:addTradeAcquire(RecipeDB, 10698, 3, 741)

	-- Wood Frog Box - 
	-- type15.2rarity1source2methodsold-bylevel35method_vendorstype7price1000000locs122153519disp14589minlevel4maxlevel70nameFlikid14860react21id11027spellid10703
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:addTradeFlags(RecipeDB, 10703, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10703, 2, 14860)

	-- Tree Frog Box - 
	-- type15.2rarity1source2methodsold-bylevel35method_vendorstype7price1000000locs122153519disp14589minlevel4maxlevel70nameFlikid14860react21id11026spellid10704
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:addTradeFlags(RecipeDB, 10704, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10704, 2, 14860)

	-- Hawk Owl - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs1657descOwl Trainerminlevel30nameShylenaiid8665react13id8501spellid10706
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:addTradeFlags(RecipeDB, 10706, 1,4)
	self:addTradeAcquire(RecipeDB, 10706, 2, 8665)

	-- Great Horned Owl - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs1657descOwl Trainerminlevel30nameShylenaiid8665react13id8500spellid10707
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:addTradeFlags(RecipeDB, 10707, 1,4)
	self:addTradeAcquire(RecipeDB, 10707, 2, 8665)

	-- Prairie Dog Whistle - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs1638descPrairie Dog Vendorminlevel30nameHalpaid8401react31id10394spellid10709
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:addTradeFlags(RecipeDB, 10709, 2,4)
	self:addTradeAcquire(RecipeDB, 10709, 2, 8401)

	-- Rabbit Crate (Snowshoe) - 
	-- type15.2rarity1source23methodsold-bylevel20method_vendorstype7price200000locs1minlevel1nameYarlyn Amberstillid1263react13id8497spellid10711
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:addTradeFlags(RecipeDB, 10711, 1,4)
	self:addTradeAcquire(RecipeDB, 10711, 2, 1263)

	-- Black Kingsnake - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs1637descSnake Vendorminlevel30nameXan'tishid8404react31id10360spellid10714
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:addTradeFlags(RecipeDB, 10714, 2,4)
	self:addTradeAcquire(RecipeDB, 10714, 2, 8404)

	-- Brown Snake - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs1637descSnake Vendorminlevel30nameXan'tishid8404react31id10361spellid10716
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:addTradeFlags(RecipeDB, 10716, 2,4)
	self:addTradeAcquire(RecipeDB, 10716, 2, 8404)

	-- Crimson Snake - 
	-- type15.2rarity1source2methodsold-bylevel30method_vendorstype7price500000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11type7price500000locs1637descSnake Vendorminlevel30nameXan'tishid8404react31id10392spellid10717
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:addTradeFlags(RecipeDB, 10717, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10717, 2, 8404, 2, 20980)

	-- Mechanical Chicken - 
	-- type15.2rarity1source3method_queststype0givenitems103981category035coin6000xp7100side1level50nameAn OOX of Your Ownid3721methodrewardfromlevel40id10398spellid12243
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:addTradeFlags(RecipeDB, 12243, 1,2,8)
	self:addTradeAcquire(RecipeDB, 12243, 4, 3721)

	-- Chicken Egg - 
	-- method_dropstype3locs40lootCount842nameFarm Chicken EggtotalLootCount856id161513type15.0rarity1source1methoddropped-by,contained-in-objectlevel1id11110spellid13548
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:addTradeFlags(RecipeDB, 13548, 5)
	self:addTradeAcquire(RecipeDB, 13548, 3, 161513)

	-- Pet Bombling - 
	-- type7.3rarity1source4method_crafted15628methodcraftedlevel41id11825spellid15048
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)
	-- No filter flags
	-- No acquire information

	-- Lil' Smoky - 
	-- type7.3rarity1source4method_crafted15633methodcraftedlevel41id11826spellid15049
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)
	-- No filter flags
	-- No acquire information

	-- Sprite Darter Egg - 
	-- type15.0rarity1source3method_queststype0givenitems114741category1357coin360xp625side2level48nameBecoming a Parentid4298methodrewardfromlevel47id11474spellid15067
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:addTradeFlags(RecipeDB, 15067, 1,8)
	self:addTradeAcquire(RecipeDB, 15067, 4, 4298)

	-- Worg Carrier - 
	-- type15.0rarity1source3method_queststype81givenitems122641category31583coin9000xp13950side1level59nameKibler's Exotic Petsid4729methodrewardfromlevel59id12264spellid15999
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:addTradeFlags(RecipeDB, 15999, 1,2,8)
	self:addTradeAcquire(RecipeDB, 15999, 4, 4729)

	-- Smolderweb Carrier - 
	-- type15.0rarity1source3method_queststype81givenitems125291category31583coin9000xp13950side1level59nameEn-Ay-Es-Tee-Whyid4862methodrewardfromlevel59id12529spellid16450
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:addTradeFlags(RecipeDB, 16450, 1,2,8)
	self:addTradeAcquire(RecipeDB, 16450, 4, 4862)

	-- Bloodsail Admiral's Hat - 
	-- type4.1rarity2source3method_queststype0givenitems121851category033coin8700side1level60nameAvast Ye, Admiral!id4621methodrewardfromlevel60armor63id12185spellid17567
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:addTradeFlags(RecipeDB, 17567, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17567, 4, 4621)

	-- Panda Collar - 
	-- type15.0rarity3source3method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0side4level1nameWelcome!id8547type0category13526choiceitems135841135831135821coin0side2level1nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781methodrewardfromlevel20id13583spellid17707
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:addTradeFlags(RecipeDB, 17707, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17707, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Diablo Stone - 
	-- type15.0rarity3source3method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0side4level1nameWelcome!id8547type0category13526choiceitems135841135831135821coin0side2level1nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781methodrewardfromlevel20id13584spellid17708
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:addTradeFlags(RecipeDB, 17708, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17708, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Zergling Leash - 
	-- type15.0rarity3source3method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0side4level1nameWelcome!id8547type0category13526choiceitems135841135831135821coin0side2level1nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781methodrewardfromlevel20id13582spellid17709
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:addTradeFlags(RecipeDB, 17709, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17709, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Lifelike Mechanical Toad - 
	-- type15.2rarity1source4method_crafted19793methodcraftedlevel53id15996spellid19772
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)
	-- No filter flags
	-- No acquire information

	-- Orcish Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionlevel10id18597spellid23012
	-- Redemption
	self:AddCompanion(PetDB, 23012, 18597, 1)
	-- No filter flags
	-- No acquire information

	-- Human Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionlevel10id18598spellid23013
	-- Redemption
	self:AddCompanion(PetDB, 23013, 18598, 1)
	-- No filter flags
	-- No acquire information

	-- A Jubling's Tiny Home - 
	-- type15.2rarity1method_redemptionUnknownmethodredemptionlevel35id19450spellid23811
	-- Redemption
	self:AddCompanion(PetDB, 23811, 19450, 1)
	-- No filter flags
	-- No acquire information

	-- Blue Murloc Egg - 
	-- type15.0rarity3methodlevel20id20371spellid24696
	self:AddCompanion(PetDB, 24696, 20371, 3)
	-- No filter flags
	-- No acquire information

	-- Lurky's Egg - 
	-- type15.0rarity3methodlevel1id30360spellid24988
	self:AddCompanion(PetDB, 24988, 30360, 3)
	-- No filter flags
	-- No acquire information

	-- Disgusting Oozeling - 
	-- method_dropstype15.0rarity1source1lootCount17level50nameOozing BagtotalLootCount951id20768type15.2rarity1methodcontained-in-itemlevel55id20769spellid25162
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)
	-- No filter flags
	-- No acquire information

	-- Baby Shark - 
	-- type15.2rarity1methodlevel20id21168spellid25849
	self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 
	-- type15.2rarity1source4method_crafted26011methodcraftedlevel60id21277spellid26010
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)
	-- No filter flags
	-- No acquire information

	-- Snowman Kit - 
	-- method_dropstype15.0rlevel1rarity1lootCount4level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemlevel1id21309spellid26469
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)
	self:addTradeFlags(RecipeDB, 26469, 5)
	self:addTradeAcquire(RecipeDB, 26469, 3, 21310)

	-- Jingling Bell - 
	-- method_dropstype15.0rlevel1rarity1lootCount6level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemlevel1id21308spellid26528
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)
	self:addTradeFlags(RecipeDB, 26528, 5)
	self:addTradeAcquire(RecipeDB, 26528, 3, 21310)

	-- Green Helper Box - 
	-- method_dropstype15.0rlevel1rarity1lootCount6level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemlevel1id21301spellid26532
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)
	self:addTradeFlags(RecipeDB, 26532, 5)
	self:addTradeAcquire(RecipeDB, 26532, 3, 21310)

	-- Red Helper Box - 
	-- method_dropstype15.0rlevel1rarity1lootCount15level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemlevel1id21305spellid26541
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:addTradeFlags(RecipeDB, 26541, 5)
	self:addTradeAcquire(RecipeDB, 26541, 3, 21310)

	-- Pink Murloc Egg - 
	-- type15.0rarity3methodlevel20id22114spellid27241
	self:AddCompanion(PetDB, 27241, 22114, 3)
	-- No filter flags
	-- No acquire information

	-- Truesilver Shafted Arrow - 
	-- method_dropstype15.3rarity1lootCount1level1nameGift of Adoration: StormwindtotalLootCount18id21981type15.3rarity1lootCount1level1namePledge of Adoration: IronforgetotalLootCount12id22154type15.0rarity1methodcontained-in-itemlevel1id22235spellid27570
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)
	-- No filter flags
	-- No acquire information

	-- Polar Bear Collar - 
	-- type15.0rarity1methodlevel1id22781spellid28505
	self:AddCompanion(PetDB, 28505, 22781, 1)
	-- No filter flags
	-- No acquire information

	-- Turtle Box - 
	-- type15.0rarity1source3method_queststype0category-3284choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502methodrewardfromlevel1id23002spellid28738
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:addTradeFlags(RecipeDB, 28738, 1,2,8)
	self:addTradeAcquire(RecipeDB, 28738, 4, 171, 4, 5502)

	-- Piglet's Collar - 
	-- type15.0rarity1source3method_queststype0category-3284choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502methodrewardfromlevel1id23007spellid28739
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:addTradeFlags(RecipeDB, 28739, 1,2,8)
	self:addTradeAcquire(RecipeDB, 28739, 4, 171, 4, 5502)

	-- Rat Cage - 
	-- type15.0rarity1source3method_queststype0category-3284choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502methodrewardfromlevel1id23015spellid28740
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:addTradeFlags(RecipeDB, 28740, 1,2,8)
	self:addTradeAcquire(RecipeDB, 28740, 4, 171, 4, 5502)

	-- Hippogryph Hatchling - 
	-- type15.0rarity4methodlevel1id23713spellid30156
	self:AddCompanion(PetDB, 30156, 23713, 4)
	-- No filter flags
	-- No acquire information

	-- Netherwhelp's Collar - 
	-- type15.0rarity3source3method_redemptionUnknownmethodredemptionlevel20id25535spellid32298
	-- Redemption
	self:AddCompanion(PetDB, 32298, 25535, 3)
	-- No filter flags
	-- No acquire information

	-- Magical Crawdad Box - 
	-- type15.0rarity1method_redemptionUnknownmethodredemptionlevel70id27445spellid33050
	-- Redemption
	self:AddCompanion(PetDB, 33050, 27445, 1)
	-- No filter flags
	-- No acquire information

	-- Mana Wyrmling - 
	-- type15.2rarity1source2methodsold-bylevel70method_vendorstype7price40000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11id29363spellid35156
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:addTradeFlags(RecipeDB, 35156, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35156, 2, 20980)

	-- Brown Rabbit Crate - 
	-- type15.2rarity1source2methodsold-bylevel70method_vendorstype7price10000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11id29364spellid35239
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:addTradeFlags(RecipeDB, 35239, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35239, 2, 20980)

	-- Blue Moth Egg - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price500000locs3557descMoth Keeperminlevel30nameSixxid21019react13id29901spellid35907
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:addTradeFlags(RecipeDB, 35907, 1,4)
	self:addTradeAcquire(RecipeDB, 35907, 2, 21019)

	-- Red Moth Egg - 
	-- type15.2rarity1source2methodsold-bylevel70method_vendorstype7price10000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11id29902spellid35909
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:addTradeFlags(RecipeDB, 35909, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35909, 2, 20980)

	-- Yellow Moth Egg - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price500000locs3557descMoth Keeperminlevel30nameSixxid21019react13id29903spellid35910
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:addTradeFlags(RecipeDB, 35910, 1,4)
	self:addTradeAcquire(RecipeDB, 35910, 2, 21019)

	-- White Moth Egg - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price500000locs3557descMoth Keeperminlevel30nameSixxid21019react13id29904spellid35911
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:addTradeFlags(RecipeDB, 35911, 1,4)
	self:addTradeAcquire(RecipeDB, 35911, 2, 21019)

	-- Golden Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price500000locs3430minlevel9nameJilanneid16860react31id29953spellid36027
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:addTradeFlags(RecipeDB, 36027, 2,4)
	self:addTradeAcquire(RecipeDB, 36027, 2, 16860)

	-- Red Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price500000locs3430minlevel9nameJilanneid16860react31id29956spellid36028
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:addTradeFlags(RecipeDB, 36028, 2,4)
	self:addTradeAcquire(RecipeDB, 36028, 2, 16860)

	-- Silver Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-bylevel20method_vendorstype7price500000locs3430minlevel9nameJilanneid16860react31id29957spellid36029
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:addTradeFlags(RecipeDB, 36029, 2,4)
	self:addTradeAcquire(RecipeDB, 36029, 2, 16860)

	-- Blue Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-bylevel70method_vendorstype7price10000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadid20980react11id29958spellid36031
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:addTradeFlags(RecipeDB, 36031, 1,2,4)
	self:addTradeAcquire(RecipeDB, 36031, 2, 20980)

	-- Captured Firefly - 
	-- method_dropstype10locs3521disp18723minlevel62lootCount77nameBogflare NeedlertotalLootCount151282id20197react33type15.2rarity1source1methoddropped-bylevel20id29960spellid36034
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:addTradeFlags(RecipeDB, 36034, 5)
	self:addTradeAcquire(RecipeDB, 36034, 3, 20197)

	-- Miniwing - 
	-- type15.0rarity1source3method_queststype1givenitems317601category23519choiceitems317661317651317641coin66000xp13750side1level65nameSkywingid10898methodrewardfromlevel96id31760spellid39181
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:addTradeFlags(RecipeDB, 39181, 1,2,8)
	self:addTradeAcquire(RecipeDB, 39181, 4, 10898)

	-- Blood Elf Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionlevel1id31880spellid39478
	-- Redemption
	self:AddCompanion(PetDB, 39478, 31880, 1)
	-- No filter flags
	-- No acquire information

	-- Draenei Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionlevel1id31881spellid39479
	-- Redemption
	self:AddCompanion(PetDB, 39479, 31881, 1)
	-- No filter flags
	-- No acquire information

	-- Wolpertinger's Tankard - 
	-- type15.0rarity3source3method_queststype0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11117type0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11431methodrewardfromlevel20id32233spellid39709
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:addTradeFlags(RecipeDB, 39709, 8)
	self:addTradeAcquire(RecipeDB, 39709, 4, 11117, 4, 11431)

	-- Fortune Coin - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionlevel1id32498spellid40405
	-- Redemption
	self:AddCompanion(PetDB, 40405, 32498, 3)
	-- No filter flags
	-- No acquire information

	-- Banana Charm - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionlevel1id32588spellid40549
	-- Redemption
	self:AddCompanion(PetDB, 40549, 32588, 3)
	-- No filter flags
	-- No acquire information

	-- Sleepy Willy - 
	-- type15.0rarity3source3method_queststype0category-3284choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967methodrewardfromlevel20id32617spellid40613
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:addTradeFlags(RecipeDB, 40613, 1,2,8)
	self:addTradeAcquire(RecipeDB, 40613, 4, 10966, 4, 10967)

	-- Egbert's Egg - 
	-- type15.0rarity3source3method_queststype0category-3284choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967methodrewardfromlevel20id32616spellid40614
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:addTradeFlags(RecipeDB, 40614, 1,2,8)
	self:addTradeAcquire(RecipeDB, 40614, 4, 10966, 4, 10967)

	-- Elekk Training Collar - 
	-- type15.0rarity3source3method_queststype0category-3284choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967methodrewardfromlevel20id32622spellid40634
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:addTradeFlags(RecipeDB, 40634, 1,2,8)
	self:addTradeAcquire(RecipeDB, 40634, 4, 10966, 4, 10967)

	-- Reeking Pet Carrier - 
	-- type15.2rarity3methodlevel1id40653spellid40990
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 
	-- type15.0rarity3methodlevel20id33154spellid42609
	self:AddCompanion(PetDB, 42609, 33154, 3)
	-- No filter flags
	-- No acquire information

	-- Toothy's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount45level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemlevel20id33816spellid43697
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)
	-- No filter flags
	-- No acquire information

	-- Muckbreath's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount49level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemlevel20id33818spellid43698
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)
	-- No filter flags
	-- No acquire information

	-- Mojo - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionlevel20id33993spellid43918
	-- Redemption
	self:AddCompanion(PetDB, 43918, 33993, 3)
	-- No filter flags
	-- No acquire information

	-- Clockwork Rocket Bot - 
	-- method_dropstype15.0rlevel1rarity1lootCount33level1nameWinter Veil GifttotalLootCount33id34426type15.3rarity3source1methoddropped-by,contained-in-itemlevel1id34425spellid45048
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)
	self:addTradeFlags(RecipeDB, 45048, 5)
	self:addTradeAcquire(RecipeDB, 45048, 3, 34426)

	-- Tiny Sporebat - 
	-- type15.2rarity3source2methodsold-bylevel70method_vendorstype7price000242453000000000locs3521descSporeggar Quartermasterdisp17626minlevel64nameMycahid18382react11id34478spellid45082
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:addTradeFlags(RecipeDB, 45082, 1,2,4)
	self:addTradeAcquire(RecipeDB, 45082, 2, 18382)

	-- Rocket Chicken - 
	-- type15.2rarity3method_redemptionUnknownmethodredemptionlevel1id34492spellid45125
	-- Redemption
	self:AddCompanion(PetDB, 45125, 34492, 3)
	-- No filter flags
	-- No acquire information

	-- Dragon Kite - 
	-- type15.2rarity4method_redemptionUnknownmethodredemptionlevel1id34493spellid45127
	-- Redemption
	self:AddCompanion(PetDB, 45127, 34493, 4)
	-- No filter flags
	-- No acquire information

	-- Scorched Stone - 
	-- type15.0rarity3methodlevel20id34955spellid45890
	self:AddCompanion(PetDB, 45890, 34955, 3)
	-- No filter flags
	-- No acquire information

	-- Snarly's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount33level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemlevel20id35349spellid46425
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)
	-- No filter flags
	-- No acquire information

	-- Chuck's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount59level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemlevel20id35350spellid46426
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)
	-- No filter flags
	-- No acquire information

	-- Phoenix Hatchling - 
	-- method_dropstype7classification3locs409537033845descLord of the Blood Elvesdisp20023minlevel72lootCount153nameKael'thas SunstridertotalLootCount9689id23054react33type7classification1locs4095descLord of the Blood Elvesdisp22906minlevel72lootCount89nameKael'thas SunstridertotalLootCount6321id24664react33type15.2rarity3source1methoddropped-bylevel70id35504spellid46599
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:addTradeFlags(RecipeDB, 46599, 5,6)
	self:addTradeAcquire(RecipeDB, 46599, 3, 23054, 3, 24664)

	-- Soul-Trader Beacon - 
	-- type15.2rarity3method_redemptionUnknownmethodredemptionlevel20id38050spellid49964
	-- Redemption
	self:AddCompanion(PetDB, 49964, 38050, 3)
	-- No filter flags
	-- No acquire information

	-- Nether Ray Fry - 
	-- type15.2rarity3source2methodsold-bylevel70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellaid23367react11id38628spellid51716
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:addTradeFlags(RecipeDB, 51716, 1,2,4)
	self:addTradeAcquire(RecipeDB, 51716, 2, 23367)

	-- Tyrael's Hilt - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionlevel20id39656spellid53082
	-- Redemption
	self:AddCompanion(PetDB, 53082, 39656, 3)
	-- No filter flags
	-- No acquire information

end
