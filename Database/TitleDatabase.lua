--------------------------------------------------------------------------------------------------------------------
-- ./DB/TitleDatabase.lua
-- Title Database data for all of Collectinator
--------------------------------------------------------------------------------------------------------------------
-- File date: @file-date-iso@
-- Project version: @project-version@
--------------------------------------------------------------------------------------------------------------------
-- Please see http://www.wowace.com/projects/collectinator/for more information.
--------------------------------------------------------------------------------------------------------------------
-- License:
-- Please see LICENSE.txt
-- This source code is released under All Rights Reserved.
--------------------------------------------------------------------------------------------------------------------

local MODNAME		= "Collectinator"
local addon		= LibStub("AceAddon-3.0"):GetAddon(MODNAME)
local BF		= LibStub("LibBabble-Faction-3.0"):GetLookupTable()

local FACTION_ALLIANCE	= BF["Alliance"]
local FACTION_HORDE	= BF["Horde"]

-------------------------------------------------------------------------------
-- Item "rarity"
-------------------------------------------------------------------------------
local R_COMMON, R_UNCOMMON, R_RARE, R_EPIC, R_LEGENDARY, R_ARTIFACT = 1, 2, 3, 4, 5, 6

-------------------------------------------------------------------------------
-- Origin
-------------------------------------------------------------------------------
local GAME_ORIG, GAME_TBC, GAME_WOTLK = 0, 1, 2

-------------------------------------------------------------------------------
-- Filter flags
-------------------------------------------------------------------------------
local F_ALLIANCE, F_HORDE, F_VENDOR, F_QUEST, F_CRAFT, F_INSTANCE, F_RAID, F_SEASONAL, F_WORLD_DROP, F_MOB_DROP = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
local F_TCG, F_SPEC_EVENT, F_COLLECTORS, F_REMOVED, F_ACHIEVEMENT, F_PVP, F_STORE = 11, 12, 13, 14, 15, 16, 77
local F_BOE, F_BOP, F_BOA = 17, 18, 19
local F_ALCH, F_BS, F_COOKING, F_ENCH, F_ENG, F_FIRST_AID, F_INSC, F_JC, F_LW, F_SMELT, F_TAILOR, F_FISHING = 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32

-------------------------------------------------------------------------------
-- Reputation Filter Flags
-------------------------------------------------------------------------------
local F_ARGENT_DAWN, F_BLOODSAIL, F_CENARION_CIRCLE, F_THORIUM_BROTHERHOOD, F_TIMBERMAW, F_WINTERSRPING, F_ZANDALAR = 33, 34, 35, 36, 37, 38, 39
local F_ALDOR, F_ASHTONGUE, F_CENARION_EXPIDITION, F_HELLFIRE, F_CONSORTIUM, F_KOT, F_LOWER_CITY, F_NAGRAND = 40, 41, 42, 43, 44, 45, 46, 47
local F_NETHERWING, F_SCALE_SANDS, F_SCRYER, F_SHATAR, F_SKYGUARD, F_SHATTEREDSUN, F_SPOREGGAR, F_VIOLET_EYE = 48, 49, 50, 51, 52, 53, 54, 55
local F_ARGENT_CRUSADE, F_FRENZYHEART, F_EBON_BLADE, F_KIRINTOR, F_HODIR, F_KALUAK, F_ORACLES, F_WYRMREST = 56, 57, 58, 59, 60, 61, 62, 63
local F_WRATHCOMMON1, F_WRATHCOMMON2, F_WRATHCOMMON3, F_WRATHCOMMON4, F_WRATHCOMMON5 = 64, 65, 66, 67, 68
local F_CITY1, F_CITY2, F_CITY3, F_CITY4, F_CITY5 = 69, 70, 71, 72, 73
local F_PVP1, F_PVP2, F_PVP3 = 74, 75, 76

-- City 1 Darnassus/Darkspear
-- City 2 Stormwind/Orgrimmar
-- City 3 Gnomerga/Thunder Bluff
-- City 4 Ironforge/Undercity
-- City 5 Exodar/Silvermoon
-- PVP 1 WSG
-- PVP 2 AV
-- PVP 3 AB
--Wrath Common Factions 1 (The Silver Convenant/The Sunreavers)
--Wrath Common Factions 2 (Explorer's League/Hand of Vengance)
--Wrath Common Factions 3 (Explorer's League/Valiance Expedition)
--Wrath Common Factions 4 (The Frostborn/The Taunka)
--Wrath Common Factions 5 (Alliance Vanguard/Horde Expedition)

-------------------------------------------------------------------------------
-- Acquire types
-------------------------------------------------------------------------------
local A_VENDOR, A_QUEST, A_CRAFTED, A_MOB, A_SEASONAL, A_REPUTATION, A_WORLD_DROP, A_CUSTOM, A_ACHIEVEMENT = 1, 2, 3, 4, 5, 6, 7, 8, 9

-------------------------------------------------------------------------------
-- Reputation Levels
-------------------------------------------------------------------------------
local FRIENDLY = 1
local HONORED = 2
local REVERED = 3
local EXALTED = 4

-------------------------------------------------------------------------------
-- Class types
-------------------------------------------------------------------------------
local C_DK, C_DRUID, C_HUNTER, C_MAGE, C_PALADIN, C_PRIEST, C_ROGUE, C_SHAMAN, C_WARLOCK, C_WARRIOR = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

local MY_CLASS = select(2, UnitClass("player"))
local MY_FACTION = UnitFactionGroup("player")

local initialized = false
local num_titles = 0
--http://www.wowwiki.com/TitleId

function addon:GetTitleTotal(DB)
	if initialized then
		return num_titles
	end
	initialized = true

	-------------------------------------------------------------------------------
	-- Wrapper function
	-------------------------------------------------------------------------------
	local function AddTitle(TitleID)
		addon:AddCompanion(DB, "TITLE", TitleID)
		num_titles = num_titles + 1
	end

	AddTitle(1)
	self:AddCompanionFlags(1, F_ALLIANCE, F_PVP, F_RETIRED)

	AddTitle(2)
	self:AddCompanionFlags(2, F_ALLIANCE, F_PVP, F_RETIRED)

	AddTitle(3)
	self:AddCompanionFlags(3, F_ALLIANCE, F_PVP, F_RETIRED)

	AddTitle(4)
	AddTitle(5)
	AddTitle(6)
	AddTitle(7)
	AddTitle(8)
	AddTitle(9)

	return num_titles
end
