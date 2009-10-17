--[[

************************************************************************

Quest.lua

Quest data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(QuestDB,NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
--local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local BZ				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()

function addon:InitQuest(DB)
	self:addLookupList(DB,	7946,	L["Spawn of Jubjub"],				BZ["Terokkar Forest"],		33.6,	35.9,	0)	--several zones
	self:addLookupList(DB,	3861,	L["CLUCK!"],					BZ["Westfall"],			55.5,	30.5,	0)	--several zones
	self:addLookupList(DB,	171,	L["A Warden of the Alliance"],			BZ["Stormwind City"],		56.3,	54.2,	1)
	self:addLookupList(DB,	5502,	L["A Warden of the Horde"],			BZ["Orgrimmar"],		70.8,	25.5,	2)
	self:addLookupList(DB,	4298,	L["Becoming a Parent"],				BZ["The Hinterlands"],		13.7,	42.7,	1)
	self:addLookupList(DB,	3721,	L["An OOX of Your Own"],			BZ["Stranglethorn Vale"],	28.3,	76.3,	0)
	self:addLookupList(DB,	4729,	L["Kibler's Exotic Pets"],			BZ["Burning Steppes"],		65.9,	22.1,	0)
	self:addLookupList(DB,	4862,	L["En-Ay-Es-Tee-Why"],				BZ["Burning Steppes"],		65.9,	22.1,	0)
	--self:addLookupList(DB,	4621,	L["Avast Ye,	 Admiral!"],		BZ["Stranglethorn Vale"],	30.7,	90.4,	0)
	self:addLookupList(DB,	11431,	L["Catch the Wild Wolpertinger!"],		BZ["Durotar"],			45.0,	17.3,	2)
	self:addLookupList(DB,	11117,	L["Catch the Wild Wolpertinger!"],		BZ["Dun Morogh"],		48.0,	39.5,	1)
	self:addLookupList(DB,	10898,	L["Skywing"],					BZ["Terokkar Forest"],		53.2,	72.2,	0)
	self:addLookupList(DB,	10966,	L["Back to the Orphanage"],			BZ["Shattrath City"],		75.0,	48.0,	1)
	self:addLookupList(DB,	10967,	L["Back to the Orphanage"],			BZ["Shattrath City"],		75.0,	48.0,	2)
	self:addLookupList(DB,	11665,	L["Crocolisks in the City"],			BZ["Terokkar Forest"],		38.7,	12.8,	0)
	self:addLookupList(DB,	13959,	L["Back to the Orphanage"],			BZ["Dalaran"],			49.5,	62.3,	0)
	self:addLookupList(DB,	13960,	L["Back to the Orphanage"],			BZ["Dalaran"],			49.5,	62.3,	0)
	self:addLookupList(DB,	13736,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	24.5,	2)
	self:addLookupList(DB,	13737,	L["A Champion Rises"],				BZ["Icecrown"],			76.0,	24.5,	2)
	self:addLookupList(DB,	13738,	L["A Champion Rises"],				BZ["Icecrown"],			76.2,	24.6,	2)
	self:addLookupList(DB,	13739,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	24.2,	2)
	self:addLookupList(DB,	13740,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	23.9,	2)
	self:addLookupList(DB,	13702,	L["A Champion Rises"],				BZ["Icecrown"],			76.6,	19.2,	1)
	self:addLookupList(DB,	13732,	L["A Champion Rises"],				BZ["Icecrown"],			76.6,	19.5,	1)
	self:addLookupList(DB,	13733,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	19.8,	1)
	self:addLookupList(DB,	13734,	L["A Champion Rises"],				BZ["Icecrown"],			76.1,	19.2,	1)
	self:addLookupList(DB,	13735,	L["A Champion Rises"],				BZ["Icecrown"],			76.3,	19.1,	1)
	self:addLookupList(DB,	13906,	L["They Grow Up So Fast"],			BZ["Un'Goro Crater"],		71.5,   73.7,   2)

	--Class
	self:addLookupList(DB,	7631,	L["Dreadsteed of Xoroth"],			BZ["Burning Steppes"],		12.6,	31.6,	0)
	self:addLookupList(DB,	7647,	L["Judgment and Redemption"],			BZ["Stormwind City"],		48.5,	50.1,	1)
	self:addLookupList(DB,	9737,	L["True Masters of the Light"],			BZ["Silvermoon City"],		91.8,	37.5,	2)
	self:addLookupList(DB,	12687,	L["Into the Realm of Shadows"],			BZ["The Scarlet Enclave"],	51.9,	35.5,	0)

	-- Bag of Fishing Treasures
	self:addLookupList(DB,	13830,	L["The Ghostfish"],				BZ["Dalaran"],			52.8,	64.9,	0)
	self:addLookupList(DB,	13832,	L["Jewel Of The Sewers"],			BZ["Dalaran"],			52.8,	64.9,	0)
	self:addLookupList(DB,	13833,	L["Blood Is Thicker"],				BZ["Dalaran"],			52.8,	64.9,	0)
	self:addLookupList(DB,	13834,	L["Dangerously Delicious"],			BZ["Dalaran"],			52.8,	64.9,	0)
	self:addLookupList(DB,	13836,	L["Monsterbelly Appetite"],			BZ["Dalaran"],			52.8,	64.9,	0)

	--Hyldnir Spoils
	self:addLookupList(DB,	13422,	L["Maintaining Discipline"],			BZ["The Storm Peaks"],		50.9,	65.6,	0)
	self:addLookupList(DB,	13423,	L["Defending Your Title"],			BZ["The Storm Peaks"],		50.9,	65.6,	0)
	self:addLookupList(DB,	13424,	L["Back to the Pit"],				BZ["The Storm Peaks"],		50.9,	65.6,	0)
	self:addLookupList(DB,	13425,	L["The Aberrations Must Die "],			BZ["The Storm Peaks"],		50.9,	65.6,	0)

	--Trade Old
	self:addLookupList(DB,	7660,	L["Wolf Swapping - Arctic Wolf"],		BZ["Orgrimmar"],		69.3,	12.7,	2)
	self:addLookupList(DB,	7661,	L["Wolf Swapping - Red Wolf"],			BZ["Orgrimmar"],		69.3,	12.7,	2)
	self:addLookupList(DB,	7662,	L["New Kodo - Teal"],				BZ["Mulgore"],			47.5,	58.5,	2)
	self:addLookupList(DB,	7663,	L["New Kodo - Green"],				BZ["Mulgore"],			47.5,	58.5,	2)
	self:addLookupList(DB,	7664,	L["Ivory Raptor Replacement"],			BZ["Durotar"],			55.2,	75.6,	2)
	self:addLookupList(DB,	7665,	L["Red Raptor Replacement"],			BZ["Durotar"],			55.2,	75.6,	2)
	self:addLookupList(DB,	7671,	L["Frostsaber Replacement"],			BZ["Darnassus"],		38.3,	15.7,	1)
	self:addLookupList(DB,	7672,	L["Nightsaber Replacement"],			BZ["Darnassus"],		38.3,	15.7,	1)
	self:addLookupList(DB,	7673,	L["Frost Ram Exchange"],			BZ["Dun Morogh"],		63.5,	50.7,	1)
	self:addLookupList(DB,	7674,	L["Black Ram Exchange"],			BZ["Dun Morogh"],		63.5,	50.7,	1)
	self:addLookupList(DB,	7675,	L["Icy Blue Mechanostrider Replacement"],	BZ["Dun Morogh"],		49.2,	48.0,	1)
	self:addLookupList(DB,	7676,	L["White Mechanostrider Replacement"],		BZ["Dun Morogh"],		49.2,	48.0,	1)
	self:addLookupList(DB,	7677,	L["White Stallion Exchange"],			BZ["Elwynn Forest"],		84.1,	65.5,	1)
	self:addLookupList(DB,	7678,	L["Palomino Exchange"],				BZ["Elwynn Forest"],		84.1,	65.5,	1)

end
