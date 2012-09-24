--[[
************************************************************************
Constants.lua
Constants used within Collectinator
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
]]--

-------------------------------------------------------------------------------
-- Upvalued Lua API
-------------------------------------------------------------------------------
local _G = getfenv(0)

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...
private.addon_name = "Collectinator"

local LibStub = _G.LibStub
local L		= LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-------------------------------------------------------------------------------
-- General constants.
-------------------------------------------------------------------------------
private.PLAYER_NAME = _G.UnitName("player")
private.REALM_NAME = _G.GetRealmName()

-------------------------------------------------------------------------------
-- Collection data
-------------------------------------------------------------------------------

private.COLLECTION_TYPE_IDS = {
	MOUNT	= 1,
	CRITTER	= 2,
}

private.ORDERED_COLLECTIONS = {
	"MOUNT", -- 1
	"CRITTER", -- 2
}

-------------------------------------------------------------------------------
-- Profession data for crafted collectables.
-------------------------------------------------------------------------------

private.PROFESSION_SPELL_IDS = {
	ALCHEMY		= 2259,
	BLACKSMITHING	= 2018,
	COOKING		= 2550,
	ENCHANTING	= 7411,
	ENGINEERING	= 4036,
	FIRSTAID	= 3273,
	INSCRIPTION	= 45357,
	JEWELCRAFTING	= 25229,
	LEATHERWORKING	= 2108,
	RUNEFORGING	= 53428,
	SMELTING	= 2656,
	TAILORING	= 3908,
	ARCHAEOLOGY	= 78670,
}

private.LOCALIZED_PROFESSION_NAMES = {}

for name, spell_id in pairs(private.PROFESSION_SPELL_IDS) do
	private.LOCALIZED_PROFESSION_NAMES[name] = _G.GetSpellInfo(spell_id)
end

-- Special case for Runeforging is needed because the French translation is non-conforming.
if _G.GetLocale() == "frFR" then
	private.LOCALIZED_PROFESSION_NAMES.RUNEFORGING = "Runeforger"
end

-------------------------------------------------------------------------------
-- Item qualities.
-------------------------------------------------------------------------------
private.ITEM_QUALITY_NAMES = {
	[1] = "COMMON",
	[2] = "UNCOMMON",
	[3] = "RARE",
	[4] = "EPIC",
	[5] = "LEGENDARY",
	[6] = "ARTIFACT",
}

private.ITEM_QUALITIES = {}

for index = 1, #private.ITEM_QUALITY_NAMES do
	private.ITEM_QUALITIES[private.ITEM_QUALITY_NAMES[index]] = index
end

-------------------------------------------------------------------------------
-- Game/expansion versions.
-------------------------------------------------------------------------------
private.GAME_VERSION_NAMES = {
	[1] = "ORIG",
	[2] = "TBC",
	[3] = "WOTLK",
	[4] = "CATA",
	[5] = "MOP",
}

private.GAME_VERSIONS = {}

for index = 1, #private.GAME_VERSION_NAMES do
	private.GAME_VERSIONS[private.GAME_VERSION_NAMES[index]] = index
end

private.EXPANSION_FILTERS = {}

for index = 1, #private.GAME_VERSION_NAMES do
	private.EXPANSION_FILTERS[index] = ("expansion%d"):format(index - 1)
end

-------------------------------------------------------------------------------
-- Common filter bitfield word 1.
-------------------------------------------------------------------------------
private.COMMON_FLAGS_WORD1 = {
	ALLIANCE	= 0x00000001,	-- 1
	HORDE		= 0x00000002,	-- 2
	TRAINER		= 0x00000004,	-- 3
	VENDOR		= 0x00000008,	-- 4
	INSTANCE	= 0x00000010,	-- 5
	RAID		= 0x00000020,	-- 6
	SEASONAL	= 0x00000040,	-- 7
	QUEST		= 0x00000080,	-- 8
	PVP		= 0x00000100,	-- 9
	WORLD_DROP	= 0x00000200,	-- 10
	MOB_DROP	= 0x00000400,	-- 11
--	DISC		= 0x00000800,	-- 12
	RETIRED		= 0x00001000,	-- 13
	IBOE		= 0x00002000,	-- 14
	IBOP		= 0x00004000,	-- 15
	IBOA		= 0x00008000,	-- 16
--	RBOE		= 0x00010000,	-- 17
--	RBOP		= 0x00020000,	-- 18
--	RBOA		= 0x00040000,	-- 19
--	DPS		= 0x00080000,	-- 20
--	TANK		= 0x00100000,	-- 21
--	HEALER		= 0x00200000,	-- 22
	CRAFTED		= 0x00400000,	-- 23
	ACHIEVEMENT	= 0x00800000,	-- 24
	REPUTATION	= 0x01000000,	-- 25
}

