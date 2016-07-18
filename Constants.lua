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

private.COLLECTABLE_TEXTURES = {
    CRITTER = [[Interface\Icons\PetJournalPortrait]],
    MOUNT = [[Interface\Icons\MountJournalPortrait]],
    TOY  = [[Interface\ICONS\TRADE_ARCHAEOLOGY_CHESTOFTINYGLASSANIMALS]],
    HEIRLOOM = [[Interface\ICONS\INV_MISC_ENGGIZMOS_19]],
    WARDROBE = [[Interface\ICONS\inv_chest_cloth_17]],
}

-------------------------------------------------------------------------------
-- Helper functions.
-------------------------------------------------------------------------------
-- Returns new dictionary keyed by name, valued as ID as a reversal of the source array.
local function GenerateLookup_ID(source_array)
	local lookup_table = {}

	for index = 1, #source_array do
		lookup_table[source_array[index]] = index
	end
	return lookup_table
end


-------------------------------------------------------------------------------
-- Collection data
-------------------------------------------------------------------------------
private.ORDERED_COLLECTIONS = {
	"MOUNT", -- 1
	"CRITTER", -- 2
	"TOY", -- 3
	"HEIRLOOM", -- 4
	"WARDROBE", -- 5
}

private.COLLECTION_TYPE_IDS = GenerateLookup_ID(private.ORDERED_COLLECTIONS)

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
	HERBALISM	= 13617, -- Using the enchanting spell for Herbalism to gloves
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
	"COMMON",
	"UNCOMMON",
	"RARE",
	"EPIC",
	"LEGENDARY",
	"ARTIFACT",
}

private.ITEM_QUALITIES = GenerateLookup_ID(private.ITEM_QUALITY_NAMES)

-------------------------------------------------------------------------------
-- Game/expansion versions.
-------------------------------------------------------------------------------
private.GAME_VERSION_NAMES = {
	"ORIG",
	"TBC",
	"WOTLK",
	"CATA",
	"MOP",
	"WOD",
	"LEGION",
}

private.GAME_VERSIONS = GenerateLookup_ID(private.GAME_VERSION_NAMES)

private.EXPANSION_FILTERS = {}

for index = 1, #private.GAME_VERSION_NAMES do
	private.EXPANSION_FILTERS[index] = ("expansion%d"):format(index - 1)
end

private.EXPANSION_LOGOS = {
	[_G.LE_EXPANSION_CLASSIC] = { texture = [[Interface\Glues\Common\Glues-WoW-ClassicLogo]] },
	[_G.LE_EXPANSION_BURNING_CRUSADE] = { texture = [[Interface\Glues\Common\Glues-WoW-BCLogo]] },
	[_G.LE_EXPANSION_WRATH_OF_THE_LICH_KING] = { texture = [[Interface\Glues\Common\Glues-WoW-WotLKLogo]] },
	[_G.LE_EXPANSION_CATACLYSM] = { texture = [[Interface\Glues\Common\Glues-WoW-CCLogo]] },
	[_G.LE_EXPANSION_MISTS_OF_PANDARIA] = { texture = [[Interface\Glues\Common\Glues-WoW-MPLogo]] },
	[_G.LE_EXPANSION_WARLORDS_OF_DRAENOR] = { texture = [[Interface\Glues\Common\GLUES-WOW-WODLOGO]] },
	[_G.LE_EXPANSION_LEGION] = { atlas = "Glues-WoW-LegionLogo" },
}

