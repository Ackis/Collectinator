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
	AddQuest(863,	Z.NORTHERN_BARRENS,			57.6,	18.2,	"Horde")
	AddQuest(3721,	Z.THE_CAPE_OF_STRANGLETHORN,		43.0,	72.0,	"Neutral")
	AddQuest(3861,	Z.WESTFALL,				56.0,	31.6,	"Neutral")
	AddQuest(5502,	Z.ORGRIMMAR,				58.0,	57.6,	"Horde")
	AddQuest(6983,	Z.ORGRIMMAR,				52.4,	77.0,	"Horde")
	AddQuest(7043,	Z.IRONFORGE,				33.2,	67.8,	"Alliance")
	AddQuest(7946,	Z.DARKMOON_ISLAND,			55.8,	70.6,	"Neutral")
	AddQuest(8743,	Z.AHNQIRAJ,				0,	0,	"Neutral")
	AddQuest(8868,	Z.MOONGLADE,				54.0,	35.0,	"Neutral")
	AddQuest(10249,	Z.NETHERSTORM,				37.22,	63.8,	"Neutral")
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
	AddQuest(13910,	Z.DARKSHORE,				37.6,	82.8,	"Alliance")
	AddQuest(13959,	Z.DALARAN_NORTHREND,			 0.0,	 0.0,	"Neutral")
	AddQuest(13960,	Z.DALARAN_NORTHREND,			 0.0,	 0.0,	"Neutral")
	AddQuest(14166, Z.SHATTRATH_CITY,			34.0,	38.6,	"Neutral")
	AddQuest(14392,	Z.AZSHARA,				67.0,	20.4,	"Horde")
	AddQuest(14430,	Z.AZSHARA,				53.0,	29.9,	"Horde")
	AddQuest(24540,	Z.THUNDER_BLUFF,			59.8,	51.6,	"Horde")
	AddQuest(24915,	Z.ICECROWN_CITADEL,			 0.0,	 0.0,	"Neutral")
	AddQuest(24917,	Z.ICECROWN_CITADEL,			 0.0,	 0.0,	"Neutral")
	AddQuest(24918,	Z.ICECROWN_CITADEL,			 0.0,	 0.0,	"Neutral")
	AddQuest(25371,	Z.KELPTHAR_FOREST,			46.0,	46.8,	"Neutral")
	AddQuest(25560,	Z.MOUNT_HYJAL,				39.1,	58.3,	"Neutral")
	AddQuest(26668,	Z.REDRIDGE_MOUNTAINS,			77.6,	65.4,	"Alliance")
	AddQuest(27099,	Z.SILVERPINE_FOREST,			44.8,	41.6,	"Horde")
	AddQuest(27195,	Z.SILVERPINE_FOREST,			55.8,	46.4,	"Horde")
	AddQuest(28288,	Z.FELWOOD,				41.8,	72.0,	"Neutral")
	AddQuest(28415, Z.BURNING_STEPPES,			71.8,	68.0,	"Alliance")
	AddQuest(28491, Z.BURNING_STEPPES,			54.8,	22.6,	"Horde")
	AddQuest(28748,	Z.HILLSBRAD_FOOTHILLS,			33.6,	49.2,	"Neutral")
	AddQuest(28842, Z.WINTERSPRING,				58.0,	63.8,	"Neutral")
	AddQuest(29034,	Z.WINTERSPRING,				46.6,	17.6,	"Alliance")
	AddQuest(29155,	Z.NORTHERN_STRANGLETHORN,		41.0,	73.0,	"Alliance")
	AddQuest(29208,	Z.ZULGURUB,				61.2,	81.4,	"Neutral")
	AddQuest(29253,	Z.NORTHERN_STRANGLETHORN,		41.0,	73.0,	"Horde")
	AddQuest(29267, Z.NORTHERN_STRANGLETHORN,		76.0,	66.6,	"Alliance")
	AddQuest(29268, Z.NORTHERN_STRANGLETHORN,		76.0,	66.6,	"Horde")
	AddQuest(29311,	Z.MOLTEN_FRONT,				47.0,	91.0,	"Neutral")
	AddQuest(29401, Z.ORGRIMMAR,				48.0,	47.0,	"Horde")
	AddQuest(29412,	Z.STORMWIND_CITY,			58.8,	52.8,	"Alliance")
	AddQuest(29413, Z.STORMWIND_CITY,			65.1,	33.3,	"Alliance")
	AddQuest(29429,	Z.ORGRIMMAR,				54.5,	77.8,	"Horde")
	AddQuest(29905,	Z.THE_JADE_FOREST,			58.9,	81.7,	"Alliance")
	AddQuest(29910,	Z.VALLEY_OF_THE_FOUR_WINDS,		81.8,	25.6,	"Neutral")
	AddQuest(29944,	Z.VALLEY_OF_THE_FOUR_WINDS,		86.0,	22.0,	"Neutral")
	AddQuest(29945,	Z.VALLEY_OF_THE_FOUR_WINDS,		68.8,	43.2,	"Neutral")
	AddQuest(30090,	Z.KRASARANG_WILDS,			76.0,	 8.6,	"Neutral")
	AddQuest(30169,	Z.KRASARANG_WILDS,			29.6,	39.0,	"Neutral")
	AddQuest(30617,	Z.KUN_LAI_SUMMIT,			64.8,	60.4,	"Neutral")
	AddQuest(30188,	Z.THE_JADE_FOREST,			57.6,	44.8,	"Neutral")
	AddQuest(30599,	Z.KUN_LAI_SUMMIT,			52.0,	67.2,	"Neutral")
	AddQuest(30675,	Z.KRASARANG_WILDS,			45.4,	85.0,	"Neutral")
	AddQuest(30682,	Z.KUN_LAI_SUMMIT,			44.4,	89.8,	"Neutral")
	AddQuest(30783,	Z.TOWNLONG_STEPPES,			82.6,	73.0,	"Neutral")
	AddQuest(30930,	Z.TOWNLONG_STEPPES,			39.2,	62.0,	"Neutral")
	AddQuest(30991,	Z.KUN_LAI_SUMMIT,			29.2,	62.2,	"Neutral")
	AddQuest(31032,	Z.TOWNLONG_STEPPES,			51.2,	83.0,	"Neutral")
	AddQuest(31083,	Z.DREAD_WASTES,				38.6,	17.2,	"Neutral")
	AddQuest(31239,	Z.THE_JADE_FOREST,			28.0,	47.0,	"Horde")
	AddQuest(31277,	Z.TOWNLONG_STEPPES,			41.0,	60.2,	"Neutral")
	AddQuest(31810,	Z.THE_JADE_FOREST,			57.6,	44.8,	"Neutral")
	AddQuest(31811,	Z.THE_JADE_FOREST,			57.6,	44.8,	"Neutral")
	AddQuest(32399,	Z.KUN_LAI_SUMMIT,			55.8,	34.0,	"Horde")
	AddQuest(32175,	Z.DARKMOON_ISLAND,			47.8,	62.6,	"Neutral")
	AddQuest(32428,	Z.VALE_OF_ETERNAL_BLOSSOMS,		00.0,	00.0,	"Neutral") -- Same questid for both cities/factions
	AddQuest(32434,	Z.TOWNLONG_STEPPES,			57.0,	42.2,	"Neutral")
	AddQuest(32439,	Z.DREAD_WASTES,				61.2,	87.4,	"Neutral")
	AddQuest(32440,	Z.THE_JADE_FOREST,			28.8,	36.0,	"Neutral")
	AddQuest(32441,	Z.KUN_LAI_SUMMIT,			64.8,	93.6,	"Neutral")
	AddQuest(32455,	Z.KRASARANG_WILDS,			87.6,	33.0,	"Alliance")
	AddQuest(32589,	Z.ISLE_OF_THUNDER,			32.6,	35.4,	"Horde")
	AddQuest(32599,	Z.ISLE_OF_THUNDER,			63.2,	72.2,	"Alliance")
	AddQuest(32603,	Z.VALE_OF_ETERNAL_BLOSSOMS,		00.0,	00.0,	"Neutral") -- Same questid for both cities/factions
	AddQuest(32604,	Z.VALE_OF_ETERNAL_BLOSSOMS,		00.0,	00.0,	"Neutral") -- Same questid for both cities/factions
	AddQuest(32616,	Z.ISLE_OF_GIANTS,			32.6,	54.4,	"Neutral")
	AddQuest(32617,	Z.ISLE_OF_GIANTS,			32.6,	54.4,	"Neutral")
	AddQuest(32680,	Z.TOWNLONG_STEPPES,			50.8,	73.2,	"Horde")
	AddQuest(32681,	Z.TOWNLONG_STEPPES,			49.8,	69.0,	"Alliance")
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
	AddQuest(36940,	Z.BLASTED_LANDS,			48.6,	31.8,	"Horde")
	AddQuest(36941,	Z.BLASTED_LANDS,			52.0,	28.6,	"Alliance")
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
	AddQuest(37287,	Z.SPIRES_OF_ARAK,			39.4,	61.6,	"Alliance")
	AddQuest(37292,	Z.SPIRES_OF_ARAK,			40.0,	42.6,	"Horde")
	AddQuest(37307,	Z.LUNARFALL,				37.2,	36.4,	"Alliance")
	AddQuest(37736,	Z.AZSUNA,				53.0,	37.0,	"Neutral")
	AddQuest(37959,	Z.AZSUNA,				53.8,	16.8,	"Neutral")
	AddQuest(38015,	Z.AZSUNA,				49.8,	26.6,	"Neutral")
	AddQuest(38237,	Z.AZSUNA,				63.0,	51.4,	"Neutral")
	AddQuest(38299,	Z.LUNARFALL,				00.0,	00.0,	"Alliance")
	AddQuest(38300,	Z.FROSTWALL,				00.0,	00.0,	"Horde")
	AddQuest(38317,	Z.STORMHEIM,				35.0,	33.4,	"Horde")
	AddQuest(38428, Z.TANAAN_JUNGLE,			31.1,	67.1,	"Neutral")
	AddQuest(38889,	Z.VALSHARAH,				53.0,	57.0,	"Neutral")
	AddQuest(39015,	Z.VALSHARAH,				38.6,	65.6,	"Neutral")
	AddQuest(39305,	Z.HIGHMOUNTAIN,				49.4,	39.2,	"Neutral")
	AddQuest(39656,	Z.HIGHMOUNTAIN,				57.6,	56.6,	"Neutral")
	AddQuest(40149,	Z.STORMHEIM,				45.6,	25.6,	"Neutral")
	AddQuest(40904,	Z.HELLFIRE_CITADEL,			00.0,	00.0,	"Neutral")
	AddQuest(41143,	Z.SURAMAR,				15.2,	51.8,	"Neutral")
	AddQuest(41188,	Z.THUNDER_TOTEM,			45.8,	44.6,	"Neutral")
	AddQuest(41197,	Z.SURAMAR,				29.0,	33.0,	"Neutral")
	AddQuest(42170,	Z.VALSHARAH,				00.0,	00.0,	"Neutral")
	AddQuest(42722,	Z.SURAMAR,				44.2,	73.0,	"Neutral")
	AddQuest(42837,	Z.SURAMAR,				60.6,	56.4,	"Neutral")
	AddQuest(44412,	Z.DALARAN_BROKENISLES,			28.8,	48.4,	"Neutral")
	AddQuest(44767,	Z.THE_STORM_PEAKS,			41.4,	24.4,	"Neutral")
	AddQuest(44959,	Z.DALARAN_BROKENISLES,			00.0,	00.0,	"Neutral") -- Hatchling quest
	AddQuest(44982,	Z.DALARAN_BROKENISLES,			00.0,	00.0,	"Neutral") -- Hatchling quest
	AddQuest(45007,	Z.DALARAN_BROKENISLES,			00.0,	00.0,	"Neutral") -- Hatchling quest
	AddQuest(45008,	Z.DALARAN_BROKENISLES,			00.0,	00.0,	"Neutral") -- Hatchling quest
	AddQuest(45083,	Z.NORTHERN_BARRENS,			63.6,	35.8,	"Neutral")
	AddQuest(45372,	Z.SURAMAR,				37.0,	46.6,	"Neutral")
	AddQuest(45539,	Z.DALARAN_BROKENISLES,			59.4,	39.6,	"Neutral")
	AddQuest(46743,	Z.THUNDER_TOTEM,			38.2,	45.8,	"Neutral")
	AddQuest(46745,	Z.AZSUNA,				46.8,	41.1,	"Neutral")
	AddQuest(46746,	Z.STORMHEIM,				60.2,	51.2,	"Neutral")
	AddQuest(46747, Z.VALSHARAH,				54.6,	73.2,	"Neutral")
	AddQuest(46748,	Z.SURAMAR,				36.8,	46.6,	"Neutral")
	AddQuest(46749,	Z.AZSUNA,				48.2,	73.8,	"Neutral")
	AddQuest(46802,	Z.BROKEN_SHORE,				42.2,	59.0,	"Neutral")
	AddQuest(48977,	Z.KROKUUN,				62.0,	90.8,	"Neutral")
	AddQuest(49285,	Z.ZULDAZAR,				70.2,	65.0,	"Neutral")
	AddQuest(49804,	Z.DRUSTVAR,				36.8,	50.0,	"Alliance")
	AddQuest(50818,	Z.VOLDUN,				29.0,	54.6,	"Horde")
	AddQuest(50855,	Z.DAZARALOR,				50.0,	59.4,	"Alliance")
	AddQuest(50934,	Z.NAZMIR,				66.8,	42.0,	"Horde")
	AddQuest(50957,	Z.ZULDAZAR,				73.2,	28.4,	"Horde")
	AddQuest(50990,	Z.WAYCREST_MANOR,			0.0,	0.0,	"Neutral")
	AddQuest(51574,	Z.VOLDUN,				56.8,	50.4,	"Horde")
	AddQuest(52061,	Z.DRUSTVAR,				65.0,	83.2,	"Neutral")
	AddQuest(52981,	Z.DARKSHORE,				52.2,	22.4,	"Horde")
	AddQuest(53310,	Z.STORMWIND_CITY,			85.6,	31.8,	"Alliance")
	AddQuest(54043,	Z.DARKSHORE,				51.8,	21.6,	"Horde")
	AddQuest(54050,	Z.DARKSHORE,				54.6,	20.8,	"Horde")
	AddQuest(54108,	Z.SWAMP_OF_SORROWS,			80.8,	78.4,	"Horde")
	AddQuest(54176,	Z.TIRAGARDE_SOUND,			83.0,	49.6,	"Alliance")
	AddQuest(54272, Z.VOLDUN,				42.2,	41.7,	"Alliance")
	AddQuest(54273,	Z.VOLDUN,				41.3,	43.2,	"Horde")
	AddQuest(54451,	Z.STORMSONG_VALLEY,			40.4,	36.4,	"Neutral") -- Emissary - Tortollan
	AddQuest(54453,	Z.SILITHUS,				42.2,	44.2,	"Neutral") -- Emissary - Champions of Azeroth
	AddQuest(54454,	Z.BORALUS,				69.2,	25.0,	"Alliance") -- Emissary - 7th Legion
	AddQuest(54455,	Z.ZULDAZAR,				58.0,	62.6,	"Horde") -- Emissary - Honorbound
	AddQuest(54456,	Z.DRUSTVAR,				37.8,	49.0,	"Alliance") -- Emissary - Order of Embers
	AddQuest(54457,	Z.STORMSONG_VALLEY,			59.2,	69.4,	"Alliance") -- Emissary - Storm's Wake
	AddQuest(54458,	Z.BORALUS,				67.6,	21.8,	"Alliance") -- Emissary
	AddQuest(54460, Z.NAZMIR,				39.0,	79.4,	"Horde") -- Emissary
	AddQuest(54461,	Z.VOLDUN,				56.6,	49.8,	"Horde") -- Emissary
	AddQuest(54462,	Z.DAZARALOR,				65.6,	72.4,	"Horde") -- Emissary

	self.InitQuest = nil
end
