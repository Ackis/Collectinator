--[[
************************************************************************
Custom.lua
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

local addon		= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L			= LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

local Z			= private.ZONE_NAMES

private.custom_list	= {}

function addon:InitCustom()
	local function AddCustom(identifier, zone_name, coord_x, coord_y, faction)
		private:AddListEntry(private.custom_list, identifier, L[identifier], zone_name, coord_x, coord_y, nil)
	end

	AddCustom("CHAMPION_SEALS",	Z.ICECROWN)
	AddCustom("SOR")
	AddCustom("RECRUIT")
	AddCustom("MYSTERIOUS_EGG",	Z.SHOLAZAR_BASIN,		54.6,	56.2)
	AddCustom("DISGUSTING_JAR",	Z.SHOLAZAR,BASIN,		55.0,	69.0)
	AddCustom("TCG",		Z.THE_CAPE_OF_STRANGLETHORN,	42.6,	71.6)
	AddCustom("STORE")
	AddCustom("PLUSHIE")
	AddCustom("WEBSTORE")
	AddCustom("ARENA")
	AddCustom("CITY")
	AddCustom("NOBLE_VENDOR")
	AddCustom("CE")
	AddCustom("BLIZZCON")
	AddCustom("STARCRAFTCE")
	AddCustom("DIABLOCE")
	AddCustom("AUTH")
	AddCustom("WWI")
	AddCustom("CHINA")
	AddCustom("KOREA")
	AddCustom("BATTLEMERGE")
	AddCustom("TAKKSNEST",		Z.NORTHERN_BARRENS)
	AddCustom("RAZORMAWNEST",	Z.WETLANDS,			69.9,	29.1)
	AddCustom("DARTSNEST",		Z.DUSTWALLOW_MARSH,		48.0,	14.5)
	AddCustom("MATRIARCHNEST",	Z.UNGORO_CRATER,		62.0,	73.6)
	AddCustom("EUPROMO")
	AddCustom("SHOEXALTED")
	AddCustom("PETBATTLEDAILY")
	AddCustom("COT",		Z.TANARIS)
	AddCustom("PETTAMER")
	AddCustom("MOUNTAIN_DEW")
	AddCustom("FIONA'S_CHARM",	Z.EASTERN_PLAGUELANDS,		34.8,	69.2)
	AddCustom("OOZING_BAG")
	AddCustom("PRIMAL_EGG",		Z.PANDARIA)
	AddCustom("HEROIC")
	AddCustom("NORMAL")
	AddCustom("LFR")
	AddCustom("FLEX")
	AddCustom("FISHING_DAILIES")
	AddCustom("OLYMPICS")
	AddCustom("DIREHORN")
	AddCustom("BLINGTRON")
	AddCustom("CRANENEST",		Z.TIMELESS_ISLE)
	AddCustom("TIMELESS_CHEST",	Z.TIMELESS_ISLE,		59.4,	40.6)
	AddCustom("UNCLAIMED_BM",	Z.NAGRAND_DRAENOR,		53.8,	15.0)
	AddCustom("STABLES")
	AddCustom("MYTHIC")
	AddCustom("INVADERS_TREASURE")
	AddCustom("PICKPOCKET")
	AddCustom("GEYSER_GUN",		Z.THRONE_OF_THUNDER)
	AddCustom("WINTERVEIL_GIFT")
	AddCustom("CIRCLE_OF_BLOOD",	Z.FROSTFIRE_RIDGE)
	AddCustom("DECEPTIA",		Z.TALADOR,			58.9,	12.0)
	AddCustom("ASTROLOGER",		Z.SHADOWMOON_VALLEY_DRAENOR,	49.3,	37.5)
	AddCustom("VINDICATORS_CACHE",	Z.SHADOWMOON_VALLEY_DRAENOR,	51.1,	79.1)
	AddCustom("SWAMPLIGHTER_HIVE",	Z.SHADOWMOON_VALLEY_DRAENOR,	55.3,	74.8)
	AddCustom("CURIOUS_DEATHWEB_EGG",	Z.SHADOWMOON_VALLEY_DRAENOR, 66.6,	86.9)
	AddCustom("INN")
	AddCustom("MENAGERIE_DAILY")
	AddCustom("TEROCLAW_NEST",	Z.TALADOR)
	AddCustom("NAT_PAGLE")
	AddCustom("KETYAS_STASH",	Z.TALADOR,			54.0,	27.6)
	AddCustom("RYLAK_NEST",		Z.FROSTFIRE_RIDGE)

	self.InitCustom = nil
end

