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
--	FIRSTAID	= 3273,
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
	SKINNING	= 205243,
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
	"BFA",
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
	[_G.LE_EXPANSION_BATTLE_FOR_AZEROTH] = { texture = [[Interface\Glues\Common\Glues-WoW-BattleforAzerothLogo]] },
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
	VALARJAR			= 0x00000002,	-- 2
	COURT_OF_FARONDIS		= 0x00000004,	-- 3
	THE_WARDENS			= 0x00000008,	-- 4
	DREAMWEAVERS			= 0x00000010,	-- 5
	THE_NIGHTFALLEN			= 0x00000020,	-- 6
	HIGHMOUNTAIN_TRIBE		= 0x00000040,	-- 7
	CONJURER_MARGOSS		= 0x00000080,	-- 8
	TALONS_VENGEANCE		= 0x00000100,	-- 9
	ARMIES_OF_LEGIONFALL		= 0x00000200,	-- 10
	ILYSSIA_OF_THE_WATERS		= 0x00000400,	-- 11
	CORBYN 				= 0x00000800,	-- 12
	KEEPER_RAYNAE 			= 0x00001000,	-- 13
	TALONS_VENGEANCE 		= 0x00002000,	-- 14
	IMPUS 				= 0x00004000,	-- 15
	AKULE_RIVERHORN			= 0x00008000,	-- 16
	SHALETH				= 0x00010000,	-- 17
	ARGUSSIAN_REACH			= 0x00020000,	-- 18
	ARMY_OF_THE_LIGHT		= 0x00040000,	-- 19
	CHAMPIONS_OF_AZEROTH		= 0x00080000,	-- 20
	TORTOLLAN_SEEKERS		= 0x00100000,	-- 21
	BFACOMMON1			= 0x00200000,	-- 22 -- 7th Legion / The Honorbound
	BFACOMMON2			= 0x00400000,	-- 23 -- Order of Embers / Voldunai
	BFACOMMON3			= 0x00800000,	-- 24 -- Proudmoore Admiralty / Talanji's Expedition
	BFACOMMON4			= 0x01000000,	-- 25 -- Storm's Wake / Zandalari Empire
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
	"reputation3",
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
	KIRIN_TOR_OFFENSIVE = 1387,
	SUNREAVER_ONSLAUGHT = 1388,
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
	VALARJAR = 1948,
	CONJURER_MARGOSS = 1975,
	BRAWLGAR_ARENA = 2010,
	BIZMOS_BRAWLPUB = 2011,
	TALONS_VENGEANCE = 2018,
	ARMIES_OF_LEGIONFALL = 2045,
	ILYSSIA_OF_THE_WATERS = 2097,
	KEEPER_RAYNAE = 2098,
	AKULE_RIVERHORN = 2099,
	CORBYN = 2100,
	SHALETH = 2101,
	IMPUS = 2102,
	ARMY_OF_THE_LIGHT = 2165,
	ARGUSSIAN_REACH = 2170,
	--BFA
	ZANDALARI_EMPIRE = 2103,
	TALANJIS_EXPEDITION = 2156,
	THE_HONORBOUND = 2157,
	VOLDUNAI = 2158,
	SEVENTH_LEGION = 2159,
	PROUDMOORE_ADMIRALTY = 2160,
	ORDER_OF_EMBERS = 2161,
	STORMS_WAKE = 2162,
	TORTOLLAN_SEEKERS = 2163,
	CHAMPIONS_OF_AZEROTH = 2164,

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
--	local CONTINENT_NAMES = { _G.GetMapContinents() }

	private.ZONE_NAMES = {
		DUROTAR = _G.C_Map.GetMapInfo(1).name,
		MULGORE = _G.C_Map.GetMapInfo(7).name,
		NORTHERN_BARRENS = _G.C_Map.GetMapInfo(10).name,
		ARATHI_HIGHLANDS = _G.C_Map.GetMapInfo(14).name,
		BADLANDS = _G.C_Map.GetMapInfo(15).name,
		BLASTED_LANDS = _G.C_Map.GetMapInfo(17).name,
		TIRISFAL_GLADES = _G.C_Map.GetMapInfo(18).name,
		SILVERPINE_FOREST = _G.C_Map.GetMapInfo(21).name,
		WESTERN_PLAGUELANDS = _G.C_Map.GetMapInfo(22).name,
		EASTERN_PLAGUELANDS = _G.C_Map.GetMapInfo(23).name,
		HILLSBRAD_FOOTHILLS = _G.C_Map.GetMapInfo(25).name,
		THE_HINTERLANDS = _G.C_Map.GetMapInfo(26).name,
		DUN_MOROGH = _G.C_Map.GetMapInfo(27).name,
		SEARING_GORGE = _G.C_Map.GetMapInfo(32).name,
		BURNING_STEPPES = _G.C_Map.GetMapInfo(36).name,
		ELWYNN_FOREST = _G.C_Map.GetMapInfo(37).name,
		DEADWIND_PASS = _G.C_Map.GetMapInfo(42).name,
		DUSKWOOD = _G.C_Map.GetMapInfo(47).name,
		LOCH_MODAN = _G.C_Map.GetMapInfo(48).name,
		REDRIDGE_MOUNTAINS = _G.C_Map.GetMapInfo(49).name,
		NORTHERN_STRANGLETHORN = _G.C_Map.GetMapInfo(50).name,
		SWAMP_OF_SORROWS = _G.C_Map.GetMapInfo(51).name,
		WESTFALL = _G.C_Map.GetMapInfo(52).name,
		WETLANDS = _G.C_Map.GetMapInfo(56).name,
		TELDRASSIL = _G.C_Map.GetMapInfo(57).name,
		DARKSHORE = _G.C_Map.GetMapInfo(62).name,
		ASHENVALE = _G.C_Map.GetMapInfo(63).name,
		THOUSAND_NEEDLES = _G.C_Map.GetMapInfo(64).name,
		STONETALON_MOUNTAINS = _G.C_Map.GetMapInfo(65).name,
		DESOLACE = _G.C_Map.GetMapInfo(66).name,
		FERALAS = _G.C_Map.GetMapInfo(69).name,
		TANARIS = _G.C_Map.GetMapInfo(71).name,
		AZSHARA = _G.C_Map.GetMapInfo(76).name,
		FELWOOD = _G.C_Map.GetMapInfo(77).name,
		UNGORO_CRATER = _G.C_Map.GetMapInfo(78).name,
		MOONGLADE = _G.C_Map.GetMapInfo(80).name,
		SILITHUS = _G.C_Map.GetMapInfo(81).name,
		WINTERSPRING = _G.C_Map.GetMapInfo(83).name,
		STORMWIND_CITY = _G.C_Map.GetMapInfo(84).name,
		ORGRIMMAR = _G.C_Map.GetMapInfo(85).name,
		IRONFORGE = _G.C_Map.GetMapInfo(87).name,
		THUNDER_BLUFF = _G.C_Map.GetMapInfo(88).name,
		DARNASSUS = _G.C_Map.GetMapInfo(89).name,
		UNDERCITY = _G.C_Map.GetMapInfo(90).name,
		ALTERAC_VALLEY = _G.C_Map.GetMapInfo(91).name,
		ARATHI_BASIN = _G.C_Map.GetMapInfo(93).name,
		EVERSONG_WOODS = _G.C_Map.GetMapInfo(94).name,
		GHOSTLANDS = _G.C_Map.GetMapInfo(95).name,
		AZUREMYST_ISLE = _G.C_Map.GetMapInfo(97).name,
		HELLFIRE_PENINSULA = _G.C_Map.GetMapInfo(100).name,
		ZANGARMARSH = _G.C_Map.GetMapInfo(102).name,
		THE_EXODAR = _G.C_Map.GetMapInfo(103).name,
		SHADOWMOON_VALLEY_OUTLAND = (("%s %s"):format(_G.C_Map.GetMapInfo(104).name, _G.PARENS_TEMPLATE:format(_G.C_Map.GetMapInfo(101).name))),
		SHADOWMOON_VALLEY = _G.C_Map.GetMapInfo(104).name, -- to get rid of warnings
		BLADES_EDGE_MOUNTAINS = _G.C_Map.GetMapInfo(105).name,
		BLOODMYST_ISLE = _G.C_Map.GetMapInfo(106).name,
		NAGRAND_OUTLAND = (("%s %s"):format(_G.C_Map.GetMapInfo(107).name, _G.PARENS_TEMPLATE:format(_G.C_Map.GetMapInfo(101).name))),
		NAGRAND = _G.C_Map.GetMapInfo(106).name, -- to get rid of warnings
		TEROKKAR_FOREST = _G.C_Map.GetMapInfo(108).name,
		NETHERSTORM = _G.C_Map.GetMapInfo(109).name,
		SILVERMOON_CITY = _G.C_Map.GetMapInfo(110).name,
		SHATTRATH_CITY = _G.C_Map.GetMapInfo(111).name,
		BOREAN_TUNDRA = _G.C_Map.GetMapInfo(114).name,
		DRAGONBLIGHT = _G.C_Map.GetMapInfo(115).name,
		GRIZZLY_HILLS = _G.C_Map.GetMapInfo(116).name,
		HOWLING_FJORD = _G.C_Map.GetMapInfo(117).name,
		ICECROWN = _G.C_Map.GetMapInfo(118).name,
		SHOLAZAR_BASIN = _G.C_Map.GetMapInfo(119).name,
		THE_STORM_PEAKS = _G.C_Map.GetMapInfo(120).name,
		ZULDRAK = _G.C_Map.GetMapInfo(121).name,
		ISLE_OF_QUELDANAS = _G.C_Map.GetMapInfo(122).name,
		WINTERGRASP = _G.C_Map.GetMapInfo(123).name,
		PLAGUELANDS_THE_SCARLET_ENCLAVE = _G.C_Map.GetMapInfo(124).name,
		DALARAN_NORTHREND = (("%s %s"):format(_G.C_Map.GetMapInfo(125).name, _G.PARENS_TEMPLATE:format(_G.C_Map.GetMapInfo(113).name))),
		CRYSTALSONG_FOREST = _G.C_Map.GetMapInfo(127).name,
		THE_NEXUS = _G.C_Map.GetMapInfo(129).name,
		THE_CULLING_OF_STRATHOLME = _G.C_Map.GetMapInfo(130).name,
		AHNKAHET_THE_OLD_KINGDOM = _G.C_Map.GetMapInfo(132).name,
		UTGARDE_KEEP = _G.C_Map.GetMapInfo(133).name,
		UTGARDE_PINNACLE = _G.C_Map.GetMapInfo(136).name,
		HALLS_OF_LIGHTNING = _G.C_Map.GetMapInfo(138).name,
		HALLS_OF_STONE = _G.C_Map.GetMapInfo(140).name,
		THE_EYE_OF_ETERNITY = _G.C_Map.GetMapInfo(141).name,
		THE_OCULUS = _G.C_Map.GetMapInfo(142).name,
		ULDUAR = _G.C_Map.GetMapInfo(147).name,
		GUNDRAK = _G.C_Map.GetMapInfo(154).name,
		THE_OBSIDIAN_SANCTUM = _G.C_Map.GetMapInfo(155).name,
		VAULT_OF_ARCHAVON = _G.C_Map.GetMapInfo(156).name,
		AZJOL_NERUB = _G.C_Map.GetMapInfo(157).name,
		DRAKTHARON_KEEP = _G.C_Map.GetMapInfo(160).name,
		NAXXRAMAS = _G.C_Map.GetMapInfo(162).name,
		THE_VIOLET_HOLD = _G.C_Map.GetMapInfo(168).name,
		TRIAL_OF_THE_CRUSADER = _G.C_Map.GetMapInfo(172).name,
		THE_LOST_ISLES = _G.C_Map.GetMapInfo(174).name,
		GILNEAS = _G.C_Map.GetMapInfo(179).name,
		THE_FORGE_OF_SOULS = _G.C_Map.GetMapInfo(183).name,
		PIT_OF_SARON = _G.C_Map.GetMapInfo(184).name,
		HALLS_OF_REFLECTION = _G.C_Map.GetMapInfo(185).name,
		ICECROWN_CITADEL = _G.C_Map.GetMapInfo(186).name,
		KEZAN = _G.C_Map.GetMapInfo(194).name,
		MOUNT_HYJAL = _G.C_Map.GetMapInfo(198).name,
		SOUTHERN_BARRENS = _G.C_Map.GetMapInfo(199).name,
		KELPTHAR_FOREST = _G.C_Map.GetMapInfo(201).name,
		GILNEAS_CITY = _G.C_Map.GetMapInfo(202).name,
		VASHJIR = _G.C_Map.GetMapInfo(203).name,
		SHIMMERING_EXPANSE = _G.C_Map.GetMapInfo(205).name,
		DEEPHOLM = _G.C_Map.GetMapInfo(207).name,
		THE_CAPE_OF_STRANGLETHORN = _G.C_Map.GetMapInfo(210).name,
		RUINS_OF_GILNEAS = _G.C_Map.GetMapInfo(217).name,
		THE_TEMPLE_OF_ATALHAKKAR = _G.C_Map.GetMapInfo(220).name,
		BLACKFATHOM_DEEPS = _G.C_Map.GetMapInfo(221).name,
		GNOMEREGAN = _G.C_Map.GetMapInfo(226).name,
		ULDAMAN = _G.C_Map.GetMapInfo(230).name,
		MOLTEN_CORE = _G.C_Map.GetMapInfo(232).name,
		DIRE_MAUL = _G.C_Map.GetMapInfo(234).name,
		TWILIGHT_HIGHLANDS = _G.C_Map.GetMapInfo(241).name,
		BLACKROCK_DEPTHS = _G.C_Map.GetMapInfo(242).name,
		TOL_BARAD = _G.C_Map.GetMapInfo(244).name,
		TOL_BARAD_PENINSULA = _G.C_Map.GetMapInfo(245).name,
		THE_SHATTERED_HALLS = _G.C_Map.GetMapInfo(246).name,
		RUINS_OF_AHNQIRAJ = _G.C_Map.GetMapInfo(247).name,
		ONYXIAS_LAIR = _G.C_Map.GetMapInfo(248).name,
		ULDUM = _G.C_Map.GetMapInfo(249).name,
		BLACKROCK_SPIRE = _G.C_Map.GetMapInfo(250).name,
		AUCHENAI_CRYPTS = _G.C_Map.GetMapInfo(256).name,
		SETHEKK_HALLS = _G.C_Map.GetMapInfo(258).name,
		SHADOW_LABYRINTH = _G.C_Map.GetMapInfo(260).name,
		THE_STEAMVAULT = _G.C_Map.GetMapInfo(263).name,
		THE_SLAVE_PENS = _G.C_Map.GetMapInfo(265).name,
		THE_BOTANICA = _G.C_Map.GetMapInfo(266).name,
		THE_MECHANAR = _G.C_Map.GetMapInfo(267).name,
		THE_ARCATRAZ = _G.C_Map.GetMapInfo(269).name,
		MANA_TOMBS = _G.C_Map.GetMapInfo(272).name,
		THE_BLACK_MORASS = _G.C_Map.GetMapInfo(273).name,
		OLD_HILLSBRAD_FOOTHILLS = _G.C_Map.GetMapInfo(274).name,
		LOST_CITY_OF_THE_TOLVIR = _G.C_Map.GetMapInfo(277).name,
		WAILING_CAVERNS = _G.C_Map.GetMapInfo(279).name,
		BLACKWING_DESCENT = _G.C_Map.GetMapInfo(285).name,
		BLACKWING_LAIR = _G.C_Map.GetMapInfo(287).name,
		THE_DEADMINES = _G.C_Map.GetMapInfo(291).name,
		THE_BASTION_OF_TWILIGHT = _G.C_Map.GetMapInfo(294).name,
		RAZORFEN_DOWNS = _G.C_Map.GetMapInfo(300).name,
		SCARLET_MONASTERY = _G.C_Map.GetMapInfo(302).name,
		SHADOWFANG_KEEP = _G.C_Map.GetMapInfo(310).name,
		STRATHOLME = _G.C_Map.GetMapInfo(317).name,
		AHNQIRAJ = _G.C_Map.GetMapInfo(319).name,
		THE_STONECORE = _G.C_Map.GetMapInfo(324).name,
		THE_VORTEX_PINNACLE = _G.C_Map.GetMapInfo(325).name,
		AHNQIRAJ_THE_FALLEN_KINGDOM = _G.C_Map.GetMapInfo(327).name,
		THRONE_OF_THE_FOUR_WINDS = _G.C_Map.GetMapInfo(328).name,
		HYJAL_SUMMIT = _G.C_Map.GetMapInfo(329).name,
		SERPENTSHRINE_CAVERN = _G.C_Map.GetMapInfo(332).name,
		ZULAMAN = _G.C_Map.GetMapInfo(333).name,
		TEMPEST_KEEP = _G.C_Map.GetMapInfo(334).name,
		SUNWELL_PLATEAU = _G.C_Map.GetMapInfo(335).name,
		ZULGURUB = _G.C_Map.GetMapInfo(337).name,
		MOLTEN_FRONT = _G.C_Map.GetMapInfo(338).name,
		BLACK_TEMPLE = _G.C_Map.GetMapInfo(339).name,
		MAGISTERS_TERRACE = _G.C_Map.GetMapInfo(348).name,
		KARAZHAN = _G.C_Map.GetMapInfo(350).name,
		FIRELANDS = _G.C_Map.GetMapInfo(367).name,
		THE_JADE_FOREST = _G.C_Map.GetMapInfo(371).name,
		VALLEY_OF_THE_FOUR_WINDS = _G.C_Map.GetMapInfo(376).name,
		KUN_LAI_SUMMIT = _G.C_Map.GetMapInfo(379).name,
		TOWNLONG_STEPPES = _G.C_Map.GetMapInfo(388).name,
		VALE_OF_ETERNAL_BLOSSOMS = _G.C_Map.GetMapInfo(390).name,
		SHRINE_OF_TWO_MOONS = _G.C_Map.GetMapInfo(391).name,
		SHRINE_OF_SEVEN_STARS = _G.C_Map.GetMapInfo(393).name,
		WELL_OF_ETERNITY = _G.C_Map.GetMapInfo(398).name,
		END_TIME = _G.C_Map.GetMapInfo(401).name,
		DARKMOON_ISLAND = _G.C_Map.GetMapInfo(407).name,
		DRAGON_SOUL = _G.C_Map.GetMapInfo(409).name,
		DUSTWALLOW_MARSH = _G.C_Map.GetMapInfo(416).name,
		KRASARANG_WILDS = _G.C_Map.GetMapInfo(418).name,
		DREAD_WASTES = _G.C_Map.GetMapInfo(422).name,
		THE_VEILED_STAIR = _G.C_Map.GetMapInfo(433).name,
		THE_JADE_FOREST = _G.C_Map.GetMapInfo(448).name,
		TERRACE_OF_ENDLESS_SPRING = _G.C_Map.GetMapInfo(456).name,
		SUNSTRIDER_ISLE = _G.C_Map.GetMapInfo(467).name,
		AMMEN_VALE = _G.C_Map.GetMapInfo(468).name,
		NEW_TINKERTOWN = _G.C_Map.GetMapInfo(469).name,
		MOGUSHAN_VAULTS = _G.C_Map.GetMapInfo(471).name,
		HEART_OF_FEAR = _G.C_Map.GetMapInfo(474).name,
		SCHOLOMANCE = _G.C_Map.GetMapInfo(476).name,
		CRYPT_OF_FORGOTTEN_KINGS = _G.C_Map.GetMapInfo(481).name,
		DEEPRUN_TRAM = _G.C_Map.GetMapInfo(499).name,
		BRAWLGAR_ARENA = _G.C_Map.GetMapInfo(503).name,
		ISLE_OF_GIANTS = _G.C_Map.GetMapInfo(507).name,
		THRONE_OF_THUNDER = _G.C_Map.GetMapInfo(508).name,
		ISLE_OF_THUNDER = _G.C_Map.GetMapInfo(516).name,
		FROSTFIRE_RIDGE = _G.C_Map.GetMapInfo(525).name,
		TANAAN_JUNGLE = _G.C_Map.GetMapInfo(534).name,
		TALADOR = _G.C_Map.GetMapInfo(535).name,
		SHADOWMOON_VALLEY_DRAENOR = (("%s %s"):format(_G.C_Map.GetMapInfo(539).name, _G.PARENS_TEMPLATE:format(_G.C_Map.GetMapInfo(572).name))),
		SPIRES_OF_ARAK = _G.C_Map.GetMapInfo(542).name,
		GORGROND = _G.C_Map.GetMapInfo(543).name,
		NAGRAND_DRAENOR = (("%s %s"):format(_G.C_Map.GetMapInfo(550).name, _G.PARENS_TEMPLATE:format(_G.C_Map.GetMapInfo(572).name))),
		TIMELESS_ISLE = _G.C_Map.GetMapInfo(554).name,
		SIEGE_OF_ORGRIMMAR = _G.C_Map.GetMapInfo(556).name,
		LUNARFALL = _G.C_Map.GetMapInfo(582).name,
		FROSTWALL = _G.C_Map.GetMapInfo(590).name,
		ASHRAN = _G.C_Map.GetMapInfo(588).name,
		IRON_DOCKS = _G.C_Map.GetMapInfo(595).name,
		BLACKROCK_FOUNDRY = _G.C_Map.GetMapInfo(596).name,
		SKYREACH = _G.C_Map.GetMapInfo(601).name,
		UPPER_BLACKROCK_SPIRE = _G.C_Map.GetMapInfo(616).name,
		STORMSHIELD = _G.C_Map.GetMapInfo(622).name,
		WARSPEAR = _G.C_Map.GetMapInfo(624).name,
		HELLFIRE_CITADEL = _G.C_Map.GetMapInfo(661).name,

		DALARAN_BROKENISLES = (("%s %s"):format(_G.C_Map.GetMapInfo(501).name, _G.PARENS_TEMPLATE:format(_G.C_Map.GetMapInfo(619).name))),
		AZSUNA = _G.C_Map.GetMapInfo(630).name,
		STORMHEIM = _G.C_Map.GetMapInfo(634).name,
		VALSHARAH = _G.C_Map.GetMapInfo(641).name,
		BROKEN_SHORE = _G.C_Map.GetMapInfo(646).name,
		HELHEIM = _G.C_Map.GetMapInfo(649).name,
		HIGHMOUNTAIN = _G.C_Map.GetMapInfo(650).name,
		SURAMAR = _G.C_Map.GetMapInfo(680).name,
		KUN_LAI_SUMMIT = _G.C_Map.GetMapInfo(379).name,
		THUNDER_TOTEM = _G.C_Map.GetMapInfo(652).name,
		THE_NIGHTHOLD = _G.C_Map.GetMapInfo(764).name,
		THE_EMERALD_NIGHTMARE = _G.C_Map.GetMapInfo(777).name,
		TOMB_OF_SARGERAS = _G.C_Map.GetMapInfo(850).name,
		THE_DEATHS_OF_CHROMIE = _G.C_Map.GetMapInfo(897).name,

		KROKUUN = _G.C_Map.GetMapInfo(830).name,
		MACAREE = _G.C_Map.GetMapInfo(882).name,
		ANTORAN_WASTES = _G.C_Map.GetMapInfo(885).name,
		ANTORUS__THE_BURNING_THRONE = _G.C_Map.GetMapInfo(909).name,

		-- BFA
		ZULDAZAR = _G.C_Map.GetMapInfo(862).name,
		NAZMIR = _G.C_Map.GetMapInfo(863).name,
		VOLDUN = _G.C_Map.GetMapInfo(864).name,
		TIRAGARDE_SOUND = _G.C_Map.GetMapInfo(895).name,
		DRUSTVAR = _G.C_Map.GetMapInfo(896).name,
		STORMSONG_VALLEY = _G.C_Map.GetMapInfo(942).name,
		BORALUS = _G.C_Map.GetMapInfo(1161).name,
		DAZARALOR = _G.C_Map.GetMapInfo(1165).name,

		TOL_DAGOR = _G.C_Map.GetMapInfo(974).name,
		FREEHOLD = _G.C_Map.GetMapInfo(936).name,
		KINGS_REST = _G.C_Map.GetMapInfo(1004).name,
		WAYCREST_MANOR = _G.C_Map.GetMapInfo(1015).name,
		THE_UNDERROT = _G.C_Map.GetMapInfo(1042).name,
		SIEGE_OF_BORALUS = _G.C_Map.GetMapInfo(1162).name,
		BATTLE_OF_DAZARALOR = _G.C_Map.GetMapInfo(1352).name,
		-------------------------------------------------------------------------------
		-- Continents
		-------------------------------------------------------------------------------
		KALIMDOR = _G.C_Map.GetMapInfo(12).name,
		EASTERN_KINGDOMS = _G.C_Map.GetMapInfo(13).name,
		OUTLAND = _G.C_Map.GetMapInfo(101).name,
		NORTHREND = _G.C_Map.GetMapInfo(113).name,
		THE_MAELSTROM = _G.C_Map.GetMapInfo(725).name,
		PANDARIA = _G.C_Map.GetMapInfo(424).name,
		DRAENOR = _G.C_Map.GetMapInfo(572).name,
		BROKEN_ISLES = _G.C_Map.GetMapInfo(619).name,
		ARGUS = _G.C_Map.GetMapInfo(905).name,
		ZANDALAR = _G.C_Map.GetMapInfo(875).name,
		KUL_TIRAS = _G.C_Map.GetMapInfo(876).name,
	}
