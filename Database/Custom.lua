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

-- Collectors Editions
	AddCustom("CE")
	AddCustom("CE_H")
	AddCustom("CE_E")
	AddCustom("STARCRAFTCE")
	AddCustom("DIABLOCE")
	AddCustom("OVERWATCHCE")

-- Promotions
	AddCustom("BLIZZCON")
	AddCustom("SOR")
	AddCustom("AUTH")
	AddCustom("WWI")
	AddCustom("CHINA")
	AddCustom("KOREA")
	AddCustom("BATTLEMERGE")
	AddCustom("EUPROMO")
	AddCustom("MOUNTAIN_DEW")
	AddCustom("RECRUIT")
	AddCustom("OLYMPICS")
	AddCustom("DIABLO_20th_EVENT")
	AddCustom("FOR_AZEROTH")

-- Purchases
	AddCustom("TCG",		Z.THE_CAPE_OF_STRANGLETHORN,	42.6,	71.6)
	AddCustom("STORE")
	AddCustom("PLUSHIE")

-- World Events
	AddCustom("CITY")
	AddCustom("NOBLE_VENDOR")
	AddCustom("PILGRIMS_BOUNTY")
	AddCustom("WINTERVEIL_GIFT")
	AddCustom("CHAPMAN")
	AddCustom("TIMEREAVER")
	AddCustom("CREEPY_PETS")
	AddCustom("SPECTRAL_SPIDERS")

-- Raid difficulty
	AddCustom("HEROIC")
	AddCustom("NORMAL")
	AddCustom("LFR")
	AddCustom("FLEX")
	AddCustom("MYTHIC")

-- Warlords Garrison
	AddCustom("INN")
	AddCustom("STABLES")
	AddCustom("NAT_PAGLE")
	AddCustom("MENAGERIE")
	AddCustom("BARN")
	AddCustom("TRADING_POST")
	AddCustom("LUMBER_MILL")
	AddCustom("GLADIATORS_SANCTUM")
	AddCustom("BARRACKS")
	AddCustom("INVADERS_TREASURE")

-- Pet stuff
	AddCustom("PETBATTLEDAILY")
	AddCustom("PETTAMER")
	AddCustom("MENAGERIE_DAILY")
	AddCustom("TANAAN_PET_DAILY",	Z.TANAAN_JUNGLE)
	AddCustom("PET_SUPPLY_BAGS")
	AddCustom("LEPROUS_PET_SUPPLY_BAG")

-- In-game various
	AddCustom("CHAMPION_SEALS",	Z.ICECROWN)
	AddCustom("MYSTERIOUS_EGG",	Z.SHOLAZAR_BASIN,		54.6,	56.2)
	AddCustom("DISGUSTING_JAR",	Z.SHOLAZAR,BASIN,		55.0,	69.0)
	AddCustom("SHOEXALTED")
	AddCustom("COT",		Z.TANARIS)
	AddCustom("FIONA'S_CHARM",	Z.EASTERN_PLAGUELANDS,		34.8,	69.2)
	AddCustom("OOZING_BAG")
	AddCustom("PRIMAL_EGG",		Z.ISLE_OF_GIANTS)
	AddCustom("FISHING_DAILIES")
	AddCustom("BLINGTRON_4000")
	AddCustom("BLINGTRON_5000")
	AddCustom("BLINGTRON_6000")
	AddCustom("TIMELESS_CHEST",	Z.TIMELESS_ISLE,		59.4,	40.6)
	AddCustom("BMAH",		Z.DALARAN_BROKENISLES)
	AddCustom("PICKPOCKET")
	AddCustom("GEYSER_GUN",		Z.THRONE_OF_THUNDER)
	AddCustom("FISHING_TOURNAMENT")
	AddCustom("GURUBASHI_ARENA",	Z.STRANGLETHORN_VALE)
	AddCustom("NETHAERA_LIGHT",	Z.DALARAN_NORTHREND)
	AddCustom("CLASS_HALL")
	AddCustom("PRESTIGE")
	AddCustom("HATCHLING",		Z.BROKEN_ISLES)
	AddCustom("HATCHLING_CHAIN",	Z.BROKEN_ISLES)
	AddCustom("WITHERED_ARMY")
	AddCustom("DEMONHUNTER_STARTER")
	AddCustom("GRUMPUS")
	AddCustom("FEL-SPOTTED_EGG")
	AddCustom("FALCOSAUR")
	AddCustom("BRUCE")
	AddCustom("SCRYING_STONE",	Z.NAZJATAR)
	AddCustom("SNOWSOFT_NIBBLER",	Z.MECHAGON_ISLAND)
	AddCustom("OOX-35",		Z.MECHAGON_ISLAND)

	AddCustom("SECRETDISCORD")

	AddCustom("LEGION_PATHFINDER_MOUNT",	Z.DALARAN_BROKENISLES)
	AddCustom("LEGION_ASCENDED",	Z.DALARAN_BROKENISLES)
	AddCustom("CURIOUS_WYRMTONGUE",	Z.BROKEN_SHORE,			47.8,	67.4)

	AddCustom("EXALTEDCACHE")

	AddCustom("CHROMIE",		Z.THE_DEATHS_OF_CHROMIE)
	AddCustom("FRANCOIS",		Z.TIRAGARDE_SOUND,		52.8,	31.1)
	AddCustom("ISLAND_EXPEDITIONS")
	AddCustom("ZAND_AMULET",	Z.DAZARALOR)
	AddCustom("FABIOUS",		Z.NAZJATAR)
	AddCustom("NAZJATAR_BODYGUARDS",	Z.NAZJATAR)
	AddCustom("REC_RIG",		Z.MECHAGON_ISLAND)
	AddCustom("HONEYBACK",		Z.STORMSONG_VALLEY)
	AddCustom("HONEYBACK_HIVE",	Z.STORMSONG_VALLEY)
	AddCustom("DEFAULT")

	AddCustom("UNKNOWN_COLLECT")

	self.InitCustom = nil
end

