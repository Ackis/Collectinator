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
	SEASONAL	= 0x00000040,	-- 7
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
--	RBOP		= 0x00020000,	-- 18
--	RBOA		= 0x00040000,	-- 19
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
	WRATHCOMMON1		= 0x08000000,	-- 28  -- Silver Covenant / Sunreavers
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
	CATACOMMON1		= 0x00000002,	-- 2  -- Wildhammer Clan / Dragonmaw Clan
	CATACOMMON2		= 0x00000004,	-- 3  -- Baradin's Wardens / Hellscream's Reach
	GUARDIANS		= 0x00000008,	-- 4
	RAMKAHEN		= 0x00000010,	-- 5
	EARTHEN_RING		= 0x00000020,	-- 6
	THERAZANE		= 0x00000040,	-- 7
	FORESTHOZEN		= 0X00000080,	-- 8
	GOLDENLOTUS		= 0X00000100,	-- 9
	CLOUDSERPENT		= 0X00000200,	-- 10
	PEARLFINJINYU		= 0X00000400,	-- 11
	SHADOPAN		= 0X00000800,	-- 12
	ANGLERS			= 0X00001000,	-- 13
	AUGUSTCELESTIALS	= 0X00002000,	-- 14
	BREWMASTERS		= 0X00004000,	-- 15
	KLAXXI			= 0X00008000,	-- 16
	LOREWALKERS		= 0X00010000,	-- 17
	TILLERS			= 0X00020000,	-- 18
	BLACKPRINCE		= 0X00040000,	-- 19
	SHANGXIACADEMY		= 0X00080000,	-- 20
	PANDACOMMON1		= 0X00100000,	-- 21
	GUILD			= 0X00200000,	-- 22
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
	[2]	= _G.BATTLE_PET_SOURCE_3, -- Vendor
	[3]	= L["Mob Drop"],
	[4]	= _G.BATTLE_PET_SOURCE_2, -- Quest
	[5]	= _G.GetCategoryInfo(155),
	[6]	= _G.REPUTATION,
	[7]	= L["World Drop"],
	[8]	= _G.ACHIEVEMENTS,
	[9]	= _G.MISCELLANEOUS,
	[10]	= _G.BATTLE_PET_SOURCE_4, -- Profession
	[11]	= _G.BATTLE_PET_SOURCE_10, -- Store
	[12]	= _G.BATTLE_PET_SOURCE_9, -- TCG
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
	[10]	= "PROFESSION",
	[11]	= "STORE",
	[12]	= "TCG",
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
	[1050]  = "VALLIANCE",
	[1052]	= "HORDE_EXPEDITION",
	[1064]  = "TAUNKA",
	[1067]  = "HAND_VENGANCE",
	[1068]	= "EXPLORERS_LEAGUE",
	[1073]	= "KALUAK",
	[1077]	= "SHATTEREDSUN",
	[1085]  = "WARSONG",
	[1090]	= "KIRINTOR",
	[1091]	= "WYRMREST",
	[1094]  = "SILVER_COVENANT",
	[1098]	= "EBONBLADE",
	[1104]	= "FRENZYHEART",
	[1105]	= "ORACLES",
	[1106]	= "ARGENTCRUSADE",
	[1119]	= "HODIR",
	[1124]  = "SUNREAVERS",
	[1136]  = "FROSTBORN",
	[1156]	= "ASHEN_VERDICT",
	[1135]	= "EARTHEN_RING",
	[1158]	= "GUARDIANS",
	[1168]	= "GUILD",
	[1171]	= "THERAZANE",
	[1172]	= "DRAGONMAW",
	[1173]	= "RAMKAHEN",
	[1174]	= "WILDHAMMER",
	[1177]	= "BARADINS_WARDENS",
	[1178]	= "HELLSCREAMS_REACH",
	[1216]	=  "SHANGXIACADEMY",
	[1228]	=  "FORESTHOZEN",
	[1242]	=  "PEARLFINJINYU",
	[1269]	=  "GOLDENLOTUS",
	[1270]	=  "SHADOPAN",
	[1271]	=  "CLOUDSERPENT",
	[1272]	=  "TILLERS",
	[1273]	=  "JOGU_THE_DRUNK",
	[1275]	=  "ELLA",
	[1276]	=  "OLD_HILLPAW",
	[1277]	=  "CHEE_CHEE",
	[1278]	=  "SHO",
	[1279]	=  "HAOHAN_MUDCLAW",
	[1280]	=  "TINA_MUDCLAW",
	[1281]	=  "GINA_MUDCLAW",
	[1282]	=  "FISH_FELLREED",
	[1283]	=  "FARMER_FUNG",
	[1302]	=  "ANGLERS",
	[1337]	=  "KLAXXI",
	[1341]	=  "AUGUSTCELESTIALS",
	[1345]	=  "LOREWALKERS",
	[1351]	=  "BREWMASTERS",
	[1352]	=  "HUOJINPANDAREN",
	[1353]	=  "TUSHUIPANDAREN",
	[1358]	=  "NAT_PAGLE",
	[1359]	=  "BLACKPRINCE",
}

