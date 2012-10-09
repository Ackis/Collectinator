--[[
************************************************************************
Vendor.lua
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

local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BB = LibStub("LibBabble-Boss-3.0"):GetLookupTable()

local BN = private.BOSS_NAMES
local Z = private.ZONE_NAMES

private.vendor_list = {}

function addon:InitVendor()
	local function AddVendor(id_num, name, zone_name, x, y, faction)
		private:AddListEntry(private.vendor_list, id_num, name, zone_name, x, y, faction)
	end

	AddVendor(28951,	L["Breanni"],			Z.DALARAN,			40.5,	35.2,	"Neutral")
	AddVendor(32216,	L["Mei Francis"],		Z.DALARAN,			58.6,	43.2,	"Neutral")
	AddVendor(32540,	L["Lillehoff"],			Z.THE_STORM_PEAKS,		66.0,	61.4,	"Neutral")
	AddVendor(34881,	L["Hiren Loresong"],		Z.ICECROWN,			76.2,	19.6,	"Alliance")
	AddVendor(64518,	L["Uncle Bigpocket"],		Z.KUN_LAI_SUMMIT,		65.4,	61.6,	"Neutral")
	AddVendor(58706,	L["Gina Mudclaw"],		Z.VALLEY_OF_THE_FOUR_WINDS,	53.2,	51.6,	"Neutral")
	AddVendor(59908,	L["Jaluu the Generous"],	Z.VALE_OF_ETERNAL_BLOSSOMS,	74.2,	42.6,	"Neutral")
	AddVendor(63721,	L["Nat Pagle"],			Z.KRASARANG_WILDS,		68.4,	43.4,	"Neutral")
	AddVendor(63994,	L["Challenger Wuli"],		Z.SHRINE_OF_TWO_MOONS,		61.0,	21.0,	"Horde")
	AddVendor(64001,	L["Sage Lotusbloom"],		Z.SHRINE_OF_TWO_MOONS,		62.6,	23.2,	"Horde")
	AddVendor(64028,	L["Challenger Soong"],		Z.SHRINE_OF_SEVEN_STARS,	86.2,	61.6,	"Alliance")
	AddVendor(64032,	L["Sage Whiteheart"],		Z.SHRINE_OF_SEVEN_STARS,	84.6,	63.6,	"Alliance")
	AddVendor(64595,	L["Rushi the Fox"],		Z.TOWNLONG_STEPPES,		48.8,	70.6,	"Neutral")
	AddVendor(64605,	L["Tan Shin Tiao"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	82.2,	29.4,	"Neutral")
	AddVendor(66973,	L["Kay Featherfall"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	82.2,	34.0,	"Neutral")

	self.InitVendor = nil
end