-------------------------------------------------------------------------------
-- Reputation filter bitfield word 1.
-------------------------------------------------------------------------------
private.REP_FLAGS_WORD1 = {
	ARGENTDAWN		= 0x00000001,	-- 1
	CENARION_CIRCLE		= 0x00000002,	-- 2
	THORIUM_BROTHERHOOD	= 0x00000004,	-- 3
	TIMBERMAW_HOLD		= 0x00000008,	-- 4
	ZANDALAR		= 0x00000010,	-- 5
	ALDOR			= 0x00000020,	-- 6
	ASHTONGUE		= 0x00000040,	-- 7
	CENARION_EXPEDITION	= 0x00000080,	-- 8
	HELLFIRE		= 0x00000100,	-- 9
	CONSORTIUM		= 0x00000200,	-- 10
	KOT			= 0x00000400,	-- 11
	LOWERCITY		= 0x00000800,	-- 12
	NAGRAND			= 0x00001000,	-- 13
	SCALE_SANDS		= 0x00002000,	-- 14
	SCRYER			= 0x00004000,	-- 15
	SHATAR			= 0x00008000,	-- 16
	SHATTEREDSUN		= 0x00010000,	-- 17
	SPOREGGAR		= 0x00020000,	-- 18
	VIOLETEYE		= 0x00040000,	-- 19
	ARGENTCRUSADE		= 0x00080000,	-- 20
	FRENZYHEART		= 0x00100000,	-- 21
	EBONBLADE		= 0x00200000,	-- 22
	KIRINTOR		= 0x00400000,	-- 23
	HODIR			= 0x00800000,	-- 24
	KALUAK			= 0x01000000,	-- 25
	ORACLES			= 0x02000000,	-- 26
	WYRMREST		= 0x04000000,	-- 27
	WRATHCOMMON1		= 0x08000000,	-- 28
	WRATHCOMMON2		= 0x10000000,	-- 29
	WRATHCOMMON3		= 0x20000000,	-- 30
	WRATHCOMMON4		= 0x40000000,	-- 31
	WRATHCOMMON5		= 0x80000000,	-- 32
}

-------------------------------------------------------------------------------
-- Reputation filter bitfield word 2.
-------------------------------------------------------------------------------
private.REP_FLAGS_WORD2 = {
	ASHEN_VERDICT		= 0x00000001,	-- 1
	CATACOMMON1		= 0x00000002,	-- 2
	CATACOMMON2		= 0x00000004,	-- 3
	GUARDIANS		= 0x00000008,	-- 4
	RAMKAHEN		= 0x00000010,	-- 5
	EARTHEN_RING		= 0x00000020,	-- 6
	THERAZANE		= 0x00000040,	-- 7
	FORESTHOZEN		= 0X00000080,	-- 8
	GOLDENLOTUS		= 0X00000100,	-- 9
	HUOJINPANDAREN		= 0X00000200,	-- 10
	CLOUDSERPENT		= 0X00000400,	-- 11
	PEARLFINJINYU		= 0X00000800,	-- 12
	SHADOPAN		= 0X00001000,	-- 13
	ANGLERS			= 0X00002000,	-- 14
	AUGUSTCELESTIALS	= 0X00004000,	-- 15
	BREWMASTERS		= 0X00008000,	-- 16
	KLAXXI			= 0X00010000,	-- 17
	LOREWALKERS		= 0X00020000,	-- 18
	TILLERS			= 0X00040000,	-- 19
	TUSHUIPANDAREN		= 0X00080000,	-- 20
	BLACKPRINCE		= 0X00100000,	-- 21
	SHANGXIACADEMY		= 0x00200000,	-- 22
}

-------------------------------------------------------------------------------
-- Item filter bitfield word 1.
-------------------------------------------------------------------------------
private.ITEM_FLAGS_WORD1 = {
	--	UNUSED	= 0x00000001 -- 1
}

