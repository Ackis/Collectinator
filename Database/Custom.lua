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
	AddCustom("EUPROMO")
	AddCustom("SHOEXALTED")
	AddCustom("PETBATTLEDAILY")
	AddCustom("COT",		Z.TANARIS)
	AddCustom("PETTAMER")
	AddCustom("MOUNTAIN_DEW")
	AddCustom("FIONA'S_CHARM",	Z.EASTERN_PLAGUELANDS,		34.8,	69.2)
	AddCustom("OOZING_BAG")
	AddCustom("PRIMAL_EGG",		Z.ISLE_OF_GIANTS)
	AddCustom("HEROIC")
	AddCustom("NORMAL")
	AddCustom("LFR")
	AddCustom("FLEX")
	AddCustom("FISHING_DAILIES")
	AddCustom("OLYMPICS")
	AddCustom("BLINGTRON_4000")
	AddCustom("BLINGTRON_5000")
	AddCustom("TIMELESS_CHEST",	Z.TIMELESS_ISLE,		59.4,	40.6)
	AddCustom("BMAH",		Z.NAGRAND_DRAENOR,		53.8,	15.0)
	AddCustom("STABLES")
	AddCustom("MYTHIC")
	AddCustom("INVADERS_TREASURE")
	AddCustom("PICKPOCKET")
	AddCustom("GEYSER_GUN",		Z.THRONE_OF_THUNDER)
	AddCustom("WINTERVEIL_GIFT")
	AddCustom("INN")
	AddCustom("MENAGERIE_DAILY")
	AddCustom("NAT_PAGLE")
	AddCustom("MENAGERIE")
	AddCustom("BARN")
	AddCustom("TRADING_POST")
	AddCustom("FISHING_TOURNAMENT")
	AddCustom("GLADIATORS_SANCTUM")
	AddCustom("GURUBASHI_ARENA",	Z.STRANGLETHORN_VALE)
	AddCustom("PILGRIMS_BOUNTY")
	AddCustom("CHAPMAN")
	AddCustom("TANAAN_PET_DAILY")
	AddCustom("NETHAERA_LIGHT",	Z.DALARAN)

	self.InitCustom = nil
end

