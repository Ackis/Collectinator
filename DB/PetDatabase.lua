--[[

************************************************************************

./DB/PetDatabase.lua

Pet Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

100 found from data mining.
4 ignored.
1 WotLK ignored.

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

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
	-- type15.2level15spellid4055source4method_craftedskillup75105120135produces44011category11school0reagents4363143591284017742learned75skillEngineeringnameMechanical Squirrelid3928rarity1methodcraftedid4401item_bindsBOErarity1
	-- Obtain information: Crafted BoU, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 4055, 4401, 1)
	self:AddCompanionFlags(PetDB, 4055, 1,2,5)
	self:AddCompanionAcquire(PetDB, 4055, 3, 4036, 3928)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2level20spellid10673source2method_vendorslocs12type7descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaprice400000id6367methodsold-byid8485item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:AddCompanionFlags(PetDB, 10673, 1,3)
	self:AddCompanionAcquire(PetDB, 10673, 1, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2level20spellid10674source2method_vendorslocs12type7descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaprice400000id6367methodsold-byid8486item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:AddCompanionFlags(PetDB, 10674, 1,3)
	self:AddCompanionAcquire(PetDB, 10674, 1, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2level20spellid10675source1method_dropslocs130type7disp3590classification4react12lootCount59minlevel21totalLootCount571nameDalaran Spellscribeid1920locs36130267type7disp11474react12lootCount108minlevel31totalLootCount123926nameDalaran Shield Guardmaxlevel32id2271locs36130267type7disp3715react12lootCount64minlevel32totalLootCount66887nameDalaran Theurgistmaxlevel33id2272locs36130267type7disp3719react12lootCount43minlevel34totalLootCount63604nameDalaran Summonermaxlevel35id2358methoddropped-byid8491item_bindsBOErarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:AddCompanionFlags(PetDB, 10675, 1,2,10)
	self:AddCompanionAcquire(PetDB, 10675, 4, 1920, 4, 2271, 4, 2272, 4, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2level20spellid10676source2method_vendorslocs12type7descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaprice400000id6367methodsold-byid8487item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:AddCompanionFlags(PetDB, 10676, 1,3)
	self:AddCompanionAcquire(PetDB, 10676, 1, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2level20spellid10677source12method_vendorslocs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice600000id20980method_dropslocs1581type7classification1descThe Ship's Cookreact33lootCount7011minlevel20totalLootCount131883nameCookieid645methoddropped-by,sold-byid8490item_bindsBOErarity1
	-- Obtain information: Mob Drop, Instance (1581 - The Deadmines), Vendor, 
	-- Flags: Alliance, Horde, Instance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:AddCompanionFlags(PetDB, 10677, 1,2,3,6)
	self:AddCompanionAcquire(PetDB, 10677, 1, 20980, 4, 645)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2level20spellid10678source2method_vendorslocs12type7descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaprice400000id6367methodsold-byid8488item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:AddCompanionFlags(PetDB, 10678, 1,3)
	self:AddCompanionAcquire(PetDB, 10678, 1, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2level20spellid10679source2method_vendorslocs1519type7descBoy with kittensreact1nameLil Timmyprice600000id8666methodsold-byid8489item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:AddCompanionFlags(PetDB, 10679, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10679, 1, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2level20spellid10680source2method_vendorslocs33type7descPirate Suppliesreact11minlevel42nameNarkkprice400000id2663methodsold-byid8496item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:AddCompanionFlags(PetDB, 10680, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10680, 1, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2level20spellid10682source13method_dropslocs1733type7react33lootCount9minlevel40totalLootCount114292nameBloodsail Raidermaxlevel41id1561locs33type7react33lootCount7minlevel40totalLootCount122648nameBloodsail Magemaxlevel41id1562locs33type7react33lootCount12minlevel40totalLootCount192162nameBloodsail Swashbucklermaxlevel41id1563locs33type7disp4462react33lootCount4minlevel40totalLootCount161120nameBloodsail Warlockmaxlevel41id1564locs33type7disp1768react33lootCount1minlevel41totalLootCount48974nameBloodsail Sea Dogmaxlevel42id1565locs33type7disp2558react33lootCount1minlevel41totalLootCount46188nameBloodsail Deckhandmaxlevel42id4505locs33type7react33lootCount4minlevel40totalLootCount47295nameBloodsail Swabbymaxlevel41id4506methoddropped-byid8494item_bindsBOErarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:AddCompanionFlags(PetDB, 10682, 1,2,10)
	self:AddCompanionAcquire(PetDB, 10682, 4, 1561, 4, 1562, 4, 1563, 4, 1564, 4, 1565, 4, 4505, 4, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2level20spellid10683source1method_dropslocs401581type7classification1react33lootCount4242minlevel19totalLootCount202458nameDefias Piratemaxlevel20id657methoddropped-byid8492item_bindsBOErarity1
	-- Obtain information: Mob Drop, Instance (1581 - The Deadmines), 
	-- Flags: Alliance, Horde, Instance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:AddCompanionFlags(PetDB, 10683, 1,2,6,10)
	self:AddCompanionAcquire(PetDB, 10683, 4, 657)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2level20spellid10684source2method_vendorslocs33type7descPirate Suppliesreact11minlevel42nameNarkkprice400000id2663locs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice400000id20980methodsold-byid8495item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:AddCompanionFlags(PetDB, 10684, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10684, 1, 2663, 1, 20980)

	-- Ancona Chicken - 10685
	-- type15.2level35spellid10685source2method_vendorslocs400type7react11minlevel51nameMagus Tirthprice1000000id6548methodsold-byid11023item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:AddCompanionFlags(PetDB, 10685, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10685, 1, 6548)

	-- Cockroach - 10688
	-- type15.2level30spellid10688source2method_vendorslocs1497type7descCockroach Vendorreact31minlevel30nameJeremiah Paysonprice500000id8403locs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice500000id20980methodsold-byid10393item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:AddCompanionFlags(PetDB, 10688, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10688, 1, 8403, 1, 20980)

	-- Dark Whelpling - 10695
	-- type15.2level30spellid10695source1method_dropslocs3type2react33lootCount92minlevel41totalLootCount95864nameScalding Whelpmaxlevel43id2725locs152159type2react33lootCount5minlevel39totalLootCount90134nameSearing Hatchlingmaxlevel40id4323locs152159type2react33lootCount66minlevel39totalLootCount91919nameSearing Whelpmaxlevel40id4324locs152159type1react33lootCount1minlevel39totalLootCount142252nameDrywallow Daggermawmaxlevel40id4345methoddropped-byid10822item_bindsBOErarity1
	-- Obtain information: Mob Drop, Raid (2159 - Onyxia's Lair), Raid (2159 - Onyxia's Lair), Raid (2159 - Onyxia's Lair), 
	-- Flags: Alliance, Horde, Raid, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:AddCompanionFlags(PetDB, 10695, 1,2,7,10)
	self:AddCompanionAcquire(PetDB, 10695, 4, 2725, 4, 4323, 4, 4324, 4, 4345)

	-- Azure Whelpling - 10696
	-- type15.2level30spellid10696source1method_dropslocs1617type2classification1react33lootCount6minlevel50totalLootCount1348nameBlue Dragonspawnmaxlevel51id193locs16type2classification1react33lootCount2minlevel53totalLootCount1038nameDraconic Magelordmaxlevel54id6129locs16type2classification1react33lootCount8minlevel52totalLootCount2164nameBlue Scalebanemaxlevel53id6130locs16type2classification1react33lootCount13minlevel51totalLootCount2769nameDraconic Mageweavermaxlevel52id6131methoddropped-byid34535item_bindsBOErarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:AddCompanionFlags(PetDB, 10696, 1,2,10)
	self:AddCompanionAcquire(PetDB, 10696, 4, 193, 4, 6129, 4, 6130, 4, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2level30spellid10697source1method_dropslocs11type2react33lootCount1minlevel23totalLootCount6877nameRed Whelpmaxlevel24id1042locs11type2react33lootCount6minlevel26totalLootCount2802nameFlamesnorting Whelpmaxlevel27id1044locs11type2react33lootCount17minlevel25totalLootCount6021nameCrimson Whelpmaxlevel26id1069methoddropped-byid8499item_bindsBOErarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:AddCompanionFlags(PetDB, 10697, 1,2,10)
	self:AddCompanionAcquire(PetDB, 10697, 4, 1042, 4, 1044, 4, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2level30spellid10698source1method_dropslocs841type2react33lootCount2minlevel34totalLootCount19260nameAdolescent Whelpmaxlevel35id740locs841type2react33lootCount26minlevel35totalLootCount20943nameDreaming Whelpmaxlevel36id741methoddropped-byid8498item_bindsBOErarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:AddCompanionFlags(PetDB, 10698, 1,2,10)
	self:AddCompanionAcquire(PetDB, 10698, 4, 740, 4, 741)

	-- Wood Frog Box - 10703
	-- type15.2level35spellid10703source2methodid11027item_bindsBOErarity1
	-- Obtain information: 
	-- Flags: 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10703, 11027, 1)
	-- No filter flags
	-- No acquire information

	-- Tree Frog Box - 10704
	-- type15.2level35spellid10704source2method_vendorslocs122151638-1type7react11minlevel4nameFlikprice1000000id14860methodsold-byid11026item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:AddCompanionFlags(PetDB, 10704, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10704, 1, 14860)

	-- Hawk Owl - 10706
	-- type15.2level30spellid10706source2method_vendorslocs1657type7descOwl Trainerreact13minlevel30nameShylenaiprice500000id8665methodsold-byid8501item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:AddCompanionFlags(PetDB, 10706, 1,3)
	self:AddCompanionAcquire(PetDB, 10706, 1, 8665)

	-- Great Horned Owl - 10707
	-- type15.2level30spellid10707source2method_vendorslocs1657type7descOwl Trainerreact13minlevel30nameShylenaiprice500000id8665methodsold-byid8500item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:AddCompanionFlags(PetDB, 10707, 1,3)
	self:AddCompanionAcquire(PetDB, 10707, 1, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2level30spellid10709source2method_vendorslocs1638type7descPrairie Dog Vendorreact31minlevel30nameHalpaprice500000id8401methodsold-byid10394item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:AddCompanionFlags(PetDB, 10709, 2,3)
	self:AddCompanionAcquire(PetDB, 10709, 1, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2level20spellid10711source23method_vendorslocs1type7react13minlevel1nameYarlyn Amberstillprice200000id1263methodsold-byid8497item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:AddCompanionFlags(PetDB, 10711, 1,3)
	self:AddCompanionAcquire(PetDB, 10711, 1, 1263)

	-- Black Kingsnake - 10714
	-- type15.2level30spellid10714source2method_vendorslocs1716373703type7descSnake Vendorreact31minlevel30nameXan'tishprice500000id8404methodsold-byid10360item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:AddCompanionFlags(PetDB, 10714, 2,3)
	self:AddCompanionAcquire(PetDB, 10714, 1, 8404)

	-- Brown Snake - 10716
	-- type15.2level30spellid10716source2method_vendorslocs1716373703type7descSnake Vendorreact31minlevel30nameXan'tishprice500000id8404methodsold-byid10361item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:AddCompanionFlags(PetDB, 10716, 2,3)
	self:AddCompanionAcquire(PetDB, 10716, 1, 8404)

	-- Crimson Snake - 10717
	-- type15.2level30spellid10717source2method_vendorslocs1716373703type7descSnake Vendorreact31minlevel30nameXan'tishprice500000id8404locs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice500000id20980methodsold-byid10392item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:AddCompanionFlags(PetDB, 10717, 1,2,3)
	self:AddCompanionAcquire(PetDB, 10717, 1, 8404, 1, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2method_queststype0level50category035coin6000givenitems103981nameAn OOX of Your Ownid3721level40spellid12243source3methodrewardfromid10398item_bindsBOErarity1
	-- Obtain information: Quest, 
	-- Flags: 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:AddCompanionFlags(PetDB, 12243, 4)
	self:AddCompanionAcquire(PetDB, 12243, 2, 3721)

	-- Chicken Egg - 13548
	-- type15.0level1spellid13548source1method_dropslocs121740-1type-3lootCount5848totalLootCount5848nameFarm Chicken Eggid161513methodcontained-in-objectid11110item_bindsBOPrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:AddCompanionFlags(PetDB, 13548, 1,2,16)
	-- No acquire information

	-- Pet Bombling - 15048
	-- type15.2level41spellid15048source4method_craftedskillup0205205205produces118251category11school0reagents43941707717191138606learned205skillEngineeringnamePet Bomblingid15628rarity1methodcraftedid11825item_bindsBOPrarity1
	-- Obtain information: Crafted BoP (Engineering), 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15048, 11825, 1)
	self:AddCompanionFlags(PetDB, 15048, 1,2,5,16,25)
	self:AddCompanionAcquire(PetDB, 15048, 3, 4036, 15628)

	-- Lil' Smoky - 15049
	-- type15.2level41spellid15049source4method_craftedskillup0205205205produces118261category11school0reagents7075143892719113860260371learned205skillEngineeringnameLil' Smokyid15633rarity1methodcraftedid11826item_bindsBOPrarity1
	-- Obtain information: Crafted BoP (Engineering), 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15049, 11826, 1)
	self:AddCompanionFlags(PetDB, 15049, 1,2,5,16,25)
	self:AddCompanionAcquire(PetDB, 15049, 3, 4036, 15633)

	-- Sprite Darter Egg - 15067
	-- type15.0method_queststype0level48category1357coin360side2xp625givenitems114741nameBecoming a Parentid4298level47spellid15067source3methodrewardfromid11474item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:AddCompanionFlags(PetDB, 15067, 1,4,16)
	self:AddCompanionAcquire(PetDB, 15067, 2, 4298)

	-- Worg Carrier - 15999
	-- type15.0method_queststype81level59category31583coin9000side1xp13950givenitems122641nameKibler's Exotic Petsid4729level59spellid15999source3methodrewardfromid12264item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:AddCompanionFlags(PetDB, 15999, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 15999, 2, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0method_queststype81level59category31583coin9000side1xp13950givenitems125291nameEn-Ay-Es-Tee-Whyid4862level59spellid16450source3methodrewardfromid12529item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:AddCompanionFlags(PetDB, 16450, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 16450, 2, 4862)

	-- Panda Collar - 17707
	-- type15.0method_queststype0level1choiceitems135841135831135821category024coin0side2nameWelcome!id5805type0level1choiceitems135841135831135821category0132coin0side2nameWelcome!id5841type0level1choiceitems135841135831135821category1188coin0side2nameWelcome!id5842type0level1choiceitems135841135831135821category1363coin0side4nameWelcome!id5843type0level1choiceitems135841135831135821category1221coin0side4nameWelcome!id5844type0level1choiceitems135841135831135821category0154coin0side4nameWelcome!id5847type0level1choiceitems135841135831135821category03431coin0side4nameWelcome!id8547type0level1choiceitems135841135831135821category13526coin0side2nameWelcome!id9278type0level1choiceitems135841135831135821category00coin0side1nameWelcome!id12781level20spellid17707source3methodrewardfromid13583item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:AddCompanionFlags(PetDB, 17707, 1,2,4,13,16)
	self:AddCompanionAcquire(PetDB, 17707, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781, 8, 10)

	-- Diablo Stone - 17708
	-- type15.0method_queststype0level1choiceitems135841135831135821category024coin0side2nameWelcome!id5805type0level1choiceitems135841135831135821category0132coin0side2nameWelcome!id5841type0level1choiceitems135841135831135821category1188coin0side2nameWelcome!id5842type0level1choiceitems135841135831135821category1363coin0side4nameWelcome!id5843type0level1choiceitems135841135831135821category1221coin0side4nameWelcome!id5844type0level1choiceitems135841135831135821category0154coin0side4nameWelcome!id5847type0level1choiceitems135841135831135821category03431coin0side4nameWelcome!id8547type0level1choiceitems135841135831135821category13526coin0side2nameWelcome!id9278type0level1choiceitems135841135831135821category00coin0side1nameWelcome!id12781level20spellid17708source3methodrewardfromid13584item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:AddCompanionFlags(PetDB, 17708, 1,2,4,13,16)
	self:AddCompanionAcquire(PetDB, 17708, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781, 8, 10)

	-- Zergling Leash - 17709
	-- type15.0method_queststype0level1choiceitems135841135831135821category024coin0side2nameWelcome!id5805type0level1choiceitems135841135831135821category0132coin0side2nameWelcome!id5841type0level1choiceitems135841135831135821category1188coin0side2nameWelcome!id5842type0level1choiceitems135841135831135821category1363coin0side4nameWelcome!id5843type0level1choiceitems135841135831135821category1221coin0side4nameWelcome!id5844type0level1choiceitems135841135831135821category0154coin0side4nameWelcome!id5847type0level1choiceitems135841135831135821category03431coin0side4nameWelcome!id8547type0level1choiceitems135841135831135821category13526coin0side2nameWelcome!id9278type0level1choiceitems135841135831135821category00coin0side1nameWelcome!id12781level20spellid17709source3methodrewardfromid13582item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:AddCompanionFlags(PetDB, 17709, 1,2,4,13,16)
	self:AddCompanionAcquire(PetDB, 17709, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781, 8, 10)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2level53spellid19772source4method_craftedskillup265285295305produces159961category11school0reagents12803115994410558181701learned265skillEngineeringnameLifelike Mechanical Toadid19793rarity1methodcraftedid15996item_bindsBOErarity1
	-- Obtain information: Crafted BoU, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 19772, 15996, 1)
	self:AddCompanionFlags(PetDB, 19772, 1,2,5)
	self:AddCompanionAcquire(PetDB, 19772, 3, 4036, 19793)

	-- Orcish Orphan Whistle - 23012
	-- type15.0level10spellid23012source3methodid18597item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 23012, 18597, 1)
	--self:AddCompanionFlags(PetDB, 23012, 16)
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0level10spellid23013source3methodid18598item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 23013, 18598, 1)
	--self:AddCompanionFlags(PetDB, 23013, 16)
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2level35spellid23811methodid19450item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 23811, 19450, 1)
	self:AddCompanionFlags(PetDB, 23811, 16)
	-- No acquire information

	-- Blue Murloc Egg - 24696
	-- type15.0level20spellid24696methodid20371item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 24696, 20371, 3)
	self:AddCompanionFlags(PetDB, 24696, 12,16)
	self:AddCompanionAcquire(PetDB, 24696, 8, 8)

	-- Lurky's Egg - 24988
	-- type15.0level1spellid24988methodid30360item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 24988, 30360, 3)
	self:AddCompanionFlags(PetDB, 24988, 12,16)
	self:AddCompanionAcquire(PetDB, 24988, 8, 8)

	-- Disgusting Oozeling - 25162
	-- type15.2level55spellid25162method_dropstype15.0level50source1lootCount17nameOozing Bagid20768rarity1methodcontained-in-itemid20769item_bindsBOErarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 25162, 20769, 1)
	self:AddCompanionFlags(PetDB, 25162, 1,2)
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2level20spellid25849method_vendorslocs4197type7descJewelcrafterreact13minlevel79nameMorgan Dayprice600000id30489methodsold-byid21168item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 25849, 21168, 1)
	--self:AddCompanionFlags(PetDB, 25849, 1,3)
	--self:AddCompanionAcquire(PetDB, 25849, 1, 30489)

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2level60spellid26010source4method_craftedskillup300320330340produces212771category11school0reagents15407115994470792186312105581learned300skillEngineeringnameTranquil Mechanical Yetiid26011rarity1methodcraftedid21277item_bindsBOErarity1
	-- Obtain information: Crafted BoU, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26010, 21277, 1)
	self:AddCompanionFlags(PetDB, 26010, 1,2,5)
	self:AddCompanionAcquire(PetDB, 26010, 3, 4036, 26011)

	-- Snowman Kit - 26045
	-- type15.3level1spellid26045source1method_dropstype15.0level1source3lootCount4nameGaily Wrapped Presentid21310rlevel1rarity1methodcontained-in-itemid21309item_bindsBOUrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26045, 21309, 1)
	self:AddCompanionFlags(PetDB, 26045, 1,2,15)
	-- No acquire information

	-- Jingling Bell - 26529
	-- type15.3level1spellid26529source1method_dropstype15.0level1source3lootCount6nameGaily Wrapped Presentid21310rlevel1rarity1methodcontained-in-itemid21308item_bindsBOUrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26529, 21308, 1)
	self:AddCompanionFlags(PetDB, 26529, 1,2,15)
	-- No acquire information

	-- Green Helper Box - 26533
	-- type15.3level1spellid26533source1method_dropstype15.0level1source3lootCount6nameGaily Wrapped Presentid21310rlevel1rarity1methodcontained-in-itemid21301item_bindsBOUrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26533, 21301, 1)
	self:AddCompanionFlags(PetDB, 26533, 1,2,15)
	-- No acquire information

	-- Red Helper Box - 26541
	-- type15.3level1spellid26541source1method_dropstype15.0level1source3lootCount15nameGaily Wrapped Presentid21310rlevel1rarity1methodcontained-in-itemid21305item_bindsBOUrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:AddCompanionFlags(PetDB, 26541, 1,2,15)
	-- No acquire information

	-- Pink Murloc Egg - 27241
	-- type15.0level20spellid27241methodid22114item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 27241, 22114, 3)
	self:AddCompanionFlags(PetDB, 27241, 12,16)
	self:AddCompanionAcquire(PetDB, 27241, 8, 8)

	-- Truesilver Shafted Arrow - 27570
	-- type15.0level1spellid27570method_dropstype15.3level1lootCount1nameGift of Adoration: Stormwindid21981rarity1type15.3level1lootCount1namePledge of Adoration: Ironforgeid22154rarity1methodcontained-in-itemid22235item_bindsBOPrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 27570, 22235, 1)
	self:AddCompanionFlags(PetDB, 27570, 1,2,16)
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0level1spellid28505methodid22781item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28505, 22781, 1)
	self:AddCompanionFlags(PetDB, 28505, 12,16)
	self:AddCompanionAcquire(PetDB, 28505, 8, 8)

	-- Turtle Box - 28738
	-- type15.0method_queststype0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Allianceid171type0choiceitems230071230151230021230221category-3284coin6600nameA Warden of the Hordeid5502level1spellid28738source3methodrewardfromid23002item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:AddCompanionFlags(PetDB, 28738, 4,16)
	self:AddCompanionAcquire(PetDB, 28738, 2, 171, 2, 5502)

	-- Piglet's Collar - 28739
	-- type15.0method_queststype0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Allianceid171type0choiceitems230071230151230021230221category-3284coin6600nameA Warden of the Hordeid5502level1spellid28739source3methodrewardfromid23007item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:AddCompanionFlags(PetDB, 28739, 4,16)
	self:AddCompanionAcquire(PetDB, 28739, 2, 171, 2, 5502)

	-- Rat Cage - 28740
	-- type15.0method_queststype0choiceitems230071230151230021230221category-3284coin18900nameA Warden of the Allianceid171type0choiceitems230071230151230021230221category-3284coin6600nameA Warden of the Hordeid5502level1spellid28740source3methodrewardfromid23015item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:AddCompanionFlags(PetDB, 28740, 4,16)
	self:AddCompanionAcquire(PetDB, 28740, 2, 171, 2, 5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0level1spellid30156methodid23713item_bindsBOPrarity4
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 30156, 23713, 4)
	self:AddCompanionFlags(PetDB, 30156, 11,16)
	self:AddCompanionAcquire(PetDB, 30156, 8, 1)

	-- Netherwhelp's Collar - 32298
	-- type15.0level20spellid32298source3methodid25535item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 32298, 25535, 3)
	self:AddCompanionFlags(PetDB, 32298, 16)
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0level70spellid33050methodid27445item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 33050, 27445, 1)
	self:AddCompanionFlags(PetDB, 33050, 16)
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2level70spellid35156source2method_vendorslocs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice40000000id20980methodsold-byid29363item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:AddCompanionFlags(PetDB, 35156, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35156, 1, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2method_queststype0level75category-2197coin0givenitems293641nameTest Questid13303level70spellid35239source23method_vendorslocs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice10000000id20980methodsold-by,rewardfromid29364item_bindsBOErarity1
	-- Obtain information: Vendor, Quest, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:AddCompanionFlags(PetDB, 35239, 1,2,3,4)
	self:AddCompanionAcquire(PetDB, 35239, 1, 20980, 2, 13303)

	-- Blue Moth Egg - 35907
	-- type15.2level20spellid35907source2method_vendorslocs3557type7descMoth Keeperreact13minlevel30nameSixxprice500000id21019methodsold-byid29901item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:AddCompanionFlags(PetDB, 35907, 1,3)
	self:AddCompanionAcquire(PetDB, 35907, 1, 21019)

	-- Red Moth Egg - 35909
	-- type15.2level70spellid35909source2method_vendorslocs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice10000000id20980methodsold-byid29902item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:AddCompanionFlags(PetDB, 35909, 1,2,3)
	self:AddCompanionAcquire(PetDB, 35909, 1, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2level20spellid35910source2method_vendorslocs3557type7descMoth Keeperreact13minlevel30nameSixxprice500000id21019methodsold-byid29903item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:AddCompanionFlags(PetDB, 35910, 1,3)
	self:AddCompanionAcquire(PetDB, 35910, 1, 21019)

	-- White Moth Egg - 35911
	-- type15.2level20spellid35911source2method_vendorslocs3557type7descMoth Keeperreact13minlevel30nameSixxprice500000id21019methodsold-byid29904item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:AddCompanionFlags(PetDB, 35911, 1,3)
	self:AddCompanionAcquire(PetDB, 35911, 1, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2level20spellid36027source2method_vendorslocs3430type7react31minlevel9nameJilanneprice500000id16860methodsold-byid29953item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:AddCompanionFlags(PetDB, 36027, 2,3)
	self:AddCompanionAcquire(PetDB, 36027, 1, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2level20spellid36028source2method_vendorslocs3430type7react31minlevel9nameJilanneprice500000id16860methodsold-byid29956item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:AddCompanionFlags(PetDB, 36028, 2,3)
	self:AddCompanionAcquire(PetDB, 36028, 1, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2level20spellid36029source2method_vendorslocs3430type7react31minlevel9nameJilanneprice500000id16860methodsold-byid29957item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:AddCompanionFlags(PetDB, 36029, 2,3)
	self:AddCompanionAcquire(PetDB, 36029, 1, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2level70spellid36031source2method_vendorslocs3523type7descExotic Creaturesreact11minlevel60nameDealer Rashaadprice10000000id20980methodsold-byid29958item_bindsBOErarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:AddCompanionFlags(PetDB, 36031, 1,2,3)
	self:AddCompanionAcquire(PetDB, 36031, 1, 20980)

	-- Captured Firefly - 36034
	-- type15.2level20spellid36034source1method_dropslocs35213522type1react33lootCount57minlevel62totalLootCount117425nameBogflare Needlerid20197methoddropped-byid29960item_bindsBOErarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:AddCompanionFlags(PetDB, 36034, 1,2,10)
	self:AddCompanionAcquire(PetDB, 36034, 4, 20197)

	-- Miniwing - 39181
	-- type15.0method_queststype1level65choiceitems317661317651317641category23519coin66000side1xp13750givenitems317601nameSkywingid10898level96spellid39181source3methodrewardfromid31760item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:AddCompanionFlags(PetDB, 39181, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 39181, 2, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0level1spellid39478source3methodid31880item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 39478, 31880, 1)
	--self:AddCompanionFlags(PetDB, 39478, 16)
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0level1spellid39479source3methodid31881item_bindsBOPrarity1
	-- Obtain information: 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 39479, 31881, 1)
	--self:AddCompanionFlags(PetDB, 39479, 16)
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0method_queststype0category-3370coin0givenitems322331nameCatch the Wild Wolpertinger!id11117type0category-3370coin0givenitems322331nameCatch the Wild Wolpertinger!id11431level20spellid39709source3method_vendorslocs1637type7descBrew of the Month Clubreact1minlevel50nameRay'maprice000id27489methodsold-by,rewardfromid32233item_bindsBOPrarity3
	-- Obtain information: Vendor, Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:AddCompanionFlags(PetDB, 39709, 1,2,3,4,16)
	self:AddCompanionAcquire(PetDB, 39709, 1, 27489, 2, 11117, 2, 11431)

	-- Fortune Coin - 40405
	-- type15.0level1spellid40405methodid32498item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40405, 32498, 3)
	self:AddCompanionFlags(PetDB, 40405, 12,16)
	self:AddCompanionAcquire(PetDB, 40405, 8, 8)

	-- Banana Charm - 40549
	-- type15.0level1spellid40549methodid32588item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40549, 32588, 3)
	self:AddCompanionFlags(PetDB, 40549, 16)
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0method_queststype0choiceitems326221326161326171category-3284coin0side2xp12300nameBack to the Orphanageid10966type0choiceitems326161326221326171category-3284coin0xp12300nameBack to the Orphanageid10967level20spellid40613source3methodrewardfromid32617item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:AddCompanionFlags(PetDB, 40613, 1,4,16)
	self:AddCompanionAcquire(PetDB, 40613, 2, 10966, 2, 10967)

	-- Egbert's Egg - 40614
	-- type15.0method_queststype0choiceitems326221326161326171category-3284coin0side2xp12300nameBack to the Orphanageid10966type0choiceitems326161326221326171category-3284coin0xp12300nameBack to the Orphanageid10967level20spellid40614source3methodrewardfromid32616item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:AddCompanionFlags(PetDB, 40614, 1,4,16)
	self:AddCompanionAcquire(PetDB, 40614, 2, 10966, 2, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0method_queststype0choiceitems326221326161326171category-3284coin0side2xp12300nameBack to the Orphanageid10966type0choiceitems326161326221326171category-3284coin0xp12300nameBack to the Orphanageid10967level20spellid40634source3methodrewardfromid32622item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:AddCompanionFlags(PetDB, 40634, 1,4,16)
	self:AddCompanionAcquire(PetDB, 40634, 2, 10966, 2, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2level1spellid40990methodid40653item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40990, 40653, 3)
	self:AddCompanionFlags(PetDB, 40990, 16)
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0level20spellid42609methodid33154item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 42609, 33154, 3)
	self:AddCompanionFlags(PetDB, 42609, 16)
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2level20spellid43697method_dropstype15.0level70source3lootCount45nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid33816item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43697, 33816, 3)
	self:AddCompanionFlags(PetDB, 43697, 1,2,16)
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2level20spellid43698method_dropstype15.0level70source3lootCount49nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid33818item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43698, 33818, 3)
	self:AddCompanionFlags(PetDB, 43698, 1,2,16)
	-- No acquire information

	-- Mojo - 43918
	-- type15.0level20spellid43918methodid33993item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43918, 33993, 3)
	self:AddCompanionFlags(PetDB, 43918, 16)
	-- No acquire information

	-- Tiny Sporebat - 45082
	-- type15.2level70spellid45082source2method_vendorslocs3521type7descSporeggar Quartermasterreact11minlevel64nameMycahprice0002424530id18382methodsold-byid34478item_bindsBOPrarity3
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:AddCompanionFlags(PetDB, 45082, 1,2,3,16)
	self:AddCompanionAcquire(PetDB, 45082, 1, 18382)

	-- Rocket Chicken - 45125
	-- type15.2level1spellid45125methodid34492item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45125, 34492, 3)
	self:AddCompanionFlags(PetDB, 45125, 16)
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2level1spellid45127methodid34493item_bindsBOPrarity4
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45127, 34493, 4)
	self:AddCompanionFlags(PetDB, 45127, 16)
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0level20spellid45890method_dropslocs3717type-3lootCount176totalLootCount15053nameIce Chestid187892methodcontained-in-objectid34955item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45890, 34955, 3)
	self:AddCompanionFlags(PetDB, 45890, 1,2,16)
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2level20spellid46425method_dropstype15.0level70source3lootCount33nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid35349item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46425, 35349, 3)
	self:AddCompanionFlags(PetDB, 46425, 1,2,16)
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2level20spellid46426method_dropstype15.0level70source3lootCount59nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid35350item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46426, 35350, 3)
	self:AddCompanionFlags(PetDB, 46426, 1,2,16)
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2level70spellid46599source1method_dropslocs37034080type7classification1descLord of the Blood Elvesreact33lootCount3587minlevel72totalLootCount206703nameKael'thas Sunstriderid24664methoddropped-byid35504item_bindsBOPrarity3
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:AddCompanionFlags(PetDB, 46599, 1,2,10,16)
	self:AddCompanionAcquire(PetDB, 46599, 4, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2level20spellid49964methodid38050item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 49964, 38050, 3)
	self:AddCompanionFlags(PetDB, 49964, 16)
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- type15.2level70spellid51716source2method_vendorslocs3519type7descSkyguard Quartermasterreact11minlevel70nameGrellaprice40000000id23367methodsold-byid38628item_bindsBOPrarity3
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:AddCompanionFlags(PetDB, 51716, 1,2,3,16)
	self:AddCompanionAcquire(PetDB, 51716, 1, 23367)

	-- Vampiric Batling - 51851
	-- type15.2level70spellid51851source1method_dropslocs413457type6classification1descThe San'laynreact33lootCount2593minlevel73totalLootCount7467namePrince Tenris Mirkbloodid28194methoddropped-byid38658item_bindsBOPrarity3
	-- Obtain information: Mob Drop, Raid (3457 - Karazhan), 
	-- Flags: Alliance, Horde, Raid, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 51851, 38658, 3)
	self:AddCompanionFlags(PetDB, 51851, 1,2,7,10,16)
	self:AddCompanionAcquire(PetDB, 51851, 4, 28194)

	-- Frosty's Collar - 52615
	-- type15.0level20spellid52615methodid39286item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 52615, 39286, 3)
	self:AddCompanionFlags(PetDB, 52615, 16)
	-- No acquire information

	-- Tyrael's Hilt - 53082
	-- type15.0level20spellid53082methodid39656item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 53082, 39656, 3)
	self:AddCompanionFlags(PetDB, 53082, 16)
	-- No acquire information

	-- Ghostly Skull - 53316
	-- type15.2level70spellid53316source2method_vendorslocs4395type7descReagents & Magical Goodsreact11minlevel75nameDarahirprice40000000id29537methodsold-byid39973item_bindsBOPrarity3
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 53316, 39973, 3)
	self:AddCompanionFlags(PetDB, 53316, 1,2,3,16)
	self:AddCompanionAcquire(PetDB, 53316, 1, 29537)

	-- Clockwork Rocket Bot - 54187
	-- type15.2level1spellid54187source1method_dropstype15.0level1source3lootCount33nameWinter Veil Giftid34426rlevel1rarity1methodcontained-in-itemid34425item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 54187, 34425, 3)
	self:AddCompanionFlags(PetDB, 54187, 1,2,16)
	-- No acquire information

	-- Penguin Egg - 58636
	-- type15.0level20spellid58636methodid43517item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 58636, 43517, 3)
	self:AddCompanionFlags(PetDB, 58636, 16)
	-- No acquire information

	-- Nurtured Penguin Egg - 61357
	-- type15.0level20spellid61357method_vendorslocs495type7descKalu'ak Quartermasterreact1minlevel65nameTanaikaprice12000000id31916locs65type7descKalu'ak Quartermasterreact1minlevel65nameSairukprice12000000id32763methodsold-byid44723item_bindsBOPrarity3
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 61357, 44723, 3)
	self:AddCompanionFlags(PetDB, 61357, 1,2,3,16)
	self:AddCompanionAcquire(PetDB, 61357, 1, 31916, 1, 32763)

	return companioncount

end
