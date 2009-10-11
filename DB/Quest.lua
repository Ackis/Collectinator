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

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
--local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local BZONE				= LibStub("LibBabble-Zone-3.0"):GetLookupTable()

function addon:InitQuest(QuestDB)

	self:addLookupList(QuestDB,7946,L["Spawn of Jubjub"],BZONE["Terokkar Forest"],33.6,35.9,0)	--several zones
	self:addLookupList(QuestDB,3861,L["CLUCK!"],BZONE["Westfall"],55.5,30.5,0)			--several zones
	self:addLookupList(QuestDB,171,L["A Warden of the Alliance"],BZONE["Stormwind City"],56.3,54.2,1)
	self:addLookupList(QuestDB,5502,L["A Warden of the Horde"],BZONE["Orgrimmar"],70.8,25.5,2)
	self:addLookupList(QuestDB,4298,L["Becoming a Parent"],BZONE["The Hinterlands"],13.7,42.7,1)
	self:addLookupList(QuestDB,3721,L["An OOX of Your Own"],BZONE["Stranglethorn Vale"],28.3,76.3,0)
	self:addLookupList(QuestDB,4729,L["Kibler's Exotic Pets"],BZONE["Burning Steppes"],65.9,22.1,0)
	self:addLookupList(QuestDB,4862,L["En-Ay-Es-Tee-Why"],BZONE["Burning Steppes"],65.9,22.1,0)
	--self:addLookupList(QuestDB,4621,L["Avast Ye, Admiral!"],BZONE["Stranglethorn Vale"],30.7,90.4,0)
	self:addLookupList(QuestDB,11431,L["Catch the Wild Wolpertinger!"],BZONE["Durotar"],45.0,17.3,2)
	self:addLookupList(QuestDB,11117,L["Catch the Wild Wolpertinger!"],BZONE["Dun Morogh"],48.0,39.5,1)
	self:addLookupList(QuestDB,10898,L["Skywing"],BZONE["Terokkar Forest"],53.2,72.2,0)
	self:addLookupList(QuestDB,10966,L["Back to the Orphanage"],BZONE["Shattrath City"],75.0,48.0,1)
	self:addLookupList(QuestDB,10967,L["Back to the Orphanage"],BZONE["Shattrath City"],75.0,48.0,2)
	self:addLookupList(QuestDB,11665,L["Crocolisks in the City"],BZONE["Terokkar Forest"],38.7,12.8,0)
	self:addLookupList(QuestDB,13959,L["Back to the Orphanage"],BZONE["Dalaran"],49.5,62.3,0)
	self:addLookupList(QuestDB,13960,L["Back to the Orphanage"],BZONE["Dalaran"],49.5,62.3,0)
	self:addLookupList(QuestDB,13830,L["The Ghostfish"],BZONE["Dalaran"],52.8,64.9,0)
	self:addLookupList(QuestDB,13832,L["Jewel Of The Sewers"],BZONE["Dalaran"],52.8,64.9,0)
	self:addLookupList(QuestDB,13833,L["Blood Is Thicker"],BZONE["Dalaran"],52.8,64.9,0)
	self:addLookupList(QuestDB,13834,L["Dangerously Delicious"],BZONE["Dalaran"],52.8,64.9,0)
	self:addLookupList(QuestDB,13836,L["Monsterbelly Appetite"],BZONE["Dalaran"],52.8,64.9,0)
	self:addLookupList(QuestDB,13736,L["A Champion Rises"],BZONE["Icecrown"],76.5,24.5,2)
	self:addLookupList(QuestDB,13737,L["A Champion Rises"],BZONE["Icecrown"],76.0,24.5,2)
	self:addLookupList(QuestDB,13738,L["A Champion Rises"],BZONE["Icecrown"],76.2,24.6,2)
	self:addLookupList(QuestDB,13739,L["A Champion Rises"],BZONE["Icecrown"],76.5,24.2,2)
	self:addLookupList(QuestDB,13740,L["A Champion Rises"],BZONE["Icecrown"],76.5,23.9,2)
	self:addLookupList(QuestDB,13702,L["A Champion Rises"],BZONE["Icecrown"],76.6,19.2,1)
	self:addLookupList(QuestDB,13732,L["A Champion Rises"],BZONE["Icecrown"],76.6,19.5,1)
	self:addLookupList(QuestDB,13733,L["A Champion Rises"],BZONE["Icecrown"],76.5,19.8,1)
	self:addLookupList(QuestDB,13734,L["A Champion Rises"],BZONE["Icecrown"],76.1,19.2,1)
	self:addLookupList(QuestDB,13735,L["A Champion Rises"],BZONE["Icecrown"],76.3,19.1,1)

