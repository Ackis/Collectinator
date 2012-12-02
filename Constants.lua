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

local pairs = _G.pairs

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
private.ORDERED_COLLECTIONS = {
	"MOUNT", -- 1
	"CRITTER", -- 2
}

private.COLLECTION_TYPE_IDS = {}

for index = 1, #private.ORDERED_COLLECTIONS do
	private.COLLECTION_TYPE_IDS[private.ORDERED_COLLECTIONS[index]] = index
end

-------------------------------------------------------------------------------
-- Player races
-------------------------------------------------------------------------------
private.PLAYER_RACE_FILENAMES = {
	Human = true,
	Orc = true,
	Dwarf = true,
	NightElf = true,
	Scourge = true,
	Tauren = true,
	Gnome = true,
	Troll = true,
	Goblin = true,
	BloodElf = true,
	Draenei = true,
	Worgen = true,
	Pandaren = true,
}

-------------------------------------------------------------------------------
-- Profession data for profession made/axquired collectables.
-------------------------------------------------------------------------------
private.PROFESSION_SPELL_IDS = {
	ALCHEMY		= 2259,
	BLACKSMITHING	= 2018,
	COOKING		= 2550,
	ENCHANTING	= 7411,
	ENGINEERING	= 4036,
	FIRSTAID	= 3273,
	FISHING		= 131474,
	INSCRIPTION	= 45357,
	JEWELCRAFTING	= 25229,
	LEATHERWORKING	= 2108,
	MINING		= 2575,
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
	WORLD_EVENTS	= 0x00000040,	-- 7
	QUEST		= 0x00000080,	-- 8
	PVP		= 0x00000100,	-- 9
	WORLD_DROP	= 0x00000200,	-- 10
	MOB_DROP	= 0x00000400,	-- 11
	STORE		= 0x00000800,	-- 12
	RETIRED		= 0x00001000,	-- 13
	IBOE		= 0x00002000,	-- 14
	IBOP		= 0x00004000,	-- 15
	IBOA		= 0x00008000,	-- 16
	TCG		= 0x00010000,	-- 17
	COLLECTORS_EDITION		= 0x00020000,	-- 18
	PROMO		= 0x00040000,	-- 19
--	DPS		= 0x00080000,	-- 20
--	TANK		= 0x00100000,	-- 21
--	HEALER		= 0x00200000,	-- 22
	PROFESSION	= 0x00400000,	-- 23
	ACHIEVEMENT	= 0x00800000,	-- 24
	REPUTATION	= 0x01000000,	-- 25
}

-------------------------------------------------------------------------------
-- Reputation filter bitfield word 1.
-------------------------------------------------------------------------------
private.REP_FLAGS_WORD1 = {
	ARGENT_DAWN			= 0x00000001,	-- 1
	CENARION_CIRCLE			= 0x00000002,	-- 2
	THORIUM_BROTHERHOOD		= 0x00000004,	-- 3
	TIMBERMAW_HOLD			= 0x00000008,	-- 4
	ZANDALAR_TRIBE			= 0x00000010,	-- 5
	THE_ALDOR			= 0x00000020,	-- 6
	ASHTONGUE_DEATHSWORN		= 0x00000040,	-- 7
	CENARION_EXPEDITION		= 0x00000080,	-- 8
	HELLFIRE			= 0x00000100,	-- 9
	THE_CONSORTIUM			= 0x00000200,	-- 10
	KEEPERS_OF_TIME			= 0x00000400,	-- 11
	LOWER_CITY			= 0x00000800,	-- 12
	NAGRAND				= 0x00001000,	-- 13  -- Kurenai / Mag'har
	THE_SCALE_OF_THE_SANDS		= 0x00002000,	-- 14
	THE_SCRYERS			= 0x00004000,	-- 15
	SHATARI_SKYGUARD		= 0x00008000,	-- 16  -- Sha'tari Skyguard
	SHATTERED_SUN_OFFENSIVE		= 0x00010000,	-- 17
	SPOREGGAR			= 0x00020000,	-- 18
	THE_VIOLET_EYE			= 0x00040000,	-- 19
	ARGENT_CRUSADE			= 0x00080000,	-- 20
	FRENZYHEART_TRIBE		= 0x00100000,	-- 21
	KNIGHTS_OF_THE_EBON_BLADE	= 0x00200000,	-- 22
	KIRIN_TOR			= 0x00400000,	-- 23
	THE_SONS_OF_HODIR		= 0x00800000,	-- 24
	THE_KALUAK			= 0x01000000,	-- 25
	THE_ORACLES			= 0x02000000,	-- 26
	THE_WYRMREST_ACCORD		= 0x04000000,	-- 27
	WRATHCOMMON1			= 0x08000000,	-- 28  -- Silver Covenant / Sunreavers
	WRATHCOMMON2			= 0x10000000,	-- 29
	WRATHCOMMON3			= 0x20000000,	-- 30
	WRATHCOMMON4			= 0x40000000,	-- 31
	WRATHCOMMON5			= 0x80000000,	-- 32
}

