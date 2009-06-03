--[[

************************************************************************

Quest.lua

Quest data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(QuestDB,NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
--local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
--local BZONE				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
--local BBOSS				= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

function addon:InitQuest(QuestDB)

	--self:addLookupList(QuestDB,22,L["Goretusk Liver Pie"],BZONE["Westfall"],55.77,30.92,0)

end
