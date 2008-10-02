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

	-- Mechanical Squirrel Box - 4055
	-- type15.2method_crafted3928source4rarity1level15methodcraftedid4401spell_id4055
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2source2rarity1level20method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367methodsold-byid8485spell_id10673
	-- Instance: 12 - type5category3expansion1minlevel66maxlevel68nameCaverns of Time: Old Hillsbrad Foothillsterritory1id2367
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:addTradeFlags(RecipeDB, 10673, 1,4,5)
	self:addTradeAcquire(RecipeDB, 10673, 2, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2source2rarity1level20method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367methodsold-byid8486spell_id10674
	-- Instance: 12 - type5category3expansion1minlevel66maxlevel68nameCaverns of Time: Old Hillsbrad Foothillsterritory1id2367
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:addTradeFlags(RecipeDB, 10674, 1,4,5)
	self:addTradeAcquire(RecipeDB, 10674, 2, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2source1rarity1level20method_dropstype7locs36267minlevel31maxlevel32lootCount40nameDalaran Shield Guardreact13id2271totalLootCount24111type7locs130classification4minlevel21lootCount33nameDalaran Spellscribereact13id1920totalLootCount306type7locs36minlevel34maxlevel35lootCount14nameDalaran Summonerreact13id2358totalLootCount13900type7locs36267minlevel32maxlevel33lootCount22nameDalaran Theurgistreact13id2272totalLootCount10307methoddropped-byid8491spell_id10675
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2source2rarity1level20method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367methodsold-byid8487spell_id10676
	-- Instance: 12 - type5category3expansion1minlevel66maxlevel68nameCaverns of Time: Old Hillsbrad Foothillsterritory1id2367
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:addTradeFlags(RecipeDB, 10676, 1,4,5)
	self:addTradeAcquire(RecipeDB, 10676, 2, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2source12rarity1level20method_vendorstype7locs352385price600000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980method_dropstype7locs1581classification1descThe Ship's Cookminlevel20disp1305lootCount1590nameCookiereact33id645totalLootCount28314methoddropped-by,sold-byid8490spell_id10677
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:addTradeFlags(RecipeDB, 10677, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10677, 2, 20980)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2source2rarity1level20method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5nameDonni Anthaniareact13id6367methodsold-byid8488spell_id10678
	-- Instance: 12 - type5category3expansion1minlevel66maxlevel68nameCaverns of Time: Old Hillsbrad Foothillsterritory1id2367
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:addTradeFlags(RecipeDB, 10678, 1,4,5)
	self:addTradeAcquire(RecipeDB, 10678, 2, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2source2rarity1level20method_vendorstype7locs1519price600000descBoy with kittensminlevel5disp7935nameLil Timmyreact13id8666methodsold-byid8489spell_id10679
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:addTradeFlags(RecipeDB, 10679, 1,4)
	self:addTradeAcquire(RecipeDB, 10679, 2, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2source2rarity1level20method_vendorstype7locs33price400000descPirate Suppliesminlevel42nameNarkkreact13id2663methodsold-byid8496spell_id10680
	-- Instance: 33 - type1category3minlevel24maxlevel32nameThe Stockadeterritory2id717
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:addTradeFlags(RecipeDB, 10680, 1,4,5)
	self:addTradeAcquire(RecipeDB, 10680, 2, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2source13rarity1level20method_dropstype7locs33minlevel39lootCount1name\"Pretty Boy\" Duncanreact33id2545totalLootCount5699type7locs33minlevel42lootCount4nameBloodsail Deckhandreact33id4505totalLootCount10436type7locs33minlevel39maxlevel41lootCount6nameBloodsail Magereact33id1562totalLootCount35020type7locs33minlevel39disp793maxlevel41lootCount9nameBloodsail Raiderreact33id1561totalLootCount35811type7locs33minlevel41disp796maxlevel42lootCount4nameBloodsail Sea Dogreact33id1565totalLootCount10895type7locs33minlevel40disp1902lootCount1nameBloodsail Swabbyreact33id4506totalLootCount16140type7locs33minlevel40disp796maxlevel41lootCount5nameBloodsail Swashbucklerreact33id1563totalLootCount66557type7locs33minlevel40maxlevel41lootCount4nameBloodsail Warlockreact33id1564totalLootCount64146methoddropped-byid8494spell_id10682
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2source1rarity1level20method_dropstype7locs1581classification1minlevel19maxlevel20lootCount3042nameDefias Piratereact33id657totalLootCount104503methoddropped-byid8492spell_id10683
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2source2rarity1level20method_vendorstype7locs352385price400000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980type7locs33price400000descPirate Suppliesminlevel42nameNarkkreact13id2663methodsold-byid8495spell_id10684
	-- Instance: 33 - type1category3minlevel24maxlevel32nameThe Stockadeterritory2id717
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:addTradeFlags(RecipeDB, 10684, 1,2,4,5)
	self:addTradeAcquire(RecipeDB, 10684, 2, 20980, 2, 2663)

	-- Ancona Chicken - 10685
	-- type15.2source2rarity1level35method_vendorstype7locs400price1000000minlevel51nameMagus Tirthreact11id6548methodsold-byid11023spell_id10685
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:addTradeFlags(RecipeDB, 10685, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10685, 2, 6548)

	-- Cockroach - 10688
	-- type15.2source2rarity1level30method_vendorstype7locs352385price500000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980type7locs1497price500000descCockroach Vendorminlevel30nameJeremiah Paysonreact31id8403methodsold-byid10393spell_id10688
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:addTradeFlags(RecipeDB, 10688, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10688, 2, 20980, 2, 8403)

	-- Dark Whelpling - 10695
	-- type15.2source1rarity1level30method_dropstype2locs3minlevel41disp715maxlevel43lootCount78nameScalding Whelpreact33id2725totalLootCount71023type2locs152159minlevel39disp397maxlevel40lootCount32nameSearing Whelpreact33id4324totalLootCount34544methoddropped-byid10822spell_id10695
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)

	-- Azure Whelpling - 10696
	-- type15.2source1rarity1level30method_dropstype2locs16classification1minlevel50disp196maxlevel51lootCount2nameBlue Dragonspawnreact33id193totalLootCount3824type2locs16classification1minlevel52disp6760maxlevel53lootCount3nameBlue Scalebanereact33id6130totalLootCount1451type2locs16classification1minlevel51disp6761maxlevel52lootCount8nameDraconic Mageweaverreact33id6131totalLootCount5095methoddropped-byid34535spell_id10696
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2source1rarity1level30method_dropstype2locs11minlevel25disp505maxlevel26lootCount13nameCrimson Whelpreact33id1069totalLootCount4347type2locs11minlevel26disp8712maxlevel27lootCount7nameFlamesnorting Whelpreact33id1044totalLootCount1398type2locs11minlevel23disp9583maxlevel24lootCount11nameRed Whelpreact33id1042totalLootCount3731methoddropped-byid8499spell_id10697
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2source1rarity1level30method_dropstype2locs8minlevel35disp621maxlevel36lootCount38nameDreaming Whelpreact33id741totalLootCount16719methoddropped-byid8498spell_id10698
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)

	-- Wood Frog Box - 10703
	-- type15.2source2rarity1level35method_vendorstype7locs122153519price1000000minlevel4disp14589maxlevel70nameFlikreact21id14860methodsold-byid11027spell_id10703
	-- Instance: 12 - type5category3expansion1minlevel66maxlevel68nameCaverns of Time: Old Hillsbrad Foothillsterritory1id2367
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:addTradeFlags(RecipeDB, 10703, 1,2,4,5)
	self:addTradeAcquire(RecipeDB, 10703, 2, 14860)

	-- Tree Frog Box - 10704
	-- type15.2source2rarity1level35method_vendorstype7locs122153519price1000000minlevel4disp14589maxlevel70nameFlikreact21id14860methodsold-byid11026spell_id10704
	-- Instance: 12 - type5category3expansion1minlevel66maxlevel68nameCaverns of Time: Old Hillsbrad Foothillsterritory1id2367
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:addTradeFlags(RecipeDB, 10704, 1,2,4,5)
	self:addTradeAcquire(RecipeDB, 10704, 2, 14860)

	-- Hawk Owl - 10706
	-- type15.2source2rarity1level30method_vendorstype7locs1657price500000descOwl Trainerminlevel30nameShylenaireact13id8665methodsold-byid8501spell_id10706
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:addTradeFlags(RecipeDB, 10706, 1,4)
	self:addTradeAcquire(RecipeDB, 10706, 2, 8665)

	-- Great Horned Owl - 10707
	-- type15.2source2rarity1level30method_vendorstype7locs1657price500000descOwl Trainerminlevel30nameShylenaireact13id8665methodsold-byid8500spell_id10707
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:addTradeFlags(RecipeDB, 10707, 1,4)
	self:addTradeAcquire(RecipeDB, 10707, 2, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2source2rarity1level30method_vendorstype7locs1638price500000descPrairie Dog Vendorminlevel30nameHalpareact31id8401methodsold-byid10394spell_id10709
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:addTradeFlags(RecipeDB, 10709, 2,4)
	self:addTradeAcquire(RecipeDB, 10709, 2, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2source23rarity1level20method_vendorstype7locs1price200000minlevel1nameYarlyn Amberstillreact13id1263methodsold-byid8497spell_id10711
	-- Instance: 1 - type1category3minlevel20maxlevel27nameBlackfathom Deepsterritory1id719
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:addTradeFlags(RecipeDB, 10711, 1,4,5)
	self:addTradeAcquire(RecipeDB, 10711, 2, 1263)

	-- Black Kingsnake - 10714
	-- type15.2source2rarity1level30method_vendorstype7locs1637price500000descSnake Vendorminlevel30nameXan'tishreact31id8404methodsold-byid10360spell_id10714
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:addTradeFlags(RecipeDB, 10714, 2,4)
	self:addTradeAcquire(RecipeDB, 10714, 2, 8404)

	-- Brown Snake - 10716
	-- type15.2source2rarity1level30method_vendorstype7locs1637price500000descSnake Vendorminlevel30nameXan'tishreact31id8404methodsold-byid10361spell_id10716
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:addTradeFlags(RecipeDB, 10716, 2,4)
	self:addTradeAcquire(RecipeDB, 10716, 2, 8404)

	-- Crimson Snake - 10717
	-- type15.2source2rarity1level30method_vendorstype7locs352385price500000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980type7locs1637price500000descSnake Vendorminlevel30nameXan'tishreact31id8404methodsold-byid10392spell_id10717
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:addTradeFlags(RecipeDB, 10717, 1,2,4)
	self:addTradeAcquire(RecipeDB, 10717, 2, 20980, 2, 8404)

	-- Mechanical Chicken - 12243
	-- method_queststype0category035givenitems103981coin6000level50xp7100side1nameAn OOX of Your Ownid3721type15.2source3rarity1level40methodrewardfromid10398spell_id12243
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)

	-- Chicken Egg - 13548
	-- type15.0source1rarity1level1method_dropstype3locs40lootCount842nameFarm Chicken Eggid161513totalLootCount856methoddropped-by,contained-in-objectid11110spell_id13548
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)

	-- Pet Bombling - 15048
	-- type7.3method_crafted15628source4rarity1level41methodcraftedid11825spell_id15048
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)

	-- Lil' Smoky - 15049
	-- type7.3method_crafted15633source4rarity1level41methodcraftedid11826spell_id15049
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)

	-- Sprite Darter Egg - 15067
	-- method_queststype0category1357givenitems114741coin360level48xp625side2nameBecoming a Parentid4298type15.0source3rarity1level47methodrewardfromid11474spell_id15067
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)

	-- Worg Carrier - 15999
	-- method_queststype81category31583givenitems122641coin9000level59xp13950side1nameKibler's Exotic Petsid4729type15.0source3rarity1level59methodrewardfromid12264spell_id15999
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)

	-- Smolderweb Carrier - 16450
	-- method_queststype81category31583givenitems125291coin9000level59xp13950side1nameEn-Ay-Es-Tee-Whyid4862type15.0source3rarity1level59methodrewardfromid12529spell_id16450
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)

	-- Bloodsail Admiral's Hat - 17567
	-- method_queststype0category033givenitems121851coin8700level60side1nameAvast Ye, Admiral!id4621type4.1source3rarity2level60methodrewardfromarmor63id12185spell_id17567
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)

	-- Panda Collar - 17707
	-- method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0level1side4nameWelcome!id8547type0category13526choiceitems135841135831135821coin0level1side2nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781type15.0source3rarity3level20methodrewardfromid13583spell_id17707
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)

	-- Diablo Stone - 17708
	-- method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0level1side4nameWelcome!id8547type0category13526choiceitems135841135831135821coin0level1side2nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781type15.0source3rarity3level20methodrewardfromid13584spell_id17708
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)

	-- Zergling Leash - 17709
	-- method_queststype0category024choiceitems135841135831135821coin0level1nameWelcome!id5805type0category0132choiceitems135841135831135821coin0level1nameWelcome!id5841type0category1188choiceitems135841135831135821coin0level1nameWelcome!id5842type0category1363choiceitems135841135831135821coin0level1nameWelcome!id5843type0category1221choiceitems135841135831135821coin0level1nameWelcome!id5844type0category0154choiceitems135841135831135821coin0level1nameWelcome!id5847type0category03431choiceitems135841135831135821coin0level1side4nameWelcome!id8547type0category13526choiceitems135841135831135821coin0level1side2nameWelcome!id9278type0category00choiceitems135841135831135821coin0level1nameWelcome!id12781type15.0source3rarity3level20methodrewardfromid13582spell_id17709
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2method_crafted19793source4rarity1level53methodcraftedid15996spell_id19772
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)

	-- Orcish Orphan Whistle - 23012
	-- type15.0method_crafted23125source3rarity1level10methodcraftedid18597spell_id23012
	-- Crafted
	--self:AddCompanion(PetDB, 23012, 18597, 1)

	-- Human Orphan Whistle - 23013
	-- type15.0method_crafted23124source3rarity1level10methodcraftedid18598spell_id23013
	-- Crafted
	--self:AddCompanion(PetDB, 23013, 18598, 1)

	-- A Jubling's Tiny Home - 23811
	-- type15.2method_crafted23851rarity1level35methodcraftedid19450spell_id23811
	-- Crafted
	self:AddCompanion(PetDB, 23811, 19450, 1)

	-- Blue Murloc Egg - 24696
	-- type15.0rarity3level20methodid20371spell_id24696
	self:AddCompanion(PetDB, 24696, 20371, 3)

	-- Lurky's Egg - 24988
	-- type15.0rarity3level1methodid30360spell_id24988
	self:AddCompanion(PetDB, 24988, 30360, 3)

	-- Disgusting Oozeling - 25162
	-- type15.2rarity1level55method_dropstype15.0source1rarity1level50lootCount17nameOozing Bagid20768totalLootCount951methodcontained-in-itemid20769spell_id25162
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)

	-- Baby Shark - 25849
	-- type15.2rarity1level20methodid21168spell_id25849
	--self:AddCompanion(PetDB, 25849, 21168, 1)

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2method_crafted26011source4rarity1level60methodcraftedid21277spell_id26010
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)

	-- Snowman Kit - 26469
	-- type15.3source1rarity1level1method_dropstype15.0rlevel1rarity1level1lootCount4nameGaily Wrapped Presentid21310totalLootCount31methoddropped-by,contained-in-itemid21309spell_id26469
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)

	-- Jingling Bell - 26528
	-- type15.3source1rarity1level1method_dropstype15.0rlevel1rarity1level1lootCount6nameGaily Wrapped Presentid21310totalLootCount31methoddropped-by,contained-in-itemid21308spell_id26528
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)

	-- Green Helper Box - 26532
	-- type15.3source1rarity1level1method_dropstype15.0rlevel1rarity1level1lootCount6nameGaily Wrapped Presentid21310totalLootCount31methoddropped-by,contained-in-itemid21301spell_id26532
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)

	-- Red Helper Box - 26541
	-- type15.3source1rarity1level1method_dropstype15.0rlevel1rarity1level1lootCount15nameGaily Wrapped Presentid21310totalLootCount31methoddropped-by,contained-in-itemid21305spell_id26541
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)

	-- Pink Murloc Egg - 27241
	-- type15.0rarity3level20methodid22114spell_id27241
	self:AddCompanion(PetDB, 27241, 22114, 3)

	-- Truesilver Shafted Arrow - 27570
	-- type15.0rarity1level1method_dropstype15.3rarity1level1lootCount1nameGift of Adoration: Stormwindid21981totalLootCount18type15.3rarity1level1lootCount1namePledge of Adoration: Ironforgeid22154totalLootCount12methodcontained-in-itemid22235spell_id27570
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)

	-- Polar Bear Collar - 28505
	-- type15.0rarity1level1methodid22781spell_id28505
	self:AddCompanion(PetDB, 28505, 22781, 1)

	-- Turtle Box - 28738
	-- method_queststype0category-3284choiceitems230071230151230021230221coin1020level60xp3100side2nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0level60xp3100side4nameA Warden of the Hordeid5502type15.0source3rarity1level1methodrewardfromid23002spell_id28738
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)

	-- Piglet's Collar - 28739
	-- method_queststype0category-3284choiceitems230071230151230021230221coin1020level60xp3100side2nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0level60xp3100side4nameA Warden of the Hordeid5502type15.0source3rarity1level1methodrewardfromid23007spell_id28739
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)

	-- Rat Cage - 28740
	-- method_queststype0category-3284choiceitems230071230151230021230221coin1020level60xp3100side2nameA Warden of the Allianceid171type0category-3284choiceitems230071230151230021230221coin0level60xp3100side4nameA Warden of the Hordeid5502type15.0source3rarity1level1methodrewardfromid23015spell_id28740
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)

	-- Hippogryph Hatchling - 30156
	-- type15.0rarity4level1methodid23713spell_id30156
	self:AddCompanion(PetDB, 30156, 23713, 4)

	-- Netherwhelp's Collar - 32298
	-- type15.0method_crafted42426source3rarity3level20methodcraftedid25535spell_id32298
	-- Crafted
	self:AddCompanion(PetDB, 32298, 25535, 3)

	-- Magical Crawdad Box - 33050
	-- type15.0method_crafted33062rarity1level70methodcraftedid27445spell_id33050
	-- Crafted
	self:AddCompanion(PetDB, 33050, 27445, 1)

	-- Mana Wyrmling - 35156
	-- type15.2source2rarity1level70method_vendorstype7locs352385price40000000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980methodsold-byid29363spell_id35156
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:addTradeFlags(RecipeDB, 35156, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35156, 2, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2source2rarity1level70method_vendorstype7locs352385price10000000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980methodsold-byid29364spell_id35239
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:addTradeFlags(RecipeDB, 35239, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35239, 2, 20980)

	-- Blue Moth Egg - 35907
	-- type15.2source2rarity1level20method_vendorstype7locs3557price500000descMoth Keeperminlevel30nameSixxreact13id21019methodsold-byid29901spell_id35907
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:addTradeFlags(RecipeDB, 35907, 1,4)
	self:addTradeAcquire(RecipeDB, 35907, 2, 21019)

	-- Red Moth Egg - 35909
	-- type15.2source2rarity1level70method_vendorstype7locs352385price10000000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980methodsold-byid29902spell_id35909
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:addTradeFlags(RecipeDB, 35909, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35909, 2, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2source2rarity1level20method_vendorstype7locs3557price500000descMoth Keeperminlevel30nameSixxreact13id21019methodsold-byid29903spell_id35910
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:addTradeFlags(RecipeDB, 35910, 1,4)
	self:addTradeAcquire(RecipeDB, 35910, 2, 21019)

	-- White Moth Egg - 35911
	-- type15.2source2rarity1level20method_vendorstype7locs3557price500000descMoth Keeperminlevel30nameSixxreact13id21019methodsold-byid29904spell_id35911
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:addTradeFlags(RecipeDB, 35911, 1,4)
	self:addTradeAcquire(RecipeDB, 35911, 2, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2source2rarity1level20method_vendorstype7locs3430price500000minlevel9nameJilannereact31id16860methodsold-byid29953spell_id36027
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:addTradeFlags(RecipeDB, 36027, 2,4)
	self:addTradeAcquire(RecipeDB, 36027, 2, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2source2rarity1level20method_vendorstype7locs3430price500000minlevel9nameJilannereact31id16860methodsold-byid29956spell_id36028
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:addTradeFlags(RecipeDB, 36028, 2,4)
	self:addTradeAcquire(RecipeDB, 36028, 2, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2source2rarity1level20method_vendorstype7locs3430price500000minlevel9nameJilannereact31id16860methodsold-byid29957spell_id36029
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:addTradeFlags(RecipeDB, 36029, 2,4)
	self:addTradeAcquire(RecipeDB, 36029, 2, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2source2rarity1level70method_vendorstype7locs352385price10000000descExotic Creaturesminlevel60disp20988nameDealer Rashaadreact11id20980methodsold-byid29958spell_id36031
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:addTradeFlags(RecipeDB, 36031, 1,2,4)
	self:addTradeAcquire(RecipeDB, 36031, 2, 20980)

	-- Captured Firefly - 36034
	-- type15.2source1rarity1level20method_dropstype10locs3521minlevel62disp18723lootCount77nameBogflare Needlerreact33id20197totalLootCount151282methoddropped-byid29960spell_id36034
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)

	-- Miniwing - 39181
	-- method_queststype1category23519choiceitems317661317651317641givenitems317601coin66000level65xp13750side1nameSkywingid10898type15.0source3rarity1level96methodrewardfromid31760spell_id39181
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0method_crafted39512source3rarity1level1methodcraftedid31880spell_id39478
	-- Crafted
	--self:AddCompanion(PetDB, 39478, 31880, 1)

	-- Draenei Orphan Whistle - 39479
	-- type15.0method_crafted39513source3rarity1level1methodcraftedid31881spell_id39479
	-- Crafted
	--self:AddCompanion(PetDB, 39479, 31881, 1)

	-- Wolpertinger's Tankard - 39709
	-- method_queststype0category-3370givenitems322331coin0nameCatch the Wild Wolpertinger!id11117type0category-3370givenitems322331coin0nameCatch the Wild Wolpertinger!id11431type15.0source3rarity3level20methodrewardfromid32233spell_id39709
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)

	-- Fortune Coin - 40405
	-- type15.0method_crafted40406rarity3level1methodcraftedid32498spell_id40405
	-- Crafted
	self:AddCompanion(PetDB, 40405, 32498, 3)

	-- Banana Charm - 40549
	-- type15.0method_crafted40550rarity3level1methodcraftedid32588spell_id40549
	-- Crafted
	self:AddCompanion(PetDB, 40549, 32588, 3)

	-- Sleepy Willy - 40613
	-- method_queststype0category-3284choiceitems326221326161326171coin0level70xp12300side2nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0level70xp12300side4nameBack to the Orphanageid10967type15.0source3rarity3level20methodrewardfromid32617spell_id40613
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)

	-- Egbert's Egg - 40614
	-- method_queststype0category-3284choiceitems326221326161326171coin0level70xp12300side2nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0level70xp12300side4nameBack to the Orphanageid10967type15.0source3rarity3level20methodrewardfromid32616spell_id40614
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)

	-- Elekk Training Collar - 40634
	-- method_queststype0category-3284choiceitems326221326161326171coin0level70xp12300side2nameBack to the Orphanageid10966type0category-3284choiceitems326161326221326171coin0level70xp12300side4nameBack to the Orphanageid10967type15.0source3rarity3level20methodrewardfromid32622spell_id40634
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)

	-- Reeking Pet Carrier - 40990
	-- type15.2rarity3level1methodid40653spell_id40990
	self:AddCompanion(PetDB, 40990, 40653, 3)

	-- Sinister Squashling - 42609
	-- type15.0rarity3level20methodid33154spell_id42609
	self:AddCompanion(PetDB, 42609, 33154, 3)

	-- Toothy's Bucket - 43697
	-- type15.2rarity3level20method_dropstype15.0source3rarity1level70lootCount45nameBag of Fishing Treasuresid35348totalLootCount7879methodcontained-in-itemid33816spell_id43697
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)

	-- Muckbreath's Bucket - 43698
	-- type15.2rarity3level20method_dropstype15.0source3rarity1level70lootCount49nameBag of Fishing Treasuresid35348totalLootCount7879methodcontained-in-itemid33818spell_id43698
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)

	-- Mojo - 43918
	-- type15.0method_crafted43923rarity3level20methodcraftedid33993spell_id43918
	-- Crafted
	self:AddCompanion(PetDB, 43918, 33993, 3)

	-- Clockwork Rocket Bot - 45048
	-- type15.3source1rarity3level1method_dropstype15.0rlevel1rarity1level1lootCount33nameWinter Veil Giftid34426totalLootCount33methoddropped-by,contained-in-itemid34425spell_id45048
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)

	-- Tiny Sporebat - 45082
	-- type15.2source2rarity3level70method_vendorstype7locs3521price000242453000000000descSporeggar Quartermasterminlevel64disp17626nameMycahreact11id18382methodsold-byid34478spell_id45082
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:addTradeFlags(RecipeDB, 45082, 1,2,4)
	self:addTradeAcquire(RecipeDB, 45082, 2, 18382)

	-- Rocket Chicken - 45125
	-- type15.2method_crafted45126rarity3level1methodcraftedid34492spell_id45125
	-- Crafted
	self:AddCompanion(PetDB, 45125, 34492, 3)

	-- Dragon Kite - 45127
	-- type15.2method_crafted45128rarity4level1methodcraftedid34493spell_id45127
	-- Crafted
	self:AddCompanion(PetDB, 45127, 34493, 4)

	-- Scorched Stone - 45890
	-- type15.0rarity3level20methodid34955spell_id45890
	self:AddCompanion(PetDB, 45890, 34955, 3)

	-- Snarly's Bucket - 46425
	-- type15.2rarity3level20method_dropstype15.0source3rarity1level70lootCount33nameBag of Fishing Treasuresid35348totalLootCount7879methodcontained-in-itemid35349spell_id46425
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)

	-- Chuck's Bucket - 46426
	-- type15.2rarity3level20method_dropstype15.0source3rarity1level70lootCount59nameBag of Fishing Treasuresid35348totalLootCount7879methodcontained-in-itemid35350spell_id46426
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)

	-- Phoenix Hatchling - 46599
	-- type15.2source1rarity3level70method_dropstype7locs409537033845classification3descLord of the Blood Elvesminlevel72disp20023lootCount153nameKael'thas Sunstriderreact33id23054totalLootCount9689type7locs4095classification1descLord of the Blood Elvesminlevel72disp22906lootCount89nameKael'thas Sunstriderreact33id24664totalLootCount6321methoddropped-byid35504spell_id46599
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)

	-- Soul-Trader Beacon - 49964
	-- type15.2method_crafted50211rarity3level20methodcraftedid38050spell_id49964
	-- Crafted
	self:AddCompanion(PetDB, 49964, 38050, 3)

	-- Nether Ray Fry - 51716
	-- type15.2source2rarity3level70method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70nameGrellareact11id23367methodsold-byid38628spell_id51716
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:addTradeFlags(RecipeDB, 51716, 1,2,4)
	self:addTradeAcquire(RecipeDB, 51716, 2, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0method_crafted53085rarity3level20methodcraftedid39656spell_id53082
	-- Crafted
	self:AddCompanion(PetDB, 53082, 39656, 3)

end
