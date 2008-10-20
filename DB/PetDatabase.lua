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
	-- type15.2rarity1source4method_crafted3928methodcraftedspellid4055level15id4401
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)
	-- No filter flags
	-- No acquire information

	-- Cat Carrier (Bombay) - 
	-- type15.2rarity1source2methodsold-byspellid10673level20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367id8485
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:addTradeFlags(RecipeDB, 10673, 1,4)
	self:addTradeAcquire(RecipeDB, 10673, 2, 6367)

	-- Cat Carrier (Cornish Rex) - 
	-- type15.2rarity1source2methodsold-byspellid10674level20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367id8486
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:addTradeFlags(RecipeDB, 10674, 1,4)
	self:addTradeAcquire(RecipeDB, 10674, 2, 6367)

	-- Cat Carrier (Black Tabby) - 
	-- method_dropstype7locs36267minlevel31lootCount40maxlevel32nameDalaran Shield Guardreact13totalLootCount24111id2271type7classification4locs130minlevel21lootCount33nameDalaran Spellscribereact13totalLootCount306id1920type7locs36minlevel34lootCount14maxlevel35nameDalaran Summonerreact13totalLootCount13900id2358type7locs36267minlevel32lootCount22maxlevel33nameDalaran Theurgistreact13totalLootCount10307id2272type15.2rarity1source1methoddropped-byspellid10675level20id8491
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:addTradeFlags(RecipeDB, 10675, 5)
	self:addTradeAcquire(RecipeDB, 10675, 3, 1920, 3, 2271, 3, 2272, 3, 2358)

	-- Cat Carrier (Orange Tabby) - 
	-- type15.2rarity1source2methodsold-byspellid10676level20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367id8487
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:addTradeFlags(RecipeDB, 10676, 1,4)
	self:addTradeAcquire(RecipeDB, 10676, 2, 6367)

	-- Cat Carrier (Siamese) - 
	-- method_dropstype7classification1locs1581descThe Ship's Cookdisp1305minlevel20lootCount1590nameCookiereact33totalLootCount28314id645type15.2rarity1source12methoddropped-by,sold-byspellid10677level20method_vendorstype7price600000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980id8490
	-- Instance: 1581 - type1category3minlevel15maxlevel20nameThe Deadminesid1581territory2
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:addTradeFlags(RecipeDB, 10677, 1,2,4,5)
	self:addTradeAcquire(RecipeDB, 10677, 3, 645, 2, 20980)

	-- Cat Carrier (Silver Tabby) - 
	-- type15.2rarity1source2methodsold-byspellid10678level20method_vendorstype7price400000locs12descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367id8488
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:addTradeFlags(RecipeDB, 10678, 1,4)
	self:addTradeAcquire(RecipeDB, 10678, 2, 6367)

	-- Cat Carrier (White Kitten) - 
	-- type15.2rarity1source2methodsold-byspellid10679level20method_vendorstype7price600000locs1519descBoy with kittensdisp7935minlevel5nameLil Timmyreact13id8666id8489
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:addTradeFlags(RecipeDB, 10679, 1,4)
	self:addTradeAcquire(RecipeDB, 10679, 2, 8666)

	-- Parrot Cage (Cockatiel) - 
	-- type15.2rarity1source2methodsold-byspellid10680level20method_vendorstype7price400000locs33descPirate Suppliesminlevel42nameNarkkreact13id2663id8496
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:addTradeFlags(RecipeDB, 10680, 1,4)
	self:addTradeAcquire(RecipeDB, 10680, 2, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 
	-- method_dropstype7locs33minlevel39lootCount1name\"Pretty Boy\" Duncanreact33totalLootCount5699id2545type7locs33minlevel42lootCount4nameBloodsail Deckhandreact33totalLootCount10436id4505type7locs33minlevel39lootCount6maxlevel41nameBloodsail Magereact33totalLootCount35020id1562type7locs33disp793minlevel39lootCount9maxlevel41nameBloodsail Raiderreact33totalLootCount35811id1561type7locs33disp796minlevel41lootCount4maxlevel42nameBloodsail Sea Dogreact33totalLootCount10895id1565type7locs33disp1902minlevel40lootCount1nameBloodsail Swabbyreact33totalLootCount16140id4506type7locs33disp796minlevel40lootCount5maxlevel41nameBloodsail Swashbucklerreact33totalLootCount66557id1563type7locs33minlevel40lootCount4maxlevel41nameBloodsail Warlockreact33totalLootCount64146id1564type15.2rarity1source13methoddropped-byspellid10682level20id8494
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:addTradeFlags(RecipeDB, 10682, 5)
	self:addTradeAcquire(RecipeDB, 10682, 3, 1561, 3, 1562, 3, 1563, 3, 1564, 3, 1565, 3, 2545, 3, 4505, 3, 4506)

	-- Parrot Cage (Green Wing Macaw) - 
	-- method_dropstype7classification1locs1581minlevel19lootCount3042maxlevel20nameDefias Piratereact33totalLootCount104503id657type15.2rarity1source1methoddropped-byspellid10683level20id8492
	-- Instance: 1581 - type1category3minlevel15maxlevel20nameThe Deadminesid1581territory2
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:addTradeFlags(RecipeDB, 10683, 5)
	self:addTradeAcquire(RecipeDB, 10683, 3, 657)

	-- Parrot Cage (Senegal) - 
	-- type15.2rarity1source2methodsold-byspellid10684level20method_vendorstype7price400000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980type7price400000locs33descPirate Suppliesminlevel42nameNarkkreact13id2663id8495
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:addTradeFlags(RecipeDB, 10684, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10684, 2, 2663, 2, 20980)

	-- Ancona Chicken - 
	-- type15.2rarity1source2methodsold-byspellid10685level35method_vendorstype7price1000000locs400minlevel51nameMagus Tirthreact11id6548id11023
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:addTradeFlags(RecipeDB, 10685, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10685, 2, 6548)

	-- Cockroach - 
	-- type15.2rarity1source2methodsold-byspellid10688level30method_vendorstype7price500000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980type7price500000locs1497descCockroach Vendorminlevel30nameJeremiah Paysonreact31id8403id10393
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:addTradeFlags(RecipeDB, 10688, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10688, 2, 8403, 2, 20980)

	-- Dark Whelpling - 
	-- method_dropstype2locs3disp715minlevel41lootCount78maxlevel43nameScalding Whelpreact33totalLootCount71023id2725type2locs152159disp397minlevel39lootCount32maxlevel40nameSearing Whelpreact33totalLootCount34544id4324type15.2rarity1source1methoddropped-byspellid10695level30id10822
	-- Raid: 2159 - Onyxia's Lair
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:addTradeFlags(RecipeDB, 10695, 5,6)
	self:addTradeAcquire(RecipeDB, 10695, 3, 2725, 3, 4324)

	-- Azure Whelpling - 
	-- method_dropstype2classification1locs16disp196minlevel50lootCount2maxlevel51nameBlue Dragonspawnreact33totalLootCount3824id193type2classification1locs16disp6760minlevel52lootCount3maxlevel53nameBlue Scalebanereact33totalLootCount1451id6130type2classification1locs16disp6761minlevel51lootCount8maxlevel52nameDraconic Mageweaverreact33totalLootCount5095id6131type15.2rarity1source1methoddropped-byspellid10696level30id34535
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:addTradeFlags(RecipeDB, 10696, 5)
	self:addTradeAcquire(RecipeDB, 10696, 3, 193, 3, 6130, 3, 6131)

	-- Tiny Crimson Whelpling - 
	-- method_dropstype2locs11disp505minlevel25lootCount13maxlevel26nameCrimson Whelpreact33totalLootCount4347id1069type2locs11disp8712minlevel26lootCount7maxlevel27nameFlamesnorting Whelpreact33totalLootCount1398id1044type2locs11disp9583minlevel23lootCount11maxlevel24nameRed Whelpreact33totalLootCount3731id1042type15.2rarity1source1methoddropped-byspellid10697level30id8499
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:addTradeFlags(RecipeDB, 10697, 5)
	self:addTradeAcquire(RecipeDB, 10697, 3, 1042, 3, 1044, 3, 1069)

	-- Tiny Emerald Whelpling - 
	-- method_dropstype2locs8disp621minlevel35lootCount38maxlevel36nameDreaming Whelpreact33totalLootCount16719id741type15.2rarity1source1methoddropped-byspellid10698level30id8498
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:addTradeFlags(RecipeDB, 10698, 5)
	self:addTradeAcquire(RecipeDB, 10698, 3, 741)

	-- Wood Frog Box - 
	-- type15.2rarity1source2methodsold-byspellid10703level35method_vendorstype7price1000000locs122153519disp14589minlevel4maxlevel70nameFlikreact21id14860id11027
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:addTradeFlags(RecipeDB, 10703, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10703, 2, 14860)

	-- Tree Frog Box - 
	-- type15.2rarity1source2methodsold-byspellid10704level35method_vendorstype7price1000000locs122153519disp14589minlevel4maxlevel70nameFlikreact21id14860id11026
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:addTradeFlags(RecipeDB, 10704, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10704, 2, 14860)

	-- Hawk Owl - 
	-- type15.2rarity1source2methodsold-byspellid10706level30method_vendorstype7price500000locs1657descOwl Trainerminlevel30nameShylenaireact13id8665id8501
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:addTradeFlags(RecipeDB, 10706, 1,4)
	self:addTradeAcquire(RecipeDB, 10706, 2, 8665)

	-- Great Horned Owl - 
	-- type15.2rarity1source2methodsold-byspellid10707level30method_vendorstype7price500000locs1657descOwl Trainerminlevel30nameShylenaireact13id8665id8500
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:addTradeFlags(RecipeDB, 10707, 1,4)
	self:addTradeAcquire(RecipeDB, 10707, 2, 8665)

	-- Prairie Dog Whistle - 
	-- type15.2rarity1source2methodsold-byspellid10709level30method_vendorstype7price500000locs1638descPrairie Dog Vendorminlevel30nameHalpareact31id8401id10394
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:addTradeFlags(RecipeDB, 10709, 2,4)
	self:addTradeAcquire(RecipeDB, 10709, 2, 8401)

	-- Rabbit Crate (Snowshoe) - 
	-- type15.2rarity1source23methodsold-byspellid10711level20method_vendorstype7price200000locs1minlevel1nameYarlyn Amberstillreact13id1263id8497
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:addTradeFlags(RecipeDB, 10711, 1,4)
	self:addTradeAcquire(RecipeDB, 10711, 2, 1263)

	-- Black Kingsnake - 
	-- type15.2rarity1source2methodsold-byspellid10714level30method_vendorstype7price500000locs1637descSnake Vendorminlevel30nameXan'tishreact31id8404id10360
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:addTradeFlags(RecipeDB, 10714, 2,4)
	self:addTradeAcquire(RecipeDB, 10714, 2, 8404)

	-- Brown Snake - 
	-- type15.2rarity1source2methodsold-byspellid10716level30method_vendorstype7price500000locs1637descSnake Vendorminlevel30nameXan'tishreact31id8404id10361
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:addTradeFlags(RecipeDB, 10716, 2,4)
	self:addTradeAcquire(RecipeDB, 10716, 2, 8404)

	-- Crimson Snake - 
	-- type15.2rarity1source2methodsold-byspellid10717level30method_vendorstype7price500000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980type7price500000locs1637descSnake Vendorminlevel30nameXan'tishreact31id8404id10392
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:addTradeFlags(RecipeDB, 10717, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10717, 2, 8404, 2, 20980)

	-- Mechanical Chicken - 
	-- type15.2rarity1source3method_queststype0givenitems103981category035coin6000xp7100side1level50nameAn OOX of Your Ownid3721methodrewardfromspellid12243level40id10398
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:addTradeFlags(RecipeDB, 12243, 1,2,8)
	self:addTradeAcquire(RecipeDB, 12243, 4, 3721)

	-- Chicken Egg - 
	-- method_dropstype3locs40lootCount842nameFarm Chicken EggtotalLootCount856id161513type15.0rarity1source1methoddropped-by,contained-in-objectspellid13548level1id11110
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:addTradeFlags(RecipeDB, 13548, 5)
	self:addTradeAcquire(RecipeDB, 13548, 3, 161513)

	-- Pet Bombling - 
	-- type7.3rarity1source4method_crafted15628methodcraftedspellid15048level41id11825
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)
	-- No filter flags
	-- No acquire information

	-- Lil' Smoky - 
	-- type7.3rarity1source4method_crafted15633methodcraftedspellid15049level41id11826
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)
	-- No filter flags
	-- No acquire information

	-- Sprite Darter Egg - 
	-- type15.0rarity1source3method_queststype0givenitems114741category1357coin360xp625side2level48nameBecoming a Parentid4298methodrewardfromspellid15067level47id11474
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:addTradeFlags(RecipeDB, 15067, 1,8)
	self:addTradeAcquire(RecipeDB, 15067, 4, 4298)

	-- Worg Carrier - 
	-- type15.0rarity1source3method_queststype81givenitems122641category31583coin9000xp13950side1level59nameKibler's Exotic Petsid4729methodrewardfromspellid15999level59id12264
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:addTradeFlags(RecipeDB, 15999, 1,2,8)
	self:addTradeAcquire(RecipeDB, 15999, 4, 4729)

	-- Smolderweb Carrier - 
	-- type15.0rarity1source3method_queststype81givenitems125291category31583coin9000xp13950side1level59nameEn-Ay-Es-Tee-Whyid4862methodrewardfromspellid16450level59id12529
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:addTradeFlags(RecipeDB, 16450, 1,2,8)
	self:addTradeAcquire(RecipeDB, 16450, 4, 4862)

	-- Bloodsail Admiral's Hat - 
	-- type4.1rarity2source3method_queststype0givenitems121851category033coin8700side1level60nameAvast Ye, Admiral!id4621methodrewardfromspellid17567level60armor63id12185
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:addTradeFlags(RecipeDB, 17567, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17567, 4, 4621)

	-- Panda Collar - 
	-- type15.0rarity3source3method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0side4level1nameWelcome!id8547type0category13526choiceitems135841135831135821coin0side2level1nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781methodrewardfromspellid17707level20id13583
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:addTradeFlags(RecipeDB, 17707, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17707, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Diablo Stone - 
	-- type15.0rarity3source3method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0side4level1nameWelcome!id8547type0category13526choiceitems135841135831135821coin0side2level1nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781methodrewardfromspellid17708level20id13584
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:addTradeFlags(RecipeDB, 17708, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17708, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Zergling Leash - 
	-- type15.0rarity3source3method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0side4level1nameWelcome!id8547type0category13526choiceitems135841135831135821coin0side2level1nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781methodrewardfromspellid17709level20id13582
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:addTradeFlags(RecipeDB, 17709, 1,2,8)
	self:addTradeAcquire(RecipeDB, 17709, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Lifelike Mechanical Toad - 
	-- type15.2rarity1source4method_crafted19793methodcraftedspellid19772level53id15996
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)
	-- No filter flags
	-- No acquire information

	-- Orcish Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid23012level10id18597
	-- Redemption
	self:AddCompanion(PetDB, 23012, 18597, 1)
	-- No filter flags
	-- No acquire information

	-- Human Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid23013level10id18598
	-- Redemption
	self:AddCompanion(PetDB, 23013, 18598, 1)
	-- No filter flags
	-- No acquire information

	-- A Jubling's Tiny Home - 
	-- type15.2rarity1method_redemptionUnknownmethodredemptionspellid23811level35id19450
	-- Redemption
	self:AddCompanion(PetDB, 23811, 19450, 1)
	-- No filter flags
	-- No acquire information

	-- Blue Murloc Egg - 
	-- type15.0rarity3methodspellid24696level20id20371
	self:AddCompanion(PetDB, 24696, 20371, 3)
	-- No filter flags
	-- No acquire information

	-- Lurky's Egg - 
	-- type15.0rarity3methodspellid24988level1id30360
	self:AddCompanion(PetDB, 24988, 30360, 3)
	-- No filter flags
	-- No acquire information

	-- Disgusting Oozeling - 
	-- method_dropstype15.0rarity1source1lootCount17level50nameOozing BagtotalLootCount951id20768type15.2rarity1methodcontained-in-itemspellid25162level55id20769
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)
	-- No filter flags
	-- No acquire information

	-- Baby Shark - 
	-- type15.2rarity1methodspellid25849level20id21168
	self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 
	-- type15.2rarity1source4method_crafted26011methodcraftedspellid26010level60id21277
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)
	-- No filter flags
	-- No acquire information

	-- Snowman Kit - 
	-- method_dropstype15.0rlevel1rarity1lootCount4level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemspellid26469level1id21309
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)
	self:addTradeFlags(RecipeDB, 26469, 5)
	self:addTradeAcquire(RecipeDB, 26469, 3, 21310)

	-- Jingling Bell - 
	-- method_dropstype15.0rlevel1rarity1lootCount6level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemspellid26528level1id21308
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)
	self:addTradeFlags(RecipeDB, 26528, 5)
	self:addTradeAcquire(RecipeDB, 26528, 3, 21310)

	-- Green Helper Box - 
	-- method_dropstype15.0rlevel1rarity1lootCount6level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemspellid26532level1id21301
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)
	self:addTradeFlags(RecipeDB, 26532, 5)
	self:addTradeAcquire(RecipeDB, 26532, 3, 21310)

	-- Red Helper Box - 
	-- method_dropstype15.0rlevel1rarity1lootCount15level1nameGaily Wrapped PresenttotalLootCount31id21310type15.3rarity1source1methoddropped-by,contained-in-itemspellid26541level1id21305
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:addTradeFlags(RecipeDB, 26541, 5)
	self:addTradeAcquire(RecipeDB, 26541, 3, 21310)

	-- Pink Murloc Egg - 
	-- type15.0rarity3methodspellid27241level20id22114
	self:AddCompanion(PetDB, 27241, 22114, 3)
	-- No filter flags
	-- No acquire information

	-- Truesilver Shafted Arrow - 
	-- method_dropstype15.3rarity1lootCount1level1nameGift of Adoration: StormwindtotalLootCount18id21981type15.3rarity1lootCount1level1namePledge of Adoration: IronforgetotalLootCount12id22154type15.0rarity1methodcontained-in-itemspellid27570level1id22235
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)
	-- No filter flags
	-- No acquire information

	-- Polar Bear Collar - 
	-- type15.0rarity1methodspellid28505level1id22781
	self:AddCompanion(PetDB, 28505, 22781, 1)
	-- No filter flags
	-- No acquire information

	-- Turtle Box - 
	-- type15.0rarity1source3method_queststype0category-3284choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502methodrewardfromspellid28738level1id23002
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:addTradeFlags(RecipeDB, 28738, 1,2,8)
	self:addTradeAcquire(RecipeDB, 28738, 4, 171, 4, 5502)

	-- Piglet's Collar - 
	-- type15.0rarity1source3method_queststype0category-3284choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502methodrewardfromspellid28739level1id23007
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:addTradeFlags(RecipeDB, 28739, 1,2,8)
	self:addTradeAcquire(RecipeDB, 28739, 4, 171, 4, 5502)

	-- Rat Cage - 
	-- type15.0rarity1source3method_queststype0category-3284choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502methodrewardfromspellid28740level1id23015
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:addTradeFlags(RecipeDB, 28740, 1,2,8)
	self:addTradeAcquire(RecipeDB, 28740, 4, 171, 4, 5502)

	-- Hippogryph Hatchling - 
	-- type15.0rarity4methodspellid30156level1id23713
	self:AddCompanion(PetDB, 30156, 23713, 4)
	-- No filter flags
	-- No acquire information

	-- Netherwhelp's Collar - 
	-- type15.0rarity3source3method_redemptionUnknownmethodredemptionspellid32298level20id25535
	-- Redemption
	self:AddCompanion(PetDB, 32298, 25535, 3)
	-- No filter flags
	-- No acquire information

	-- Magical Crawdad Box - 
	-- type15.0rarity1method_redemptionUnknownmethodredemptionspellid33050level70id27445
	-- Redemption
	self:AddCompanion(PetDB, 33050, 27445, 1)
	-- No filter flags
	-- No acquire information

	-- Mana Wyrmling - 
	-- type15.2rarity1source2methodsold-byspellid35156level70method_vendorstype7price40000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980id29363
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:addTradeFlags(RecipeDB, 35156, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35156, 2, 20980)

	-- Brown Rabbit Crate - 
	-- type15.2rarity1source2methodsold-byspellid35239level70method_vendorstype7price10000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980id29364
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:addTradeFlags(RecipeDB, 35239, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35239, 2, 20980)

	-- Blue Moth Egg - 
	-- type15.2rarity1source2methodsold-byspellid35907level20method_vendorstype7price500000locs3557descMoth Keeperminlevel30nameSixxreact13id21019id29901
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:addTradeFlags(RecipeDB, 35907, 1,4)
	self:addTradeAcquire(RecipeDB, 35907, 2, 21019)

	-- Red Moth Egg - 
	-- type15.2rarity1source2methodsold-byspellid35909level70method_vendorstype7price10000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980id29902
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:addTradeFlags(RecipeDB, 35909, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35909, 2, 20980)

	-- Yellow Moth Egg - 
	-- type15.2rarity1source2methodsold-byspellid35910level20method_vendorstype7price500000locs3557descMoth Keeperminlevel30nameSixxreact13id21019id29903
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:addTradeFlags(RecipeDB, 35910, 1,4)
	self:addTradeAcquire(RecipeDB, 35910, 2, 21019)

	-- White Moth Egg - 
	-- type15.2rarity1source2methodsold-byspellid35911level20method_vendorstype7price500000locs3557descMoth Keeperminlevel30nameSixxreact13id21019id29904
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:addTradeFlags(RecipeDB, 35911, 1,4)
	self:addTradeAcquire(RecipeDB, 35911, 2, 21019)

	-- Golden Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-byspellid36027level20method_vendorstype7price500000locs3430minlevel9nameJilannereact31id16860id29953
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:addTradeFlags(RecipeDB, 36027, 2,4)
	self:addTradeAcquire(RecipeDB, 36027, 2, 16860)

	-- Red Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-byspellid36028level20method_vendorstype7price500000locs3430minlevel9nameJilannereact31id16860id29956
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:addTradeFlags(RecipeDB, 36028, 2,4)
	self:addTradeAcquire(RecipeDB, 36028, 2, 16860)

	-- Silver Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-byspellid36029level20method_vendorstype7price500000locs3430minlevel9nameJilannereact31id16860id29957
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:addTradeFlags(RecipeDB, 36029, 2,4)
	self:addTradeAcquire(RecipeDB, 36029, 2, 16860)

	-- Blue Dragonhawk Hatchling - 
	-- type15.2rarity1source2methodsold-byspellid36031level70method_vendorstype7price10000000locs352385descExotic Creaturesdisp20988minlevel60nameDealer Rashaadreact11id20980id29958
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:addTradeFlags(RecipeDB, 36031, 1,2,4)
	self:addTradeAcquire(RecipeDB, 36031, 2, 20980)

	-- Captured Firefly - 
	-- method_dropstype10locs3521disp18723minlevel62lootCount77nameBogflare Needlerreact33totalLootCount151282id20197type15.2rarity1source1methoddropped-byspellid36034level20id29960
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:addTradeFlags(RecipeDB, 36034, 5)
	self:addTradeAcquire(RecipeDB, 36034, 3, 20197)

	-- Miniwing - 
	-- type15.0rarity1source3method_queststype1givenitems317601category23519choiceitems317661317651317641coin66000xp13750side1level65nameSkywingid10898methodrewardfromspellid39181level96id31760
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:addTradeFlags(RecipeDB, 39181, 1,2,8)
	self:addTradeAcquire(RecipeDB, 39181, 4, 10898)

	-- Blood Elf Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid39478level1id31880
	-- Redemption
	self:AddCompanion(PetDB, 39478, 31880, 1)
	-- No filter flags
	-- No acquire information

	-- Draenei Orphan Whistle - 
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid39479level1id31881
	-- Redemption
	self:AddCompanion(PetDB, 39479, 31881, 1)
	-- No filter flags
	-- No acquire information

	-- Wolpertinger's Tankard - 
	-- type15.0rarity3source3method_queststype0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11117type0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11431methodrewardfromspellid39709level20id32233
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:addTradeFlags(RecipeDB, 39709, 8)
	self:addTradeAcquire(RecipeDB, 39709, 4, 11117, 4, 11431)

	-- Fortune Coin - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid40405level1id32498
	-- Redemption
	self:AddCompanion(PetDB, 40405, 32498, 3)
	-- No filter flags
	-- No acquire information

	-- Banana Charm - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid40549level1id32588
	-- Redemption
	self:AddCompanion(PetDB, 40549, 32588, 3)
	-- No filter flags
	-- No acquire information

	-- Sleepy Willy - 
	-- type15.0rarity3source3method_queststype0category-3284choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967methodrewardfromspellid40613level20id32617
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:addTradeFlags(RecipeDB, 40613, 1,2,8)
	self:addTradeAcquire(RecipeDB, 40613, 4, 10966, 4, 10967)

	-- Egbert's Egg - 
	-- type15.0rarity3source3method_queststype0category-3284choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967methodrewardfromspellid40614level20id32616
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:addTradeFlags(RecipeDB, 40614, 1,2,8)
	self:addTradeAcquire(RecipeDB, 40614, 4, 10966, 4, 10967)

	-- Elekk Training Collar - 
	-- type15.0rarity3source3method_queststype0category-3284choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967methodrewardfromspellid40634level20id32622
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:addTradeFlags(RecipeDB, 40634, 1,2,8)
	self:addTradeAcquire(RecipeDB, 40634, 4, 10966, 4, 10967)

	-- Reeking Pet Carrier - 
	-- type15.2rarity3methodspellid40990level1id40653
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 
	-- type15.0rarity3methodspellid42609level20id33154
	self:AddCompanion(PetDB, 42609, 33154, 3)
	-- No filter flags
	-- No acquire information

	-- Toothy's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount45level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemspellid43697level20id33816
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)
	-- No filter flags
	-- No acquire information

	-- Muckbreath's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount49level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemspellid43698level20id33818
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)
	-- No filter flags
	-- No acquire information

	-- Mojo - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid43918level20id33993
	-- Redemption
	self:AddCompanion(PetDB, 43918, 33993, 3)
	-- No filter flags
	-- No acquire information

	-- Clockwork Rocket Bot - 
	-- method_dropstype15.0rlevel1rarity1lootCount33level1nameWinter Veil GifttotalLootCount33id34426type15.3rarity3source1methoddropped-by,contained-in-itemspellid45048level1id34425
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)
	self:addTradeFlags(RecipeDB, 45048, 5)
	self:addTradeAcquire(RecipeDB, 45048, 3, 34426)

	-- Tiny Sporebat - 
	-- type15.2rarity3source2methodsold-byspellid45082level70method_vendorstype7price000242453000000000locs3521descSporeggar Quartermasterdisp17626minlevel64nameMycahreact11id18382id34478
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:addTradeFlags(RecipeDB, 45082, 1,2,4)
	self:addTradeAcquire(RecipeDB, 45082, 2, 18382)

	-- Rocket Chicken - 
	-- type15.2rarity3method_redemptionUnknownmethodredemptionspellid45125level1id34492
	-- Redemption
	self:AddCompanion(PetDB, 45125, 34492, 3)
	-- No filter flags
	-- No acquire information

	-- Dragon Kite - 
	-- type15.2rarity4method_redemptionUnknownmethodredemptionspellid45127level1id34493
	-- Redemption
	self:AddCompanion(PetDB, 45127, 34493, 4)
	-- No filter flags
	-- No acquire information

	-- Scorched Stone - 
	-- type15.0rarity3methodspellid45890level20id34955
	self:AddCompanion(PetDB, 45890, 34955, 3)
	-- No filter flags
	-- No acquire information

	-- Snarly's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount33level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemspellid46425level20id35349
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)
	-- No filter flags
	-- No acquire information

	-- Chuck's Bucket - 
	-- method_dropstype15.0rarity1source3lootCount59level70nameBag of Fishing TreasurestotalLootCount7879id35348type15.2rarity3methodcontained-in-itemspellid46426level20id35350
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)
	-- No filter flags
	-- No acquire information

	-- Phoenix Hatchling - 
	-- method_dropstype7classification3locs409537033845descLord of the Blood Elvesdisp20023minlevel72lootCount153nameKael'thas Sunstriderreact33totalLootCount9689id23054type7classification1locs4095descLord of the Blood Elvesdisp22906minlevel72lootCount89nameKael'thas Sunstriderreact33totalLootCount6321id24664type15.2rarity3source1methoddropped-byspellid46599level70id35504
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:addTradeFlags(RecipeDB, 46599, 5,6)
	self:addTradeAcquire(RecipeDB, 46599, 3, 23054, 3, 24664)

	-- Soul-Trader Beacon - 
	-- type15.2rarity3method_redemptionUnknownmethodredemptionspellid49964level20id38050
	-- Redemption
	self:AddCompanion(PetDB, 49964, 38050, 3)
	-- No filter flags
	-- No acquire information

	-- Nether Ray Fry - 
	-- type15.2rarity3source2methodsold-byspellid51716level70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellareact11id23367id38628
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:addTradeFlags(RecipeDB, 51716, 1,2,4)
	self:addTradeAcquire(RecipeDB, 51716, 2, 23367)

	-- Tyrael's Hilt - 
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid53082level20id39656
	-- Redemption
	self:AddCompanion(PetDB, 53082, 39656, 3)
	-- No filter flags
	-- No acquire information

end
