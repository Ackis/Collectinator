﻿--[[

************************************************************************

Seasonal.lua

 Seasonal data for all of Collectinator

************************************************************************

File date: @file-date-iso@
File revision: @file-revision@
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(SeasonDB, Season ID, Season Name)

************************************************************************

]]--

local MODNAME	= "Collectinator"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

function addon:InitSeasons(DB)
	self:addLookupList(DB, 1, select(1, GetCategoryInfo(156)))	-- Winter Veil
	self:addLookupList(DB, 2, select(1, GetCategoryInfo(160)))	-- Lunar Festival
	self:addLookupList(DB, 3, select(1, GetCategoryInfo(15101)))	-- Darkmoon Faire
	self:addLookupList(DB, 4, select(1, GetCategoryInfo(161)))	-- Midsummer
	self:addLookupList(DB, 5, select(1, GetCategoryInfo(187)))	-- Love is in the Air
	self:addLookupList(DB, 6, select(1, GetCategoryInfo(162)))	-- Brewfest
	self:addLookupList(DB, 7, select(1, GetCategoryInfo(158)))	-- Hallow's End
	self:addLookupList(DB, 8, select(1, GetCategoryInfo(163)))	-- Children's Week
	self:addLookupList(DB, 9, select(1, GetCategoryInfo(159)))	-- Noblegarden
end
