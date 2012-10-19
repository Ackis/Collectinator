--[[
************************************************************************
Vendor.lua
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
local FOLDER_NAME, private	= ...

local LibStub = _G.LibStub

local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BB = LibStub("LibBabble-Boss-3.0"):GetLookupTable()

local BN = private.BOSS_NAMES
local Z = private.ZONE_NAMES

private.vendor_list = {}

function addon:InitVendor()
	local function AddVendor(id_num, name, zone_name, x, y, faction)
		private:AddListEntry(private.vendor_list, id_num, name, zone_name, x, y, faction)
	end

	AddVendor(384,		L["Katie Hunter"],		Z.ELWYNN_FOREST,		84.0,	65.4,	"Alliance")
	AddVendor(1261,		L["Veron Amberstill"],		Z.DUN_MOROGH,			70.6,	48.8,	"Alliance")
	AddVendor(1460,		L["Unger Statforth"],		Z.WETLANDS,			9.2,	56.6,	"Alliance")
	AddVendor(3362,		L["Ogunaro Wolfrunner"],	Z.ORGRIMMAR,			61.0,	35.2,	"Horde")
	AddVendor(3685,		L["Harb Clawhoof"],		Z.MULGORE,			47.6,	58.0,	"Horde")
	AddVendor(4730,		L["Lelanai"],			Z.DARNASSUS,			42.6,	32.8,	"Alliance")
	AddVendor(4731,		L["Zachariah Post"],		Z.TIRISFAL_GLADES,		61.8,	51.8,	"Horde")
	AddVendor(4885,		L["Gregor MacVince"],		Z.DUSTWALLOW_MARSH,		65.2,	51.4,	"Alliance")
	AddVendor(7952,		L["Zjolnir"],			Z.DUROTAR,			55.2,	75.6,	"Horde")
	AddVendor(7955,		L["Milli Featherwhistle"],	Z.DUN_MOROGH,			56.2,	46.2,	"Alliance")
	AddVendor(12783,	L["Lieutenant Karter"],		Z.STORMWIND_CITY,		76.2,	65.6,	"Alliance")
	AddVendor(12796,	L["Raider Bork"],		Z.ORGRIMMAR,			47.8,	73.6,	"Horde")
	AddVendor(13216,	L["Gaelden Hammersmith"],	Z.ALTERAC_VALLEY,		44.2,	18.2,	"Alliance")
	AddVendor(13217,	L["Thanthaldis Snowgleam"],	Z.HILLSBRAD_FOOTHILLS,		44.6,	46.6,	"Alliance")
	AddVendor(13218,	L["Grunnda Wolfheart"],		Z.ALTERAC_VALLEY,		49.4,	82.4,	"Horde")
	AddVendor(13219,	L["Jorek Ironside"],		Z.HILLSBRAD_FOOTHILLS,		58.0,	33.6,	"Horde")
	AddVendor(16264,	L["Winaestra"],			Z.EVERSONG_WOODS,		61.0,	54.6,	"Horde")
	AddVendor(17584,	L["Torallius the Pack Handler"],Z.THE_EXODAR,			81.6,	52.6,	"Alliance")
	AddVendor(17904,	L["Fedryen Swiftspear"],	Z.ZANGARMARSH,			79.2,	63.8,	"Neutral")
	AddVendor(20494,	L["Dama Wildmane"],		Z.SHADOWMOON_VALLEY,		29.0,	29.4,	"Horde")
	AddVendor(20510,	L["Brunn Flamebeard"],		Z.SHADOWMOON_VALLEY,		37.6,	56.0,	"Alliance")
	AddVendor(21474,	L["Coreiel"],			Z.NAGRAND,			42.8,	42.6,	"Horde")
	AddVendor(21485,	L["Aldraan"],			Z.NAGRAND,			42.8,	42.6,	"Alliance")
	AddVendor(23367,	L["Grella"],			Z.TEROKKAR_FOREST,		64.2,	66.2,	"Neutral")
	AddVendor(24468,	L["Pol Amberstill"],		Z.DUN_MOROGH,			53.6,	38.6,	"Alliance")
	AddVendor(24510,	L["Driz Tumblequick"],		Z.DUROTAR,			42.6,	17.6,	"Horde")
	AddVendor(28951,	L["Breanni"],			Z.DALARAN,			40.5,	35.2,	"Neutral")
	AddVendor(29587,	L["Dread Commander Thalanor"],	Z.EASTERN_PLAGUELANDS,		84.0,	49.8,	"Neutral")
	AddVendor(32216,	L["Mei Francis"],		Z.DALARAN,			58.6,	43.2,	"Neutral")
	AddVendor(32294,	L["Knight Dameron"],		Z.WINTERGRASP,			51.6,	17.6,	"Alliance")
	AddVendor(32533,	L["Cielstrasza"],		Z.DRAGONBLIGHT,			59.8,	53.0,	"Neutral")
	AddVendor(32296,	L["Stone Guard Mukar"],		Z.WINTERGRASP,			51.6,	17.6,	"Horde")
	AddVendor(32540,	L["Lillehoff"],			Z.THE_STORM_PEAKS,		66.0,	61.4,	"Neutral")
	AddVendor(33307,	L["Corporal Arthur Flew"],	Z.ICECROWN,			76.4,	19.2,	"Alliance")
	AddVendor(33310,	L["Derrick Brindlebeard"],	Z.ICECROWN,			76.4,	19.4,	"Alliance")
	AddVendor(33553,	L["Freka Boodaxe"],		Z.ICECROWN,			76.4,	24.2,	"Horde")
	AddVendor(33554,	L["Samamba"],			Z.ICECROWN,			76.0,	24.4,	"Horde")
	AddVendor(33555,	L["Eliza Killian"],		Z.ICECROWN,			76.4,	24.0,	"Horde")
	AddVendor(33556,	L["Doru Thunderhorn"],		Z.ICECROWN,			76.2,	24.4,	"Horde")
	AddVendor(33557,	L["Trellis Morningsun"],	Z.ICECROWN,			76.2,	23.8,	"Horde")
	AddVendor(33650,	L["Rillie Spindlenut"],		Z.ICECROWN,			76.4,	19.6,	"Alliance")
	AddVendor(33653,	L["Rook Hawkfist"],		Z.ICECROWN,			76.2,	19.2,	"Alliance")
	AddVendor(33657,	L["Irisee"],			Z.ICECROWN,			76.2,	19.2,	"Alliance")
	AddVendor(34772,	L["Vasarin Redmorn"],		Z.ICECROWN,			76.2,	24.0,	"Horde")
	AddVendor(34881,	L["Hiren Loresong"],		Z.ICECROWN,			76.2,	19.6,	"Alliance")
	AddVendor(34885,	L["Dame Evniki Kapsalis"],	Z.ICECROWN,			69.4,	23.2,	"Neutral")
	AddVendor(35099,	L["Bana Wildmane"],		Z.HELLFIRE_PENINSULA,		54.2,	41.6,	"Horde")
	AddVendor(35101,	L["Grunda Bronzewing"],		Z.HELLFIRE_PENINSULA,		54.2,	62.6,	"Alliance")
	AddVendor(35131,	L["Durgan Thunderbeak"],	Z.BOREAN_TUNDRA,		58.8,	68.2,	"Alliance")
	AddVendor(35132,	L["Tohfo Skyhoof"],		Z.BOREAN_TUNDRA,		42.2,	55.4,	"Horde")
	AddVendor(43694,	L["Katie Stokx"],		Z.STORMWIND_CITY,		77.0,	67.8,	"Alliance")
	AddVendor(43768,	L["Tannec Stonebeak"],		Z.STORMWIND_CITY,		71.4,	72.2,	"Alliance")
	AddVendor(46572,	L["Goram"],			Z.ORGRIMMAR,			48.2,	75.6,	"Horde")
	AddVendor(46602,	L["Shay Pressler"],		Z.STORMWIND_CITY,		64.6,	76.8,	"Alliance")
	AddVendor(47328,	L["Quartermaster Brazie"],	Z.TOL_BARAD_PENINSULA,		72.6,	62.6,	"Alliance")
	AddVendor(48510,	L["Kall Worthaton"],		Z.ORGRIMMAR,			36.0,	86.4,	"Horde")
	AddVendor(48531,	L["Pogg"],			Z.TOL_BARAD_PENINSULA,		54.6,	81.0,	"Horde")
	AddVendor(51495,	L["Steeg Haskell"],		Z.IRONFORGE,			36.6,	84.6,	"Alliance")
	AddVendor(51496,	L["Kim Horn"],			Z.UNDERCITY,			69.6,	43.8,	"Horde")
	AddVendor(51503,	L["Randah Songhorn"],		Z.THUNDER_BLUFF,		37.6,	62.8,	"Horde")
	AddVendor(51504,	L["Velia Moonbow"],		Z.DARNASSUS,			64.6,	37.6,	"Alliance")
	AddVendor(51512,	L["Mirla Silverblaze"],		Z.DALARAN,			52.6,	56.6,	"Neutral")
	AddVendor(52268,	L["Riha"],			Z.SHATTRATH_CITY,		58.6,	46.6,	"Neutral")
	AddVendor(55285,	L["Astrid Langstrump"],		Z.DARNASSUS,			48.6,	22.2,	"Alliance")
	AddVendor(58414,	L["San Redscale"],		Z.THE_JADE_FOREST,		56.6,	44.4,	"Neutral")
	AddVendor(58706,	L["Gina Mudclaw"],		Z.VALLEY_OF_THE_FOUR_WINDS,	53.2,	51.6,	"Neutral")
	AddVendor(59908,	L["Jaluu the Generous"],	Z.VALE_OF_ETERNAL_BLOSSOMS,	74.2,	42.6,	"Neutral")
	AddVendor(63721,	L["Nat Pagle"],			Z.KRASARANG_WILDS,		68.4,	43.4,	"Neutral")
	AddVendor(63994,	L["Challenger Wuli"],		Z.SHRINE_OF_TWO_MOONS,		61.0,	21.0,	"Horde")
	AddVendor(64001,	L["Sage Lotusbloom"],		Z.SHRINE_OF_TWO_MOONS,		62.6,	23.2,	"Horde")
	AddVendor(64028,	L["Challenger Soong"],		Z.SHRINE_OF_SEVEN_STARS,	86.2,	61.6,	"Alliance")
	AddVendor(64032,	L["Sage Whiteheart"],		Z.SHRINE_OF_SEVEN_STARS,	84.6,	63.6,	"Alliance")
	AddVendor(64518,	L["Uncle Bigpocket"],		Z.KUN_LAI_SUMMIT,		65.4,	61.6,	"Neutral")
	AddVendor(64595,	L["Rushi the Fox"],		Z.TOWNLONG_STEPPES,		48.8,	70.6,	"Neutral")
	AddVendor(64599,	L["Ambersmith Zikk"],		Z.DREAD_WASTES,			55.0,	35.6,	"Neutral")
	AddVendor(64605,	L["Tan Shin Tiao"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	82.2,	29.4,	"Neutral")
	AddVendor(66973,	L["Kay Featherfall"],		Z.VALE_OF_ETERNAL_BLOSSOMS,	82.2,	34.0,	"Neutral")

	self.InitVendor = nil
end