--Class
	self:addLookupList(QuestDB,7631,L["Dreadsteed of Xoroth"],BZONE["Burning Steppes"],12.6,31.6,0)
	self:addLookupList(QuestDB,7647,L["Judgment and Redemption"],BZONE["Stormwind City"],48.5,50.1,1)
	self:addLookupList(QuestDB,9737,L["True Masters of the Light"],BZONE["Silvermoon City"],91.8,37.5,2)
	self:addLookupList(QuestDB,12687,L["Into the Realm of Shadows"],BZONE["The Scarlet Enclave"],51.9,35.5,0)

--Hyldnir Spoils
	self:addLookupList(QuestDB,13422,L["Maintaining Discipline"],BZONE["The Storm Peaks"],50.9,65.6,0)
	self:addLookupList(QuestDB,13423,L["Defending Your Title"],BZONE["The Storm Peaks"],50.9,65.6,0)
	self:addLookupList(QuestDB,13424,L["Back to the Pit"],BZONE["The Storm Peaks"],50.9,65.6,0)
	self:addLookupList(QuestDB,13425,L["The Aberrations Must Die "],BZONE["The Storm Peaks"],50.9,65.6,0)

--Trade Old
	self:addLookupList(QuestDB,7660,L["Wolf Swapping - Arctic Wolf"],BZONE["Orgrimmar"],69.3,12.7,2)
	self:addLookupList(QuestDB,7661,L["Wolf Swapping - Red Wolf"],BZONE["Orgrimmar"],69.3,12.7,2)
	self:addLookupList(QuestDB,7662,L["New Kodo - Teal"],BZONE["Mulgore"],47.5,58.5,2)
	self:addLookupList(QuestDB,7663,L["New Kodo - Green"],BZONE["Mulgore"],47.5,58.5,2)
	self:addLookupList(QuestDB,7664,L["Ivory Raptor Replacement"],BZONE["Durotar"],55.2,75.6,2)
	self:addLookupList(QuestDB,7665,L["Red Raptor Replacement"],BZONE["Durotar"],55.2,75.6,2)
	self:addLookupList(QuestDB,7671,L["Frostsaber Replacement"],BZONE["Darnassus"],38.3,15.7,1)
	self:addLookupList(QuestDB,7672,L["Nightsaber Replacement"],BZONE["Darnassus"],38.3,15.7,1)
	self:addLookupList(QuestDB,7673,L["Frost Ram Exchange"],BZONE["Dun Morogh"],63.5,50.7,1)
	self:addLookupList(QuestDB,7674,L["Black Ram Exchange"],BZONE["Dun Morogh"],63.5,50.7,1)
	self:addLookupList(QuestDB,7675,L["Icy Blue Mechanostrider Replacement"],BZONE["Dun Morogh"],49.2,48.0,1)
	self:addLookupList(QuestDB,7676,L["White Mechanostrider Replacement"],BZONE["Dun Morogh"],49.2,48.0,1)
	self:addLookupList(QuestDB,7677,L["White Stallion Exchange"],BZONE["Elwynn Forest"],84.1,65.5,1)
	self:addLookupList(QuestDB,7678,L["Palomino Exchange"],BZONE["Elwynn Forest"],84.1,65.5,1)

end
