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

	-- Mechanical Squirrel Box - 3928
	-- type15.2spellid3928source4level15method_crafted3928methodcraftedid4401rarity1
	-- Crafted
	self:AddCompanion(PetDB, 3928, 4401, 1)

	-- Cat Carrier (Bombay) - 10673
	-- type15.2method_vendorstype7descCrazy Cat Ladyminlevel5locs12nameDonni Anthaniaid6367price400000react13spellid10673source2level20methodsold-byid8485rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10673, 8485, 1)

	-- Cat Carrier (Cornish Rex) - 10674
	-- type15.2method_vendorstype7descCrazy Cat Ladyminlevel5locs12nameDonni Anthaniaid6367price400000react13spellid10674source2level20methodsold-byid8486rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10674, 8486, 1)

	-- Cat Carrier (Black Tabby) - 10675
	-- type15.2spellid10675source1method_dropstype7minlevel31maxlevel32lootCount40totalLootCount24111locs36267nameDalaran Shield Guardid2271react13type7minlevel21lootCount33totalLootCount306locs130nameDalaran Spellscribeclassification4id1920react13type7minlevel34maxlevel35lootCount14totalLootCount13900locs36nameDalaran Summonerid2358react13type7minlevel32maxlevel33lootCount22totalLootCount10307locs36267nameDalaran Theurgistid2272react13level20methoddropped-byid8491rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10675, 8491, 1)

	-- Cat Carrier (Orange Tabby) - 10676
	-- type15.2method_vendorstype7descCrazy Cat Ladyminlevel5locs12nameDonni Anthaniaid6367price400000react13spellid10676source2level20methodsold-byid8487rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10676, 8487, 1)

	-- Cat Carrier (Siamese) - 10677
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price600000react11spellid10677source12method_dropstype7descThe Ship's Cookminlevel20disp1305lootCount1590totalLootCount28314locs1581nameCookieclassification1id645react33level20methoddropped-by,sold-byid8490rarity1
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 10677, 8490, 1)

	-- Cat Carrier (Silver Tabby) - 10678
	-- type15.2method_vendorstype7descCrazy Cat Ladyminlevel5locs12nameDonni Anthaniaid6367price400000react13spellid10678source2level20methodsold-byid8488rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10678, 8488, 1)

	-- Cat Carrier (White Kitten) - 10679
	-- type15.2method_vendorstype7descBoy with kittensminlevel5disp7935locs1519nameLil Timmyid8666price600000react13spellid10679source2level20methodsold-byid8489rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10679, 8489, 1)

	-- Parrot Cage (Cockatiel) - 10680
	-- type15.2method_vendorstype7descPirate Suppliesminlevel42locs33nameNarkkid2663price400000react13spellid10680source2level20methodsold-byid8496rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10680, 8496, 1)

	-- Parrot Cage (Hyacinth Macaw) - 10682
	-- type15.2spellid10682source13method_dropstype7minlevel39lootCount1totalLootCount5699locs33name\"Pretty Boy\" Duncanid2545react33type7minlevel42lootCount4totalLootCount10436locs33nameBloodsail Deckhandid4505react33type7minlevel39maxlevel41lootCount6totalLootCount35020locs33nameBloodsail Mageid1562react33type7minlevel39disp793maxlevel41lootCount9totalLootCount35811locs33nameBloodsail Raiderid1561react33type7minlevel41disp796maxlevel42lootCount4totalLootCount10895locs33nameBloodsail Sea Dogid1565react33type7minlevel40disp1902lootCount1totalLootCount16140locs33nameBloodsail Swabbyid4506react33type7minlevel40disp796maxlevel41lootCount5totalLootCount66557locs33nameBloodsail Swashbucklerid1563react33type7minlevel40maxlevel41lootCount4totalLootCount64146locs33nameBloodsail Warlockid1564react33level20methoddropped-byid8494rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10682, 8494, 1)

	-- Parrot Cage (Green Wing Macaw) - 10683
	-- type15.2spellid10683source1method_dropstype7minlevel19maxlevel20lootCount3042totalLootCount104503locs1581nameDefias Pirateclassification1id657react33level20methoddropped-byid8492rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10683, 8492, 1)

	-- Parrot Cage (Senegal) - 10684
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price400000react11type7descPirate Suppliesminlevel42locs33nameNarkkid2663price400000react13spellid10684source2level20methodsold-byid8495rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10684, 8495, 1)

	-- Ancona Chicken - 10685
	-- type15.2method_vendorstype7minlevel51locs400nameMagus Tirthid6548price1000000react11spellid10685source2level35methodsold-byid11023rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10685, 11023, 1)

	-- Cockroach - 10688
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price500000react11type7descCockroach Vendorminlevel30locs1497nameJeremiah Paysonid8403price500000react31spellid10688source2level30methodsold-byid10393rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10688, 10393, 1)

	-- Dark Whelpling - 10695
	-- type15.2spellid10695source1method_dropstype2minlevel41disp715maxlevel43lootCount78totalLootCount71023locs3nameScalding Whelpid2725react33type2minlevel39disp397maxlevel40lootCount32totalLootCount34544locs152159nameSearing Whelpid4324react33level30methoddropped-byid10822rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10695, 10822, 1)

	-- Azure Whelpling - 10696
	-- type15.2spellid10696source1method_dropstype2minlevel50disp196maxlevel51lootCount2totalLootCount3824locs16nameBlue Dragonspawnclassification1id193react33type2minlevel52disp6760maxlevel53lootCount3totalLootCount1451locs16nameBlue Scalebaneclassification1id6130react33type2minlevel51disp6761maxlevel52lootCount8totalLootCount5095locs16nameDraconic Mageweaverclassification1id6131react33level30methoddropped-byid34535rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10696, 34535, 1)

	-- Tiny Crimson Whelpling - 10697
	-- type15.2spellid10697source1method_dropstype2minlevel25disp505maxlevel26lootCount13totalLootCount4347locs11nameCrimson Whelpid1069react33type2minlevel26disp8712maxlevel27lootCount7totalLootCount1398locs11nameFlamesnorting Whelpid1044react33type2minlevel23disp9583maxlevel24lootCount11totalLootCount3731locs11nameRed Whelpid1042react33level30methoddropped-byid8499rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10697, 8499, 1)

	-- Tiny Emerald Whelpling - 10698
	-- type15.2spellid10698source1method_dropstype2minlevel35disp621maxlevel36lootCount38totalLootCount16719locs8nameDreaming Whelpid741react33level30methoddropped-byid8498rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 10698, 8498, 1)

	-- Wood Frog Box - 10703
	-- type15.2method_vendorstype7minlevel4disp14589maxlevel70locs122153519nameFlikid14860price1000000react21spellid10703source2level35methodsold-byid11027rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10703, 11027, 1)

	-- Tree Frog Box - 10704
	-- type15.2method_vendorstype7minlevel4disp14589maxlevel70locs122153519nameFlikid14860price1000000react21spellid10704source2level35methodsold-byid11026rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10704, 11026, 1)

	-- Hawk Owl - 10706
	-- type15.2method_vendorstype7descOwl Trainerminlevel30locs1657nameShylenaiid8665price500000react13spellid10706source2level30methodsold-byid8501rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10706, 8501, 1)

	-- Great Horned Owl - 10707
	-- type15.2method_vendorstype7descOwl Trainerminlevel30locs1657nameShylenaiid8665price500000react13spellid10707source2level30methodsold-byid8500rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10707, 8500, 1)

	-- Prairie Dog Whistle - 10709
	-- type15.2method_vendorstype7descPrairie Dog Vendorminlevel30locs1638nameHalpaid8401price500000react31spellid10709source2level30methodsold-byid10394rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10709, 10394, 1)

	-- Rabbit Crate (Snowshoe) - 10711
	-- type15.2method_vendorstype7minlevel1locs1nameYarlyn Amberstillid1263price200000react13spellid10711source23level20methodsold-byid8497rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10711, 8497, 1)

	-- Black Kingsnake - 10714
	-- type15.2method_vendorstype7descSnake Vendorminlevel30locs1637nameXan'tishid8404price500000react31spellid10714source2level30methodsold-byid10360rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10714, 10360, 1)

	-- Brown Snake - 10716
	-- type15.2method_vendorstype7descSnake Vendorminlevel30locs1637nameXan'tishid8404price500000react31spellid10716source2level30methodsold-byid10361rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10716, 10361, 1)

	-- Crimson Snake - 10717
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price500000react11type7descSnake Vendorminlevel30locs1637nameXan'tishid8404price500000react31spellid10717source2level30methodsold-byid10392rarity1
	-- Vendor
	self:AddCompanion(PetDB, 10717, 10392, 1)

	-- Mechanical Chicken - 12243
	-- type15.2spellid12243source3level40method_queststype0xp7100side1level50category035nameAn OOX of Your Owncoin6000givenitems103981id3721methodrewardfromid10398rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 12243, 10398, 1)

	-- Chicken Egg - 13548
	-- type15.0spellid13548source1method_dropstype3lootCount842totalLootCount856locs40nameFarm Chicken Eggid161513level1methoddropped-by,contained-in-objectid11110rarity1
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 13548, 11110, 1)

	-- Pet Bombling - 15048
	-- type7.3spellid15048source4level41method_crafted15628methodcraftedid11825rarity1
	-- Crafted
	self:AddCompanion(PetDB, 15048, 11825, 1)

	-- Lil' Smoky - 15049
	-- type7.3spellid15049source4level41method_crafted15633methodcraftedid11826rarity1
	-- Crafted
	self:AddCompanion(PetDB, 15049, 11826, 1)

	-- Sprite Darter Egg - 15067
	-- type15.0spellid15067source3level47method_queststype0xp625side2level48category1357nameBecoming a Parentcoin360givenitems114741id4298methodrewardfromid11474rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 15067, 11474, 1)

	-- Worg Carrier - 15999
	-- type15.0spellid15999source3level59method_queststype81xp13950side1level59category31583nameKibler's Exotic Petscoin9000givenitems122641id4729methodrewardfromid12264rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 15999, 12264, 1)

	-- Smolderweb Carrier - 16450
	-- type15.0spellid16450source3level59method_queststype81xp13950side1level59category31583nameEn-Ay-Es-Tee-Whycoin9000givenitems125291id4862methodrewardfromid12529rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 16450, 12529, 1)

	-- Bloodsail Admiral's Hat - 17567
	-- type4.1spellid17567source3armor63level60method_queststype0side1level60category033nameAvast Ye, Admiral!coin8700givenitems121851id4621methodrewardfromid12185rarity2
	-- Quest Reward
	self:AddCompanion(PetDB, 17567, 12185, 2)

	-- Panda Collar - 17707
	-- type15.0spellid17707source3level20method_queststype0level1choiceitems135841135831135821category024nameWelcome!coin0id5805type0level1choiceitems135841135831135821category0132nameWelcome!coin0id5841type0level1choiceitems135841135831135821category1188nameWelcome!coin0id5842type0level1choiceitems135841135831135821category1363nameWelcome!coin0id5843type0level1choiceitems135841135831135821category1221nameWelcome!coin0id5844type0level1choiceitems135841135831135821category0154nameWelcome!coin0id5847type0side4level1choiceitems135841135831135821category03431nameWelcome!coin0id8547type0side2level1choiceitems135841135831135821category13526nameWelcome!coin0id9278type0level1choiceitems135841135831135821category00nameWelcome!coin0id12781methodrewardfromid13583rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 17707, 13583, 3)

	-- Diablo Stone - 17708
	-- type15.0spellid17708source3level20method_queststype0level1choiceitems135841135831135821category024nameWelcome!coin0id5805type0level1choiceitems135841135831135821category0132nameWelcome!coin0id5841type0level1choiceitems135841135831135821category1188nameWelcome!coin0id5842type0level1choiceitems135841135831135821category1363nameWelcome!coin0id5843type0level1choiceitems135841135831135821category1221nameWelcome!coin0id5844type0level1choiceitems135841135831135821category0154nameWelcome!coin0id5847type0side4level1choiceitems135841135831135821category03431nameWelcome!coin0id8547type0side2level1choiceitems135841135831135821category13526nameWelcome!coin0id9278type0level1choiceitems135841135831135821category00nameWelcome!coin0id12781methodrewardfromid13584rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 17708, 13584, 3)

	-- Zergling Leash - 17709
	-- type15.0spellid17709source3level20method_queststype0level1choiceitems135841135831135821category024nameWelcome!coin0id5805type0level1choiceitems135841135831135821category0132nameWelcome!coin0id5841type0level1choiceitems135841135831135821category1188nameWelcome!coin0id5842type0level1choiceitems135841135831135821category1363nameWelcome!coin0id5843type0level1choiceitems135841135831135821category1221nameWelcome!coin0id5844type0level1choiceitems135841135831135821category0154nameWelcome!coin0id5847type0side4level1choiceitems135841135831135821category03431nameWelcome!coin0id8547type0side2level1choiceitems135841135831135821category13526nameWelcome!coin0id9278type0level1choiceitems135841135831135821category00nameWelcome!coin0id12781methodrewardfromid13582rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 17709, 13582, 3)

	-- Lifelike Mechanical Toad - 19772
	-- type15.2spellid19772source4level53method_crafted19793methodcraftedid15996rarity1
	-- Crafted
	self:AddCompanion(PetDB, 19772, 15996, 1)

	-- Orcish Orphan Whistle - 23012
	-- type15.0spellid23012source3level10method_crafted23125methodcraftedid18597rarity1
	-- Crafted
	--self:AddCompanion(PetDB, 23012, 18597, 1)

	-- Human Orphan Whistle - 23013
	-- type15.0spellid23013source3level10method_crafted23124methodcraftedid18598rarity1
	-- Crafted
	--self:AddCompanion(PetDB, 23013, 18598, 1)

	-- A Jubling's Tiny Home - 23811
	-- type15.2spellid23811level35method_crafted23851methodcraftedid19450rarity1
	-- Crafted
	self:AddCompanion(PetDB, 23811, 19450, 1)

	-- Blue Murloc Egg - 24696
	-- type15.0spellid24696level20methodid20371rarity3
	self:AddCompanion(PetDB, 24696, 20371, 3)

	-- Lurky's Egg - 24988
	-- type15.0spellid24988level1methodid30360rarity3
	self:AddCompanion(PetDB, 24988, 30360, 3)

	-- Disgusting Oozeling - 25162
	-- type15.2spellid25162method_dropstype15.0source1lootCount17level50totalLootCount951nameOozing Bagid20768rarity1level55methodcontained-in-itemid20769rarity1
	-- Unknown
	self:AddCompanion(PetDB, 25162, 20769, 1)

	-- Baby Shark - 25849
	-- type15.2spellid25849level20methodid21168rarity1
	--self:AddCompanion(PetDB, 25849, 21168, 1)

	-- Tranquil Mechanical Yeti - 26010
	-- type15.2spellid26010source4level60method_crafted26011methodcraftedid21277rarity1
	-- Crafted
	self:AddCompanion(PetDB, 26010, 21277, 1)

	-- Snowman Kit - 26469
	-- type15.3spellid26469source1method_dropstype15.0rlevel1lootCount4level1totalLootCount31nameGaily Wrapped Presentid21310rarity1level1methoddropped-by,contained-in-itemid21309rarity1
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26469, 21309, 1)

	-- Jingling Bell - 26528
	-- type15.3spellid26528source1method_dropstype15.0rlevel1lootCount6level1totalLootCount31nameGaily Wrapped Presentid21310rarity1level1methoddropped-by,contained-in-itemid21308rarity1
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26528, 21308, 1)

	-- Green Helper Box - 26532
	-- type15.3spellid26532source1method_dropstype15.0rlevel1lootCount6level1totalLootCount31nameGaily Wrapped Presentid21310rarity1level1methoddropped-by,contained-in-itemid21301rarity1
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26532, 21301, 1)

	-- Red Helper Box - 26541
	-- type15.3spellid26541source1method_dropstype15.0rlevel1lootCount15level1totalLootCount31nameGaily Wrapped Presentid21310rarity1level1methoddropped-by,contained-in-itemid21305rarity1
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 26541, 21305, 1)

	-- Pink Murloc Egg - 27241
	-- type15.0spellid27241level20methodid22114rarity3
	self:AddCompanion(PetDB, 27241, 22114, 3)

	-- Truesilver Shafted Arrow - 27570
	-- type15.0spellid27570method_dropstype15.3lootCount1level1totalLootCount18nameGift of Adoration: Stormwindid21981rarity1type15.3lootCount1level1totalLootCount12namePledge of Adoration: Ironforgeid22154rarity1level1methodcontained-in-itemid22235rarity1
	-- Unknown
	self:AddCompanion(PetDB, 27570, 22235, 1)

	-- Polar Bear Collar - 28505
	-- type15.0spellid28505level1methodid22781rarity1
	self:AddCompanion(PetDB, 28505, 22781, 1)

	-- Turtle Box - 28738
	-- type15.0spellid28738source3level1method_queststype0xp3100side2level60choiceitems230071230151230021230221category-3284nameA Warden of the Alliancecoin1020id171type0xp3100side4level60choiceitems230071230151230021230221category-3284nameA Warden of the Hordecoin0id5502methodrewardfromid23002rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 28738, 23002, 1)

	-- Piglet's Collar - 28739
	-- type15.0spellid28739source3level1method_queststype0xp3100side2level60choiceitems230071230151230021230221category-3284nameA Warden of the Alliancecoin1020id171type0xp3100side4level60choiceitems230071230151230021230221category-3284nameA Warden of the Hordecoin0id5502methodrewardfromid23007rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 28739, 23007, 1)

	-- Rat Cage - 28740
	-- type15.0spellid28740source3level1method_queststype0xp3100side2level60choiceitems230071230151230021230221category-3284nameA Warden of the Alliancecoin1020id171type0xp3100side4level60choiceitems230071230151230021230221category-3284nameA Warden of the Hordecoin0id5502methodrewardfromid23015rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 28740, 23015, 1)

	-- Hippogryph Hatchling - 30156
	-- type15.0spellid30156level1methodid23713rarity4
	self:AddCompanion(PetDB, 30156, 23713, 4)

	-- Netherwhelp's Collar - 32298
	-- type15.0spellid32298source3level20method_crafted42426methodcraftedid25535rarity3
	-- Crafted
	self:AddCompanion(PetDB, 32298, 25535, 3)

	-- Magical Crawdad Box - 33050
	-- type15.0spellid33050level70method_crafted33062methodcraftedid27445rarity1
	-- Crafted
	self:AddCompanion(PetDB, 33050, 27445, 1)

	-- Mana Wyrmling - 35156
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price40000000react11spellid35156source2level70methodsold-byid29363rarity1
	-- Vendor
	self:AddCompanion(PetDB, 35156, 29363, 1)

	-- Brown Rabbit Crate - 35239
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price10000000react11spellid35239source2level70methodsold-byid29364rarity1
	-- Vendor
	self:AddCompanion(PetDB, 35239, 29364, 1)

	-- Blue Moth Egg - 35907
	-- type15.2method_vendorstype7descMoth Keeperminlevel30locs3557nameSixxid21019price500000react13spellid35907source2level20methodsold-byid29901rarity1
	-- Vendor
	self:AddCompanion(PetDB, 35907, 29901, 1)

	-- Red Moth Egg - 35909
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price10000000react11spellid35909source2level70methodsold-byid29902rarity1
	-- Vendor
	self:AddCompanion(PetDB, 35909, 29902, 1)

	-- Yellow Moth Egg - 35910
	-- type15.2method_vendorstype7descMoth Keeperminlevel30locs3557nameSixxid21019price500000react13spellid35910source2level20methodsold-byid29903rarity1
	-- Vendor
	self:AddCompanion(PetDB, 35910, 29903, 1)

	-- White Moth Egg - 35911
	-- type15.2method_vendorstype7descMoth Keeperminlevel30locs3557nameSixxid21019price500000react13spellid35911source2level20methodsold-byid29904rarity1
	-- Vendor
	self:AddCompanion(PetDB, 35911, 29904, 1)

	-- Golden Dragonhawk Hatchling - 36027
	-- type15.2method_vendorstype7minlevel9locs3430nameJilanneid16860price500000react31spellid36027source2level20methodsold-byid29953rarity1
	-- Vendor
	self:AddCompanion(PetDB, 36027, 29953, 1)

	-- Red Dragonhawk Hatchling - 36028
	-- type15.2method_vendorstype7minlevel9locs3430nameJilanneid16860price500000react31spellid36028source2level20methodsold-byid29956rarity1
	-- Vendor
	self:AddCompanion(PetDB, 36028, 29956, 1)

	-- Silver Dragonhawk Hatchling - 36029
	-- type15.2method_vendorstype7minlevel9locs3430nameJilanneid16860price500000react31spellid36029source2level20methodsold-byid29957rarity1
	-- Vendor
	self:AddCompanion(PetDB, 36029, 29957, 1)

	-- Blue Dragonhawk Hatchling - 36031
	-- type15.2method_vendorstype7descExotic Creaturesminlevel60disp20988locs352385nameDealer Rashaadid20980price10000000react11spellid36031source2level70methodsold-byid29958rarity1
	-- Vendor
	self:AddCompanion(PetDB, 36031, 29958, 1)

	-- Captured Firefly - 36034
	-- type15.2spellid36034source1method_dropstype10minlevel62disp18723lootCount77totalLootCount151282locs3521nameBogflare Needlerid20197react33level20methoddropped-byid29960rarity1
	-- Mob Drop
	self:AddCompanion(PetDB, 36034, 29960, 1)

	-- Miniwing - 39181
	-- type15.0spellid39181source3level96method_queststype1xp13750side1level65choiceitems317661317651317641category23519nameSkywingcoin66000givenitems317601id10898methodrewardfromid31760rarity1
	-- Quest Reward
	self:AddCompanion(PetDB, 39181, 31760, 1)

	-- Blood Elf Orphan Whistle - 39478
	-- type15.0spellid39478source3level1method_crafted39512methodcraftedid31880rarity1
	-- Crafted
	--self:AddCompanion(PetDB, 39478, 31880, 1)

	-- Draenei Orphan Whistle - 39479
	-- type15.0spellid39479source3level1method_crafted39513methodcraftedid31881rarity1
	-- Crafted
	--self:AddCompanion(PetDB, 39479, 31881, 1)

	-- Wolpertinger's Tankard - 39709
	-- type15.0spellid39709source3level20method_queststype0category-3370nameCatch the Wild Wolpertinger!coin0givenitems322331id11117type0category-3370nameCatch the Wild Wolpertinger!coin0givenitems322331id11431methodrewardfromid32233rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 39709, 32233, 3)

	-- Fortune Coin - 40405
	-- type15.0spellid40405level1method_crafted40406methodcraftedid32498rarity3
	-- Crafted
	self:AddCompanion(PetDB, 40405, 32498, 3)

	-- Banana Charm - 40549
	-- type15.0spellid40549level1method_crafted40550methodcraftedid32588rarity3
	-- Crafted
	self:AddCompanion(PetDB, 40549, 32588, 3)

	-- Sleepy Willy - 40613
	-- type15.0spellid40613source3level20method_queststype0xp12300side2level70choiceitems326221326161326171category-3284nameBack to the Orphanagecoin0id10966type0xp12300side4level70choiceitems326161326221326171category-3284nameBack to the Orphanagecoin0id10967methodrewardfromid32617rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 40613, 32617, 3)

	-- Egbert's Egg - 40614
	-- type15.0spellid40614source3level20method_queststype0xp12300side2level70choiceitems326221326161326171category-3284nameBack to the Orphanagecoin0id10966type0xp12300side4level70choiceitems326161326221326171category-3284nameBack to the Orphanagecoin0id10967methodrewardfromid32616rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 40614, 32616, 3)

	-- Elekk Training Collar - 40634
	-- type15.0spellid40634source3level20method_queststype0xp12300side2level70choiceitems326221326161326171category-3284nameBack to the Orphanagecoin0id10966type0xp12300side4level70choiceitems326161326221326171category-3284nameBack to the Orphanagecoin0id10967methodrewardfromid32622rarity3
	-- Quest Reward
	self:AddCompanion(PetDB, 40634, 32622, 3)

	-- Reeking Pet Carrier - 40990
	-- type15.2spellid40990level1methodid40653rarity3
	self:AddCompanion(PetDB, 40990, 40653, 3)

	-- Sinister Squashling - 42609
	-- type15.0spellid42609level20methodid33154rarity3
	self:AddCompanion(PetDB, 42609, 33154, 3)

	-- Toothy's Bucket - 43697
	-- type15.2spellid43697method_dropstype15.0source3lootCount45level70totalLootCount7879nameBag of Fishing Treasuresid35348rarity1level20methodcontained-in-itemid33816rarity3
	-- Unknown
	self:AddCompanion(PetDB, 43697, 33816, 3)

	-- Muckbreath's Bucket - 43698
	-- type15.2spellid43698method_dropstype15.0source3lootCount49level70totalLootCount7879nameBag of Fishing Treasuresid35348rarity1level20methodcontained-in-itemid33818rarity3
	-- Unknown
	self:AddCompanion(PetDB, 43698, 33818, 3)

	-- Mojo - 43923
	-- type15.0spellid43923level20method_crafted43923methodcraftedid33993rarity3
	-- Crafted
	self:AddCompanion(PetDB, 43923, 33993, 3)

	-- Clockwork Rocket Bot - 45048
	-- type15.3spellid45048source1method_dropstype15.0rlevel1lootCount33level1totalLootCount33nameWinter Veil Giftid34426rarity1level1methoddropped-by,contained-in-itemid34425rarity3
	-- Mob Drop
	-- Unknown
	self:AddCompanion(PetDB, 45048, 34425, 3)

	-- Tiny Sporebat - 45082
	-- type15.2method_vendorstype7descSporeggar Quartermasterminlevel64disp17626locs3521nameMycahid18382price000242453000000000react11spellid45082source2level70methodsold-byid34478rarity3
	-- Vendor
	self:AddCompanion(PetDB, 45082, 34478, 3)

	-- Rocket Chicken - 45125
	-- type15.2spellid45125level1method_crafted45126methodcraftedid34492rarity3
	-- Crafted
	self:AddCompanion(PetDB, 45125, 34492, 3)

	-- Dragon Kite - 45128
	-- type15.2spellid45128level1method_crafted45128methodcraftedid34493rarity4
	-- Crafted
	self:AddCompanion(PetDB, 45128, 34493, 4)

	-- Scorched Stone - 45890
	-- type15.0spellid45890level20methodid34955rarity3
	self:AddCompanion(PetDB, 45890, 34955, 3)

	-- Snarly's Bucket - 46425
	-- type15.2spellid46425method_dropstype15.0source3lootCount33level70totalLootCount7879nameBag of Fishing Treasuresid35348rarity1level20methodcontained-in-itemid35349rarity3
	-- Unknown
	self:AddCompanion(PetDB, 46425, 35349, 3)

	-- Chuck's Bucket - 46426
	-- type15.2spellid46426method_dropstype15.0source3lootCount59level70totalLootCount7879nameBag of Fishing Treasuresid35348rarity1level20methodcontained-in-itemid35350rarity3
	-- Unknown
	self:AddCompanion(PetDB, 46426, 35350, 3)

	-- Phoenix Hatchling - 46599
	-- type15.2spellid46599source1method_dropstype7descLord of the Blood Elvesminlevel72disp20023lootCount153totalLootCount9689locs409537033845nameKael'thas Sunstriderclassification3id23054react33type7descLord of the Blood Elvesminlevel72disp22906lootCount89totalLootCount6321locs4095nameKael'thas Sunstriderclassification1id24664react33level70methoddropped-byid35504rarity3
	-- Mob Drop
	self:AddCompanion(PetDB, 46599, 35504, 3)

	-- Soul-Trader Beacon - 49964
	-- type15.2spellid49964level20method_crafted50211methodcraftedid38050rarity3
	-- Crafted
	self:AddCompanion(PetDB, 49964, 38050, 3)

	-- Nether Ray Fry - 51716
	-- type15.2method_vendorstype7descSkyguard Quartermasterminlevel70locs3519nameGrellaid23367price00000000react11spellid51716source2level70methodsold-byid38628rarity3
	-- Vendor
	self:AddCompanion(PetDB, 51716, 38628, 3)

	-- Tyrael's Hilt - 53082
	-- type15.0spellid53082level20method_crafted53085methodcraftedid39656rarity3
	-- Crafted
	self:AddCompanion(PetDB, 53082, 39656, 3)

end
