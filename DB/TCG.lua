--[[

************************************************************************

TCG.lua

TCG Set data for all of Collectinator

Auto-generated using Dataminer.rb	
Entries to this file will be overwritten

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(TCGDB, TCG ID, TCG Name)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:InitTCG(TCGDB)

	self:addLookupList(TCGDB, 1, "Heroes of Azeroth")
	self:addLookupList(TCGDB, 2, "Beyond the Dark Portal")
	self:addLookupList(TCGDB, 3, "Fires of Outland")
	self:addLookupList(TCGDB, 4, "March of the Legion")
	self:addLookupList(TCGDB, 5, "Servants of the Betrayer")
	self:addLookupList(TCGDB, 6, "Hunt for Illidan")
	self:addLookupList(TCGDB, 7, "Drums of War")
	self:addLookupList(TCGDB, 8, "Special Event")
	self:addLookupList(TCGDB, 9, "CE")

end

