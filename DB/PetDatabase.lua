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

	local companioncount = 0

	-- Mechanical Squirrel Box - 4055
	-- method_craftedschool0skillEngineeringlearned75produces44011skillup75105120135rarity1reagents4363143591284017742nameMechanical Squirrelid3928category11type15.2spellid4055item_bindsBOUsource4rarity1methodcraftedlevel15id4401
	-- Crafted
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 4055, 4401, 1)
	self:AddCompanionFlags(PetDB, 4055, 1,2,5)
	self:AddCompanionAcquire(PetDB, 4055, 3, 3928)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2method_vendorstype7price400000descCrazy Cat Ladyreact13minlevel5locs12nameDonni Anthaniaid6367spellid10673item_bindsBOUsource2rarity1methodsold-bylevel20id8485
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:AddCompanionFlags(PetDB, 10673, 1,3)
	self:AddCompanionAcquire(PetDB, 10673, 1, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2method_vendorstype7price400000descCrazy Cat Ladyreact13minlevel5locs12nameDonni Anthaniaid6367spellid10674item_bindsBOUsource2rarity1methodsold-bylevel20id8486
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:AddCompanionFlags(PetDB, 10674, 1,3)
	self:AddCompanionAcquire(PetDB, 10674, 1, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2spellid10675item_bindsBOUsource1method_dropstype7react13minlevel31lootCount40maxlevel32totalLootCount24111locs36267nameDalaran Shield Guardid2271type7react13minlevel21lootCount33totalLootCount306locs130nameDalaran Spellscribeid1920classification4type7react13minlevel34lootCount14maxlevel35totalLootCount13900locs36nameDalaran Summonerid2358type7react13minlevel32lootCount22maxlevel33totalLootCount10307locs36267nameDalaran Theurgistid2272rarity1methoddropped-bylevel20id8491
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:AddCompanionFlags(PetDB, 10675, 1,2,15)
	self:AddCompanionAcquire(PetDB, 10675, 4, 1920, 4, 2271, 4, 2272, 4, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2method_vendorstype7price400000descCrazy Cat Ladyreact13minlevel5locs12nameDonni Anthaniaid6367spellid10676item_bindsBOUsource2rarity1methodsold-bylevel20id8487
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:AddCompanionFlags(PetDB, 10676, 1,3)
	self:AddCompanionAcquire(PetDB, 10676, 1, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2method_vendorstype7price600000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid10677item_bindsBOUsource12method_dropstype7descThe Ship's Cookreact33disp1305minlevel20lootCount1590totalLootCount28314locs1581nameCookieid645classification1rarity1methoddropped-by,sold-bylevel20id8490
	-- Instance: 1581 - type1minlevel15maxlevel20territory2nameThe Deadminesid1581category3
	-- Mob Drop
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:AddCompanionFlags(PetDB, 10677, 1,2,3,6)
	self:AddCompanionAcquire(PetDB, 10677, 4, 645, 1, 20980)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2method_vendorstype7price400000descCrazy Cat Ladyreact13minlevel5locs12nameDonni Anthaniaid6367spellid10678item_bindsBOUsource2rarity1methodsold-bylevel20id8488
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:AddCompanionFlags(PetDB, 10678, 1,3)
	self:AddCompanionAcquire(PetDB, 10678, 1, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2method_vendorstype7price600000descBoy with kittensreact13disp7935minlevel5locs1519nameLil Timmyid8666spellid10679item_bindsBOUsource2rarity1methodsold-bylevel20id8489
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:AddCompanionFlags(PetDB, 10679, 1,3)
	self:AddCompanionAcquire(PetDB, 10679, 1, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2method_vendorstype7price400000descPirate Suppliesreact13minlevel42locs33nameNarkkid2663spellid10680item_bindsBOUsource2rarity1methodsold-bylevel20id8496
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:AddCompanionFlags(PetDB, 10680, 1,3)
	self:AddCompanionAcquire(PetDB, 10680, 1, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2spellid10682item_bindsBOUsource13method_dropstype7react33minlevel39lootCount1totalLootCount5699locs33name\"Pretty Boy\" Duncanid2545type7react33minlevel42lootCount4totalLootCount10436locs33nameBloodsail Deckhandid4505type7react33minlevel39lootCount6maxlevel41totalLootCount35020locs33nameBloodsail Mageid1562type7react33disp793minlevel39lootCount9maxlevel41totalLootCount35811locs33nameBloodsail Raiderid1561type7react33disp796minlevel41lootCount4maxlevel42totalLootCount10895locs33nameBloodsail Sea Dogid1565type7react33disp1902minlevel40lootCount1totalLootCount16140locs33nameBloodsail Swabbyid4506type7react33disp796minlevel40lootCount5maxlevel41totalLootCount66557locs33nameBloodsail Swashbucklerid1563type7react33minlevel40lootCount4maxlevel41totalLootCount64146locs33nameBloodsail Warlockid1564rarity1methoddropped-bylevel20id8494
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:AddCompanionFlags(PetDB, 10682, 1,2,15)
	self:AddCompanionAcquire(PetDB, 10682, 4, 1561, 4, 1562, 4, 1563, 4, 1564, 4, 1565, 4, 2545, 4, 4505, 4, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2spellid10683item_bindsBOUsource1method_dropstype7react33minlevel19lootCount3042maxlevel20totalLootCount104503locs1581nameDefias Pirateid657classification1rarity1methoddropped-bylevel20id8492
	-- Instance: 1581 - type1minlevel15maxlevel20territory2nameThe Deadminesid1581category3
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:AddCompanionFlags(PetDB, 10683, 1,2,6)
	self:AddCompanionAcquire(PetDB, 10683, 4, 657)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2method_vendorstype7price400000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980type7price400000descPirate Suppliesreact13minlevel42locs33nameNarkkid2663spellid10684item_bindsBOUsource2rarity1methodsold-bylevel20id8495
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:AddCompanionFlags(PetDB, 10684, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10684, 1, 2663, 1, 20980)

	-- Ancona Chicken - 10685
	-- type15.2method_vendorstype7price1000000react11minlevel51locs400nameMagus Tirthid6548spellid10685item_bindsBOUsource2rarity1methodsold-bylevel35id11023
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:AddCompanionFlags(PetDB, 10685, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10685, 1, 6548)

	-- Cockroach - 10688
	-- type15.2method_vendorstype7price500000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980type7price500000descCockroach Vendorreact31minlevel30locs1497nameJeremiah Paysonid8403spellid10688item_bindsBOUsource2rarity1methodsold-bylevel30id10393
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:AddCompanionFlags(PetDB, 10688, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10688, 1, 8403, 1, 20980)

	-- Dark Whelpling - 10695
	-- type15.2spellid10695item_bindsBOUsource1method_dropstype2react33disp715minlevel41lootCount78maxlevel43totalLootCount71023locs3nameScalding Whelpid2725type2react33disp397minlevel39lootCount32maxlevel40totalLootCount34544locs152159nameSearing Whelpid4324rarity1methoddropped-bylevel30id10822
	-- Raid: 2159 - Onyxia's Lair
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:AddCompanionFlags(PetDB, 10695, 1,2,7,15)
	self:AddCompanionAcquire(PetDB, 10695, 4, 2725, 4, 4324)

	-- Azure Whelpling - 10696
	-- type15.2spellid10696item_bindsBOUsource1method_dropstype2react33disp196minlevel50lootCount2maxlevel51totalLootCount3824locs16nameBlue Dragonspawnid193classification1type2react33disp6760minlevel52lootCount3maxlevel53totalLootCount1451locs16nameBlue Scalebaneid6130classification1type2react33disp6761minlevel51lootCount8maxlevel52totalLootCount5095locs16nameDraconic Mageweaverid6131classification1rarity1methoddropped-bylevel30id34535
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:AddCompanionFlags(PetDB, 10696, 1,2,15)
	self:AddCompanionAcquire(PetDB, 10696, 4, 193, 4, 6130, 4, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2spellid10697item_bindsBOUsource1method_dropstype2react33disp505minlevel25lootCount13maxlevel26totalLootCount4347locs11nameCrimson Whelpid1069type2react33disp8712minlevel26lootCount7maxlevel27totalLootCount1398locs11nameFlamesnorting Whelpid1044type2react33disp9583minlevel23lootCount11maxlevel24totalLootCount3731locs11nameRed Whelpid1042rarity1methoddropped-bylevel30id8499
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:AddCompanionFlags(PetDB, 10697, 1,2,15)
	self:AddCompanionAcquire(PetDB, 10697, 4, 1042, 4, 1044, 4, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2spellid10698item_bindsBOUsource1method_dropstype2react33disp621minlevel35lootCount38maxlevel36totalLootCount16719locs8nameDreaming Whelpid741rarity1methoddropped-bylevel30id8498
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:AddCompanionFlags(PetDB, 10698, 1,2,15)
	self:AddCompanionAcquire(PetDB, 10698, 4, 741)

	-- Wood Frog Box - 10703
	-- type15.2method_vendorstype7price1000000react21disp14589minlevel4maxlevel70locs122153519nameFlikid14860spellid10703item_bindsBOUsource2rarity1methodsold-bylevel35id11027
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:AddCompanionFlags(PetDB, 10703, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10703, 1, 14860)

	-- Tree Frog Box - 10704
	-- type15.2method_vendorstype7price1000000react21disp14589minlevel4maxlevel70locs122153519nameFlikid14860spellid10704item_bindsBOUsource2rarity1methodsold-bylevel35id11026
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:AddCompanionFlags(PetDB, 10704, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10704, 1, 14860)

	-- Hawk Owl - 10706
	-- type15.2method_vendorstype7price500000descOwl Trainerreact13minlevel30locs1657nameShylenaiid8665spellid10706item_bindsBOUsource2rarity1methodsold-bylevel30id8501
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:AddCompanionFlags(PetDB, 10706, 1,3)
	self:AddCompanionAcquire(PetDB, 10706, 1, 8665)

	-- Great Horned Owl - 10707
	-- type15.2method_vendorstype7price500000descOwl Trainerreact13minlevel30locs1657nameShylenaiid8665spellid10707item_bindsBOUsource2rarity1methodsold-bylevel30id8500
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:AddCompanionFlags(PetDB, 10707, 1,3)
	self:AddCompanionAcquire(PetDB, 10707, 1, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2method_vendorstype7price500000descPrairie Dog Vendorreact31minlevel30locs1638nameHalpaid8401spellid10709item_bindsBOUsource2rarity1methodsold-bylevel30id10394
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:AddCompanionFlags(PetDB, 10709, 2,3)
	self:AddCompanionAcquire(PetDB, 10709, 1, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2method_vendorstype7price200000react13minlevel1locs1nameYarlyn Amberstillid1263spellid10711item_bindsBOUsource23rarity1methodsold-bylevel20id8497
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:AddCompanionFlags(PetDB, 10711, 1,3)
	self:AddCompanionAcquire(PetDB, 10711, 1, 1263)

	-- Black Kingsnake - 10714
	-- type15.2method_vendorstype7price500000descSnake Vendorreact31minlevel30locs1637nameXan'tishid8404spellid10714item_bindsBOUsource2rarity1methodsold-bylevel30id10360
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:AddCompanionFlags(PetDB, 10714, 2,3)
	self:AddCompanionAcquire(PetDB, 10714, 1, 8404)

	-- Brown Snake - 10716
	-- type15.2method_vendorstype7price500000descSnake Vendorreact31minlevel30locs1637nameXan'tishid8404spellid10716item_bindsBOUsource2rarity1methodsold-bylevel30id10361
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:AddCompanionFlags(PetDB, 10716, 2,3)
	self:AddCompanionAcquire(PetDB, 10716, 1, 8404)

	-- Crimson Snake - 10717
	-- type15.2method_vendorstype7price500000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980type7price500000descSnake Vendorreact31minlevel30locs1637nameXan'tishid8404spellid10717item_bindsBOUsource2rarity1methodsold-bylevel30id10392
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:AddCompanionFlags(PetDB, 10717, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10717, 1, 8404, 1, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2spellid12243item_bindsBOUsource3rarity1method_queststype0side1coin6000xp7100nameAn OOX of Your Ownlevel50givenitems103981id3721category035methodrewardfromlevel40id10398
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:AddCompanionFlags(PetDB, 12243, 1,2,4)
	self:AddCompanionAcquire(PetDB, 12243, 2, 3721)

	-- Chicken Egg - 13548
	-- type15.0spellid13548item_bindsBOPsource1method_dropstype3lootCount842totalLootCount856locs40nameFarm Chicken Eggid161513rarity1methoddropped-by,contained-in-objectlevel1id11110
	-- Mob Drop
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:AddCompanionFlags(PetDB, 13548, 1,2,15)
	self:AddCompanionAcquire(PetDB, 13548, 4, 161513)

	-- Pet Bombling - 15048
	-- method_craftedschool0skillEngineeringlearned205produces118251skillup0205205205rarity1reagents43941707717191138606namePet Bomblingid15628category11type7.3spellid15048item_bindsBOPsource4rarity1methodcraftedlevel41id11825
	-- Crafted
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 15048, 11825, 1)
	self:AddCompanionFlags(PetDB, 15048, 1,2,5)
	self:AddCompanionAcquire(PetDB, 15048, 3, 15628)

	-- Lil' Smoky - 15049
	-- method_craftedschool0skillEngineeringlearned205produces118261skillup0205205205rarity1reagents7075143892719113860260371nameLil' Smokyid15633category11type7.3spellid15049item_bindsBOPsource4rarity1methodcraftedlevel41id11826
	-- Crafted
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 15049, 11826, 1)
	self:AddCompanionFlags(PetDB, 15049, 1,2,5)
	self:AddCompanionAcquire(PetDB, 15049, 3, 15633)

	-- Sprite Darter Egg - 15067
	-- type15.0spellid15067item_bindsBOPsource3rarity1method_queststype0side2coin360xp625nameBecoming a Parentlevel48givenitems114741id4298category1357methodrewardfromlevel47id11474
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:AddCompanionFlags(PetDB, 15067, 1,4)
	self:AddCompanionAcquire(PetDB, 15067, 2, 4298)

	-- Worg Carrier - 15999
	-- type15.0spellid15999item_bindsBOPsource3rarity1method_queststype81side1coin9000xp13950nameKibler's Exotic Petslevel59givenitems122641id4729category31583methodrewardfromlevel59id12264
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:AddCompanionFlags(PetDB, 15999, 1,2,4)
	self:AddCompanionAcquire(PetDB, 15999, 2, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0spellid16450item_bindsBOPsource3rarity1method_queststype81side1coin9000xp13950nameEn-Ay-Es-Tee-Whylevel59givenitems125291id4862category31583methodrewardfromlevel59id12529
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:AddCompanionFlags(PetDB, 16450, 1,2,4)
	self:AddCompanionAcquire(PetDB, 16450, 2, 4862)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1spellid17567item_bindsBOPsource3rarity2armor63method_queststype0side1coin8700nameAvast Ye, Admiral!level60givenitems121851id4621category033methodrewardfromlevel60id12185
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:AddCompanionFlags(PetDB, 17567, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17567, 2, 4621)

	-- Panda Collar - 17707
	-- type15.0spellid17707item_bindsBOPsource3rarity3method_queststype0choiceitems135841135831135821coin0nameWelcome!level1id5805category024type0choiceitems135841135831135821coin0nameWelcome!level1id5841category0132type0choiceitems135841135831135821coin0nameWelcome!level1id5842category1188type0choiceitems135841135831135821coin0nameWelcome!level1id5843category1363type0choiceitems135841135831135821coin0nameWelcome!level1id5844category1221type0choiceitems135841135831135821coin0nameWelcome!level1id5847category0154type0choiceitems135841135831135821side4coin0nameWelcome!level1id8547category03431type0choiceitems135841135831135821side2coin0nameWelcome!level1id9278category13526type0choiceitems135841135831135821coin0nameWelcome!level1id12781category00methodrewardfromlevel20id13583
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:AddCompanionFlags(PetDB, 17707, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17707, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Diablo Stone - 17708
	-- type15.0spellid17708item_bindsBOPsource3rarity3method_queststype0choiceitems135841135831135821coin0nameWelcome!level1id5805category024type0choiceitems135841135831135821coin0nameWelcome!level1id5841category0132type0choiceitems135841135831135821coin0nameWelcome!level1id5842category1188type0choiceitems135841135831135821coin0nameWelcome!level1id5843category1363type0choiceitems135841135831135821coin0nameWelcome!level1id5844category1221type0choiceitems135841135831135821coin0nameWelcome!level1id5847category0154type0choiceitems135841135831135821side4coin0nameWelcome!level1id8547category03431type0choiceitems135841135831135821side2coin0nameWelcome!level1id9278category13526type0choiceitems135841135831135821coin0nameWelcome!level1id12781category00methodrewardfromlevel20id13584
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:AddCompanionFlags(PetDB, 17708, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17708, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Zergling Leash - 17709
	-- type15.0spellid17709item_bindsBOPsource3rarity3method_queststype0choiceitems135841135831135821coin0nameWelcome!level1id5805category024type0choiceitems135841135831135821coin0nameWelcome!level1id5841category0132type0choiceitems135841135831135821coin0nameWelcome!level1id5842category1188type0choiceitems135841135831135821coin0nameWelcome!level1id5843category1363type0choiceitems135841135831135821coin0nameWelcome!level1id5844category1221type0choiceitems135841135831135821coin0nameWelcome!level1id5847category0154type0choiceitems135841135831135821side4coin0nameWelcome!level1id8547category03431type0choiceitems135841135831135821side2coin0nameWelcome!level1id9278category13526type0choiceitems135841135831135821coin0nameWelcome!level1id12781category00methodrewardfromlevel20id13582
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:AddCompanionFlags(PetDB, 17709, 1,2,4)
	self:AddCompanionAcquire(PetDB, 17709, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Lifelike Mechanical Toad - 19772
	-- method_craftedschool0skillEngineeringlearned265produces159961skillup265285295305rarity1reagents12803115994410558181701nameLifelike Mechanical Toadid19793category11type15.2spellid19772item_bindsBOUsource4rarity1methodcraftedlevel53id15996
	-- Crafted
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 19772, 15996, 1)
	self:AddCompanionFlags(PetDB, 19772, 1,2,5)
	self:AddCompanionAcquire(PetDB, 19772, 3, 19793)

	-- Orcish Orphan Whistle - 23012
	-- type15.0method_redemptionUnknownspellid23012item_bindsBOPsource3rarity1methodredemptionlevel10id18597
	-- Redemption
	-- companioncount = companioncount + 1	--self:AddCompanion(PetDB, 23012, 18597, 1)
	--self:AddCompanionFlags(PetDB, 23012, 1,2,10)
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0method_redemptionUnknownspellid23013item_bindsBOPsource3rarity1methodredemptionlevel10id18598
	-- Redemption
	-- companioncount = companioncount + 1	--self:AddCompanion(PetDB, 23013, 18598, 1)
	--self:AddCompanionFlags(PetDB, 23013, 1,2,10)
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2method_redemptionUnknownspellid23811item_bindsBOPrarity1methodredemptionlevel35id19450
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 23811, 19450, 1)
	self:AddCompanionFlags(PetDB, 23811, 1,2,10)
	-- No acquire information

	-- Blue Murloc Egg - 24696
	-- type15.0spellid24696item_bindsBOPrarity3methodlevel20id20371
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 24696, 20371, 3)
	-- No filter flags
	-- No acquire information

	-- Lurky's Egg - 24988
	-- type15.0spellid24988item_bindsBOPrarity3methodlevel1id30360
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 24988, 30360, 3)
	-- No filter flags
	-- No acquire information

	-- Disgusting Oozeling - 25162
	-- type15.2spellid25162item_bindsBOUmethod_dropstype15.0source1lootCount17rarity1totalLootCount951nameOozing Baglevel50id20768rarity1methodcontained-in-itemlevel55id20769
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 25162, 20769, 1)
	self:AddCompanionFlags(PetDB, 25162, 1,2)
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2spellid25849item_bindsBOErarity1methodlevel20id21168
	-- companioncount = companioncount + 1	--self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- method_craftedschool0skillEngineeringlearned300produces212771skillup300320330340rarity1reagents15407115994470792186312105581nameTranquil Mechanical Yetiid26011category11type15.2spellid26010item_bindsBOUsource4rarity1methodcraftedlevel60id21277
	-- Crafted
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 26010, 21277, 1)
	self:AddCompanionFlags(PetDB, 26010, 1,2,5)
	self:AddCompanionAcquire(PetDB, 26010, 3, 26011)

	-- Snowman Kit - 26469
	-- type15.3spellid26469item_bindsBOUsource1method_dropstype15.0rlevel1lootCount4rarity1totalLootCount31nameGaily Wrapped Presentlevel1id21310rarity1methoddropped-by,contained-in-itemlevel1id21309
	-- No location information
	-- Mob Drop
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 26469, 21309, 1)
	self:AddCompanionFlags(PetDB, 26469, 1,2)
	self:AddCompanionAcquire(PetDB, 26469, 4, 21310)

	-- Jingling Bell - 26528
	-- type15.3spellid26528item_bindsBOUsource1method_dropstype15.0rlevel1lootCount6rarity1totalLootCount31nameGaily Wrapped Presentlevel1id21310rarity1methoddropped-by,contained-in-itemlevel1id21308
	-- No location information
	-- Mob Drop
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 26528, 21308, 1)
	self:AddCompanionFlags(PetDB, 26528, 1,2)
	self:AddCompanionAcquire(PetDB, 26528, 4, 21310)

	-- Green Helper Box - 26532
	-- type15.3spellid26532item_bindsBOUsource1method_dropstype15.0rlevel1lootCount6rarity1totalLootCount31nameGaily Wrapped Presentlevel1id21310rarity1methoddropped-by,contained-in-itemlevel1id21301
	-- No location information
	-- Mob Drop
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 26532, 21301, 1)
	self:AddCompanionFlags(PetDB, 26532, 1,2)
	self:AddCompanionAcquire(PetDB, 26532, 4, 21310)

	-- Red Helper Box - 26541
	-- type15.3spellid26541item_bindsBOUsource1method_dropstype15.0rlevel1lootCount15rarity1totalLootCount31nameGaily Wrapped Presentlevel1id21310rarity1methoddropped-by,contained-in-itemlevel1id21305
	-- No location information
	-- Mob Drop
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:AddCompanionFlags(PetDB, 26541, 1,2)
	self:AddCompanionAcquire(PetDB, 26541, 4, 21310)

	-- Pink Murloc Egg - 27241
	-- type15.0spellid27241item_bindsBOPrarity3methodlevel20id22114
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 27241, 22114, 3)
	-- No filter flags
	-- No acquire information

	-- Truesilver Shafted Arrow - 27570
	-- type15.0spellid27570item_bindsBOPmethod_dropstype15.3lootCount1rarity1totalLootCount18nameGift of Adoration: Stormwindlevel1id21981type15.3lootCount1rarity1totalLootCount12namePledge of Adoration: Ironforgelevel1id22154rarity1methodcontained-in-itemlevel1id22235
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 27570, 22235, 1)
	self:AddCompanionFlags(PetDB, 27570, 1,2)
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0spellid28505item_bindsBOPrarity1methodlevel1id22781
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 28505, 22781, 1)
	-- No filter flags
	-- No acquire information

	-- Turtle Box - 28738
	-- type15.0spellid28738item_bindsBOPsource3rarity1method_queststype0choiceitems230071230151230021230221side2coin1020xp3100nameA Warden of the Alliancelevel60id171category-3284type0choiceitems230071230151230021230221side4coin0xp3100nameA Warden of the Hordelevel60id5502category-3284methodrewardfromlevel1id23002
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:AddCompanionFlags(PetDB, 28738, 1,2,4)
	self:AddCompanionAcquire(PetDB, 28738, 2, 171, 2, 5502)

	-- Piglet's Collar - 28739
	-- type15.0spellid28739item_bindsBOPsource3rarity1method_queststype0choiceitems230071230151230021230221side2coin1020xp3100nameA Warden of the Alliancelevel60id171category-3284type0choiceitems230071230151230021230221side4coin0xp3100nameA Warden of the Hordelevel60id5502category-3284methodrewardfromlevel1id23007
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:AddCompanionFlags(PetDB, 28739, 1,2,4)
	self:AddCompanionAcquire(PetDB, 28739, 2, 171, 2, 5502)

	-- Rat Cage - 28740
	-- type15.0spellid28740item_bindsBOPsource3rarity1method_queststype0choiceitems230071230151230021230221side2coin1020xp3100nameA Warden of the Alliancelevel60id171category-3284type0choiceitems230071230151230021230221side4coin0xp3100nameA Warden of the Hordelevel60id5502category-3284methodrewardfromlevel1id23015
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:AddCompanionFlags(PetDB, 28740, 1,2,4)
	self:AddCompanionAcquire(PetDB, 28740, 2, 171, 2, 5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0spellid30156item_bindsBOPrarity4methodlevel1id23713
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 30156, 23713, 4)
	-- No filter flags
	-- No acquire information

	-- Netherwhelp's Collar - 32298
	-- type15.0method_redemptionUnknownspellid32298item_bindsBOPsource3rarity3methodredemptionlevel20id25535
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 32298, 25535, 3)
	self:AddCompanionFlags(PetDB, 32298, 1,2,10)
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0method_redemptionUnknownspellid33050item_bindsBOPrarity1methodredemptionlevel70id27445
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 33050, 27445, 1)
	self:AddCompanionFlags(PetDB, 33050, 1,2,10)
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2method_vendorstype7price40000000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid35156item_bindsBOUsource2rarity1methodsold-bylevel70id29363
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:AddCompanionFlags(PetDB, 35156, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35156, 1, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2method_vendorstype7price10000000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid35239item_bindsBOUsource2rarity1methodsold-bylevel70id29364
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:AddCompanionFlags(PetDB, 35239, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35239, 1, 20980)

	-- Blue Moth Egg - 35907
	-- type15.2method_vendorstype7price500000descMoth Keeperreact13minlevel30locs3557nameSixxid21019spellid35907item_bindsBOUsource2rarity1methodsold-bylevel20id29901
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:AddCompanionFlags(PetDB, 35907, 1,3)
	self:AddCompanionAcquire(PetDB, 35907, 1, 21019)

	-- Red Moth Egg - 35909
	-- type15.2method_vendorstype7price10000000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid35909item_bindsBOUsource2rarity1methodsold-bylevel70id29902
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:AddCompanionFlags(PetDB, 35909, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35909, 1, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2method_vendorstype7price500000descMoth Keeperreact13minlevel30locs3557nameSixxid21019spellid35910item_bindsBOUsource2rarity1methodsold-bylevel20id29903
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:AddCompanionFlags(PetDB, 35910, 1,3)
	self:AddCompanionAcquire(PetDB, 35910, 1, 21019)

	-- White Moth Egg - 35911
	-- type15.2method_vendorstype7price500000descMoth Keeperreact13minlevel30locs3557nameSixxid21019spellid35911item_bindsBOUsource2rarity1methodsold-bylevel20id29904
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:AddCompanionFlags(PetDB, 35911, 1,3)
	self:AddCompanionAcquire(PetDB, 35911, 1, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2method_vendorstype7price500000react31minlevel9locs3430nameJilanneid16860spellid36027item_bindsBOUsource2rarity1methodsold-bylevel20id29953
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:AddCompanionFlags(PetDB, 36027, 2,3)
	self:AddCompanionAcquire(PetDB, 36027, 1, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2method_vendorstype7price500000react31minlevel9locs3430nameJilanneid16860spellid36028item_bindsBOUsource2rarity1methodsold-bylevel20id29956
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:AddCompanionFlags(PetDB, 36028, 2,3)
	self:AddCompanionAcquire(PetDB, 36028, 1, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2method_vendorstype7price500000react31minlevel9locs3430nameJilanneid16860spellid36029item_bindsBOUsource2rarity1methodsold-bylevel20id29957
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:AddCompanionFlags(PetDB, 36029, 2,3)
	self:AddCompanionAcquire(PetDB, 36029, 1, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2method_vendorstype7price10000000descExotic Creaturesreact11disp20988minlevel60locs352385nameDealer Rashaadid20980spellid36031item_bindsBOUsource2rarity1methodsold-bylevel70id29958
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:AddCompanionFlags(PetDB, 36031, 1,2,3)
	self:AddCompanionAcquire(PetDB, 36031, 1, 20980)

	-- Captured Firefly - 36034
	-- type15.2spellid36034item_bindsBOUsource1method_dropstype10react33disp18723minlevel62lootCount77totalLootCount151282locs3521nameBogflare Needlerid20197rarity1methoddropped-bylevel20id29960
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:AddCompanionFlags(PetDB, 36034, 1,2,15)
	self:AddCompanionAcquire(PetDB, 36034, 4, 20197)

	-- Miniwing - 39181
	-- type15.0spellid39181item_bindsBOPsource3rarity1method_queststype1choiceitems317661317651317641side1coin66000xp13750nameSkywinglevel65givenitems317601id10898category23519methodrewardfromlevel96id31760
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:AddCompanionFlags(PetDB, 39181, 1,2,4)
	self:AddCompanionAcquire(PetDB, 39181, 2, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0method_redemptionUnknownspellid39478item_bindsBOPsource3rarity1methodredemptionlevel1id31880
	-- Redemption
	-- companioncount = companioncount + 1	--self:AddCompanion(PetDB, 39478, 31880, 1)
	--self:AddCompanionFlags(PetDB, 39478, 1,2,10)
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0method_redemptionUnknownspellid39479item_bindsBOPsource3rarity1methodredemptionlevel1id31881
	-- Redemption
	-- companioncount = companioncount + 1	--self:AddCompanion(PetDB, 39479, 31881, 1)
	--self:AddCompanionFlags(PetDB, 39479, 1,2,10)
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0spellid39709item_bindsBOPsource3rarity3method_queststype0coin0nameCatch the Wild Wolpertinger!givenitems322331id11117category-3370type0coin0nameCatch the Wild Wolpertinger!givenitems322331id11431category-3370methodrewardfromlevel20id32233
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:AddCompanionFlags(PetDB, 39709, 4)
	self:AddCompanionAcquire(PetDB, 39709, 2, 11117, 2, 11431)

	-- Fortune Coin - 40405
	-- type15.0method_redemptionUnknownspellid40405item_bindsBOPrarity3methodredemptionlevel1id32498
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 40405, 32498, 3)
	self:AddCompanionFlags(PetDB, 40405, 1,2,10)
	-- No acquire information

	-- Banana Charm - 40549
	-- type15.0method_redemptionUnknownspellid40549item_bindsBOPrarity3methodredemptionlevel1id32588
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 40549, 32588, 3)
	self:AddCompanionFlags(PetDB, 40549, 1,2,10)
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0spellid40613item_bindsBOPsource3rarity3method_queststype0choiceitems326221326161326171side2coin0xp12300nameBack to the Orphanagelevel70id10966category-3284type0choiceitems326161326221326171side4coin0xp12300nameBack to the Orphanagelevel70id10967category-3284methodrewardfromlevel20id32617
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:AddCompanionFlags(PetDB, 40613, 1,2,4)
	self:AddCompanionAcquire(PetDB, 40613, 2, 10966, 2, 10967)

	-- Egbert's Egg - 40614
	-- type15.0spellid40614item_bindsBOPsource3rarity3method_queststype0choiceitems326221326161326171side2coin0xp12300nameBack to the Orphanagelevel70id10966category-3284type0choiceitems326161326221326171side4coin0xp12300nameBack to the Orphanagelevel70id10967category-3284methodrewardfromlevel20id32616
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:AddCompanionFlags(PetDB, 40614, 1,2,4)
	self:AddCompanionAcquire(PetDB, 40614, 2, 10966, 2, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0spellid40634item_bindsBOPsource3rarity3method_queststype0choiceitems326221326161326171side2coin0xp12300nameBack to the Orphanagelevel70id10966category-3284type0choiceitems326161326221326171side4coin0xp12300nameBack to the Orphanagelevel70id10967category-3284methodrewardfromlevel20id32622
	-- Quest Reward
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:AddCompanionFlags(PetDB, 40634, 1,2,4)
	self:AddCompanionAcquire(PetDB, 40634, 2, 10966, 2, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2spellid40990item_bindsBOErarity3methodlevel1id40653
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0spellid42609item_bindsBOPrarity3methodlevel20id33154
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 42609, 33154, 3)
	-- No filter flags
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2spellid43697item_bindsBOPmethod_dropstype15.0source3lootCount45rarity1totalLootCount7879nameBag of Fishing Treasureslevel70id35348rarity3methodcontained-in-itemlevel20id33816
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 43697, 33816, 3)
	self:AddCompanionFlags(PetDB, 43697, 1,2)
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2spellid43698item_bindsBOPmethod_dropstype15.0source3lootCount49rarity1totalLootCount7879nameBag of Fishing Treasureslevel70id35348rarity3methodcontained-in-itemlevel20id33818
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 43698, 33818, 3)
	self:AddCompanionFlags(PetDB, 43698, 1,2)
	-- No acquire information

	-- Mojo - 43918
	-- type15.0method_redemptionUnknownspellid43918item_bindsBOPrarity3methodredemptionlevel20id33993
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 43918, 33993, 3)
	self:AddCompanionFlags(PetDB, 43918, 1,2,10)
	-- No acquire information

	-- Clockwork Rocket Bot - 45048
	-- type15.3spellid45048item_bindsBOPsource1method_dropstype15.0rlevel1lootCount33rarity1totalLootCount33nameWinter Veil Giftlevel1id34426rarity3methoddropped-by,contained-in-itemlevel1id34425
	-- No location information
	-- Mob Drop
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 45048, 34425, 3)
	self:AddCompanionFlags(PetDB, 45048, 1,2)
	self:AddCompanionAcquire(PetDB, 45048, 4, 34426)

	-- Tiny Sporebat - 45082
	-- type15.2method_vendorstype7price000242453000000000descSporeggar Quartermasterreact11disp17626minlevel64locs3521nameMycahid18382spellid45082item_bindsBOPsource2rarity3methodsold-bylevel70id34478
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:AddCompanionFlags(PetDB, 45082, 1,2,3)
	self:AddCompanionAcquire(PetDB, 45082, 1, 18382)

	-- Rocket Chicken - 45125
	-- type15.2method_redemptionUnknownspellid45125item_bindsBOPrarity3methodredemptionlevel1id34492
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 45125, 34492, 3)
	self:AddCompanionFlags(PetDB, 45125, 1,2,10)
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2method_redemptionUnknownspellid45127item_bindsBOPrarity4methodredemptionlevel1id34493
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 45127, 34493, 4)
	self:AddCompanionFlags(PetDB, 45127, 1,2,10)
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0spellid45890item_bindsBOPrarity3methodlevel20id34955
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 45890, 34955, 3)
	-- No filter flags
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2spellid46425item_bindsBOPmethod_dropstype15.0source3lootCount33rarity1totalLootCount7879nameBag of Fishing Treasureslevel70id35348rarity3methodcontained-in-itemlevel20id35349
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 46425, 35349, 3)
	self:AddCompanionFlags(PetDB, 46425, 1,2)
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2spellid46426item_bindsBOPmethod_dropstype15.0source3lootCount59rarity1totalLootCount7879nameBag of Fishing Treasureslevel70id35348rarity3methodcontained-in-itemlevel20id35350
	-- Unknown
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 46426, 35350, 3)
	self:AddCompanionFlags(PetDB, 46426, 1,2)
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2spellid46599item_bindsBOPsource1method_dropstype7descLord of the Blood Elvesreact33disp20023minlevel72lootCount153totalLootCount9689locs409537033845nameKael'thas Sunstriderid23054classification3type7descLord of the Blood Elvesreact33disp22906minlevel72lootCount89totalLootCount6321locs4095nameKael'thas Sunstriderid24664classification1rarity3methoddropped-bylevel70id35504
	-- Instance: 4095 - type1expansion1limit5minlevel70maxlevel70territory1nameMagisters' Terraceid4095category3
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1expansion1limit5minlevel70maxlevel70territory1nameMagisters' Terraceid4095category3
	-- Mob Drop
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:AddCompanionFlags(PetDB, 46599, 1,2,6,7,15)
	self:AddCompanionAcquire(PetDB, 46599, 4, 23054, 4, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2method_redemptionUnknownspellid49964item_bindsBOPrarity3methodredemptionlevel20id38050
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 49964, 38050, 3)
	self:AddCompanionFlags(PetDB, 49964, 1,2,10)
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- type15.2method_vendorstype7price00000000descSkyguard Quartermasterreact11minlevel70locs3519nameGrellaid23367spellid51716item_bindsBOPsource2rarity3methodsold-bylevel70id38628
	-- Vendor
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:AddCompanionFlags(PetDB, 51716, 1,2,3)
	self:AddCompanionAcquire(PetDB, 51716, 1, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0method_redemptionUnknownspellid53082item_bindsBOPrarity3methodredemptionlevel20id39656
	-- Redemption
	 companioncount = companioncount + 1	self:AddCompanion(PetDB, 53082, 39656, 3)
	self:AddCompanionFlags(PetDB, 53082, 1,2,10)
	-- No acquire information

	return companioncount

end