private.LOCALIZED_FACTION_STRINGS = {
	["Neutral"]	= _G.FACTION_STANDING_LABEL4,
	["Friendly"]	= _G.FACTION_STANDING_LABEL5,
	["Honored"]	= _G.FACTION_STANDING_LABEL6,
	["Revered"]	= _G.FACTION_STANDING_LABEL7,
	["Exalted"]	= _G.FACTION_STANDING_LABEL8,
	["Horde"] = _G.GetFactionInfoByID(67),
	["Alliance"] = _G.GetFactionInfoByID(469),
	["Thorium Brotherhood"] = _G.GetFactionInfoByID(59),
	["Zandalar Tribe"] = _G.GetFactionInfoByID(270),
	["Argent Dawn"] = _G.GetFactionInfoByID(529),
	["Timbermaw Hold"] = _G.GetFactionInfoByID(576),
	["Wintersaber Trainers"] = _G.GetFactionInfoByID(589),
	["Cenarion Circle"] = _G.GetFactionInfoByID(609),
	["The Aldor"] = _G.GetFactionInfoByID(932),
	["The Consortium"] = _G.GetFactionInfoByID(933),
	["The Scryers"] = _G.GetFactionInfoByID(934),
	["The Sha'tar"] = _G.GetFactionInfoByID(935),
	["The Mag'har"] = _G.GetFactionInfoByID(941),
	["Cenarion Expedition"] = _G.GetFactionInfoByID(942),
	["Honor Hold"] = _G.GetFactionInfoByID(946),
	["Thrallmar"] = _G.GetFactionInfoByID(947),
	["The Violet Eye"] = _G.GetFactionInfoByID(967),
	["Sporeggar"] = _G.GetFactionInfoByID(970),
	["Kurenai"] = _G.GetFactionInfoByID(978),
	["Keepers of Time"] = _G.GetFactionInfoByID(989),
	["The Scale of the Sands"] = _G.GetFactionInfoByID(990),
	["Lower City"] = _G.GetFactionInfoByID(1011),
	["Ashtongue Deathsworn"] = _G.GetFactionInfoByID(1012),
	["Alliance Vanguard"] = _G.GetFactionInfoByID(1037),
	["Valiance Expedition"] = _G.GetFactionInfoByID(1050),
	["Horde Expedition"] = _G.GetFactionInfoByID(1052),
	["The Taunka"] = _G.GetFactionInfoByID(1064),
	["The Hand of Vengeance"] = _G.GetFactionInfoByID(1067),
	["Explorers' League"] = _G.GetFactionInfoByID(1068),
	["The Kalu'ak"] = _G.GetFactionInfoByID(1073),
	["Shattered Sun Offensive"] = _G.GetFactionInfoByID(1077),
	["Warsong Offensive"] = _G.GetFactionInfoByID(1085),
	["Kirin Tor"] = _G.GetFactionInfoByID(1090),
	["The Wyrmrest Accord"] = _G.GetFactionInfoByID(1091),
	["The Silver Covenant"] = _G.GetFactionInfoByID(1094),
	["Knights of the Ebon Blade"] = _G.GetFactionInfoByID(1098),
	["Frenzyheart Tribe"] = _G.GetFactionInfoByID(1104),
	["The Oracles"] = _G.GetFactionInfoByID(1105),
	["Argent Crusade"] = _G.GetFactionInfoByID(1106),
	["The Sons of Hodir"] = _G.GetFactionInfoByID(1119),
	["The Sunreavers"] = _G.GetFactionInfoByID(1124),
	["The Earthen Ring"] = _G.GetFactionInfoByID(1135),
	["Tranquillien Conversion"] = _G.GetFactionInfoByID(1136),
	["The Ashen Verdict"] = _G.GetFactionInfoByID(1156),
	["Guardians of Hyjal"] = _G.GetFactionInfoByID(1158),
	["Guild"] = _G.GetFactionInfoByID(1168),
	["Therazane"] = _G.GetFactionInfoByID(1171),
	["Dragonmaw Clan"] = _G.GetFactionInfoByID(1172),
	["Ramkahen"] = _G.GetFactionInfoByID(1173),
	["Wildhammer Clan"] = _G.GetFactionInfoByID(1174),
	["Baradin's Wardens"] = _G.GetFactionInfoByID(1177),
	["Hellscream's Reach"] = _G.GetFactionInfoByID(1178),
	["Shang Xi's Academy"] = _G.GetFactionInfoByID(1216),
	["Forest Hozen"] = _G.GetFactionInfoByID(1228),
	["Pearlfin Jinyu"] = _G.GetFactionInfoByID(1242),
	["Golden Lotus"] = _G.GetFactionInfoByID(1269),
	["Shado-Pan"] = _G.GetFactionInfoByID(1270),
	["Order of the Cloud Serpent"] = _G.GetFactionInfoByID(1271),
	["The Tillers"] = _G.GetFactionInfoByID(1272),
	["Jogu the Drunk"] = _G.GetFactionInfoByID(1273),
	["Ella"] = _G.GetFactionInfoByID(1275),
	["Old Hillpaw"] = _G.GetFactionInfoByID(1276),
	["Chee Chee"] = _G.GetFactionInfoByID(1277),
	["Sho"] = _G.GetFactionInfoByID(1278),
	["Haohan Mudclaw"] = _G.GetFactionInfoByID(1279),
	["Tina Mudclaw"] = _G.GetFactionInfoByID(1280),
	["Gina Mudclaw"] = _G.GetFactionInfoByID(1281),
	["Fish Fellreed"] = _G.GetFactionInfoByID(1282),
	["Farmer Fung"] = _G.GetFactionInfoByID(1283),
	["The Anglers"] = _G.GetFactionInfoByID(1302),
	["The Klaxxi"] = _G.GetFactionInfoByID(1337),
	["The August Celestials"] = _G.GetFactionInfoByID(1341),
	["The Lorewalkers"] = _G.GetFactionInfoByID(1345),
	["The Brewmasters"] = _G.GetFactionInfoByID(1351),
	["Huojin Pandaren"] = _G.GetFactionInfoByID(1352),
	["Tushui Pandaren"] = _G.GetFactionInfoByID(1353),
	["Nat Pagle"] = _G.GetFactionInfoByID(1358),
	["The Black Prince"] = _G.GetFactionInfoByID(1359),
}
--[[
private.LOCALIZED_FACTION_STRINGS = {
	["Neutral"] = _G.FACTION_STANDING_LABEL4,
	["Friendly"] = _G.FACTION_STANDING_LABEL5,
	["Honored"] = _G.FACTION_STANDING_LABEL6,
	["Revered"] = _G.FACTION_STANDING_LABEL7,
	["Exalted"] = _G.FACTION_STANDING_LABEL8,
	["Horde"] = _G.GetFactionInfoByID(67),
	["Alliance"] = _G.GetFactionInfoByID(469),
	["THORIUM_BROTHERHOOD"] = _G.GetFactionInfoByID(59),
	["ZANDALAR_TRIBE"] = _G.GetFactionInfoByID(270),
	["ARGENT_DAWN"] = _G.GetFactionInfoByID(529),
	["TIMBERMAW_HOLD"] = _G.GetFactionInfoByID(576),
	["WINTERSABER_TRAINERS"] = _G.GetFactionInfoByID(589),
	["CENARION_CIRCLE"] = _G.GetFactionInfoByID(609),
	["THE_ALDOR"] = _G.GetFactionInfoByID(932),
	["THE_CONSORTIUM"] = _G.GetFactionInfoByID(933),
	["THE_SCRYERS"] = _G.GetFactionInfoByID(934),
	["THE_SHATAR"] = _G.GetFactionInfoByID(935),
	["THE_MAGHAR"] = _G.GetFactionInfoByID(941),
	["CENARION_EXPEDITION"] = _G.GetFactionInfoByID(942),
	["HONOR_HOLD"] = _G.GetFactionInfoByID(946),
	["THRALLMAR"] = _G.GetFactionInfoByID(947),
	["THE_VIOLET_EYE"] = _G.GetFactionInfoByID(967),
	["SPOREGGAR"] = _G.GetFactionInfoByID(970),
	["KURENAI"] = _G.GetFactionInfoByID(978),
	["KEEPERS_OF_TIME"] = _G.GetFactionInfoByID(989),
	["THE_SCALE_OF_THE_SANDS"] = _G.GetFactionInfoByID(990),
	["LOWER_CITY"] = _G.GetFactionInfoByID(1011),
	["ASHTONGUE_DEATHSWORN"] = _G.GetFactionInfoByID(1012),
	["ALLIANCE_VANGUARD"] = _G.GetFactionInfoByID(1037),
	["VALIANCE_EXPEDITION"] = _G.GetFactionInfoByID(1050),
	["HORDE_EXPEDITION"] = _G.GetFactionInfoByID(1052),
	["THE_TAUNKA"] = _G.GetFactionInfoByID(1064),
	["THE_HAND_OF_VENGEANCE"] = _G.GetFactionInfoByID(1067),
	["EXPLORERS_LEAGUE"] = _G.GetFactionInfoByID(1068),
	["THE_KALUAK"] = _G.GetFactionInfoByID(1073),
	["SHATTERED_SUN_OFFENSIVE"] = _G.GetFactionInfoByID(1077),
	["WARSONG_OFFENSIVE"] = _G.GetFactionInfoByID(1085),
	["KIRIN_TOR"] = _G.GetFactionInfoByID(1090),
	["THE_WYRMREST_ACCORD"] = _G.GetFactionInfoByID(1091),
	["THE_SILVER_COVENANT"] = _G.GetFactionInfoByID(1094),
	["KNIGHTS_OF_THE_EBON_BLADE"] = _G.GetFactionInfoByID(1098),
	["FRENZYHEART_TRIBE"] = _G.GetFactionInfoByID(1104),
	["THE_ORACLES"] = _G.GetFactionInfoByID(1105),
	["ARGENT_CRUSADE"] = _G.GetFactionInfoByID(1106),
	["THE_SONS_OF_HODIR"] = _G.GetFactionInfoByID(1119),
	["THE_SUNREAVERS"] = _G.GetFactionInfoByID(1124),
	["THE_EARTHEN_RING"] = _G.GetFactionInfoByID(1135),
	["TRANQUILLIEN_CONVERSION"] = _G.GetFactionInfoByID(1136),
	["THE_ASHEN_VERDICT"] = _G.GetFactionInfoByID(1156),
	["GUARDIANS_OF_HYJAL"] = _G.GetFactionInfoByID(1158),
	["GUILD"] = _G.GetFactionInfoByID(1168),
	["THERAZANE"] = _G.GetFactionInfoByID(1171),
	["DRAGONMAW_CLAN"] = _G.GetFactionInfoByID(1172),
	["RAMKAHEN"] = _G.GetFactionInfoByID(1173),
	["WILDHAMMER_CLAN"] = _G.GetFactionInfoByID(1174),
	["BARADINS_WARDENS"] = _G.GetFactionInfoByID(1177),
	["HELLSCREAMS_REACH"] = _G.GetFactionInfoByID(1178),
	["SHANG_XIS_ACADEMY"] = _G.GetFactionInfoByID(1216),
	["FOREST_HOZEN"] = _G.GetFactionInfoByID(1228),
	["PEARLFIN_JINYU"] = _G.GetFactionInfoByID(1242),
	["GOLDEN_LOTUS"] = _G.GetFactionInfoByID(1269),
	["SHADO_PAN"] = _G.GetFactionInfoByID(1270),
	["ORDER_OF_THE_CLOUD_SERPENT"] = _G.GetFactionInfoByID(1271),
	["THE_TILLERS"] = _G.GetFactionInfoByID(1272),
	["JOGU_THE_DRUNK"] = _G.GetFactionInfoByID(1273),
	["ELLA"] = _G.GetFactionInfoByID(1275),
	["OLD_HILLPAW"] = _G.GetFactionInfoByID(1276),
	["CHEE_CHEE"] = _G.GetFactionInfoByID(1277),
	["SHO"] = _G.GetFactionInfoByID(1278),
	["HAOHAN_MUDCLAW"] = _G.GetFactionInfoByID(1279),
	["TINA_MUDCLAW"] = _G.GetFactionInfoByID(1280),
	["GINA_MUDCLAW"] = _G.GetFactionInfoByID(1281),
	["FISH_FELLREED"] = _G.GetFactionInfoByID(1282),
	["FARMER_FUNG"] = _G.GetFactionInfoByID(1283),
	["THE_ANGLERS"] = _G.GetFactionInfoByID(1302),
	["THE_KLAXXI"] = _G.GetFactionInfoByID(1337),
	["THE_AUGUST_CELESTIALS"] = _G.GetFactionInfoByID(1341),
	["THE_LOREWALKERS"] = _G.GetFactionInfoByID(1345),
	["THE_BREWMASTERS"] = _G.GetFactionInfoByID(1351),
	["HUOJIN_PANDAREN"] = _G.GetFactionInfoByID(1352),
	["TUSHUI_PANDAREN"] = _G.GetFactionInfoByID(1353),
	["NAT_PAGLE"] = _G.GetFactionInfoByID(1358),
	["THE_BLACK_PRINCE"] = _G.GetFactionInfoByID(1359),
}
]]--
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
	ALTERAC_VALLEY = _G.GetMapNameByID(401),
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
	THE_CULLING_OF_STRATHOLME = _G.GetMapNameByID(521),
	AHNKAHET_THE_OLD_KINGDOM = _G.GetMapNameByID(522),
	UTGARDE_KEEP = _G.GetMapNameByID(523),
	UTGARDE_PINNACLE = _G.GetMapNameByID(524),
	HALLS_OF_LIGHTNING = _G.GetMapNameByID(525),
	HALLS_OF_STONE = _G.GetMapNameByID(526),
	THE_EYE_OF_ETERNITY = _G.GetMapNameByID(527),
	THE_OCULUS = _G.GetMapNameByID(528),
	ULDUAR = _G.GetMapNameByID(529),
	THE_OBSIDIAN_SANCTUM = _G.GetMapNameByID(531),
	VAULT_OF_ARCHAVON = _G.GetMapNameByID(532),
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
	WAILING_CAVERNS = _G.GetMapNameByID(749),
	BLACKWING_LAIR = _G.GetMapNameByID(755),
	THE_DEADMINES = _G.GetMapNameByID(756),
	RAZORFEN_DOWNS = _G.GetMapNameByID(760),
	SCARLET_MONASTERY = _G.GetMapNameByID(762),
	SHADOWFANG_KEEP = _G.GetMapNameByID(764),
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
	DARKMOON_ISLAND = _G.GetMapNameByID(823),
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

	ANUBARAK = _G.EJ_GetEncounterInfo(587),

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
	quest		= "dbdb2c",
	reputation	= "855a99",
	seasonal	= "80590e",
	trainer		= "c98e26",
	vendor		= "aad372",
	profession	= "9c6b98",

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
