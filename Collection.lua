-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local ipairs = _G.ipairs
local pairs = _G.pairs
local select = _G.select
local tonumber, tostring = _G.tonumber, _G.tostring
local type = _G.type

-- Libraries
local bit = _G.bit
local string = _G.string
local table = _G.table

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()

local A = private.ACQUIRE_TYPES

private.col_list = {}
--private.profession_recipe_list = {}
--private.num_profession_recipes = {}

private.acquire_list	= {}
private.location_list	= {}

-----------------------------------------------------------------------
-- Local constants.
-----------------------------------------------------------------------
local collection_prototype = {}
local collection_meta = {
	__index = collection_prototype
}

function addon:AddCollection(spell_id, ColType, genesis, quality)
	local col_list = private.col_list

	if col_list[spell_id] then
		self:Debug("Duplicate Collection Item: %d - %s (%s)", spell_id, col_list[spell_id].name, col_list[spell_id].ColType)
		return
	end

	local collection = _G.setmetatable({
		spell_id = spell_id,
		ColType = ColType,
		genesis = private.GAME_VERSION_NAMES[genesis],
		quality = quality,
		name = _G.GetSpellInfo(spell_id),
		flags = {},
		acquire_data = {},
	}, collection_meta)

	-- If the name is unknown, let the user know the spell is not in their cache
	if not collection.name or collection.name == "" then
		collection.name = ("%s: %d"):format(_G.UNKNOWN, tonumber(spell_id))
		self:Debug(L["SpellIDCache"]:format(spell_id))
	end

	col_list[spell_id] = collection
-- WTF is Torhal doing here?
--[[
	if not private.profession_recipe_list[recipe.profession] then
		private.profession_recipe_list[recipe.profession] = {}
	end
	private.profession_recipe_list[recipe.profession][spell_id] = recipe
	private.num_profession_recipes[recipe.profession] = (private.num_profession_recipes[recipe.profession] or 0) + 1
]]--
	return collection
end

-------------------------------------------------------------------------------
-- Collection methods.
-------------------------------------------------------------------------------
function collection_prototype:SetCollectionItemID(item_id)
	self.collection_item_id = item_id
end

function collection_prototype:CollectionItemID()
	return self.collection_item_id
end

-- Used to set the faction for collections which only can be learned by one faction (e.g. Moonkin Hatchling, etc.)
-- These collections will never be able to be learned so we do not want to load them.
function collection_prototype:SetRequiredFaction(faction_name)
	self.required_faction = faction_name

	if faction_name and private.Player.faction ~= faction_name then
		self.is_ignored = true
		private.num_profession_collections[self.profession] = private.num_profession_collections[self.profession] - 1
	end
end

function collection_prototype:RequiredFaction()
	return self.required_faction
end

-------------------------------------------------------------------------------
-- Recipe state flags.
-------------------------------------------------------------------------------
local RECIPE_STATE_FLAGS = {
	KNOWN		= 0x00000001,
	RELEVANT	= 0x00000002,
	VISIBLE		= 0x00000004,
	LINKED		= 0x00000008,
}

function collection_prototype:HasState(state_name)
	return self.state and (bit.band(self.state, RECIPE_STATE_FLAGS[state_name]) == RECIPE_STATE_FLAGS[state_name]) or false
end

function collection_prototype:AddState(state_name)
	if not self.state then
		self.state = 0
	end

	if bit.band(self.state, RECIPE_STATE_FLAGS[state_name]) == RECIPE_STATE_FLAGS[state_name] then
		return
	end
	self.state = bit.bxor(self.state, RECIPE_STATE_FLAGS[state_name])
end

function collection_prototype:RemoveState(state_name)
	if not self.state then
		return
	end

	if bit.band(self.state, RECIPE_STATE_FLAGS[state_name]) ~= RECIPE_STATE_FLAGS[state_name] then
		return
	end
	self.state = bit.bxor(self.state, RECIPE_STATE_FLAGS[state_name])

	if self.state == 0 then
		self.state = nil
	end
end

