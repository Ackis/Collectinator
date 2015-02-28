--[[
************************************************************************
Reputation.lua
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

local pairs = _G.pairs

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub

local addon	= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L		= LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

private.reputation_list	= {}

function addon:InitReputation()
	local function AddReputation(reputationID, name)
		private:AddListEntry(private.reputation_list, reputationID, _G.GetFactionInfoByID(reputationID) or ("%s %s"):format(_G.UNAVAILABLE, _G.PARENS_TEMPLATE:format(reputationID)))
	end

	for name, id in pairs(private.FACTION_IDS) do
		AddReputation(id, private.LOCALIZED_FACTION_STRINGS[name])
	end
	self.InitReputation = nil
end
