--[[
************************************************************************
Scanner.lua
Database scanning for Collectinator
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
-- Upvalued Lua API.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local ipairs, pairs = _G.ipairs, _G.pairs
local tonumber, tostring = _G.tonumber, _G.tostring
local type = _G.type

-- Libraries
local bit = _G.bit
local string = _G.string
local table = _G.table

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub

local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local LPJ = LibStub("LibPetJournal-2.0")

-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
local F = private.FILTER_IDS
local A = private.ACQUIRE_TYPES
local FS = private.LOCALIZED_FACTION_STRINGS
local REP = private.LOCALIZED_REPUTATION_LEVELS
local Q = private.ITEM_QUALITY_NAMES

-------------------------------------------------------------------------------
-- Functions/methods
-------------------------------------------------------------------------------
function private.LoadAllCollectables()
	local collectable_list = private.collectable_list

	if addon.db.profile.autoloaddb then
		for identifier, name in pairs(private.ORDERED_COLLECTIONS) do
			addon:InitializeCollection(name)
		end
	end
	return collectable_list
end

-------------------------------------------------------------------------------
-- Creates a reverse lookup for a recipe list
-------------------------------------------------------------------------------
local GetReverseLookup
do
	local reverse_lookup = {}

	function GetReverseLookup(collectable_list)
		if not collectable_list then
			addon:Debug(L["DATAMINER_NODB_ERROR"])
			return
		end
		table.wipe(reverse_lookup)

		for i in pairs(collectable_list) do
			--if t[collectable_list[i].name] then addon:Print("Dupe: " .. i) end
			reverse_lookup[collectable_list[i].name] = i
		end
		return reverse_lookup
	end

end

-------------------------------------------------------------------------------
-- Tooltip for data-mining.
-------------------------------------------------------------------------------
local COLDatamineTT = _G.CreateFrame("GameTooltip", "COLDatamineTT", _G.UIParent, "GameTooltipTemplate")

do
	local ORDERED_COLLECTIONS = private.ORDERED_COLLECTIONS

	local intermediary_collectable_list = {}

	local function Sort_AscID(a, b)
		local reca, recb = private.collectable_list[a], private.collectable_list[b]

		return reca.creature_id < recb.creature_id
	end

	local function SortRecipesByID()
		local sorted_collectables = addon.sorted_collectables
		table.wipe(sorted_collectables)

		for creature_id in pairs(intermediary_collectable_list) do
			table.insert(sorted_collectables, creature_id)
		end
		table.sort(sorted_collectables, Sort_AscID)
	end

	-------------------------------------------------------------------------------
	--- Scans the items in the specified profession
	-------------------------------------------------------------------------------
	local function CollectionScan(collection_name)
		table.wipe(intermediary_collectable_list)

		local profession_collectable_list = private.profession_collectable_list[collection_name]

		for spell_id in pairs(profession_collectable_list) do
			intermediary_collectable_list[spell_id] = profession_collectable_list[spell_id]
		end
		local output = private.TextDump
		output:Clear()

		SortRecipesByID()

		-- Parse the entire recipe database
		for index, spell_id in ipairs(addon.sorted_recipes) do
			addon:ScanTooltipRecipe(spell_id, false, true)
		end

		if output:Lines() == 0 then
			addon:Debug("ProfessionScan(): output is empty.")
		end
		output:Display()
		ARLDatamineTT:Hide()
	end

	local function ScheduleProfessionScan(collection_name)
		if addon:InitializeProfession(collection_name) then
			addon:ScheduleTimer(ProfessionScan, 2, collection_name)
			addon:Printf("%s had to be loaded - starting scan in 2 seconds to ensure everything is in the cache.", collection_name)
		else
			ProfessionScan(collection_name)
		end
	end

	--- Parses all recipes for a specified profession, scanning their tool tips.
	-- @name AckisRecipeList:ScanCollection
	-- @usage AckisRecipeList:ScanCollection("first aid")
	-- @param prof_name The profession name or the spell ID of it, which you wish to scan.
	-- @return Recipes in the given profession have their tooltips scanned.
	function addon:ScanCollection(input_text)
		if type(input_text) == "number" then
			input_text = _G.GetSpellInfo(input_text)
		end
		input_text = input_text:lower()

		if input_text == "all" then
			for index, collection_name in ipairs(ORDERED_COLLECTIONS) do
				ScheduleProfessionScan(collection_name)
			end
			return
		end

		for index, collection_name in ipairs(ORDERED_COLLECTIONS) do
			if input_text == collection_name:lower() then
				ScheduleProfessionScan(collection_name)
				return
			end
		end
		self:Debug(L["DATAMINER_NODB_ERROR"])
	end

	local function CollectableDump(id, single)
		local collectable = private.collectable_list[id or 1]

		if single and not collectable then
			addon:Debug("Invalid collectable ID: %s", id or "nil")
			return
		end
		collectable:Dump()
	end

	-------------------------------------------------------------------------------
	--- Dumps the items in the specified profession
	-------------------------------------------------------------------------------
	local function CollectionDump(collection_name)
		addon:InitializeProfession(collection_name)
		table.wipe(intermediary_collectable_list)

		local profession_collectable_list = private.profession_collectable_list[collection_name]

		for spell_id in pairs(profession_collectable_list) do
			intermediary_collectable_list[spell_id] = profession_collectable_list[spell_id]
		end
		SortRecipesByID()

		local output = private.TextDump
		output:Clear()

		for index, spell_id in ipairs(addon.sorted_recipes) do
			RecipeDump(spell_id, false)
		end
		output:Display()
	end

	function addon:DumpRecipe(id_num)
		local output = private.TextDump
		output:Clear()
		RecipeDump(id_num, true)
		output:Display()
	end

	function addon:DumpCollection(input_text)
		if type(input_text) == "number" then
			input_text = _G.GetSpellInfo(input_text)
		end
		input_text = input_text:lower()

		if input_text == "all" then
			for index, collection_name in ipairs(ORDERED_COLLECTIONS) do
				CollectionDump(collection_name)
			end
		end

		for index, collection_name in ipairs(ORDERED_COLLECTIONS) do
			if input_text == collection_name:lower() then
				CollectionDump(collection_name)
				return
			end
		end
		self:Debug(L["DATAMINER_NODB_ERROR"])
	end

end	-- do

local RECIPE_TYPES = {
	-- JC
	["design: "] = true,
	-- LW or Tailoring
	["pattern: "] = true,
	-- Alchemy or Cooking
	["recipe: "] = true,
	-- BS
	["plans: "] = true,
	-- Enchanting
	["formula: "] = true,
	-- Engineering
	["schematic: "] = true,
	-- First Aid
	["manual: "] = true,
	-- Inscription
	["technique: "] = true,

	["alchemy: "] = true,
	["blacksmithing: "] = true,
	["cooking: "] = true,
	["enchanting: "] = true,
	["engineering: "] = true,
	["first aid: "] = true,
	["inscription: "] = true,
	["jewelcrafting: "] = true,
	["leatherworking: "] = true,
	["tailoring: "] = true,
}

--- Scans the items on a vendor, determining which recipes are available if any and compares it with the database entries
-- @name AckisRecipeList:ScanVendor
-- @usage AckisRecipeList:ScanVendor()
-- @return Obtains all the vendor information on tradeskill recipes and attempts to compare the current vendor with the internal database
--[[
do
	local output = private.TextDump
	local RECIPE_ITEM_TO_SPELL_MAP

	local function NormalizeVendorData(spell_id, supply, vendor_id, vendor_name)
		local recipe = private.collectable_list[spell_id]
		local acquire_data = recipe and recipe.acquire_data
		local vendor_data = acquire_data and acquire_data[A.VENDOR]
		local rep_data = acquire_data and acquire_data[A.REPUTATION]
		local matching_vendor = false

		if vendor_data then
			for id_num in pairs(vendor_data) do
				if id_num == vendor_id then
					matching_vendor = true
					break
				end
			end
		elseif rep_data then
			for id_num, info in pairs(rep_data) do
				if matching_vendor then
					break
				end

				for rep_level, level_info in pairs(info) do
					for rep_vendor_id in pairs(level_info) do
						if rep_vendor_id == vendor_id then
							matching_vendor = true
						end
					end
				end
			end
		end
		local vendor_entry = private.vendor_list[vendor_id]
		local vendor_x, vendor_y = _G.GetPlayerMapPosition("player")
		vendor_x = ("%.2f"):format(vendor_x * 100)
		vendor_y = ("%.2f"):format(vendor_y * 100)

		if vendor_entry then
			if vendor_entry.coord_x ~= vendor_x or vendor_entry.coord_y ~= vendor_y then
				output:AddLine(("%s appears to have different coordinates (%s, %s) than those in the database (%s, %s)."):format(vendor_name, vendor_entry.coord_x, vendor_entry.coord_y, vendor_x, vendor_y))
				vendor_entry.coord_x = vendor_x
				vendor_entry.coord_y = vendor_y
			end
		else
			output:AddLine(("%s was not found in the vendor list"):format(vendor_name))

			if not L[vendor_name] then
				L[vendor_name] = true
			end
			_G.SetMapToCurrentZone() -- Make sure were are looking at the right zone
			private:AddListEntry(private.vendor_list, vendor_id, L[vendor_name], _G.GetRealZoneText(), vendor_x, vendor_y, _G.UnitFactionGroup("target") or "Neutral")
		end

		if matching_vendor and vendor_entry and vendor_entry.item_list then
			local reported_supply = vendor_entry.item_list[spell_id]

			if reported_supply == true and supply > -1 then
				recipe:AddLimitedVendor(vendor_id, supply)
				output:AddLine(("Limited quantity for \"%s\" (%d) found on vendor %d - listed as unlimited quantity."):format(recipe.name, spell_id, vendor_id))
			elseif type(reported_supply) ~= "boolean" and supply == -1 then
				recipe:AddVendor(vendor_id)
				output:AddLine(("Unlimited quantity for \"%s\" (%d) found on vendor %d - listed as limited quantity."):format(recipe.name, spell_id, vendor_id))
			end

			if not recipe:HasFilter("common1", "VENDOR") and not recipe:HasFilter("common1", "SEASONAL") then
				recipe:AddFilters(F.VENDOR)
				output:AddLine(("%d: Vendor flag was not set."):format(spell_id))
			end
		elseif not matching_vendor then
			if supply > -1 then
				recipe:AddLimitedVendor(vendor_id, supply)
			else
				recipe:AddVendor(vendor_id)
			end

			if not recipe:HasFilter("common1", "VENDOR") and not recipe:HasFilter("common1", "SEASONAL") then
				recipe:AddFilters(F.VENDOR)
				output:AddLine(("%d: Vendor flag was not set."):format(spell_id))
			end
			output:AddLine(("Vendor ID missing from \"%s\" %d."):format(recipe and recipe.name or _G.UNKNOWN, spell_id))
		end
	end

	function addon:ScanVendor()
		if not _G.UnitExists("target") or _G.UnitIsPlayer("target") or _G.UnitIsEnemy("player", "target") then
			self:Debug(L["DATAMINER_VENDOR_NOTTARGETTED"])
			return
		end
		local collectable_list = private.LoadAllRecipes()		-- Get internal database

		if not collectable_list then
			self:Debug(L["DATAMINER_NODB_ERROR"])
			return
		end
		local vendor_name = _G.UnitName("target")
		local vendor_id = private.MobGUIDToIDNum(_G.UnitGUID("target"))

		if not RECIPE_ITEM_TO_SPELL_MAP then
			RECIPE_ITEM_TO_SPELL_MAP = {}

			for spell_id, recipe in pairs(private.collectable_list) do
				local recipe_item_id = recipe:RecipeItemID()

				if recipe_item_id then
					RECIPE_ITEM_TO_SPELL_MAP[recipe_item_id] = spell_id
				end
			end
		end
		output:Clear()

		for index = 1, _G.GetMerchantNumItems(), 1 do
			local item_name, _, _, _, supply = _G.GetMerchantItemInfo(index)

			if item_name then
				local match_text = item_name:match("%a+: ")

				if match_text and RECIPE_TYPES[match_text:lower()] then
					local item_id = private.ItemLinkToID(_G.GetMerchantItemLink(index))
					local spell_id = RECIPE_ITEM_TO_SPELL_MAP[item_id]

					if spell_id then
						addon:ScanTooltipRecipe(spell_id, true, true)
						NormalizeVendorData(spell_id, supply, vendor_id, vendor_name)
					else
						for spell_id, recipe in pairs(private.collectable_list) do
							local recipe_type, match_text = (":"):split(item_name, 2)

							if recipe.name == match_text:trim() then
								recipe:SetRecipeItemID(item_id)
								RECIPE_ITEM_TO_SPELL_MAP[item_id] = spell_id
								NormalizeVendorData(spell_id, supply, vendor_id, vendor_name)
							end
						end
						--@debug@
						output:AddLine(("Spell ID not found for recipe item %d (%s)"):format(item_id, item_name))
						--@end-debug@
					end
				end
			end
		end

		if output:Lines() > 0 then
			output:InsertLine(1, ("ARL Version: %s"):format(self.version))
			output:InsertLine(2, L["DATAMINER_VENDOR_INFO"]:format(vendor_name, vendor_id))
			output:Display()
		end
		ARLDatamineTT:Hide()
	end
end	-- do
]]--
--- Parses all the recipes in the database, and scanning their tooltips.
-- @name AckisRecipeList:TooltipScanDatabase
-- @usage AckisRecipeList:TooltipScanDatabase()
-- @return Entire recipe database has its tooltips scanned.
function addon:TooltipScanDatabase()
	local collectable_list = private.LoadAllRecipes()

	if not collectable_list then
		self:Debug(L["DATAMINER_NODB_ERROR"])
		return
	end
	local output = private.TextDump
	output:Clear()

	for i in pairs(collectable_list) do
		addon:ScanTooltipRecipe(i, false, true)
	end
	output:Display()
end

-- Table to store scanned information. Wiped and re-used every scan.
local scan_data = {}

do
	---------------------------------------------------------------------------------------------------------
	----This table, DO_NOT_SCAN, contains itemid's that will not cache on the servers
	---------------------------------------------------------------------------------------------------------

	local DO_NOT_SCAN = {
	}

	local output = private.TextDump

	-------------------------------------------------------------------------------
	-- Tooltip-scanning code
	-------------------------------------------------------------------------------
	local FACTION_TEXT = {
		["thorium brotherhood"] = 98,
		["zandalar tribe"] = 100,
		["argent dawn"] = 96,
		["timbermaw hold"] = 99,
		["cenarion circle"] = 97,
		["the aldor"] = 101,
		["the consortium"] = 105,
		["the scryers"] = 110,
		["the sha'tar"] = 111,
		["the mag'har"] = 108,
		["cenarion expedition"] = 103,
		["honor hold"] = 104,
		["thrallmar"] = 104,
		["the violet eye"] = 114,
		["sporeggar"] = 113,
		["kurenai"] = 108,
		["keepers of time"] = 106,
		["the scale of the sands"] = 109,
		["lower city"] = 107,
		["ashtongue deathsworn"] = 102,
		["alliance vanguard"] = 131,
		["valiance expedition"] = 126,
		["horde expedition"] = 130,
		["the taunka"] = 128,
		["the hand of vengeance"] = 127,
		["explorers' league"] = 125,
		["the kalu'ak"] = 120,
		["shattered sun offensive"] = 112,
		["warsong offensive"] = 129,
		["kirin tor"] = 118,
		["the wyrmrest accord"] = 122,
		["knights of the ebon blade"] = 117,
		["frenzyheart tribe"] = 116,
		["the oracles"] = 121,
		["argent crusade"] = 115,
		["the sons of hodir"] = 119,
	}

	local FACTION_LEVELS = {
		neutral = 0,
		friendly = 1,
		honored = 2,
		revered = 3,
		exalted = 4,
	}

	local CLASS_TYPES = {
		["Death Knight"] = "DK",
		["Druid"] = "DRUID",
		["Hunter"] = "HUNTER",
		["Mage"] = "MAGE",
		["Paladin"] = "PALADIN",
		["Priest"] = "PRIEST",
		["Shaman"] = "SHAMAN",
		["Rogue"] = "ROGUE",
		["Warlock"] = "WARLOCK",
		["Warrior"] = "WARRIOR",
		["Monk"] = "MONK",
	}

	local ORDERED_CLASS_TYPES = {
		"Death Knight",
		"Druid",
		"Hunter",
		"Mage",
		"Paladin",
		"Priest",
		"Shaman",
		"Rogue",
		"Warlock",
		"Warrior",
		"Monk",
	}

	local FS = private.FILTER_STRINGS

	-- Flag data for printing. Wiped and re-used.
	local missing_flags = {}
	local extra_flags = {}
	local general_issues = {}

	local ACQUIRE_TO_FILTER_MAP = {
		[A.MOB_DROP]	= F.MOB_DROP,
		[A.QUEST]	= F.QUEST,
		[A.SEASONAL]	= F.SEASONAL,
		[A.WORLD_DROP]	= F.WORLD_DROP,
	}
	local FILTER_TO_ACQUIRE_MAP

	local OBTAIN_FILTERS = {
		INSTANCE = true,
		MOB_DROP = true,
		PROFESSION = true,
		PVP = true,
		QUEST = true,
		RAID = true,
		REPUTATION = true,
		SEASONAL = true,
		VENDOR = true,
		WORLD_DROP = true,
	}

	local ACHIEVEMENT_LOOK_UP = {
		["Menagerie"] = 5877,
		["Petting Zoo"] = 5876,
		["WoW's 4th Anniversary"] = 2398,
		["Littlest Pet Shop"] = 5875,
		["Going to Need More Leashes"] = 7500,
		["Higher Learning"] = 1956,
		["Lil' Game Hunter"] = 2516,
		["WoW's 5th Anniversary"] = 4400,
		["Rock Lover"] = 5449,
		["Looking For Multitudes"] = 4478,
		["Shop Smart, Shop Pet...Smart"] = 1250,
		["Ling-Ting's Herbal Journey"] = 6402,
		["Time To Open a Pet Store"] = 7521,
		["Jade Tiger"] = 3636,
		["Pro Pet Mob"] = 6582,
		["That's a Lot of Pet Food"] = 7501,
	}

	-- Copy/pasta from Utilities.lua
	local function TableKeyFormat(input)
		if not input then
			return ""
		end

		return input:upper():gsub(" ", "_"):gsub("'", ""):gsub(":", ""):gsub("-", "_"):gsub("%(", ""):gsub("%)", "")
	end

	local output = private.TextDump

	function addon:ScanCompanionCreature(c_id)

		local num_pets = _G.C_PetJournal.GetNumPets(_G.PetJournal.isWild)

		for pet_index = 1, num_pets do
			local pet_id, _, _, _, _, _, _, name, icon, pet_type, creature_id, source_text, description, is_wild, can_battle = _G.C_PetJournal.GetPetInfoByIndex(pet_index, false)
			if c_id == creature_id then
				addon:ScanSpecificCompanion(pet_index)
				break
			end
		end

	end

	local function GetExistingFlags(collectable)
		local flags = {}
		if not collectable then
			return
		end

		for i,k in pairs(private.FLAG_WORDS) do
			local flag_word = private.FLAG_MEMBERS[i]
			for flag_name,l in pairs(k) do
				if collectable:HasFilter(flag_word, flag_name) then
					table.insert(flags, #flags + 1, "F."..flag_name)
				end
			end
		end

		return flags
	end

	local function CheckExistingFlags(collectable)

		if not collectable then
			return
		end

		if not collectable:HasFilter("common1", "ALLIANCE") and not collectable:HasFilter("common1", "HORDE") then
			addon:Print("No faction.")
		end

		if not collectable:HasFilter("common1", "IBOE") and not collectable:HasFilter("common1", "IBOP") and not collectable:HasFilter("common1", "IBOA") then
			addon:Print("No binding.")
		end

	end

	function addon:ScanSpecificCompanion(pet_index, hide_display)
		addon:InitializeCollection("CRITTER")

		local vendor_list = private.vendor_list

		if not hide_display then
			output:Clear()
		end

		local pet_list = private.collectable_list["CRITTER"]
		local pet_id, _, _, _, _, _, _, name, icon, pet_type, creature_id, source_text, description, is_wild, can_battle = _G.C_PetJournal.GetPetInfoByIndex(pet_index, false)
		local flag_list = {}

		--output:AddLine(string.format("-- %s - %d", name, creature_id))

		local pet = pet_list[creature_id]

		if not pet then
			addon:Print("Found CRITTER not in database: " .. name .. " (" .. creature_id .. ") -- Will add to the entry table.")

			if source_text:match("Pet Battle:") then
				--output:AddLine(string.format("pet = AddPet(%d, V.MOP, Q.COMMON)", creature_id))
			else
				--output:AddLine(string.format("pet = AddPet(%d, ???, ???)", creature_id))
			end
		else
			local quality = "Q." .. Q[pet.quality]
			--output:AddLine(string.format("pet = AddPet(%d, V.%s, %s)", creature_id, pet.genesis, quality))

			--CheckExistingFlags(pet)

			-- Strip formatting
			source_text = source_text:gsub("%|c%x%x%x%x%x%x%x%x", ""):gsub("%|[r|t|T]", ""):gsub("%|n", "")

			if source_text:match("Pet Battle:") then
				pet:AddFilters(F.ALLIANCE, F.HORDE, F.BATTLE_PET)
				source_text = source_text:gsub("Pet Battle:", "", 1):gsub("Pet Battle:", ","):trim() -- Blizzard uses different formats for Pet Battles, some are just listed others have Pet Battle before each zone

				local temp_text = "pet:AddWorldDrop("
				local zone_text = {}
				for token in source_text:gmatch("([^,]+)[,%s]*") do
					table.insert(zone_text, "Z." .. TableKeyFormat(token))
				end
				temp_text = temp_text .. table.concat(zone_text, ", ") .. ")"
				--output:AddLine(temp_text)

			elseif source_text:match("Achievement:") then
				pet:AddFilters(F.ACHIEVEMENT)

				source_text = source_text:gsub("Achievement: ", ""):gsub("Category: (.+)",""):trim()
				if ACHIEVEMENT_LOOK_UP[source_text] then
					--output:AddLine("pet:AddAchievement(" .. ACHIEVEMENT_LOOK_UP[source_text] .. ")")
				else
					addon:Print("Unknown achievement found: " .. source_text)
				end
			elseif source_text:match("Profession:") then
				source_text = source_text:gsub("Profession: ", ""):trim()
				pet:AddFilters(F.PROFESSION)
				if source_text:match("Zone") then
					--output:AddLine("pet:AddProfession(PROF.FISHING)")
				elseif source_text:match("Formula") then
					--output:AddLine("pet:AddProfession(PROF.ENCHANTING)")
				else
					--output:AddLine("pet:AddProfession(PROF." .. string.upper(source_text) .. ")")
				end
			elseif source_text:match("Fishing:") then -- Fuck blizzard
				--output:AddLine("pet:AddProfession(PROF.FISHING)")
			elseif source_text:match("World Event:") then
				source_text = source_text:gsub("World Event: ", ""):trim()
				pet:AddFilters(F.SEASONAL)
				--output:AddLine("pet:AddSeason(\"" .. TableKeyFormat(source_text) .. "\")")
			elseif source_text:match("Quest:") then
				source_text = source_text:gsub("Quest: ", ""):trim()
				pet:AddFilters(F.QUEST)
				local quest_name,quest_zone = source_text:match("(%a+%s*%a*)Zone: (%a+%s*%a*)")
				--output:AddLine("--pet:AddQuest()")
			elseif source_text:match("Vendor:") then -- Blizzard has no space after the : here
				if source_text:match("Faction:") then
					-- TODO: Fix pattern so I don't have to trim it.
					local vendor_name, faction, rep_level = source_text:match("Vendor: ([%a ]+)Zone: .+Faction: ([%a ]+)[ -]+ (%a+)Cost")
					local vendor_id

					for i,k in pairs(vendor_list) do
						local vendor = vendor_list[i]
						if vendor.name == vendor_name then
							vendor_id = i
							break
						end
					end

					if vendor_id then
						if vendor_list[vendor_id].faction == "Alliance" then
							pet:AddFilters(F.ALLIANCE)
						elseif vendor_list[vendor_id].faction == "Horde" then
							pet:AddFilters(F.HORDE)
						elseif vendor_list[vendor_id].faction == "Neutral" then
							pet:AddFilters(F.ALLIANCE, F.HORDE)
						end
					elseif vendor_name then
						addon:Print("Vendor: " .. vendor_name .. " not in database.")
					end

					if faction then
						--output:AddLine("pet:AddRepVendor(FAC." .. TableKeyFormat(faction:trim()) .. ", REP." .. string.upper(rep_level) .. ", " .. (vendor_id or "???") .. ")")
					end
					pet:AddFilters(F.REPUTATION)
				else
					local vendor_name_list = source_text:match("Vendor: (.+)Zone:") or source_text:match("World Vendors")
					-- World Vendors are special names for the guild vendors.
					-- TODO: Deal with these special vendors.
					if vendor_name_list == "World Vendors" then
						-- mount:AddRepVendor(FAC.GUILD, REP.EXALTED, 51512, 52268, 46602, 51495, 51504) -- ally
						-- mount:AddRepVendor(FAC.GUILD, REP.EXALTED, 46572, 51496, 51503, 51512, 52268) -- horde
					else
						for vendor_name in vendor_name_list:gmatch("([^,]+)[,%s]*") do
							local vendor_id
							for i,k in pairs(vendor_list) do
								local vendor = vendor_list[i]
								if vendor.name == vendor_name then
									vendor_id = i
									break
								end
							end
							if vendor_id then
								if vendor_list[vendor_id].faction == "Alliance" then
									pet:AddFilters(F.ALLIANCE)
								elseif vendor_list[vendor_id].faction == "Horde" then
									pet:AddFilters(F.HORDE)
								elseif vendor_list[vendor_id].faction == "Neutral" then
									pet:AddFilters(F.ALLIANCE, F.HORDE)
								end
								--output:AddLine("pet:AddVendor(" .. vendor_id .. ")")
							elseif vendor_name then
								addon:Print("Vendor: " .. vendor_name .. " not in database.")
							end
						end
					end
					pet:AddFilters(F.VENDOR)
				end
			elseif source_text:match("Drop:") then -- Blizzard has no space after the : here
				source_text = source_text:gsub("Drop:", ""):trim()
				local mob_name,mob_zone = source_text:match("(%a+%s*%a*)Zone: (%a+%s*%a*)")
				if mob_name == "World Drop" then
					pet:AddFilters(F.WORLD_DROP)
					-- TODO: Deal with weather/time of day/time of year
					mob_zone = mob_zone:gsub("Weather: (%a+)", "")
					--output:AddLine("pet:AddWorldDrop(Z." .. TableKeyFormat(mob_zone) ..")")
				else
					pet:AddFilters(F.MOB_DROP)
					--output:AddLine("--pet:AddMobDrop() -- " .. (mob_name or source_text) .. ": " .. (mob_zone or "Unknown"))
				end
			elseif source_text:match("Promotion:") then
				source_text = source_text:gsub("Promotion:", ""):trim()
				if source_text:match("World of Warcraft Collectors Edition") or source_text:match("World of Warcraft Collector's Edition") then -- Seriously fuck blizzard
					pet:AddFilters(F.ALLIANCE, F.HORDE, F.COLLECTORS_EDITION, F.IBOP)
					--output:AddLine("pet:AddCustom(\"CE\")")
				elseif source_text:match("BlizzCon") then
					pet:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO, F.IBOP)
					--output:AddLine("pet:AddCustom(\"BLIZZCON\")")
				elseif source_text:match("World Event") or source_text:match("iCoke") then
					pet:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO, F.IBOP)
					----output:AddLine("pet:AddCustom()")
				elseif source_text:match("Starcraft") then
					pet:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO, F.IBOP)
					--output:AddLine("pet:AddCustom(\"STARCRAFTCE\")")
				elseif source_text:match("PVP") or source_text:match("Arena") then
					pet:AddFilters(F.ALLIANCE, F.HORDE, F.PROMO, F.IBOP, F.PVP)
					----output:AddLine("pet:AddCustom()")
				else
					print(pet.name)
					print(source_text)
				end
			elseif source_text:match("Pet Store") then
				source_text = source_text:gsub("Pet Store", ""):trim()
				pet:AddFilters(F.STORE)
				--print(source_text)
			elseif source_text:match("Trading Card Game:") then
				pet:AddFilters(F.TCG)
				--output:AddLine("pet:AddCustom(\"TCG\")")
			else
				addon:Print("Unknown acquire method; " .. source_text)
			end



			flag_list = GetExistingFlags(pet)
			--output:AddLine("pet:AddFilters(" .. table.concat(flag_list,", ") ..")")

			if pet:RequiredRaces() then
				--output:AddLine("pet:SetRequiredRaces(" .. pet:RequiredRaces() .. ")")
			end

			if pet:RequiredFaction() then
				--output:AddLine("pet:SetRequiredFaction(" .. pet:RequiredFaction() .. ")")
			end

			if pet:RequiredClass() then
				--output:AddLine("pet:SetRequiredClass(" .. pet:RequiredClass() .. ")")
			end

			if pet:SpellID() then
				--output:AddLine("pet:SetSpellID(" .. pet:SpellID() .. ")")
			end

			if pet:ItemID() then
				--output:AddLine("pet:SetItemID(" .. pet:ItemID() .. ")")
			end
			output:Clear()
			pet:Dump(output)
			output:Display()
		end

		--output:AddLine("\n")

		if not hide_display then
			output:Display()
		end
	end

	function addon:ScanCompanions()

		-- Clear all the filters showing all pets known/unknown
		C_PetJournal.SetFlagFilter(LE_PET_JOURNAL_FLAG_COLLECTED, true)
		C_PetJournal.SetFlagFilter(LE_PET_JOURNAL_FLAG_FAVORITES, false)
		C_PetJournal.SetFlagFilter(LE_PET_JOURNAL_FLAG_NOT_COLLECTED, true)
		C_PetJournal.AddAllPetTypesFilter()
		C_PetJournal.AddAllPetSourcesFilter()

		addon:InitializeCollection("CRITTER")

		output:Clear()

		local num_pets = _G.C_PetJournal.GetNumPets(_G.PetJournal.isWild)

		for pet_index = 1, num_pets do
			addon:ScanSpecificCompanion(pet_index, true)
		end

		output:Display()
	end

	--- Prints out the results of the tooltip scan.
	local function ProcessScanData()
		if not scan_data.match_name then
			return
		end

		-- Parse the recipe database until we get a match on the name
		local collectable_name = scan_data.match_name:gsub("%a+%?: ","")
		local spell_id = scan_data.reverse_lookup[collectable_name]

		if not spell_id then
			addon:Debug(collectable_name .. " has no reverse lookup")
			return
		end
		local recipe = scan_data.collectable_list[spell_id]
		local acquire_data = recipe.acquire_data
		local flag_format = "F.%s"
		local start_line = output:Lines()

		table.wipe(missing_flags)
		table.wipe(extra_flags)
		table.wipe(general_issues)

		-------------------------------------------------------------------------------
		-- Things which will be automatically fixed. (Requires a profession dump)
		-------------------------------------------------------------------------------
		-- If we're a vendor scan,  do some extra checks
		if scan_data.is_vendor then
			if not recipe:HasFilter("common1", "VENDOR") and not recipe:HasFilter("common1", "SEASONAL") then
				recipe:AddFilters(F.VENDOR)
				table.insert(missing_flags, flag_format:format(FS[F.VENDOR]))
			end
			local subzone_text = _G.GetSubZoneText()

			if (subzone_text == "Wintergrasp Fortress" or subzone_text == "Halaa") and not recipe:HasFilter("common1", "PVP") then
				table.insert(missing_flags, flag_format:format(FS[F.PVP]))
			elseif recipe:HasFilter("common1", "PVP") and not (subzone_text == "Wintergrasp Fortress" or subzone_text == "Halaa") then
				table.insert(extra_flags, flag_format:format(FS[F.PVP]))
			end
		end

		if scan_data.found_class then
			for index, class_name in ipairs(ORDERED_CLASS_TYPES) do
				if scan_data[class_name] and not recipe:HasFilter("class1", CLASS_TYPES[class_name]) then
					recipe:AddFilters(CLASS_TYPES[class_name])
					table.insert(missing_flags, flag_format:format(CLASS_TYPES[class_name]))
				elseif not scan_data[class_name] and recipe:HasFilter("class1", CLASS_TYPES[class_name]) then
					recipe:RemoveFilters(CLASS_TYPES[class_name])
					table.insert(extra_flags, flag_format:format(CLASS_TYPES[class_name]))
				end
			end
		end

		if scan_data.item_bop and not recipe:HasFilter("common1", "IBOP") then
			table.insert(missing_flags, flag_format:format(FS[F.IBOP]))
			recipe:AddFilters(F.IBOP)

			if recipe:HasFilter("common1", "IBOE") then
				recipe:RemoveFilters(F.IBOE)
				table.insert(extra_flags, flag_format:format(FS[F.IBOE]))
			end

			if recipe:HasFilter("common1", "IBOA") then
				recipe:RemoveFilters(F.IBOA)
				table.insert(extra_flags, flag_format:format(FS[F.IBOA]))
			end
		elseif not recipe:HasFilter("common1", "IBOE") and not scan_data.item_bop then
			recipe:AddFilters(F.IBOE)
			table.insert(missing_flags, flag_format:format(FS[F.IBOE]))

			if recipe:HasFilter("common1", "IBOP") then
				recipe:RemoveFilters(F.IBOP)
				table.insert(extra_flags, flag_format:format(FS[F.IBOP]))
			end

			if recipe:HasFilter("common1", "IBOA") then
				recipe:RemoveFilters(F.IBOP)
				table.insert(extra_flags, flag_format:format(FS[F.IBOA]))
			end
		end

		if scan_data.recipe_bop and not recipe:HasFilter("common1", "RBOP") then
			table.insert(missing_flags, flag_format:format(FS[F.RBOP]))
			recipe:AddFilters(F.RBOP)

			if recipe:HasFilter("common1", "RBOE") then
				recipe:RemoveFilters(F.RBOE)
				table.insert(extra_flags, flag_format:format(FS[F.RBOE]))
			end

			if recipe:HasFilter("common1", "RBOA") then
				recipe:RemoveFilters(F.RBOA)
				table.insert(extra_flags, flag_format:format(FS[F.RBOA]))
			end
		elseif not recipe:HasFilter("common1", "TRAINER") and not recipe:HasFilter("common1", "RBOE") and not scan_data.recipe_bop then
			table.insert(missing_flags, flag_format:format(FS[F.RBOE]))
			recipe:AddFilters(F.RBOE)

			if recipe:HasFilter("common1", "RBOP") then
				recipe:RemoveFilters(F.RBOP)
				table.insert(extra_flags, flag_format:format(FS[F.RBOP]))
			end

			if recipe:HasFilter("common1", "RBOA") then
				recipe:RemoveFilters(F.RBOA)
				table.insert(extra_flags, flag_format:format(FS[F.RBOA]))
			end
		end

		for role_index, role in ipairs(ORDERED_ROLE_TYPES) do
			local role_string = ROLE_TYPES[role]

			if scan_data[role] and not recipe:HasFilter("common1", role_string) then
				recipe:AddFilters(ROLE_FILTERS[role])
				table.insert(missing_flags, flag_format:format(role_string))
			elseif not scan_data[role] and recipe:HasFilter("common1", role_string) then
				recipe:RemoveFilters(ROLE_FILTERS[role])
				table.insert(extra_flags, flag_format:format(role_string))
			end
		end
		local repid = scan_data.repid

		if repid then
			if not recipe:HasFilter("reputation1", FS[repid]) and not recipe:HasFilter("reputation2", FS[repid]) then
				table.insert(missing_flags, repid)
			end
			local rep_data = acquire_data[A.REPUTATION]

			if rep_data then
				for rep_id, rep_info in pairs(rep_data) do
					for rep_level, level_info in pairs(rep_info) do
						if rep_level ~= scan_data.repidlevel then
							output:AddLine("    Wrong reputation level.")
						end
					end
				end
			end
		end

		-- Make sure the recipe's filter flags match with its acquire types.
		if not FILTER_TO_ACQUIRE_MAP then
			FILTER_TO_ACQUIRE_MAP = {}

			for k, v in pairs(ACQUIRE_TO_FILTER_MAP) do
				FILTER_TO_ACQUIRE_MAP[v] = k
			end
		end

		for flag, acquire_type in pairs(FILTER_TO_ACQUIRE_MAP) do
			if acquire_data[acquire_type] and not recipe:HasFilter("common1", FS[flag]) then
				local can_add = true

				if (acquire_type == A.WORLD_DROP or acquire_type == A.MOB_DROP) and (recipe:HasFilter("common1", "INSTANCE") or recipe:HasFilter("common1", "RAID")) then
					can_add = false
				end

				if can_add then
					recipe:AddFilters(flag)
					table.insert(missing_flags, flag_format:format(FS[flag]))
				end
			elseif not acquire_data[acquire_type] and recipe:HasFilter("common1", FS[flag]) then
				local can_remove = true

				if acquire_type == A.WORLD_DROP and (not recipe:HasFilter("common1", "INSTANCE") and not recipe:HasFilter("common1", "RAID")) then
					can_remove = false
				end

				if can_remove then
					recipe:RemoveFilters(flag)
					table.insert(extra_flags, flag_format:format(FS[flag]))
				end
			end
		end

		if acquire_data[A.VENDOR] then
			if not recipe:HasFilter("common1", "VENDOR") and not recipe:HasFilter("common1", "SEASONAL") and not recipe:HasFilter("common1", "REPUTATION") then
				recipe:AddFilters(F.VENDOR)
				table.insert(missing_flags, flag_format:format(FS[F.VENDOR]))
			end
		end

		if acquire_data[A.REPUTATION] then
			if not recipe:HasFilter("common1", "REPUTATION") then
				recipe:AddFilters(F.REPUTATION)
				table.insert(missing_flags, FS[F.REPUTATION])
			end

			-- Commented out for possible later use. Originally added to transfer all reputation-vendors
			-- to F.REPUTATION, but there are a few cases where it's valid to have both.
			--			if recipe:HasFilter("common1", "VENDOR") then
			--				recipe:RemoveFilters(F.VENDOR)
			--				table.insert(extra_flags, FS[F.VENDOR])
			--			end
		end

		if recipe:HasFilter("common1", "VENDOR") and not (acquire_data[A.VENDOR] or acquire_data[A.REPUTATION]) then
			recipe:RemoveFilters(F.VENDOR)
			table.insert(extra_flags, flag_format:format(FS[F.VENDOR]))
		end

		if scan_data.quality and scan_data.quality ~= recipe.quality then
			local QS = private.ITEM_QUALITY_NAMES
			table.insert(general_issues, ("Wrong quality: Q.%s - should be Q.%s."):format(QS[recipe.quality], QS[scan_data.quality]))
			recipe.quality = scan_data.quality
		end

		-------------------------------------------------------------------------------
		-- Things which will only be warned about.
		-------------------------------------------------------------------------------
		if not recipe:ItemFilterType() then
			output:AddLine("    Missing item filter type.")
		end

		-- Check to see if we have a horde/alliance flag,  all recipes must have one of these
		if not recipe:HasFilter("common1", "ALLIANCE") and not recipe:HasFilter("common1", "HORDE") then
			output:AddLine("    Horde or Alliance not selected.")
		end

		-- Check to see if we have an obtain method flag,  all recipes must have at least one of these
		if not recipe:HasFilter("common1", "RETIRED") then
			local matching_filter = false

			for filter in pairs(OBTAIN_FILTERS) do
				if recipe:HasFilter("common1", filter) then
					matching_filter = true
					break
				end
			end

			if not matching_filter then
				output:AddLine("    No obtain flag.")
			end
		end

		-- Check for recipe binding information,  all recipes must have one of these
		if not recipe:HasFilter("common1", "RBOE") and not recipe:HasFilter("common1", "RBOP") and not recipe:HasFilter("common1", "RBOA") then
			output:AddLine("    No recipe binding information.")
		end

		-- Check for item binding information,  all recipes must have one of these
		if not recipe:HasFilter("common1", "IBOE") and not recipe:HasFilter("common1", "IBOP") and not recipe:HasFilter("common1", "IBOA") then
			output:AddLine("    No item binding information.")
		end

		if scan_data.specialty then
			if not recipe.specialty then
				output:AddLine(("    Missing Specialty: %s"):format(scan_data.specialty))
			elseif recipe.specialty ~= scan_data.specialty then
				output:AddLine(("    Wrong Specialty: %s - should be %s "):format(recipe.specialty,scan_data.specialty))
			end
		elseif recipe.specialty then
			output:AddLine(("    Extra Specialty: %s"):format(recipe.specialty))
		end

		if scan_data.filter_type then
			local recipe_filter = recipe:ItemFilterType()

			if recipe_filter then
				recipe_filter = recipe_filter:upper()
			end

			if recipe_filter ~= scan_data.filter_type then
				table.insert(missing_flags, ("Wrong filter type: %s - should be %s."):format(recipe_filter or "NONE", scan_data.filter_type))
				recipe:SetItemFilterType(scan_data.filter_type)
				scan_data.filter_type = nil
			end
		end

		if #missing_flags > 0 or #extra_flags > 0 or #general_issues > 0 then
			output:AddLine("    Issues which will be resolved with a profession dump:")

			if #missing_flags > 0 then
				output:AddLine("        Missing flags: " .. table.concat(missing_flags, ", "))
			end

			if #extra_flags > 0 then
				output:AddLine("        Extra flags: " .. table.concat(extra_flags, ", "))
			end

			if #general_issues > 0 then
				output:AddLine("        General issues: " .. table.concat(general_issues, ", "))
			end
		end

		if output:Lines() > start_line then
			output:InsertLine(start_line + 1, ("%s: <a href=\"http://www.wowhead.com/?spell=%d\">%d</a>"):format(collectable_name, spell_id, spell_id))
		end
	end

	--- Parses the mining tooltip for certain keywords, comparing them with the database flags
	local function ScanTooltip(collectable_name, collectable_list, reverse_lookup, is_vendor)
		scan_data.match_name = collectable_name
		scan_data.collectable_list = collectable_list
		scan_data.reverse_lookup = reverse_lookup
		scan_data.is_vendor = is_vendor

		-- Parse all the lines of the tooltip
		for i = 1, ARLDatamineTT:NumLines(), 1 do
			local text_l = _G["ARLDatamineTTTextLeft" .. i]:GetText()
			local text_r = _G["ARLDatamineTTTextRight" .. i]:GetText()
			local text

			if text_r then
				text = ("%s %s"):format(text_l, text_r)
			else
				text = text_l
			end
			text = text:lower()

			-- Check for recipe/item binding
			-- The recipe binding is within the first few lines of the tooltip always
			if text:match("binds when picked up") then
				if (i < 3) then
					scan_data.recipe_bop = true
				else
					scan_data.item_bop = true
				end
			end

			-- Recipe Specialities
			if SPECIALTY_TEXT[text] then
				scan_data.specialty = SPECIALTY_TEXT[text]
			end

			-- Recipe Reputations
			local rep, replevel = text_l:match("Requires (.+) %- (.+)")

			if rep and replevel and FACTION_TEXT[rep] then
				scan_data.repid = FACTION_TEXT[rep]
				scan_data.repidlevel = FACTION_LEVELS[replevel]
			end


			-------------------------------------------------------------------------------
			-- Do things the smart way and assign the filter type here. Uncomment when needed.
			-------------------------------------------------------------------------------
			local spell_id = scan_data.reverse_lookup[collectable_name]

			if spell_id and collectable_list[spell_id].profession == "Inscription" then
				scan_data.filter_type = nil

				if not text_l:match("Tools: (.+)") and not text_l:match("Reagents:") and not text_l:match("Requires") then
					for pattern, filter in pairs(INSCRIPTION_MATCH_FILTERS) do
						if text_l:match(pattern) then
							local recipe = collectable_list[spell_id]
							--							scan_data.filter_type = filter
							--							addon:Printf("%s: %s", collectable_name, filter)
							recipe:SetItemFilterType(filter)
							break
						end
					end

					if not scan_data.filter_type and text_r and text_r:match("Staff") then
						scan_data.filter_type = "INSCRIPTION_STAFF"
					end
				end
			end

			for stat, roles in pairs(ROLE_STAT_MATCHES) do
				for match_index = 1, #ROLE_STAT_MATCH_FORMATS do
					if text:match(ROLE_STAT_MATCH_FORMATS[match_index]:format(stat)) then
						for role_index = 1, #roles do
							scan_data[roles[role_index]] = true
						end
					end
				end
			end

			-- Special cases.
			-- TODO: Some or all of these may not even exist anymore.
			if text:match("weapon damage") then
				scan_data.dps = true
				--elseif text:match("armor pen") then
				--	scan_data.dps = true
				--elseif text:match("feral attack power") then
				--	scan_data.tank = true
				--	scan_data.dps = true
				--elseif text:match("defense") and not text:match("defenseless") then
				--	scan_data.tank = true
			elseif text:match("increases (%a+) health by (%d+)") then
				scan_data.tank = true
			end

			local class_type = text_l:match("Classes: (.+)")

			if class_type then
				for idx, class in ipairs(ORDERED_CLASS_TYPES) do
					if class_type:match(class) then
						scan_data[class] = true
						scan_data.found_class = true
					end
				end
			end

			if text:match("(%d+) slot(.+)bag") then
				scan_data.no_role = true
			end

		end	-- for
	end


	--- Parses a specific recipe in the database, and scanning its tooltip
	-- @name AckisRecipeList:ScanTooltipRecipe
	-- @param spell_id The [[[http://www.wowpedia.org/SpellLink|Spell ID]]] of the recipe being added to the database
	-- @param is_vendor Boolean to determine if we're viewing a vendor or not
	-- @param is_largescan Boolean to determine if we're doing a large scan
	-- @return Recipe has its tooltips scanned
	-- Output is always returned by the caller.
	function addon:ScanTooltipRecipe(spell_id, is_vendor, is_largescan)
		local collectable_list = private.collectable_list

		if not collectable_list then
			self:Debug(L["DATAMINER_NODB_ERROR"])
			return
		end
		local recipe = collectable_list[spell_id]

		if not recipe then
			self:Debug("Spell ID %d does not exist in the database.", tonumber(spell_id))
			return
		end
		local collectable_name = recipe.name
		local game_vers = private.GAME_VERSIONS[recipe.genesis]

		if not game_vers then
			output:AddLine("No expansion information: " .. tostring(spell_id) .. " " .. collectable_name)
		elseif game_vers > #private.GAME_VERSION_NAMES then
			output:AddLine("Expansion information too high: " .. tostring(spell_id) .. " " .. collectable_name)
		end
		local optimal = recipe.optimal_level
		local medium = recipe.medium_level
		local easy = recipe.easy_level
		local trivial = recipe.trivial_level
		local skill_level = recipe.skill_level

		if not optimal then
			output:AddLine("No skill level information: " .. tostring(spell_id) .. " " .. collectable_name)
		else
			-- Highest level is greater than the skill of the recipe
			if optimal > skill_level then
				output:AddLine("Skill Level Error (optimal_level > skill_level): " .. tostring(spell_id) .. " " .. collectable_name)
			elseif optimal < skill_level then
				output:AddLine("Skill Level Error (optimal_level < skill_level): " .. tostring(spell_id) .. " " .. collectable_name)
			end

			-- Level info is messed up
			if optimal > medium or optimal > easy or optimal > trivial or medium > easy or medium > trivial or easy > trivial then
				output:AddLine("Skill Level Error: " .. tostring(spell_id) .. " " .. collectable_name)
			end
		end
		local recipe_link = _G.GetSpellLink(recipe.spell_id)

		if not recipe_link then
			self:Debug("Missing spell_link for ID %d (%s).", spell_id, collectable_name)
			return
		end
		ARLDatamineTT:SetOwner(_G.WorldFrame, "ANCHOR_NONE")
		_G.GameTooltip_SetDefaultAnchor(ARLDatamineTT, _G.UIParent)

		ARLDatamineTT:SetHyperlink(recipe_link)

		-- Check to see if this is a recipe tooltip.
		local text = _G["ARLDatamineTTTextLeft1"]:GetText():lower()
		local match_text = (":"):split(text)

		if match_text then
			match_text = ("%s: "):format(match_text)
		end

		if not RECIPE_TYPES[match_text] and not (text:find("smelt") or text:find("sunder") or text:find("shatter")) then
			ARLDatamineTT:Hide()
			return
		end
		local reverse_lookup = GetReverseLookup(collectable_list)
		ScanTooltip(collectable_name, collectable_list, reverse_lookup, is_vendor)

		local recipe_item_id = recipe:RecipeItemID()

		table.wipe(scan_data)

		if recipe_item_id then
			if recipe:HasFilter("common1", "TRAINER") and not recipe:HasFilter("common1", "VENDOR") and not recipe:HasFilter("common1", "INSTANCE") and not recipe:HasFilter("common1", "RAID") and not recipe:HasFilter("common1", "WORLD_DROP") then
				output:AddLine(("Recipe %d (%s): Has Trainer filter flag, but also has a recipe item (%d)."):format(recipe.spell_id, recipe.name, recipe_item_id))
			elseif not DO_NOT_SCAN[recipe_item_id] then
				local item_name, item_link, item_quality = _G.GetItemInfo(recipe_item_id)

				if item_name then
					if item_quality > 0 then
						scan_data.quality = item_quality

						ARLDatamineTT:SetHyperlink(item_link)
						ScanTooltip(collectable_name, collectable_list, reverse_lookup, is_vendor)
					else
						output:AddLine(("Recipe %d (%s): Recipe item quality is 0 (junk), which probably means it has been removed from the game."):format(recipe.spell_id, recipe.name))
					end
				else
					output:AddLine(("%s: %d"):format(recipe.name, spell_id))

					if _G.Querier then
						output:AddLine(("    Recipe item not in cache. To fix: /iq %d"):format(recipe_item_id))
					else
						output:AddLine("    Recipe item not in cache.")
					end
				end
			end
		elseif not recipe:HasFilter("common1", "RETIRED") then
			-- We are dealing with a recipe that does not have an item to learn it from.
			-- Lets check the recipe flags to see if we have a data error and the item should exist
			if recipe:HasFilter("common1", "VENDOR") or recipe:HasFilter("common1", "INSTANCE") or recipe:HasFilter("common1", "RAID") or recipe:HasFilter("common1", "MOB_DROP") or recipe:HasFilter("common1", "WORLD_DROP") then
				output:AddLine(("Recipe %d (%s) is missing a recipe item ID."):format(spell_id, recipe.name))
			elseif recipe:HasFilter("common1", "TRAINER") and recipe.quality ~= private.ITEM_QUALITIES["COMMON"] then
				output:AddLine(("%s: %d"):format(recipe.name, spell_id))
				output:AddLine("    Issues which will be resolved with a profession dump:")
				output:AddLine(("    Wrong quality: Q.%s - should be Q.COMMON."):format(private.ITEM_QUALITY_NAMES[recipe.quality]))
				recipe.quality = private.ITEM_QUALITIES["COMMON"]
			end
		end
		ARLDatamineTT:Hide()

		ProcessScanData()

		if not is_largescan then
			self:Print(output:String())
		end
	end
end
