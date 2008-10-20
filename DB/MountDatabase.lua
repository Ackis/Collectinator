--[[

************************************************************************

./DB/MountDatabase.lua

Mount Database data for all of Ackis Recipe List

Auto-generated using ARLDataminer.rb
Entries to this file will be overwritten

144 found from data mining.  0 ignored.

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

function addon:MakeMountTable(MountDB)

	-- Brown Horse Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmatotalLootCount34id6749react13type15.-1rlevel30rarity3source2slevel75methoddropped-by,sold-bylevel30method_vendorstype7price10000000locs15descHorse Breederminlevel35nameGregor MacVinceid4885react13type7price10000000locs12descHorse Breederminlevel10nameKatie Hunterid384react03type7price10000000locs267descHorse Breederminlevel32nameMerideth Carlsonid2357react13type7price10000000locs11descHorse Breederminlevel25nameUnger Statforthid1460react13id5656spellid458
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 458, 5656, 3)
	self:addTradeFlags(RecipeDB, 458, 1,4,5)
	self:addTradeAcquire(RecipeDB, 458, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Black Stallion Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount3nameErmatotalLootCount34id6749react13type15.-1rlevel30rarity3source12slevel75methoddropped-by,sold-bylevel30method_vendorstype7price10000000locs11descHorse Breederminlevel25nameUnger Statforthid1460react13id2411spellid470
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 470, 2411, 3)
	self:addTradeFlags(RecipeDB, 470, 1,4,5)
	self:addTradeAcquire(RecipeDB, 470, 3, 6749, 2, 1460)

	-- Pinto Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmatotalLootCount34id6749react13type15.-1rlevel30rarity3source2slevel75methoddropped-by,sold-bylevel30method_vendorstype7price10000000locs15descHorse Breederminlevel35nameGregor MacVinceid4885react13type7price10000000locs12descHorse Breederminlevel10nameKatie Hunterid384react03type7price10000000locs267descHorse Breederminlevel32nameMerideth Carlsonid2357react13type7price10000000locs11descHorse Breederminlevel25nameUnger Statforthid1460react13id2414spellid472
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 472, 2414, 3)
	self:addTradeFlags(RecipeDB, 472, 1,4,5)
	self:addTradeAcquire(RecipeDB, 472, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Timber Wolf - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerid3362react31id1132spellid580
	-- Vendor
	self:AddCompanion(PetDB, 580, 1132, 3)
	self:addTradeFlags(RecipeDB, 580, 2,4)
	self:addTradeAcquire(RecipeDB, 580, 2, 3362)

	-- Chestnut Mare Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount3nameErmatotalLootCount34id6749react13type15.-1rlevel30rarity3source12slevel75methoddropped-by,sold-bylevel30method_vendorstype7price10000000locs15descHorse Breederminlevel35nameGregor MacVinceid4885react13type7price10000000locs12descHorse Breederminlevel10nameKatie Hunterid384react03type7price10000000locs267descHorse Breederminlevel32nameMerideth Carlsonid2357react13type7price10000000locs11descHorse Breederminlevel25nameUnger Statforthid1460react13id5655spellid6648
	-- Mob Drop
	-- Vendor
	self:AddCompanion(PetDB, 6648, 5655, 3)
	self:addTradeFlags(RecipeDB, 6648, 1,4,5)
	self:addTradeAcquire(RecipeDB, 6648, 3, 6749, 2, 384, 2, 1460, 2, 2357, 2, 4885)

	-- Horn of the Dire Wolf - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromlevel30method_vendorstype7price10000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerid3362react31id5665spellid6653
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 6653, 5665, 3)
	self:addTradeFlags(RecipeDB, 6653, 2,4,8)
	self:addTradeAcquire(RecipeDB, 6653, 4, 1, 2, 3362)

	-- Horn of the Brown Wolf - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerid3362react31id5668spellid6654
	-- Vendor
	self:AddCompanion(PetDB, 6654, 5668, 3)
	self:addTradeFlags(RecipeDB, 6654, 2,4)
	self:addTradeAcquire(RecipeDB, 6654, 2, 3362)

	-- Gray Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descRam Breederminlevel10nameVeron Amberstillid1261react13id5864spellid6777
	-- Vendor
	self:AddCompanion(PetDB, 6777, 5864, 3)
	self:addTradeFlags(RecipeDB, 6777, 1,4)
	self:addTradeAcquire(RecipeDB, 6777, 2, 1261)

	-- White Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descRam Breederminlevel10nameVeron Amberstillid1261react13id5873spellid6898
	-- Vendor
	self:AddCompanion(PetDB, 6898, 5873, 3)
	self:addTradeFlags(RecipeDB, 6898, 1,4)
	self:addTradeAcquire(RecipeDB, 6898, 2, 1261)

	-- Brown Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descRam Breederminlevel10nameVeron Amberstillid1261react13id5872spellid6899
	-- Vendor
	self:AddCompanion(PetDB, 6899, 5872, 3)
	self:addTradeFlags(RecipeDB, 6899, 1,4)
	self:addTradeAcquire(RecipeDB, 6899, 2, 1261)

	-- Reins of the Striped Frostsaber - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1657descSaber Handlerminlevel35nameLelanaiid4730react13id8631spellid8394
	-- Vendor
	self:AddCompanion(PetDB, 8394, 8631, 3)
	self:addTradeFlags(RecipeDB, 8394, 1,4)
	self:addTradeAcquire(RecipeDB, 8394, 2, 4730)

	-- Whistle of the Emerald Raptor - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromlevel30method_vendorstype7price10000000locs14descRaptor Handlerminlevel45nameZjolnirid7952react31id8588spellid8395
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 8395, 8588, 3)
	self:addTradeFlags(RecipeDB, 8395, 2,4,8)
	self:addTradeAcquire(RecipeDB, 8395, 4, 1, 2, 7952)

	-- Reins of the Spotted Frostsaber - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1657descSaber Handlerminlevel35nameLelanaiid4730react13id8632spellid10789
	-- Vendor
	self:AddCompanion(PetDB, 10789, 8632, 3)
	self:addTradeFlags(RecipeDB, 10789, 1,4)
	self:addTradeAcquire(RecipeDB, 10789, 2, 4730)

	-- Reins of the Striped Nightsaber - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1657descSaber Handlerminlevel35nameLelanaiid4730react13id8629spellid10793
	-- Vendor
	self:AddCompanion(PetDB, 10793, 8629, 3)
	self:addTradeFlags(RecipeDB, 10793, 1,4)
	self:addTradeAcquire(RecipeDB, 10793, 2, 4730)

	-- Old Whistle of the Ivory Raptor - 
	-- type15.-1rlevel40rarity1slevel75methodlevel40id8589spellid10795
	self:AddCompanion(PetDB, 10795, 8589, 1)
	-- No filter flags
	-- No acquire information

	-- Whistle of the Turquoise Raptor - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs14descRaptor Handlerminlevel45nameZjolnirid7952react31id8591spellid10796
	-- Vendor
	self:AddCompanion(PetDB, 10796, 8591, 3)
	self:addTradeFlags(RecipeDB, 10796, 2,4)
	self:addTradeAcquire(RecipeDB, 10796, 2, 7952)

	-- Whistle of the Violet Raptor - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs14descRaptor Handlerminlevel45nameZjolnirid7952react31id8592spellid10799
	-- Vendor
	self:AddCompanion(PetDB, 10799, 8592, 3)
	self:addTradeFlags(RecipeDB, 10799, 2,4)
	self:addTradeAcquire(RecipeDB, 10799, 2, 7952)

	-- Red Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id8563spellid10873
	-- Vendor
	self:AddCompanion(PetDB, 10873, 8563, 3)
	self:addTradeFlags(RecipeDB, 10873, 1,4)
	self:addTradeAcquire(RecipeDB, 10873, 2, 7955)

	-- Blue Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id8595spellid10969
	-- Vendor
	self:AddCompanion(PetDB, 10969, 8595, 3)
	self:addTradeFlags(RecipeDB, 10969, 1,4)
	self:addTradeAcquire(RecipeDB, 10969, 2, 7955)

	-- White Mechanostrider Mod A - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id13326spellid15779
	self:AddCompanion(PetDB, 15779, 13326, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Nightsaber - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id12303spellid16055
	self:AddCompanion(PetDB, 16055, 12303, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Frostsaber - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id12302spellid16056
	self:AddCompanion(PetDB, 16056, 12302, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Red Wolf - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id12330spellid16080
	self:AddCompanion(PetDB, 16080, 12330, 4)
	-- No filter flags
	-- No acquire information

	-- Horn of the Arctic Wolf - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id12351spellid16081
	self:AddCompanion(PetDB, 16081, 12351, 4)
	-- No filter flags
	-- No acquire information

	-- Palomino Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmatotalLootCount34id6749react13type15.-1rlevel60rarity4source1slevel150methoddropped-bylevel60id12354spellid16082
	-- Mob Drop
	self:AddCompanion(PetDB, 16082, 12354, 4)
	self:addTradeFlags(RecipeDB, 16082, 5)
	self:addTradeAcquire(RecipeDB, 16082, 3, 6749)

	-- White Stallion Bridle - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount1nameErmatotalLootCount34id6749react13type15.-1rlevel60rarity4source1slevel150methoddropped-bylevel60id12353spellid16083
	-- Mob Drop
	self:AddCompanion(PetDB, 16083, 12353, 4)
	self:addTradeFlags(RecipeDB, 16083, 5)
	self:addTradeAcquire(RecipeDB, 16083, 3, 6749)

	-- Whistle of the Mottled Red Raptor - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id8586spellid16084
	self:AddCompanion(PetDB, 16084, 8586, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Winterspring Frostsaber - 
	-- type15.-1rlevel60rarity4source2slevel75methodsold-bylevel60method_vendorstype7price100000000locs618descWintersaber Trainerminlevel62nameRivern Frostwindid10618react23id13086spellid17229
	-- Vendor
	self:AddCompanion(PetDB, 17229, 13086, 4)
	self:addTradeFlags(RecipeDB, 17229, 1,4)
	self:addTradeAcquire(RecipeDB, 17229, 2, 10618)

	-- Whistle of the Ivory Raptor - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id13317spellid17450
	self:AddCompanion(PetDB, 17450, 13317, 4)
	-- No filter flags
	-- No acquire information

	-- Green Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id13321spellid17453
	-- Vendor
	self:AddCompanion(PetDB, 17453, 13321, 3)
	self:addTradeFlags(RecipeDB, 17453, 1,4)
	self:addTradeAcquire(RecipeDB, 17453, 2, 7955)

	-- Unpainted Mechanostrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id13322spellid17454
	-- Vendor
	self:AddCompanion(PetDB, 17454, 13322, 3)
	self:addTradeFlags(RecipeDB, 17454, 1,4)
	self:addTradeAcquire(RecipeDB, 17454, 2, 7955)

	-- Icy Blue Mechanostrider Mod A - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id13327spellid17459
	self:AddCompanion(PetDB, 17459, 13327, 4)
	-- No filter flags
	-- No acquire information

	-- Frost Ram - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id13329spellid17460
	self:AddCompanion(PetDB, 17460, 13329, 4)
	-- No filter flags
	-- No acquire information

	-- Black Ram - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id13328spellid17461
	self:AddCompanion(PetDB, 17461, 13328, 4)
	-- No filter flags
	-- No acquire information

	-- Red Skeletal Horse - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs85descUndead Horse Merchantminlevel30nameZachariah Postid4731react31id13331spellid17462
	-- Vendor
	self:AddCompanion(PetDB, 17462, 13331, 3)
	self:addTradeFlags(RecipeDB, 17462, 2,4)
	self:addTradeAcquire(RecipeDB, 17462, 2, 4731)

	-- Blue Skeletal Horse - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromlevel30method_vendorstype7price10000000locs85descUndead Horse Merchantminlevel30nameZachariah Postid4731react31id13332spellid17463
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 17463, 13332, 3)
	self:addTradeFlags(RecipeDB, 17463, 2,4,8)
	self:addTradeAcquire(RecipeDB, 17463, 4, 1, 2, 4731)

	-- Brown Skeletal Horse - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs85descUndead Horse Merchantminlevel30nameZachariah Postid4731react31id13333spellid17464
	-- Vendor
	self:AddCompanion(PetDB, 17464, 13333, 3)
	self:addTradeFlags(RecipeDB, 17464, 2,4)
	self:addTradeAcquire(RecipeDB, 17464, 2, 4731)

	-- Green Skeletal Warhorse - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs85descUndead Horse Merchantminlevel30nameZachariah Postid4731react31id13334spellid17465
	-- Vendor
	self:AddCompanion(PetDB, 17465, 13334, 4)
	self:addTradeFlags(RecipeDB, 17465, 2,4)
	self:addTradeAcquire(RecipeDB, 17465, 2, 4731)

	-- Deathcharger's Reins - 
	-- method_dropstype6classification1locs2017disp10729minlevel62lootCount1nameBaron RivendaretotalLootCount12362id10440react33type15.-1rlevel60rarity4source1slevel150methoddropped-bylevel60id13335spellid17481
	-- Instance: 2017 - type1category3minlevel58maxlevel60nameStratholmeid2017territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 17481, 13335, 4)
	self:addTradeFlags(RecipeDB, 17481, 5)
	self:addTradeAcquire(RecipeDB, 17481, 3, 10440)

	-- Gray Kodo - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs215descKodo Mountsminlevel45nameHarb Clawhoofid3685react31id15277spellid18989
	-- Vendor
	self:AddCompanion(PetDB, 18989, 15277, 3)
	self:addTradeFlags(RecipeDB, 18989, 2,4)
	self:addTradeAcquire(RecipeDB, 18989, 2, 3685)

	-- Brown Kodo - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromlevel30method_vendorstype7price10000000locs215descKodo Mountsminlevel45nameHarb Clawhoofid3685react31id15290spellid18990
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 18990, 15290, 3)
	self:addTradeFlags(RecipeDB, 18990, 2,4,8)
	self:addTradeAcquire(RecipeDB, 18990, 4, 1, 2, 3685)

	-- Green Kodo - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id15292spellid18991
	self:AddCompanion(PetDB, 18991, 15292, 4)
	-- No filter flags
	-- No acquire information

	-- Teal Kodo - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id15293spellid18992
	self:AddCompanion(PetDB, 18992, 15293, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Steed Bridle - 
	-- type15.-1rlevel55rarity4source8slevel75methodlevel55id18241spellid22717
	self:AddCompanion(PetDB, 22717, 18241, 4)
	-- No filter flags
	-- No acquire information

	-- Black War Kodo - 
	-- type15.-1rlevel55rarity4source8slevel75methodlevel55id18247spellid22718
	self:AddCompanion(PetDB, 22718, 18247, 4)
	-- No filter flags
	-- No acquire information

	-- Black Battlestrider - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterid12783react11id29465spellid22719
	-- Vendor
	self:AddCompanion(PetDB, 22719, 29465, 4)
	self:addTradeFlags(RecipeDB, 22719, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22719, 2, 12783)

	-- Black War Ram - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterid12783react11id29467spellid22720
	-- Vendor
	self:AddCompanion(PetDB, 22720, 29467, 4)
	self:addTradeFlags(RecipeDB, 22720, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22720, 2, 12783)

	-- Whistle of the Black War Raptor - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7price0002056030205593020558300000locs2917descMount Quartermasterminlevel55nameRaider Borkid12796react21id29472spellid22721
	-- Vendor
	self:AddCompanion(PetDB, 22721, 29472, 4)
	self:addTradeFlags(RecipeDB, 22721, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22721, 2, 12796)

	-- Red Skeletal Warhorse - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7price0002056030205593020558300000locs2917descMount Quartermasterminlevel55nameRaider Borkid12796react21id29470spellid22722
	-- Vendor
	self:AddCompanion(PetDB, 22722, 29470, 4)
	self:addTradeFlags(RecipeDB, 22722, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22722, 2, 12796)

	-- Reins of the Black War Tiger - 
	-- type15.-1rlevel60rarity4source28slevel150methodsold-bylevel60method_vendorstype7price000205603020559302055830locs35243525148-1minlevel70nameGeneral Goods Vendorid26304react11type7price0002056030205593020558300000locs2918descMount Vendorminlevel55nameLieutenant Karterid12783react11id29471spellid22723
	-- Vendor
	self:AddCompanion(PetDB, 22723, 29471, 4)
	self:addTradeFlags(RecipeDB, 22723, 1,2,4)
	self:addTradeAcquire(RecipeDB, 22723, 2, 12783, 2, 26304)

	-- Horn of the Black War Wolf - 
	-- type15.-1rlevel55rarity4source8slevel75methodlevel55id18245spellid22724
	self:AddCompanion(PetDB, 22724, 18245, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Mistsaber - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1657descSaber Handlerminlevel35nameLelanaiid4730react13id18767spellid23219
	-- Vendor
	self:AddCompanion(PetDB, 23219, 18767, 4)
	self:addTradeFlags(RecipeDB, 23219, 1,4)
	self:addTradeAcquire(RecipeDB, 23219, 2, 4730)

	-- Reins of the Swift Frostsaber - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1657descSaber Handlerminlevel35nameLelanaiid4730react13id18766spellid23221
	-- Vendor
	self:AddCompanion(PetDB, 23221, 18766, 4)
	self:addTradeFlags(RecipeDB, 23221, 1,4)
	self:addTradeAcquire(RecipeDB, 23221, 2, 4730)

	-- Swift Yellow Mechanostrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id18774spellid23222
	-- Vendor
	self:AddCompanion(PetDB, 23222, 18774, 4)
	self:addTradeFlags(RecipeDB, 23222, 1,4)
	self:addTradeAcquire(RecipeDB, 23222, 2, 7955)

	-- Swift White Mechanostrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id18773spellid23223
	-- Vendor
	self:AddCompanion(PetDB, 23223, 18773, 4)
	self:addTradeFlags(RecipeDB, 23223, 1,4)
	self:addTradeAcquire(RecipeDB, 23223, 2, 7955)

	-- Swift Green Mechanostrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1descMechanostrider Merchantminlevel50nameMilli Featherwhistleid7955react13id18772spellid23225
	-- Vendor
	self:AddCompanion(PetDB, 23225, 18772, 4)
	self:addTradeFlags(RecipeDB, 23225, 1,4)
	self:addTradeAcquire(RecipeDB, 23225, 2, 7955)

	-- Swift Palomino - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount1nameErmatotalLootCount34id6749react13type15.-1rlevel60rarity4source2slevel150method_queststype0category00choiceitems187771187761187781coin0level1nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromlevel60method_vendorstype7price100000000locs15descHorse Breederminlevel35nameGregor MacVinceid4885react13type7price100000000locs12descHorse Breederminlevel10nameKatie Hunterid384react03type7price100000000locs267descHorse Breederminlevel32nameMerideth Carlsonid2357react13id18776spellid23227
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23227, 18776, 4)
	self:addTradeFlags(RecipeDB, 23227, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23227, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift White Steed - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmatotalLootCount34id6749react13type15.-1rlevel60rarity4source2slevel150method_queststype0category00choiceitems187771187761187781coin0level1nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromlevel60method_vendorstype7price100000000locs15descHorse Breederminlevel35nameGregor MacVinceid4885react13type7price100000000locs12descHorse Breederminlevel10nameKatie Hunterid384react03type7price100000000locs267descHorse Breederminlevel32nameMerideth Carlsonid2357react13id18778spellid23228
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23228, 18778, 4)
	self:addTradeFlags(RecipeDB, 23228, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23228, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Steed - 
	-- method_dropstype7locs12descStable Masterminlevel30lootCount2nameErmatotalLootCount34id6749react13type15.-1rlevel60rarity4source2slevel150method_queststype0category00choiceitems187771187761187781coin0level1nameWhite Stallion Exchangeid7677methoddropped-by,sold-by,rewardfromlevel60method_vendorstype7price100000000locs15descHorse Breederminlevel35nameGregor MacVinceid4885react13type7price100000000locs12descHorse Breederminlevel10nameKatie Hunterid384react03type7price100000000locs267descHorse Breederminlevel32nameMerideth Carlsonid2357react13id18777spellid23229
	-- Mob Drop
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 23229, 18777, 4)
	self:addTradeFlags(RecipeDB, 23229, 1,4,5,8)
	self:addTradeAcquire(RecipeDB, 23229, 3, 6749, 4, 7677, 2, 384, 2, 2357, 2, 4885)

	-- Swift Brown Ram - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1descRam Breederminlevel10nameVeron Amberstillid1261react13id18786spellid23238
	-- Vendor
	self:AddCompanion(PetDB, 23238, 18786, 4)
	self:addTradeFlags(RecipeDB, 23238, 1,4)
	self:addTradeAcquire(RecipeDB, 23238, 2, 1261)

	-- Swift Gray Ram - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1descRam Breederminlevel10nameVeron Amberstillid1261react13id18787spellid23239
	-- Vendor
	self:AddCompanion(PetDB, 23239, 18787, 4)
	self:addTradeFlags(RecipeDB, 23239, 1,4)
	self:addTradeAcquire(RecipeDB, 23239, 2, 1261)

	-- Swift White Ram - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1descRam Breederminlevel10nameVeron Amberstillid1261react13id18785spellid23240
	-- Vendor
	self:AddCompanion(PetDB, 23240, 18785, 4)
	self:addTradeFlags(RecipeDB, 23240, 1,4)
	self:addTradeAcquire(RecipeDB, 23240, 2, 1261)

	-- Swift Blue Raptor - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs14descRaptor Handlerminlevel45nameZjolnirid7952react31id18788spellid23241
	-- Vendor
	self:AddCompanion(PetDB, 23241, 18788, 4)
	self:addTradeFlags(RecipeDB, 23241, 2,4)
	self:addTradeAcquire(RecipeDB, 23241, 2, 7952)

	-- Swift Olive Raptor - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs14descRaptor Handlerminlevel45nameZjolnirid7952react31id18789spellid23242
	-- Vendor
	self:AddCompanion(PetDB, 23242, 18789, 4)
	self:addTradeFlags(RecipeDB, 23242, 2,4)
	self:addTradeAcquire(RecipeDB, 23242, 2, 7952)

	-- Swift Orange Raptor - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs14descRaptor Handlerminlevel45nameZjolnirid7952react31id18790spellid23243
	-- Vendor
	self:AddCompanion(PetDB, 23243, 18790, 4)
	self:addTradeFlags(RecipeDB, 23243, 2,4)
	self:addTradeAcquire(RecipeDB, 23243, 2, 7952)

	-- Purple Skeletal Warhorse - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs85descUndead Horse Merchantminlevel30nameZachariah Postid4731react31id18791spellid23246
	-- Vendor
	self:AddCompanion(PetDB, 23246, 18791, 4)
	self:addTradeFlags(RecipeDB, 23246, 2,4)
	self:addTradeAcquire(RecipeDB, 23246, 2, 4731)

	-- Great White Kodo - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs215descKodo Mountsminlevel45nameHarb Clawhoofid3685react31id18793spellid23247
	-- Vendor
	self:AddCompanion(PetDB, 23247, 18793, 4)
	self:addTradeFlags(RecipeDB, 23247, 2,4)
	self:addTradeAcquire(RecipeDB, 23247, 2, 3685)

	-- Great Gray Kodo - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs215descKodo Mountsminlevel45nameHarb Clawhoofid3685react31id18795spellid23248
	-- Vendor
	self:AddCompanion(PetDB, 23248, 18795, 4)
	self:addTradeFlags(RecipeDB, 23248, 2,4)
	self:addTradeAcquire(RecipeDB, 23248, 2, 3685)

	-- Great Brown Kodo - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs215descKodo Mountsminlevel45nameHarb Clawhoofid3685react31id18794spellid23249
	-- Vendor
	self:AddCompanion(PetDB, 23249, 18794, 4)
	self:addTradeFlags(RecipeDB, 23249, 2,4)
	self:addTradeAcquire(RecipeDB, 23249, 2, 3685)

	-- Horn of the Swift Brown Wolf - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerid3362react31id18796spellid23250
	-- Vendor
	self:AddCompanion(PetDB, 23250, 18796, 4)
	self:addTradeFlags(RecipeDB, 23250, 2,4)
	self:addTradeAcquire(RecipeDB, 23250, 2, 3362)

	-- Horn of the Swift Timber Wolf - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerid3362react31id18797spellid23251
	-- Vendor
	self:AddCompanion(PetDB, 23251, 18797, 4)
	self:addTradeFlags(RecipeDB, 23251, 2,4)
	self:addTradeAcquire(RecipeDB, 23251, 2, 3362)

	-- Horn of the Swift Gray Wolf - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1637descKennel Masterminlevel45nameOgunaro Wolfrunnerid3362react31id18798spellid23252
	-- Vendor
	self:AddCompanion(PetDB, 23252, 18798, 4)
	self:addTradeFlags(RecipeDB, 23252, 2,4)
	self:addTradeAcquire(RecipeDB, 23252, 2, 3362)

	-- Reins of the Swift Stormsaber - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs1657descSaber Handlerminlevel35nameLelanaiid4730react13id18902spellid23338
	-- Vendor
	self:AddCompanion(PetDB, 23338, 18902, 4)
	self:addTradeFlags(RecipeDB, 23338, 1,4)
	self:addTradeAcquire(RecipeDB, 23338, 2, 4730)

	-- Horn of the Frostwolf Howler - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7classification1price000205605000000000locs2597descFrostwolf Supply Officerminlevel58maxlevel68nameGrunnda Wolfheartid13218react31type7classification1price0002056050locs36267descFrostwolf Supply Officerminlevel58nameJekyll Flandringid13219react31id19029spellid23509
	-- Vendor
	self:AddCompanion(PetDB, 23509, 19029, 4)
	self:addTradeFlags(RecipeDB, 23509, 2,4)
	self:addTradeAcquire(RecipeDB, 23509, 2, 13218, 2, 13219)

	-- Stormpike Battle Charger - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7classification1price0002056050locs2597descStormpike Supply Officerminlevel68nameGaelden Hammersmithid13216react13type7classification1price000205605000000000locs36descStormpike Supply Officerminlevel58nameThanthaldis Snowgleamid13217react13id19030spellid23510
	-- Vendor
	self:AddCompanion(PetDB, 23510, 19030, 4)
	self:addTradeFlags(RecipeDB, 23510, 1,4)
	self:addTradeAcquire(RecipeDB, 23510, 2, 13216, 2, 13217)

	-- Swift Razzashi Raptor - 
	-- method_dropstype7classification3locs1977lootCount35nameBloodlord MandokirtotalLootCount8107id11382react33type15.-1rlevel60rarity4source1slevel150methoddropped-bylevel60id19872spellid24242
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(PetDB, 24242, 19872, 4)
	self:addTradeFlags(RecipeDB, 24242, 5,6)
	self:addTradeAcquire(RecipeDB, 24242, 3, 11382)

	-- Swift Zulian Tiger - 
	-- method_dropstype7classification3locs1977lootCount9nameHigh Priest ThekaltotalLootCount3676id14509react33type15.-1rlevel60rarity4source1slevel150methoddropped-bylevel60id19902spellid24252
	-- Raid: 1977 - Zul'Gurub
	-- Mob Drop
	self:AddCompanion(PetDB, 24252, 19902, 4)
	self:addTradeFlags(RecipeDB, 24252, 5,6)
	self:addTradeAcquire(RecipeDB, 24252, 3, 14509)

	-- Black Qiraji Resonating Crystal - 
	-- type15.-1rlevel60rarity5slevel150methodlevel60id21176spellid26656
	self:AddCompanion(PetDB, 26656, 21176, 5)
	-- No filter flags
	-- No acquire information

	-- Golden Gryphon - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-bylevel70method_vendorstype7price100000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25470spellid32235
	-- Vendor
	self:AddCompanion(PetDB, 32235, 25470, 3)
	self:addTradeFlags(RecipeDB, 32235, 1,4)
	self:addTradeAcquire(RecipeDB, 32235, 2, 20510)

	-- Ebon Gryphon - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-bylevel70method_vendorstype7price100000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25471spellid32239
	-- Vendor
	self:AddCompanion(PetDB, 32239, 25471, 3)
	self:addTradeFlags(RecipeDB, 32239, 1,4)
	self:addTradeAcquire(RecipeDB, 32239, 2, 20510)

	-- Snowy Gryphon - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-bylevel70method_vendorstype7price100000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25472spellid32240
	-- Vendor
	self:AddCompanion(PetDB, 32240, 25472, 3)
	self:addTradeFlags(RecipeDB, 32240, 1,4)
	self:addTradeAcquire(RecipeDB, 32240, 2, 20510)

	-- Swift Blue Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25473spellid32242
	-- Vendor
	self:AddCompanion(PetDB, 32242, 25473, 4)
	self:addTradeFlags(RecipeDB, 32242, 1,4)
	self:addTradeAcquire(RecipeDB, 32242, 2, 20510)

	-- Tawny Windrider - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-bylevel70method_vendorstype7price100000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25474spellid32243
	-- Vendor
	self:AddCompanion(PetDB, 32243, 25474, 3)
	self:addTradeFlags(RecipeDB, 32243, 2,4)
	self:addTradeAcquire(RecipeDB, 32243, 2, 20494)

	-- Blue Windrider - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-bylevel70method_vendorstype7price100000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25475spellid32244
	-- Vendor
	self:AddCompanion(PetDB, 32244, 25475, 3)
	self:addTradeFlags(RecipeDB, 32244, 2,4)
	self:addTradeAcquire(RecipeDB, 32244, 2, 20494)

	-- Green Windrider - 
	-- type15.-1rlevel70rarity3source2slevel225methodsold-bylevel70method_vendorstype7price100000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25476spellid32245
	-- Vendor
	self:AddCompanion(PetDB, 32245, 25476, 3)
	self:addTradeFlags(RecipeDB, 32245, 2,4)
	self:addTradeAcquire(RecipeDB, 32245, 2, 20494)

	-- Swift Red Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25477spellid32246
	-- Vendor
	self:AddCompanion(PetDB, 32246, 25477, 4)
	self:addTradeFlags(RecipeDB, 32246, 2,4)
	self:addTradeAcquire(RecipeDB, 32246, 2, 20494)

	-- Swift Red Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25527spellid32289
	-- Vendor
	self:AddCompanion(PetDB, 32289, 25527, 4)
	self:addTradeFlags(RecipeDB, 32289, 1,4)
	self:addTradeAcquire(RecipeDB, 32289, 2, 20510)

	-- Swift Green Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25528spellid32290
	-- Vendor
	self:AddCompanion(PetDB, 32290, 25528, 4)
	self:addTradeFlags(RecipeDB, 32290, 1,4)
	self:addTradeAcquire(RecipeDB, 32290, 2, 20510)

	-- Swift Purple Gryphon - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descGryphon Keeperminlevel70nameBrunn Flamebeardid20510react13id25529spellid32292
	-- Vendor
	self:AddCompanion(PetDB, 32292, 25529, 4)
	self:addTradeFlags(RecipeDB, 32292, 1,4)
	self:addTradeAcquire(RecipeDB, 32292, 2, 20510)

	-- Swift Green Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25531spellid32295
	-- Vendor
	self:AddCompanion(PetDB, 32295, 25531, 4)
	self:addTradeFlags(RecipeDB, 32295, 2,4)
	self:addTradeAcquire(RecipeDB, 32295, 2, 20494)

	-- Swift Yellow Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25532spellid32296
	-- Vendor
	self:AddCompanion(PetDB, 32296, 25532, 4)
	self:addTradeFlags(RecipeDB, 32296, 2,4)
	self:addTradeAcquire(RecipeDB, 32296, 2, 20494)

	-- Swift Purple Windrider - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price200000000locs3520descWindrider Keeperminlevel70nameDama Wildmaneid20494react31id25533spellid32297
	-- Vendor
	self:AddCompanion(PetDB, 32297, 25533, 4)
	self:addTradeFlags(RecipeDB, 32297, 2,4)
	self:addTradeAcquire(RecipeDB, 32297, 2, 20494)

	-- Swift Pink Hawkstrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id28936spellid33660
	-- Vendor
	self:AddCompanion(PetDB, 33660, 28936, 4)
	self:addTradeFlags(RecipeDB, 33660, 2,4)
	self:addTradeAcquire(RecipeDB, 33660, 2, 16264)

	-- Brown Elekk - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerid17584react13id28481spellid34406
	-- Vendor
	self:AddCompanion(PetDB, 34406, 28481, 3)
	self:addTradeFlags(RecipeDB, 34406, 1,4)
	self:addTradeAcquire(RecipeDB, 34406, 2, 17584)

	-- Reins of the Dark War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7classification1price000260451002604420000000locs3518descBlade Merchantminlevel70nameAldraanid21485react13type7classification1price000260451002604420000000locs3518descBlade Merchantminlevel70nameCoreielid21474react31id29228spellid34790
	-- Vendor
	self:AddCompanion(PetDB, 34790, 29228, 4)
	self:addTradeFlags(RecipeDB, 34790, 1,2,4)
	self:addTradeAcquire(RecipeDB, 34790, 2, 21474, 2, 21485)

	-- Red Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id28927spellid34795
	-- Vendor
	self:AddCompanion(PetDB, 34795, 28927, 3)
	self:addTradeFlags(RecipeDB, 34795, 2,4)
	self:addTradeAcquire(RecipeDB, 34795, 2, 16264)

	-- Reins of the Cobalt War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id29102spellid34896
	-- Vendor
	self:AddCompanion(PetDB, 34896, 29102, 4)
	self:addTradeFlags(RecipeDB, 34896, 2,4)
	self:addTradeAcquire(RecipeDB, 34896, 2, 20241)

	-- Reins of the White War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id29103spellid34897
	-- Vendor
	self:AddCompanion(PetDB, 34897, 29103, 4)
	self:addTradeFlags(RecipeDB, 34897, 2,4)
	self:addTradeAcquire(RecipeDB, 34897, 2, 20241)

	-- Reins of the Silver War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3518descKurenai Quartermasterminlevel65nameTrader Narasuid20240react13id29229spellid34898
	-- Vendor
	self:AddCompanion(PetDB, 34898, 29229, 4)
	self:addTradeFlags(RecipeDB, 34898, 1,4)
	self:addTradeAcquire(RecipeDB, 34898, 2, 20240)

	-- Reins of the Tan War Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id29105spellid34899
	-- Vendor
	self:AddCompanion(PetDB, 34899, 29105, 4)
	self:addTradeFlags(RecipeDB, 34899, 2,4)
	self:addTradeAcquire(RecipeDB, 34899, 2, 20241)

	-- Purple Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id29222spellid35018
	-- Vendor
	self:AddCompanion(PetDB, 35018, 29222, 3)
	self:addTradeFlags(RecipeDB, 35018, 2,4)
	self:addTradeAcquire(RecipeDB, 35018, 2, 16264)

	-- Blue Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id29220spellid35020
	-- Vendor
	self:AddCompanion(PetDB, 35020, 29220, 3)
	self:addTradeFlags(RecipeDB, 35020, 2,4)
	self:addTradeAcquire(RecipeDB, 35020, 2, 16264)

	-- Black Hawkstrider - 
	-- type15.-1rlevel30rarity3source2slevel75method_queststype0category52597choiceitems29221113332115290156651coin8side4level73nameJoining the Battleid1methodsold-by,rewardfromlevel30method_vendorstype7price10000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id29221spellid35022
	-- Vendor
	-- Quest Reward
	self:AddCompanion(PetDB, 35022, 29221, 3)
	self:addTradeFlags(RecipeDB, 35022, 2,4,8)
	self:addTradeAcquire(RecipeDB, 35022, 4, 1, 2, 16264)

	-- Swift Green Hawkstrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id29223spellid35025
	-- Vendor
	self:AddCompanion(PetDB, 35025, 29223, 4)
	self:addTradeFlags(RecipeDB, 35025, 2,4)
	self:addTradeAcquire(RecipeDB, 35025, 2, 16264)

	-- Swift Purple Hawkstrider - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs3430descHawkstrider Breederminlevel15nameWinaestraid16264react31id29224spellid35027
	-- Vendor
	self:AddCompanion(PetDB, 35027, 29224, 4)
	self:addTradeFlags(RecipeDB, 35027, 2,4)
	self:addTradeAcquire(RecipeDB, 35027, 2, 16264)

	-- Swift Warstrider - 
	-- type15.-1rlevel60rarity4source8slevel150methodsold-bylevel60method_vendorstype7price0002056030205593020558300000locs2917descMount Quartermasterminlevel55nameRaider Borkid12796react21id34129spellid35028
	-- Vendor
	self:AddCompanion(PetDB, 35028, 34129, 4)
	self:addTradeFlags(RecipeDB, 35028, 1,2,4)
	self:addTradeAcquire(RecipeDB, 35028, 2, 12796)

	-- Gray Elekk - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerid17584react13id29744spellid35710
	-- Vendor
	self:AddCompanion(PetDB, 35710, 29744, 3)
	self:addTradeFlags(RecipeDB, 35710, 1,4)
	self:addTradeAcquire(RecipeDB, 35710, 2, 17584)

	-- Purple Elekk - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price10000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerid17584react13id29743spellid35711
	-- Vendor
	self:AddCompanion(PetDB, 35711, 29743, 3)
	self:addTradeFlags(RecipeDB, 35711, 1,4)
	self:addTradeAcquire(RecipeDB, 35711, 2, 17584)

	-- Great Green Elekk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerid17584react13id29746spellid35712
	-- Vendor
	self:AddCompanion(PetDB, 35712, 29746, 4)
	self:addTradeFlags(RecipeDB, 35712, 1,4)
	self:addTradeAcquire(RecipeDB, 35712, 2, 17584)

	-- Great Blue Elekk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerid17584react13id29745spellid35713
	-- Vendor
	self:AddCompanion(PetDB, 35713, 29745, 4)
	self:addTradeFlags(RecipeDB, 35713, 1,4)
	self:addTradeAcquire(RecipeDB, 35713, 2, 17584)

	-- Great Purple Elekk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price100000000locs35243557descElekk Breederminlevel14nameTorallius the Pack Handlerid17584react13id29747spellid35714
	-- Vendor
	self:AddCompanion(PetDB, 35714, 29747, 4)
	self:addTradeFlags(RecipeDB, 35714, 1,4)
	self:addTradeAcquire(RecipeDB, 35714, 2, 17584)

	-- Fiery Warhorse's Reins - 
	-- method_dropstype6classification3locs3457disp16416lootCount78nameAttumen the HuntsmantotalLootCount35478id15550react33type6classification3locs3457disp16040lootCount10nameAttumen the HuntsmantotalLootCount6529id16152react33type15.-1rlevel70rarity4source1slevel150methoddropped-bylevel70id30480spellid36702
	-- Raid: 3457 - Karazhan
	-- Raid: 3457 - Karazhan
	-- Mob Drop
	self:AddCompanion(PetDB, 36702, 30480, 4)
	self:addTradeFlags(RecipeDB, 36702, 5,6)
	self:addTradeAcquire(RecipeDB, 36702, 3, 15550, 3, 16152)

	-- Swift Nether Drake - 
	-- type15.-1rlevel70rarity4slevel300methodlevel70id30609spellid37015
	self:AddCompanion(PetDB, 37015, 30609, 4)
	-- No filter flags
	-- No acquire information

	-- Reins of the Cobalt Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id31829spellid39315
	-- Vendor
	self:AddCompanion(PetDB, 39315, 31829, 4)
	self:addTradeFlags(RecipeDB, 39315, 2,4)
	self:addTradeAcquire(RecipeDB, 39315, 2, 20241)

	-- Reins of the Dark Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7classification1price00026045702604415000000locs3518descBlade Merchantminlevel70nameAldraanid21485react13type7classification1price00026045702604415000000locs3518descBlade Merchantminlevel70nameCoreielid21474react31id28915spellid39316
	-- Vendor
	self:AddCompanion(PetDB, 39316, 28915, 4)
	self:addTradeFlags(RecipeDB, 39316, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39316, 2, 21474, 2, 21485)

	-- Reins of the Silver Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id31831spellid39317
	-- Vendor
	self:AddCompanion(PetDB, 39317, 31831, 4)
	self:addTradeFlags(RecipeDB, 39317, 2,4)
	self:addTradeAcquire(RecipeDB, 39317, 2, 20241)

	-- Reins of the Tan Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id31833spellid39318
	-- Vendor
	self:AddCompanion(PetDB, 39318, 31833, 4)
	self:addTradeFlags(RecipeDB, 39318, 2,4)
	self:addTradeAcquire(RecipeDB, 39318, 2, 20241)

	-- Reins of the White Riding Talbuk - 
	-- type15.-1rlevel60rarity4source2slevel150methodsold-bylevel60method_vendorstype7price70000000locs3518descMag'har Quartermasterminlevel65nameProvisioner Naselaid20241react31id31835spellid39319
	-- Vendor
	self:AddCompanion(PetDB, 39319, 31835, 4)
	self:addTradeFlags(RecipeDB, 39319, 2,4)
	self:addTradeAcquire(RecipeDB, 39319, 2, 20241)

	-- Green Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellaid23367react11id32314spellid39798
	-- Vendor
	self:AddCompanion(PetDB, 39798, 32314, 4)
	self:addTradeFlags(RecipeDB, 39798, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39798, 2, 23367)

	-- Red Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellaid23367react11id32317spellid39800
	-- Vendor
	self:AddCompanion(PetDB, 39800, 32317, 4)
	self:addTradeFlags(RecipeDB, 39800, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39800, 2, 23367)

	-- Purple Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellaid23367react11id32316spellid39801
	-- Vendor
	self:AddCompanion(PetDB, 39801, 32316, 4)
	self:addTradeFlags(RecipeDB, 39801, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39801, 2, 23367)

	-- Silver Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellaid23367react11id32318spellid39802
	-- Vendor
	self:AddCompanion(PetDB, 39802, 32318, 4)
	self:addTradeFlags(RecipeDB, 39802, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39802, 2, 23367)

	-- Blue Riding Nether Ray - 
	-- type15.-1rlevel70rarity4source2slevel300methodsold-bylevel70method_vendorstype7price00000000locs3519descSkyguard Quartermasterminlevel70nameGrellaid23367react11id32319spellid39803
	-- Vendor
	self:AddCompanion(PetDB, 39803, 32319, 4)
	self:addTradeFlags(RecipeDB, 39803, 1,2,4)
	self:addTradeAcquire(RecipeDB, 39803, 2, 23367)

	-- Ashes of Al'ar - 
	-- method_dropstype7classification3locs37033845descLord of the Blood Elvesdisp20023minlevel73lootCount14nameKael'thas SunstridertotalLootCount3723id19622react33type7classification3locs409537033845descLord of the Blood Elvesdisp20023minlevel72lootCount1nameKael'thas SunstridertotalLootCount9689id23054react33type15.-1rlevel70rarity4source1slevel300methoddropped-bylevel70id32458spellid40192
	-- Raid: 3845 - Tempest Keep
	-- Instance: 4095 - type1category3expansion1limit5minlevel70maxlevel70nameMagisters' Terraceid4095territory1
	-- Raid: 3845 - Tempest Keep
	-- Mob Drop
	self:AddCompanion(PetDB, 40192, 32458, 4)
	self:addTradeFlags(RecipeDB, 40192, 5,6)
	self:addTradeAcquire(RecipeDB, 40192, 3, 19622, 3, 23054)

	-- Reins of the Raven Lord - 
	-- method_dropstype10classification1locs3791disp21492minlevel69lootCount12nameAnzutotalLootCount5155id23035react33type15.-1rlevel70rarity4source1slevel150methoddropped-bylevel70id32768spellid41252
	-- Instance: 3791 - type5category3expansion1minlevel67maxlevel69nameAuchindoun: Sethekk Hallsid3791territory1
	-- Mob Drop
	self:AddCompanion(PetDB, 41252, 32768, 4)
	self:addTradeFlags(RecipeDB, 41252, 5)
	self:addTradeAcquire(RecipeDB, 41252, 3, 23035)

	-- Reins of the Onyx Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328571category23703coin0side1level70nameOnyxien the Onyx Netherwing Drakeid11111method_redemptionUnknownmethodredemption,rewardfromlevel70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11id32857spellid41513
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41513, 32857, 4)
	self:addTradeFlags(RecipeDB, 41513, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41513, 4, 11111)

	-- Reins of the Azure Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328581category23703coin0side1level70nameSuraku the Azure Netherwing Drakeid11112method_redemptionUnknownmethodredemption,rewardfromlevel70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11id32858spellid41514
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41514, 32858, 4)
	self:addTradeFlags(RecipeDB, 41514, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41514, 4, 11112)

	-- Reins of the Cobalt Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328591category23703coin0side1level70nameJorus the Cobalt Netherwing Drakeid11109method_redemptionUnknownmethodredemption,rewardfromlevel70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11id32859spellid41515
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41515, 32859, 4)
	self:addTradeFlags(RecipeDB, 41515, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41515, 4, 11109)

	-- Reins of the Purple Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328601category23703coin0side1level70nameMalfas the Purple Netherwing Drakeid11110method_redemptionUnknownmethodredemption,rewardfromlevel70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11id32860spellid41516
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41516, 32860, 4)
	self:addTradeFlags(RecipeDB, 41516, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41516, 4, 11110)

	-- Reins of the Veridian Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328611category23703coin0side1level70nameZoya the Veridian Netherwing Drakeid11114method_redemptionUnknownmethodredemption,rewardfromlevel70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11id32861spellid41517
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41517, 32861, 4)
	self:addTradeFlags(RecipeDB, 41517, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41517, 4, 11114)

	-- Reins of the Violet Netherwing Drake - 
	-- type15.-1rlevel70rarity4source23slevel300method_queststype0givenitems328621category23703coin0side1level70nameVoranaku the Violet Netherwing Drakeid11113method_redemptionUnknownmethodredemption,rewardfromlevel70method_vendorstype7price200000000locs3520minlevel70nameDrake Dealer Hurlunkid23489react11id32862spellid41518
	-- Redemption
	-- Quest Reward
	self:AddCompanion(PetDB, 41518, 32862, 4)
	self:addTradeFlags(RecipeDB, 41518, 1,2,8)
	self:addTradeAcquire(RecipeDB, 41518, 4, 11113)

	-- Reins of the Spectral Tiger - 
	-- type15.-1rlevel30rarity3slevel75methodlevel30id33224spellid42776
	self:AddCompanion(PetDB, 42776, 33224, 3)
	-- No filter flags
	-- No acquire information

	-- Reins of the Swift Spectral Tiger - 
	-- type15.-1rlevel60rarity4slevel150methodlevel60id33225spellid42777
	self:AddCompanion(PetDB, 42777, 33225, 4)
	-- No filter flags
	-- No acquire information

	-- Amani War Bear - 
	-- method_dropstype3locs3805lootCount19nameAshli's BagtotalLootCount25id186672type15.-1rlevel70rarity4slevel150methodcontained-in-objectlevel70id33809spellid43688
	-- Unknown
	self:AddCompanion(PetDB, 43688, 33809, 4)
	-- No filter flags
	-- No acquire information

	-- Brewfest Ram - 
	-- type15.-1rlevel30rarity3source2slevel75methodsold-bylevel30method_vendorstype7price00000000locs14descRam Racing ApprenticenameDriz Tumblequickid24510id33976spellid43899

end
