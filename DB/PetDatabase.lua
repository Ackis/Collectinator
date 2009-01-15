--[[

************************************************************************

PetDatabase.lua

Pet Database data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:AddCompanion(PetDB,SpellID,Item ID,Rarity,Companion Type,Warcraft Pet ID)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

function addon:MakeMiniPetTable(PetDB)

	local companioncount = 0

	-- Mechanical Squirrel Box - 4055
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,4055,4401,1,"CRITTER")
	self:AddCompanionFlags(PetDB,4055,1,2,5,15)
	self:AddCompanionAcquire(PetDB,4055,3,4036,3928)

	-- Cat Carrier (Bombay) - 10673
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10673,8485,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10673,1,3,15)
	self:AddCompanionAcquire(PetDB,10673,1,6367)

	-- Cat Carrier (Cornish Rex) - 10674
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10674,8486,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10674,1,3,15)
	self:AddCompanionAcquire(PetDB,10674,1,6367)

	-- Cat Carrier (Black Tabby) - 10675
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10675,8491,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10675,1,2,10,15)
	self:AddCompanionAcquire(PetDB,10675,4,1920,4,2271,4,2272,4,2358)

	-- Cat Carrier (Orange Tabby) - 10676
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10676,8487,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10676,1,3,15)
	self:AddCompanionAcquire(PetDB,10676,1,6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2source12spellid10677level20method_vendorsprice600000locs3523type7react11descExotic CreaturesnameDealer Rashaadminlevel60id20980method_dropslocs1581type7react33classification1descThe Ship's CooklootCount7571nameCookieminlevel20id645totalLootCount141256methoddropped-by,sold-byid8490item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10677,8490,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10677,1,2,3,6,15)
	self:AddCompanionAcquire(PetDB,10677,1,20980,4,645)

	-- Cat Carrier (Silver Tabby) - 10678
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10678,8488,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10678,1,3,15)
	self:AddCompanionAcquire(PetDB,10678,1,6367)

	-- Cat Carrier (White Kitten) - 10679
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10679,8489,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10679,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10679,1,8666)

	-- Parrot Cage (Cockatiel) - 10680
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10680,8496,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10680,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10680,1,2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10682,8494,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10682,1,2,10,15)
	self:AddCompanionAcquire(PetDB,10682,4,1561,4,1562,4,1563,4,1564,4,1565,4,4505,4,4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10683,8492,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10683,1,2,6,15)
	self:AddCompanionAcquire(PetDB,10683,4,657)

	-- Parrot Cage (Senegal) - 10684
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10684,8495,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10684,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10684,1,2663,1,20980)

	-- Ancona Chicken - 10685
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10685,11023,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10685,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10685,1,6548)

	-- Cockroach - 10688
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10688,10393,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10688,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10688,1,8403,1,20980)

	-- Dark Whelpling - 10695
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10695,10822,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10695,1,2,7,10,15)
	self:AddCompanionAcquire(PetDB,10695,4,2725,4,4323,4,4324,4,4345)

	-- Azure Whelpling - 10696
	-- type15.2source1spellid10696level30method_dropslocs16maxlevel51type2react33classification1lootCount6nameBlue Dragonspawnminlevel50id193totalLootCount1444locs16maxlevel54type2react33classification1lootCount2nameDraconic Magelordminlevel53id6129totalLootCount1156locs16maxlevel53type2react33classification1lootCount8nameBlue Scalebaneminlevel52id6130totalLootCount2364locs16maxlevel52type2react33classification1lootCount13nameDraconic Mageweaverminlevel51id6131totalLootCount3023methoddropped-byid34535item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10696,34535,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10696,1,2,10,15)
	self:AddCompanionAcquire(PetDB,10696,4,193,4,6129,4,6130,4,6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2source1spellid10697level30method_dropslocs11maxlevel24type2react33lootCount3nameRed Whelpminlevel23id1042totalLootCount7699locs11maxlevel27type2react33lootCount7nameFlamesnorting Whelpminlevel26id1044totalLootCount3161locs11maxlevel26type2react33lootCount18nameCrimson Whelpminlevel25id1069totalLootCount6921methoddropped-byid8499item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10697,8499,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10697,1,2,10,15)
	self:AddCompanionAcquire(PetDB,10697,4,1042,4,1044,4,1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2source1spellid10698level30method_dropslocs841maxlevel35type2react33lootCount2nameAdolescent Whelpminlevel34id740totalLootCount20806locs841maxlevel36type2react33lootCount28nameDreaming Whelpminlevel35id741totalLootCount22744methoddropped-byid8498item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10698,8498,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10698,1,2,10,15)
	self:AddCompanionAcquire(PetDB,10698,4,740,4,741)

	-- Wood Frog Box - 10703
	-- type15.2source2spellid10703level35method_vendorsprice1000000locs35193703type7react11nameFlikminlevel4id14860methodsold-byid11027item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10703,11027,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10703,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10703,1,14860)

	-- Tree Frog Box - 10704
	-- type15.2source2spellid10704level35method_vendorsprice1000000locs35193703type7react11nameFlikminlevel4id14860methodsold-byid11026item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10704,11026,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10704,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10704,1,14860)

	-- Hawk Owl - 10706
	-- type15.2source2spellid10706level30method_vendorsprice500000locs1657type7react13descOwl TrainernameShylenaiminlevel30id8665methodsold-byid8501item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10706,8501,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10706,1,3,15)
	self:AddCompanionAcquire(PetDB,10706,1,8665)

	-- Great Horned Owl - 10707
	-- type15.2source2spellid10707level30method_vendorsprice500000locs1657type7react13descOwl TrainernameShylenaiminlevel30id8665methodsold-byid8500item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10707,8500,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10707,1,3,15)
	self:AddCompanionAcquire(PetDB,10707,1,8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2source2spellid10709level30method_vendorsprice500000locs1638type7react31descPrairie Dog VendornameHalpaminlevel30id8401methodsold-byid10394item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10709,10394,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10709,2,3,15)
	self:AddCompanionAcquire(PetDB,10709,1,8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2source23spellid10711level20method_vendorsprice200000locs1type7react13nameYarlyn Amberstillminlevel1id1263methodsold-byid8497item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10711,8497,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10711,1,3,15)
	self:AddCompanionAcquire(PetDB,10711,1,1263)

	-- Black Kingsnake - 10714
	-- type15.2source2spellid10714level30method_vendorsprice500000locs16373703type7react31descSnake VendornameXan'tishminlevel30id8404methodsold-byid10360item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10714,10360,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10714,2,3,15)
	self:AddCompanionAcquire(PetDB,10714,1,8404)

	-- Brown Snake - 10716
	-- type15.2source2spellid10716level30method_vendorsprice500000locs16373703type7react31descSnake VendornameXan'tishminlevel30id8404methodsold-byid10361item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10716,10361,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10716,2,3,15)
	self:AddCompanionAcquire(PetDB,10716,1,8404)

	-- Crimson Snake - 10717
	-- type15.2source2spellid10717level30method_vendorsprice500000locs16373703type7react31descSnake VendornameXan'tishminlevel30id8404price500000locs3523type7react11descExotic CreaturesnameDealer Rashaadminlevel60id20980methodsold-byid10392item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,10717,10392,1,"CRITTER")
	self:AddCompanionFlags(PetDB,10717,1,2,3,15)
	self:AddCompanionAcquire(PetDB,10717,1,8404,1,20980)

	-- Mechanical Chicken - 12243
	-- type15.2method_queststype0category035level50coin6000givenitems103981nameAn OOX of Your Ownid3721source3spellid12243level40methodrewardfromid10398item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,12243,10398,1,"CRITTER")
	self:AddCompanionFlags(PetDB,12243,4,15)
	self:AddCompanionAcquire(PetDB,12243,2,3721)

	-- Chicken Egg - 13548
	-- type15.0source1spellid13548level1method_dropslocs101217-1type-3lootCount6688nameFarm Chicken Eggid161513totalLootCount6688methodcontained-in-objectid11110item_bindsBOPrarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,13548,11110,1,"CRITTER")
	self:AddCompanionFlags(PetDB,13548,1,2,16)
	-- No acquire information

	-- Pet Bombling - 15048
	-- type15.2source4method_craftedskillup0205205205produces118251category11school0reagents43941707717191138606learned205skillEngineeringnamePet Bomblingid15628rarity1spellid15048level41methodcraftedid11825item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15048,11825,1,"CRITTER")
	self:AddCompanionFlags(PetDB,15048,1,2,5,16,25)
	self:AddCompanionAcquire(PetDB,15048,3,4036,15628)

	-- Lil' Smoky - 15049
	-- type15.2source4method_craftedskillup0205205205produces118261category11school0reagents7075143892719113860260371learned205skillEngineeringnameLil' Smokyid15633rarity1spellid15049level41methodcraftedid11826item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15049,11826,1,"CRITTER")
	self:AddCompanionFlags(PetDB,15049,1,2,5,16,25)
	self:AddCompanionAcquire(PetDB,15049,3,4036,15633)

	-- Sprite Darter Egg - 15067
	-- type15.0method_queststype0category1357side2level48coin360givenitems114741nameBecoming a Parentid4298xp625source3spellid15067level47methodrewardfromid11474item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15067,11474,1,"CRITTER")
	self:AddCompanionFlags(PetDB,15067,1,4,16)
	self:AddCompanionAcquire(PetDB,15067,2,4298)

	-- Worg Carrier - 15999
	-- type15.0method_queststype81category31583side1level59coin9000givenitems122641nameKibler's Exotic Petsid4729xp13950source3spellid15999level59methodrewardfromid12264item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,15999,12264,1,"CRITTER")
	self:AddCompanionFlags(PetDB,15999,1,2,4,16)
	self:AddCompanionAcquire(PetDB,15999,2,4729)

	-- Smolderweb Carrier - 16450
	-- type15.0method_queststype81category31583side1level59coin9000givenitems125291nameEn-Ay-Es-Tee-Whyid4862xp13950source3spellid16450level59methodrewardfromid12529item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,16450,12529,1,"CRITTER")
	self:AddCompanionFlags(PetDB,16450,1,2,4,16)
	self:AddCompanionAcquire(PetDB,16450,2,4862)

	-- Panda Collar - 17707
	-- type15.0method_queststype0choiceitems135841135831135821category024side2level1coin0nameWelcome!id5805type0choiceitems135841135831135821category0132side2level1coin0nameWelcome!id5841type0choiceitems135841135831135821category1188side2level1coin0nameWelcome!id5842type0choiceitems135841135831135821category1363side4level1coin0nameWelcome!id5843type0choiceitems135841135831135821category1221side4level1coin0nameWelcome!id5844type0choiceitems135841135831135821category0154side4level1coin0nameWelcome!id5847type0choiceitems135841135831135821category03431side4level1coin0nameWelcome!id8547type0choiceitems135841135831135821category13526side2level1coin0nameWelcome!id9278type0choiceitems135841135831135821category00side1level1coin0nameWelcome!id12781source3spellid17707level20methodrewardfromid13583item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,17707,13583,3,"CRITTER")
	self:AddCompanionFlags(PetDB,17707,1,2,4,13,16)
	self:AddCompanionAcquire(PetDB,17707,2,5805,2,5841,2,5842,2,5843,2,5844,2,5847,2,8547,2,9278,2,12781,8,10)

	-- Diablo Stone - 17708
	-- type15.0method_queststype0choiceitems135841135831135821category024side2level1coin0nameWelcome!id5805type0choiceitems135841135831135821category0132side2level1coin0nameWelcome!id5841type0choiceitems135841135831135821category1188side2level1coin0nameWelcome!id5842type0choiceitems135841135831135821category1363side4level1coin0nameWelcome!id5843type0choiceitems135841135831135821category1221side4level1coin0nameWelcome!id5844type0choiceitems135841135831135821category0154side4level1coin0nameWelcome!id5847type0choiceitems135841135831135821category03431side4level1coin0nameWelcome!id8547type0choiceitems135841135831135821category13526side2level1coin0nameWelcome!id9278type0choiceitems135841135831135821category00side1level1coin0nameWelcome!id12781source3spellid17708level20methodrewardfromid13584item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,17708,13584,3,"CRITTER")
	self:AddCompanionFlags(PetDB,17708,1,2,4,13,16)
	self:AddCompanionAcquire(PetDB,17708,2,5805,2,5841,2,5842,2,5843,2,5844,2,5847,2,8547,2,9278,2,12781,8,10)

	-- Zergling Leash - 17709
	-- type15.0method_queststype0choiceitems135841135831135821category024side2level1coin0nameWelcome!id5805type0choiceitems135841135831135821category0132side2level1coin0nameWelcome!id5841type0choiceitems135841135831135821category1188side2level1coin0nameWelcome!id5842type0choiceitems135841135831135821category1363side4level1coin0nameWelcome!id5843type0choiceitems135841135831135821category1221side4level1coin0nameWelcome!id5844type0choiceitems135841135831135821category0154side4level1coin0nameWelcome!id5847type0choiceitems135841135831135821category03431side4level1coin0nameWelcome!id8547type0choiceitems135841135831135821category13526side2level1coin0nameWelcome!id9278type0choiceitems135841135831135821category00side1level1coin0nameWelcome!id12781source3spellid17709level20methodrewardfromid13582item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,17709,13582,3,"CRITTER")
	self:AddCompanionFlags(PetDB,17709,1,2,4,13,16)
	self:AddCompanionAcquire(PetDB,17709,2,5805,2,5841,2,5842,2,5843,2,5844,2,5847,2,8547,2,9278,2,12781,8,10)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2source4method_craftedskillup265285295305produces159961category11school0reagents12803115994410558181701learned265skillEngineeringnameLifelike Mechanical Toadid19793rarity1spellid19772level53methodcraftedid15996item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,19772,15996,1,"CRITTER")
	self:AddCompanionFlags(PetDB,19772,1,2,5,15)
	self:AddCompanionAcquire(PetDB,19772,3,4036,19793)

	-- A Jubling's Tiny Home - 23811
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,23811,19450,1,"CRITTER")
	self:AddCompanionFlags(PetDB,23811,16)
	-- No acquire information

	-- Blue Murloc Egg - 24696
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,24696,20371,3,"CRITTER")
	self:AddCompanionFlags(PetDB,24696,12,16)
	self:AddCompanionAcquire(PetDB,24696,8,8)

	-- Lurky's Egg - 24988
	-- type15.0spellid24988level1methodid30360item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,24988,30360,3,"CRITTER")
	self:AddCompanionFlags(PetDB,24988,12,16)
	self:AddCompanionAcquire(PetDB,24988,8,8)

	-- Disgusting Oozeling - 25162
	-- type15.2spellid25162level55method_dropstype15.0source1level50lootCount17nameOozing Bagid20768rarity1methodcontained-in-itemid20769item_bindsBOErarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,25162,20769,1,"CRITTER")
	self:AddCompanionFlags(PetDB,25162,1,2,15)
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2spellid25849level20methodid21168item_bindsBOErarity1

	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB,25849,21168,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,25849,15)
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2source4method_craftedskillup300320330340produces212771category11school0reagents15407115994470792186312105581learned300skillEngineeringnameTranquil Mechanical Yetiid26011rarity1spellid26010level60methodcraftedid21277item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26010,21277,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26010,1,2,5,15)
	self:AddCompanionAcquire(PetDB,26010,3,4036,26011)

	-- Snowman Kit - 26045
	-- type15.3source1spellid26045level1method_dropstype15.0rlevel1source3level1lootCount4nameGaily Wrapped Presentid21310rarity1methodcontained-in-itemid21309item_bindsBOUrarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26045,21309,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26045,1,2)
	-- No acquire information

	-- Jingling Bell - 26529
	-- type15.3source1spellid26529level1method_dropstype15.0rlevel1source3level1lootCount6nameGaily Wrapped Presentid21310rarity1methodcontained-in-itemid21308item_bindsBOUrarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26529,21308,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26529,1,2)
	-- No acquire information

	-- Green Helper Box - 26533
	-- type15.3source1spellid26533level1method_dropstype15.0rlevel1source3level1lootCount6nameGaily Wrapped Presentid21310rarity1methodcontained-in-itemid21301item_bindsBOUrarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26533,21301,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26533,1,2)
	-- No acquire information

	-- Red Helper Box - 26541
	-- type15.3source1spellid26541level1method_dropstype15.0rlevel1source3level1lootCount15nameGaily Wrapped Presentid21310rarity1methodcontained-in-itemid21305item_bindsBOUrarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,26541,21305,1,"CRITTER")
	self:AddCompanionFlags(PetDB,26541,1,2)
	-- No acquire information

	-- Pink Murloc Egg - 27241
	-- type15.0spellid27241level20methodid22114item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,27241,22114,3,"CRITTER")
	self:AddCompanionFlags(PetDB,27241,12,16)
	self:AddCompanionAcquire(PetDB,27241,8,8)

	-- Truesilver Shafted Arrow - 27570
	-- type15.0spellid27570level1method_dropstype15.3level1lootCount1nameGift of Adoration: Stormwindid21981rarity1type15.3level1lootCount1namePledge of Adoration: Ironforgeid22154rarity1methodcontained-in-itemid22235item_bindsBOPrarity1
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,27570,22235,1,"CRITTER")
	self:AddCompanionFlags(PetDB,27570,1,2,16)
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0spellid28505level1methodid22781item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28505,22781,1,"CRITTER")
	self:AddCompanionFlags(PetDB,28505,12,16)
	self:AddCompanionAcquire(PetDB,28505,8,8)

	-- Turtle Box - 28738
	-- type15.0method_queststype0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Allianceid171type0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Hordeid5502source3spellid28738level1methodrewardfromid23002item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28738,23002,1,"CRITTER")
	self:AddCompanionFlags(PetDB,28738,4,16)
	self:AddCompanionAcquire(PetDB,28738,2,171,2,5502)

	-- Piglet's Collar - 28739
	-- type15.0method_queststype0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Allianceid171type0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Hordeid5502source3spellid28739level1methodrewardfromid23007item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28739,23007,1,"CRITTER")
	self:AddCompanionFlags(PetDB,28739,4,16)
	self:AddCompanionAcquire(PetDB,28739,2,171,2,5502)

	-- Rat Cage - 28740
	-- type15.0method_queststype0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Allianceid171type0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Hordeid5502source3spellid28740level1methodrewardfromid23015item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,28740,23015,1,"CRITTER")
	self:AddCompanionFlags(PetDB,28740,4,16)
	self:AddCompanionAcquire(PetDB,28740,2,171,2,5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0spellid30156level1methodid23713item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,30156,23713,4,"CRITTER")
	self:AddCompanionFlags(PetDB,30156,11,16)
	self:AddCompanionAcquire(PetDB,30156,8,1)

	-- Netherwhelp's Collar - 32298
	-- type15.0source3spellid32298level20methodid25535item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,32298,25535,3,"CRITTER")
	self:AddCompanionFlags(PetDB,32298,16)
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0spellid33050level70methodid27445item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,33050,27445,1,"CRITTER")
	self:AddCompanionFlags(PetDB,33050,16)
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2source2spellid35156level70method_vendorsprice40000000locs3523type7react11descExotic CreaturesnameDealer Rashaadminlevel60id20980methodsold-byid29363item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35156,29363,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35156,1,2,3,15)
	self:AddCompanionAcquire(PetDB,35156,1,20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2method_queststype0category-2197level75coin0givenitems293641nameTest Questid13303source23spellid35239level70method_vendorsprice10000000locs3523type7react11descExotic CreaturesnameDealer Rashaadminlevel60id20980methodsold-by,rewardfromid29364item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35239,29364,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35239,1,2,3,4,15)
	self:AddCompanionAcquire(PetDB,35239,1,20980,2,13303)

	-- Blue Moth Egg - 35907
	-- type15.2source2spellid35907level20method_vendorsprice500000locs3557type7react13descMoth KeepernameSixxminlevel30id21019methodsold-byid29901item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35907,29901,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35907,1,3,15)
	self:AddCompanionAcquire(PetDB,35907,1,21019)

	-- Red Moth Egg - 35909
	-- type15.2source2spellid35909level70method_vendorsprice10000000locs3523type7react11descExotic CreaturesnameDealer Rashaadminlevel60id20980methodsold-byid29902item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35909,29902,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35909,1,2,3,15)
	self:AddCompanionAcquire(PetDB,35909,1,20980)

	-- Yellow Moth Egg - 35910
	-- type15.2source2spellid35910level20method_vendorsprice500000locs3557type7react13descMoth KeepernameSixxminlevel30id21019methodsold-byid29903item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35910,29903,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35910,1,3,15)
	self:AddCompanionAcquire(PetDB,35910,1,21019)

	-- White Moth Egg - 35911
	-- type15.2source2spellid35911level20method_vendorsprice500000locs3557type7react13descMoth KeepernameSixxminlevel30id21019methodsold-byid29904item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,35911,29904,1,"CRITTER")
	self:AddCompanionFlags(PetDB,35911,1,3,15)
	self:AddCompanionAcquire(PetDB,35911,1,21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2source2spellid36027level20method_vendorsprice500000locs3430type7react31nameJilanneminlevel9id16860methodsold-byid29953item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36027,29953,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36027,2,3,15)
	self:AddCompanionAcquire(PetDB,36027,1,16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2source2spellid36028level20method_vendorsprice500000locs3430type7react31nameJilanneminlevel9id16860methodsold-byid29956item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36028,29956,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36028,2,3,15)
	self:AddCompanionAcquire(PetDB,36028,1,16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2source2spellid36029level20method_vendorsprice500000locs3430type7react31nameJilanneminlevel9id16860methodsold-byid29957item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36029,29957,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36029,2,3,15)
	self:AddCompanionAcquire(PetDB,36029,1,16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2source2spellid36031level70method_vendorsprice10000000locs3523type7react11descExotic CreaturesnameDealer Rashaadminlevel60id20980methodsold-byid29958item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36031,29958,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36031,1,2,3,15)
	self:AddCompanionAcquire(PetDB,36031,1,20980)

	-- Captured Firefly - 36034
	-- type15.2source1spellid36034level20method_dropslocs3521type1react33lootCount69nameBogflare Needlerminlevel62id20197totalLootCount139267methoddropped-byid29960item_bindsBOErarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,36034,29960,1,"CRITTER")
	self:AddCompanionFlags(PetDB,36034,1,2,10,15)
	self:AddCompanionAcquire(PetDB,36034,4,20197)

	-- Miniwing - 39181
	-- type15.0method_queststype1choiceitems317661317651317641category23519side1level65coin66000givenitems317601nameSkywingid10898xp13750source3spellid39181level96methodrewardfromid31760item_bindsBOPrarity1

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,39181,31760,1,"CRITTER")
	self:AddCompanionFlags(PetDB,39181,1,2,4,16)
	self:AddCompanionAcquire(PetDB,39181,2,10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0source3spellid39478level1methodid31880item_bindsBOPrarity1

	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB,39478,31880,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,39478,16)
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0source3spellid39479level1methodid31881item_bindsBOPrarity1

	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB,39479,31881,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,39479,16)
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0method_queststype0category-3370coin0givenitems322331nameCatch the Wild Wolpertinger!id11117type0category-3370coin0givenitems322331nameCatch the Wild Wolpertinger!id11431source23spellid39709level20method_vendorsprice000locs1537type7react1descBrew of the Month ClubnameLarkin Thunderbrewminlevel50id27478price000locs1637type7react1descBrew of the Month ClubnameRay'maminlevel50id27489methodsold-by,rewardfromid32233item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,39709,32233,3,"CRITTER")
	self:AddCompanionFlags(PetDB,39709,1,2,3,4,16)
	self:AddCompanionAcquire(PetDB,39709,1,27478,1,27489,2,11117,2,11431)

	-- Fortune Coin - 40405
	-- type15.0spellid40405level1methodid32498item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40405,32498,3,"CRITTER")
	self:AddCompanionFlags(PetDB,40405,12,16)
	self:AddCompanionAcquire(PetDB,40405,8,8)

	-- Banana Charm - 40549
	-- type15.0spellid40549level1methodid32588item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40549,32588,3,"CRITTER")
	self:AddCompanionFlags(PetDB,40549,16)
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0method_queststype0choiceitems326221326161326171category-3284coin75900nameBack to the Orphanageid10966type0choiceitems326161326221326171category-3284coin75900nameBack to the Orphanageid10967source3spellid40613level20methodrewardfromid32617item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40613,32617,3,"CRITTER")
	self:AddCompanionFlags(PetDB,40613,4,16)
	self:AddCompanionAcquire(PetDB,40613,2,10966,2,10967)

	-- Egbert's Egg - 40614
	-- type15.0method_queststype0choiceitems326221326161326171category-3284coin75900nameBack to the Orphanageid10966type0choiceitems326161326221326171category-3284coin75900nameBack to the Orphanageid10967source3spellid40614level20methodrewardfromid32616item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40614,32616,3,"CRITTER")
	self:AddCompanionFlags(PetDB,40614,4,16)
	self:AddCompanionAcquire(PetDB,40614,2,10966,2,10967)

	-- Elekk Training Collar - 40634
	-- type15.0method_queststype0choiceitems326221326161326171category-3284coin75900nameBack to the Orphanageid10966type0choiceitems326161326221326171category-3284coin75900nameBack to the Orphanageid10967source3spellid40634level20methodrewardfromid32622item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40634,32622,3,"CRITTER")
	self:AddCompanionFlags(PetDB,40634,4,16)
	self:AddCompanionAcquire(PetDB,40634,2,10966,2,10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2spellid40990level1methodid40653item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,40990,40653,3,"CRITTER")
	self:AddCompanionFlags(PetDB,40990,16)
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0spellid42609level20methodid33154item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,42609,33154,3,"CRITTER")
	self:AddCompanionFlags(PetDB,42609,16)
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2spellid43697level20method_dropstype15.0source3level70lootCount45nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid33816item_bindsBOPrarity3
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,43697,33816,3,"CRITTER")
	self:AddCompanionFlags(PetDB,43697,1,2,16)
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2spellid43698level20method_dropstype15.0source3level70lootCount49nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid33818item_bindsBOPrarity3
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,43698,33818,3,"CRITTER")
	self:AddCompanionFlags(PetDB,43698,1,2,16)
	-- No acquire information

	-- Mojo - 43918
	-- type15.0spellid43918level20methodid33993item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,43918,33993,3,"CRITTER")
	self:AddCompanionFlags(PetDB,43918,16)
	-- No acquire information

	-- Tiny Sporebat - 45082
	-- type15.2source2spellid45082level70method_vendorsprice0002424530locs3521type7react11descSporeggar QuartermasternameMycahminlevel64id18382methodsold-byid34478item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45082,34478,3,"CRITTER")
	self:AddCompanionFlags(PetDB,45082,1,2,3,16)
	self:AddCompanionAcquire(PetDB,45082,1,18382)

	-- Rocket Chicken - 45125
	-- type15.2spellid45125level1methodid34492item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45125,34492,3,"CRITTER")
	self:AddCompanionFlags(PetDB,45125,16)
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2spellid45127level1methodid34493item_bindsBOPrarity4

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45127,34493,4,"CRITTER")
	self:AddCompanionFlags(PetDB,45127,16)
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0spellid45890level20method_dropslocs3717type-3lootCount176nameIce Chestid187892totalLootCount15053methodcontained-in-objectid34955item_bindsBOPrarity3
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,45890,34955,3,"CRITTER")
	self:AddCompanionFlags(PetDB,45890,1,2,16)
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2spellid46425level20method_dropstype15.0source3level70lootCount33nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid35349item_bindsBOPrarity3
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,46425,35349,3,"CRITTER")
	self:AddCompanionFlags(PetDB,46425,1,2,16)
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2spellid46426level20method_dropstype15.0source3level70lootCount59nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid35350item_bindsBOPrarity3
--Unknown,
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,46426,35350,3,"CRITTER")
	self:AddCompanionFlags(PetDB,46426,1,2,16)
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2source1spellid46599level70method_dropslocs4080type7react33classification1descLord of the Blood ElveslootCount3618nameKael'thas Sunstriderminlevel72id24664totalLootCount209517methoddropped-byid35504item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,46599,35504,3,"CRITTER")
	self:AddCompanionFlags(PetDB,46599,1,2,10,16)
	self:AddCompanionAcquire(PetDB,46599,4,24664)

	-- Spirit of Competition - 48406
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,48406,37297,2,"CRITTER")
	--self:AddCompanionFlags(PetDB,48406,16)
	-- No acquire information

	-- Soul-Trader Beacon - 49964
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,49964,38050,3,"CRITTER")
	self:AddCompanionFlags(PetDB,49964,16)
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- type15.2source2spellid51716level70method_vendorsprice40000000locs3519type7react11descSkyguard QuartermasternameGrellaminlevel70id23367methodsold-byid38628item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,51716,38628,3,"CRITTER")
	self:AddCompanionFlags(PetDB,51716,1,2,3,16)
	self:AddCompanionAcquire(PetDB,51716,1,23367)

	-- Vampiric Batling - 51851
	-- type15.2source1spellid51851level70method_dropslocs413457type6react33classification1descThe San'laynlootCount2614namePrince Tenris Mirkbloodminlevel73id28194totalLootCount7527methoddropped-byid38658item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,51851,38658,3,"CRITTER")
	self:AddCompanionFlags(PetDB,51851,1,2,7,10,16)
	self:AddCompanionAcquire(PetDB,51851,4,28194)

	-- Frosty's Collar - 52615
	-- type15.0spellid52615level20methodid39286item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,52615,39286,3,"CRITTER")
	self:AddCompanionFlags(PetDB,52615,16)
	-- No acquire information

	-- Tyrael's Hilt - 53082
	-- type15.0spellid53082level20methodid39656item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,53082,39656,3,"CRITTER")
	self:AddCompanionFlags(PetDB,53082,16)
	-- No acquire information

	-- Ghostly Skull - 53316
	-- type15.2source2spellid53316level70method_vendorsprice40000000locs4395type7react11descReagents & Magical GoodsnameDarahirminlevel75id29537methodsold-byid39973item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,53316,39973,3,"CRITTER")
	self:AddCompanionFlags(PetDB,53316,1,2,3,16)
	self:AddCompanionAcquire(PetDB,53316,1,29537)

	-- Clockwork Rocket Bot - 54187
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,54187,34425,3,"CRITTER")
	self:AddCompanionFlags(PetDB,54187,1,2,16)
	-- No acquire information

	-- Penguin Egg - 58636
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,58636,43517,3,"CRITTER")
	self:AddCompanionFlags(PetDB,58636,16)
	-- No acquire information

	-- Giant Sewer Rat - 59250
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,59250,43698,3,"CRITTER")
	self:AddCompanionFlags(PetDB,59250,16)
	-- No acquire information

	-- Cobra Hatchling -- 61351
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61351,39898,1,"CRITTER")
	--self:AddCompanionFlags(PetDB,61351,1,2,3,16)
	--self:AddCompanionAcquire(PetDB,61351,1,31916,1,32763)

	-- Nurtured Penguin Egg - 61357
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61357,44723,3,"CRITTER")
	self:AddCompanionFlags(PetDB,61357,1,2,3,16)
	self:AddCompanionAcquire(PetDB,61357,1,31916,1,32763)

	-- Kirin Tor Familiar - 61472
	-- type15.2spellid61472level1methodid44738item_bindsBOPrarity3

	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61472,44738,3,"CRITTER")
	self:AddCompanionFlags(PetDB,61472,16)
	-- No acquire information

	-- Baby Blizzard Bear - 61855
	companioncount = companioncount + 1
	self:AddCompanion(PetDB,61855,44819,1,"CRITTER")
	self:AddCompanionFlags(PetDB,61855,16)
	-- No acquire information

	return companioncount

end
