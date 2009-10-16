--[[

************************************************************************

Reputation.lua

Reputation data for all of Collectinator

Auto-generated using Dataminer.rb	
Entries to this file will be overwritten

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(RepDB, Rep ID, Rep Name)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()

function addon:InitReputation(RepDB)

	self:addLookupList(RepDB, 21, BFAC["Booty Bay"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 47, BFAC["Ironforge"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 54, BFAC["Gnomeregan Exiles"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 59, BFAC["Thorium Brotherhood"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 68, BFAC["Undercity"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 69, BFAC["Darnassus"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 70, BFAC["Syndicate"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 72, BFAC["Stormwind"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 76, BFAC["Orgrimmar"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 81, BFAC["Thunder Bluff"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 87, BFAC["Bloodsail Buccaneers"]) -- Acquire Flag: 40
	self:addLookupList(RepDB, 92, BFAC["Gelkis Clan Centaur"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 93, BFAC["Magram Clan Centaur"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 270, BFAC["Zandalar Tribe"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 349, BFAC["Ravenholdt"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 369, BFAC["Gadgetzan"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 470, BFAC["Ratchet"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 471, BFAC["Wildhammer Clan"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 510, BFAC["The Defilers"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 529, BFAC["Argent Dawn"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 530, BFAC["Darkspear Trolls"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 576, BFAC["Timbermaw Hold"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 577, BFAC["Everlook"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 589, BFAC["Wintersaber Trainers"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 609, BFAC["Cenarion Circle"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 729, BFAC["Frostwolf Clan"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 730, BFAC["Stormpike Guard"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 749, BFAC["Hydraxian Waterlords"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 809, BFAC["Shen'dralar"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 889, BFAC["Warsong Outriders"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 890, BFAC["Silverwing Sentinels"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 909, BFAC["Darkmoon Faire"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 910, BFAC["Brood of Nozdormu"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 911, BFAC["Silvermoon City"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 922, BFAC["Tranquillien"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 930, BFAC["Exodar"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 932, BFAC["The Aldor"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 933, BFAC["The Consortium"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 934, BFAC["The Scryers"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 935, BFAC["The Sha'tar"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 941, BFAC["The Mag'har"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 942, BFAC["Cenarion Expedition"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 946, BFAC["Honor Hold"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 947, BFAC["Thrallmar"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 967, BFAC["The Violet Eye"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 970, BFAC["Sporeggar"]) -- Acquire Flag: 40
	self:addLookupList(RepDB, 978, BFAC["Kurenai"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 989, BFAC["Keepers of Time"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 990, BFAC["The Scale of the Sands"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1011, BFAC["Lower City"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1012, BFAC["Ashtongue Deathsworn"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1015, BFAC["Netherwing"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1031, BFAC["Sha'tari Skyguard"]) -- Acquire Flag: 41
	self:addLookupList(RepDB, 1037, BFAC["Alliance Vanguard"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1038, BFAC["Ogri'la"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1050, BFAC["Valiance Expedition"]) -- Acquire Flag: 126
	self:addLookupList(RepDB, 1052, BFAC["Horde Expedition"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1064, BFAC["The Taunka"]) -- Acquire Flag: 128
	self:addLookupList(RepDB, 1067, BFAC["The Hand of Vengeance"]) -- Acquire Flag: 127
	self:addLookupList(RepDB, 1068, BFAC["Explorers' League"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1073, BFAC["The Kalu'ak"]) -- Acquire Flag: 120
	self:addLookupList(RepDB, 1077, BFAC["Shattered Sun Offensive"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1085, BFAC["Warsong Offensive"]) -- Acquire Flag: 129
	self:addLookupList(RepDB, 1090, BFAC["Kirin Tor"]) -- Acquire Flag: 118
	self:addLookupList(RepDB, 1091, BFAC["The Wyrmrest Accord"]) -- Acquire Flag: 122
	self:addLookupList(RepDB, 1094, BFAC["The Silver Covenant"]) -- Acquire Flag: 
	self:addLookupList(RepDB, 1098, BFAC["Knights of the Ebon Blade"]) -- Acquire Flag: 117
	self:addLookupList(RepDB, 1104, BFAC["Frenzyheart Tribe"]) -- Acquire Flag: 116
	self:addLookupList(RepDB, 1105, BFAC["The Oracles"]) -- Acquire Flag: 121
	self:addLookupList(RepDB, 1106, BFAC["Argent Crusade"]) -- Acquire Flag: 115
	self:addLookupList(RepDB, 1119, BFAC["The Sons of Hodir"]) -- Acquire Flag: 119
	self:addLookupList(RepDB, 1124, BFAC["The Sunreavers"])
	self:addLookupList(RepDB, 1126, BFAC["The Frostborn"]) -- Acquire Flag: 

end