do
	local BITFIELD_MAP = {
		common1 = private.COMMON_FLAGS_WORD1,
		class1 = private.CLASS_FLAGS_WORD1,
		reputation1 = private.REP_FLAGS_WORD1,
		reputation2 = private.REP_FLAGS_WORD2,
		item1 = private.ITEM_FLAGS_WORD1,
	}

	function collection_prototype:HasFilter(field_name, flag_name)
		local bitfield = self.flags[field_name]
		local bitset = BITFIELD_MAP[field_name]
		local value = bitset[flag_name]

		return bitfield and (bit.band(bitfield, value) == value) or false
	end
end -- do-block

do
	local SKILL_LEVEL_FORMAT = "[%d]"

	function collection_prototype:GetDisplayName()
		local _, _, _, quality_color = _G.GetItemQualityColor(self.quality)
		local col_name = self.name

		local has_faction = private.Player:HasProperRepLevel(self.acquire_data[A.REPUTATION])
		local skill_level = private.current_profession_scanlevel
		local recipe_level = self.skill_level

		local diff_color

		if has_faction then
			if recipe_level > skill_level then
				diff_color = "impossible"
			elseif skill_level >= self.trivial_level then
				diff_color = "trivial"
			elseif skill_level >= self.easy_level then
				diff_color = "easy"
			elseif skill_level >= self.medium_level then
				diff_color = "medium"
			elseif skill_level >= self.optimal_level then
				diff_color = "optimal"
			else
				diff_color = "trivial"
			end
		else
			diff_color = "impossible"
		end
		local display_name = ("|c%s%s|r"):format(quality_color, recipe_name)
		local level_text = private.SetTextColor(private.DIFFICULTY_COLORS[diff_color], SKILL_LEVEL_FORMAT):format(recipe_level)

		if addon.db.profile.skill_view then
			display_name = ("%s - %s"):format(level_text, display_name)
		else
			display_name = ("%s - %s"):format(display_name, level_text)
		end

		if addon.db.profile.exclusionlist[self.spell_id] then
			display_name = ("** %s **"):format(display_name)
		end
		return display_name
	end
end -- do-block

function collection_prototype:SetItemFilterType(filter_type)
	if not private.ITEM_FILTER_TYPES[filter_type:upper()] then
		addon:Debug("Attempting to set invalid item filter type '%s' for '%s' (%d)", filter_type, self.name, self.spell_id)
		return
	end
	self.item_filter_type = filter_type:lower()
end

function collection_prototype:ItemFilterType()
	return self.item_filter_type
end

local function SetFilterState(recipe, turn_on, ...)
	local num_filters = select('#', ...)

	for index = 1, num_filters, 1 do
		local filter = select(index, ...)

		if filter then
			local filter_name = private.FILTER_STRINGS[filter]
			local bitfield
			local member_name

			for table_index, bits in ipairs(private.FLAG_WORDS) do
				if bits[filter_name] then
					bitfield = bits
					member_name = private.FLAG_MEMBERS[table_index]
				end
			end

			if not bitfield or not member_name then
				return
			end

			if not recipe.flags[member_name] then
				recipe.flags[member_name] = 0
			end

			if turn_on then
				if bit.band(recipe.flags[member_name], bitfield[filter_name]) == bitfield[filter_name] then
					if recipe.flags[member_name] == 0 then
						recipe.flags[member_name] = nil
					end
					return
				end
			else
				if bit.band(recipe.flags[member_name], bitfield[filter_name]) ~= bitfield[filter_name] then
					if recipe.flags[member_name] == 0 then
						recipe.flags[member_name] = nil
					end
					return
				end
			end
			recipe.flags[member_name] = bit.bxor(recipe.flags[member_name], bitfield[filter_name])

			if recipe.flags[member_name] == 0 then
				recipe.flags[member_name] = nil
			end
		else
			addon:Debug("Recipe '%s' (spell ID %d): Attempting to %s non-existent filter flag.", recipe.name, recipe.spell_id, turn_on and "assign" or "remove")
		end
	end
end

function collection_prototype:AddFilters(...)
	SetFilterState(self, true, ...)
end

function collection_prototype:RemoveFilters(...)
	SetFilterState(self, false, ...)
end

