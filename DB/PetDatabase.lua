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
	-- type15.2rarity1method_crafted3928source4methodcraftedspellid4055id4401level15
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)
	-- No filter flags
	-- No acquire information

	-- Cat Carrier (Bombay) - 10673
	-- type15.2rarity1source2method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5react13nameDonni Anthaniaid6367methodsold-byspellid10673id8485level20
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:addTradeFlags(PetDB, 10673, 1,4)
	self:addTradeAcquire(PetDB, 10673, 2, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2rarity1source2method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5react13nameDonni Anthaniaid6367methodsold-byspellid10674id8486level20
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:addTradeFlags(PetDB, 10674, 1,4)
	self:addTradeAcquire(PetDB, 10674, 2, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2rarity1source1methoddropped-byspellid10675method_dropstype7locs36267minlevel31react13lootCount40maxlevel32nameDalaran Shield GuardtotalLootCount24111id2271type7locs130classification4minlevel21react13lootCount33nameDalaran SpellscribetotalLootCount306id1920type7locs36minlevel34react13lootCount14maxlevel35nameDalaran SummonertotalLootCount13900id2358type7locs36267minlevel32react13lootCount22maxlevel33nameDalaran TheurgisttotalLootCount10307id2272id8491level20
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:addTradeFlags(PetDB, 10675, 5)
	self:addTradeAcquire(PetDB, 10675, 3, 1920, 3, 2271, 3, 2272, 3, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2rarity1source2method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5react13nameDonni Anthaniaid6367methodsold-byspellid10676id8487level20
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:addTradeFlags(PetDB, 10676, 1,4)
	self:addTradeAcquire(PetDB, 10676, 2, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2rarity1source12method_vendorstype7locs352385price600000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980methoddropped-by,sold-byspellid10677method_dropstype7locs1581classification1descThe Ship's Cookdisp1305minlevel20react33lootCount1590nameCookietotalLootCount28314id645id8490level20
	-- Instance: 1581 - type1category3minlevel15maxlevel20nameThe Deadminesid1581territory2
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:addTradeFlags(PetDB, 10677, 1,2,4,5)
	self:addTradeAcquire(PetDB, 10677, 3, 645, 2, 20980)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2rarity1source2method_vendorstype7locs12price400000descCrazy Cat Ladyminlevel5react13nameDonni Anthaniaid6367methodsold-byspellid10678id8488level20
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:addTradeFlags(PetDB, 10678, 1,4)
	self:addTradeAcquire(PetDB, 10678, 2, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2rarity1source2method_vendorstype7locs1519price600000descBoy with kittensdisp7935minlevel5react13nameLil Timmyid8666methodsold-byspellid10679id8489level20
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:addTradeFlags(PetDB, 10679, 1,4)
	self:addTradeAcquire(PetDB, 10679, 2, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2rarity1source2method_vendorstype7locs33price400000descPirate Suppliesminlevel42react13nameNarkkid2663methodsold-byspellid10680id8496level20
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:addTradeFlags(PetDB, 10680, 1,4)
	self:addTradeAcquire(PetDB, 10680, 2, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2rarity1source13methoddropped-byspellid10682method_dropstype7locs33minlevel39react33lootCount1name\"Pretty Boy\" DuncantotalLootCount5699id2545type7locs33minlevel42react33lootCount4nameBloodsail DeckhandtotalLootCount10436id4505type7locs33minlevel39react33lootCount6maxlevel41nameBloodsail MagetotalLootCount35020id1562type7locs33disp793minlevel39react33lootCount9maxlevel41nameBloodsail RaidertotalLootCount35811id1561type7locs33disp796minlevel41react33lootCount4maxlevel42nameBloodsail Sea DogtotalLootCount10895id1565type7locs33disp1902minlevel40react33lootCount1nameBloodsail SwabbytotalLootCount16140id4506type7locs33disp796minlevel40react33lootCount5maxlevel41nameBloodsail SwashbucklertotalLootCount66557id1563type7locs33minlevel40react33lootCount4maxlevel41nameBloodsail WarlocktotalLootCount64146id1564id8494level20
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:addTradeFlags(PetDB, 10682, 5)
	self:addTradeAcquire(PetDB, 10682, 3, 1561, 3, 1562, 3, 1563, 3, 1564, 3, 1565, 3, 2545, 3, 4505, 3, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2rarity1source1methoddropped-byspellid10683method_dropstype7locs1581classification1minlevel19react33lootCount3042maxlevel20nameDefias PiratetotalLootCount104503id657id8492level20
	-- Instance: 1581 - type1category3minlevel15maxlevel20nameThe Deadminesid1581territory2
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:addTradeFlags(PetDB, 10683, 5)
	self:addTradeAcquire(PetDB, 10683, 3, 657)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2rarity1source2method_vendorstype7locs352385price400000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980type7locs33price400000descPirate Suppliesminlevel42react13nameNarkkid2663methodsold-byspellid10684id8495level20
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:addTradeFlags(PetDB, 10684, 1,2,4)
	self:addTradeAcquire(PetDB, 10684, 2, 2663, 2, 20980)

	-- Ancona Chicken - 10685
	-- type15.2rarity1source2method_vendorstype7locs400price1000000minlevel51react11nameMagus Tirthid6548methodsold-byspellid10685id11023level35
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:addTradeFlags(PetDB, 10685, 1,2,4)
	self:addTradeAcquire(PetDB, 10685, 2, 6548)

	-- Cockroach - 10688
	-- type15.2rarity1source2method_vendorstype7locs352385price500000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980type7locs1497price500000descCockroach Vendorminlevel30react31nameJeremiah Paysonid8403methodsold-byspellid10688id10393level30
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:addTradeFlags(PetDB, 10688, 1,2,4)
	self:addTradeAcquire(PetDB, 10688, 2, 8403, 2, 20980)

	-- Dark Whelpling - 10695
	-- type15.2rarity1source1methoddropped-byspellid10695method_dropstype2locs3disp715minlevel41react33lootCount78maxlevel43nameScalding WhelptotalLootCount71023id2725type2locs152159disp397minlevel39react33lootCount32maxlevel40nameSearing WhelptotalLootCount34544id4324id10822level30
	-- Raid: 2159 - Onyxia's Lair
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:addTradeFlags(PetDB, 10695, 5,6)
	self:addTradeAcquire(PetDB, 10695, 3, 2725, 3, 4324)

	-- Azure Whelpling - 10696
	-- type15.2rarity1source1methoddropped-byspellid10696method_dropstype2locs16classification1disp196minlevel50react33lootCount2maxlevel51nameBlue DragonspawntotalLootCount3824id193type2locs16classification1disp6760minlevel52react33lootCount3maxlevel53nameBlue ScalebanetotalLootCount1451id6130type2locs16classification1disp6761minlevel51react33lootCount8maxlevel52nameDraconic MageweavertotalLootCount5095id6131id34535level30
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:addTradeFlags(PetDB, 10696, 5)
	self:addTradeAcquire(PetDB, 10696, 3, 193, 3, 6130, 3, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2rarity1source1methoddropped-byspellid10697method_dropstype2locs11disp505minlevel25react33lootCount13maxlevel26nameCrimson WhelptotalLootCount4347id1069type2locs11disp8712minlevel26react33lootCount7maxlevel27nameFlamesnorting WhelptotalLootCount1398id1044type2locs11disp9583minlevel23react33lootCount11maxlevel24nameRed WhelptotalLootCount3731id1042id8499level30
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:addTradeFlags(PetDB, 10697, 5)
	self:addTradeAcquire(PetDB, 10697, 3, 1042, 3, 1044, 3, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2rarity1source1methoddropped-byspellid10698method_dropstype2locs8disp621minlevel35react33lootCount38maxlevel36nameDreaming WhelptotalLootCount16719id741id8498level30
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:addTradeFlags(PetDB, 10698, 5)
	self:addTradeAcquire(PetDB, 10698, 3, 741)

	-- Wood Frog Box - 10703
	-- type15.2rarity1source2method_vendorstype7locs122153519price1000000disp14589minlevel4react21maxlevel70nameFlikid14860methodsold-byspellid10703id11027level35
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:addTradeFlags(PetDB, 10703, 1,2,4)
	self:addTradeAcquire(PetDB, 10703, 2, 14860)

	-- Tree Frog Box - 10704
	-- type15.2rarity1source2method_vendorstype7locs122153519price1000000disp14589minlevel4react21maxlevel70nameFlikid14860methodsold-byspellid10704id11026level35
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:addTradeFlags(PetDB, 10704, 1,2,4)
	self:addTradeAcquire(PetDB, 10704, 2, 14860)

	-- Hawk Owl - 10706
	-- type15.2rarity1source2method_vendorstype7locs1657price500000descOwl Trainerminlevel30react13nameShylenaiid8665methodsold-byspellid10706id8501level30
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:addTradeFlags(PetDB, 10706, 1,4)
	self:addTradeAcquire(PetDB, 10706, 2, 8665)

	-- Great Horned Owl - 10707
	-- type15.2rarity1source2method_vendorstype7locs1657price500000descOwl Trainerminlevel30react13nameShylenaiid8665methodsold-byspellid10707id8500level30
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:addTradeFlags(PetDB, 10707, 1,4)
	self:addTradeAcquire(PetDB, 10707, 2, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2rarity1source2method_vendorstype7locs1638price500000descPrairie Dog Vendorminlevel30react31nameHalpaid8401methodsold-byspellid10709id10394level30
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:addTradeFlags(PetDB, 10709, 2,4)
	self:addTradeAcquire(PetDB, 10709, 2, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2rarity1source23method_vendorstype7locs1price200000minlevel1react13nameYarlyn Amberstillid1263methodsold-byspellid10711id8497level20
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:addTradeFlags(PetDB, 10711, 1,4)
	self:addTradeAcquire(PetDB, 10711, 2, 1263)

	-- Black Kingsnake - 10714
	-- type15.2rarity1source2method_vendorstype7locs1637price500000descSnake Vendorminlevel30react31nameXan'tishid8404methodsold-byspellid10714id10360level30
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:addTradeFlags(PetDB, 10714, 2,4)
	self:addTradeAcquire(PetDB, 10714, 2, 8404)

	-- Brown Snake - 10716
	-- type15.2rarity1source2method_vendorstype7locs1637price500000descSnake Vendorminlevel30react31nameXan'tishid8404methodsold-byspellid10716id10361level30
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:addTradeFlags(PetDB, 10716, 2,4)
	self:addTradeAcquire(PetDB, 10716, 2, 8404)

	-- Crimson Snake - 10717
	-- type15.2rarity1source2method_vendorstype7locs352385price500000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980type7locs1637price500000descSnake Vendorminlevel30react31nameXan'tishid8404methodsold-byspellid10717id10392level30
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:addTradeFlags(PetDB, 10717, 1,2,4)
	self:addTradeAcquire(PetDB, 10717, 2, 8404, 2, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2rarity1method_queststype0givenitems103981category035coin6000side1xp7100nameAn OOX of Your Ownid3721level50source3methodrewardfromspellid12243id10398level40
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:addTradeFlags(PetDB, 12243, 1,2,8)
	self:addTradeAcquire(PetDB, 12243, 4, 3721)

	-- Chicken Egg - 13548
	-- type15.0rarity1source1methoddropped-by,contained-in-objectspellid13548method_dropstype3locs40lootCount842nameFarm Chicken EggtotalLootCount856id161513id11110level1
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:addTradeFlags(PetDB, 13548, 5)
	self:addTradeAcquire(PetDB, 13548, 3, 161513)

	-- Pet Bombling - 15048
	-- type7.3rarity1method_crafted15628source4methodcraftedspellid15048id11825level41
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)
	-- No filter flags
	-- No acquire information

	-- Lil' Smoky - 15049
	-- type7.3rarity1method_crafted15633source4methodcraftedspellid15049id11826level41
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)
	-- No filter flags
	-- No acquire information

	-- Sprite Darter Egg - 15067
	-- type15.0rarity1method_queststype0givenitems114741category1357coin360side2xp625nameBecoming a Parentid4298level48source3methodrewardfromspellid15067id11474level47
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:addTradeFlags(PetDB, 15067, 1,8)
	self:addTradeAcquire(PetDB, 15067, 4, 4298)

	-- Worg Carrier - 15999
	-- type15.0rarity1method_queststype81givenitems122641category31583coin9000side1xp13950nameKibler's Exotic Petsid4729level59source3methodrewardfromspellid15999id12264level59
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:addTradeFlags(PetDB, 15999, 1,2,8)
	self:addTradeAcquire(PetDB, 15999, 4, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0rarity1method_queststype81givenitems125291category31583coin9000side1xp13950nameEn-Ay-Es-Tee-Whyid4862level59source3methodrewardfromspellid16450id12529level59
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:addTradeFlags(PetDB, 16450, 1,2,8)
	self:addTradeAcquire(PetDB, 16450, 4, 4862)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1rarity2method_queststype0givenitems121851category033coin8700side1nameAvast Ye, Admiral!id4621level60source3methodrewardfromspellid17567armor63id12185level60
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:addTradeFlags(PetDB, 17567, 1,2,8)
	self:addTradeAcquire(PetDB, 17567, 4, 4621)

	-- Panda Collar - 17707
	-- type15.0rarity3method_queststype0category024choiceitems135841135831135821coin0nameWelcome!id5805level1type0category0132choiceitems135841135831135821coin0nameWelcome!id5841level1type0category1188choiceitems135841135831135821coin0nameWelcome!id5842level1type0category1363choiceitems135841135831135821coin0nameWelcome!id5843level1type0category1221choiceitems135841135831135821coin0nameWelcome!id5844level1type0category0154choiceitems135841135831135821coin0nameWelcome!id5847level1type0category03431choiceitems135841135831135821coin0side4nameWelcome!id8547level1type0category13526choiceitems135841135831135821coin0side2nameWelcome!id9278level1type0category00choiceitems135841135831135821coin0nameWelcome!id12781level1source3methodrewardfromspellid17707id13583level20
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:addTradeFlags(PetDB, 17707, 1,2,8)
	self:addTradeAcquire(PetDB, 17707, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Diablo Stone - 17708
	-- type15.0rarity3method_queststype0category024choiceitems135841135831135821coin0nameWelcome!id5805level1type0category0132choiceitems135841135831135821coin0nameWelcome!id5841level1type0category1188choiceitems135841135831135821coin0nameWelcome!id5842level1type0category1363choiceitems135841135831135821coin0nameWelcome!id5843level1type0category1221choiceitems135841135831135821coin0nameWelcome!id5844level1type0category0154choiceitems135841135831135821coin0nameWelcome!id5847level1type0category03431choiceitems135841135831135821coin0side4nameWelcome!id8547level1type0category13526choiceitems135841135831135821coin0side2nameWelcome!id9278level1type0category00choiceitems135841135831135821coin0nameWelcome!id12781level1source3methodrewardfromspellid17708id13584level20
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:addTradeFlags(PetDB, 17708, 1,2,8)
	self:addTradeAcquire(PetDB, 17708, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Zergling Leash - 17709
	-- type15.0rarity3method_queststype0category024choiceitems135841135831135821coin0nameWelcome!id5805level1type0category0132choiceitems135841135831135821coin0nameWelcome!id5841level1type0category1188choiceitems135841135831135821coin0nameWelcome!id5842level1type0category1363choiceitems135841135831135821coin0nameWelcome!id5843level1type0category1221choiceitems135841135831135821coin0nameWelcome!id5844level1type0category0154choiceitems135841135831135821coin0nameWelcome!id5847level1type0category03431choiceitems135841135831135821coin0side4nameWelcome!id8547level1type0category13526choiceitems135841135831135821coin0side2nameWelcome!id9278level1type0category00choiceitems135841135831135821coin0nameWelcome!id12781level1source3methodrewardfromspellid17709id13582level20
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:addTradeFlags(PetDB, 17709, 1,2,8)
	self:addTradeAcquire(PetDB, 17709, 4, 5805, 4, 5841, 4, 5842, 4, 5843, 4, 5844, 4, 5847, 4, 8547, 4, 9278, 4, 12781)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2rarity1method_crafted19793source4methodcraftedspellid19772id15996level53
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)
	-- No filter flags
	-- No acquire information

	-- Orcish Orphan Whistle - 23012
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid23012id18597level10
	-- Redemption
	self:AddCompanion(PetDB, 23012, 18597, 1)
	-- No filter flags
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid23013id18598level10
	-- Redemption
	self:AddCompanion(PetDB, 23013, 18598, 1)
	-- No filter flags
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2rarity1method_redemptionUnknownmethodredemptionspellid23811id19450level35
	-- Redemption
	self:AddCompanion(PetDB, 23811, 19450, 1)
	-- No filter flags
	-- No acquire information

	-- Blue Murloc Egg - 24696
	-- type15.0rarity3methodspellid24696id20371level20
	self:AddCompanion(PetDB, 24696, 20371, 3)
	-- No filter flags
	-- No acquire information

	-- Lurky's Egg - 24988
	-- type15.0rarity3methodspellid24988id30360level1
	self:AddCompanion(PetDB, 24988, 30360, 3)
	-- No filter flags
	-- No acquire information

	-- Disgusting Oozeling - 25162
	-- type15.2rarity1methodcontained-in-itemspellid25162method_dropstype15.0rarity1source1lootCount17nameOozing BagtotalLootCount951id20768level50id20769level55
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)
	-- No filter flags
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2rarity1methodspellid25849id21168level20
	self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2rarity1method_crafted26011source4methodcraftedspellid26010id21277level60
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)
	-- No filter flags
	-- No acquire information

	-- Snowman Kit - 26469
	-- type15.3rarity1source1methoddropped-by,contained-in-itemspellid26469method_dropstype15.0rarity1rlevel1lootCount4nameGaily Wrapped PresenttotalLootCount31id21310level1id21309level1
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)
	self:addTradeFlags(PetDB, 26469, 5)
	self:addTradeAcquire(PetDB, 26469, 3, 21310)

	-- Jingling Bell - 26528
	-- type15.3rarity1source1methoddropped-by,contained-in-itemspellid26528method_dropstype15.0rarity1rlevel1lootCount6nameGaily Wrapped PresenttotalLootCount31id21310level1id21308level1
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)
	self:addTradeFlags(PetDB, 26528, 5)
	self:addTradeAcquire(PetDB, 26528, 3, 21310)

	-- Green Helper Box - 26532
	-- type15.3rarity1source1methoddropped-by,contained-in-itemspellid26532method_dropstype15.0rarity1rlevel1lootCount6nameGaily Wrapped PresenttotalLootCount31id21310level1id21301level1
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)
	self:addTradeFlags(PetDB, 26532, 5)
	self:addTradeAcquire(PetDB, 26532, 3, 21310)

	-- Red Helper Box - 26541
	-- type15.3rarity1source1methoddropped-by,contained-in-itemspellid26541method_dropstype15.0rarity1rlevel1lootCount15nameGaily Wrapped PresenttotalLootCount31id21310level1id21305level1
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:addTradeFlags(PetDB, 26541, 5)
	self:addTradeAcquire(PetDB, 26541, 3, 21310)

	-- Pink Murloc Egg - 27241
	-- type15.0rarity3methodspellid27241id22114level20
	self:AddCompanion(PetDB, 27241, 22114, 3)
	-- No filter flags
	-- No acquire information

	-- Truesilver Shafted Arrow - 27570
	-- type15.0rarity1methodcontained-in-itemspellid27570method_dropstype15.3rarity1lootCount1nameGift of Adoration: StormwindtotalLootCount18id21981level1type15.3rarity1lootCount1namePledge of Adoration: IronforgetotalLootCount12id22154level1id22235level1
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)
	-- No filter flags
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0rarity1methodspellid28505id22781level1
	self:AddCompanion(PetDB, 28505, 22781, 1)
	-- No filter flags
	-- No acquire information

	-- Turtle Box - 28738
	-- type15.0rarity1method_queststype0category-3284choiceitems230071230151230021230221coin1020side2xp3100nameA Warden of the Allianceid171level60type0category-3284choiceitems230071230151230021230221coin0side4xp3100nameA Warden of the Hordeid5502level60source3methodrewardfromspellid28738id23002level1
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:addTradeFlags(PetDB, 28738, 1,2,8)
	self:addTradeAcquire(PetDB, 28738, 4, 171, 4, 5502)

	-- Piglet's Collar - 28739
	-- type15.0rarity1method_queststype0category-3284choiceitems230071230151230021230221coin1020side2xp3100nameA Warden of the Allianceid171level60type0category-3284choiceitems230071230151230021230221coin0side4xp3100nameA Warden of the Hordeid5502level60source3methodrewardfromspellid28739id23007level1
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:addTradeFlags(PetDB, 28739, 1,2,8)
	self:addTradeAcquire(PetDB, 28739, 4, 171, 4, 5502)

	-- Rat Cage - 28740
	-- type15.0rarity1method_queststype0category-3284choiceitems230071230151230021230221coin1020side2xp3100nameA Warden of the Allianceid171level60type0category-3284choiceitems230071230151230021230221coin0side4xp3100nameA Warden of the Hordeid5502level60source3methodrewardfromspellid28740id23015level1
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:addTradeFlags(PetDB, 28740, 1,2,8)
	self:addTradeAcquire(PetDB, 28740, 4, 171, 4, 5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0rarity4methodspellid30156id23713level1
	self:AddCompanion(PetDB, 30156, 23713, 4)
	-- No filter flags
	-- No acquire information

	-- Netherwhelp's Collar - 32298
	-- type15.0rarity3source3method_redemptionUnknownmethodredemptionspellid32298id25535level20
	-- Redemption
	self:AddCompanion(PetDB, 32298, 25535, 3)
	-- No filter flags
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0rarity1method_redemptionUnknownmethodredemptionspellid33050id27445level70
	-- Redemption
	self:AddCompanion(PetDB, 33050, 27445, 1)
	-- No filter flags
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2rarity1source2method_vendorstype7locs352385price40000000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980methodsold-byspellid35156id29363level70
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:addTradeFlags(PetDB, 35156, 1,2,4)
	self:addTradeAcquire(PetDB, 35156, 2, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2rarity1source2method_vendorstype7locs352385price10000000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980methodsold-byspellid35239id29364level70
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:addTradeFlags(PetDB, 35239, 1,2,4)
	self:addTradeAcquire(PetDB, 35239, 2, 20980)

	-- Blue Moth Egg - 35907
	-- type15.2rarity1source2method_vendorstype7locs3557price500000descMoth Keeperminlevel30react13nameSixxid21019methodsold-byspellid35907id29901level20
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:addTradeFlags(PetDB, 35907, 1,4)
	self:addTradeAcquire(PetDB, 35907, 2, 21019)

	-- Red Moth Egg - 35909
	-- type15.2rarity1source2method_vendorstype7locs352385price10000000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980methodsold-byspellid35909id29902level70
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:addTradeFlags(PetDB, 35909, 1,2,4)
	self:addTradeAcquire(PetDB, 35909, 2, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2rarity1source2method_vendorstype7locs3557price500000descMoth Keeperminlevel30react13nameSixxid21019methodsold-byspellid35910id29903level20
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:addTradeFlags(PetDB, 35910, 1,4)
	self:addTradeAcquire(PetDB, 35910, 2, 21019)

	-- White Moth Egg - 35911
	-- type15.2rarity1source2method_vendorstype7locs3557price500000descMoth Keeperminlevel30react13nameSixxid21019methodsold-byspellid35911id29904level20
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:addTradeFlags(PetDB, 35911, 1,4)
	self:addTradeAcquire(PetDB, 35911, 2, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2rarity1source2method_vendorstype7locs3430price500000minlevel9react31nameJilanneid16860methodsold-byspellid36027id29953level20
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:addTradeFlags(PetDB, 36027, 2,4)
	self:addTradeAcquire(PetDB, 36027, 2, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2rarity1source2method_vendorstype7locs3430price500000minlevel9react31nameJilanneid16860methodsold-byspellid36028id29956level20
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:addTradeFlags(PetDB, 36028, 2,4)
	self:addTradeAcquire(PetDB, 36028, 2, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2rarity1source2method_vendorstype7locs3430price500000minlevel9react31nameJilanneid16860methodsold-byspellid36029id29957level20
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:addTradeFlags(PetDB, 36029, 2,4)
	self:addTradeAcquire(PetDB, 36029, 2, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2rarity1source2method_vendorstype7locs352385price10000000descExotic Creaturesdisp20988minlevel60react11nameDealer Rashaadid20980methodsold-byspellid36031id29958level70
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:addTradeFlags(PetDB, 36031, 1,2,4)
	self:addTradeAcquire(PetDB, 36031, 2, 20980)

	-- Captured Firefly - 36034
	-- type15.2rarity1source1methoddropped-byspellid36034method_dropstype10locs3521disp18723minlevel62react33lootCount77nameBogflare NeedlertotalLootCount151282id20197id29960level20
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:addTradeFlags(PetDB, 36034, 5)
	self:addTradeAcquire(PetDB, 36034, 3, 20197)

	-- Miniwing - 39181
	-- type15.0rarity1method_queststype1givenitems317601category23519choiceitems317661317651317641coin66000side1xp13750nameSkywingid10898level65source3methodrewardfromspellid39181id31760level96
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:addTradeFlags(PetDB, 39181, 1,2,8)
	self:addTradeAcquire(PetDB, 39181, 4, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid39478id31880level1
	-- Redemption
	self:AddCompanion(PetDB, 39478, 31880, 1)
	-- No filter flags
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0rarity1source3method_redemptionUnknownmethodredemptionspellid39479id31881level1
	-- Redemption
	self:AddCompanion(PetDB, 39479, 31881, 1)
	-- No filter flags
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0rarity3method_queststype0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11117type0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11431source3methodrewardfromspellid39709id32233level20
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:addTradeFlags(PetDB, 39709, 8)
	self:addTradeAcquire(PetDB, 39709, 4, 11117, 4, 11431)

	-- Fortune Coin - 40405
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid40405id32498level1
	-- Redemption
	self:AddCompanion(PetDB, 40405, 32498, 3)
	-- No filter flags
	-- No acquire information

	-- Banana Charm - 40549
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid40549id32588level1
	-- Redemption
	self:AddCompanion(PetDB, 40549, 32588, 3)
	-- No filter flags
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0rarity3method_queststype0category-3284choiceitems326221326161326171coin0side2xp12300nameBack to the Orphanageid10966level70type0category-3284choiceitems326161326221326171coin0side4xp12300nameBack to the Orphanageid10967level70source3methodrewardfromspellid40613id32617level20
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:addTradeFlags(PetDB, 40613, 1,2,8)
	self:addTradeAcquire(PetDB, 40613, 4, 10966, 4, 10967)

	-- Egbert's Egg - 40614
	-- type15.0rarity3method_queststype0category-3284choiceitems326221326161326171coin0side2xp12300nameBack to the Orphanageid10966level70type0category-3284choiceitems326161326221326171coin0side4xp12300nameBack to the Orphanageid10967level70source3methodrewardfromspellid40614id32616level20
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:addTradeFlags(PetDB, 40614, 1,2,8)
	self:addTradeAcquire(PetDB, 40614, 4, 10966, 4, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0rarity3method_queststype0category-3284choiceitems326221326161326171coin0side2xp12300nameBack to the Orphanageid10966level70type0category-3284choiceitems326161326221326171coin0side4xp12300nameBack to the Orphanageid10967level70source3methodrewardfromspellid40634id32622level20
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:addTradeFlags(PetDB, 40634, 1,2,8)
	self:addTradeAcquire(PetDB, 40634, 4, 10966, 4, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2rarity3methodspellid40990id40653level1
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0rarity3methodspellid42609id33154level20
	self:AddCompanion(PetDB, 42609, 33154, 3)
	-- No filter flags
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2rarity3methodcontained-in-itemspellid43697method_dropstype15.0rarity1source3lootCount45nameBag of Fishing TreasurestotalLootCount7879id35348level70id33816level20
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)
	-- No filter flags
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2rarity3methodcontained-in-itemspellid43698method_dropstype15.0rarity1source3lootCount49nameBag of Fishing TreasurestotalLootCount7879id35348level70id33818level20
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)
	-- No filter flags
	-- No acquire information

	-- Mojo - 43918
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid43918id33993level20
	-- Redemption
	self:AddCompanion(PetDB, 43918, 33993, 3)
	-- No filter flags
	-- No acquire information

	-- Clockwork Rocket Bot - 45048
	-- type15.3rarity3source1methoddropped-by,contained-in-itemspellid45048method_dropstype15.0rarity1rlevel1lootCount33nameWinter Veil GifttotalLootCount33id34426level1id34425level1
	-- No location information
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)
	self:addTradeFlags(PetDB, 45048, 5)
	self:addTradeAcquire(PetDB, 45048, 3, 34426)

	-- Tiny Sporebat - 45082
	-- type15.2rarity3source2method_vendorstype7locs3521price000242453000000000descSporeggar Quartermasterdisp17626minlevel64react11nameMycahid18382methodsold-byspellid45082id34478level70
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:addTradeFlags(PetDB, 45082, 1,2,4)
	self:addTradeAcquire(PetDB, 45082, 2, 18382)

	-- Rocket Chicken - 45125
	-- type15.2rarity3method_redemptionUnknownmethodredemptionspellid45125id34492level1
	-- Redemption
	self:AddCompanion(PetDB, 45125, 34492, 3)
	-- No filter flags
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2rarity4method_redemptionUnknownmethodredemptionspellid45127id34493level1
	-- Redemption
	self:AddCompanion(PetDB, 45127, 34493, 4)
	-- No filter flags
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0rarity3methodspellid45890id34955level20
	self:AddCompanion(PetDB, 45890, 34955, 3)
	-- No filter flags
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2rarity3methodcontained-in-itemspellid46425method_dropstype15.0rarity1source3lootCount33nameBag of Fishing TreasurestotalLootCount7879id35348level70id35349level20
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)
	-- No filter flags
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2rarity3methodcontained-in-itemspellid46426method_dropstype15.0rarity1source3lootCount59nameBag of Fishing TreasurestotalLootCount7879id35348level70id35350level20
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)
	-- No filter flags
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2rarity3source1methoddropped-byspellid46599method_dropstype7locs409537033845classification3descLord of the Blood Elvesdisp20023minlevel72react33lootCount153nameKael'thas SunstridertotalLootCount9689id23054type7locs4095classification1descLord of the Blood Elvesdisp22906minlevel72react33lootCount89nameKael'thas SunstridertotalLootCount6321id24664id35504level70
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:addTradeFlags(PetDB, 46599, 5,6)
	self:addTradeAcquire(PetDB, 46599, 3, 23054, 3, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2rarity3method_redemptionUnknownmethodredemptionspellid49964id38050level20
	-- Redemption
	self:AddCompanion(PetDB, 49964, 38050, 3)
	-- No filter flags
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- type15.2rarity3source2method_vendorstype7locs3519price00000000descSkyguard Quartermasterminlevel70react11nameGrellaid23367methodsold-byspellid51716id38628level70
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:addTradeFlags(PetDB, 51716, 1,2,4)
	self:addTradeAcquire(PetDB, 51716, 2, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0rarity3method_redemptionUnknownmethodredemptionspellid53082id39656level20
	-- Redemption
	self:AddCompanion(PetDB, 53082, 39656, 3)
	-- No filter flags
	-- No acquire information

end
