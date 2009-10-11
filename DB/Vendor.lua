--[[

************************************************************************

Vendor.lua

Vendor data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(VendorDB,NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BZONE				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BBOSS				= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

function addon:InitVendor(VendorDB)

	-- Companions only
	self:addLookupList(VendorDB,2663,L["Narkk"],BZONE["Stranglethorn Vale"],28.2,74.5,0)
	self:addLookupList(VendorDB,20980,L["Dealer Rashaad"],BZONE["Netherstorm"],43.5,35.2,0)
	self:addLookupList(VendorDB,6367,L["Donni Anthania"],BZONE["Elwynn Forest"],44.2,53.4,1)

	self:addLookupList(VendorDB,6548,L["Magus Tirth"],BZONE["Thousand Needles"],78.3,75.7,0)
	self:addLookupList(VendorDB,1032686,L["Landro Longshot"],BZONE["Stranglethorn Vale"],28.1,75.8,0)
	self:addLookupList(VendorDB,23367,L["Grella"],BZONE["Terokkar Forest"],64.3,66.3,0)
	self:addLookupList(VendorDB,18382,L["Mycah"],BZONE["Zangarmarsh"],17.9,51.2,0)
	self:addLookupList(VendorDB,29537,L["Darahir"],BZONE["The Underbelly"],63.7,16.5,0)
	self:addLookupList(VendorDB,28951,L["Breanni"],BZONE["Dalaran"],58.7,39.5,0)
	self:addLookupList(VendorDB,32763,L["Sairuk"],BZONE["Dragonblight"],48.5,75.7,0)
	self:addLookupList(VendorDB,31916,L["Tanaika"],BZONE["Howling Fjord"],25.5,58.7,0)
	self:addLookupList(VendorDB,1263,L["Yarlyn Amberstill"],BZONE["Dun Morogh"],63.2,50.0,1)
	self:addLookupList(VendorDB,8665,L["Shylenai"],BZONE["Darnassus"],69.8,45.4,1)
	self:addLookupList(VendorDB,21019,L["Sixx"],BZONE["The Exodar"],30.3,34.0,1)
	self:addLookupList(VendorDB,8666,L["Lil Timmy"],BZONE["Stormwind City"],46.4,55.5,1) -- Wanders
	self:addLookupList(VendorDB,8404,L["Xan'tish"],BZONE["Orgrimmar"],37.5,74.6,2) -- Wanders
	self:addLookupList(VendorDB,8403,L["Jeremiah Payson"],BZONE["Undercity"],67.5,44.6,2)
	self:addLookupList(VendorDB,8401,L["Halpa"],BZONE["Thunder Bluff"],62.2,58.5,2)
	self:addLookupList(VendorDB,16860,L["Jilanne"],BZONE["Eversong Woods"],43.5,71.0,2) -- did she move?

	-- World Events
	self:addLookupList(VendorDB,23710,L["Belbi Quikswitch"],BZONE["Dun Morogh"],49.3,39.5,1)
	self:addLookupList(VendorDB,24495,L["Blix Fixwidget"],BZONE["Durotar"],44.1,17.9,2)

	self:addLookupList(VendorDB,14860,L["Flik"],BZONE["Terokkar Forest"],33.7,35.9,0) --several places, Darkmoon, Wanders
	self:addLookupList(VendorDB,32837,L["Noblegarden Merchant"],BZONE[""],,,2) --several places
	self:addLookupList(VendorDB,32836,L["Noblegarden Vendor"],BZONE[""],,,1) --several places
 	self:addLookupList(VendorDB,26124,L["Midsummer Merchant"],BZONE[""],,,2) --several places
	self:addLookupList(VendorDB,26123,L["Midsummer Supplier"],BZONE[""],,,1) --several places

	self:addLookupList(VendorDB,33657,L["Irisee"],BZONE["Icecrown"],76.2,19.3,1)
	self:addLookupList(VendorDB,33653,L["Rook Hawkfist"],BZONE["Icecrown"],76.3,49.2,1)
	self:addLookupList(VendorDB,33307,L["Corporal Arthur Flew"],BZONE["Icecrown"],76.5,19.2,1)
	self:addLookupList(VendorDB,33310,L["Derrick Brindlebeard"],BZONE["Icecrown"],76.5,19.5,1)
	self:addLookupList(VendorDB,33650,L["Rillie Spindlenut"],BZONE["Icecrown"],76.5,19.7,1)
	self:addLookupList(VendorDB,34881,L["Hiren Loresong"],BZONE["Icecrown"],76.2,19.6,1)
	self:addLookupList(VendorDB,34772,L["Vasarin Redmorn"],BZONE["Icecrown"],76.2,24.0,2)
	self:addLookupList(VendorDB,33553,L["Freka Bloodaxe"],BZONE["Icecrown"],76.4,24.4,2)
	self:addLookupList(VendorDB,33554,L["Samamba"],BZONE["Icecrown"],76.1,24.5,2)
	self:addLookupList(VendorDB,33555,L["Eliza Killian"],BZONE["Icecrown"],76.5,24.2,2)
	self:addLookupList(VendorDB,33556,L["Doru Thunderhorn"],BZONE["Icecrown"],76.2,24.5,2)
	self:addLookupList(VendorDB,33557,L["Trellis Morningsun"],BZONE["Icecrown"],76.3,23.9,2)
	self:addLookupList(VendorDB,34885,L["Dame Evniki Kapsalis"],BZONE["Icecrown"],69.5,23.2,0)

	-- Mounts only
	self:addLookupList(VendorDB,10618,L["Rivern Frostwind"],BZONE["Winterspring"],49.9,9.9,1)
	self:addLookupList(VendorDB,1460,L["Unger Statforth"],BZONE["Wetlands"],8.6,54.5,1)
	self:addLookupList(VendorDB,384,L["Katie Hunter"],BZONE["Elwynn Forest"],84.1,65.5,1)
	self:addLookupList(VendorDB,2357,L["Merideth Carlson"],BZONE["Hillsbrad Foothills"],52.1,55.6,1)
	self:addLookupList(VendorDB,4885,L["Gregor MacVince"],BZONE["Dustwallow Marsh"],65.2,51.5,1)
	self:addLookupList(VendorDB,4730,L["Lelanai"],BZONE["Darnassus"],38.3,15.7,1)
	self:addLookupList(VendorDB,1261,L["Veron Amberstill"],BZONE["Dun Morogh"],63.5,50.7,1)
	self:addLookupList(VendorDB,7955,L["Milli Featherwhistle"],BZONE["Dun Morogh"],49.2,48.0,1)
	self:addLookupList(VendorDB,4731,L["Zachariah Post"],BZONE["Tirisfal Glades"],59.9,52.6,2)
	self:addLookupList(VendorDB,3362,L["Ogunaro Wolfrunner"],BZONE["Orgrimmar"],69.3,12.7,2)
	self:addLookupList(VendorDB,3685,L["Harb Clawhoof"],BZONE["Mulgore"],47.5,58.5,2)
	self:addLookupList(VendorDB,7952,L["Zjolnir"],BZONE["Durotar"],55.2,75.6,2)
 
	self:addLookupList(VendorDB,20241,L["Provisioner Nasela"],BZONE["Nagrand"],53.5,36.9,2)
	self:addLookupList(VendorDB,20240,L["Trader Narasu"],BZONE["Nagrand"],54.6,75.2,1)
	self:addLookupList(VendorDB,23489,L["Drake Dealer Hurlunk"],BZONE["Shadowmoon Valley"],65.6,86.0,0)
	self:addLookupList(VendorDB,17904,L["Fedryen Swiftspear"],BZONE["Zangarmarsh"],79.3,63.8,0)
	self:addLookupList(VendorDB,35101,L["Grunda Bronzewing"],BZONE["Hellfire Peninsula"],54.2,62.6,1)
	self:addLookupList(VendorDB,35131,L["Durgan Thunderbeak"],BZONE["Borean Tundra"],58.9,68.2,1)
	self:addLookupList(VendorDB,20510,L["Brunn Flamebeard"],BZONE["Shadowmoon Valley"],37.6,56.0,1)
	self:addLookupList(VendorDB,35132,L["Tohfo Skyhoof"],BZONE["Borean Tundra"],42.2,55.3,2)
	self:addLookupList(VendorDB,20494,L["Dama Wildmane"],BZONE["Shadowmoon Valley"],29.2,29.5,2)
	self:addLookupList(VendorDB,35099,L["Bana Wildmane"],BZONE["Hellfire Peninsula"],54.2,41.6,2)
	self:addLookupList(VendorDB,17584,L["Torallius the Pack Handler"],BZONE["The Exodar"],81.5,52.0,1)
	self:addLookupList(VendorDB,16264,L["Winaestra"],BZONE["Eversong Woods"],61.0,54.7,2)

	self:addLookupList(VendorDB,32216,L["Mei Francis"],BZONE["Dalaran"],58.5,42.6,0)
	self:addLookupList(VendorDB,11701,L["Mor'vek"],BZONE["Un'Goro Crater"],71.5,73.7,2)
	self:addLookupList(VendorDB,32540,L["Lillehoff"],BZONE["The Storm Peaks"],66.2,61.4,0)
	self:addLookupList(VendorDB,32533,L["Cielstrasza"],BZONE["Dragonblight"],59.9,53.1,0)

	self:addLookupList(VendorDB,32296,L["Stone Guard Mukar"],BZONE["Wintergrasp"],51.7,17.5,2)
	self:addLookupList(VendorDB,32294,L["Knight Dameron"],BZONE["Wintergrasp"],51.7,17.5,1)
	self:addLookupList(VendorDB,13217,L["Thanthaldis Snowgleam"],BZONE["Alterac Mountains"],39.5,81.7,1)
	self:addLookupList(VendorDB,13216,L["Gaelden Hammersmith"],BZONE["Alterac Valley"],44.2,18.2,1)
	self:addLookupList(VendorDB,13219,L["Jekyll Flandring"],BZONE["Alterac Mountains"],62.8,59.4,2)
	self:addLookupList(VendorDB,13218,L["Grunnda Wolfheart"],BZONE["Alterac Valley"],49.0,85.5,2) -- did she move?
	self:addLookupList(VendorDB,12796,L["Raider Bork"],BZONE["Orgrimmar"],38.0,64.5,2)
	self:addLookupList(VendorDB,12783,L["Lieutenant Karter"],BZONE["Stormwind City"],74.7,67.3,1)
	self:addLookupList(VendorDB,21474,L["Coreiel"],BZONE["Nagrand"],42.8,42.6,2)
	self:addLookupList(VendorDB,21485,L["Aldraan"],BZONE["Nagrand"],42.9,42.5,1)

end