end

private.ZONE_LABELS_FROM_NAME = {}

for label, name in pairs(private.ZONE_NAMES) do
	private.ZONE_LABELS_FROM_NAME[name] = label
end

-- Mappings for issues within the pet journal.
private.ZONE_NAME_MAP = {
	["Valley of Four Winds"] = _G.C_Map.GetMapInfo(376).name,
	["Ahn'Qiraj"] = _G.C_Map.GetMapInfo(319).name,
	["ScholomanceOLD"] = _G.C_Map.GetMapInfo(476).name,
	["Sunken Temple"] = _G.C_Map.GetMapInfo(220).name,
	["Jade Forest"] = _G.C_Map.GetMapInfo(371).name,
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
	DOMINA = _G.EJ_GetEncounterInfo(436),
	HEARTHSINGER_FORRESTEN = _G.EJ_GetEncounterInfo(443),
	LORD_AURIUS_RIVENDARE = _G.EJ_GetEncounterInfo(456),
	KAELTHAS_SUNSTRIDER = _G.EJ_GetEncounterInfo(533),
	ANZU = _G.EJ_GetEncounterInfo(542),
	MENNU_THE_BETRAYER = _G.EJ_GetEncounterInfo(570),
	ANUBARAK = _G.EJ_GetEncounterInfo(587),
	LEY_GUARDIAN_EREGOS = _G.EJ_GetEncounterInfo(625),
	SKADI_THE_RUTHLESS = _G.EJ_GetEncounterInfo(643),
	WILL_OF_THE_EMPEROR = _G.EJ_GetEncounterInfo(677),
	THE_STONE_GUARD = _G.EJ_GetEncounterInfo(679),
	GARAJAL_THE_SPIRITBINDER = _G.EJ_GetEncounterInfo(682),
	SHA_OF_ANGER = _G.EJ_GetEncounterInfo(691),
	GARALON = _G.EJ_GetEncounterInfo(713),
	ELEGON = _G.EJ_GetEncounterInfo(726),
	LEI_SHI = _G.EJ_GetEncounterInfo(729),
	AMBER_SHAPER_UNSOK = _G.EJ_GetEncounterInfo(737),
	TSULONG = _G.EJ_GetEncounterInfo(742),
	GRAND_EMPRESS_SHEKZEER = _G.EJ_GetEncounterInfo(743),
	BLADE_LORD_TAYAK = _G.EJ_GetEncounterInfo(744),
	IMPERIAL_VIZIER_ZORLOK = _G.EJ_GetEncounterInfo(745),
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
	THE_FOUR_HORSEMEN = _G.EJ_GetEncounterInfo(1609),
	GLUTH = _G.EJ_GetEncounterInfo(1612),
	SARTHARION = _G.EJ_GetEncounterInfo(1616),
	MALYGOS = _G.EJ_GetEncounterInfo(1617),
	THE_LICH_KING = _G.EJ_GetEncounterInfo(1636),
	RAZORSCALE = _G.EJ_GetEncounterInfo(1639),
	YOGG_SARON = _G.EJ_GetEncounterInfo(1649),
	ONYXIA = _G.EJ_GetEncounterInfo(1651),
	THE_NORTHREND_BEASTS = _G.EJ_GetEncounterInfo(1618),
	IGNIS_THE_FURNACE_MASTER = _G.EJ_GetEncounterInfo(1638),
	THE_ASSEMBLY_OF_IRON = _G.EJ_GetEncounterInfo(1641),
	AURIAYA = _G.EJ_GetEncounterInfo(1643),
	HODIR = _G.EJ_GetEncounterInfo(1644),
	FREYA = _G.EJ_GetEncounterInfo(1646),
	INQUISITOR_TORMENTORUM = _G.EJ_GetEncounterInfo(1695),
	DRAGONS_OF_NIGHTMARE = _G.EJ_GetEncounterInfo(1704),
	CHRONOMATIC_ANOMALY = _G.EJ_GetEncounterInfo(1725),
	GULDAN = _G.EJ_GetEncounterInfo(1737),
	MISTRESS_SASSZINE = _G.EJ_GetEncounterInfo(1861),
	HARLAN_SWEETE = _G.EJ_GetEncounterInfo(2095),
	UNBOUND_ABOMINATION = _G.EJ_GetEncounterInfo(2158),
	DAZAR_THE_FIRST_KING = _G.EJ_GetEncounterInfo(2172),
	THE_LIONS_ROAR = _G.EJ_GetEncounterInfo(2212),
	DOOMS_HOWL = _G.EJ_GetEncounterInfo(2213),
	CONCLAVE_OF_THE_CHOSEN = _G.EJ_GetEncounterInfo(2330),
	HIGH_TINKER_MEKKATORQUE = _G.EJ_GetEncounterInfo(2334),
	LADY_JAINA_PROUDMOORE = _G.EJ_GetEncounterInfo(2343),

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
