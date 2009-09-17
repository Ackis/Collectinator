--[[

************************************************************************

Mob.lua

Monster data for all of Collectinator

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(MobDB,NPC ID, NPC Name, NPC Location, X Coord, Y Coord, Faction)

************************************************************************

]]--

local MODNAME	= "Collectinator"
local addon		= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L			= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BZ		= LibStub("LibBabble-Zone-3.0"):GetLookupTable()
local BB		= LibStub("LibBabble-Boss-3.0"):GetLookupTable()

function addon:InitMob(MobDB)

	self:addLookupList(MobDB,1561,L["Bloodsail Raider"],BZ["Stranglethorn Vale"],27.0,70.0)
	self:addLookupList(MobDB,10440,BB["Baron Rivendare"],BZ["Stratholme"],0,0)
	self:addLookupList(MobDB,24664,BB["Kael'thas Sunstrider"],BZ["Magisters' Terrace"],0,0)

end
