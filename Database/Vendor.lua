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
	AddVendor(64518,	L["Uncle Bigpocket"],		Z.KUN_LAI_SUMMIT,		65.4,	61.6,	"Neutral")
	AddVendor(64518,	L["Jaluu the Generous"],	Z.VALE_OF_ETERNAL_BLOSSOMS,	74.2,	42.6,	"Neutral")



	self.InitVendor = nil
end