-------------------------------------------------------------------------------
-- Common filter bitfield word 1.
-------------------------------------------------------------------------------
private.COMMON_FLAGS_WORD1 = {
	ALLIANCE		= 0x00000001,	-- 1
	HORDE			= 0x00000002,	-- 2
	TRAINER			= 0x00000004,	-- 3
	VENDOR			= 0x00000008,	-- 4
	INSTANCE		= 0x00000010,	-- 5
	RAID			= 0x00000020,	-- 6
	WORLD_EVENTS		= 0x00000040,	-- 7
	QUEST			= 0x00000080,	-- 8
	PVP			= 0x00000100,	-- 9
	WORLD_DROP		= 0x00000200,	-- 10
	MOB_DROP		= 0x00000400,	-- 11
	STORE			= 0x00000800,	-- 12
	RETIRED			= 0x00001000,	-- 13
	IBOE			= 0x00002000,	-- 14
	IBOP			= 0x00004000,	-- 15
	IBOA			= 0x00008000,	-- 16
	TCG			= 0x00010000,	-- 17
	COLLECTORS_EDITION	= 0x00020000,	-- 18
	PROMO			= 0x00040000,	-- 19
	MISC			= 0x00080000,	-- 20
	GARRISON_MISSION	= 0x00100000,	-- 21
	__UNUSED_22__		= 0x00200000,	-- 22
	PROFESSION		= 0x00400000,	-- 23
	ACHIEVEMENT		= 0x00800000,	-- 24
	REPUTATION		= 0x01000000,	-- 25
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
	WRATHCOMMON1			= 0x08000000,	-- 28 -- Vanguard / Expedition
	WRATHCOMMON2			= 0x10000000,	-- 29 -- Silver Covenant / Sunreavers
	WRATHCOMMON3			= 0x20000000,	-- 30 -- Valiance / Warsong
	WRATHCOMMON4			= 0x40000000,	-- 31 -- Frostbourne / Taunka
	WRATHCOMMON5			= 0x80000000,	-- 32 -- Explorer's League / Hand of Vengeance
}

-------------------------------------------------------------------------------
-- Reputation filter bitfield word 2.
-------------------------------------------------------------------------------
private.REP_FLAGS_WORD2 = {
	THE_ASHEN_VERDICT			= 0x00000001,	-- 1
	CATACOMMON1				= 0x00000002,	-- 2  -- Wildhammer Clan / Dragonmaw Clan
	CATACOMMON2				= 0x00000004,	-- 3  -- Baradin's Wardens / Hellscream's Reach
	GUARDIANS_OF_HYJAL			= 0x00000008,	-- 4
	RAMKAHEN				= 0x00000010,	-- 5
	THE_EARTHEN_RING			= 0x00000020,	-- 6
	THERAZANE				= 0x00000040,	-- 7
	GOLDEN_LOTUS				= 0x00000080,	-- 8
	ORDER_OF_THE_CLOUD_SERPENT		= 0x00000100,	-- 9
	PANDACOMMON2				= 0x00000200,	-- 10 -- Forest Hozen / Pearlfin Jinu
	SHADO_PAN				= 0x00000400,	-- 11
	THE_ANGLERS				= 0x00000800,	-- 12
	THE_AUGUST_CELESTIALS			= 0x00001000,	-- 13
	THE_BREWMASTERS				= 0x00002000,	-- 14
	THE_KLAXXI				= 0x00004000,	-- 15
	THE_LOREWALKERS				= 0x00008000,	-- 16
	THE_TILLERS				= 0x00010000,	-- 17
	THE_BLACK_PRINCE			= 0x00020000,	-- 18
	SHANG_XIS_ACADEMY			= 0x00040000,	-- 19
	PANDACOMMON1				= 0x00080000,	-- 20 -- Huojin Pandaren / Tushui Pandaren
	GUILD					= 0x00100000,	-- 21
	NETHERWING				= 0x00200000,	-- 22
	BRAWLERS				= 0x00400000,	-- 23 -- Bizmo's Brawlpub / Brawl'gar Arena
	PANDACOMMON3				= 0x00800000,	-- 24 -- Kirin Tor Offensive / Sunreaver Onslaught
	EMPEROR_SHAOHAO				= 0x01000000,	-- 25
	STEAMWHEEDLE_PRESERVATION_SOCIETY	= 0x02000000,	-- 26
	DRAENORCOMMON1				= 0x04000000,	-- 27 -- Wrynn's Vanguard /  Vol'jin's Spear
	DRAENORCOMMON2				= 0x08000000,	-- 28 -- Council of Exarchs / Frostwolf Orcs
	DRAENORCOMMON3				= 0x10000000,	-- 29 -- Shatari Defense / Laughing Skull Orcs
	DRAENORCOMMON4				= 0x20000000,	-- 30 -- Hand of the Prophet / Voljins Headhunters
	ORDER_OF_THE_AWAKENED			= 0x40000000,	-- 31
	ARAKKOA_OUTCASTS			= 0x80000000,	-- 32

}

