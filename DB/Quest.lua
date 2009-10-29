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

	AddQuest(7946,	BZ["Terokkar Forest"],		33.6,	35.9,	0)	--several zones
	AddQuest(3861,	BZ["Westfall"],			55.5,	30.5,	0)	--several zones
	AddQuest(171,	BZ["Stormwind City"],		56.3,	54.2,	1)
	AddQuest(5502,	BZ["Orgrimmar"],		70.8,	25.5,	2)
	AddQuest(4298,	BZ["The Hinterlands"],		13.7,	42.7,	1)
	AddQuest(3721,	BZ["Stranglethorn Vale"],	28.3,	76.3,	0)
	AddQuest(4729,	BZ["Burning Steppes"],		65.9,	22.1,	0)
	AddQuest(4862,	BZ["Burning Steppes"],		65.9,	22.1,	0)
	AddQuest(4621,	BZ["Stranglethorn Vale"],	30.7,	90.4,	0)
	AddQuest(11431,	BZ["Durotar"],			45.0,	17.3,	2)
	AddQuest(11111,	BZ["Shattrath City"],		67.5,	18.1,	0)
	AddQuest(11117,	BZ["Dun Morogh"],		48.0,	39.5,	1)
	AddQuest(10898,	BZ["Terokkar Forest"],		53.2,	72.2,	0)
	AddQuest(10966,	BZ["Shattrath City"],		75.0,	48.0,	1)
	AddQuest(10967,	BZ["Shattrath City"],		75.0,	48.0,	2)
	AddQuest(11665,	BZ["Terokkar Forest"],		38.7,	12.8,	0)
	AddQuest(13959,	BZ["Dalaran"],			49.5,	62.3,	0)
	AddQuest(13960,	BZ["Dalaran"],			49.5,	62.3,	0)
	AddQuest(13736,	BZ["Icecrown"],			76.5,	24.5,	2)
	AddQuest(13737,	BZ["Icecrown"],			76.0,	24.5,	2)
	AddQuest(13738,	BZ["Icecrown"],			76.2,	24.6,	2)
	AddQuest(13739,	BZ["Icecrown"],			76.5,	24.2,	2)
	AddQuest(13740,	BZ["Icecrown"],			76.5,	23.9,	2)
	AddQuest(13702,	BZ["Icecrown"],			76.6,	19.2,	1)
	AddQuest(13732,	BZ["Icecrown"],			76.6,	19.5,	1)
	AddQuest(13733,	BZ["Icecrown"],			76.5,	19.8,	1)
	AddQuest(13734,	BZ["Icecrown"],			76.1,	19.2,	1)
	AddQuest(13735,	BZ["Icecrown"],			76.3,	19.1,	1)
	AddQuest(13906,	BZ["Un'Goro Crater"],		71.5,   73.7,   2)

	-- AQ40
	AddQuest(8743,	BZ["Ahn'Qiraj"],		0,      0,      0)

	--Class
	AddQuest(7631,	BZ["Burning Steppes"],		12.6,	31.6,	0)
	AddQuest(7647,	BZ["Stormwind City"],		48.5,	50.1,	1)
	AddQuest(9737,	BZ["Silvermoon City"],		91.8,	37.5,	2)
	AddQuest(12687,	BZ["The Scarlet Enclave"],	51.9,	35.5,	0)

	-- Bag of Fishing Treasures
	AddQuest(13830,	BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13832,	BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13833,	BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13834,	BZ["Dalaran"],			52.8,	64.9,	0)
	AddQuest(13836,	BZ["Dalaran"],			52.8,	64.9,	0)

	--Hyldnir Spoils
	AddQuest(13422,	BZ["The Storm Peaks"],		50.9,	65.6,	0)
	AddQuest(13423,	BZ["The Storm Peaks"],		50.9,	65.6,	0)
	AddQuest(13424,	BZ["The Storm Peaks"],		50.9,	65.6,	0)
	AddQuest(13425,	BZ["The Storm Peaks"],		50.9,	65.6,	0)

	--Trade Old
	AddQuest(7660,	BZ["Orgrimmar"],		69.3,	12.7,	2)
	AddQuest(7661,	BZ["Orgrimmar"],		69.3,	12.7,	2)
	AddQuest(7662,	BZ["Mulgore"],			47.5,	58.5,	2)
	AddQuest(7663,	BZ["Mulgore"],			47.5,	58.5,	2)
	AddQuest(7664,	BZ["Durotar"],			55.2,	75.6,	2)
	AddQuest(7665,	BZ["Durotar"],			55.2,	75.6,	2)
	AddQuest(7671,	BZ["Darnassus"],		38.3,	15.7,	1)
	AddQuest(7672,	BZ["Darnassus"],		38.3,	15.7,	1)
	AddQuest(7673,	BZ["Dun Morogh"],		63.5,	50.7,	1)
	AddQuest(7674,	BZ["Dun Morogh"],		63.5,	50.7,	1)
	AddQuest(7675,	BZ["Dun Morogh"],		49.2,	48.0,	1)
	AddQuest(7676,	BZ["Dun Morogh"],		49.2,	48.0,	1)
	AddQuest(7677,	BZ["Elwynn Forest"],		84.1,	65.5,	1)
	AddQuest(7678,	BZ["Elwynn Forest"],		84.1,	65.5,	1)

end