-------------------------------------------------------------------------------
-- Reputation filter bitfield word 2.
-------------------------------------------------------------------------------
private.REP_FLAGS_WORD2 = {
	THE_ASHEN_VERDICT		= 0x00000001,	-- 1
	CATACOMMON1			= 0x00000002,	-- 2  -- Wildhammer Clan / Dragonmaw Clan
	CATACOMMON2			= 0x00000004,	-- 3  -- Baradin's Wardens / Hellscream's Reach
	GUARDIANS_OF_HYJAL		= 0x00000008,	-- 4
	RAMKAHEN			= 0x00000010,	-- 5
	THE_EARTHEN_RING		= 0x00000020,	-- 6
	THERAZANE			= 0x00000040,	-- 7
	--	UNUSED				= 0X00000080,	-- 8
	GOLDEN_LOTUS			= 0X00000100,	-- 9
	ORDER_OF_THE_CLOUD_SERPENT	= 0X00000200,	-- 10
	PANDACOMMON2			= 0X00000400,	-- 11 -- Forest Hozen / Pearlfin Jinu
	SHADO_PAN			= 0X00000800,	-- 12
	THE_ANGLERS			= 0X00001000,	-- 13
	THE_AUGUST_CELESTIALS		= 0X00002000,	-- 14
	THE_BREWMASTERS			= 0X00004000,	-- 15
	THE_KLAXXI			= 0X00008000,	-- 16
	THE_LOREWALKERS			= 0X00010000,	-- 17
	THE_TILLERS			= 0X00020000,	-- 18
	THE_BLACK_PRINCE		= 0X00040000,	-- 19
	SHANG_XIS_ACADEMY		= 0X00080000,	-- 20
	PANDACOMMON1			= 0X00100000,	-- 21 -- Huojin Pandaren / Tushui Pandaren
	GUILD				= 0X00200000,	-- 22.
	NETHERWING			= 0x00400000,	-- 23
}

-------------------------------------------------------------------------------
-- Item filter bitfield word 1.
-------------------------------------------------------------------------------
private.ITEM_FLAGS_WORD1 = {
	BATTLE_PET		= 0x00000001 -- 1
}

private.FLAG_WORDS = {
	private.COMMON_FLAGS_WORD1,
	private.REP_FLAGS_WORD1,
	private.REP_FLAGS_WORD2,
	private.ITEM_FLAGS_WORD1,
}

-- Member names within a collectable's flags table.
private.FLAG_MEMBERS = {
	"common1",
	--"class1",
	"reputation1",
	"reputation2",
	"item1",
}

private.FILTER_STRINGS = {}

for index = 1, #private.FLAG_WORDS do
	for flag_name in pairs(private.FLAG_WORDS[index]) do
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
	PET_CAPTURABLE = true,
}

