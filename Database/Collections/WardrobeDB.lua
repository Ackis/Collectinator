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
local S = private.ITEM_SLOT_NAMES

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------


function addon:InitWardrobe()
	local function AddWardrobe(appearance_id, genesis, quality)
		return addon:AddCollectable(appearance_id, "WARDROBE", genesis, quality)
	end

	local wardrobe

--[[	-- 155 --
	wardrobe = AddWardrobe(155, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(57241)

	-- 156 --
	wardrobe = AddWardrobe(156, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(62854)

	-- 161 --
	wardrobe = AddWardrobe(161, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(24606)

	-- 169 --
	wardrobe = AddWardrobe(169, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(53)

	-- 177 --
	wardrobe = AddWardrobe(177, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(24582)

	-- 195 --
	wardrobe = AddWardrobe(195, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(3067)

	-- 197 --
	wardrobe = AddWardrobe(197, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(3066)

	-- 208 --
	wardrobe = AddWardrobe(208, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WRIST)
	wardrobe:SetItemID(9909)

	-- 223 --
	wardrobe = AddWardrobe(223, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(776)

	-- 227 --
	wardrobe = AddWardrobe(227, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(789)

	-- 229 --
	wardrobe = AddWardrobe(229, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(791)

	-- 230 --
	wardrobe = AddWardrobe(230, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(24112)

	-- 232 --
	wardrobe = AddWardrobe(232, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(18346)

	-- 239 --
	wardrobe = AddWardrobe(239, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(810)

	-- 241 --
	wardrobe = AddWardrobe(241, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(812)

	-- 242 --
	wardrobe = AddWardrobe(242, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(816)

	-- 243 --
	wardrobe = AddWardrobe(243, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(820)

	-- 246 --
	wardrobe = AddWardrobe(246, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(827)

	-- 250 --
	wardrobe = AddWardrobe(250, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(24640)

	-- 251 --
	wardrobe = AddWardrobe(251, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(26010)

	-- 261 --
	wardrobe = AddWardrobe(261, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2267)

	-- 264 --
	wardrobe = AddWardrobe(264, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(138385)

	-- 268 --
	wardrobe = AddWardrobe(268, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(865)

	-- 269 --
	wardrobe = AddWardrobe(269, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(866)

	-- 271 --
	wardrobe = AddWardrobe(271, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(868)

	-- 276 --
	wardrobe = AddWardrobe(276, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(873)

	-- 278 --
	wardrobe = AddWardrobe(278, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(880)

	-- 282 --
	wardrobe = AddWardrobe(282, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(890)

	-- 283 --
	wardrobe = AddWardrobe(283, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(892)

	-- 285 --
	wardrobe = AddWardrobe(285, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(899)

	-- 286 --
	wardrobe = AddWardrobe(286, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHOULDER)
	wardrobe:SetItemID(24587)

	-- 293 --
	wardrobe = AddWardrobe(293, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(920)

	-- 297 --
	wardrobe = AddWardrobe(297, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(11964)

	-- 302 --
	wardrobe = AddWardrobe(302, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(936)

	-- 303 --
	wardrobe = AddWardrobe(303, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(937)

	-- 304 --
	wardrobe = AddWardrobe(304, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(940)

	-- 305 --
	wardrobe = AddWardrobe(305, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(943)

	-- 306 --
	wardrobe = AddWardrobe(306, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(944)

	-- 308 --
	wardrobe = AddWardrobe(308, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WAIST)
	wardrobe:SetItemID(983)

	-- 310 --
	wardrobe = AddWardrobe(310, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1009)

	-- 311 --
	wardrobe = AddWardrobe(311, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(59249)

	-- 316 --
	wardrobe = AddWardrobe(316, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(1131)

	-- 317 --
	wardrobe = AddWardrobe(317, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1155)

	-- 318 --
	wardrobe = AddWardrobe(318, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1158)

	-- 319 --
	wardrobe = AddWardrobe(319, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(65676)

	-- 322 --
	wardrobe = AddWardrobe(322, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(3075)

	-- 325 --
	wardrobe = AddWardrobe(325, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(1171)

	-- 326 --
	wardrobe = AddWardrobe(326, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(86518)

	-- 329 --
	wardrobe = AddWardrobe(329, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WRIST)
	wardrobe:SetItemID(1183)

	-- 330 --
	wardrobe = AddWardrobe(330, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(1190)

	-- 332 --
	wardrobe = AddWardrobe(332, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(65667)

	-- 341 --
	wardrobe = AddWardrobe(341, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1207)

	-- 344 --
	wardrobe = AddWardrobe(344, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1214)

	-- 354 --
	wardrobe = AddWardrobe(354, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(1270)

	-- 357 --
	wardrobe = AddWardrobe(357, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(4039)

	-- 359 --
	wardrobe = AddWardrobe(359, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1287)

	-- 360 --
	wardrobe = AddWardrobe(360, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(53246)

	-- 361 --
	wardrobe = AddWardrobe(361, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1296)

	-- 362 --
	wardrobe = AddWardrobe(362, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(1297)

	-- 363 --
	wardrobe = AddWardrobe(363, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WAIST)
	wardrobe:SetItemID(1299)

	-- 364 --
	wardrobe = AddWardrobe(364, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1300)

	-- 366 --
	wardrobe = AddWardrobe(366, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(1304)

	-- 370 --
	wardrobe = AddWardrobe(370, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1317)

	-- 372 --
	wardrobe = AddWardrobe(372, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WRIST)
	wardrobe:SetItemID(1351)

	-- 373 --
	wardrobe = AddWardrobe(373, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(1355)

	-- 383 --
	wardrobe = AddWardrobe(383, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(3561)

	-- 384 --
	wardrobe = AddWardrobe(384, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(14124)

	-- 385 --
	wardrobe = AddWardrobe(385, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(14125)

	-- 386 --
	wardrobe = AddWardrobe(386, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(14163)

	-- 387 --
	wardrobe = AddWardrobe(387, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(156947)

	-- 392 --
	wardrobe = AddWardrobe(392, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(12471)

	-- 393 --
	wardrobe = AddWardrobe(393, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(25120)

	-- 394 --
	wardrobe = AddWardrobe(394, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1391)

	-- 395 --
	wardrobe = AddWardrobe(395, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1394)

	-- 397 --
	wardrobe = AddWardrobe(397, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1405)

	-- 412 --
	wardrobe = AddWardrobe(412, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(6564)

	-- 413 --
	wardrobe = AddWardrobe(413, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(24592)

	-- 414 --
	wardrobe = AddWardrobe(414, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(24594)

	-- 415 --
	wardrobe = AddWardrobe(415, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(24591)

	-- 418 --
	wardrobe = AddWardrobe(418, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1440)

	-- 424 --
	wardrobe = AddWardrobe(424, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1457)

	-- 429 --
	wardrobe = AddWardrobe(429, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1465)

	-- 431 --
	wardrobe = AddWardrobe(431, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1473)

	-- 432 --
	wardrobe = AddWardrobe(432, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(18369)

	-- 433 --
	wardrobe = AddWardrobe(433, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1480)

	-- 436 --
	wardrobe = AddWardrobe(436, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1483)

	-- 437 --
	wardrobe = AddWardrobe(437, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(15934)

	-- 439 --
	wardrobe = AddWardrobe(439, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(1486)

	-- 444 --
	wardrobe = AddWardrobe(444, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(18496)

	-- 447 --
	wardrobe = AddWardrobe(447, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(26004)

	-- 448 --
	wardrobe = AddWardrobe(448, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WAIST)
	wardrobe:SetItemID(30516)

	-- 451 --
	wardrobe = AddWardrobe(451, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(14571)

	-- 465 --
	wardrobe = AddWardrobe(465, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1539)

	-- 468 --
	wardrobe = AddWardrobe(468, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(1560)

	-- 469 --
	wardrobe = AddWardrobe(469, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(1561)

	-- 473 --
	wardrobe = AddWardrobe(473, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1607)

	-- 474 --
	wardrobe = AddWardrobe(474, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1608)

	-- 475 --
	wardrobe = AddWardrobe(475, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1613)

	-- 480 --
	wardrobe = AddWardrobe(480, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(1659)

	-- 481 --
	wardrobe = AddWardrobe(481, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(15979)

	-- 486 --
	wardrobe = AddWardrobe(486, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(1716)

	-- 488 --
	wardrobe = AddWardrobe(488, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1720)

	-- 489 --
	wardrobe = AddWardrobe(489, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1721)

	-- 501 --
	wardrobe = AddWardrobe(501, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(6632)

	-- 508 --
	wardrobe = AddWardrobe(508, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHOULDER)
	wardrobe:SetItemID(9796)

	-- 511 --
	wardrobe = AddWardrobe(511, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(4311)

	-- 514 --
	wardrobe = AddWardrobe(514, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHOULDER)
	wardrobe:SetItemID(24611)

	-- 517 --
	wardrobe = AddWardrobe(517, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2580)

	-- 537 --
	wardrobe = AddWardrobe(537, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2308)

	-- 544 --
	wardrobe = AddWardrobe(544, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(12251)

	-- 572 --
	wardrobe = AddWardrobe(572, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(65287)

	-- 575 --
	wardrobe = AddWardrobe(575, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(15397)

	-- 578 --
	wardrobe = AddWardrobe(578, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(65280)

	-- 579 --
	wardrobe = AddWardrobe(579, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1917)

	-- 581 --
	wardrobe = AddWardrobe(581, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1926)

	-- 583 --
	wardrobe = AddWardrobe(583, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1928)

	-- 584 --
	wardrobe = AddWardrobe(584, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(1929)

	-- 585 --
	wardrobe = AddWardrobe(585, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(1930)

	-- 586 --
	wardrobe = AddWardrobe(586, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1933)

	-- 588 --
	wardrobe = AddWardrobe(588, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1935)

	-- 589 --
	wardrobe = AddWardrobe(589, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1936)

	-- 591 --
	wardrobe = AddWardrobe(591, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(1938)

	-- 600 --
	wardrobe = AddWardrobe(600, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WRIST)
	wardrobe:SetItemID(1974)

	-- 612 --
	wardrobe = AddWardrobe(612, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(4984)

	-- 614 --
	wardrobe = AddWardrobe(614, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(1997)

	-- 615 --
	wardrobe = AddWardrobe(615, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(1998)

	-- 618 --
	wardrobe = AddWardrobe(618, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2013)

	-- 630 --
	wardrobe = AddWardrobe(630, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(25333)

	-- 631 --
	wardrobe = AddWardrobe(631, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WRIST)
	wardrobe:SetItemID(14419)

	-- 633 --
	wardrobe = AddWardrobe(633, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2034)

	-- 639 --
	wardrobe = AddWardrobe(639, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2042)

	-- 642 --
	wardrobe = AddWardrobe(642, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(157013)

	-- 648 --
	wardrobe = AddWardrobe(648, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2059)

	-- 654 --
	wardrobe = AddWardrobe(654, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2072)

	-- 657 --
	wardrobe = AddWardrobe(657, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2077)

	-- 659 --
	wardrobe = AddWardrobe(659, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2079)

	-- 663 --
	wardrobe = AddWardrobe(663, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2088)

	-- 664 --
	wardrobe = AddWardrobe(664, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2089)

	-- 665 --
	wardrobe = AddWardrobe(665, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(33269)

	-- 671 --
	wardrobe = AddWardrobe(671, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(23931)

	-- 675 --
	wardrobe = AddWardrobe(675, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(106829)

	-- 676 --
	wardrobe = AddWardrobe(676, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(12295)

	-- 688 --
	wardrobe = AddWardrobe(688, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(31446)

	-- 689 --
	wardrobe = AddWardrobe(689, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(4974)

	-- 691 --
	wardrobe = AddWardrobe(691, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2140)

	-- 708 --
	wardrobe = AddWardrobe(708, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2163)

	-- 709 --
	wardrobe = AddWardrobe(709, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2164)

	-- 712 --
	wardrobe = AddWardrobe(712, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(2168)

	-- 713 --
	wardrobe = AddWardrobe(713, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2169)

	-- 717 --
	wardrobe = AddWardrobe(717, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(15947)

	-- 718 --
	wardrobe = AddWardrobe(718, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(15989)

	-- 723 --
	wardrobe = AddWardrobe(723, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(7954)

	-- 726 --
	wardrobe = AddWardrobe(726, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2194)

	-- 737 --
	wardrobe = AddWardrobe(737, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(156933)

	-- 747 --
	wardrobe = AddWardrobe(747, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2218)

	-- 751 --
	wardrobe = AddWardrobe(751, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(52641)

	-- 753 --
	wardrobe = AddWardrobe(753, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2226)

	-- 757 --
	wardrobe = AddWardrobe(757, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(2232)

	-- 759 --
	wardrobe = AddWardrobe(759, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2234)

	-- 760 --
	wardrobe = AddWardrobe(760, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2235)

	-- 761 --
	wardrobe = AddWardrobe(761, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2236)

	-- 763 --
	wardrobe = AddWardrobe(763, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(2238)

	-- 764 --
	wardrobe = AddWardrobe(764, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2316)

	-- 765 --
	wardrobe = AddWardrobe(765, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2241)

	-- 766 --
	wardrobe = AddWardrobe(766, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2243)

	-- 770 --
	wardrobe = AddWardrobe(770, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2256)

	-- 771 --
	wardrobe = AddWardrobe(771, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(15928)

	-- 777 --
	wardrobe = AddWardrobe(777, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2266)

	-- 779 --
	wardrobe = AddWardrobe(779, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2271)

	-- 782 --
	wardrobe = AddWardrobe(782, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(2277)

	-- 784 --
	wardrobe = AddWardrobe(784, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2280)

	-- 786 --
	wardrobe = AddWardrobe(786, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.WAIST)
	wardrobe:SetItemID(2283)

	-- 787 --
	wardrobe = AddWardrobe(787, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2284)

	-- 789 --
	wardrobe = AddWardrobe(789, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2292)

	-- 794 --
	wardrobe = AddWardrobe(794, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2310)

	-- 804 --
	wardrobe = AddWardrobe(804, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(28154)

	-- 836 --
	wardrobe = AddWardrobe(836, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.LEGS)
	wardrobe:SetItemID(10177)

	-- 837 --
	wardrobe = AddWardrobe(837, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(10179)

	-- 838 --
	wardrobe = AddWardrobe(838, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(18730)

	-- 854 --
	wardrobe = AddWardrobe(854, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HANDS)
	wardrobe:SetItemID(4121)

	-- 858 --
	wardrobe = AddWardrobe(858, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(9359)

	-- 861 --
	wardrobe = AddWardrobe(861, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(52875)

	-- 875 --
	wardrobe = AddWardrobe(875, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(4439)

	-- 885 --
	wardrobe = AddWardrobe(885, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(156961)

	-- 888 --
	wardrobe = AddWardrobe(888, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.RANGED)
	wardrobe:SetItemID(2549)

	-- 891 --
	wardrobe = AddWardrobe(891, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(31269)

	-- 893 --
	wardrobe = AddWardrobe(893, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(22206)

	-- 895 --
	wardrobe = AddWardrobe(895, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(2565)

	-- 896 --
	wardrobe = AddWardrobe(896, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2566)

	-- 897 --
	wardrobe = AddWardrobe(897, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2567)

	-- 899 --
	wardrobe = AddWardrobe(899, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(2569)

	-- 901 --
	wardrobe = AddWardrobe(901, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2572)

	-- 902 --
	wardrobe = AddWardrobe(902, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(2575)

	-- 903 --
	wardrobe = AddWardrobe(903, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(2576)

	-- 904 --
	wardrobe = AddWardrobe(904, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(2577)

	-- 905 --
	wardrobe = AddWardrobe(905, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2578)

	-- 906 --
	wardrobe = AddWardrobe(906, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(2579)

	-- 907 --
	wardrobe = AddWardrobe(907, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2582)

	-- 908 --
	wardrobe = AddWardrobe(908, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.FEET)
	wardrobe:SetItemID(2583)

	-- 909 --
	wardrobe = AddWardrobe(909, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(24454)

	-- 910 --
	wardrobe = AddWardrobe(910, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2585)

	-- 912 --
	wardrobe = AddWardrobe(912, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.SHIRT)
	wardrobe:SetItemID(2587)

	-- 920 --
	wardrobe = AddWardrobe(920, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(2620)

	-- 921 --
	wardrobe = AddWardrobe(921, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(2621)

	-- 922 --
	wardrobe = AddWardrobe(922, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(2622)

	-- 923 --
	wardrobe = AddWardrobe(923, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(2623)

	-- 924 --
	wardrobe = AddWardrobe(924, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(2624)

	-- 925 --
	wardrobe = AddWardrobe(925, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2632)

	-- 926 --
	wardrobe = AddWardrobe(926, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(4504)

	-- 927 --
	wardrobe = AddWardrobe(927, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(5444)

	-- 928 --
	wardrobe = AddWardrobe(928, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2664)

	-- 931 --
	wardrobe = AddWardrobe(931, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(7608)

	-- 932 --
	wardrobe = AddWardrobe(932, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(18425)

	-- 935 --
	wardrobe = AddWardrobe(935, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(25086)

	-- 937 --
	wardrobe = AddWardrobe(937, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(15805)

	-- 938 --
	wardrobe = AddWardrobe(938, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(5323)

	-- 939 --
	wardrobe = AddWardrobe(939, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(6341)

	-- 943 --
	wardrobe = AddWardrobe(943, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.HEAD)
	wardrobe:SetItemID(2721)

	-- 945 --
	wardrobe = AddWardrobe(945, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(156975)

	-- 946 --
	wardrobe = AddWardrobe(946, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(3490)

	-- 956 --
	wardrobe = AddWardrobe(956, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(6681)

	-- 957 --
	wardrobe = AddWardrobe(957, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.CHEST)
	wardrobe:SetItemID(2800)

	-- 959 --
	wardrobe = AddWardrobe(959, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2805)

	-- 961 --
	wardrobe = AddWardrobe(961, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(13183)

	-- 962 --
	wardrobe = AddWardrobe(962, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(25310)

	-- 964 --
	wardrobe = AddWardrobe(964, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2816)

	-- 967 --
	wardrobe = AddWardrobe(967, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2819)

	-- 968 --
	wardrobe = AddWardrobe(968, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2821)

	-- 975 --
	wardrobe = AddWardrobe(975, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(2848)

	-- 990 --
	wardrobe = AddWardrobe(990, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(2879)

	-- 991 --
	wardrobe = AddWardrobe(991, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.OFFHAND)
	wardrobe:SetItemID(9644)

	-- 995 --
	wardrobe = AddWardrobe(995, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(2902)

	-- 998 --
	wardrobe = AddWardrobe(998, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.BACK)
	wardrobe:SetItemID(53248)

	-- 1000 --
	wardrobe = AddWardrobe(1000, V.BFA, Q.UNCOMMON)
	wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.MAINHAND)
	wardrobe:SetItemID(25109)

]]--


	self.InitWardrobe = nil

end

function private.UpdateWardrobeList(wardrobes)
	local wardrobeIDs = {}
	local wardrobeItemIDs = {}
	local wardrobeNames = {}
	local wardrobecount = 0
	local wardrobequality = {}
	local wardrobeinvType = {}


	for index = 1, 1000 do
		if _G.C_TransmogCollection.GetAppearanceSources(index) then --if exists
			wardrobecount = wardrobecount +1

			local invType = _G.C_TransmogCollection.GetAppearanceSources(index)[1].invType
			local wardrobeID = _G.C_TransmogCollection.GetAppearanceSources(index)[1].visualID
			local wardrobeknown = _G.C_TransmogCollection.GetAppearanceSources(index)[1].isCollected
			local itemID = _G.C_TransmogCollection.GetAppearanceSources(index)[1].itemID

			if C_Item.IsItemDataCachedByID(itemID) == false then
				local wardrobename = _G.C_Item.RequestLoadItemDataByID(itemID)
				wardrobename = _G.C_TransmogCollection.GetAppearanceSources(index)[1].name
			end
-- Not working
			local wardrobe = wardrobes[index]

			if wardrobe then
				wardrobe:SetItemID(itemID)
				wardrobe:SetName(wardrobename)
				if wardrobeknown == true then
					wardrobe:AddState("KNOWN")
				end
			else
				if invType == 2 then
					invType = "HEAD"
				elseif invType == 3 then
			--		invType = ""
				elseif invType == 4 then
					invType = "SHOULDER"
				elseif invType == 5 then
					invType = "SHIRT"
				elseif invType == 6 then
					invType = "CHEST"
				elseif invType == 7 then
					invType = "WAIST"
				elseif invType == 8 then
					invType = "LEGS"
				elseif invType == 9 then
					invType = "FEET"
				elseif invType == 10 then
					invType = "WRIST"
				elseif invType == 11 then
					invType = "HANDS"
				elseif invType == 14 then
					invType = "MAINHAND"
				elseif invType == 15 then
			--		invType = ""
				elseif invType == 16 then
			--		invType = ""
				elseif invType == 17 then
					invType = "BACK"
				elseif invType == 18 then
					invType = "RANGED"
				elseif invType == 19 then
			--		invType = ""
				elseif invType == 21 then
					invType = "CHEST" -- rare chest?
				elseif invType == 24 then
					invType = "OFFHAND"
				end

				wardrobeIDs[#wardrobeIDs + 1] = wardrobeID
				wardrobeItemIDs[#wardrobeItemIDs + 1] = itemID
				wardrobequality[#wardrobequality + 1] = wardrobequality
				wardrobeinvType[#wardrobeinvType + 1] = invType
				wardrobeNames[wardrobeID] = wardrobename or ("%s_%d"):format(_G.UNKNOWN, wardrobeID)

			end
		end
	end

	table.sort(wardrobeIDs)

	--@debug@
	private.TextDump:Clear()
	for index = 1, #wardrobeIDs do
		local wardrobeID = wardrobeIDs[index]
		local itemID = wardrobeItemIDs[index]
		local wardrobeNames = wardrobeNames[index]
		local wardrobeinvType = wardrobeinvType[index]
		local wardrobequality = wardrobequality[index]

		private.TextDump:AddLine(("-- %d -- "):format(wardrobeID))
		private.TextDump:AddLine(("wardrobe = AddWardrobe(%d, V.BFA, Q.UNCOMMON)"):format(wardrobeID))
		private.TextDump:AddLine(("wardrobe:AddFilters(F.ALLIANCE, F.HORDE, F.%s)"):format(wardrobeinvType))
		private.TextDump:AddLine(("wardrobe:SetItemID(%d)\n"):format(itemID))
	end

	local lineCount = private.TextDump:Lines()
	if lineCount > 0 then
		private.TextDump:InsertLine(1, ("Untracked: %d\n"):format(lineCount / 2))
		private.TextDump:Display()
	end
	--@end-debug@
--	]]--
end