-------------------------------------------------------------------------------
-- Reputation filter bitfield word 3.
-------------------------------------------------------------------------------
private.REP_FLAGS_WORD3 = {
	THE_SABERSTALKERS		= 0x00000001,	-- 1
	VALAJAR				= 0x00000002,	-- 2
	COURT_OF_FARONDIS		= 0x00000004,	-- 3
	THE_WARDENS			= 0x00000008,	-- 4
	DREAMWEAVERS			= 0x00000010,	-- 5
	THE_NIGHTFALLEN			= 0x00000020,	-- 6
	HIGHMOUNTAIN_TRIBE		= 0x00000040,	-- 7
	CONJURER_MARGOSS		= 0x00000080,	-- 8
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
	private.REP_FLAGS_WORD3,
	private.ITEM_FLAGS_WORD1,
}

-- Member names within a collectable's flags table.
private.FLAG_MEMBERS = {
	"common1",
	--"class1",
	"reputation1",
	"reputation2",
--	"reputation3",
	"item1",
}

private.FILTER_STRINGS = {}

for index = 1, #private.FLAG_WORDS do
	for flag_name in pairs(private.FLAG_WORDS[index]) do
		private.FILTER_STRINGS[#private.FILTER_STRINGS + 1] = flag_name
	end
end

private.FILTER_IDS = GenerateLookup_ID(private.FILTER_STRINGS)

--private.FILTER_IDS = {}
--for index = 1, #private.FILTER_STRINGS do
--	private.FILTER_IDS[private.FILTER_STRINGS[index]] = index
--end

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
	L["Trainer"],
	_G.BATTLE_PET_SOURCE_3, -- Vendor
	L["Mob Drop"],
	_G.BATTLE_PET_SOURCE_2, -- Quest
	_G.GetCategoryInfo(155), -- World Events
	_G.REPUTATION,
	L["World Drop"],
	_G.ACHIEVEMENTS,
	_G.MISCELLANEOUS,
	_G.BATTLE_PET_SOURCE_4, -- Profession
	_G.BATTLE_PET_SOURCE_10, -- Store
	_G.BATTLE_PET_SOURCE_9, -- TCG
	L["Collectors Edition"],
	_G.BATTLE_PET_SOURCE_8, -- Promotion
	_G.MISCELLANEOUS,
	L["Retired"],
	_G.GARRISON_MISSIONS_TITLE,
}

private.ACQUIRE_STRINGS = {
	"TRAINER",		-- 1
	"VENDOR",		-- 2
	"MOB_DROP",		-- 3
	"QUEST",		-- 4
	"WORLD_EVENTS",		-- 5
	"REPUTATION",		-- 6
	"WORLD_DROP",		-- 7
	"ACHIEVEMENT",		-- 8
	"CUSTOM",		-- 9
	"PROFESSION",		-- 10
	"STORE",		-- 11
	"TCG",			-- 12
	"COLLECTORS_EDITION",	-- 13
	"PROMO",		-- 14
	"MISC",			-- 15
	"RETIRED",		-- 16
	"GARRISON_MISSION",     -- 17
}

private.ACQUIRE_TYPES = GenerateLookup_ID(private.ACQUIRE_STRINGS)

-------------------------------------------------------------------------------
-- Reputation levels.
-------------------------------------------------------------------------------
private.REP_LEVEL_STRINGS = {
	"FRIENDLY",
	"HONORED",
	"REVERED",
	"EXALTED",
}

private.REP_LEVELS = GenerateLookup_ID(private.REP_LEVEL_STRINGS)

-------------------------------------------------------------------------------
-- Time of Day/Weather/Seasons
-------------------------------------------------------------------------------
private.TIME_OF_DAY_STRINGS = {
	"EARLY_MORNING",
	"DAY",
	"NIGHT",
}

private.TIME_OF_DAY = GenerateLookup_ID(private.TIME_OF_DAY_STRINGS)

private.WEATHER_STRINGS = {
	"RAIN",
	"SNOW",
	"SANDSTORM",
}

private.WEATHER = GenerateLookup_ID(private.WEATHER_STRINGS)

private.SEASON_STRINGS = {
	"WINTER",
	"SUMMER",
}