function collection_prototype:AddAcquireData(acquire_type, type_string, unit_list, ...)
	local location_list = private.location_list
	local acquire_list = private.acquire_list
	local acquire = self.acquire_data[acquire_type]

	if not acquire then
		self.acquire_data[acquire_type] = {}
		acquire = self.acquire_data[acquire_type]
	end
	local limited_vendor = type_string == "Limited Vendor"
	local num_vars = select('#', ...)
	local cur_var = 1

	while cur_var <= num_vars do
		-- A quantity of true means unlimited - normal vendor item.
		local quantity = true
		local location_name, affiliation
		local identifier = select(cur_var, ...)
		cur_var = cur_var + 1

		if limited_vendor then
			quantity = select(cur_var, ...)
			cur_var = cur_var + 1
		end
		acquire[identifier] = true

		if unit_list then
			if unit_list[identifier] then
				local unit = unit_list[identifier]

				affiliation = unit.faction
				location_name = unit.location

				unit.item_list = unit.item_list or {}
				unit.item_list[self.spell_id] = quantity
			else
				addon:Debug("Spell ID %d: %s ID %s does not exist in the database.", self.spell_id, type_string, identifier)
			end
		else
			local string_id = type(identifier) == "string"

			location_name = string_id and identifier or nil

			if location_name then
				affiliation = "world_drop"
			elseif string_id then
				addon:Debug("WORLD_DROP with no location: %d %s", self.spell_id, self.name)
			end
		end
		acquire_list[acquire_type] = acquire_list[acquire_type] or {}
		acquire_list[acquire_type].recipes = acquire_list[acquire_type].recipes or {}

		acquire_list[acquire_type].name = private.ACQUIRE_NAMES[acquire_type]
		acquire_list[acquire_type].recipes[self.spell_id] = affiliation or true

		if location_name then
			location_list[location_name] = location_list[location_name] or {}
			location_list[location_name].recipes = location_list[location_name].recipes or {}

			location_list[location_name].name = location_name
			location_list[location_name].recipes[self.spell_id] = affiliation or true
		end
	end
end

function collection_prototype:AddMobDrop(...)
	self:AddAcquireData(A.MOB_DROP, "Mob", private.mob_list, ...)
end

function collection_prototype:AddVendor(...)
	self:AddAcquireData(A.VENDOR, "Vendor", private.vendor_list, ...)
end

function collection_prototype:AddLimitedVendor(...)
	self:AddAcquireData(A.VENDOR, "Limited Vendor", private.vendor_list, ...)
end

function collection_prototype:AddWorldDrop(...)
	self:AddAcquireData(A.WORLD_DROP, nil, nil, ...)
end

function collection_prototype:AddQuest(...)
	self:AddAcquireData(A.QUEST, "Quest", private.quest_list, ...)
end

function collection_prototype:AddAchievement(...)
	self:AddAcquireData(A.ACHIEVEMENT, "Achievement", nil, ...)
end

function collection_prototype:AddCustom(...)
	self:AddAcquireData(A.CUSTOM, "Custom", private.custom_list, ...)
end

function collection_prototype:AddSeason(...)
	self:AddAcquireData(A.SEASONAL, "Seasonal", private.seasonal_list, ...)
end

function collection_prototype:AddRepVendor(faction_id, rep_level, ...)
	local location_list = private.location_list
	local acquire_list = private.acquire_list
	local vendor_list = private.vendor_list
	local acquire = self.acquire_data[A.REPUTATION]

	if not acquire then
		self.acquire_data[A.REPUTATION] = {}
		acquire = self.acquire_data[A.REPUTATION]
	end
	local faction = acquire[faction_id]

	if not faction then
		acquire[faction_id] = {}
		faction = acquire[faction_id]
		faction[rep_level] = {}
	end
	local num_vars = select('#', ...)
	local cur_var = 1

	while cur_var <= num_vars do
		local location_name, affiliation
		local vendor_id = select(cur_var, ...)
		cur_var = cur_var + 1

		if private.reputation_list[faction_id] then
			if vendor_id and vendor_list[vendor_id] then
				faction[rep_level][vendor_id] = true

				local rep_vendor = vendor_list[vendor_id]

				affiliation = rep_vendor.faction
				location_name = rep_vendor.location

				rep_vendor.item_list = rep_vendor.item_list or {}
				rep_vendor.item_list[self.spell_id] = true
			else
				self:Debug("Spell ID %d: Reputation Vendor ID %s does not exist in the database.", self.spell_id, tostring(vendor_id))
			end
		else
			self:Debug("Spell ID %d: Faction ID %d does not exist in the database.", self.spell_id, faction_id)
		end
		acquire_list[A.REPUTATION] = acquire_list[A.REPUTATION] or {}
		acquire_list[A.REPUTATION].recipes = acquire_list[A.REPUTATION].recipes or {}

		acquire_list[A.REPUTATION].name = private.ACQUIRE_NAMES[A.REPUTATION]
		acquire_list[A.REPUTATION].recipes[self.spell_id] = affiliation or true

		if location_name then
			location_list[location_name] = location_list[location_name] or {}
			location_list[location_name].recipes = location_list[location_name].recipes or {}

			location_list[location_name].name = location_name
			location_list[location_name].recipes[self.spell_id] = affiliation or true
		end
	end
