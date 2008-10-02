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
	-- type15.2spell_id4055source4method_crafted3928level15methodcraftedrarity1id4401
	-- Crafted
	self:AddCompanion(PetDB, 4055, 4401, 1)

	-- Cat Carrier (Bombay) - 
	-- method_vendorstype7price400000react13minlevel5descCrazy Cat LadynameDonni Anthanialocs12id6367type15.2spell_id10673source2level20methodsold-byrarity1id8485
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)

	-- Cat Carrier (Cornish Rex) - 
	-- method_vendorstype7price400000react13minlevel5descCrazy Cat LadynameDonni Anthanialocs12id6367type15.2spell_id10674source2level20methodsold-byrarity1id8486
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)

	-- Cat Carrier (Black Tabby) - 
	-- type15.2spell_id10675source1level20method_dropstotalLootCount24111type7react13minlevel31maxlevel32nameDalaran Shield GuardlootCount40locs36267id2271totalLootCount306type7classification4react13minlevel21nameDalaran SpellscribelootCount33locs130id1920totalLootCount13900type7react13minlevel34maxlevel35nameDalaran SummonerlootCount14locs36id2358totalLootCount10307type7react13minlevel32maxlevel33nameDalaran TheurgistlootCount22locs36267id2272methoddropped-byrarity1id8491
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)

	-- Cat Carrier (Orange Tabby) - 
	-- method_vendorstype7price400000react13minlevel5descCrazy Cat LadynameDonni Anthanialocs12id6367type15.2spell_id10676source2level20methodsold-byrarity1id8487
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)

	-- Cat Carrier (Siamese) - 
	-- method_vendorstype7price600000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type15.2spell_id10677source12level20method_dropstotalLootCount28314type7classification1react33minlevel20descThe Ship's Cookdisp1305nameCookielootCount1590locs1581id645methoddropped-by,sold-byrarity1id8490
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)

	-- Cat Carrier (Silver Tabby) - 
	-- method_vendorstype7price400000react13minlevel5descCrazy Cat LadynameDonni Anthanialocs12id6367type15.2spell_id10678source2level20methodsold-byrarity1id8488
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)

	-- Cat Carrier (White Kitten) - 
	-- method_vendorstype7price600000react13minlevel5descBoy with kittensdisp7935nameLil Timmylocs1519id8666type15.2spell_id10679source2level20methodsold-byrarity1id8489
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)

	-- Parrot Cage (Cockatiel) - 
	-- method_vendorstype7price400000react13minlevel42descPirate SuppliesnameNarkklocs33id2663type15.2spell_id10680source2level20methodsold-byrarity1id8496
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)

	-- Parrot Cage (Hyacinth Macaw) - 
	-- type15.2spell_id10682source13level20method_dropstotalLootCount5699type7react33minlevel39name\"Pretty Boy\" DuncanlootCount1locs33id2545totalLootCount10436type7react33minlevel42nameBloodsail DeckhandlootCount4locs33id4505totalLootCount35020type7react33minlevel39maxlevel41nameBloodsail MagelootCount6locs33id1562totalLootCount35811type7react33minlevel39maxlevel41disp793nameBloodsail RaiderlootCount9locs33id1561totalLootCount10895type7react33minlevel41maxlevel42disp796nameBloodsail Sea DoglootCount4locs33id1565totalLootCount16140type7react33minlevel40disp1902nameBloodsail SwabbylootCount1locs33id4506totalLootCount66557type7react33minlevel40maxlevel41disp796nameBloodsail SwashbucklerlootCount5locs33id1563totalLootCount64146type7react33minlevel40maxlevel41nameBloodsail WarlocklootCount4locs33id1564methoddropped-byrarity1id8494
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)

	-- Parrot Cage (Green Wing Macaw) - 
	-- type15.2spell_id10683source1level20method_dropstotalLootCount104503type7classification1react33minlevel19maxlevel20nameDefias PiratelootCount3042locs1581id657methoddropped-byrarity1id8492
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)

	-- Parrot Cage (Senegal) - 
	-- method_vendorstype7price400000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type7price400000react13minlevel42descPirate SuppliesnameNarkklocs33id2663type15.2spell_id10684source2level20methodsold-byrarity1id8495
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)

	-- Ancona Chicken - 
	-- method_vendorstype7price1000000react11minlevel51nameMagus Tirthlocs400id6548type15.2spell_id10685source2level35methodsold-byrarity1id11023
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)

	-- Cockroach - 
	-- method_vendorstype7price500000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type7price500000react31minlevel30descCockroach VendornameJeremiah Paysonlocs1497id8403type15.2spell_id10688source2level30methodsold-byrarity1id10393
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)

	-- Dark Whelpling - 
	-- type15.2spell_id10695source1level30method_dropstotalLootCount71023type2react33minlevel41maxlevel43disp715nameScalding WhelplootCount78locs3id2725totalLootCount34544type2react33minlevel39maxlevel40disp397nameSearing WhelplootCount32locs152159id4324methoddropped-byrarity1id10822
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)

	-- Azure Whelpling - 
	-- type15.2spell_id10696source1level30method_dropstotalLootCount3824type2classification1react33minlevel50maxlevel51disp196nameBlue DragonspawnlootCount2locs16id193totalLootCount1451type2classification1react33minlevel52maxlevel53disp6760nameBlue ScalebanelootCount3locs16id6130totalLootCount5095type2classification1react33minlevel51maxlevel52disp6761nameDraconic MageweaverlootCount8locs16id6131methoddropped-byrarity1id34535
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)

	-- Tiny Crimson Whelpling - 
	-- type15.2spell_id10697source1level30method_dropstotalLootCount4347type2react33minlevel25maxlevel26disp505nameCrimson WhelplootCount13locs11id1069totalLootCount1398type2react33minlevel26maxlevel27disp8712nameFlamesnorting WhelplootCount7locs11id1044totalLootCount3731type2react33minlevel23maxlevel24disp9583nameRed WhelplootCount11locs11id1042methoddropped-byrarity1id8499
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)

	-- Tiny Emerald Whelpling - 
	-- type15.2spell_id10698source1level30method_dropstotalLootCount16719type2react33minlevel35maxlevel36disp621nameDreaming WhelplootCount38locs8id741methoddropped-byrarity1id8498
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)

	-- Wood Frog Box - 
	-- method_vendorstype7price1000000react21minlevel4maxlevel70disp14589nameFliklocs122153519id14860type15.2spell_id10703source2level35methodsold-byrarity1id11027
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)

	-- Tree Frog Box - 
	-- method_vendorstype7price1000000react21minlevel4maxlevel70disp14589nameFliklocs122153519id14860type15.2spell_id10704source2level35methodsold-byrarity1id11026
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)

	-- Hawk Owl - 
	-- method_vendorstype7price500000react13minlevel30descOwl TrainernameShylenailocs1657id8665type15.2spell_id10706source2level30methodsold-byrarity1id8501
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)

	-- Great Horned Owl - 
	-- method_vendorstype7price500000react13minlevel30descOwl TrainernameShylenailocs1657id8665type15.2spell_id10707source2level30methodsold-byrarity1id8500
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)

	-- Prairie Dog Whistle - 
	-- method_vendorstype7price500000react31minlevel30descPrairie Dog VendornameHalpalocs1638id8401type15.2spell_id10709source2level30methodsold-byrarity1id10394
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)

	-- Rabbit Crate (Snowshoe) - 
	-- method_vendorstype7price200000react13minlevel1nameYarlyn Amberstilllocs1id1263type15.2spell_id10711source23level20methodsold-byrarity1id8497
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)

	-- Black Kingsnake - 
	-- method_vendorstype7price500000react31minlevel30descSnake VendornameXan'tishlocs1637id8404type15.2spell_id10714source2level30methodsold-byrarity1id10360
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)

	-- Brown Snake - 
	-- method_vendorstype7price500000react31minlevel30descSnake VendornameXan'tishlocs1637id8404type15.2spell_id10716source2level30methodsold-byrarity1id10361
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)

	-- Crimson Snake - 
	-- method_vendorstype7price500000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type7price500000react31minlevel30descSnake VendornameXan'tishlocs1637id8404type15.2spell_id10717source2level30methodsold-byrarity1id10392
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)

	-- Mechanical Chicken - 
	-- type15.2spell_id12243source3method_queststype0coin6000givenitems103981xp7100side1level50nameAn OOX of Your Ownid3721category035level40methodrewardfromrarity1id10398
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)

	-- Chicken Egg - 
	-- type15.0spell_id13548source1level1method_dropstotalLootCount856type3nameFarm Chicken EgglootCount842locs40id161513methoddropped-by,contained-in-objectrarity1id11110
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)

	-- Pet Bombling - 
	-- type7.3spell_id15048source4method_crafted15628level41methodcraftedrarity1id11825
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)

	-- Lil' Smoky - 
	-- type7.3spell_id15049source4method_crafted15633level41methodcraftedrarity1id11826
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)

	-- Sprite Darter Egg - 
	-- type15.0spell_id15067source3method_queststype0coin360givenitems114741xp625side2level48nameBecoming a Parentid4298category1357level47methodrewardfromrarity1id11474
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)

	-- Worg Carrier - 
	-- type15.0spell_id15999source3method_queststype81coin9000givenitems122641xp13950side1level59nameKibler's Exotic Petsid4729category31583level59methodrewardfromrarity1id12264
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)

	-- Smolderweb Carrier - 
	-- type15.0spell_id16450source3method_queststype81coin9000givenitems125291xp13950side1level59nameEn-Ay-Es-Tee-Whyid4862category31583level59methodrewardfromrarity1id12529
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)

	-- Bloodsail Admiral's Hat - 
	-- type4.1spell_id17567source3method_queststype0coin8700givenitems121851side1level60nameAvast Ye, Admiral!id4621category033level60armor63methodrewardfromrarity2id12185
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)

	-- Panda Collar - 
	-- type15.0spell_id17707source3method_queststype0choiceitems135841135831135821coin0level1nameWelcome!id5805category024type0choiceitems135841135831135821coin0level1nameWelcome!id5841category0132type0choiceitems135841135831135821coin0level1nameWelcome!id5842category1188type0choiceitems135841135831135821coin0level1nameWelcome!id5843category1363type0choiceitems135841135831135821coin0level1nameWelcome!id5844category1221type0choiceitems135841135831135821coin0level1nameWelcome!id5847category0154type0choiceitems135841135831135821coin0side4level1nameWelcome!id8547category03431type0choiceitems135841135831135821coin0side2level1nameWelcome!id9278category13526type0choiceitems135841135831135821coin0level1nameWelcome!id12781category00level20methodrewardfromrarity3id13583
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)

	-- Diablo Stone - 
	-- type15.0spell_id17708source3method_queststype0choiceitems135841135831135821coin0level1nameWelcome!id5805category024type0choiceitems135841135831135821coin0level1nameWelcome!id5841category0132type0choiceitems135841135831135821coin0level1nameWelcome!id5842category1188type0choiceitems135841135831135821coin0level1nameWelcome!id5843category1363type0choiceitems135841135831135821coin0level1nameWelcome!id5844category1221type0choiceitems135841135831135821coin0level1nameWelcome!id5847category0154type0choiceitems135841135831135821coin0side4level1nameWelcome!id8547category03431type0choiceitems135841135831135821coin0side2level1nameWelcome!id9278category13526type0choiceitems135841135831135821coin0level1nameWelcome!id12781category00level20methodrewardfromrarity3id13584
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)

	-- Zergling Leash - 
	-- type15.0spell_id17709source3method_queststype0choiceitems135841135831135821coin0level1nameWelcome!id5805category024type0choiceitems135841135831135821coin0level1nameWelcome!id5841category0132type0choiceitems135841135831135821coin0level1nameWelcome!id5842category1188type0choiceitems135841135831135821coin0level1nameWelcome!id5843category1363type0choiceitems135841135831135821coin0level1nameWelcome!id5844category1221type0choiceitems135841135831135821coin0level1nameWelcome!id5847category0154type0choiceitems135841135831135821coin0side4level1nameWelcome!id8547category03431type0choiceitems135841135831135821coin0side2level1nameWelcome!id9278category13526type0choiceitems135841135831135821coin0level1nameWelcome!id12781category00level20methodrewardfromrarity3id13582
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)

	-- Lifelike Mechanical Toad - 
	-- type15.2spell_id19772source4method_crafted19793level53methodcraftedrarity1id15996
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)

	-- Orcish Orphan Whistle - 
	-- type15.0spell_id23012source3method_crafted23125level10methodcraftedrarity1id18597
	-- Crafted
	--self:AddCompanion(PetDB, 23012, 18597, 1)

	-- Human Orphan Whistle - 
	-- type15.0spell_id23013source3method_crafted23124level10methodcraftedrarity1id18598
	-- Crafted
	--self:AddCompanion(PetDB, 23013, 18598, 1)

	-- A Jubling's Tiny Home - 
	-- type15.2spell_id23811method_crafted23851level35methodcraftedrarity1id19450
	-- Crafted
	self:AddCompanion(PetDB, 23811, 19450, 1)

	-- Blue Murloc Egg - 
	-- type15.0spell_id24696level20methodrarity3id20371
	self:AddCompanion(PetDB, 24696, 20371, 3)

	-- Lurky's Egg - 
	-- type15.0spell_id24988level1methodrarity3id30360
	self:AddCompanion(PetDB, 24988, 30360, 3)

	-- Disgusting Oozeling - 
	-- type15.2spell_id25162level55method_dropstotalLootCount951type15.0source1level50rarity1nameOozing BaglootCount17id20768methodcontained-in-itemrarity1id20769
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)

	-- Baby Shark - 
	-- type15.2spell_id25849level20methodrarity1id21168
	--self:AddCompanion(PetDB, 25849, 21168, 1)

	-- Tranquil Mechanical Yeti - 
	-- type15.2spell_id26010source4method_crafted26011level60methodcraftedrarity1id21277
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)

	-- Snowman Kit - 
	-- type15.3spell_id26469source1level1method_dropstotalLootCount31type15.0rlevel1level1rarity1nameGaily Wrapped PresentlootCount4id21310methoddropped-by,contained-in-itemrarity1id21309
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)

	-- Jingling Bell - 
	-- type15.3spell_id26528source1level1method_dropstotalLootCount31type15.0rlevel1level1rarity1nameGaily Wrapped PresentlootCount6id21310methoddropped-by,contained-in-itemrarity1id21308
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)

	-- Green Helper Box - 
	-- type15.3spell_id26532source1level1method_dropstotalLootCount31type15.0rlevel1level1rarity1nameGaily Wrapped PresentlootCount6id21310methoddropped-by,contained-in-itemrarity1id21301
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)

	-- Red Helper Box - 
	-- type15.3spell_id26541source1level1method_dropstotalLootCount31type15.0rlevel1level1rarity1nameGaily Wrapped PresentlootCount15id21310methoddropped-by,contained-in-itemrarity1id21305
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)

	-- Pink Murloc Egg - 
	-- type15.0spell_id27241level20methodrarity3id22114
	self:AddCompanion(PetDB, 27241, 22114, 3)

	-- Truesilver Shafted Arrow - 
	-- type15.0spell_id27570level1method_dropstotalLootCount18type15.3level1rarity1nameGift of Adoration: StormwindlootCount1id21981totalLootCount12type15.3level1rarity1namePledge of Adoration: IronforgelootCount1id22154methodcontained-in-itemrarity1id22235
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)

	-- Polar Bear Collar - 
	-- type15.0spell_id28505level1methodrarity1id22781
	self:AddCompanion(PetDB, 28505, 22781, 1)

	-- Turtle Box - 
	-- type15.0spell_id28738source3method_queststype0choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171category-3284type0choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502category-3284level1methodrewardfromrarity1id23002
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)

	-- Piglet's Collar - 
	-- type15.0spell_id28739source3method_queststype0choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171category-3284type0choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502category-3284level1methodrewardfromrarity1id23007
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)

	-- Rat Cage - 
	-- type15.0spell_id28740source3method_queststype0choiceitems230071230151230021230221coin1020xp3100side2level60nameA Warden of the Allianceid171category-3284type0choiceitems230071230151230021230221coin0xp3100side4level60nameA Warden of the Hordeid5502category-3284level1methodrewardfromrarity1id23015
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)

	-- Hippogryph Hatchling - 
	-- type15.0spell_id30156level1methodrarity4id23713
	self:AddCompanion(PetDB, 30156, 23713, 4)

	-- Netherwhelp's Collar - 
	-- type15.0spell_id32298source3method_crafted42426level20methodcraftedrarity3id25535
	-- Crafted
	self:AddCompanion(PetDB, 32298, 25535, 3)

	-- Magical Crawdad Box - 
	-- type15.0spell_id33050method_crafted33062level70methodcraftedrarity1id27445
	-- Crafted
	self:AddCompanion(PetDB, 33050, 27445, 1)

	-- Mana Wyrmling - 
	-- method_vendorstype7price40000000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type15.2spell_id35156source2level70methodsold-byrarity1id29363
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)

	-- Brown Rabbit Crate - 
	-- method_vendorstype7price10000000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type15.2spell_id35239source2level70methodsold-byrarity1id29364
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)

	-- Blue Moth Egg - 
	-- method_vendorstype7price500000react13minlevel30descMoth KeepernameSixxlocs3557id21019type15.2spell_id35907source2level20methodsold-byrarity1id29901
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)

	-- Red Moth Egg - 
	-- method_vendorstype7price10000000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type15.2spell_id35909source2level70methodsold-byrarity1id29902
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)

	-- Yellow Moth Egg - 
	-- method_vendorstype7price500000react13minlevel30descMoth KeepernameSixxlocs3557id21019type15.2spell_id35910source2level20methodsold-byrarity1id29903
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)

	-- White Moth Egg - 
	-- method_vendorstype7price500000react13minlevel30descMoth KeepernameSixxlocs3557id21019type15.2spell_id35911source2level20methodsold-byrarity1id29904
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)

	-- Golden Dragonhawk Hatchling - 
	-- method_vendorstype7price500000react31minlevel9nameJilannelocs3430id16860type15.2spell_id36027source2level20methodsold-byrarity1id29953
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)

	-- Red Dragonhawk Hatchling - 
	-- method_vendorstype7price500000react31minlevel9nameJilannelocs3430id16860type15.2spell_id36028source2level20methodsold-byrarity1id29956
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)

	-- Silver Dragonhawk Hatchling - 
	-- method_vendorstype7price500000react31minlevel9nameJilannelocs3430id16860type15.2spell_id36029source2level20methodsold-byrarity1id29957
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)

	-- Blue Dragonhawk Hatchling - 
	-- method_vendorstype7price10000000react11minlevel60descExotic Creaturesdisp20988nameDealer Rashaadlocs352385id20980type15.2spell_id36031source2level70methodsold-byrarity1id29958
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)

	-- Captured Firefly - 
	-- type15.2spell_id36034source1level20method_dropstotalLootCount151282type10react33minlevel62disp18723nameBogflare NeedlerlootCount77locs3521id20197methoddropped-byrarity1id29960
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)

	-- Miniwing - 
	-- type15.0spell_id39181source3method_queststype1choiceitems317661317651317641coin66000givenitems317601xp13750side1level65nameSkywingid10898category23519level96methodrewardfromrarity1id31760
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)

	-- Blood Elf Orphan Whistle - 
	-- type15.0spell_id39478source3method_crafted39512level1methodcraftedrarity1id31880
	-- Crafted
	--self:AddCompanion(PetDB, 39478, 31880, 1)

	-- Draenei Orphan Whistle - 
	-- type15.0spell_id39479source3method_crafted39513level1methodcraftedrarity1id31881
	-- Crafted
	--self:AddCompanion(PetDB, 39479, 31881, 1)

	-- Wolpertinger's Tankard - 
	-- type15.0spell_id39709source3method_queststype0coin0givenitems322331nameCatch the Wild Wolpertinger!id11117category-3370type0coin0givenitems322331nameCatch the Wild Wolpertinger!id11431category-3370level20methodrewardfromrarity3id32233
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)

	-- Fortune Coin - 
	-- type15.0spell_id40405method_crafted40406level1methodcraftedrarity3id32498
	-- Crafted
	self:AddCompanion(PetDB, 40405, 32498, 3)

	-- Banana Charm - 
	-- type15.0spell_id40549method_crafted40550level1methodcraftedrarity3id32588
	-- Crafted
	self:AddCompanion(PetDB, 40549, 32588, 3)

	-- Sleepy Willy - 
	-- type15.0spell_id40613source3method_queststype0choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966category-3284type0choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967category-3284level20methodrewardfromrarity3id32617
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)

	-- Egbert's Egg - 
	-- type15.0spell_id40614source3method_queststype0choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966category-3284type0choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967category-3284level20methodrewardfromrarity3id32616
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)

	-- Elekk Training Collar - 
	-- type15.0spell_id40634source3method_queststype0choiceitems326221326161326171coin0xp12300side2level70nameBack to the Orphanageid10966category-3284type0choiceitems326161326221326171coin0xp12300side4level70nameBack to the Orphanageid10967category-3284level20methodrewardfromrarity3id32622
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)

	-- Reeking Pet Carrier - 
	-- type15.2spell_id40990level1methodrarity3id40653
	self:AddCompanion(PetDB, 40990, 40653, 3)

	-- Sinister Squashling - 
	-- type15.0spell_id42609level20methodrarity3id33154
	self:AddCompanion(PetDB, 42609, 33154, 3)

	-- Toothy's Bucket - 
	-- type15.2spell_id43697level20method_dropstotalLootCount7879type15.0source3level70rarity1nameBag of Fishing TreasureslootCount45id35348methodcontained-in-itemrarity3id33816
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)

	-- Muckbreath's Bucket - 
	-- type15.2spell_id43698level20method_dropstotalLootCount7879type15.0source3level70rarity1nameBag of Fishing TreasureslootCount49id35348methodcontained-in-itemrarity3id33818
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)

	-- Mojo - 
	-- type15.0spell_id43918method_crafted43923level20methodcraftedrarity3id33993
	-- Crafted
	self:AddCompanion(PetDB, 43918, 33993, 3)

	-- Clockwork Rocket Bot - 
	-- type15.3spell_id45048source1level1method_dropstotalLootCount33type15.0rlevel1level1rarity1nameWinter Veil GiftlootCount33id34426methoddropped-by,contained-in-itemrarity3id34425
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)

	-- Tiny Sporebat - 
	-- method_vendorstype7price000242453000000000react11minlevel64descSporeggar Quartermasterdisp17626nameMycahlocs3521id18382type15.2spell_id45082source2level70methodsold-byrarity3id34478
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)

	-- Rocket Chicken - 
	-- type15.2spell_id45125method_crafted45126level1methodcraftedrarity3id34492
	-- Crafted
	self:AddCompanion(PetDB, 45125, 34492, 3)

	-- Dragon Kite - 
	-- type15.2spell_id45127method_crafted45128level1methodcraftedrarity4id34493
	-- Crafted
	self:AddCompanion(PetDB, 45127, 34493, 4)

	-- Scorched Stone - 
	-- type15.0spell_id45890level20methodrarity3id34955
	self:AddCompanion(PetDB, 45890, 34955, 3)

	-- Snarly's Bucket - 
	-- type15.2spell_id46425level20method_dropstotalLootCount7879type15.0source3level70rarity1nameBag of Fishing TreasureslootCount33id35348methodcontained-in-itemrarity3id35349
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)

	-- Chuck's Bucket - 
	-- type15.2spell_id46426level20method_dropstotalLootCount7879type15.0source3level70rarity1nameBag of Fishing TreasureslootCount59id35348methodcontained-in-itemrarity3id35350
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)

	-- Phoenix Hatchling - 
	-- type15.2spell_id46599source1level70method_dropstotalLootCount9689type7classification3react33minlevel72descLord of the Blood Elvesdisp20023nameKael'thas SunstriderlootCount153locs409537033845id23054totalLootCount6321type7classification1react33minlevel72descLord of the Blood Elvesdisp22906nameKael'thas SunstriderlootCount89locs4095id24664methoddropped-byrarity3id35504
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)

	-- Soul-Trader Beacon - 
	-- type15.2spell_id49964method_crafted50211level20methodcraftedrarity3id38050
	-- Crafted
	self:AddCompanion(PetDB, 49964, 38050, 3)

	-- Nether Ray Fry - 
	-- method_vendorstype7price00000000react11minlevel70descSkyguard QuartermasternameGrellalocs3519id23367type15.2spell_id51716source2level70methodsold-byrarity3id38628
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)

	-- Tyrael's Hilt - 
	-- type15.0spell_id53082method_crafted53085level20methodcraftedrarity3id39656
	-- Crafted
	self:AddCompanion(PetDB, 53082, 39656, 3)

end
