--[[
************************************************************************
Quest.lua
************************************************************************
File date: @file-date-iso@
File hash: @file-abbreviated-hash@
Project hash: @project-abbreviated-hash@
Project version: @project-version@
************************************************************************
Please see http://www.wowace.com/addons/arl/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]]--

-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private	= ...

local LibStub = _G.LibStub
local addon	= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)

local Z = private.ZONE_NAMES

private.quest_list	= {}

-----------------------------------------------------------------------
-- Memoizing table for quest names.
-----------------------------------------------------------------------
private.quest_names = _G.setmetatable({}, {
	__index = function(t, id_num)
			  _G.GameTooltip:SetOwner(_G.UIParent, _G.ANCHOR_NONE)
			  _G.GameTooltip:SetHyperlink(("quest:%s"):format(_G.tostring(id_num)))

			  local quest_name = _G["GameTooltipTextLeft1"]:GetText()
			  _G.GameTooltip:Hide()

			  if not quest_name then
				  return _G.UNKNOWN
			  end
			  t[id_num] = quest_name
			  return quest_name
		  end,
})

function addon:InitQuest()
	local function AddQuest(quest_id, zone_name, coord_x, coord_y, faction)
		private:AddListEntry(private.quest_list, quest_id, nil, zone_name, coord_x, coord_y, faction)
	end

	AddQuest(171,	Z.STORMWIND_CITY,			56.0,	55.0,	"Alliance")
	AddQuest(3721,	Z.THE_CAPE_OF_STRANGLETHORN,		43.0,	72.0,	"Neutral")
	AddQuest(3861,	Z.WESTFALL,				56.0,	31.6,	"Neutral")
	AddQuest(5502,	Z.ORGRIMMAR,				58.0,	57.6,	"Horde")
	AddQuest(6983,	Z.ORGRIMMAR,				52.4,	77.0,	"Horde")
	AddQuest(7043,	Z.IRONFORGE,				33.2,	67.8,	"Alliance")
	AddQuest(7946,	Z.DARKMOON_ISLAND,			55.8,	70.6,	"Neutral")
	AddQuest(8743,	Z.AHNQIRAJ_THE_FALLEN_KINGDOM,		0,	0,	"Neutral")
	AddQuest(8868,	Z.MOONGLADE,				54.0,	35.0,	"Neutral")
	AddQuest(10675,	Z.BLADES_EDGE_MOUNTAINS,		60.6,	69.0,	"Alliance")
	AddQuest(10898,	Z.TEROKKAR_FOREST,			56.6,	72.8,	"Neutral")
	AddQuest(10966,	Z.SHATTRATH_CITY,			74.8,	47.8,	"Alliance")
	AddQuest(10967,	Z.SHATTRATH_CITY,			74.8,	47.8,	"Horde")
	AddQuest(11109, Z.SHATTRATH_CITY,			67.4,	18.4,	"Neutral")
	AddQuest(11110, Z.SHATTRATH_CITY,			67.4,	18.4,	"Neutral")
	AddQuest(11111, Z.SHATTRATH_CITY,			67.4,	18.4,	"Neutral")
	AddQuest(11112, Z.SHATTRATH_CITY,			67.4,	18.4,	"Neutral")
	AddQuest(11113, Z.SHATTRATH_CITY,			67.4,	18.4,	"Neutral")
	AddQuest(11114, Z.SHATTRATH_CITY,			67.4,	18.4,	"Neutral")
	AddQuest(11117, Z.DUN_MOROGH,				55.2,	37.8,	"Alliance")
	AddQuest(11431, Z.DUROTAR,				41.2,	18.4,	"Horde")
	AddQuest(11665, Z.TEROKKAR_FOREST,			38.6,	12.8,	"Neutral")
	AddQuest(12687, Z.PLAGUELANDS_THE_SCARLET_ENCLAVE,	53.2,	33.4,	"Neutral")
	AddQuest(13422,	Z.THE_STORM_PEAKS,			49.4,	68.8,	"Neutral")
	AddQuest(13423,	Z.THE_STORM_PEAKS,			49.4,	68.8,	"Neutral")
	AddQuest(13424,	Z.THE_STORM_PEAKS,			49.4,	68.8,	"Neutral")
	AddQuest(13425,	Z.THE_STORM_PEAKS,			49.4,	68.8,	"Neutral")
	AddQuest(13570,	Z.DARKSHORE,				50.8,	18.0,	"Alliance")
	AddQuest(13702,	Z.ICECROWN,				76.6,	19.2,	"Alliance") -- Quest IDs 13702, 13732-13735
	AddQuest(13736,	Z.ICECROWN,				76.6,	24.4,	"Horde") -- Quest IDs 13736-13740
	AddQuest(13906,	Z.UNGORO_CRATER,			71.4,	73.8,	"Horde")
	AddQuest(13959,	Z.DALARAN,				 0.0,	 0.0,	"Neutral")
	AddQuest(13960,	Z.DALARAN,				 0.0,	 0.0,	"Neutral")
	AddQuest(14392,	Z.AZSHARA,				67.0,	20.4,	"Horde")
	AddQuest(24915,	Z.ICECROWN_CITADEL,			 0.0,	 0.0,	"Neutral")
	AddQuest(24917,	Z.ICECROWN_CITADEL,			 0.0,	 0.0,	"Neutral")
	AddQuest(24918,	Z.ICECROWN_CITADEL,			 0.0,	 0.0,	"Neutral")
	AddQuest(25371,	Z.KELPTHAR_FOREST,			46.0,	46.8,	"Neutral")
	AddQuest(25560,	Z.MOUNT_HYJAL,				39.1,	58.3,	"Neutral")
	AddQuest(28415, Z.BURNING_STEPPES,			71.8,	68.0,	"Alliance")
	AddQuest(28491, Z.BURNING_STEPPES,			54.8,	22.6,	"Horde")
	AddQuest(28748,	Z.HILLSBRAD_FOOTHILLS,			33.6,	49.2,	"Neutral")
	AddQuest(29034,	Z.WINTERSPRING,				46.6,	17.6,	"Alliance")
	AddQuest(29208,	Z.NORTHERN_STRANGLETHORN,		0.0,	0.0,	"Neutral")
	AddQuest(29267, Z.NORTHERN_STRANGLETHORN,		76.0,	66.6,	"Alliance")
	AddQuest(29268, Z.NORTHERN_STRANGLETHORN,		76.0,	66.6,	"Horde")
	AddQuest(29311,	Z.MOLTEN_FRONT,				47.0,	91.0,	"Neutral")
	AddQuest(29401, Z.ORGRIMMAR,				48.0,	47.0,	"Horde")
	AddQuest(29412,	Z.STORMWIND_CITY,			58.8,	52.8,	"Alliance")
	AddQuest(29413, Z.STORMWIND_CITY,			65.1,	33.3,	"Alliance")
	AddQuest(29429,	Z.ORGRIMMAR,				54.5,	77.8,	"Horde")
	AddQuest(29905,	Z.THE_JADE_FOREST,			58.9,	81.7,	"Alliance")
	AddQuest(29910,	Z.VALLEY_OF_THE_FOUR_WINDS,		81.8,	25.6,	"Neutral")
	AddQuest(29945,	Z.VALLEY_OF_THE_FOUR_WINDS,		68.8,	43.2,	"Neutral")
	AddQuest(30090,	Z.KRASARANG_WILDS,			76.0,	 8.6,	"Neutral")
	AddQuest(30169,	Z.KRASARANG_WILDS,			29.6,	39.0,	"Neutral")
	AddQuest(30617,	Z.KUN_LAI_SUMMIT,			64.8,	60.4,	"Neutral")
	AddQuest(30188,	Z.THE_JADE_FOREST,			57.6,	44.8,	"Neutral")
	AddQuest(30599,	Z.KUN_LAI_SUMMIT,			52.0,	67.2,	"Neutral")
	AddQuest(30675,	Z.KRASARANG_WILDS,			45.4,	85.0,	"Neutral")
	AddQuest(30682,	Z.KUN_LAI_SUMMIT,			44.4,	89.8,	"Neutral")
	AddQuest(30783,	Z.TOWNLONG_STEPPES,			82.6,	73.0,	"Neutral")
	AddQuest(30991,	Z.KUN_LAI_SUMMIT,			29.2,	62.2,	"Neutral")
	AddQuest(31032,	Z.TOWNLONG_STEPPES,			51.2,	83.0,	"Neutral")
	AddQuest(31083,	Z.DREAD_WASTES,				38.6,	17.2,	"Neutral")
	AddQuest(31239,	Z.THE_JADE_FOREST,			28.0,	47.0,	"Horde")
	AddQuest(31277,	Z.TOWNLONG_STEPPES,			41.0,	60.2,	"Neutral")
	AddQuest(31810,	Z.THE_JADE_FOREST,			57.6,	44.8,	"Neutral")
	AddQuest(31811,	Z.THE_JADE_FOREST,			57.6,	44.8,	"Neutral")
	AddQuest(32399,	Z.KRASARANG_WILDS,			00.0,	00.0,	"Horde")
	AddQuest(32175,	Z.DARKMOON_ISLAND,			47.8,	62.6,	"Neutral")
	AddQuest(32428,	Z.VALLEY_OF_THE_FOUR_WINDS,		00.0,	00.0,	"Neutral")
	AddQuest(32434,	Z.TOWNLONG_STEPPES,			57.0,	42.2,	"Neutral")
	AddQuest(32439,	Z.DREAD_WASTES,				61.2,	87.4,	"Neutral")
	AddQuest(32440,	Z.THE_JADE_FOREST,			28.8,	36.0,	"Neutral")
	AddQuest(32441,	Z.KUN_LAI_SUMMIT,			64.8,	93.6,	"Neutral")
	AddQuest(32455,	Z.KRASARANG_WILDS,			00.0,	00.0,	"Alliance")
	AddQuest(32589,	Z.ISLE_OF_THUNDER,			32.6,	35.4,	"Horde")
	AddQuest(32599,	Z.ISLE_OF_THUNDER,			63.2,	72.2,	"Alliance")
	AddQuest(32603,	Z.VALE_OF_ETERNAL_BLOSSOMS,		00.0,	00.0,	"Neutral")
	AddQuest(32604,	Z.VALE_OF_ETERNAL_BLOSSOMS,		00.0,	00.0,	"Neutral")
	AddQuest(32616,	Z.ISLE_OF_GIANTS,			00.0,	00.0,	"Neutral")
	AddQuest(32617,	Z.ISLE_OF_GIANTS,			00.0,	00.0,	"Neutral")
	AddQuest(32985,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(34838,	Z.SPIRES_OF_ARAK,			45.4,	36.6,	"Neutral")
	AddQuest(34900,	Z.NAGRAND_DRAENOR,			79.2,	52.6,	"Neutral")
	AddQuest(34907,	Z.FROSTFIRE_RIDGE,			21.8,	09.7,	"Neutral")
	AddQuest(35195,	Z.SHADOWMOON_VALLEY_DRAENOR,		50.0,	81.2,	"Neutral")
	AddQuest(35788,	Z.FROSTWALL,				40.4,	56.2,	"Horde")
	AddQuest(36169,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(36380,	Z.FROSTFIRE_RIDGE,			20.0,	56.4,	"Horde")
	AddQuest(36471,	Z.DARKMOON_ISLAND,			47.4,	62.2,	"Neutral")
	AddQuest(36982,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(36940,	Z.BLASTED_LANDS,			00.0,	00.0,	"Horde")
	AddQuest(36941,	Z.BLASTED_LANDS,			00.0,	00.0,	"Alliance")
	AddQuest(36994,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(37004,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(37013,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(37021, Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(37028,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(37041,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(37059, Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(37069,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(37079,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(37104,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(37111,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(37307,	Z.LUNARFALL,				37.2,	36.4,	"Alliance")

	self.InitQuest = nil
end
