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

	AddMob(3636,	L["Deviate Ravager"],			Z.WAILING_CAVERNS,		 0.0,  0.0)
	AddMob(3637,	L["Deviate Guardian"],			Z.WAILING_CAVERNS,		 0.0,  0.0)
	AddMob(10184,	BB["Onyxia"],				Z.ONYXIAS_LAIR,			68.0, 35.2)
	AddMob(15276,	BB["Emperor Vek'lor"],			Z.AHNQIRAJ,			 0.0,  0.0)
	AddMob(15550,	BB["Attumen the Huntsman"],		Z.KARAZHAN,			 0.0,  0.0)
	AddMob(19622,   BN.KAELTHAS_SUNSTRIDER,			Z.TEMPEST_KEEP,			50.0, 15.6)
	AddMob(23035,	BN.ANZU,				Z.SETHEKK_HALLS,		32.6, 58.0)
	AddMob(23577,	BN.HALAZZI,				Z.ZULAMAN,			57.6, 23.6)
	AddMob(23682,	BB["Headless Horseman"],		Z.SCARLET_MONASTERY,		 0.0,  0.0)
	AddMob(23872,	BB["Coren Direbrew"],			Z.BLACKROCK_DEPTHS,		 0.0,  0.0)
	AddMob(24664,   BN.KAELTHAS_SUNSTRIDER,			Z.MAGISTERS_TERRACE,		 8.6, 50.6)
	AddMob(25740,	BB["Ahune"],				Z.THE_SLAVE_PENS,		32.2, 50.8)
	AddMob(26693,	BN.SKADI_THE_RUTHLESS,			Z.UTGARDE_PINNACLE,		69.8, 36.4)
	AddMob(27656,	BN.LEY_GUARDIAN_EREGOS,			Z.THE_OCULUS,			 0.0,  0.0)
	AddMob(28859,	BB["Malygos"],				Z.THE_EYE_OF_ETERNITY,		 0.0,  0.0)
	AddMob(28860,	BB["Sartharion"],			Z.THE_OBSIDIAN_SANCTUM,		 0.0,  0.0)
	AddMob(31125,	BB["Archavon the Stone Watcher"],	Z.VAULT_OF_ARCHAVON,		49.2, 17.0)
	AddMob(32273,	BB["Infinite Corruptor"],		Z.THE_CULLING_OF_STRATHOLME,	 0.0,  0.0)
	AddMob(32491,	L["Time-Lost Proto Drake"],		Z.THE_STORM_PEAKS,		 0.0,  0.0)
	AddMob(33288,	BB["Yogg-Saron"],			Z.ULDUAR,			 0.0,  0.0)
	AddMob(33993,	BB["Emalon the Storm Watcher"],		Z.VAULT_OF_ARCHAVON,		62.6, 55.4)
	AddMob(35013,	BB["Koralon the Flame Watcher"],	Z.VAULT_OF_ARCHAVON,		36.0, 55.4)
	AddMob(36296,	L["Apothecary Hummel"],			Z.SHADOWFANG_KEEP,		41.8, 53.6)
	AddMob(36597,	BB["The Lich King"],			Z.ICECROWN_CITADEL,		 0.0,  0.0)
	AddMob(38433,	BB["Toravon the Ice Watcher"],		Z.VAULT_OF_ARCHAVON,		62.6, 36.8)
	AddMob(34564,	BN.ANUBARAK,				Z.TRIAL_OF_THE_CRUSADER,	 0.0,  0.0)
	AddMob(43214,	BN.SLABHIDE,				Z.THE_STONECORE,		36.2, 45.8)
	AddMob(43873,	BN.ALTAIRUS,				Z.THE_VORTEX_PINNACLE,		52.0, 80.6)
	AddMob(45412,	BN.LORD_AURIUS_RIVENDARE,		Z.STRATHOLME,			38.6, 20.2)
	AddMob(46753,	BN.ALAKIR,				Z.THRONE_OF_THE_FOUR_WINDS,	46.6, 50.2)
	AddMob(47676,	L["Baradin Fox"],			Z.TOL_BARAD_PENINSULA,		52.6, 59.0)
	AddMob(49822,	L["Jadefang"],				Z.DEEPHOLM,			61.2, 22.6)
	AddMob(50005,	L["Poseidus"],				Z.VASHJIR,			 0.0,  0.0)
	AddMob(50062,	L["Aeonaxx"],				Z.DEEPHOLM,			 0.0,  0.0)
	AddMob(50245,	L["Dormus the Camel-Hoarder"],		Z.FERALAS,			69.6, 73.2)
	AddMob(50776,	L["Nalash Verdantis"],			Z.DREAD_WASTES,			64.2, 58.6)
	AddMob(52059,	BN.HIGH_PRIESTESS_KILNARA,		Z.ZULGURUB,			47.8, 20.6)
	AddMob(52151,	BN.BLOODLORD_MANDOKIR,			Z.ZULGURUB,			60.6, 80.6)
	AddMob(52409,	BN.RAGNAROS,				Z.FIRELANDS,			 0.0,  0.0)
	AddMob(52530,	BN.ALYSRAZOR,				Z.FIRELANDS,			 0.0,  0.0)
	AddMob(55294,	BN.ULTRAXION,				Z.DRAGON_SOUL,			 0.0,  0.0)
	AddMob(56173,	BN.MADNESS_OF_DEATHWING,		Z.DRAGON_SOUL,			 0.0,  0.0)
	AddMob(58336,	L["Darkmoon Rabbit"],			Z.DARKMOON_ISLAND,		77.4, 80.2)
	AddMob(60410,	BN.ELEGON,				Z.MOGUSHAN_VAULTS,		20.6, 51.5)
	AddMob(60491,	BN.SHA_OF_ANGER, 			Z.KUN_LAI_SUMMIT,		67.8, 77.8)
	AddMob(62346,	L["Galleon"], 				Z.VALLEY_OF_THE_FOUR_WINDS,	70.8, 63.4)
	AddMob(64403,	L["Alani"], 				Z.VALE_OF_ETERNAL_BLOSSOMS,	39.4, 30.8)

	self.InitMob = nil
end