private.SEASON = GenerateLookup_ID(private.SEASON_STRINGS)

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
	BRAWLGAR_ARENA = 1374,
	KIRIN_TOR_OFFENSIVE = 1387,
	SUNREAVER_ONSLAUGHT = 1388,
	BIZMOS_BRAWLPUB = 1419,
	FROSTWOLF_ORCS = 1445,
	EMPEROR_SHAOHAO = 1492,
	ARAKKOA_OUTCASTS = 1515,
	VOLJINS_SPEAR = 1681,
	WRYNNS_VANGUARD = 1682,
	LAUGHING_SKULL_ORCS = 1708,
	SHATARI_DEFENSE = 1710,
	STEAMWHEEDLE_PRESERVATION_SOCIETY = 1711,
	COUNCIL_OF_EXARCHS = 1731,
	HAND_OF_THE_PROPHET = 1847,
	VOLJINS_HEADHUNTERS = 1848,
	ORDER_OF_THE_AWAKENED = 1849,
	THE_SABERSTALKERS = 1850,
	--Legion
	HIGHMOUNTAIN_TRIBE = 1828,
	THE_NIGHTFALLEN = 1859,
	DREAMWEAVERS = 1883,
	THE_WARDENS = 1894,
	COURT_OF_FARONDIS = 1900,
	VALAJAR = 1948,
	CONJURER_MARGOSS = 1975,
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
do
	local CONTINENT_NAMES = { _G.GetMapContinents() }

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
		SHADOWMOON_VALLEY_OUTLAND = (("%s %s"):format(_G.GetMapNameByID(473), _G.PARENS_TEMPLATE:format(CONTINENT_NAMES[6]))),
		SHADOWMOON_VALLEY = _G.GetMapNameByID(473), -- to get rid of warnings
		BLADES_EDGE_MOUNTAINS = _G.GetMapNameByID(475),
		BLOODMYST_ISLE = _G.GetMapNameByID(476),
		NAGRAND_OUTLAND = (("%s %s"):format(_G.GetMapNameByID(477), _G.PARENS_TEMPLATE:format(CONTINENT_NAMES[6]))),
		NAGRAND = _G.GetMapNameByID(477), -- to get rid of warnings
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
		DALARAN_NORTHREND = (("%s %s"):format(_G.GetMapNameByID(504), _G.PARENS_TEMPLATE:format(CONTINENT_NAMES[8]))),
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
		SHIMMERING_EXPANSE = _G.GetMapNameByID(615),
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
		THE_JADE_FOREST = _G.GetMapNameByID(806),
		VALLEY_OF_THE_FOUR_WINDS = _G.GetMapNameByID(807),
		KUN_LAI_SUMMIT = _G.GetMapNameByID(809),
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
		THE_JADE_FOREST = _G.GetMapNameByID(880),
		SUNSTRIDER_ISLE = _G.GetMapNameByID(893),
		AMMEN_VALE = _G.GetMapNameByID(894),
		NEW_TINKERTOWN = _G.GetMapNameByID(895),
		MOGUSHAN_VAULTS = _G.GetMapNameByID(896),
		HEART_OF_FEAR = _G.GetMapNameByID(897),
		SCHOLOMANCE = _G.GetMapNameByID(898),
		CRYPT_OF_FORGOTTEN_KINGS = _G.GetMapNameByID(900),
		SHRINE_OF_TWO_MOONS = _G.GetMapNameByID(903),
		SHRINE_OF_SEVEN_STARS = _G.GetMapNameByID(905),
		DEEPRUN_TRAM = _G.GetMapNameByID(922),
		BRAWLGAR_ARENA = _G.GetMapNameByID(925),
		ISLE_OF_GIANTS = _G.GetMapNameByID(929),
		THRONE_OF_THUNDER = _G.GetMapNameByID(930),
		ISLE_OF_THUNDER = _G.GetMapNameByID(933),
		FROSTFIRE_RIDGE = _G.GetMapNameByID(941),
		TANAAN_JUNGLE = _G.GetMapNameByID(945),
		TALADOR = _G.GetMapNameByID(946),
		SHADOWMOON_VALLEY_DRAENOR = (("%s %s"):format(_G.GetMapNameByID(947), _G.PARENS_TEMPLATE:format(CONTINENT_NAMES[14]))),
		SPIRES_OF_ARAK = _G.GetMapNameByID(948),
		GORGROND = _G.GetMapNameByID(949),
		NAGRAND_DRAENOR = (("%s %s"):format(_G.GetMapNameByID(950), _G.PARENS_TEMPLATE:format(CONTINENT_NAMES[14]))),
		TIMELESS_ISLE = _G.GetMapNameByID(951),
		SIEGE_OF_ORGRIMMAR = _G.GetMapNameByID(953),
		LUNARFALL = _G.GetMapNameByID(971),
		FROSTWALL = _G.GetMapNameByID(976),
		ASHRAN = _G.GetMapNameByID(978),
		IRON_DOCKS = _G.GetMapNameByID(987),
		BLACKROCK_FOUNDRY = _G.GetMapNameByID(988),
		SKYREACH = _G.GetMapNameByID(989),
		UPPER_BLACKROCK_SPIRE = _G.GetMapNameByID(995),
		STORMSHIELD = _G.GetMapNameByID(1009),
		WARSPEAR = _G.GetMapNameByID(1011),
		HELLFIRE_CITADEL = _G.GetMapNameByID(1026),

		DALARAN_BROKENISLES = (("%s %s"):format(_G.GetMapNameByID(1014), _G.PARENS_TEMPLATE:format(CONTINENT_NAMES[16]))),
		STORMHEIM = _G.GetMapNameByID(1017),
		VALSHARAH = _G.GetMapNameByID(1018),
		BROKEN_SHORE = _G.GetMapNameByID(1021),
		HELHEIM = _G.GetMapNameByID(1022),
		HIGHMOUNTAIN = _G.GetMapNameByID(1024),
		SURAMAR = _G.GetMapNameByID(1033),
		AZSUNA = _G.GetMapNameByID(1053),
		KUN_LAI_SUMMIT = _G.GetMapNameByID(1058),
		THUNDER_TOTEM = _G.GetMapNameByID(1080),
		THE_NIGHTHOLD = _G.GetMapNameByID(1088),
		THE_EMERALD_NIGHTMARE = _G.GetMapNameByID(1094),

		-------------------------------------------------------------------------------
		-- Continents
		-------------------------------------------------------------------------------
		KALIMDOR = CONTINENT_NAMES[2],
		EASTERN_KINGDOMS = CONTINENT_NAMES[4],
		OUTLAND = CONTINENT_NAMES[6],
		NORTHREND = CONTINENT_NAMES[8],
		THE_MAELSTROM = CONTINENT_NAMES[10],
		PANDARIA = CONTINENT_NAMES[12],
		DRAENOR = CONTINENT_NAMES[14],
		BROKEN_ISLES = CONTINENT_NAMES[16],
	}
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
	MAJORDOMO_STAGHELM = _G.EJ_GetEncounterInfo(197),
	RAGNAROS = _G.EJ_GetEncounterInfo(198),
	ULTRAXION = _G.EJ_GetEncounterInfo(331),
	MADNESS_OF_DEATHWING = _G.EJ_GetEncounterInfo(333),
	MOTHER_SMOLDERWEB = _G.EJ_GetEncounterInfo(391),
	QUARTERMASTER_ZIGRIS = _G.EJ_GetEncounterInfo(393),
	HEARTHSINGER_FORRESTEN = _G.EJ_GetEncounterInfo(443),
	LORD_AURIUS_RIVENDARE = _G.EJ_GetEncounterInfo(456),
	KAELTHAS_SUNSTRIDER = _G.EJ_GetEncounterInfo(533),
	ANZU = _G.EJ_GetEncounterInfo(542),
	ANUBARAK = _G.EJ_GetEncounterInfo(587),
	LEY_GUARDIAN_EREGOS = _G.EJ_GetEncounterInfo(625),
	SKADI_THE_RUTHLESS = _G.EJ_GetEncounterInfo(643),
	SHA_OF_ANGER = _G.EJ_GetEncounterInfo(691),
	ELEGON = _G.EJ_GetEncounterInfo(726),
	NALAK__THE_STORM_LORD = _G.EJ_GetEncounterInfo(814),
	HORRIDON = _G.EJ_GetEncounterInfo(819),
	PRIMORDIUS = _G.EJ_GetEncounterInfo(820),
	DARK_ANIMUS = _G.EJ_GetEncounterInfo(824),
	OONDASTA = _G.EJ_GetEncounterInfo(826),
	JI_KUN = _G.EJ_GetEncounterInfo(828),
	PARAGONS_OF_THE_KLAXXI = _G.EJ_GetEncounterInfo(853),
	SIEGECRAFTER_BLACKFUSE = _G.EJ_GetEncounterInfo(865),
	SHA_OF_PRIDE = _G.EJ_GetEncounterInfo(867),
	GARROSH_HELLSCREAM = _G.EJ_GetEncounterInfo(869),
	BLACKHAND = _G.EJ_GetEncounterInfo(959),
	RUKHMAR = _G.EJ_GetEncounterInfo(1262),
	SHADOW_LORD_ISKAR = _G.EJ_GetEncounterInfo(1433),
	ARCHIMONDE = _G.EJ_GetEncounterInfo(1438),
	MAGMADAR = _G.EJ_GetEncounterInfo(1520),
	SULFURON_HARBINGER = _G.EJ_GetEncounterInfo(1525),
	GOLEMAGG_THE_INCINERATOR = _G.EJ_GetEncounterInfo(1526),
	RAZORGORE_THE_UNTAMED = _G.EJ_GetEncounterInfo(1529),
	BROODLORD_LASHLAYER = _G.EJ_GetEncounterInfo(1531),
	CHROMAGGUS = _G.EJ_GetEncounterInfo(1535),
	THE_PROPHET_SKERAM = _G.EJ_GetEncounterInfo(1543),
	VISCIDUS = _G.EJ_GetEncounterInfo(1548),
	THE_TWIN_EMPERORS = _G.EJ_GetEncounterInfo(1549),
	ATTUMEN_THE_HUNTSMAN = _G.EJ_GetEncounterInfo(1553),
	THE_CURATOR = _G.EJ_GetEncounterInfo(1557),
	TERESTIAN_ILLHOOF = _G.EJ_GetEncounterInfo(1560),
	PRINCE_MALCHEZAAR = _G.EJ_GetEncounterInfo(1563),
	HYDROSS_THE_UNSTABLE = _G.EJ_GetEncounterInfo(1567),
	MOROGRIM_TIDEWALKER = _G.EJ_GetEncounterInfo(1571),
	LADY_VASHJ = _G.EJ_GetEncounterInfo(1572),
	ALAR = _G.EJ_GetEncounterInfo(1573),
	VOID_REAVER = _G.EJ_GetEncounterInfo(1574),
	HIGH_ASTROMANCER_SOLARIAN = _G.EJ_GetEncounterInfo(1575),
	ANETHERON = _G.EJ_GetEncounterInfo(1578),
	AZGALOR = _G.EJ_GetEncounterInfo(1580),
	HIGH_WARLORD_NAJENTUS = _G.EJ_GetEncounterInfo(1582),
	SUPREMUS = _G.EJ_GetEncounterInfo(1583),
	RELIQUARY_OF_SOULS = _G.EJ_GetEncounterInfo(1587),
	MOTHER_SHAHRAZ = _G.EJ_GetEncounterInfo(1588),
	BRUTALLUS = _G.EJ_GetEncounterInfo(1592),
	THE_EREDAR_TWINS = _G.EJ_GetEncounterInfo(1594),
	MURU = _G.EJ_GetEncounterInfo(1595),
	ARCHAVON_THE_STONE_WATCHER = _G.EJ_GetEncounterInfo(1597),
	EMALON_THE_STORM_WATCHER = _G.EJ_GetEncounterInfo(1598),
	KORALON_THE_FLAME_WATCHER = _G.EJ_GetEncounterInfo(1599),
	TORAVON_THE_ICE_WATCHER = _G.EJ_GetEncounterInfo(1600),
	MAEXXNA = _G.EJ_GetEncounterInfo(1603),
	LOATHEB = _G.EJ_GetEncounterInfo(1606),
	GLUTH = _G.EJ_GetEncounterInfo(1612),
	SARTHARION = _G.EJ_GetEncounterInfo(1616),
	MALYGOS = _G.EJ_GetEncounterInfo(1617),
	THE_LICH_KING = _G.EJ_GetEncounterInfo(1636),
	YOGG_SARON = _G.EJ_GetEncounterInfo(1649),
	ONYXIA = _G.EJ_GetEncounterInfo(1651),
	DRAGONS_OF_NIGHTMARE = _G.EJ_GetEncounterInfo(1704),
	GULDAN = _G.EJ_GetEncounterInfo(1737),

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
	exalted		= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[8])),
	revered		= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[7])),
	honored		= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[6])),
	friendly	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[5])),
	neutral		= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[4])),
	unfriendly	= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[3])),
	hostile		= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[2])),
	hated		= RGBtoHEX(GetColorsFromTable(_G.FACTION_BAR_COLORS[1])),
}

-- Colors used in tooltips and the collectable list.
private.CATEGORY_COLORS = {
	-- Acquire type colors
	achievement	= "faeb98",
	custom		= "73b7ff",
	garrisonmission	= "89dba0",
	hint		= "c9c781",
	mobdrop		= "962626",
	profession	= "9c6b98",
	quest		= "dbdb2c",
	reputation	= "855a99",
	retired		= "bfb863",
	trainer		= "c98e26",
	vendor		= "aad372",
	worldevents	= "80590e",

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
