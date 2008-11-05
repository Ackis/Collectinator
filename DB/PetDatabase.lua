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
	-- type15.2item_bindsBOUspellid4055source4method_craftedskillup75105120135reagents4363143591284017742category11school0learned75skillEngineeringnameMechanical Squirrelproduces44011id3928rarity1level15methodcraftedid4401rarity1
	-- Obtain information: Crafted, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 4055, 4401, 1)
	self:AddCompanionFlags(PetDB, 4055, 1,2,5,13)
	self:AddCompanionAcquire(PetDB, 4055, 3, 4036, 3928)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2item_bindsBOUspellid10673source2method_vendorslocs12type7react13price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5level20methodsold-byid8485rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10673, 8485, 1)
	self:AddCompanionFlags(PetDB, 10673, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10673, 1, 6367)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2item_bindsBOUspellid10674source2method_vendorslocs12type7react13price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5level20methodsold-byid8486rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10674, 8486, 1)
	self:AddCompanionFlags(PetDB, 10674, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10674, 1, 6367)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2item_bindsBOUspellid10675source1level20method_dropslootCount40locs36267type7maxlevel32totalLootCount24111react13nameDalaran Shield Guardid2271minlevel31lootCount33locs130type7totalLootCount306react13classification4nameDalaran Spellscribeid1920minlevel21lootCount14locs36type7maxlevel35totalLootCount13900react13nameDalaran Summonerid2358minlevel34lootCount22locs36267type7maxlevel33totalLootCount10307react13nameDalaran Theurgistid2272minlevel32methoddropped-byid8491rarity1
	-- Obtain information: Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10675, 8491, 1)
	self:AddCompanionFlags(PetDB, 10675, 1,2,12,13)
	self:AddCompanionAcquire(PetDB, 10675, 4, 1920, 4, 2271, 4, 2272, 4, 2358)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2item_bindsBOUspellid10676source2method_vendorslocs12type7react13price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5level20methodsold-byid8487rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10676, 8487, 1)
	self:AddCompanionFlags(PetDB, 10676, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10676, 1, 6367)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2item_bindsBOUspellid10677source12method_vendorslocs352385type7react11price600000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60level20method_dropslootCount1590locs1581type7totalLootCount28314react33classification1descThe Ship's CooknameCookiedisp1305id645minlevel20methoddropped-by,sold-byid8490rarity1
	-- Obtain information: 	-- Instance: 1581 - type1maxlevel20territory2category3nameThe Deadminesid1581minlevel15
	-- Mob Drop, Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10677, 8490, 1)
	self:AddCompanionFlags(PetDB, 10677, 1,2,3,6,13)
	self:AddCompanionAcquire(PetDB, 10677, 4, 645, 1, 20980)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2item_bindsBOUspellid10678source2method_vendorslocs12type7react13price400000descCrazy Cat LadynameDonni Anthaniaid6367minlevel5level20methodsold-byid8488rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10678, 8488, 1)
	self:AddCompanionFlags(PetDB, 10678, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10678, 1, 6367)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2item_bindsBOUspellid10679source2method_vendorslocs1519type7react13price600000descBoy with kittensnameLil Timmydisp7935id8666minlevel5level20methodsold-byid8489rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10679, 8489, 1)
	self:AddCompanionFlags(PetDB, 10679, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10679, 1, 8666)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2item_bindsBOUspellid10680source2method_vendorslocs33type7react13price400000descPirate SuppliesnameNarkkid2663minlevel42level20methodsold-byid8496rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10680, 8496, 1)
	self:AddCompanionFlags(PetDB, 10680, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10680, 1, 2663)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2item_bindsBOUspellid10682source13level20method_dropslootCount1locs33type7totalLootCount5699react33name\"Pretty Boy\" Duncanid2545minlevel39lootCount4locs33type7totalLootCount10436react33nameBloodsail Deckhandid4505minlevel42lootCount6locs33type7maxlevel41totalLootCount35020react33nameBloodsail Mageid1562minlevel39lootCount9locs33type7maxlevel41totalLootCount35811react33nameBloodsail Raiderdisp793id1561minlevel39lootCount4locs33type7maxlevel42totalLootCount10895react33nameBloodsail Sea Dogdisp796id1565minlevel41lootCount1locs33type7totalLootCount16140react33nameBloodsail Swabbydisp1902id4506minlevel40lootCount5locs33type7maxlevel41totalLootCount66557react33nameBloodsail Swashbucklerdisp796id1563minlevel40lootCount4locs33type7maxlevel41totalLootCount64146react33nameBloodsail Warlockid1564minlevel40methoddropped-byid8494rarity1
	-- Obtain information: Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10682, 8494, 1)
	self:AddCompanionFlags(PetDB, 10682, 1,2,12,13)
	self:AddCompanionAcquire(PetDB, 10682, 4, 1561, 4, 1562, 4, 1563, 4, 1564, 4, 1565, 4, 2545, 4, 4505, 4, 4506)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2item_bindsBOUspellid10683source1level20method_dropslootCount3042locs1581type7maxlevel20totalLootCount104503react33classification1nameDefias Pirateid657minlevel19methoddropped-byid8492rarity1
	-- Obtain information: 	-- Instance: 1581 - type1maxlevel20territory2category3nameThe Deadminesid1581minlevel15
--Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10683, 8492, 1)
	self:AddCompanionFlags(PetDB, 10683, 1,2,6,13)
	self:AddCompanionAcquire(PetDB, 10683, 4, 657)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2item_bindsBOUspellid10684source2method_vendorslocs352385type7react11price400000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60locs33type7react13price400000descPirate SuppliesnameNarkkid2663minlevel42level20methodsold-byid8495rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10684, 8495, 1)
	self:AddCompanionFlags(PetDB, 10684, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 10684, 1, 2663, 1, 20980)

	-- Ancona Chicken - 10685
	-- type15.2item_bindsBOUspellid10685source2method_vendorslocs400type7react11price1000000nameMagus Tirthid6548minlevel51level35methodsold-byid11023rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10685, 11023, 1)
	self:AddCompanionFlags(PetDB, 10685, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 10685, 1, 6548)

	-- Cockroach - 10688
	-- type15.2item_bindsBOUspellid10688source2method_vendorslocs352385type7react11price500000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60locs1497type7react31price500000descCockroach VendornameJeremiah Paysonid8403minlevel30level30methodsold-byid10393rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10688, 10393, 1)
	self:AddCompanionFlags(PetDB, 10688, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 10688, 1, 8403, 1, 20980)

	-- Dark Whelpling - 10695
	-- type15.2item_bindsBOUspellid10695source1level30method_dropslootCount78locs3type2maxlevel43totalLootCount71023react33nameScalding Whelpdisp715id2725minlevel41lootCount32locs152159type2maxlevel40totalLootCount34544react33nameSearing Whelpdisp397id4324minlevel39methoddropped-byid10822rarity1
	-- Obtain information: 	-- Raid: 2159 - Onyxia's Lair
--Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10695, 10822, 1)
	self:AddCompanionFlags(PetDB, 10695, 1,2,7,12,13)
	self:AddCompanionAcquire(PetDB, 10695, 4, 2725, 4, 4324)

	-- Azure Whelpling - 10696
	-- type15.2item_bindsBOUspellid10696source1level30method_dropslootCount2locs16type2maxlevel51totalLootCount3824react33classification1nameBlue Dragonspawndisp196id193minlevel50lootCount3locs16type2maxlevel53totalLootCount1451react33classification1nameBlue Scalebanedisp6760id6130minlevel52lootCount8locs16type2maxlevel52totalLootCount5095react33classification1nameDraconic Mageweaverdisp6761id6131minlevel51methoddropped-byid34535rarity1
	-- Obtain information: Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10696, 34535, 1)
	self:AddCompanionFlags(PetDB, 10696, 1,2,12,13)
	self:AddCompanionAcquire(PetDB, 10696, 4, 193, 4, 6130, 4, 6131)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2item_bindsBOUspellid10697source1level30method_dropslootCount13locs11type2maxlevel26totalLootCount4347react33nameCrimson Whelpdisp505id1069minlevel25lootCount7locs11type2maxlevel27totalLootCount1398react33nameFlamesnorting Whelpdisp8712id1044minlevel26lootCount11locs11type2maxlevel24totalLootCount3731react33nameRed Whelpdisp9583id1042minlevel23methoddropped-byid8499rarity1
	-- Obtain information: Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10697, 8499, 1)
	self:AddCompanionFlags(PetDB, 10697, 1,2,12,13)
	self:AddCompanionAcquire(PetDB, 10697, 4, 1042, 4, 1044, 4, 1069)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2item_bindsBOUspellid10698source1level30method_dropslootCount38locs8type2maxlevel36totalLootCount16719react33nameDreaming Whelpdisp621id741minlevel35methoddropped-byid8498rarity1
	-- Obtain information: Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10698, 8498, 1)
	self:AddCompanionFlags(PetDB, 10698, 1,2,12,13)
	self:AddCompanionAcquire(PetDB, 10698, 4, 741)

	-- Wood Frog Box - 10703
	-- type15.2item_bindsBOUspellid10703source2method_vendorslocs122153519type7maxlevel70react21price1000000nameFlikdisp14589id14860minlevel4level35methodsold-byid11027rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10703, 11027, 1)
	self:AddCompanionFlags(PetDB, 10703, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 10703, 1, 14860)

	-- Tree Frog Box - 10704
	-- type15.2item_bindsBOUspellid10704source2method_vendorslocs122153519type7maxlevel70react21price1000000nameFlikdisp14589id14860minlevel4level35methodsold-byid11026rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10704, 11026, 1)
	self:AddCompanionFlags(PetDB, 10704, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 10704, 1, 14860)

	-- Hawk Owl - 10706
	-- type15.2item_bindsBOUspellid10706source2method_vendorslocs1657type7react13price500000descOwl TrainernameShylenaiid8665minlevel30level30methodsold-byid8501rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10706, 8501, 1)
	self:AddCompanionFlags(PetDB, 10706, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10706, 1, 8665)

	-- Great Horned Owl - 10707
	-- type15.2item_bindsBOUspellid10707source2method_vendorslocs1657type7react13price500000descOwl TrainernameShylenaiid8665minlevel30level30methodsold-byid8500rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10707, 8500, 1)
	self:AddCompanionFlags(PetDB, 10707, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10707, 1, 8665)

	-- Prairie Dog Whistle - 10709
	-- type15.2item_bindsBOUspellid10709source2method_vendorslocs1638type7react31price500000descPrairie Dog VendornameHalpaid8401minlevel30level30methodsold-byid10394rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10709, 10394, 1)
	self:AddCompanionFlags(PetDB, 10709, 2,3,13)
	self:AddCompanionAcquire(PetDB, 10709, 1, 8401)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2item_bindsBOUspellid10711source23method_vendorslocs1type7react13price200000nameYarlyn Amberstillid1263minlevel1level20methodsold-byid8497rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10711, 8497, 1)
	self:AddCompanionFlags(PetDB, 10711, 1,3,13)
	self:AddCompanionAcquire(PetDB, 10711, 1, 1263)

	-- Black Kingsnake - 10714
	-- type15.2item_bindsBOUspellid10714source2method_vendorslocs1637type7react31price500000descSnake VendornameXan'tishid8404minlevel30level30methodsold-byid10360rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10714, 10360, 1)
	self:AddCompanionFlags(PetDB, 10714, 2,3,13)
	self:AddCompanionAcquire(PetDB, 10714, 1, 8404)

	-- Brown Snake - 10716
	-- type15.2item_bindsBOUspellid10716source2method_vendorslocs1637type7react31price500000descSnake VendornameXan'tishid8404minlevel30level30methodsold-byid10361rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10716, 10361, 1)
	self:AddCompanionFlags(PetDB, 10716, 2,3,13)
	self:AddCompanionAcquire(PetDB, 10716, 1, 8404)

	-- Crimson Snake - 10717
	-- type15.2item_bindsBOUspellid10717source2method_vendorslocs352385type7react11price500000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60locs1637type7react31price500000descSnake VendornameXan'tishid8404minlevel30level30methodsold-byid10392rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 10717, 10392, 1)
	self:AddCompanionFlags(PetDB, 10717, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 10717, 1, 8404, 1, 20980)

	-- Mechanical Chicken - 12243
	-- type15.2method_queststype0level50givenitems103981side1category035coin6000nameAn OOX of Your Ownid3721xp7100item_bindsBOUspellid12243source3level40methodrewardfromid10398rarity1
	-- Obtain information: Quest, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 12243, 10398, 1)
	self:AddCompanionFlags(PetDB, 12243, 1,2,4,13)
	self:AddCompanionAcquire(PetDB, 12243, 2, 3721)

	-- Chicken Egg - 13548
	-- type15.0item_bindsBOPspellid13548source1level1method_dropslootCount842locs40type3totalLootCount856nameFarm Chicken Eggid161513methoddropped-by,contained-in-objectid11110rarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 13548, 11110, 1)
	self:AddCompanionFlags(PetDB, 13548, 1,2,12,14)
	self:AddCompanionAcquire(PetDB, 13548, 4, 161513)

	-- Pet Bombling - 15048
	-- type7.3item_bindsBOPspellid15048source4method_craftedskillup0205205205reagents43941707717191138606category11school0learned205skillEngineeringnamePet Bomblingproduces118251id15628rarity1level41methodcraftedid11825rarity1
	-- Obtain information: Crafted, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15048, 11825, 1)
	self:AddCompanionFlags(PetDB, 15048, 1,2,5,14)
	self:AddCompanionAcquire(PetDB, 15048, 3, 4036, 15628)

	-- Lil' Smoky - 15049
	-- type7.3item_bindsBOPspellid15049source4method_craftedskillup0205205205reagents7075143892719113860260371category11school0learned205skillEngineeringnameLil' Smokyproduces118261id15633rarity1level41methodcraftedid11826rarity1
	-- Obtain information: Crafted, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15049, 11826, 1)
	self:AddCompanionFlags(PetDB, 15049, 1,2,5,14)
	self:AddCompanionAcquire(PetDB, 15049, 3, 4036, 15633)

	-- Sprite Darter Egg - 15067
	-- type15.0method_queststype0level48givenitems114741side2category1357coin360nameBecoming a Parentid4298xp625item_bindsBOPspellid15067source3level47methodrewardfromid11474rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15067, 11474, 1)
	self:AddCompanionFlags(PetDB, 15067, 1,4,14)
	self:AddCompanionAcquire(PetDB, 15067, 2, 4298)

	-- Worg Carrier - 15999
	-- type15.0method_queststype81level59givenitems122641side1category31583coin9000nameKibler's Exotic Petsid4729xp13950item_bindsBOPspellid15999source3level59methodrewardfromid12264rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 15999, 12264, 1)
	self:AddCompanionFlags(PetDB, 15999, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 15999, 2, 4729)

	-- Smolderweb Carrier - 16450
	-- type15.0method_queststype81level59givenitems125291side1category31583coin9000nameEn-Ay-Es-Tee-Whyid4862xp13950item_bindsBOPspellid16450source3level59methodrewardfromid12529rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 16450, 12529, 1)
	self:AddCompanionFlags(PetDB, 16450, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 16450, 2, 4862)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1method_queststype0level60givenitems121851side1category033coin8700nameAvast Ye, Admiral!id4621item_bindsBOParmor63spellid17567source3level60methodrewardfromid12185rarity2
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17567, 12185, 2)
	self:AddCompanionFlags(PetDB, 17567, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 17567, 2, 4621)

	-- Panda Collar - 17707
	-- type15.0method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1side4category03431choiceitems135841135831135821coin0nameWelcome!id8547type0level1side2category13526choiceitems135841135831135821coin0nameWelcome!id9278type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781item_bindsBOPspellid17707source3level20methodrewardfromid13583rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17707, 13583, 3)
	self:AddCompanionFlags(PetDB, 17707, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 17707, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Diablo Stone - 17708
	-- type15.0method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1side4category03431choiceitems135841135831135821coin0nameWelcome!id8547type0level1side2category13526choiceitems135841135831135821coin0nameWelcome!id9278type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781item_bindsBOPspellid17708source3level20methodrewardfromid13584rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17708, 13584, 3)
	self:AddCompanionFlags(PetDB, 17708, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 17708, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Zergling Leash - 17709
	-- type15.0method_queststype0level1category024choiceitems135841135831135821coin0nameWelcome!id5805type0level1category0132choiceitems135841135831135821coin0nameWelcome!id5841type0level1category1188choiceitems135841135831135821coin0nameWelcome!id5842type0level1category1363choiceitems135841135831135821coin0nameWelcome!id5843type0level1category1221choiceitems135841135831135821coin0nameWelcome!id5844type0level1category0154choiceitems135841135831135821coin0nameWelcome!id5847type0level1side4category03431choiceitems135841135831135821coin0nameWelcome!id8547type0level1side2category13526choiceitems135841135831135821coin0nameWelcome!id9278type0level1category00choiceitems135841135831135821coin0nameWelcome!id12781item_bindsBOPspellid17709source3level20methodrewardfromid13582rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 17709, 13582, 3)
	self:AddCompanionFlags(PetDB, 17709, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 17709, 2, 5805, 2, 5841, 2, 5842, 2, 5843, 2, 5844, 2, 5847, 2, 8547, 2, 9278, 2, 12781)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2item_bindsBOUspellid19772source4method_craftedskillup265285295305reagents12803115994410558181701category11school0learned265skillEngineeringnameLifelike Mechanical Toadproduces159961id19793rarity1level53methodcraftedid15996rarity1
	-- Obtain information: Crafted, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 19772, 15996, 1)
	self:AddCompanionFlags(PetDB, 19772, 1,2,5,13)
	self:AddCompanionAcquire(PetDB, 19772, 3, 4036, 19793)

	-- Orcish Orphan Whistle - 23012
	-- type15.0item_bindsBOPspellid23012source3level10methodredemptionid18597method_redemptionUnknownrarity1
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 23012, 18597, 1)
	--self:AddCompanionFlags(PetDB, 23012, 1,2,11,14)
	-- No acquire information

	-- Human Orphan Whistle - 23013
	-- type15.0item_bindsBOPspellid23013source3level10methodredemptionid18598method_redemptionUnknownrarity1
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 23013, 18598, 1)
	--self:AddCompanionFlags(PetDB, 23013, 1,2,11,14)
	-- No acquire information

	-- A Jubling's Tiny Home - 23811
	-- type15.2item_bindsBOPspellid23811level35methodredemptionid19450method_redemptionUnknownrarity1
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 23811, 19450, 1)
	self:AddCompanionFlags(PetDB, 23811, 1,2,11,14)
	-- No acquire information

	-- Blue Murloc Egg - 24696
	-- type15.0item_bindsBOPspellid24696level20methodid20371rarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 24696, 20371, 3)
	self:AddCompanionFlags(PetDB, 24696, 14)
	-- No acquire information

	-- Lurky's Egg - 24988
	-- type15.0item_bindsBOPspellid24988level1methodid30360rarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 24988, 30360, 3)
	self:AddCompanionFlags(PetDB, 24988, 14)
	-- No acquire information

	-- Disgusting Oozeling - 25162
	-- type15.2item_bindsBOUspellid25162level55method_dropslootCount17type15.0totalLootCount951source1level50nameOozing Bagid20768rarity1methodcontained-in-itemid20769rarity1
	-- Obtain information: Unknown, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 25162, 20769, 1)
	self:AddCompanionFlags(PetDB, 25162, 1,2,13)
	-- No acquire information

	-- Baby Shark - 25849
	-- type15.2item_bindsBOEspellid25849level20methodid21168rarity1
	-- Obtain information: 
	-- Flags: 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 25849, 21168, 1)
	-- No filter flags
	-- No acquire information

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2item_bindsBOUspellid26010source4method_craftedskillup300320330340reagents15407115994470792186312105581category11school0learned300skillEngineeringnameTranquil Mechanical Yetiproduces212771id26011rarity1level60methodcraftedid21277rarity1
	-- Obtain information: Crafted, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26010, 21277, 1)
	self:AddCompanionFlags(PetDB, 26010, 1,2,5,13)
	self:AddCompanionAcquire(PetDB, 26010, 3, 4036, 26011)

	-- Snowman Kit - 26469
	-- type15.3item_bindsBOUspellid26469source1level1method_dropslootCount4type15.0totalLootCount31level1rlevel1nameGaily Wrapped Presentid21310rarity1methoddropped-by,contained-in-itemid21309rarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26469, 21309, 1)
	self:AddCompanionFlags(PetDB, 26469, 1,2,13)
	self:AddCompanionAcquire(PetDB, 26469, 4, 21310)

	-- Jingling Bell - 26528
	-- type15.3item_bindsBOUspellid26528source1level1method_dropslootCount6type15.0totalLootCount31level1rlevel1nameGaily Wrapped Presentid21310rarity1methoddropped-by,contained-in-itemid21308rarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26528, 21308, 1)
	self:AddCompanionFlags(PetDB, 26528, 1,2,13)
	self:AddCompanionAcquire(PetDB, 26528, 4, 21310)

	-- Green Helper Box - 26532
	-- type15.3item_bindsBOUspellid26532source1level1method_dropslootCount6type15.0totalLootCount31level1rlevel1nameGaily Wrapped Presentid21310rarity1methoddropped-by,contained-in-itemid21301rarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26532, 21301, 1)
	self:AddCompanionFlags(PetDB, 26532, 1,2,13)
	self:AddCompanionAcquire(PetDB, 26532, 4, 21310)

	-- Red Helper Box - 26541
	-- type15.3item_bindsBOUspellid26541source1level1method_dropslootCount15type15.0totalLootCount31level1rlevel1nameGaily Wrapped Presentid21310rarity1methoddropped-by,contained-in-itemid21305rarity1
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 26541, 21305, 1)
	self:AddCompanionFlags(PetDB, 26541, 1,2,13)
	self:AddCompanionAcquire(PetDB, 26541, 4, 21310)

	-- Pink Murloc Egg - 27241
	-- type15.0item_bindsBOPspellid27241level20methodid22114rarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 27241, 22114, 3)
	self:AddCompanionFlags(PetDB, 27241, 14)
	-- No acquire information

	-- Truesilver Shafted Arrow - 27570
	-- type15.0item_bindsBOPspellid27570level1method_dropslootCount1type15.3totalLootCount18level1nameGift of Adoration: Stormwindid21981rarity1lootCount1type15.3totalLootCount12level1namePledge of Adoration: Ironforgeid22154rarity1methodcontained-in-itemid22235rarity1
	-- Obtain information: Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 27570, 22235, 1)
	self:AddCompanionFlags(PetDB, 27570, 1,2,14)
	-- No acquire information

	-- Polar Bear Collar - 28505
	-- type15.0item_bindsBOPspellid28505level1methodid22781rarity1
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28505, 22781, 1)
	self:AddCompanionFlags(PetDB, 28505, 14)
	-- No acquire information

	-- Turtle Box - 28738
	-- type15.0method_queststype0level60side2category-3284choiceitems230071230151230021230221coin1020nameA Warden of the Allianceid171xp3100type0level60side4category-3284choiceitems230071230151230021230221coin0nameA Warden of the Hordeid5502xp3100item_bindsBOPspellid28738source3level1methodrewardfromid23002rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28738, 23002, 1)
	self:AddCompanionFlags(PetDB, 28738, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 28738, 2, 171, 2, 5502)

	-- Piglet's Collar - 28739
	-- type15.0method_queststype0level60side2category-3284choiceitems230071230151230021230221coin1020nameA Warden of the Allianceid171xp3100type0level60side4category-3284choiceitems230071230151230021230221coin0nameA Warden of the Hordeid5502xp3100item_bindsBOPspellid28739source3level1methodrewardfromid23007rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28739, 23007, 1)
	self:AddCompanionFlags(PetDB, 28739, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 28739, 2, 171, 2, 5502)

	-- Rat Cage - 28740
	-- type15.0method_queststype0level60side2category-3284choiceitems230071230151230021230221coin1020nameA Warden of the Allianceid171xp3100type0level60side4category-3284choiceitems230071230151230021230221coin0nameA Warden of the Hordeid5502xp3100item_bindsBOPspellid28740source3level1methodrewardfromid23015rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 28740, 23015, 1)
	self:AddCompanionFlags(PetDB, 28740, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 28740, 2, 171, 2, 5502)

	-- Hippogryph Hatchling - 30156
	-- type15.0item_bindsBOPspellid30156level1methodid23713rarity4
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 30156, 23713, 4)
	self:AddCompanionFlags(PetDB, 30156, 14)
	-- No acquire information

	-- Netherwhelp's Collar - 32298
	-- type15.0item_bindsBOPspellid32298source3level20methodredemptionid25535method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 32298, 25535, 3)
	self:AddCompanionFlags(PetDB, 32298, 1,2,11,14)
	-- No acquire information

	-- Magical Crawdad Box - 33050
	-- type15.0item_bindsBOPspellid33050level70methodredemptionid27445method_redemptionUnknownrarity1
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 33050, 27445, 1)
	self:AddCompanionFlags(PetDB, 33050, 1,2,11,14)
	-- No acquire information

	-- Mana Wyrmling - 35156
	-- type15.2item_bindsBOUspellid35156source2method_vendorslocs352385type7react11price40000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60level70methodsold-byid29363rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35156, 29363, 1)
	self:AddCompanionFlags(PetDB, 35156, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 35156, 1, 20980)

	-- Brown Rabbit Crate - 35239
	-- type15.2item_bindsBOUspellid35239source2method_vendorslocs352385type7react11price10000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60level70methodsold-byid29364rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35239, 29364, 1)
	self:AddCompanionFlags(PetDB, 35239, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 35239, 1, 20980)

	-- Blue Moth Egg - 35907
	-- type15.2item_bindsBOUspellid35907source2method_vendorslocs3557type7react13price500000descMoth KeepernameSixxid21019minlevel30level20methodsold-byid29901rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35907, 29901, 1)
	self:AddCompanionFlags(PetDB, 35907, 1,3,13)
	self:AddCompanionAcquire(PetDB, 35907, 1, 21019)

	-- Red Moth Egg - 35909
	-- type15.2item_bindsBOUspellid35909source2method_vendorslocs352385type7react11price10000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60level70methodsold-byid29902rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35909, 29902, 1)
	self:AddCompanionFlags(PetDB, 35909, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 35909, 1, 20980)

	-- Yellow Moth Egg - 35910
	-- type15.2item_bindsBOUspellid35910source2method_vendorslocs3557type7react13price500000descMoth KeepernameSixxid21019minlevel30level20methodsold-byid29903rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35910, 29903, 1)
	self:AddCompanionFlags(PetDB, 35910, 1,3,13)
	self:AddCompanionAcquire(PetDB, 35910, 1, 21019)

	-- White Moth Egg - 35911
	-- type15.2item_bindsBOUspellid35911source2method_vendorslocs3557type7react13price500000descMoth KeepernameSixxid21019minlevel30level20methodsold-byid29904rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 35911, 29904, 1)
	self:AddCompanionFlags(PetDB, 35911, 1,3,13)
	self:AddCompanionAcquire(PetDB, 35911, 1, 21019)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2item_bindsBOUspellid36027source2method_vendorslocs3430type7react31price500000nameJilanneid16860minlevel9level20methodsold-byid29953rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36027, 29953, 1)
	self:AddCompanionFlags(PetDB, 36027, 2,3,13)
	self:AddCompanionAcquire(PetDB, 36027, 1, 16860)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2item_bindsBOUspellid36028source2method_vendorslocs3430type7react31price500000nameJilanneid16860minlevel9level20methodsold-byid29956rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36028, 29956, 1)
	self:AddCompanionFlags(PetDB, 36028, 2,3,13)
	self:AddCompanionAcquire(PetDB, 36028, 1, 16860)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2item_bindsBOUspellid36029source2method_vendorslocs3430type7react31price500000nameJilanneid16860minlevel9level20methodsold-byid29957rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36029, 29957, 1)
	self:AddCompanionFlags(PetDB, 36029, 2,3,13)
	self:AddCompanionAcquire(PetDB, 36029, 1, 16860)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2item_bindsBOUspellid36031source2method_vendorslocs352385type7react11price10000000descExotic CreaturesnameDealer Rashaaddisp20988id20980minlevel60level70methodsold-byid29958rarity1
	-- Obtain information: Vendor, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36031, 29958, 1)
	self:AddCompanionFlags(PetDB, 36031, 1,2,3,13)
	self:AddCompanionAcquire(PetDB, 36031, 1, 20980)

	-- Captured Firefly - 36034
	-- type15.2item_bindsBOUspellid36034source1level20method_dropslootCount77locs3521type10totalLootCount151282react33nameBogflare Needlerdisp18723id20197minlevel62methoddropped-byid29960rarity1
	-- Obtain information: Mob Drop, 
	-- Flags: BOU, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 36034, 29960, 1)
	self:AddCompanionFlags(PetDB, 36034, 1,2,12,13)
	self:AddCompanionAcquire(PetDB, 36034, 4, 20197)

	-- Miniwing - 39181
	-- type15.0method_queststype1level65givenitems317601side1category23519choiceitems317661317651317641coin66000nameSkywingid10898xp13750item_bindsBOPspellid39181source3level96methodrewardfromid31760rarity1
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 39181, 31760, 1)
	self:AddCompanionFlags(PetDB, 39181, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 39181, 2, 10898)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0item_bindsBOPspellid39478source3level1methodredemptionid31880method_redemptionUnknownrarity1
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 39478, 31880, 1)
	--self:AddCompanionFlags(PetDB, 39478, 1,2,11,14)
	-- No acquire information

	-- Draenei Orphan Whistle - 39479
	-- type15.0item_bindsBOPspellid39479source3level1methodredemptionid31881method_redemptionUnknownrarity1
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	--companioncount = companioncount + 1
	--self:AddCompanion(PetDB, 39479, 31881, 1)
	--self:AddCompanionFlags(PetDB, 39479, 1,2,11,14)
	-- No acquire information

	-- Wolpertinger's Tankard - 39709
	-- type15.0method_queststype0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11117type0givenitems322331category-3370coin0nameCatch the Wild Wolpertinger!id11431item_bindsBOPspellid39709source3level20methodrewardfromid32233rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 39709, 32233, 3)
	self:AddCompanionFlags(PetDB, 39709, 4,14)
	self:AddCompanionAcquire(PetDB, 39709, 2, 11117, 2, 11431)

	-- Fortune Coin - 40405
	-- type15.0item_bindsBOPspellid40405level1methodredemptionid32498method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40405, 32498, 3)
	self:AddCompanionFlags(PetDB, 40405, 1,2,11,14)
	-- No acquire information

	-- Banana Charm - 40549
	-- type15.0item_bindsBOPspellid40549level1methodredemptionid32588method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40549, 32588, 3)
	self:AddCompanionFlags(PetDB, 40549, 1,2,11,14)
	-- No acquire information

	-- Sleepy Willy - 40613
	-- type15.0method_queststype0level70side2category-3284choiceitems326221326161326171coin0nameBack to the Orphanageid10966xp12300type0level70side4category-3284choiceitems326161326221326171coin0nameBack to the Orphanageid10967xp12300item_bindsBOPspellid40613source3level20methodrewardfromid32617rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40613, 32617, 3)
	self:AddCompanionFlags(PetDB, 40613, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 40613, 2, 10966, 2, 10967)

	-- Egbert's Egg - 40614
	-- type15.0method_queststype0level70side2category-3284choiceitems326221326161326171coin0nameBack to the Orphanageid10966xp12300type0level70side4category-3284choiceitems326161326221326171coin0nameBack to the Orphanageid10967xp12300item_bindsBOPspellid40614source3level20methodrewardfromid32616rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40614, 32616, 3)
	self:AddCompanionFlags(PetDB, 40614, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 40614, 2, 10966, 2, 10967)

	-- Elekk Training Collar - 40634
	-- type15.0method_queststype0level70side2category-3284choiceitems326221326161326171coin0nameBack to the Orphanageid10966xp12300type0level70side4category-3284choiceitems326161326221326171coin0nameBack to the Orphanageid10967xp12300item_bindsBOPspellid40634source3level20methodrewardfromid32622rarity3
	-- Obtain information: Quest, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40634, 32622, 3)
	self:AddCompanionFlags(PetDB, 40634, 1,2,4,14)
	self:AddCompanionAcquire(PetDB, 40634, 2, 10966, 2, 10967)

	-- Reeking Pet Carrier - 40990
	-- type15.2item_bindsBOEspellid40990level1methodid40653rarity3
	-- Obtain information: 
	-- Flags: 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 40990, 40653, 3)
	-- No filter flags
	-- No acquire information

	-- Sinister Squashling - 42609
	-- type15.0item_bindsBOPspellid42609level20methodid33154rarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 42609, 33154, 3)
	self:AddCompanionFlags(PetDB, 42609, 14)
	-- No acquire information

	-- Toothy's Bucket - 43697
	-- type15.2item_bindsBOPspellid43697level20method_dropslootCount45type15.0totalLootCount7879source3level70nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid33816rarity3
	-- Obtain information: Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43697, 33816, 3)
	self:AddCompanionFlags(PetDB, 43697, 1,2,14)
	-- No acquire information

	-- Muckbreath's Bucket - 43698
	-- type15.2item_bindsBOPspellid43698level20method_dropslootCount49type15.0totalLootCount7879source3level70nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid33818rarity3
	-- Obtain information: Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43698, 33818, 3)
	self:AddCompanionFlags(PetDB, 43698, 1,2,14)
	-- No acquire information

	-- Mojo - 43918
	-- type15.0item_bindsBOPspellid43918level20methodredemptionid33993method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 43918, 33993, 3)
	self:AddCompanionFlags(PetDB, 43918, 1,2,11,14)
	-- No acquire information

	-- Clockwork Rocket Bot - 45048
	-- type15.3item_bindsBOPspellid45048source1level1method_dropslootCount33type15.0totalLootCount33level1rlevel1nameWinter Veil Giftid34426rarity1methoddropped-by,contained-in-itemid34425rarity3
	-- Obtain information: Mob Drop, Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45048, 34425, 3)
	self:AddCompanionFlags(PetDB, 45048, 1,2,14)
	self:AddCompanionAcquire(PetDB, 45048, 4, 34426)

	-- Tiny Sporebat - 45082
	-- type15.2item_bindsBOPspellid45082source2method_vendorslocs3521type7react11price000242453000000000descSporeggar QuartermasternameMycahdisp17626id18382minlevel64level70methodsold-byid34478rarity3
	-- Obtain information: Vendor, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45082, 34478, 3)
	self:AddCompanionFlags(PetDB, 45082, 1,2,3,14)
	self:AddCompanionAcquire(PetDB, 45082, 1, 18382)

	-- Rocket Chicken - 45125
	-- type15.2item_bindsBOPspellid45125level1methodredemptionid34492method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45125, 34492, 3)
	self:AddCompanionFlags(PetDB, 45125, 1,2,11,14)
	-- No acquire information

	-- Dragon Kite - 45127
	-- type15.2item_bindsBOPspellid45127level1methodredemptionid34493method_redemptionUnknownrarity4
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45127, 34493, 4)
	self:AddCompanionFlags(PetDB, 45127, 1,2,11,14)
	-- No acquire information

	-- Scorched Stone - 45890
	-- type15.0item_bindsBOPspellid45890level20methodid34955rarity3
	-- Obtain information: 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 45890, 34955, 3)
	self:AddCompanionFlags(PetDB, 45890, 14)
	-- No acquire information

	-- Snarly's Bucket - 46425
	-- type15.2item_bindsBOPspellid46425level20method_dropslootCount33type15.0totalLootCount7879source3level70nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid35349rarity3
	-- Obtain information: Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46425, 35349, 3)
	self:AddCompanionFlags(PetDB, 46425, 1,2,14)
	-- No acquire information

	-- Chuck's Bucket - 46426
	-- type15.2item_bindsBOPspellid46426level20method_dropslootCount59type15.0totalLootCount7879source3level70nameBag of Fishing Treasuresid35348rarity1methodcontained-in-itemid35350rarity3
	-- Obtain information: Unknown, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46426, 35350, 3)
	self:AddCompanionFlags(PetDB, 46426, 1,2,14)
	-- No acquire information

	-- Phoenix Hatchling - 46599
	-- type15.2item_bindsBOPspellid46599source1level70method_dropslootCount153locs409537033845type7totalLootCount9689react33classification3descLord of the Blood ElvesnameKael'thas Sunstriderdisp20023id23054minlevel72lootCount89locs4095type7totalLootCount6321react33classification1descLord of the Blood ElvesnameKael'thas Sunstriderdisp22906id24664minlevel72methoddropped-byid35504rarity3
	-- Obtain information: 	-- Instance: 4095 - type1maxlevel70territory1category3expansion1nameMagisters' Terracelimit5id4095minlevel70
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1maxlevel70territory1category3expansion1nameMagisters' Terracelimit5id4095minlevel70
--Mob Drop, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 46599, 35504, 3)
	self:AddCompanionFlags(PetDB, 46599, 1,2,6,7,12,14)
	self:AddCompanionAcquire(PetDB, 46599, 4, 23054, 4, 24664)

	-- Soul-Trader Beacon - 49964
	-- type15.2item_bindsBOPspellid49964level20methodredemptionid38050method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 49964, 38050, 3)
	self:AddCompanionFlags(PetDB, 49964, 1,2,11,14)
	-- No acquire information

	-- Nether Ray Fry - 51716
	-- type15.2item_bindsBOPspellid51716source2method_vendorslocs3519type7react11price00000000descSkyguard QuartermasternameGrellaid23367minlevel70level70methodsold-byid38628rarity3
	-- Obtain information: Vendor, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 51716, 38628, 3)
	self:AddCompanionFlags(PetDB, 51716, 1,2,3,14)
	self:AddCompanionAcquire(PetDB, 51716, 1, 23367)

	-- Tyrael's Hilt - 53082
	-- type15.0item_bindsBOPspellid53082level20methodredemptionid39656method_redemptionUnknownrarity3
	-- Obtain information: Redemption, 
	-- Flags: BOP, 
	companioncount = companioncount + 1
	self:AddCompanion(PetDB, 53082, 39656, 3)
	self:AddCompanionFlags(PetDB, 53082, 1,2,11,14)
	-- No acquire information

	return companioncount

end