private.FLAG_WORDS = {
	private.COMMON_FLAGS_WORD1,
	private.REP_FLAGS_WORD1,
	private.REP_FLAGS_WORD2,
}

-- Member names within a collectable's flags table.
private.FLAG_MEMBERS = {
	"common1",
	"class1",
	"reputation1",
	"reputation2",
	"item1",
}

private.FILTER_STRINGS = {}

for index = 1, #private.FLAG_WORDS do
	for flag_name in _G.pairs(private.FLAG_WORDS[index]) do
		private.FILTER_STRINGS[#private.FILTER_STRINGS + 1] = flag_name
	end
end

private.FILTER_IDS = {}

for index = 1, #private.FILTER_STRINGS do
	private.FILTER_IDS[private.FILTER_STRINGS[index]] = index
end

-------------------------------------------------------------------------------
-- Specific collection filter types
-------------------------------------------------------------------------------

private.COLLECTION_FILTER_TYPES = {

	-------------------------------------------------------------------------------
	-- Pets
	-------------------------------------------------------------------------------
	PETS_BATTLE_PET = true,
}

-------------------------------------------------------------------------------
-- Acquire types.
-------------------------------------------------------------------------------
private.ACQUIRE_NAMES = {
	[1]	= L["Trainer"],
	[2]	= L["Vendor"],
	[3]	= L["Mob Drop"],
	[4]	= L["Quest"],
	[5]	= _G.GetCategoryInfo(155),
	[6]	= _G.REPUTATION,
	[7]	= L["World Drop"],
	[8]	= _G.ACHIEVEMENTS,
	[9]	= _G.MISCELLANEOUS,
	[10]	= L["Crafted"],
}

private.ACQUIRE_STRINGS = {
	[1]	= "TRAINER",
	[2]	= "VENDOR",
	[3]	= "MOB_DROP",
	[4]	= "QUEST",
	[5]	= "SEASONAL",
	[6]	= "REPUTATION",
	[7]	= "WORLD_DROP",
	[8]	= "ACHIEVEMENT",
	[9]	= "CUSTOM",
	[10]	= "CRAFTED",
}

private.ACQUIRE_TYPES = {}

for index = 1, #private.ACQUIRE_STRINGS do
	private.ACQUIRE_TYPES[private.ACQUIRE_STRINGS[index]] = index
end

-------------------------------------------------------------------------------
-- Reputation levels.
-------------------------------------------------------------------------------
private.REP_LEVEL_STRINGS = {
	[1]	= "FRIENDLY",
	[2]	= "HONORED",
	[3]	= "REVERED",
	[4]	= "EXALTED",
}

private.REP_LEVELS = {}

for index = 1, #private.REP_LEVEL_STRINGS do
	private.REP_LEVELS[private.REP_LEVEL_STRINGS[index]] = index
end

-------------------------------------------------------------------------------
-- Factions.
-------------------------------------------------------------------------------
private.FACTION_STRINGS = {
	[59]	= "THORIUM_BROTHERHOOD",
	[270]	= "ZANDALAR",
	[529]	= "ARGENTDAWN",
	[576]	= "TIMBERMAW_HOLD",
	[589]	= "WINTERSPRING",
	[609]	= "CENARION_CIRCLE",
	[932]	= "ALDOR",
	[933]	= "CONSORTIUM",
	[934]	= "SCRYER",
	[935]	= "SHATAR",
	[941]	= "MAGHAR",
	[942]	= "CENARION_EXPEDITION",
	[946]	= "HONOR_HOLD",
	[947]	= "THRALLMAR",
	[967]	= "VIOLETEYE",
	[970]	= "SPOREGGAR",
	[978]	= "KURENAI",
	[989]	= "KEEPERS_OF_TIME",
	[990]	= "SCALE_OF_SANDS",
	[1011]	= "LOWERCITY",
	[1012]	= "ASHTONGUE",
	[1037]	= "ALLIANCE_VANGUARD",
	[1052]	= "HORDE_EXPEDITION",
	[1073]	= "KALUAK",
	[1077]	= "SHATTEREDSUN",
	[1090]	= "KIRINTOR",
	[1091]	= "WYRMREST",
	[1098]	= "EBONBLADE",
	[1104]	= "FRENZYHEART",
	[1105]	= "ORACLES",
	[1106]	= "ARGENTCRUSADE",
	[1119]	= "HODIR",
	[1156]	= "ASHEN_VERDICT",
	[1135]	= "EARTHEN_RING",
	[1158]	= "GUARDIANS",
	[1171]	= "THERAZANE",
	[1172]	= "DRAGONMAW",
	[1173]	= "RAMKAHEN",
	[1174]	= "WILDHAMMER",
	[1177]	= "WARDENS",
	[1178]	= "HELLSCREAM",
}

private.FACTION_IDS = {}

for id, name in _G.pairs(private.FACTION_STRINGS) do
	private.FACTION_IDS[name] = id
end

-------------------------------------------------------------------------------
-- Zones.
-------------------------------------------------------------------------------
private.ZONE_NAMES = {
	DUROTAR = _G.GetMapNameByID(4),
	MULGORE = _G.GetMapNameByID(9),
	NORTHERN_BARRENS = _G.GetMapNameByID(11),
	ARATHI_HIGHLANDS = _G.GetMapNameByID(16),
	BADLANDS = _G.GetMapNameByID(17),
	BLASTED_LANDS = _G.GetMapNameByID(19),
	TIRISFAL_GLADES = _G.GetMapNameByID(20),
	SILVERPINE_FOREST = _G.GetMapNameByID(21),
	WESTERN_PLAGUELANDS = _G.GetMapNameByID(22),
	EASTERN_PLAGUELANDS = _G.GetMapNameByID(23),
	HILLSBRAD_FOOTHILLS = _G.GetMapNameByID(24),
	THE_HINTERLANDS = _G.GetMapNameByID(26),
	DUN_MOROGH = _G.GetMapNameByID(27),
	SEARING_GORGE = _G.GetMapNameByID(28),
	BURNING_STEPPES = _G.GetMapNameByID(29),
	ELWYNN_FOREST = _G.GetMapNameByID(30),
	DEADWIND_PASS = _G.GetMapNameByID(32),
	DUSKWOOD = _G.GetMapNameByID(34),
	LOCH_MODAN = _G.GetMapNameByID(35),
	REDRIDGE_MOUNTAINS = _G.GetMapNameByID(36),
	NORTHERN_STRANGLETHORN = _G.GetMapNameByID(37),
	SWAMP_OF_SORROWS = _G.GetMapNameByID(38),
	WESTFALL = _G.GetMapNameByID(39),
	WETLANDS = _G.GetMapNameByID(40),
	TELDRASSIL = _G.GetMapNameByID(41),
	DARKSHORE = _G.GetMapNameByID(42),
	ASHENVALE = _G.GetMapNameByID(43),
	THOUSAND_NEEDLES = _G.GetMapNameByID(61),
	STONETALON_MOUNTAINS = _G.GetMapNameByID(81),
	DESOLACE = _G.GetMapNameByID(101),
	FERALAS = _G.GetMapNameByID(121),
	TANARIS = _G.GetMapNameByID(161),
	AZSHARA = _G.GetMapNameByID(181),
	FELWOOD = _G.GetMapNameByID(182),
	UNGORO_CRATER = _G.GetMapNameByID(201),
	MOONGLADE = _G.GetMapNameByID(241),
	SILITHUS = _G.GetMapNameByID(261),
	WINTERSPRING = _G.GetMapNameByID(281),
	STORMWIND_CITY = _G.GetMapNameByID(301),
	ORGRIMMAR = _G.GetMapNameByID(321),
	IRONFORGE = _G.GetMapNameByID(341),
	THUNDER_BLUFF = _G.GetMapNameByID(362),
	DARNASSUS = _G.GetMapNameByID(381),
	UNDERCITY = _G.GetMapNameByID(382),
	EVERSONG_WOODS = _G.GetMapNameByID(462),
	GHOSTLANDS = _G.GetMapNameByID(463),
	AZUREMYST_ISLE = _G.GetMapNameByID(464),
	HELLFIRE_PENINSULA = _G.GetMapNameByID(465),
	ZANGARMARSH = _G.GetMapNameByID(467),
	THE_EXODAR = _G.GetMapNameByID(471),
	SHADOWMOON_VALLEY = _G.GetMapNameByID(473),
	BLADES_EDGE_MOUNTAINS = _G.GetMapNameByID(475),
	BLOODMYST_ISLE = _G.GetMapNameByID(476),
	NAGRAND = _G.GetMapNameByID(477),
	TEROKKAR_FOREST = _G.GetMapNameByID(478),
	NETHERSTORM = _G.GetMapNameByID(479),
	SILVERMOON_CITY = _G.GetMapNameByID(480),
	SHATTRATH_CITY = _G.GetMapNameByID(481),
	BOREAN_TUNDRA = _G.GetMapNameByID(486),
	DRAGONBLIGHT = _G.GetMapNameByID(488),
	GRIZZLY_HILLS = _G.GetMapNameByID(490),
	HOWLING_FJORD = _G.GetMapNameByID(491),
	ICECROWN = _G.GetMapNameByID(492),
	SHOLAZAR_BASIN = _G.GetMapNameByID(493),
	THE_STORM_PEAKS = _G.GetMapNameByID(495),
	ZULDRAK = _G.GetMapNameByID(496),
	ISLE_OF_QUELDANAS = _G.GetMapNameByID(499),
	WINTERGRASP = _G.GetMapNameByID(501),
	DALARAN = _G.GetMapNameByID(504),
	THE_NEXUS = _G.GetMapNameByID(520),
	AHNKAHET_THE_OLD_KINGDOM = _G.GetMapNameByID(522),
	UTGARDE_KEEP = _G.GetMapNameByID(523),
	UTGARDE_PINNACLE = _G.GetMapNameByID(524),
	HALLS_OF_LIGHTNING = _G.GetMapNameByID(525),
	HALLS_OF_STONE = _G.GetMapNameByID(526),
	THE_OCULUS = _G.GetMapNameByID(528),
	ULDUAR = _G.GetMapNameByID(529),
	AZJOL_NERUB = _G.GetMapNameByID(533),
	DRAKTHARON_KEEP = _G.GetMapNameByID(534),
	THE_VIOLET_HOLD = _G.GetMapNameByID(536),
	GILNEAS = _G.GetMapNameByID(539),
	TRIAL_OF_THE_CRUSADER = _G.GetMapNameByID(543),
	ICECROWN_CITADEL = _G.GetMapNameByID(604),
	MOUNT_HYJAL = _G.GetMapNameByID(606),
	SOUTHERN_BARRENS = _G.GetMapNameByID(607),
	VASHJIR = _G.GetMapNameByID(613),
	DEEPHOLM = _G.GetMapNameByID(640),
	THE_CAPE_OF_STRANGLETHORN = _G.GetMapNameByID(673),
	THE_TEMPLE_OF_ATALHAKKAR = _G.GetMapNameByID(687),
	GNOMEREGAN = _G.GetMapNameByID(691),
	ULDAMAN = _G.GetMapNameByID(692),
	MOLTEN_CORE = _G.GetMapNameByID(696),
	DIRE_MAUL = _G.GetMapNameByID(699),
	BLACKROCK_DEPTHS = _G.GetMapNameByID(704),
	THE_SHATTERED_HALLS = _G.GetMapNameByID(710),
	RUINS_OF_AHNQIRAJ = _G.GetMapNameByID(717),
	ONYXIAS_LAIR = _G.GetMapNameByID(718),
	ULDUM = _G.GetMapNameByID(720),
	BLACKROCK_SPIRE = _G.GetMapNameByID(721),
	AUCHENAI_CRYPTS = _G.GetMapNameByID(722),
	SETHEKK_HALLS = _G.GetMapNameByID(723),
	SHADOW_LABYRINTH = _G.GetMapNameByID(724),
	THE_STEAMVAULT = _G.GetMapNameByID(727),
	THE_SLAVE_PENS = _G.GetMapNameByID(728),
	THE_BOTANICA = _G.GetMapNameByID(729),
	THE_MECHANAR = _G.GetMapNameByID(730),
	THE_ARCATRAZ = _G.GetMapNameByID(731),
	MANA_TOMBS = _G.GetMapNameByID(732),
	THE_BLACK_MORASS = _G.GetMapNameByID(733),
	OLD_HILLSBRAD_FOOTHILLS = _G.GetMapNameByID(734),
	WAILING_CAVERNS = _G.GetMapNameByID(749),
	BLACKWING_LAIR = _G.GetMapNameByID(755),
	THE_DEADMINES = _G.GetMapNameByID(756),
	RAZORFEN_DOWNS = _G.GetMapNameByID(760),
	STRATHOLME = _G.GetMapNameByID(765),
	TWILIGHT_HIGHLANDS = _G.GetMapNameByID(770),
	AHNQIRAJ_THE_FALLEN_KINGDOM = _G.GetMapNameByID(772),
	HYJAL_SUMMIT = _G.GetMapNameByID(775),
	SERPENTSHRINE_CAVERN = _G.GetMapNameByID(780),
	TEMPEST_KEEP = _G.GetMapNameByID(782),
	SUNWELL_PLATEAU = _G.GetMapNameByID(789),
	BLACK_TEMPLE = _G.GetMapNameByID(796),
	MAGISTERS_TERRACE = _G.GetMapNameByID(798),
	KARAZHAN = _G.GetMapNameByID(799),
	FIRELANDS = _G.GetMapNameByID(800),
	VALLEY_OF_THE_FOUR_WINDS = _G.GetMapNameByID(807),
	TOWNLONG_STEPPES = _G.GetMapNameByID(810),
	VALE_OF_ETERNAL_BLOSSOMS = _G.GetMapNameByID(811),
	DRAGON_SOUL = _G.GetMapNameByID(824),
	DUSTWALLOW_MARSH = _G.GetMapNameByID(851),
	KRASARANG_WILDS = _G.GetMapNameByID(857),
	DREAD_WASTES = _G.GetMapNameByID(858),
	THE_VEILED_STAIR = _G.GetMapNameByID(873),
	KUN_LAI_SUMMIT = _G.GetMapNameByID(879),
	THE_JADE_FOREST = _G.GetMapNameByID(880),
	HEART_OF_FEAR = _G.GetMapNameByID(897),
	SCHOLOMANCE = _G.GetMapNameByID(898),
	SHRINE_OF_TWO_MOONS = _G.GetMapNameByID(903),
	SHRINE_OF_SEVEN_STARS = _G.GetMapNameByID(905),
}

do
	local continent_names = { _G.GetMapContinents() }

	private.ZONE_NAMES["KALIMDOR"] = continent_names[1]
	private.ZONE_NAMES["EASTERN_KINGDOMS"] = continent_names[2]
	private.ZONE_NAMES["OUTLAND"] = continent_names[3]
	private.ZONE_NAMES["NORTHREND"] = continent_names[4]
	private.ZONE_NAMES["THE_MAELSTROM"] = continent_names[5]
	private.ZONE_NAMES["PANDARIA"] = continent_names[6]
end

private.ZONE_LABELS_FROM_NAME = {}

for label, name in _G.pairs(private.ZONE_NAMES) do
	private.ZONE_LABELS_FROM_NAME[name] = label
end

-------------------------------------------------------------------------------
-- Boss names.
-------------------------------------------------------------------------------
private.BOSS_NAMES = {
	--LORD_ROCCOR = _G.EJ_GetEncounterInfo(370),
}

-------------------------------------------------------------------------------
-- Colors.
-------------------------------------------------------------------------------
local function RGBtoHEX(r, g, b)
	return ("%02x%02x%02x"):format(r * 255, g * 255, b * 255)
end

local function GetColorsFromTable(dict)
	return dict.r, dict.g, dict.b
end

private.REPUTATION_COLORS = {
	["exalted"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[8])),
	["revered"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[7])),
	["honored"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[6])),
	["friendly"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[5])),
	["neutral"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[4])),
	["unfriendly"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[3])),
	["hostile"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[2])),
	["hated"]	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[1])),
}

-- Colors used in tooltips and the collectable list.
private.CATEGORY_COLORS = {
	-- Acquire type colors
	["achievement"]	= "faeb98",
	["custom"]	= "73b7ff",
	["mobdrop"]	= "962626",
	["quest"]	= "dbdb2c",
	["reputation"]	= "855a99",
	["seasonal"]	= "80590e",
	["vendor"]	= "aad372",
	["crafted"]	= "c98e26",

	-- Miscellaneous
	["coords"]	= "d1ce6f",
	["location"]	= "ffecc1",
	["repname"]	= "6a9ad9",

}

private.BASIC_COLORS = {
	["grey"]	= "666666",
	["white"]	= "ffffff",
	["yellow"]	= "ffff00",
	["normal"]	= "ffd100",
}
