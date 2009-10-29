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

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
--local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local BZ				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()

function addon:InitQuest(DB)

	-------------------------------------------------------------------------------
	-- Counter and wrapper function
	-------------------------------------------------------------------------------
	local function AddQuest(QuestID, Zone, X, Y, Faction)
		addon:addLookupList(DB, QuestID, nil, Zone, X, Y, Faction)
	end

	AddQuest(7946,	L["Spawn of Jubjub"],				BZ["Terokkar Forest"],		33.6,	35.9,	0)	--several zones
	AddQuest(3861,	L["CLUCK!"],					BZ["Westfall"],			55.5,	30.5,	0)	--several zones
	AddQuest(171,	L["A Warden of the Alliance"],			BZ["Stormwind City"],		56.3,	54.2,	1)
	AddQuest(5502,	L["A Warden of the Horde"],			BZ["Orgrimmar"],		70.8,	25.5,	2)
	AddQuest(4298,	L["Becoming a Parent"],				BZ["The Hinterlands"],		13.7,	42.7,	1)
	AddQuest(3721,	L["An OOX of Your Own"],			BZ["Stranglethorn Vale"],	28.3,	76.3,	0)
	AddQuest(4729,	L["Kibler's Exotic Pets"],			BZ["Burning Steppes"],		65.9,	22.1,	0)
	AddQuest(4862,	L["En-Ay-Es-Tee-Why"],				BZ["Burning Steppes"],		65.9,	22.1,	0)
	AddQuest(4621,	L["Avast Ye,	 Admiral!"],			BZ["Stranglethorn Vale"],	30.7,	90.4,	0)
	AddQuest(11431,	L["Catch the Wild Wolpertinger!"],		BZ["Durotar"],			45.0,	17.3,	2)
	AddQuest(11111,	L["Onyxien the Onyx Netherwing Drake"],		BZ["Shattrath City"],		67.5,	18.10,	0)
	AddQuest(11117,	L["Catch the Wild Wolpertinger!"],		BZ["Dun Morogh"],		48.0,	39.5,	1)
	AddQuest(10898,	L["Skywing"],					BZ["Terokkar Forest"],		53.2,	72.2,	0)
	AddQuest(10966,	L["Back to the Orphanage"],			BZ["Shattrath City"],		75.0,	48.0,	1)
	AddQuest(10967,	L["Back to the Orphanage"],			BZ["Shattrath City"],		75.0,	48.0,	2)
	AddQuest(11665,	L["Crocolisks in the City"],			BZ["Terokkar Forest"],		38.7,	12.8,	0)
	AddQuest(13959,	L["Back to the Orphanage"],			BZ["Dalaran"],			49.5,	62.3,	0)
	AddQuest(13960,	L["Back to the Orphanage"],			BZ["Dalaran"],			49.5,	62.3,	0)
	AddQuest(13736,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	24.5,	2)
	AddQuest(13737,	L["A Champion Rises"],				BZ["Icecrown"],			76.0,	24.5,	2)
	AddQuest(13738,	L["A Champion Rises"],				BZ["Icecrown"],			76.2,	24.6,	2)
	AddQuest(13739,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	24.2,	2)
	AddQuest(13740,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	23.9,	2)
	AddQuest(13702,	L["A Champion Rises"],				BZ["Icecrown"],			76.6,	19.2,	1)
	AddQuest(13732,	L["A Champion Rises"],				BZ["Icecrown"],			76.6,	19.5,	1)
	AddQuest(13733,	L["A Champion Rises"],				BZ["Icecrown"],			76.5,	19.8,	1)
	AddQuest(13734,	L["A Champion Rises"],				BZ["Icecrown"],			76.1,	19.2,	1)
	AddQuest(13735,	L["A Champion Rises"],				BZ["Icecrown"],			76.3,	19.1,	1)
	AddQuest(13906,	L["They Grow Up So Fast"],			BZ["Un'Goro Crater"],		71.5,   73.7,   2)

	-- AQ40
	AddQuest(8743,	L["Bang a Gong!"],				BZ["Ahn'Qiraj"],		0,      0,      0)

	--Class
	AddQuest(7631,	L["Dreadsteed of Xoroth"],			BZ["Burning Steppes"],		12.6,	31.6,	0)
	AddQuest(7647,	L["Judgment and Redemption"],			BZ["Stormwind City"],		48.5,	50.1,	1)
	AddQuest(9737,	L["True Masters of the Light"],			BZ["Silvermoon City"],		91.8,	37.5,	2)
	AddQuest(12687,	L["Into the Realm of Shadows"],			BZ["The Scarlet Enclave"],	51.9,	35.5,	0)

	-- Bag of Fishing Treasures
	AddQuest(13830,	L["The Ghostfish"],				BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13832,	L["Jewel Of The Sewers"],			BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13833,	L["Blood Is Thicker"],				BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13834,	L["Dangerously Delicious"],			BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13836,	L["Monsterbelly Appetite"],			BZ["Dalaran"],			52.8,	64.9,	0)

	--Hyldnir Spoils
	AddQuest(13422,	L["Maintaining Discipline"],			BZ["The Storm Peaks"],		50.9,	65.6,	0)
	AddQuest(13423,	L["Defending Your Title"],			BZ["The Storm Peaks"],		50.9,	65.6,	0)
	AddQuest(13424,	L["Back to the Pit"],				BZ["The Storm Peaks"],		50.9,	65.6,	0)
	AddQuest(13425,	L["The Aberrations Must Die "],			BZ["The Storm Peaks"],		50.9,	65.6,	0)

	--Trade Old
	AddQuest(7660,	L["Wolf Swapping - Arctic Wolf"],		BZ["Orgrimmar"],		69.3,	12.7,	2)
	AddQuest(7661,	L["Wolf Swapping - Red Wolf"],			BZ["Orgrimmar"],		69.3,	12.7,	2)
	AddQuest(7662,	L["New Kodo - Teal"],				BZ["Mulgore"],			47.5,	58.5,	2)
	AddQuest(7663,	L["New Kodo - Green"],				BZ["Mulgore"],			47.5,	58.5,	2)
	AddQuest(7664,	L["Ivory Raptor Replacement"],			BZ["Durotar"],			55.2,	75.6,	2)
	AddQuest(7665,	L["Red Raptor Replacement"],			BZ["Durotar"],			55.2,	75.6,	2)
	AddQuest(7671,	L["Frostsaber Replacement"],			BZ["Darnassus"],		38.3,	15.7,	1)
	AddQuest(7672,	L["Nightsaber Replacement"],			BZ["Darnassus"],		38.3,	15.7,	1)
	AddQuest(7673,	L["Frost Ram Exchange"],			BZ["Dun Morogh"],		63.5,	50.7,	1)
	AddQuest(7674,	L["Black Ram Exchange"],			BZ["Dun Morogh"],		63.5,	50.7,	1)
	AddQuest(7675,	L["Icy Blue Mechanostrider Replacement"],	BZ["Dun Morogh"],		49.2,	48.0,	1)
	AddQuest(7676,	L["White Mechanostrider Replacement"],		BZ["Dun Morogh"],		49.2,	48.0,	1)
	AddQuest(7677,	L["White Stallion Exchange"],			BZ["Elwynn Forest"],		84.1,	65.5,	1)
	AddQuest(7678,	L["Palomino Exchange"],				BZ["Elwynn Forest"],		84.1,	65.5,	1)

end
