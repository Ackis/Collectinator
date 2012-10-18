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

	AddQuest(3721,	Z.THE_CAPE_OF_STRANGLETHORN,	43.0,	72.0,	"Neutral")
	AddQuest(3861,	Z.WESTFALL,			56.0,	31.6,	"Neutral")
	AddQuest(7660,	Z.ORGRIMMAR,			61.0,	35.2,	"Horde")
	AddQuest(7661,	Z.ORGRIMMAR,			61.0,	35.2,	"Horde")
	AddQuest(7662,	Z.MULGORE,			47.6,	58.0,	"Horde")
	AddQuest(7663,	Z.MULGORE,			47.6,	58.0,	"Horde")
	AddQuest(7664,	Z.DUROTAR,			55.2,	75.6,	"Horde")
	AddQuest(7665,	Z.DUROTAR,			55.2,	75.6,	"Horde")
	AddQuest(7671,	Z.DARNASSUS,			42.6,	32.8,	"Alliance")
	AddQuest(7672,	Z.DARNASSUS,			42.6,	32.8,	"Alliance")
	AddQuest(7673,	Z.DUN_MOROGH,			70.6,	48.8,	"Alliance")
	AddQuest(7674,	Z.DUN_MOROGH,			70.6,	48.8,	"Alliance")
	AddQuest(7675,	Z.DUN_MOROGH,			56.2,	46.2,	"Alliance")
	AddQuest(7676,	Z.DUN_MOROGH,			56.2,	46.2,	"Alliance")
	AddQuest(10898,	Z.TEROKKAR_FOREST,		56.6,	72.8,	"Neutral")
	AddQuest(13422,	Z.THE_STORM_PEAKS,		49.4,	68.8,	"Neutral")
	AddQuest(13423,	Z.THE_STORM_PEAKS,		49.4,	68.8,	"Neutral")
	AddQuest(13424,	Z.THE_STORM_PEAKS,		49.4,	68.8,	"Neutral")
	AddQuest(13425,	Z.THE_STORM_PEAKS,		49.4,	68.8,	"Neutral")
	AddQuest(13570,	Z.DARKSHORE,			50.8,	18.0,	"Alliance")
	AddQuest(13702,	Z.ICECROWN,			76.6,	19.2,	"Alliance") -- Quest IDs 13702, 13732-13735
	AddQuest(13736,	Z.ICECROWN,			76.6,	24.4,	"Horde") -- Quest IDs 13736-13740
	AddQuest(13906,	Z.UNGORO_CRATER,		71.4,	73.8,	"Horde")
	AddQuest(25560,	Z.MOUNT_HYJAL,			39.1,	58.3,	"Neutral")
	AddQuest(28415, Z.BURNING_STEPPES,		71.8,	68.0,	"Alliance")
	AddQuest(28748,	Z.HILLSBRAD_FOOTHILLS,		33.6,	49.2,	"Neutral")
	AddQuest(29034,	Z.WINTERSPRING,			46.6,	17.6,	"Alliance")
	AddQuest(29208,	Z.NORTHERN_STRANGLETHORN,	0.0,	0.0,	"Neutral")
	AddQuest(29267, Z.NORTHERN_STRANGLETHORN,	76.0,	66.6,	"Alliance")
	AddQuest(29268, Z.NORTHERN_STRANGLETHORN,	76.0,	66.6,	"Horde")
	AddQuest(29401, Z.ORGRIMMAR,			48.0,	47.0,	"Horde")
	AddQuest(29412,	Z.STORMWIND_CITY,		58.8,	52.8,	"Alliance")
	AddQuest(29905,	Z.THE_JADE_FOREST,		58.9,	81.7,	"Alliance")
	AddQuest(30188,	Z.THE_JADE_FOREST,		57.6,	44.8,	"Neutral")
	AddQuest(31810,	Z.THE_JADE_FOREST,		57.6,	44.8,	"Neutral")
	AddQuest(31811,	Z.THE_JADE_FOREST,		57.6,	44.8,	"Neutral")

	self.InitQuest = nil
end