end

local DUMP_FUNCTION_FORMATS = {
	[A.ACHIEVEMENT] = "collection:AddAchievement(%s)",
	[A.CUSTOM] = "collection:AddCustom(%s)",
	[A.DISCOVERY] = "collection:AddDiscovery(%s)",
	[A.SEASONAL] = "collection:AddSeason(%s)",
	[A.MOB_DROP] = "collection:AddMobDrop(%s)",
	[A.WORLD_DROP] = "collection:AddWorldDrop(%s)",
	[A.QUEST] = "collection:AddQuest(%s)",
}

local sorted_data = {}
local reverse_map = {}

function collection_prototype:Dump(output)
	local genesis = private.GAME_VERSIONS[self.genesis]

	table.insert(output, ("-- %s -- %d"):format(self.name, self.spell_id))
	table.insert(output, ("collection = AddRecipe(%d, V.%s, Q.%s)"):format(self.spell_id, private.GAME_VERSION_NAMES[genesis], private.ITEM_QUALITY_NAMES[self.quality]))

	if self.collection_item_id then
		table.insert(output, ("collection:SetRecipeItemID(%d)"):format(self.collection_item_id))
	end

	if self.crafted_item_id then
		table.insert(output, ("collection:SetCraftedItemID(%d)"):format(self.crafted_item_id))
	end
	local previous_rank_collection = private.profession_collection_list[self.profession][self:PreviousRankID()]

	if previous_rank_collection then
		table.insert(output, ("collection:SetPreviousRankID(%d)"):format(previous_rank_collection.spell_id))
	end

	local skill_level = self.skill_level
	local optimal_level = self.optimal_level
	local medium_level = self.medium_level
	local easy_level = self.easy_level
	local trivial_level = self.trivial_level

	table.insert(output, ("collection:SetSkillLevels(%d, %d, %d, %d, %d)"):format(skill_level, optimal_level, medium_level, easy_level, trivial_level))

	if self.specialty then
		table.insert(output, ("collection:SetSpecialty(%d)"):format(self.specialty))
	end

	if self.required_faction then
		table.insert(output, ("collection:SetRequiredFaction(\"%s\")"):format(self.required_faction))
	end

	if self.item_filter_type then
		table.insert(output, ("collection:SetItemFilterType(\"%s\")"):format(self.item_filter_type:upper()))
	end
	local flag_string

	for table_index, bits in ipairs(private.FLAG_WORDS) do
		table.wipe(sorted_data)
		table.wipe(reverse_map)

		for flag_name, flag in pairs(bits) do
			local bitfield = self.flags[private.FLAG_MEMBERS[table_index]]

			if bitfield and bit.band(bitfield, flag) == flag then
				table.insert(sorted_data, flag)
				reverse_map[flag] = flag_name
			end
		end
		table.sort(sorted_data)

		for index, flag in ipairs(sorted_data) do
			local bitfield = self.flags[private.FLAG_MEMBERS[table_index]]

			if bitfield and bit.band(bitfield, flag) == flag then
				if flag_string then
					flag_string = ("%s, F.%s"):format(flag_string, private.FILTER_STRINGS[private.FILTER_IDS[reverse_map[flag]]])
				else
					flag_string = ("F.%s"):format(private.FILTER_STRINGS[private.FILTER_IDS[reverse_map[flag]]])
				end
			end
		end
	end
	table.insert(output, ("collection:AddFilters(%s)"):format(flag_string))

	flag_string = nil

	local ZL = private.ZONE_LABELS_FROM_NAME

	for acquire_type, acquire_info in pairs(self.acquire_data) do
		if acquire_type == A.REPUTATION then
			for rep_id, rep_info in pairs(acquire_info) do
				local faction_string = private.FACTION_STRINGS[rep_id]

				if faction_string then
					faction_string = ("FAC.%s"):format(faction_string)
				else
					faction_string = rep_id
					addon:Printf("Recipe %d (%s) - no string for faction %d", self.spell_id, self.name, rep_id)
				end

				for rep_level, level_info in pairs(rep_info) do
					local rep_string = ("REP.%s"):format(private.REP_LEVEL_STRINGS[rep_level or 1])
					local values

					table.wipe(sorted_data)
					table.wipe(reverse_map)

					for id_num in pairs(level_info) do
						table.insert(sorted_data, id_num)
					end
					table.sort(sorted_data)

					for index, vendor_id in ipairs(sorted_data) do
						if values then
							values = ("%s, %d"):format(values, vendor_id)
						else
							values = vendor_id
						end
					end
					table.insert(output, ("collection:AddRepVendor(%s, %s, %s)"):format(faction_string, rep_string, values))
				end
			end
		elseif acquire_type == A.VENDOR then
			local values
			local limited_values

			table.wipe(sorted_data)
			table.wipe(reverse_map)

			for id_num in pairs(acquire_info) do
				table.insert(sorted_data, id_num)
			end
			table.sort(sorted_data)

			for index, identifier in ipairs(sorted_data) do
				local saved_id

				if type(identifier) == "string" then
					saved_id = ("\"%s\""):format(identifier)
				else
					saved_id = identifier
				end
				local vendor = private.vendor_list[identifier]
				local quantity = vendor.item_list[self.spell_id]

				if type(quantity) == "number" then
					if limited_values then
						limited_values = ("%s, %s, %d"):format(limited_values, saved_id, quantity)
					else
						limited_values = ("%s, %d"):format(saved_id, quantity)
					end
				else
					if values then
						values = ("%s, %s"):format(values, saved_id)
					else
						values = saved_id
					end
				end
			end

			if values then
				table.insert(output, ("collection:AddVendor(%s)"):format(values))
			end

			if limited_values then
				table.insert(output, ("collection:AddLimitedVendor(%s)"):format(limited_values))
			end
		elseif DUMP_FUNCTION_FORMATS[acquire_type] then
			local values

			table.wipe(sorted_data)
			table.wipe(reverse_map)

			for id_num in pairs(acquire_info) do
				table.insert(sorted_data, id_num)
			end
			table.sort(sorted_data)

			for index, identifier in ipairs(sorted_data) do
				local saved_id

				if type(identifier) == "string" then
					if acquire_type == A.WORLD_DROP then
						saved_id = ("Z.%s"):format(ZL[identifier])
					else
						saved_id = ("\"%s\""):format(identifier)
					end
				else
					saved_id = identifier
				end

				if values then
					values = ("%s, %s"):format(values, saved_id)
				else
					values = saved_id
				end
			end
			table.insert(output, (DUMP_FUNCTION_FORMATS[acquire_type]):format(values))
		else
			for identifier in pairs(acquire_info) do
				local saved_id

				if type(identifier) == "string" then
					saved_id = ("\"%s\""):format(identifier)
				else
					saved_id = identifier
				end

				if flag_string then
					flag_string = ("%s, A.%s, %s"):format(flag_string, private.ACQUIRE_STRINGS[acquire_type], saved_id)
				else
					flag_string = ("A.%s, %s"):format(private.ACQUIRE_STRINGS[acquire_type], saved_id)
				end
			end
		end
	end

	if flag_string then
		table.insert(output, ("collection:AddAcquireData(%s)"):format(flag_string))
	end
	table.insert(output, "")
end

function collection_prototype:DumpTrainers(registry)
	local trainer_data = self.acquire_data[A.TRAINER]

	if not trainer_data then
		return
	end

	for identifier in pairs(trainer_data) do
		registry[identifier] = true
	end
end

function addon:GetRecipeData(spell_id, data)
	local collection = private.collection_list[spell_id]
	return collection and collection[data] or nil
end

