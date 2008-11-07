--[[

************************************************************************

./DB/PetDatabase.lua

Pet Database data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

96 found from data mining.
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
	-- type15.2level15spellid4055source4method_craftedcategory11school0learned75produces44011skillEngineeringskillup75105120135nameMechanical Squirrelid3928reagents4363143591284017742rarity1methodcraftedid4401item_bindsBOUrarity1
	-- Obtain information: Crafted BoU, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 4055, 4401, 1)
	self:AddCompanionFlags(PetDB, 4055, 1,2,5,15)
	self:AddCompanionAcquire(PetDB, 4055, 3, 4036, 3928)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2level20spellid10673source2method_vendorslocs12type7price400000descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaid6367methodsold-byid8485item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:AddCompanionFlags(PetDB, 10673, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10673, 1, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2level20spellid10674source2method_vendorslocs12type7price400000descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaid6367methodsold-byid8486item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:AddCompanionFlags(PetDB, 10674, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10674, 1, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2level20spellid10675source1method_dropslocs36267type7react13minlevel31lootCount40nameDalaran Shield Guardmaxlevel32id2271totalLootCount24111locs130type7classification4react13minlevel21lootCount33nameDalaran Spellscribeid1920totalLootCount306locs36type7react13minlevel34lootCount14nameDalaran Summonermaxlevel35id2358totalLootCount13900locs36267type7react13minlevel32lootCount22nameDalaran Theurgistmaxlevel33id2272totalLootCount10307methoddropped-byid8491item_bindsBOUrarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:AddCompanionFlags(PetDB, 10675, 1,2,10,15)
	self:AddCompanionAcquire(PetDB, 10675, 4, 1920, 4, 2271, 4, 2272, 4, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2level20spellid10676source2method_vendorslocs12type7price400000descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaid6367methodsold-byid8487item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:AddCompanionFlags(PetDB, 10676, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10676, 1, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2level20spellid10677source12method_vendorslocs352385type7price600000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980method_dropslocs1581type7classification1descThe Ship's Cookreact33disp1305minlevel20lootCount1590nameCookieid645totalLootCount28314methoddropped-by,sold-byid8490item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Instance (1581 - The Deadmines), Vendor, 
	-- Flags: Alliance, Horde, Instance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:AddCompanionFlags(PetDB, 10677, 1,2,3,6,15)
	self:AddCompanionAcquire(PetDB, 10677, 1, 20980, 4, 645)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2level20spellid10678source2method_vendorslocs12type7price400000descCrazy Cat Ladyreact13minlevel5nameDonni Anthaniaid6367methodsold-byid8488item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:AddCompanionFlags(PetDB, 10678, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10678, 1, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2level20spellid10679source2method_vendorslocs1519type7price600000descBoy with kittensreact13disp7935minlevel5nameLil Timmyid8666methodsold-byid8489item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:AddCompanionFlags(PetDB, 10679, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10679, 1, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2level20spellid10680source2method_vendorslocs33type7price400000descPirate Suppliesreact13minlevel42nameNarkkid2663methodsold-byid8496item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:AddCompanionFlags(PetDB, 10680, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10680, 1, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2level20spellid10682source13method_dropslocs33type7react33minlevel39lootCount1name\"Pretty Boy\" Duncanid2545totalLootCount5699locs33type7react33minlevel42lootCount4nameBloodsail Deckhandid4505totalLootCount10436locs33type7react33minlevel39lootCount6nameBloodsail Magemaxlevel41id1562totalLootCount35020locs33type7react33disp793minlevel39lootCount9nameBloodsail Raidermaxlevel41id1561totalLootCount35811locs33type7react33disp796minlevel41lootCount4nameBloodsail Sea Dogmaxlevel42id1565totalLootCount10895locs33type7react33disp1902minlevel40lootCount1nameBloodsail Swabbyid4506totalLootCount16140locs33type7react33disp796minlevel40lootCount5nameBloodsail Swashbucklermaxlevel41id1563totalLootCount66557locs33type7react33minlevel40lootCount4nameBloodsail Warlockmaxlevel41id1564totalLootCount64146methoddropped-byid8494item_bindsBOUrarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:AddCompanionFlags(PetDB, 10682, 1,2,10,15)
	self:AddCompanionAcquire(PetDB, 10682, 4, 1561, 4, 1562, 4, 1563, 4, 1564, 4, 1565, 4, 2545, 4, 4505, 4, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2level20spellid10683source1method_dropslocs1581type7classification1react33minlevel19lootCount3042nameDefias Piratemaxlevel20id657totalLootCount104503methoddropped-byid8492item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Instance (1581 - The Deadmines), 
	-- Flags: Alliance, Horde, Instance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:AddCompanionFlags(PetDB, 10683, 1,2,6,15)
	self:AddCompanionAcquire(PetDB, 10683, 4, 657)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2level20spellid10684source2method_vendorslocs352385type7price400000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980locs33type7price400000descPirate Suppliesreact13minlevel42nameNarkkid2663methodsold-byid8495item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:AddCompanionFlags(PetDB, 10684, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 10684, 1, 2663, 1, 20980)

	-- Ancona Chicken - 10685
	-- type15.2level35spellid10685source2method_vendorslocs400type7price1000000react11minlevel51nameMagus Tirthid6548methodsold-byid11023item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:AddCompanionFlags(PetDB, 10685, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 10685, 1, 6548)

	-- Cockroach - 10688
	-- type15.2level30spellid10688source2method_vendorslocs352385type7price500000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980locs1497type7price500000descCockroach Vendorreact31minlevel30nameJeremiah Paysonid8403methodsold-byid10393item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:AddCompanionFlags(PetDB, 10688, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 10688, 1, 8403, 1, 20980)

	-- Dark Whelpling - 10695
	-- type15.2level30spellid10695source1method_dropslocs3type2react33disp715minlevel41lootCount78nameScalding Whelpmaxlevel43id2725totalLootCount71023locs152159type2react33disp397minlevel39lootCount32nameSearing Whelpmaxlevel40id4324totalLootCount34544methoddropped-byid10822item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Raid (2159 - Onyxia's Lair), 
	-- Flags: Alliance, Horde, Raid, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:AddCompanionFlags(PetDB, 10695, 1,2,7,10,15)
	self:AddCompanionAcquire(PetDB, 10695, 4, 2725, 4, 4324)

	-- Azure Whelpling - 10696
	-- type15.2level30spellid10696source1method_dropslocs16type2classification1react33disp196minlevel50lootCount2nameBlue Dragonspawnmaxlevel51id193totalLootCount3824locs16type2classification1react33disp6760minlevel52lootCount3nameBlue Scalebanemaxlevel53id6130totalLootCount1451locs16type2classification1react33disp6761minlevel51lootCount8nameDraconic Mageweavermaxlevel52id6131totalLootCount5095methoddropped-byid34535item_bindsBOUrarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:AddCompanionFlags(PetDB, 10696, 1,2,10,15)
	self:AddCompanionAcquire(PetDB, 10696, 4, 193, 4, 6130, 4, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2level30spellid10697source1method_dropslocs11type2react33disp505minlevel25lootCount13nameCrimson Whelpmaxlevel26id1069totalLootCount4347locs11type2react33disp8712minlevel26lootCount7nameFlamesnorting Whelpmaxlevel27id1044totalLootCount1398locs11type2react33disp9583minlevel23lootCount11nameRed Whelpmaxlevel24id1042totalLootCount3731methoddropped-byid8499item_bindsBOUrarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:AddCompanionFlags(PetDB, 10697, 1,2,10,15)
	self:AddCompanionAcquire(PetDB, 10697, 4, 1042, 4, 1044, 4, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2level30spellid10698source1method_dropslocs8type2react33disp621minlevel35lootCount38nameDreaming Whelpmaxlevel36id741totalLootCount16719methoddropped-byid8498item_bindsBOUrarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:AddCompanionFlags(PetDB, 10698, 1,2,10,15)
	self:AddCompanionAcquire(PetDB, 10698, 4, 741)

	-- Wood Frog Box - 10703
	-- type15.2level35spellid10703source2method_vendorslocs122153519type7price1000000react21disp14589minlevel4nameFlikmaxlevel70id14860methodsold-byid11027item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:AddCompanionFlags(PetDB, 10703, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 10703, 1, 14860)

	-- Tree Frog Box - 10704
	-- type15.2level35spellid10704source2method_vendorslocs122153519type7price1000000react21disp14589minlevel4nameFlikmaxlevel70id14860methodsold-byid11026item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:AddCompanionFlags(PetDB, 10704, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 10704, 1, 14860)

	-- Hawk Owl - 10706
	-- type15.2level30spellid10706source2method_vendorslocs1657type7price500000descOwl Trainerreact13minlevel30nameShylenaiid8665methodsold-byid8501item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:AddCompanionFlags(PetDB, 10706, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10706, 1, 8665)

	-- Great Horned Owl - 10707
	-- type15.2level30spellid10707source2method_vendorslocs1657type7price500000descOwl Trainerreact13minlevel30nameShylenaiid8665methodsold-byid8500item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:AddCompanionFlags(PetDB, 10707, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10707, 1, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2level30spellid10709source2method_vendorslocs1638type7price500000descPrairie Dog Vendorreact31minlevel30nameHalpaid8401methodsold-byid10394item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:AddCompanionFlags(PetDB, 10709, 2,3,15)
	self:AddCompanionAcquire(PetDB, 10709, 1, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2level20spellid10711source23method_vendorslocs1type7price200000react13minlevel1nameYarlyn Amberstillid1263methodsold-byid8497item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:AddCompanionFlags(PetDB, 10711, 1,3,15)
	self:AddCompanionAcquire(PetDB, 10711, 1, 1263)

	-- Black Kingsnake - 10714
	-- type15.2level30spellid10714source2method_vendorslocs1637type7price500000descSnake Vendorreact31minlevel30nameXan'tishid8404methodsold-byid10360item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:AddCompanionFlags(PetDB, 10714, 2,3,15)
	self:AddCompanionAcquire(PetDB, 10714, 1, 8404)

	-- Brown Snake - 10716
	-- type15.2level30spellid10716source2method_vendorslocs1637type7price500000descSnake Vendorreact31minlevel30nameXan'tishid8404methodsold-byid10361item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:AddCompanionFlags(PetDB, 10716, 2,3,15)
	self:AddCompanionAcquire(PetDB, 10716, 1, 8404)

	-- Crimson Snake - 10717
	-- type15.2level30spellid10717source2method_vendorslocs352385type7price500000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980locs1637type7price500000descSnake Vendorreact31minlevel30nameXan'tishid8404methodsold-byid10392item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:AddCompanionFlags(PetDB, 10717, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 10717, 1, 8404, 1, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2method_queststype0level50givenitems103981category035side1coin6000xp7100nameAn OOX of Your Ownid3721level40spellid12243source3methodrewardfromid10398item_bindsBOUrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:AddCompanionFlags(PetDB, 12243, 1,2,4,15)
	self:AddCompanionAcquire(PetDB, 12243, 2, 3721)

	-- Chicken Egg - 13548
	-- type15.0level1spellid13548source1method_dropslocs40type3lootCount842nameFarm Chicken Eggid161513totalLootCount856methoddropped-by,contained-in-objectid11110item_bindsBOPrarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:AddCompanionFlags(PetDB, 13548, 1,2,10,16)
	self:AddCompanionAcquire(PetDB, 13548, 4, 161513)

	-- Pet Bombling - 15048
	-- type7.3level41spellid15048source4method_craftedcategory11school0learned205produces118251skillEngineeringskillup0205205205namePet Bomblingid15628reagents43941707717191138606rarity1methodcraftedid11825item_bindsBOPrarity1
	-- Obtain information: Crafted BoP (Engineering), 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15048, 11825, 1)
	self:AddCompanionFlags(PetDB, 15048, 1,2,5,16,25)
	self:AddCompanionAcquire(PetDB, 15048, 3, 4036, 15628)

	-- Lil' Smoky - 15049
	-- type7.3level41spellid15049source4method_craftedcategory11school0learned205produces118261skillEngineeringskillup0205205205nameLil' Smokyid15633reagents7075143892719113860260371rarity1methodcraftedid11826item_bindsBOPrarity1
	-- Obtain information: Crafted BoP (Engineering), 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15049, 11826, 1)
	self:AddCompanionFlags(PetDB, 15049, 1,2,5,16,25)
	self:AddCompanionAcquire(PetDB, 15049, 3, 4036, 15633)

	-- Sprite Darter Egg - 15067
	-- type15.0method_queststype0level48givenitems114741category1357side2coin360xp625nameBecoming a Parentid4298level47spellid15067source3methodrewardfromid11474item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:AddCompanionFlags(PetDB, 15067, 1,4,16)
	self:AddCompanionAcquire(PetDB, 15067, 2, 4298)

	-- Worg Carrier - 15999
	-- type15.0method_queststype81level59givenitems122641category31583side1coin9000xp13950nameKibler's Exotic Petsid4729level59spellid15999source3methodrewardfromid12264item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:AddCompanionFlags(PetDB, 15999, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 15999, 2, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0method_queststype81level59givenitems125291category31583side1coin9000xp13950nameEn-Ay-Es-Tee-Whyid4862level59spellid16450source3methodrewardfromid12529item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:AddCompanionFlags(PetDB, 16450, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 16450, 2, 4862)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1method_queststype0level60givenitems121851category033side1coin8700nameAvast Ye, Admiral!id4621level60spellid17567source3methodrewardfromid12185item_bindsBOParmor63rarity2
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:AddCompanionFlags(PetDB, 17567, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 17567, 2, 4621)

	-- Panda Collar - 17707
	-- type15.0method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1category03431choiceitems135841135831135821side4coin0nameWelcome!id8547type0level1category13526choiceitems135841135831135821side2coin0nameWelcome!id9278type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781level20spellid17707source3methodrewardfromid13583item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:AddCompanionFlags(PetDB, 17707, 1,2,4,13,16)
	self:AddCompanionAcquire(PetDB, 17707, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781, 8, 10)

	-- Diablo Stone - 17708
	-- type15.0method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1category03431choiceitems135841135831135821side4coin0nameWelcome!id8547type0level1category13526choiceitems135841135831135821side2coin0nameWelcome!id9278type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781level20spellid17708source3methodrewardfromid13584item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:AddCompanionFlags(PetDB, 17708, 1,2,4,13,16)
	self:AddCompanionAcquire(PetDB, 17708, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781, 8, 10)

	-- Zergling Leash - 17709
	-- type15.0method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1category03431choiceitems135841135831135821side4coin0nameWelcome!id8547type0level1category13526choiceitems135841135831135821side2coin0nameWelcome!id9278type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781level20spellid17709source3methodrewardfromid13582item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:AddCompanionFlags(PetDB, 17709, 1,2,4,13,16)
	self:AddCompanionAcquire(PetDB, 17709, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781, 8, 10)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2level53spellid19772source4method_craftedcategory11school0learned265produces159961skillEngineeringskillup265285295305nameLifelike Mechanical Toadid19793reagents12803115994410558181701rarity1methodcraftedid15996item_bindsBOUrarity1
	-- Obtain information: Crafted BoU, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 19772, 15996, 1)
	self:AddCompanionFlags(PetDB, 19772, 1,2,5,15)
	self:AddCompanionAcquire(PetDB, 19772, 3, 4036, 19793)

	-- Orcish Orphan Whistle - 23012
	-- type15.0method_redemptionUnknownlevel10spellid23012source3methodredemptionid18597item_bindsBOPrarity1
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 23012, 18597, 1)
	--self:AddCompanionFlags(PetDB, 23012, 1,2,16)
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0method_redemptionUnknownlevel10spellid23013source3methodredemptionid18598item_bindsBOPrarity1
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 23013, 18598, 1)
	--self:AddCompanionFlags(PetDB, 23013, 1,2,16)
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2method_redemptionUnknownlevel35spellid23811methodredemptionid19450item_bindsBOPrarity1
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 23811, 19450, 1)
	self:AddCompanionFlags(PetDB, 23811, 1,2,16)
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
	-- type15.2level55spellid25162method_dropstype15.0level50source1lootCount17nameOozing Bagid20768totalLootCount951rarity1methodcontained-in-itemid20769item_bindsBOUrarity1
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 25162, 20769, 1)
	self:AddCompanionFlags(PetDB, 25162, 1,2,15)
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2level20spellid25849methodid21168item_bindsBOErarity1
	-- Obtain information: 
	-- Flags: 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2level60spellid26010source4method_craftedcategory11school0learned300produces212771skillEngineeringskillup300320330340nameTranquil Mechanical Yetiid26011reagents15407115994470792186312105581rarity1methodcraftedid21277item_bindsBOUrarity1
	-- Obtain information: Crafted BoU, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26010, 21277, 1)
	self:AddCompanionFlags(PetDB, 26010, 1,2,5,15)
	self:AddCompanionAcquire(PetDB, 26010, 3, 4036, 26011)

	-- Snowman Kit - 26469
	-- type15.3level1spellid26469source1method_dropstype15.0level1rlevel1lootCount4nameGaily Wrapped Presentid21310totalLootCount31rarity1methoddropped-by,contained-in-itemid21309item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26469, 21309, 1)
	self:AddCompanionFlags(PetDB, 26469, 1,2,15)
	self:AddCompanionAcquire(PetDB, 26469, 4, 21310)

	-- Jingling Bell - 26528
	-- type15.3level1spellid26528source1method_dropstype15.0level1rlevel1lootCount6nameGaily Wrapped Presentid21310totalLootCount31rarity1methoddropped-by,contained-in-itemid21308item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26528, 21308, 1)
	self:AddCompanionFlags(PetDB, 26528, 1,2,15)
	self:AddCompanionAcquire(PetDB, 26528, 4, 21310)

	-- Green Helper Box - 26532
	-- type15.3level1spellid26532source1method_dropstype15.0level1rlevel1lootCount6nameGaily Wrapped Presentid21310totalLootCount31rarity1methoddropped-by,contained-in-itemid21301item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26532, 21301, 1)
	self:AddCompanionFlags(PetDB, 26532, 1,2,15)
	self:AddCompanionAcquire(PetDB, 26532, 4, 21310)

	-- Red Helper Box - 26541
	-- type15.3level1spellid26541source1method_dropstype15.0level1rlevel1lootCount15nameGaily Wrapped Presentid21310totalLootCount31rarity1methoddropped-by,contained-in-itemid21305item_bindsBOUrarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:AddCompanionFlags(PetDB, 26541, 1,2,15)
	self:AddCompanionAcquire(PetDB, 26541, 4, 21310)

	-- Pink Murloc Egg - 27241
	-- type15.0level20spellid27241methodid22114item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 27241, 22114, 3)
	self:AddCompanionFlags(PetDB, 27241, 12,16)
	self:AddCompanionAcquire(PetDB, 27241, 8, 8)

	-- Truesilver Shafted Arrow - 27570
	-- type15.0level1spellid27570method_dropstype15.3level1lootCount1nameGift of Adoration: Stormwindid21981totalLootCount18rarity1type15.3level1lootCount1namePledge of Adoration: Ironforgeid22154totalLootCount12rarity1methodcontained-in-itemid22235item_bindsBOPrarity1
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
	-- type15.0method_queststype0level60category-3284choiceitems230071230151230021230221side2coin1020xp3100nameA Warden of the Allianceid171type0level60category-3284choiceitems230071230151230021230221side4coin0xp3100nameA Warden of the Hordeid5502level1spellid28738source3methodrewardfromid23002item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:AddCompanionFlags(PetDB, 28738, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 28738, 2, 171, 2, 5502)

	-- Piglet's Collar - 28739
	-- type15.0method_queststype0level60category-3284choiceitems230071230151230021230221side2coin1020xp3100nameA Warden of the Allianceid171type0level60category-3284choiceitems230071230151230021230221side4coin0xp3100nameA Warden of the Hordeid5502level1spellid28739source3methodrewardfromid23007item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:AddCompanionFlags(PetDB, 28739, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 28739, 2, 171, 2, 5502)

	-- Rat Cage - 28740
	-- type15.0method_queststype0level60category-3284choiceitems230071230151230021230221side2coin1020xp3100nameA Warden of the Allianceid171type0level60category-3284choiceitems230071230151230021230221side4coin0xp3100nameA Warden of the Hordeid5502level1spellid28740source3methodrewardfromid23015item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:AddCompanionFlags(PetDB, 28740, 1,2,4,16)
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
	-- type15.0method_redemptionUnknownlevel20spellid32298source3methodredemptionid25535item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 32298, 25535, 3)
	self:AddCompanionFlags(PetDB, 32298, 1,2,13,16)
	self:AddCompanionAcquire(PetDB, 32298, 8, 9)

	-- Magical Crawdad Box - 33050
	-- type15.0method_redemptionUnknownlevel70spellid33050methodredemptionid27445item_bindsBOPrarity1
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 33050, 27445, 1)
	self:AddCompanionFlags(PetDB, 33050, 1,2,16)
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2level70spellid35156source2method_vendorslocs352385type7price40000000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980methodsold-byid29363item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:AddCompanionFlags(PetDB, 35156, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 35156, 1, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2level70spellid35239source2method_vendorslocs352385type7price10000000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980methodsold-byid29364item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:AddCompanionFlags(PetDB, 35239, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 35239, 1, 20980)

	-- Blue Moth Egg - 35907
	-- type15.2level20spellid35907source2method_vendorslocs3557type7price500000descMoth Keeperreact13minlevel30nameSixxid21019methodsold-byid29901item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:AddCompanionFlags(PetDB, 35907, 1,3,15)
	self:AddCompanionAcquire(PetDB, 35907, 1, 21019)

	-- Red Moth Egg - 35909
	-- type15.2level70spellid35909source2method_vendorslocs352385type7price10000000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980methodsold-byid29902item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:AddCompanionFlags(PetDB, 35909, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 35909, 1, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2level20spellid35910source2method_vendorslocs3557type7price500000descMoth Keeperreact13minlevel30nameSixxid21019methodsold-byid29903item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:AddCompanionFlags(PetDB, 35910, 1,3,15)
	self:AddCompanionAcquire(PetDB, 35910, 1, 21019)

	-- White Moth Egg - 35911
	-- type15.2level20spellid35911source2method_vendorslocs3557type7price500000descMoth Keeperreact13minlevel30nameSixxid21019methodsold-byid29904item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:AddCompanionFlags(PetDB, 35911, 1,3,15)
	self:AddCompanionAcquire(PetDB, 35911, 1, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2level20spellid36027source2method_vendorslocs3430type7price500000react31minlevel9nameJilanneid16860methodsold-byid29953item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:AddCompanionFlags(PetDB, 36027, 2,3,15)
	self:AddCompanionAcquire(PetDB, 36027, 1, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2level20spellid36028source2method_vendorslocs3430type7price500000react31minlevel9nameJilanneid16860methodsold-byid29956item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:AddCompanionFlags(PetDB, 36028, 2,3,15)
	self:AddCompanionAcquire(PetDB, 36028, 1, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2level20spellid36029source2method_vendorslocs3430type7price500000react31minlevel9nameJilanneid16860methodsold-byid29957item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:AddCompanionFlags(PetDB, 36029, 2,3,15)
	self:AddCompanionAcquire(PetDB, 36029, 1, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2level70spellid36031source2method_vendorslocs352385type7price10000000descExotic Creaturesreact11disp20988minlevel60nameDealer Rashaadid20980methodsold-byid29958item_bindsBOUrarity1
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:AddCompanionFlags(PetDB, 36031, 1,2,3,15)
	self:AddCompanionAcquire(PetDB, 36031, 1, 20980)

	-- Captured Firefly - 36034
	-- type15.2level20spellid36034source1method_dropslocs3521type10react33disp18723minlevel62lootCount77nameBogflare Needlerid20197totalLootCount151282methoddropped-byid29960item_bindsBOUrarity1
	-- Obtain information: Mob Drop, 
	-- Flags: Alliance, Horde, BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:AddCompanionFlags(PetDB, 36034, 1,2,10,15)
	self:AddCompanionAcquire(PetDB, 36034, 4, 20197)

	-- Miniwing - 39181
	-- type15.0method_queststype1level65givenitems317601category23519choiceitems317661317651317641side1coin66000xp13750nameSkywingid10898level96spellid39181source3methodrewardfromid31760item_bindsBOPrarity1
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:AddCompanionFlags(PetDB, 39181, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 39181, 2, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0method_redemptionUnknownlevel1spellid39478source3methodredemptionid31880item_bindsBOPrarity1
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 39478, 31880, 1)
	--self:AddCompanionFlags(PetDB, 39478, 1,2,16)
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0method_redemptionUnknownlevel1spellid39479source3methodredemptionid31881item_bindsBOPrarity1
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 39479, 31881, 1)
	--self:AddCompanionFlags(PetDB, 39479, 1,2,16)
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0method_queststype0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11117type0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11431level20spellid39709source3methodrewardfromid32233item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:AddCompanionFlags(PetDB, 39709, 4,16)
	self:AddCompanionAcquire(PetDB, 39709, 2, 11117, 2, 11431)

	-- Fortune Coin - 40405
	-- type15.0method_redemptionUnknownlevel1spellid40405methodredemptionid32498item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40405, 32498, 3)
	self:AddCompanionFlags(PetDB, 40405, 1,2,12,16)
	self:AddCompanionAcquire(PetDB, 40405, 8, 8, 8, 8)

	-- Banana Charm - 40549
	-- type15.0method_redemptionUnknownlevel1spellid40549methodredemptionid32588item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40549, 32588, 3)
	self:AddCompanionFlags(PetDB, 40549, 1,2,11,16)
	self:AddCompanionAcquire(PetDB, 40549, 8, 2)

	-- Sleepy Willy - 40613
	-- type15.0method_queststype0level70category-3284choiceitems326221326161326171side2coin0xp12300nameBack to the Orphanageid10966type0level70category-3284choiceitems326161326221326171side4coin0xp12300nameBack to the Orphanageid10967level20spellid40613source3methodrewardfromid32617item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:AddCompanionFlags(PetDB, 40613, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 40613, 2, 10966, 2, 10967)

	-- Egbert's Egg - 40614
	-- type15.0method_queststype0level70category-3284choiceitems326221326161326171side2coin0xp12300nameBack to the Orphanageid10966type0level70category-3284choiceitems326161326221326171side4coin0xp12300nameBack to the Orphanageid10967level20spellid40614source3methodrewardfromid32616item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:AddCompanionFlags(PetDB, 40614, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 40614, 2, 10966, 2, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0method_queststype0level70category-3284choiceitems326221326161326171side2coin0xp12300nameBack to the Orphanageid10966type0level70category-3284choiceitems326161326221326171side4coin0xp12300nameBack to the Orphanageid10967level20spellid40634source3methodrewardfromid32622item_bindsBOPrarity3
	-- Obtain information: Quest, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:AddCompanionFlags(PetDB, 40634, 1,2,4,16)
	self:AddCompanionAcquire(PetDB, 40634, 2, 10966, 2, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2level1spellid40990methodid40653item_bindsBOErarity3
	-- Obtain information: 
	-- Flags: 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
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
	-- type15.2level20spellid43697method_dropstype15.0level70source3lootCount45nameBag of Fishing Treasuresid35348totalLootCount7879rarity1methodcontained-in-itemid33816item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43697, 33816, 3)
	self:AddCompanionFlags(PetDB, 43697, 1,2,16)
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2level20spellid43698method_dropstype15.0level70source3lootCount49nameBag of Fishing Treasuresid35348totalLootCount7879rarity1methodcontained-in-itemid33818item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43698, 33818, 3)
	self:AddCompanionFlags(PetDB, 43698, 1,2,16)
	-- No acquire information

	-- Mojo - 43918
	-- type15.0method_redemptionUnknownlevel20spellid43918methodredemptionid33993item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43918, 33993, 3)
	self:AddCompanionFlags(PetDB, 43918, 1,2,16)
	-- No acquire information

	-- Clockwork Rocket Bot - 45048
	-- type15.3level1spellid45048source1method_dropstype15.0level1rlevel1lootCount33nameWinter Veil Giftid34426totalLootCount33rarity1methoddropped-by,contained-in-itemid34425item_bindsBOPrarity3
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45048, 34425, 3)
	self:AddCompanionFlags(PetDB, 45048, 1,2,16)
	self:AddCompanionAcquire(PetDB, 45048, 4, 34426)

	-- Tiny Sporebat - 45082
	-- type15.2level70spellid45082source2method_vendorslocs3521type7price000242453000000000descSporeggar Quartermasterreact11disp17626minlevel64nameMycahid18382methodsold-byid34478item_bindsBOPrarity3
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:AddCompanionFlags(PetDB, 45082, 1,2,3,16)
	self:AddCompanionAcquire(PetDB, 45082, 1, 18382)

	-- Rocket Chicken - 45125
	-- type15.2method_redemptionUnknownlevel1spellid45125methodredemptionid34492item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45125, 34492, 3)
	self:AddCompanionFlags(PetDB, 45125, 1,2,11,16)
	self:AddCompanionAcquire(PetDB, 45125, 8, 5)

	-- Dragon Kite - 45127
	-- type15.2method_redemptionUnknownlevel1spellid45127methodredemptionid34493item_bindsBOPrarity4
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45127, 34493, 4)
	self:AddCompanionFlags(PetDB, 45127, 1,2,11,16)
	self:AddCompanionAcquire(PetDB, 45127, 8, 5)

	-- Scorched Stone - 45890
	-- type15.0level20spellid45890methodid34955item_bindsBOPrarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45890, 34955, 3)
	self:AddCompanionFlags(PetDB, 45890, 16)
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2level20spellid46425method_dropstype15.0level70source3lootCount33nameBag of Fishing Treasuresid35348totalLootCount7879rarity1methodcontained-in-itemid35349item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46425, 35349, 3)
	self:AddCompanionFlags(PetDB, 46425, 1,2,16)
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2level20spellid46426method_dropstype15.0level70source3lootCount59nameBag of Fishing Treasuresid35348totalLootCount7879rarity1methodcontained-in-itemid35350item_bindsBOPrarity3
	-- Obtain information: Unknown, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46426, 35350, 3)
	self:AddCompanionFlags(PetDB, 46426, 1,2,16)
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2level70spellid46599source1method_dropslocs409537033845type7classification3descLord of the Blood Elvesreact33disp20023minlevel72lootCount153nameKael'thas Sunstriderid23054totalLootCount9689locs4095type7classification1descLord of the Blood Elvesreact33disp22906minlevel72lootCount89nameKael'thas Sunstriderid24664totalLootCount6321methoddropped-byid35504item_bindsBOPrarity3
	-- Obtain information: Mob Drop, Instance (4095 - Magisters' Terrace), Raid (3845 - Tempest Keep), Instance (4095 - Magisters' Terrace), 
	-- Flags: Alliance, Horde, Instance, Raid, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:AddCompanionFlags(PetDB, 46599, 1,2,6,7,10,16)
	self:AddCompanionAcquire(PetDB, 46599, 4, 23054, 4, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2method_redemptionUnknownlevel20spellid49964methodredemptionid38050item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 49964, 38050, 3)
	self:AddCompanionFlags(PetDB, 49964, 1,2,11,16)
	self:AddCompanionAcquire(PetDB, 49964, 8, 6)

	-- Nether Ray Fry - 51716
	-- type15.2level70spellid51716source2method_vendorslocs3519type7price00000000descSkyguard Quartermasterreact11minlevel70nameGrellaid23367methodsold-byid38628item_bindsBOPrarity3
	-- Obtain information: Vendor, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:AddCompanionFlags(PetDB, 51716, 1,2,3,16)
	self:AddCompanionAcquire(PetDB, 51716, 1, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0method_redemptionUnknownlevel20spellid53082methodredemptionid39656item_bindsBOPrarity3
	-- Obtain information: Redemption, 
	-- Flags: Alliance, Horde, BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 53082, 39656, 3)
	self:AddCompanionFlags(PetDB, 53082, 1,2,12,16)
	self:AddCompanionAcquire(PetDB, 53082, 8, 8)

	return companioncount

end
