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

local NEUTRAL	= 0
local ALLIANCE	= 1
local HORDE	= 2

function addon:InitQuest(DB)

	-------------------------------------------------------------------------------
	-- Counter and wrapper function
	-------------------------------------------------------------------------------
	local function AddQuest(QuestID, Zone, X, Y, Faction)
		addon:addLookupList(DB, QuestID, nil, Zone, X, Y, Faction)
	end

	AddQuest(7946,	BZ["Terokkar Forest"],		33.6,	35.9,	NEUTRAL)	--several zones
	AddQuest(3861,	BZ["Westfall"],			55.5,	30.5,	NEUTRAL)	--several zones
	AddQuest(171,	BZ["Stormwind City"],		56.3,	54.2,	ALLIANCE)
	AddQuest(5502,	BZ["Orgrimmar"],		70.8,	25.5,	HORDE)
	AddQuest(3721,	BZ["The Cape of Stranglethorn"],	43.0, 72.0,	NEUTRAL)
	AddQuest(11431,	BZ["Durotar"],			45.0,	17.3,	HORDE)
	AddQuest(11111,	BZ["Shattrath City"],		67.5,	18.1,	NEUTRAL)
	AddQuest(11117,	BZ["Dun Morogh"],		48.0,	39.5,	ALLIANCE)
	AddQuest(10898,	BZ["Terokkar Forest"],		53.2,	72.2,	NEUTRAL)
	AddQuest(10966,	BZ["Shattrath City"],		75.0,	48.0,	ALLIANCE)
	AddQuest(10967,	BZ["Shattrath City"],		75.0,	48.0,	HORDE)
	AddQuest(11665,	BZ["Terokkar Forest"],		38.7,	12.8,	NEUTRAL)
	AddQuest(13959,	BZ["Dalaran"],			49.5,	62.3,	NEUTRAL)
	AddQuest(13960,	BZ["Dalaran"],			49.5,	62.3,	NEUTRAL)
	AddQuest(13736,	BZ["Icecrown"],			76.5,	24.5,	HORDE)
	AddQuest(13737,	BZ["Icecrown"],			76.0,	24.5,	HORDE)
	AddQuest(13738,	BZ["Icecrown"],			76.2,	24.6,	HORDE)
	AddQuest(13739,	BZ["Icecrown"],			76.5,	24.2,	HORDE)
	AddQuest(13740,	BZ["Icecrown"],			76.5,	23.9,	HORDE)
	AddQuest(13702,	BZ["Icecrown"],			76.6,	19.2,	ALLIANCE)
	AddQuest(13732,	BZ["Icecrown"],			76.6,	19.5,	ALLIANCE)
	AddQuest(13733,	BZ["Icecrown"],			76.5,	19.8,	ALLIANCE)
	AddQuest(13734,	BZ["Icecrown"],			76.1,	19.2,	ALLIANCE)
	AddQuest(13735,	BZ["Icecrown"],			76.3,	19.1,	ALLIANCE)
	AddQuest(13906,	BZ["Un'Goro Crater"],		71.5,   73.7,   HORDE)
	AddQuest(24915, BZ["Icecrown Citadel"],  0, 0, NEUTRAL)
	AddQuest(28748, BZ["Hillsbrad Foothills"], 33.6, 49.3, NEUTRAL)
	AddQuest(13570, BZ["Darkshore"], 50.8, 18, ALLIANCE)
	AddQuest(28415, BZ["Burning Steppes"], 0, 0, ALLIANCE)
	AddQuest(28491, BZ["Burning Steppes"], 0, 0, HORDE)
	AddQuest(25560, BZ["Mount Hyjal"], 37.3, 56.2, NEUTRAL)
	AddQuest(25371, BZ["Kelp'thar Forest"], 46.0, 46.8, NEUTRAL)
	
	--Class
	AddQuest(12687,	BZ["The Scarlet Enclave"],	51.9,	35.5,	NEUTRAL)

	-- Bag of Fishing Treasures
	AddQuest(13830,	BZ["Dalaran"],			52.8,	64.9,	NEUTRAL)
	AddQuest(13832,	BZ["Dalaran"],			52.8,	64.9,	NEUTRAL)
	AddQuest(13833,	BZ["Dalaran"],			52.8,	64.9,	NEUTRAL)
	AddQuest(13834,	BZ["Dalaran"],			52.8,	64.9,	NEUTRAL)
	AddQuest(13836,	BZ["Dalaran"],			52.8,	64.9,	NEUTRAL)

	--Hyldnir Spoils
	AddQuest(13422,	BZ["The Storm Peaks"],		50.9,	65.6,	NEUTRAL)
	AddQuest(13423,	BZ["The Storm Peaks"],		50.9,	65.6,	NEUTRAL)
	AddQuest(13424,	BZ["The Storm Peaks"],		50.9,	65.6,	NEUTRAL)
	AddQuest(13425,	BZ["The Storm Peaks"],		50.9,	65.6,	NEUTRAL)

	--Trade Old
	AddQuest(7660,	BZ["Orgrimmar"],		69.3,	12.7,	HORDE)
	AddQuest(7661,	BZ["Orgrimmar"],		69.3,	12.7,	HORDE)
	AddQuest(7662,	BZ["Mulgore"],			47.5,	58.5,	HORDE)
	AddQuest(7663,	BZ["Mulgore"],			47.5,	58.5,	HORDE)
	AddQuest(7664,	BZ["Durotar"],			55.2,	75.6,	HORDE)
	AddQuest(7665,	BZ["Durotar"],			55.2,	75.6,	HORDE)
	AddQuest(7671,	BZ["Darnassus"],		38.3,	15.7,	ALLIANCE)
	AddQuest(7672,	BZ["Darnassus"],		38.3,	15.7,	ALLIANCE)
	AddQuest(7673,	BZ["Dun Morogh"],		63.5,	50.7,	ALLIANCE)
	AddQuest(7674,	BZ["Dun Morogh"],		63.5,	50.7,	ALLIANCE)
	AddQuest(7675,	BZ["Dun Morogh"],		49.2,	48.0,	ALLIANCE)
	AddQuest(7676,	BZ["Dun Morogh"],		49.2,	48.0,	ALLIANCE)
	AddQuest(7677,	BZ["Elwynn Forest"],		84.1,	65.5,	ALLIANCE)
	AddQuest(7678,	BZ["Elwynn Forest"],		84.1,	65.5,	ALLIANCE)

end
