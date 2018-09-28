--[[
************************************************************************
Mob.lua
************************************************************************
File date: @file-date-iso@
File hash: @file-abbreviated-hash@
Project hash: @project-abbreviated-hash@
Project version: @project-version@
************************************************************************
Please see http://www.wowace.com/addons/arl/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]]--

-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BB = LibStub("LibBabble-Boss-3.0"):GetLookupTable()

local BN = private.BOSS_NAMES
local Z = private.ZONE_NAMES

private.mob_list = {}

function addon:InitMob()
	local function AddMob(mob_id, mob_name, zone_name, coord_x, coord_y)
		private:AddListEntry(private.mob_list, mob_id, mob_name, zone_name, coord_x, coord_y, nil)
	end

	AddMob(2725,	L["Scalding Whelp"],			Z.BADLANDS,			69.8, 47.0)
	AddMob(3636,	L["Deviate Ravager"],			Z.WAILING_CAVERNS,		 0.0,  0.0)
	AddMob(3637,	L["Deviate Guardian"],			Z.WAILING_CAVERNS,		 0.0,  0.0)
	AddMob(4323,	L["Searing Hatchling"],			Z.DUSTWALLOW_MARSH,		46.0, 69.4)
	AddMob(4324,	L["Searing Whelp"],			Z.DUSTWALLOW_MARSH,		46.0, 69.4)
	AddMob(7049,	L["Flamescale Broodling"],		Z.BURNING_STEPPES,		15.4, 66.2)
	AddMob(9736,	BN.QUARTERMASTER_ZIGRIS,		Z.BLACKROCK_SPIRE,		 0.0,  0.0)
	AddMob(10184,	BN.ONYXIA,				Z.ONYXIAS_LAIR,			68.0, 35.2)
	AddMob(10558,	BN.HEARTHSINGER_FORRESTEN,		Z.STRATHOLME,			60.5, 31.3)
	AddMob(11502,	BN.RAGNAROS,				Z.MOLTEN_CORE,			 0.0,  0.0)
	AddMob(10596,	BN.MOTHER_SMOLDERWEB,			Z.BLACKROCK_SPIRE,		 0.0,  0.0)
	AddMob(11982,	BN.MAGMADAR,				Z.MOLTEN_CORE,			71.0, 19.4)
	AddMob(11988,	BN.GOLEMAGG_THE_INCINERATOR,		Z.MOLTEN_CORE,			68.6, 61.6)
	AddMob(12017,	BN.BROODLORD_LASHLAYER,			Z.BLACKWING_LAIR,		 0.0,  0.0)
	AddMob(12098,	BN.SULFURON_HARBINGER,			Z.MOLTEN_CORE,			82.6, 83.2)
	AddMob(12435,	BN.RAZORGORE_THE_UNTAMED,		Z.BLACKWING_LAIR,		 0.0,  0.0)
	AddMob(14020,	BN.CHROMAGGUS,				Z.BLACKWING_LAIR,		 0.0,  0.0)
	AddMob(15276,	BN.THE_TWIN_EMPERORS,			Z.AHNQIRAJ,			61.4, 65.6)
	AddMob(15299,	BN.VISCIDUS,				Z.AHNQIRAJ,			71.6, 18.4)
	AddMob(15550,	BN.ATTUMEN_THE_HUNTSMAN,		Z.KARAZHAN,			 0.0,  0.0)
	AddMob(15552,	L["Doctor Weavil"],			Z.DUSTWALLOW_MARSH,		77.7, 17.3)
	AddMob(15690,	BN.PRINCE_MALCHEZAAR,			Z.KARAZHAN,			 0.0,  0.0)
	AddMob(15691,	BN.THE_CURATOR,				Z.KARAZHAN,			 0.0,  0.0)
	AddMob(15932,	BN.GLUTH,				Z.NAXXRAMAS,			 0.0,  0.0)
	AddMob(15952,	BN.MAEXXNA,				Z.NAXXRAMAS,			 0.0,  0.0)
	AddMob(15263,	BN.THE_PROPHET_SKERAM,			Z.AHNQIRAJ,			44.6, 45.6)
	AddMob(15688,	BN.TERESTIAN_ILLHOOF,			Z.KARAZHAN,			 0.0,  0.0)
	AddMob(16011,	BN.LOATHEB,				Z.NAXXRAMAS,			 0.0,  0.0)
	AddMob(17808,	BN.ANETHERON,				Z.HYJAL_SUMMIT,			 9.6, 66.4)
	AddMob(17521,	BN.OPERA_HALL,				Z.KARAZHAN,			 0.0,  0.0)
	AddMob(17842,	BN.AZGALOR,				Z.HYJAL_SUMMIT,			43.4, 36.2)
	AddMob(17968,	BN.ARCHIMONDE,				Z.HYJAL_SUMMIT,			77.3, 28.3)
	AddMob(18805,	BN.HIGH_ASTROMANCER_SOLARIAN,		Z.TEMPEST_KEEP,			73.6, 50.0)
	AddMob(19514,	BN.ALAR,				Z.TEMPEST_KEEP,			46.0, 58.4)
	AddMob(19516,	BN.VOID_REAVER,				Z.TEMPEST_KEEP,			27.2, 47.8)
	AddMob(19622,   BN.KAELTHAS_SUNSTRIDER,			Z.TEMPEST_KEEP,			50.0, 15.6)
	AddMob(20197,	L["Bogflare Needler"],			Z.ZANGARMARSH,			53.6, 33.4)
	AddMob(21212,	BN.LADY_VASHJ,				Z.SERPENTSHRINE_CAVERN,		71.6, 59.0)
	AddMob(21213,	BN.MOROGRIM_TIDEWALKER,			Z.SERPENTSHRINE_CAVERN,		59.6, 25.8)
	AddMob(21216,	BN.HYDROSS_THE_UNSTABLE,		Z.SERPENTSHRINE_CAVERN,		36.8, 84.8)
	AddMob(21838,	L["Terokk"],				Z.TEROKKAR_FOREST,		66.2, 77.6)
	AddMob(22856,	BN.RELIQUARY_OF_SOULS,			Z.BLACK_TEMPLE,			 0.0,  0.0)
	AddMob(22887,	BN.HIGH_WARLORD_NAJENTUS,		Z.BLACK_TEMPLE,			 0.0,  0.0)
	AddMob(22898,	BN.SUPREMUS,				Z.BLACK_TEMPLE,			 0.0,  0.0)
	AddMob(22947,	BN.MOTHER_SHAHRAZ,			Z.BLACK_TEMPLE,			 0.0,  0.0)
	AddMob(23035,	BN.ANZU,				Z.SETHEKK_HALLS,		32.6, 58.0)
	AddMob(23577,	BN.HALAZZI,				Z.ZULAMAN,			57.6, 23.6)
	AddMob(23682,	BB["Headless Horseman"],		Z.SCARLET_MONASTERY,		 0.0,  0.0)
	AddMob(23872,	BB["Coren Direbrew"],			Z.BLACKROCK_DEPTHS,		 0.0,  0.0)
	AddMob(24664,   BN.KAELTHAS_SUNSTRIDER,			Z.MAGISTERS_TERRACE,		 8.6, 50.6)
	AddMob(24882,	BN.BRUTALLUS,				Z.SUNWELL_PLATEAU,		 0.0,  0.0)
	AddMob(25165,	BN.THE_EREDAR_TWINS,			Z.SUNWELL_PLATEAU,		 0.0,  0.0)
	AddMob(25740,	BB["Ahune"],				Z.THE_SLAVE_PENS,		32.2, 50.8)
	AddMob(25741,	BN.MURU,				Z.SUNWELL_PLATEAU,		 0.0,  0.0)
	AddMob(26693,	BN.SKADI_THE_RUTHLESS,			Z.UTGARDE_PINNACLE,		69.8, 36.4)
	AddMob(28132,	L["Don Carlos"],			Z.OLD_HILLSBRAD_FOOTHILLS,	47.2, 57.4)
	AddMob(28859,	BN.MALYGOS,				Z.THE_EYE_OF_ETERNITY,		 0.0,  0.0)
	AddMob(28860,	BN.SARTHARION,				Z.THE_OBSIDIAN_SANCTUM,		 0.0,  0.0)
	AddMob(29334,	L["Gundrak Raptor"],			Z.ZULDRAK,			73.8, 17.6)
	AddMob(31125,	BN.ARCHAVON_THE_STONE_WATCHER,		Z.VAULT_OF_ARCHAVON,		49.2, 17.0)
	AddMob(32273,	BB["Infinite Corruptor"],		Z.THE_CULLING_OF_STRATHOLME,	 0.0,  0.0)
	AddMob(32491,	L["Time-Lost Proto Drake"],		Z.THE_STORM_PEAKS,		 0.0,  0.0)
	AddMob(32845,	BN.HODIR,				Z.ULDUAR,			 0.0,  0.0)
	AddMob(32867,	BN.THE_ASSEMBLY_OF_IRON,		Z.ULDUAR,			 0.0,  0.0)
	AddMob(32906,	BN.FREYA,				Z.ULDUAR,			 0.0,  0.0)
	AddMob(33118,	BN.IGNIS_THE_FURNACE_MASTER,		Z.ULDUAR,			 0.0,  0.0)
	AddMob(33186,	BN.RAZORSCALE,				Z.ULDUAR,			 0.0,  0.0)
	AddMob(33288,	BN.YOGG_SARON,				Z.ULDUAR,			 0.0,  0.0)
	AddMob(33350,	BN.MIMIRON,				Z.ULDUAR,			 0.0,  0.0)
	AddMob(33515,	BN.AURIAYA,				Z.ULDUAR,			 0.0,  0.0)
	AddMob(33993,	BN.EMALON_THE_STORM_WATCHER,		Z.VAULT_OF_ARCHAVON,		62.6, 55.4)
	AddMob(34564,	BN.ANUBARAK,				Z.TRIAL_OF_THE_CRUSADER,	 0.0,  0.0)
	AddMob(34797,	BN.THE_NORTHREND_BEASTS,		Z.TRIAL_OF_THE_CRUSADER,	 0.0,  0.0)
	AddMob(35013,	BN.KORALON_THE_FLAME_WATCHER,		Z.VAULT_OF_ARCHAVON,		36.0, 55.4)
	AddMob(36296,	BB["Apothecary Hummel"],		Z.SHADOWFANG_KEEP,		41.8, 53.6)
	AddMob(36597,	BN.THE_LICH_KING,			Z.ICECROWN_CITADEL,		 0.0,  0.0)
	AddMob(36612,	BN.LORD_MARROWGAR,			Z.ICECROWN_CITADEL,		 0.0,  0.0)
	AddMob(36678,	BN.PROFESSOR_PUTRICIDE,			Z.ICECROWN_CITADEL,		 0.0,  0.0)
	AddMob(36853,	BN.SINDRAGOSA,				Z.ICECROWN_CITADEL,		 0.0,  0.0)
	AddMob(37813,	BN.DEATHBRINGER_SAURFANG,		Z.ICECROWN_CITADEL,		 0.0,  0.0)
	AddMob(38433,	BN.TORAVON_THE_ICE_WATCHER,		Z.VAULT_OF_ARCHAVON,		62.6, 36.8)
	AddMob(39384,	L["Noxious Whelp"],			Z.FERALAS,			48.2, 10.6)
	AddMob(41376,	BN.NEFARIAN,				Z.BLACKWING_DESCENT,		0.0, 0.0)
	AddMob(41378,	BN.MALORIAK,				Z.BLACKWING_DESCENT,		0.0, 0.0)
	AddMob(42042,	L["Ebon Whelp"],			Z.WETLANDS,			62.0, 49.8)
	AddMob(42178,	BN.OMNOTRON_DEFENSE_SYSTEM,		Z.BLACKWING_DESCENT,		0.0, 0.0)
	AddMob(43214,	BN.SLABHIDE,				Z.THE_STONECORE,		36.2, 45.8)
	AddMob(43324,	BN.CHOGALL,				Z.THE_BASTION_OF_TWILIGHT,	0.0, 0.0)
	AddMob(43735,	BN.ASCENDANT_COUNCIL,			Z.THE_BASTION_OF_TWILIGHT,	0.0, 0.0)
	AddMob(43873,	BN.ALTAIRUS,				Z.THE_VORTEX_PINNACLE,		52.0, 80.6)
	AddMob(45412,	BN.LORD_AURIUS_RIVENDARE,		Z.STRATHOLME,			38.6, 20.2)
	AddMob(45871,	BN.THE_CONCLAVE_OF_WIND,		Z.THRONE_OF_THE_FOUR_WINDS,	47.5, 26.0)
	AddMob(45992,	BN.THERALION_AND_VALIONA,		Z.THE_BASTION_OF_TWILIGHT,	0.0, 0.0)
	AddMob(46753,	BN.ALAKIR,				Z.THRONE_OF_THE_FOUR_WINDS,	46.6, 50.2)
	AddMob(46914,	L["Raging Whelp"],			Z.BADLANDS,			29.6, 44.2)
	AddMob(46916,	L["Nyxondra's Broodling"],		Z.BADLANDS,			10.2, 41.6)
	AddMob(47676,	L["Baradin Fox"],			Z.TOL_BARAD_PENINSULA,		52.6, 59.0)
	AddMob(48522,	L["Defias Pirate"],			Z.THE_DEADMINES,		 0.0,  0.0)
	AddMob(49822,	L["Jadefang"],				Z.DEEPHOLM,			61.2, 22.6)
	AddMob(50005,	L["Poseidus"],				Z.VASHJIR,			 0.0,  0.0)
	AddMob(50052,	L["Burgy Blackheart"],			Z.SHIMMERING_EXPANSE,		56.8, 70.6)
	AddMob(50062,	L["Aeonaxx"],				Z.DEEPHOLM,			 0.0,  0.0)
	AddMob(50245,	L["Dormus the Camel-Hoarder"],		Z.FERALAS,			69.6, 73.2)
	AddMob(50336,	L["Yorik Sharpeye"],			Z.VALE_OF_ETERNAL_BLOSSOMS,	87.8, 44.6)
	AddMob(50347,	L["Karr the Darkener"],			Z.DREAD_WASTES,			71.8, 37.6)
	AddMob(50349,	L["Kang the Soul Thief"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	15.0, 35.6)
	AddMob(50354,	L["Havak"],				Z.KUN_LAI_SUMMIT,		57.6, 75.0)
	AddMob(50358,	L["Haywire Sunreaver Construct"],	Z.ISLE_OF_THUNDER,		49.6, 89.2)
	AddMob(50359,	L["Urgolax"],				Z.VALE_OF_ETERNAL_BLOSSOMS,	39.4, 24.6)
	AddMob(50739,	L["Gar'lok"],				Z.DREAD_WASTES,			39.2, 41.8)
	AddMob(50749,	L["Kal'tik the Blight"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	14.0, 58.6)
	AddMob(50769,	L["Zai the Outcast"],			Z.KUN_LAI_SUMMIT,		74.4, 79.2)
	AddMob(50776,	L["Nalash Verdantis"],			Z.DREAD_WASTES,			64.2, 58.6)
	AddMob(50780,	L["Sahn Tidehunter"],			Z.VALE_OF_ETERNAL_BLOSSOMS,	69.6, 30.8)
	AddMob(50783,	L["Salyin Warscout"],			Z.VALLEY_OF_THE_FOUR_WINDS,	71.0, 52.4)
	AddMob(50789,	L["Nessos the Oracle"],			Z.KUN_LAI_SUMMIT,		63.8, 13.8)
	AddMob(50806,	L["Moldo One-Eye"],			Z.VALE_OF_ETERNAL_BLOSSOMS,	39.8, 54.6)
	AddMob(50817,	L["Ahone the Wanderer"],		Z.KUN_LAI_SUMMIT,		40.8, 42.4)
	AddMob(50821,	L["Ai-Li Skymirror"],			Z.DREAD_WASTES,			34.8, 23.2)
	AddMob(50822,	L["Ai-Ran the Shifting Cloud"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	42.6, 69.0)
	AddMob(50836,	L["Ik-Ik the Nimble"],			Z.DREAD_WASTES,			55.4, 63.4)
	AddMob(50840,	L["Major Nanners"],			Z.VALE_OF_ETERNAL_BLOSSOMS,	31.0, 91.6)
	AddMob(50883,	L["Pathrunner"],			Z.SHADOWMOON_VALLEY_DRAENOR,	 0.0,  0.0)
	AddMob(50981,	L["Luk'hok"],				Z.NAGRAND_DRAENOR,		 0.0,  0.0)
	AddMob(50985,	L["Poundfist"],				Z.GORGROND,			 0.0,  0.0)
	AddMob(50990,	L["Nakk the Thunderer"],		Z.NAGRAND_DRAENOR,		 0.0,  0.0)
	AddMob(51015,	L["Silthide"],				Z.TALADOR,			 0.0,  0.0)
	AddMob(51059,	L["Blackhoof"],				Z.VALLEY_OF_THE_FOUR_WINDS,	37.8, 60.6)
	AddMob(52059,	BN.HIGH_PRIESTESS_KILNARA,		Z.ZULGURUB,			47.8, 20.6)
	AddMob(52151,	BN.BLOODLORD_MANDOKIR,			Z.ZULGURUB,			60.6, 80.6)
	AddMob(52409,	BN.RAGNAROS,				Z.FIRELANDS,			0.0, 0.0)
	AddMob(52498,	BN.BETHTILAC,				Z.FIRELANDS,			0.0, 0.0)
	AddMob(52530,	BN.ALYSRAZOR,				Z.FIRELANDS,			0.0, 0.0)
	AddMob(52571,	BN.MAJORDOMO_STAGHELM,			Z.FIRELANDS,			0.0, 0.0)
	AddMob(53494,	BN.BALEROC__THE_GATEKEEPER,		Z.FIRELANDS,			0.0, 0.0)
	AddMob(53691,	BN.SHANNOX,				Z.FIRELANDS,			0.0, 0.0)
	AddMob(53879,	BN.SPINE_OF_DEATHWING,			Z.DRAGON_SOUL,			0.0, 0.0)
	AddMob(55294,	BN.ULTRAXION,				Z.DRAGON_SOUL,			0.0, 0.0)
	AddMob(55312,	BN.YORSAHJ_THE_UNSLEEPING,		Z.DRAGON_SOUL,			0.0, 0.0)
	AddMob(56173,	BN.MADNESS_OF_DEATHWING,		Z.DRAGON_SOUL,			0.0, 0.0)
	AddMob(58336,	L["Darkmoon Rabbit"],			Z.DARKMOON_ISLAND,		77.4, 80.2)
	AddMob(59369,	BB["Doctor Theolen Krastinov"],		Z.SCHOLOMANCE,			0.0, 0.0)
	AddMob(60410,	BN.ELEGON,				Z.MOGUSHAN_VAULTS,		20.6, 51.5)
	AddMob(60491,	BN.SHA_OF_ANGER, 			Z.KUN_LAI_SUMMIT,		67.8, 77.8)
	AddMob(62346,	BB["Galleon"], 				Z.VALLEY_OF_THE_FOUR_WINDS,	70.8, 63.4)
	AddMob(64403,	L["Alani"], 				Z.VALE_OF_ETERNAL_BLOSSOMS,	39.4, 30.8)
	AddMob(66467,	L["G'nathus"], 				Z.TOWNLONG_STEPPES,		33.4,  6.4)
	AddMob(66900,	L["Huggalon the Heart Watcher"],	Z.TOWNLONG_STEPPES,		37.2, 57.6)
	AddMob(68220,	L["Gastropod"],				Z.THRONE_OF_THUNDER,		 0.0,  0.0)
	AddMob(68476,	BN.HORRIDON,				Z.THRONE_OF_THUNDER,		 0.0,  0.0)
	AddMob(69017,	BN.PRIMORDIUS,				Z.THRONE_OF_THUNDER,		 0.0,  0.0)
	AddMob(69099,	BN.NALAK__THE_STORM_LORD,		Z.ISLE_OF_THUNDER,		59.8, 39.4)
	AddMob(69161,	BN.OONDASTA,				Z.ISLE_OF_GIANTS,		50.6, 54.4)
	AddMob(69251,	L["Quivering Filth"],			Z.ISLE_OF_THUNDER,		52.0, 80.6)
	AddMob(69427,	BN.DARK_ANIMUS,				Z.THRONE_OF_THUNDER,		 0.0,  0.0)
	AddMob(69712,	BN.JI_KUN,				Z.THRONE_OF_THUNDER,		 0.0,  0.0)
	AddMob(69808,	L["Sunreaver Construct"],		Z.ISLE_OF_THUNDER,		 0.0,  0.0)
	AddMob(69925,	L["Zandalari Dinomancer"],		Z.ISLE_OF_GIANTS,		 0.0,  0.0)
	AddMob(69944,	L["Sand Elemental"],			Z.THRONE_OF_THUNDER,		 0.0,  0.0)
	AddMob(69983,	L["Primal Direhorn"],			Z.ISLE_OF_GIANTS,		 0.0,  0.0)
	AddMob(70013,	L["Primal Direhorn Hatchling"],		Z.ISLE_OF_GIANTS,		 0.0,  0.0)
	AddMob(71152,	BN.PARAGONS_OF_THE_KLAXXI,		Z.SIEGE_OF_ORGRIMMAR,		 0.0,  0.0)
	AddMob(71504,	BN.SIEGECRAFTER_BLACKFUSE,		Z.SIEGE_OF_ORGRIMMAR,		 0.0,  0.0)
	AddMob(71734,	BN.SHA_OF_PRIDE,			Z.SIEGE_OF_ORGRIMMAR,		 0.0,  0.0)
	AddMob(71826,	L["Scary Sprite"],			Z.TIMELESS_ISLE,		 0.0,  0.0)
	AddMob(71865,	BN.GARROSH_HELLSCREAM,			Z.SIEGE_OF_ORGRIMMAR,		 0.0,  0.0)
	AddMob(71919,	L["Zhu-Gon the Sour"],			Z.TIMELESS_ISLE,		 0.0,  0.0)
	AddMob(71992,	L["Moonfang"],				Z.DARKMOON_ISLAND,		39.6, 46.0)
	AddMob(72767,	L["Jademist Dancer"],			Z.TIMELESS_ISLE,		27.2, 31.5)
	AddMob(72775,	L["Bufo"],				Z.TIMELESS_ISLE,		 0.0,  0.0)
	AddMob(72809,	L["Eroded Cliffdweller"],		Z.TIMELESS_ISLE,		63.6, 56.4)
	AddMob(72875,	L["Ordon Candlekeeper"],		Z.TIMELESS_ISLE,		55.2, 78.4)
	AddMob(72896,	L["Eternal Kilnmaster"],		Z.TIMELESS_ISLE,		68.0, 34.4)
	AddMob(72898,	L["High Priest of Ordos"],		Z.TIMELESS_ISLE,		49.6, 33.2)
	AddMob(72909,	L["Gu'chi the Swarmling"],		Z.TIMELESS_ISLE,		41.6, 78.4)
	AddMob(72970,	L["Golganarr"],				Z.TIMELESS_ISLE,		62.6, 63.6)
	AddMob(73162,	L["Foreboding Flame"],			Z.TIMELESS_ISLE,		43.4, 40.2)
	AddMob(73163,	L["Imperial Python"],			Z.TIMELESS_ISLE,		44.4, 65.5)
	AddMob(73166,	L["Monstrous Spineclaw"],		Z.TIMELESS_ISLE,		 0.0,  0.0)
	AddMob(73167,	L["Huolon"],				Z.TIMELESS_ISLE,		72.6, 48.8)
	AddMob(73169,	L["Jakur of Ordon"],			Z.TIMELESS_ISLE,		53.6, 83.0)
	AddMob(73171,	L["Champion of the Black Flame"],	Z.TIMELESS_ISLE,		70.6, 45.8)
	AddMob(73277,	L["Leafmender"],			Z.TIMELESS_ISLE,		67.3, 44.1)
	AddMob(73281,	L["Dread Ship Vazuvius"],		Z.TIMELESS_ISLE,		25.8, 23.2)
	AddMob(73282,	L["Garnia"],				Z.TIMELESS_ISLE,		 0.0,  0.0)
	AddMob(75435,	L["Yggdrel"],				Z.SHADOWMOON_VALLEY_DRAENOR,	48.8, 66.4)
	AddMob(77081,	L["The Lanticore"],			Z.UPPER_BLACKROCK_SPIRE,	00.0, 00.0)
	AddMob(77719,	L["Glimmerwing"],			Z.TALADOR,			33.2, 63.6)
	AddMob(77828,	L["Echo of Murmur"],			Z.TALADOR,			34.1, 57.3)
	AddMob(78710,	L["Kharazos the Triumphant"],		Z.TALADOR,			56.4, 65.2)
	AddMob(78713,	L["Galzomar"],				Z.TALADOR,			56.4, 65.0)
	AddMob(78715,	L["Sikthiss, Maiden of Slaughter"],	Z.TALADOR,			56.4, 65.4)
	AddMob(78867,	L["Breathless"],			Z.FROSTFIRE_RIDGE,		27.6, 50.0)
	AddMob(78872,	L["Klikixx"],				Z.TALADOR,			66.8, 85.4)
	AddMob(79524,	L["Hypnocroak"],			Z.SHADOWMOON_VALLEY_DRAENOR,	37.6, 49.0)
	AddMob(79629,	L["Stomper Kreego"],			Z.GORGROND,			38.2, 66.2)
	AddMob(79725,	L["Captain Ironbeard"],			Z.NAGRAND_DRAENOR,		34.6, 77.0)
	AddMob(80725,	L["Sulfurious"],			Z.GORGROND,			41.0, 61.2)
	AddMob(81001,	L["Nok-Karosh"],			Z.FROSTFIRE_RIDGE,		16.6, 39.2)
	AddMob(81330,	L["Warleader Tome"],			Z.NAGRAND_DRAENOR,		59.6, 64.0)
	AddMob(82085,	L["Bashiok"],				Z.GORGROND,			40.0, 79.0)
	AddMob(82261,	L["Darktide Boneshell"],		Z.SHADOWMOON_VALLEY_DRAENOR,	42.0, 77.4)
	AddMob(82262,	L["Darktide Husk"],			Z.SHADOWMOON_VALLEY_DRAENOR,	38.8, 78.6)
	AddMob(82326,	L["Ba'ruun"],				Z.SHADOWMOON_VALLEY_DRAENOR,	52.8, 16.6)
	AddMob(82374,	L["Rai'vosh"],				Z.SHADOWMOON_VALLEY_DRAENOR,	48.8, 22.4)
	AddMob(82415,	L["Shinri"],				Z.SHADOWMOON_VALLEY_DRAENOR,	63.2, 52.6)
	AddMob(82618,	L["Tor'goroth"],			Z.FROSTFIRE_RIDGE,		43.6,  8.8)
	AddMob(83401,	L["Netherspawn"],			Z.NAGRAND_DRAENOR,		47.6, 70.8)
	AddMob(84406,	L["Mandrakor"],				Z.GORGROND,			50.6, 53.2)
	AddMob(84911,	L["Demidos"],				Z.SHADOWMOON_VALLEY_DRAENOR,	46.0, 71.8)
	AddMob(85026,	L["Soul-Twister Torek"],		Z.SHADOWMOON_VALLEY_DRAENOR,	29.4, 46.3)
	AddMob(85250,	L["Fossilwood the Petrified"],		Z.GORGROND,			57.4, 68.6)
	AddMob(85504,	L["Rotcap"],				Z.SPIRES_OF_ARAK,		38.4, 27.8)
	AddMob(85531,	L["Erinys"],				Z.DARKMOON_ISLAND,		75.0, 41.6)
	AddMob(86257,	L["Basten"],				Z.GORGROND,			69.2, 44.6)
	AddMob(87308,	L["Gorok"],				Z.FROSTFIRE_RIDGE,		58.5, 18.5)
	AddMob(87352,	L["Gibblette the Cowardly"],		Z.FROSTFIRE_RIDGE,		66.6, 25.4)
	AddMob(87420,	BN.BLACKHAND,				Z.BLACKROCK_FOUNDRY,		 0.0,  0.0)
	AddMob(87493,	BN.RUKHMAR,				Z.SPIRES_OF_ARAK,		35.0, 32.0)
	AddMob(87668,	L["Orumo the Observer"],		Z.TALADOR,			31.4, 47.6)
	AddMob(90429,	L["Imp-Master Valessa"],		Z.TANAAN_JUNGLE,		31.6, 72.8)
	AddMob(90434,	L["Ceraxas"],				Z.TANAAN_JUNGLE,		31.4, 68.0)
	AddMob(90777,	L["High Priest Ikzan"],			Z.TANAAN_JUNGLE,		20.6, 40.0)
	AddMob(91093,	L["Bramblefell"],			Z.TANAAN_JUNGLE,		40.0, 69.8)
	AddMob(91227,	L["Remnant of the Blood Moon"],		Z.TANAAN_JUNGLE,		22.2, 50.8)
	AddMob(91331,	BN.ARCHIMONDE,				Z.HELLFIRE_CITADEL,		 0.0,  0.0)
	AddMob(91795,	L["Stormwing Matriarch"],		Z.STORMHEIM,			49.6, 72.0)
	AddMob(91892,	L["Thane Irglov the Merciless"],	Z.STORMHEIM,			41.4, 71.6)
	AddMob(92117,	L["Gorebeak"],				Z.VALSHARAH,			59.6, 77.6)
	AddMob(92152,	L["Whitewater Typhoon"],		Z.STORMHEIM,			36.2, 51.8)
	AddMob(92180,	L["Seersei"],				Z.VALSHARAH,			41.0, 80.0)
	AddMob(92965,	L["Darkshade"],				Z.VALSHARAH,			44.2, 51.8)
	AddMob(93076,	L["Captain Ironbeard"],			Z.TANAAN_JUNGLE,		36.0, 80.0)
	AddMob(94485,	L["Pollous the Fetid"],			Z.VALSHARAH,			67.6, 44.8)
	AddMob(95044,	L["Terrorfist"],			Z.TANAAN_JUNGLE,		15.4, 63.4)
	AddMob(95053,	L["Deathtalon"],			Z.TANAAN_JUNGLE,		23.2, 40.4)
	AddMob(95054,	L["Vengeance"],				Z.TANAAN_JUNGLE,		32.4, 74.0)
	AddMob(95056,	L["Doomroller"],			Z.TANAAN_JUNGLE,		47.0, 52.6)
	AddMob(95067,	BN.SHADOW_LORD_ISKAR,			Z.HELLFIRE_CITADEL,		 0.0,  0.0)
	AddMob(95221,	L["Mad Henryk"],			Z.VALSHARAH,			47.0, 57.6)
	AddMob(96410,	L["Majestic Elderhorn"],		Z.HIGHMOUNTAIN,			46.8, 32.8)
	AddMob(96536,	L["Salty Dreg"],			Z.SHADOWMOON_VALLEY_DRAENOR,	41.0, 78.0)
	AddMob(96637,	L["Boneship Reveler"],			Z.SHADOWMOON_VALLEY_DRAENOR,	41.0, 78.0)
	AddMob(97203,	L["Tenpak Flametotem"],			Z.HIGHMOUNTAIN,			42.0, 41.6)
	AddMob(97630,	L["Soulthirster"],			Z.HELHEIM,			30.6, 61.8)
	AddMob(98198,	L["Rukdug"],				Z.NAGRAND_DRAENOR,		25.9, 34.8)
	AddMob(98199,	L["Pugg"],				Z.NAGRAND_DRAENOR,		28.2, 29.7)
	AddMob(98200,	L["Guk"],				Z.NAGRAND_DRAENOR,		23.8, 38.7)
	AddMob(98283,	L["Drakum"],				Z.TANAAN_JUNGLE,		83.0, 43.0)
	AddMob(98284,	L["Gondar"],				Z.TANAAN_JUNGLE,		80.0, 56.0)
	AddMob(98285,	L["Smashum Grabb"],			Z.TANAAN_JUNGLE,		88.0, 55.0)
	AddMob(101878,	L["Felsoul Inquisitor"],		Z.SURAMAR,			28.4, 82.6)
	AddMob(102679,	BN.DRAGONS_OF_NIGHTMARE,		Z.THE_EMERALD_NIGHTMARE,	 0.0,  0.0)
	AddMob(104415,	BN.CHRONOMATIC_ANOMALY,			Z.THE_NIGHTHOLD,		 0.0,  0.0)
	AddMob(105503,	BN.GULDAN,				Z.THE_NIGHTHOLD,		 0.0,  0.0)
	AddMob(107846,	L["Pinchshank"],			Z.SURAMAR,			66.6, 67.0)
	AddMob(108715,	L["Ol' Eary"],				Z.BROKEN_ISLES,			38.0, 65.0)
	AddMob(111197,	L["Anax"],				Z.SURAMAR,			34.8, 51.4)
	AddMob(111573,	L["Kosumoth the Hungering"],		Z.BROKEN_ISLES,			48.0, 48.6)
	AddMob(114895,	BB.Nightbane,				Z.KARAZHAN,			 0.0,  0.0)
	AddMob(115767,	BN.MISTRESS_SASSZINE,			Z.TOMB_OF_SARGERAS,		 0.0,  0.0)
	AddMob(119629,	L["Lord Hel'Nurath"],			Z.BROKEN_SHORE,			45.0, 51.3)
	AddMob(122899,	L["Death Metal Knight"],		Z.DARKMOON_ISLAND,		65.6, 68.2)
	AddMob(122958,	L["Blistermaw"],			Z.ANTORAN_WASTES,		61.8, 37.6)
	AddMob(123464,	L["Sister Subversia"],			Z.KROKUUN,			52.8, 31.0)
	AddMob(124828,	BN.ARGUS_THE_UNMAKER,			Z.ANTORUS__THE_BURNING_THRONE,	0.0, 0.0)
	AddMob(126040,	L["Puscilla"],				Z.ANTORAN_WASTES,		64.0, 21.0)
	AddMob(126199,	L["Vrax'thul"],				Z.ANTORAN_WASTES,		53.0, 36.6)
	AddMob(126338,	L["Wrath-Lord Yarez"],			Z.ANTORAN_WASTES,		61.8, 64.4)
	AddMob(126852,	L["Wrangler Kravos"],			Z.MACAREE,			55.6, 60.6)
	AddMob(126862,	L["Baruut the Bloodthirsty"],		Z.MACAREE,			44.6, 60.4)
	AddMob(126865,	L["Vigilant Thanos"],			Z.MACAREE,			36.4, 23.6)
	AddMob(126866,	L["Vigilant Kuro"],			Z.MACAREE,			63.8, 64.6)
	AddMob(126867,	L["Venomtail Skyfin"],			Z.MACAREE,			33.6, 48.6)
	AddMob(126887,	L["Ataxon"],				Z.MACAREE,			30.6, 41.6)
	AddMob(126900,	L["Instructor Tarahna"],		Z.MACAREE,			62.6, 49.6)
	AddMob(126912,	L["Skreeg the Devourer"],		Z.MACAREE,			49.8, 10.0)
	AddMob(126915,	BN.FELHOUNDS_OF_SARGERAS,		Z.ANTORUS__THE_BURNING_THRONE,	0.0, 0.0)
	AddMob(126983,	BN.HARLAN_SWEETE,			Z.FREEHOLD,			0.0, 0.0)
	AddMob(127288,	L["Houndmaster Kerrax"],		Z.ANTORAN_WASTES,		63.8, 22.0)
	AddMob(127581,	L["The Many-Faced Devourer"],		Z.ANTORAN_WASTES,		54.8, 39.0)
	AddMob(127700,	L["Squadron Commander Vishax"],		Z.ANTORAN_WASTES,		84.6, 81.0)
	AddMob(127703,	L["Doomcaster Suprax"],			Z.ANTORAN_WASTES,		58.2, 12.6)
	AddMob(127705,	L["Mother Rosula"],			Z.ANTORAN_WASTES,		66.6, 17.8)
	AddMob(127706,	L["Rezira the Seer"],			Z.ANTORAN_WASTES,		65.0, 82.6)
	AddMob(132578,	L["Qroshekx"],				Z.SILITHUS,			59.6, 13.2)
	AddMob(132580,	L["Ssinkrix"],				Z.SILITHUS,			54.6, 79.6)
	AddMob(132584,	L["Xaarshej"],				Z.SILITHUS,			29.6, 35.8)
	AddMob(133007,	BN.UNBOUND_ABOMINATION,			Z.THE_UNDERROT,			0.0,  0.0)
	AddMob(136160,	BN.DAZAR_THE_FIRST_KING,		Z.KINGS_REST, 			0.0,  0.0)
	AddMob(141668,	L["Echo of Myzrael"],			Z.ARATHI_HIGHLANDS,		58.0, 35.0)
	AddMob(142423,	L["Overseer Krix"],			Z.ARATHI_HIGHLANDS,		33.0, 37.6)
	AddMob(142433,	L["Fozruk"],				Z.ARATHI_HIGHLANDS,		60.8, 32.6)
	AddMob(142435,	L["Plaguefeather"],			Z.ARATHI_HIGHLANDS,		37.2, 65.0)
	AddMob(142436,	L["Ragebeak"],				Z.ARATHI_HIGHLANDS,		18.6, 27.8)
	AddMob(142437,	L["Skullripper"],			Z.ARATHI_HIGHLANDS,		57.0, 44.0)
	AddMob(142438,	L["Venomarus"],				Z.ARATHI_HIGHLANDS,		57.0, 54.6)
	AddMob(142739,	L["Knight-Captain Aldrin"],		Z.ARATHI_HIGHLANDS,		49.4, 39.4)
	AddMob(142440,	L["Yogursa"],				Z.ARATHI_HIGHLANDS,		14.6, 37.0)
	AddMob(142508,	L["Branchlord Aldrus"],			Z.ARATHI_HIGHLANDS,		22.4, 20.2)
	AddMob(142688,	L["Darbel Montrose"],			Z.ARATHI_HIGHLANDS,		50.6, 36.8)
	AddMob(142692,	L["Nimar the Slayer"],			Z.ARATHI_HIGHLANDS,		67.6, 60.8)
	AddMob(142709,	L["Beastrider Kama"],			Z.ARATHI_HIGHLANDS,		66.2, 67.4)
	AddMob(142716,	L["Man-Hunter Rog"],			Z.ARATHI_HIGHLANDS,		52.0, 76.6)
	AddMob(142741,	L["Doomrider Helgrim"],			Z.ARATHI_HIGHLANDS,		53.8, 57.2)

	self.InitMob = nil
end