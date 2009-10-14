--[[

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

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:InitSeasons(SeasonDB)

	self:addLookupList(SeasonDB, 1, L["Feast of Winters Veil"])
	self:addLookupList(SeasonDB, 2, L["Lunar Festival"])
	self:addLookupList(SeasonDB, 3, L["Darkmoon Faire"])
	self:addLookupList(SeasonDB, 4, L["Midsummer Fire Festival"])
	self:addLookupList(SeasonDB, 5, "Love is in the air")
	self:addLookupList(SeasonDB, 6, "Brewfest")
	self:addLookupList(SeasonDB, 7, "Halloween")
	self:addLookupList(SeasonDB, 8, "Children's week")
	self:addLookupList(SeasonDB, 9, "Noblegarden")

end