-------------------------------------------------------------------------------
-- Acquire types.
-------------------------------------------------------------------------------
private.ACQUIRE_NAMES = {
	[1]	= L["Trainer"],
	[2]	= _G.BATTLE_PET_SOURCE_3, -- Vendor
	[3]	= L["Mob Drop"],
	[4]	= _G.BATTLE_PET_SOURCE_2, -- Quest
	[5]	= _G.GetCategoryInfo(155), -- World Events
	[6]	= _G.REPUTATION,
	[7]	= L["World Drop"],
	[8]	= _G.ACHIEVEMENTS,
	[9]	= _G.MISCELLANEOUS,
	[10]	= _G.BATTLE_PET_SOURCE_4, -- Profession
	[11]	= _G.BATTLE_PET_SOURCE_10, -- Store
	[12]	= _G.BATTLE_PET_SOURCE_9, -- TCG
	[13]	= L["Collectors Edition"],
	[14]	= _G.BATTLE_PET_SOURCE_8, -- Promotion
}

private.ACQUIRE_STRINGS = {
	[1]	= "TRAINER",
	[2]	= "VENDOR",
	[3]	= "MOB_DROP",
	[4]	= "QUEST",
	[5]	= "WORLD_EVENTS",
	[6]	= "REPUTATION",
	[7]	= "WORLD_DROP",
	[8]	= "ACHIEVEMENT",
	[9]	= "CUSTOM",
	[10]	= "PROFESSION",
	[11]	= "STORE",
	[12]	= "TCG",
	[13]	= "COLLECTORS_EDITION",
	[14]	= "PROMO",
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
-- Time of Day/Weather/Seasons
-------------------------------------------------------------------------------
private.TIME_OF_DAY_STRINGS = {
	[1]	= "EARLY_MORNING",
	[2]	= "DAY",
	[3]	= "NIGHT",
}

private.TIME_OF_DAY = {}

for index = 1, #private.TIME_OF_DAY_STRINGS do
	private.TIME_OF_DAY[private.TIME_OF_DAY_STRINGS[index]] = index
end

private.WEATHER_STRINGS = {
	[1]	= "RAIN",
	[2]	= "SNOW",
	[3]	= "SANDSTORM",
}

private.WEATHER = {}

for index = 1, #private.WEATHER_STRINGS do
	private.WEATHER[private.WEATHER_STRINGS[index]] = index
end

private.SEASON_STRINGS = {
	[1]	= "WINTER",
	[2]	= "SUMMER",
}

private.SEASON = {
}

for index = 1, #private.SEASON_STRINGS do
	private.SEASON[private.SEASON_STRINGS[index]] = index
end


-------------------------------------------------------------------------------
-- Factions.
-------------------------------------------------------------------------------
private.FACTION_IDS = {
	THORIUM_BROTHERHOOD = 59,
	HORDE = 67,
	ZANDALAR_TRIBE = 270,
	ALLIANCE = 469,
	ARGENT_DAWN = 529,
	TIMBERMAW_HOLD = 576,
	WINTERSABER_TRAINERS = 589,
	CENARION_CIRCLE = 609,
	THE_ALDOR = 932,
	THE_CONSORTIUM = 933,
	THE_SCRYERS = 934,
	THE_SHATAR = 935,
	THE_MAGHAR = 941,
	CENARION_EXPEDITION = 942,
	HONOR_HOLD = 946,
	THRALLMAR = 947,
	THE_VIOLET_EYE = 967,
	SPOREGGAR = 970,
	KURENAI = 978,
	KEEPERS_OF_TIME = 989,
	THE_SCALE_OF_THE_SANDS = 990,
	LOWER_CITY = 1011,
	ASHTONGUE_DEATHSWORN = 1012,
	NETHERWING = 1015,
	SHATARI_SKYGUARD = 1031,
	ALLIANCE_VANGUARD = 1037,
	VALIANCE_EXPEDITION = 1050,
	HORDE_EXPEDITION = 1052,
	THE_TAUNKA = 1064,
	THE_HAND_OF_VENGEANCE = 1067,
	EXPLORERS_LEAGUE = 1068,
	THE_KALUAK = 1073,
	SHATTERED_SUN_OFFENSIVE = 1077,
	WARSONG_OFFENSIVE = 1085,
	KIRIN_TOR = 1090,
	THE_WYRMREST_ACCORD = 1091,
	THE_SILVER_COVENANT = 1094,
	KNIGHTS_OF_THE_EBON_BLADE = 1098,
	FRENZYHEART_TRIBE = 1104,
	THE_ORACLES = 1105,
	ARGENT_CRUSADE = 1106,
	THE_SONS_OF_HODIR = 1119,
	THE_SUNREAVERS = 1124,
	THE_FROSTBORN = 1126,
	THE_EARTHEN_RING = 1135,
	TRANQUILLIEN_CONVERSION = 1136,
	THE_ASHEN_VERDICT = 1156,
	GUARDIANS_OF_HYJAL = 1158,
	GUILD = 1168,
	THERAZANE = 1171,
	DRAGONMAW_CLAN = 1172,
	RAMKAHEN = 1173,
	WILDHAMMER_CLAN = 1174,
	BARADINS_WARDENS = 1177,
	HELLSCREAMS_REACH = 1178,
	SHANG_XIS_ACADEMY = 1216,
	FOREST_HOZEN = 1228,
	PEARLFIN_JINYU = 1242,
	GOLDEN_LOTUS = 1269,
	SHADO_PAN = 1270,
	ORDER_OF_THE_CLOUD_SERPENT = 1271,
	THE_TILLERS = 1272,
	JOGU_THE_DRUNK = 1273,
	ELLA = 1275,
	OLD_HILLPAW = 1276,
	CHEE_CHEE = 1277,
	SHO = 1278,
	HAOHAN_MUDCLAW = 1279,
	TINA_MUDCLAW = 1280,
	GINA_MUDCLAW = 1281,
	FISH_FELLREED = 1282,
	FARMER_FUNG = 1283,
	THE_ANGLERS = 1302,
	THE_KLAXXI = 1337,
	THE_AUGUST_CELESTIALS = 1341,
	THE_LOREWALKERS = 1345,
	THE_BREWMASTERS = 1351,
	HUOJIN_PANDAREN = 1352,
	TUSHUI_PANDAREN = 1353,
	NAT_PAGLE = 1358,
	THE_BLACK_PRINCE = 1359,
}

private.FACTION_STRINGS = {}
private.LOCALIZED_FACTION_STRINGS = {}

for name, id in pairs(private.FACTION_IDS) do
	private.FACTION_STRINGS[id] = name
	private.LOCALIZED_FACTION_STRINGS[name] = _G.GetFactionInfoByID(id)
end

private.LOCALIZED_REPUTATION_LEVELS = {
	["Neutral"]	= _G.FACTION_STANDING_LABEL4,
	["Friendly"]	= _G.FACTION_STANDING_LABEL5,
	["Honored"]	= _G.FACTION_STANDING_LABEL6,
	["Revered"]	= _G.FACTION_STANDING_LABEL7,
	["Exalted"]	= _G.FACTION_STANDING_LABEL8,
}

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
	ALTERAC_VALLEY = _G.GetMapNameByID(401),
	ARATHI_BASIN = _G.GetMapNameByID(461),
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
	PLAGUELANDS_THE_SCARLET_ENCLAVE = _G.GetMapNameByID(502),
	DALARAN = _G.GetMapNameByID(504),
	CRYSTALSONG_FOREST = _G.GetMapNameByID(510),
	THE_NEXUS = _G.GetMapNameByID(520),
	THE_CULLING_OF_STRATHOLME = _G.GetMapNameByID(521),
	AHNKAHET_THE_OLD_KINGDOM = _G.GetMapNameByID(522),
	UTGARDE_KEEP = _G.GetMapNameByID(523),
	UTGARDE_PINNACLE = _G.GetMapNameByID(524),
	HALLS_OF_LIGHTNING = _G.GetMapNameByID(525),
	HALLS_OF_STONE = _G.GetMapNameByID(526),
	THE_EYE_OF_ETERNITY = _G.GetMapNameByID(527),
	THE_OCULUS = _G.GetMapNameByID(528),
	ULDUAR = _G.GetMapNameByID(529),
	GUNDRAK = _G.GetMapNameByID(530),
	THE_OBSIDIAN_SANCTUM = _G.GetMapNameByID(531),
	VAULT_OF_ARCHAVON = _G.GetMapNameByID(532),
	AZJOL_NERUB = _G.GetMapNameByID(533),
	DRAKTHARON_KEEP = _G.GetMapNameByID(534),
	NAXXRAMAS = _G.GetMapNameByID(535),
	THE_VIOLET_HOLD = _G.GetMapNameByID(536),
	GILNEAS = _G.GetMapNameByID(539),
	TRIAL_OF_THE_CRUSADER = _G.GetMapNameByID(543),
	THE_LOST_ISLES = _G.GetMapNameByID(544),
	THE_FORGE_OF_SOULS = _G.GetMapNameByID(601),
	PIT_OF_SARON = _G.GetMapNameByID(602),
	HALLS_OF_REFLECTION = _G.GetMapNameByID(603),
	ICECROWN_CITADEL = _G.GetMapNameByID(604),
	KEZAN = _G.GetMapNameByID(605),
	MOUNT_HYJAL = _G.GetMapNameByID(606),
	SOUTHERN_BARRENS = _G.GetMapNameByID(607),
	KELPTHAR_FOREST = _G.GetMapNameByID(610),
	GILNEAS_CITY = _G.GetMapNameByID(611),
	VASHJIR = _G.GetMapNameByID(613),
	DEEPHOLM = _G.GetMapNameByID(640),
	THE_CAPE_OF_STRANGLETHORN = _G.GetMapNameByID(673),
	RUINS_OF_GILNEAS = _G.GetMapNameByID(684),
	THE_TEMPLE_OF_ATALHAKKAR = _G.GetMapNameByID(687),
	GNOMEREGAN = _G.GetMapNameByID(691),
	ULDAMAN = _G.GetMapNameByID(692),
	MOLTEN_CORE = _G.GetMapNameByID(696),
	DIRE_MAUL = _G.GetMapNameByID(699),
	BLACKROCK_DEPTHS = _G.GetMapNameByID(704),
	TOL_BARAD = _G.GetMapNameByID(708),
	TOL_BARAD_PENINSULA = _G.GetMapNameByID(709),
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
	LOST_CITY_OF_THE_TOLVIR = _G.GetMapNameByID(747),
	WAILING_CAVERNS = _G.GetMapNameByID(749),
	BLACKWING_LAIR = _G.GetMapNameByID(755),
	THE_DEADMINES = _G.GetMapNameByID(756),
	RAZORFEN_DOWNS = _G.GetMapNameByID(760),
	SCARLET_MONASTERY = _G.GetMapNameByID(762),
	SHADOWFANG_KEEP = _G.GetMapNameByID(764),
	STRATHOLME = _G.GetMapNameByID(765),
	AHNQIRAJ = _G.GetMapNameByID(766),
	THE_STONECORE = _G.GetMapNameByID(768),
	THE_VORTEX_PINNACLE = _G.GetMapNameByID(769),
	TWILIGHT_HIGHLANDS = _G.GetMapNameByID(770),
	AHNQIRAJ_THE_FALLEN_KINGDOM = _G.GetMapNameByID(772),
	THRONE_OF_THE_FOUR_WINDS = _G.GetMapNameByID(773),
	HYJAL_SUMMIT = _G.GetMapNameByID(775),
	SERPENTSHRINE_CAVERN = _G.GetMapNameByID(780),
	ZULAMAN = _G.GetMapNameByID(781),
	TEMPEST_KEEP = _G.GetMapNameByID(782),
	SUNWELL_PLATEAU = _G.GetMapNameByID(789),
	ZULGURUB = _G.GetMapNameByID(793),
	MOLTEN_FRONT = _G.GetMapNameByID(795),
	BLACK_TEMPLE = _G.GetMapNameByID(796),
	MAGISTERS_TERRACE = _G.GetMapNameByID(798),
	KARAZHAN = _G.GetMapNameByID(799),
	FIRELANDS = _G.GetMapNameByID(800),
	VALLEY_OF_THE_FOUR_WINDS = _G.GetMapNameByID(807),
	TOWNLONG_STEPPES = _G.GetMapNameByID(810),
	VALE_OF_ETERNAL_BLOSSOMS = _G.GetMapNameByID(811),
	WELL_OF_ETERNITY = _G.GetMapNameByID(816),
	END_TIME = _G.GetMapNameByID(820),
	DARKMOON_ISLAND = _G.GetMapNameByID(823),
	DRAGON_SOUL = _G.GetMapNameByID(824),
	DUSTWALLOW_MARSH = _G.GetMapNameByID(851),
	KRASARANG_WILDS = _G.GetMapNameByID(857),
	DREAD_WASTES = _G.GetMapNameByID(858),
	THE_VEILED_STAIR = _G.GetMapNameByID(873),
	KUN_LAI_SUMMIT = _G.GetMapNameByID(879),
	THE_JADE_FOREST = _G.GetMapNameByID(880),
	AMMEN_VALE = _G.GetMapNameByID(894),
	MOGUSHAN_VAULTS = _G.GetMapNameByID(896),
	HEART_OF_FEAR = _G.GetMapNameByID(897),
	SCHOLOMANCE = _G.GetMapNameByID(898),
	CRYPT_OF_FORGOTTEN_KINGS = _G.GetMapNameByID(900),
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

for label, name in pairs(private.ZONE_NAMES) do
	private.ZONE_LABELS_FROM_NAME[name] = label
end

	-- Mappings for issues within the pet journal.
	private.ZONE_NAME_MAP = {
		["Valley of Four Winds"] = _G.GetMapNameByID(807),
		["Ahn'Qiraj"] = _G.GetMapNameByID(717),
		["ScholomanceOLD"] = _G.GetMapNameByID(898),
		["Sunken Temple"] = _G.GetMapNameByID(687),
		["Jade Forest"] = _G.GetMapNameByID(880),
	}

-------------------------------------------------------------------------------
-- Boss names.
-------------------------------------------------------------------------------
private.BOSS_NAMES = {
	SLABHIDE = _G.EJ_GetEncounterInfo(111),
	ALTAIRUS = _G.EJ_GetEncounterInfo(115),
	ALAKIR = _G.EJ_GetEncounterInfo(155),
	BLOODLORD_MANDOKIR = _G.EJ_GetEncounterInfo(176),
	HIGH_PRIESTESS_KILNARA = _G.EJ_GetEncounterInfo(181),
	HALAZZI = _G.EJ_GetEncounterInfo(189),
	ALYSRAZOR = _G.EJ_GetEncounterInfo(194),
	RAGNAROS = _G.EJ_GetEncounterInfo(198),
	ULTRAXION = _G.EJ_GetEncounterInfo(331),
	MADNESS_OF_DEATHWING = _G.EJ_GetEncounterInfo(333),
	LORD_AURIUS_RIVENDARE = _G.EJ_GetEncounterInfo(456),
	KAELTHAS_SUNSTRIDER = _G.EJ_GetEncounterInfo(533),
	ANZU = _G.EJ_GetEncounterInfo(542),
	ANUBARAK = _G.EJ_GetEncounterInfo(587),
	LEY_GUARDIAN_EREGOS = _G.EJ_GetEncounterInfo(625),
	SKADI_THE_RUTHLESS = _G.EJ_GetEncounterInfo(643),
	SHA_OF_ANGER = _G.EJ_GetEncounterInfo(691),
	ELEGON = _G.EJ_GetEncounterInfo(726),
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
	achievement	= "faeb98",
	custom		= "73b7ff",
	mobdrop		= "962626",
	profession	= "9c6b98",
	quest		= "dbdb2c",
	reputation	= "855a99",
	trainer		= "c98e26",
	vendor		= "aad372",
	world_events	= "80590e",

	-- Miscellaneous
	coords		= "d1ce6f",
	location	= "ffecc1",
	repname		= "6a9ad9",

}

private.BASIC_COLORS = {
	green	= "00ff00",
	grey	= "666666",
	white	= "ffffff",
	yellow	= "ffff00",
	normal	= "ffd100",
}
