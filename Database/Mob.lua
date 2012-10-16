--[[
************************************************************************
Mob.lua
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
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BB = LibStub("LibBabble-Boss-3.0"):GetLookupTable()

local BN = private.BOSS_NAMES
local Z = private.ZONE_NAMES

private.mob_list = {}

function addon:InitMob()
	local function AddMob(mob_id, mob_name, zone_name, coord_x, coord_y)
		private:AddListEntry(private.mob_list, mob_id, mob_name, zone_name, coord_x, coord_y, nil)
	end

	AddMob(23682,	BB["Headless Horseman"],		Z.SCARLET_MONASTERY,	 0.0,  0.0)
	AddMob(23872,	BB["Coren Direbrew"],			Z.BLACKROCK_DEPTHS,	 0.0,  0.0)
--	AddMob(26693,	BB["Skadi the Ruthless"],		Z.UTGARDE_PINNACLE,	69.8, 36.4)
--	AddMob(27656,	BB["Ley-Guardian Eregos"],		Z.THE_OCULUS,		 0.0,  0.0)
--	AddMob(28859,	BB["Malygos"],				Z.THE_EYE_OF_ETERNITY,	 0.0,  0.0)
--	AddMob(28860,	BB["Sartharion"],			Z.THE_OBSIDIAN_SANCTUM,	 0.0,  0.0)
	AddMob(31125,	BB["Archavon the Stone Watcher"],	Z.VAULT_OF_ARCHAVON,	49.2, 17.0)
--	AddMob(32273,	BB["Infinite Corruptor"],		Z.STRATHOLME,		 0.0,  0.0)
--	AddMob(32491,	L["Time-Lost Proto Drake"],		Z.THE_STORM_PEAKS,	 0.0,  0.0)
	AddMob(33288,	BB["Yogg-Saron"],			Z.ULDUAR,		 0.0,  0.0)
	AddMob(33993,	BB["Emalon the Storm Watcher"],		Z.VAULT_OF_ARCHAVON,	62.6, 55.4)
	AddMob(35013,	BB["Koralon the Flame Watcher"],	Z.VAULT_OF_ARCHAVON,	36.0, 55.4)
	AddMob(36296,	BB["Apothecary Hummel"],		Z.SHADOWFANG_KEEP,	41.8, 53.6)
	AddMob(38433,	BB["Toravon the Ice Watcher"],		Z.VAULT_OF_ARCHAVON,	62.6, 36.8)
	AddMob(34564,	BN.ANUBARAK,				Z.TRIAL_OF_THE_CRUSADER, 0.0,  0.0)
--	AddMob(49636,	BN.ONYXIA,				Z.ONYXIAS_LAIR,		68.0, 35.2)

	self.InitMob = nil
end
