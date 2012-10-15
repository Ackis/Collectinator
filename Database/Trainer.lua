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
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name, true)

local Z = private.ZONE_NAMES

private.trainer_list = {}

function private:AddTrainer(id_num, trainer_name, zone_name, coord_x, coord_y, faction)
	if _G.type(trainer_name) == "number" then
		local entry = self:AddListEntry(self.trainer_list, id_num, _G.GetSpellInfo(trainer_name), zone_name, coord_x, coord_y, faction)
		entry.spell_id = trainer_name
	else
		self:AddListEntry(self.trainer_list, id_num, L[trainer_name], zone_name, coord_x, coord_y, faction)
	end
end

function addon:InitTrainer()

	private:AddTrainer(927,		L["Brother Wilhelm"],		Z.ELWYNN_FOREST,	41.0,	65.8, "Alliance")
	private:AddTrainer(928,		L["Lord Grayson Shadowbreaker"],Z.STORMWIND_CITY,	52.6,	45.0, "Alliance")
	private:AddTrainer(1232,	L["Azar Stronghammer"],		Z.DUN_MOROGH,		54.6,	50.4, "Alliance")
	private:AddTrainer(5148,	L["Beldruk Doombrow"],		Z.IRONFORGE,		24.6,	 5.6, "Alliance")
	private:AddTrainer(5149,	L["Brandur Ironhammer"],	Z.IRONFORGE,		24.0,	 6.8, "Alliance")
	private:AddTrainer(5491,	L["Arthur the Faithful"],	Z.STORMWIND_CITY,	52.6,	45.4, "Alliance")
	private:AddTrainer(5492,	L["Katherine the Pure"],	Z.STORMWIND_CITY,	52.6,	45.0, "Alliance")
	private:AddTrainer(16681,	L["Champion Bachi"], 		Z.SILVERMOON_CITY, 	92.0,	37.6, "Horde")
	private:AddTrainer(17843,	L["Tullas"], 			Z.AZUREMYST_ISLE, 	48.4,	49.6, "Alliance")
	private:AddTrainer(17844,	L["Vindicator Aesom"], 		Z.BLOODMYST_ISLE, 	55.6,	55.6, "Alliance")
	private:AddTrainer(20406,	L["Champion Cyssa Dawnrose"], 	Z.UNDERCITY,	 	57.8,	90.8, "Horde")
	private:AddTrainer(23128,	L["Master Pyreanor"], 		Z.ORGRIMMAR,	 	49.2,	71.2, "Horde")
	private:AddTrainer(44725,	L["Sunwalker Atohmo"], 		Z.ORGRIMMAR,	 	45.2,	53.6, "Horde")
	private:AddTrainer(49793,	L["Faldoc Stonefaith"],		Z.LOCH_MODAN,		35.4,	48.4, "Alliance")
	private:AddTrainer(50012,	L["Blood Knight Argaron"],	Z.SHATTRATH_CITY, 	52.8,	52.6, "Horde")
	private:AddTrainer(50023,	L["Ordo"], 			Z.SHATTRATH_CITY, 	55.8,	37.2, "Alliance")
	private:AddTrainer(50028,	L["Chintoka"], 			Z.NORTHERN_BARRENS, 	49.8,	58.6, "Horde")
	private:AddTrainer(50150,	L["Nelur Lightsown"], 		Z.DALARAN,	 	60.2,	25.8, "Horde")
	private:AddTrainer(50160,	L["Rulen Lightsreap"], 		Z.DALARAN,	 	39.6,	62.6, "Alliance")

	self.InitTrainer = nil
end
