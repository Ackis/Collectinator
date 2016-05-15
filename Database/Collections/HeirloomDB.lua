--[[
************************************************************************
HeirloomDB.lua
************************************************************************
File date: @file-date-iso@
File hash: @file-abbreviated-hash@
Project hash: @project-abbreviated-hash@
Project version: @project-version@
************************************************************************
Please see http://www.wowace.com/addons/collectinator/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]] --

-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Libraries
local table = _G.table

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub	= _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local F = private.FILTER_IDS
local A = private.ACQUIRE_TYPES
local Q = private.ITEM_QUALITIES
local REP = private.REP_LEVELS
local FAC = private.FACTION_IDS
local V = private.GAME_VERSIONS
local Z = private.ZONE_NAMES
local PROF = private.LOCALIZED_PROFESSION_NAMES

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------


function addon:InitHeirloom()
	local function AddHeirloom(spell_id, genesis, quality)
		return addon:AddCollectable(spell_id, "HEIRLOOM", genesis, quality)
	end

	local heirloom

-- Warlords of Draenor
	-- Polished Helm of Valor -- 122245
	heirloom = AddHeirloom(122245, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Tarnished Raging Berserker's Helm -- 122246
	heirloom = AddHeirloom(122246, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Mystical Coif of Elements -- 122247
	heirloom = AddHeirloom(122247, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Stained Shadowcraft Cap -- 122248
	heirloom = AddHeirloom(122248, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Preened Tribal War Feathers -- 122249
	heirloom = AddHeirloom(122249, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Tattered Dreadmist Mask -- 122250
	heirloom = AddHeirloom(122250, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Polished Legplates of Valor -- 122251
	heirloom = AddHeirloom(122251, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Tarnished Leggings of Destruction -- 122252
	heirloom = AddHeirloom(122252, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Mystical Kilt of Elements -- 122253
	heirloom = AddHeirloom(122253, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Stained Shadowcraft Pants -- 122254
	heirloom = AddHeirloom(122254, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Preened Wildfeather Leggings -- 122255
	heirloom = AddHeirloom(122255, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Tattered Dreadmist Leggings -- 122256
	heirloom = AddHeirloom(122256, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Worn Stoneskin Gargoyle Cape -- 122260
	heirloom = AddHeirloom(122260, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Inherited Cape of the Black Baron -- 122261
	heirloom = AddHeirloom(122261, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Ancient Bloodmoon Cloak -- 122262
	heirloom = AddHeirloom(122262, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Burnished Helm of Might -- 122263
	heirloom = AddHeirloom(122263, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Burnished Legplates of Might -- 122264
	heirloom = AddHeirloom(122264, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Ripped Sandstorm Cloak -- 122266
	heirloom = AddHeirloom(122266, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(46572, 46602, 51495, 51496, 51501, 51502, 51503, 51504, 51512, 52268)

	-- Bloodied Arcanite Reaper -- 122349
	heirloom = AddHeirloom(122349, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Balanced Heartseeker -- 122350
	heirloom = AddHeirloom(122350, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Venerable Dal'Rend's Sacred Charge -- 122351
	heirloom = AddHeirloom(122351, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Charmed Ancient Bone Bow -- 122352
	heirloom = AddHeirloom(122352, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Dignified Headmaster's Charge -- 122353
	heirloom = AddHeirloom(122353, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Devout Aurastone Hammer -- 122354
	heirloom = AddHeirloom(122354, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Polished Spaulders of Valor -- 122355
	heirloom = AddHeirloom(122355, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Champion Herod's Shoulder -- 122356
	heirloom = AddHeirloom(122356, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Mystical Pauldrons of Elements -- 122357
	heirloom = AddHeirloom(122357, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Stained Shadowcraft Spaulders -- 122358
	heirloom = AddHeirloom(122358, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Preened Ironfeather Shoulders -- 122359
	heirloom = AddHeirloom(122359, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Tattered Dreadmist Mantle -- 122360
	heirloom = AddHeirloom(122360, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Swift Hand of Justice -- 122361
	heirloom = AddHeirloom(122361, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Discerning Eye of the Beast -- 122362
	heirloom = AddHeirloom(122362, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Burnished Warden Staff -- 122363
	heirloom = AddHeirloom(122363, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Sharpened Scarlet Kris -- 122364
	heirloom = AddHeirloom(122364, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Reforged Truesilver Champion -- 122365
	heirloom = AddHeirloom(122365, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Upgraded Dwarven Hand Cannon -- 122366
	heirloom = AddHeirloom(122366, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- The Blessed Hammer of Grace -- 122367
	heirloom = AddHeirloom(122367, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Grand Staff of Jordan -- 122368
	heirloom = AddHeirloom(122368, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Battleworn Thrash Blade -- 122369
	heirloom = AddHeirloom(122369, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Inherited Insignia of the Horde -- 122370
	heirloom = AddHeirloom(122370, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.HORDE, F.IBOA)
	heirloom:AddVendor(6566)

	-- Inherited Insignia of the Alliance -- 122371
	heirloom = AddHeirloom(122371, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.IBOA)
	heirloom:AddVendor(6294)

	-- Strengthened Stockade Pauldrons -- 122372
	heirloom = AddHeirloom(122372, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Pristine Lightforge Spaulders -- 122373
	heirloom = AddHeirloom(122373, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Prized Beastmaster's Mantle -- 122374
	heirloom = AddHeirloom(122374, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Aged Pauldrons of The Five Thunders -- 122375
	heirloom = AddHeirloom(122375, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Exceptional Stormshroud Shoulders -- 122376
	heirloom = AddHeirloom(122376, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Lasting Feralheart Spaulders -- 122377
	heirloom = AddHeirloom(122377, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Exquisite Sunderseer Mantle -- 122378
	heirloom = AddHeirloom(122378, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Champion's Deathdealer Breastplate -- 122379
	heirloom = AddHeirloom(122379, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Mystical Vest of Elements -- 122380
	heirloom = AddHeirloom(122380, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Polished Breastplate of Valor -- 122381
	heirloom = AddHeirloom(122381, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Preened Ironfeather Breastplate -- 122382
	heirloom = AddHeirloom(122382, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Stained Shadowcraft Tunic -- 122383
	heirloom = AddHeirloom(122383, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Tattered Dreadmist Robe -- 122384
	heirloom = AddHeirloom(122384, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Venerable Mass of McGowan -- 122385
	heirloom = AddHeirloom(122385, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Repurposed Lava Dredger -- 122386
	heirloom = AddHeirloom(122386, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Burnished Breastplate of Might -- 122387
	heirloom = AddHeirloom(122387, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Burnished Pauldrons of Might -- 122388
	heirloom = AddHeirloom(122388, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Bloodsoaked Skullforge Reaver -- 122389
	heirloom = AddHeirloom(122389, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Musty Tome of the Lost -- 122390
	heirloom = AddHeirloom(122390, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Flamescarred Draconian Deflector -- 122391
	heirloom = AddHeirloom(122391, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Weathered Observer's Shield -- 122392
	heirloom = AddHeirloom(122392, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566, 34885, 56335)

	-- Brawler's Razor Claws -- 122396
	heirloom = AddHeirloom(122396, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.BRAWLERS)
	heirloom:AddRepVendor(FAC.BRAWLGAR_ARENA, REP.EXALTED, 68364)
	heirloom:AddRepVendor(FAC.BIZMOS_BRAWLPUB, REP.EXALTED, 68363)

	-- Dread Pirate Ring -- 122529
	heirloom = AddHeirloom(122529, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.PROFESSION)
	heirloom:AddProfession(PROF.FISHING)
	heirloom:AddCustom("FISHING_TOURNAMENT")

	-- Inherited Mark of Tyranny -- 122530
	heirloom = AddHeirloom(122530, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Eternal Talisman of Evasion -- 122662
	heirloom = AddHeirloom(122662, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Eternal Amulet of the Redeemed -- 122663
	heirloom = AddHeirloom(122663, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Eternal Horizon Choker -- 122664
	heirloom = AddHeirloom(122664, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Eternal Woven Ivy Necklace -- 122666
	heirloom = AddHeirloom(122666, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Eternal Emberfury Talisman -- 122667
	heirloom = AddHeirloom(122667, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Eternal Will of the Martyr -- 122668
	heirloom = AddHeirloom(122668, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Defending Champion -- 126948
	heirloom = AddHeirloom(126948, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	heirloom:AddCustom("GURUBASHI_ARENA")

	-- Returning Champion -- 126949
	heirloom = AddHeirloom(126949, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	heirloom:AddCustom("GURUBASHI_ARENA")

	-- Pristine Lightforge Breastplate -- 127010
	heirloom = AddHeirloom(127010, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Pristine Lightforge Legplates -- 127011
	heirloom = AddHeirloom(127011, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Pristine Lightforge Helm -- 127012
	heirloom = AddHeirloom(127012, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)
	heirloom:AddVendor(6294, 6566)

	-- Signet of the Third Fleet -- 128169
	heirloom = AddHeirloom(128169, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	heirloom:AddGarrisonMission(616)

	-- Captain Sander's Returned Band -- 128172
	heirloom = AddHeirloom(128172, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	heirloom:AddGarrisonMission(649)

	-- Admiral Taylor's Loyalty Ring -- 128173
	heirloom = AddHeirloom(128173, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	heirloom:AddGarrisonMission(650)

	-- Touch of the Void -- 128318
	heirloom = AddHeirloom(128318, V.WOD, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.MISC)
	heirloom:AddGarrisonMission(686)

-- Legion
	-- Spear of Rethu - 131733
	heirloom = AddHeirloom(131733, V.LEGION, Q.ARTIFACT)
	heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA, F.PROFESSION)
	heirloom:AddProfession(PROF.ARCHAEOLOGY)

	self.InitHeirloom = nil

end