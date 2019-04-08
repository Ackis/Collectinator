-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
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

local A = private.ACQUIRE_TYPES

local collectable_list = {}
private.collectable_list = collectable_list

for categoryIndex = 1, #private.ORDERED_COLLECTIONS do
	collectable_list[private.ORDERED_COLLECTIONS[categoryIndex]] = {}
end

private.num_category_collectables = {}

do
	local acquire_list = {}

	for acquire_type = 1, #private.ACQUIRE_STRINGS do
		acquire_list[acquire_type] = {
			name = private.ACQUIRE_NAMES[acquire_type],
			collectables = {},
		}
	end
	private.acquire_list = acquire_list
end
private.location_list = {}

-----------------------------------------------------------------------
-- Metatables.
-----------------------------------------------------------------------
local collectable_prototype = {}
local collectable_meta = {
	__index = collectable_prototype,
}

local pet_prototype = {}
local pet_meta = {
	__index = function(t, k)
		return pet_prototype[k] or collectable_prototype[k]
	end,
}

local mount_prototype = {}
local mount_meta = {
	__index = function(t, k)
		return mount_prototype[k] or collectable_prototype[k]
	end,
}

local toy_prototype = {}
local toy_meta = {
	__index = function(t, k)
		return toy_prototype[k] or collectable_prototype[k]
	end,
}

local heirloom_prototype = {}
local heirloom_meta = {
	__index = function(t, k)
		return heirloom_prototype[k] or collectable_prototype[k]
	end,
}

local wardrobe_prototype = {}
local wardrobe_meta = {
	__index = function(t, k)
		return wardrobe_prototype[k] or collectable_prototype[k]
	end,
}

local CATEGORY_METATABLES = {
	CRITTER = pet_meta,
	MOUNT = mount_meta,
	TOY = toy_meta,
	HEIRLOOM = heirloom_meta,
	WARDROBE = wardrobe_meta,
}

function addon:AddCollectable(collectable_id, collectable_type, genesis, quality)
	if not addon.db.profile.exclusionlist[collectable_type] then
		addon.db.profile.exclusionlist[collectable_type] = {}
	end

	local collectable_list = private.collectable_list[collectable_type]


	if collectable_list[collectable_id] then
		self:Debug("Duplicate Collectable: %d - %s (%s)", collectable_id, collectable_list[collectable_id].name or _G.UNKNOWN, collectable_list[collectable_id].type)
		return
	end

	local collectable = _G.setmetatable({
		id = collectable_id,
		type = collectable_type,
		genesis = private.GAME_VERSION_NAMES[genesis],
		quality = quality,
		description = "",
		name = nil,
		flags = {},
		acquire_data = {},
	}, CATEGORY_METATABLES[collectable_type] or collectable_meta)

	-- Total hack for now.
	if collectable_type == "TOY" then
		local itemName = _G.GetItemInfo(collectable_id)
	end

	collectable_list[collectable_id] = collectable
	private.num_category_collectables[collectable_type] = (private.num_category_collectables[collectable_type] or 0) + 1

	return collectable
end

-------------------------------------------------------------------------------
-- Pet methods.
-------------------------------------------------------------------------------
function pet_prototype:SetRequiredRaces(...)
	collectable_prototype.SetRequiredRaces(self, ...)

	-- Undo these since they don't apply to pets (they must be initially learned by one race, but are account-wide and therefore usable by all).
	if not self.required_races[private.Player:Race()] then
		self.is_ignored = nil
		private.num_category_collectables[self.type] = private.num_category_collectables[self.type] + 1
	end
end

function pet_prototype:SetTimeOfDay(time_of_day)
	self.time_of_day = time_of_day
end

function pet_prototype:TimeOfDay()
	return self.time_of_day
end

-- Some pets can be found only during certain seasons, such as Winter.
function pet_prototype:SetSeason(season)
	self.season = season
end

function pet_prototype:Season()
	return self.season
end

function pet_prototype:SetWeather(weather)
	self.weather = weather
end

function pet_prototype:Weather()
	return self.weather
end

-------------------------------------------------------------------------------
-- Toy methods.
-------------------------------------------------------------------------------
function toy_prototype:GetName()
	self.name = self.name or _G.GetItemInfo(self.id)

	return self.name or _G.UNKNOWN
end

function toy_prototype:Icon()
	if self.icon then
		return self.icon
	end

	local _, _, _, _, texture = _G.GetItemInfoInstant(self.id)
	self:SetIcon(texture)

	return self.icon
end

-------------------------------------------------------------------------------
-- Collectable methods.
-------------------------------------------------------------------------------
-- ... == coords x:y
function collectable_prototype:AddZoneLocations(zoneName, levelRange, ...)
	self:AddAcquireData(A.WORLD_DROP, levelRange and "pet_battle" or "zoneLocation", nil, zoneName)
	self:AddFilters(private.FILTER_IDS.WORLD_DROP)

	self.zone_list = self.zone_list or {}
	self.zone_list[zoneName] = self.zone_list[zoneName] or {}

	local zoneField = levelRange or "coords"
	self.zone_list[zoneName][zoneField] = self.zone_list[zoneName][zoneField] or {}

	local zoneCoords = self.zone_list[zoneName][zoneField]
	local coordsCount = select('#', ...)
	if coordsCount == 0 then
		zoneCoords[#zoneCoords + 1] = levelRange and "secondary" or "unknown"
		return
	end

	for index = 1, coordsCount do
		zoneCoords[#zoneCoords + 1] = (select(index, ...))
	end
end

function collectable_prototype:SetDescription(description)
	if not description or self.description then
		return
	end
	self.description = description
end

function collectable_prototype:Description()
	return self.description
end

function collectable_prototype:SetIcon(texture_path)
	if not texture_path or self.icon then
		return
	end
	self.icon = texture_path
end

function collectable_prototype:Icon()
	return self.icon
end

function collectable_prototype:SetName(name)
	if not name then
		return
	end
	self.name = name
end

function collectable_prototype:Name()
	return self.name
end

function collectable_prototype:SetItemID(item_id)
	self.item_id = item_id
end

function collectable_prototype:ItemID()
	return self.item_id
end

function collectable_prototype:SetSpellID(spell_id)
	self.spell_id = spell_id
end

function collectable_prototype:SpellID()
	return self.spell_id
end

-- Used to set the faction for collectables which only can be learned by one class, faction, or race. These collectables
-- will never be able to be learned by players who do not meet the requirements, so we do not want to show or count them.
function collectable_prototype:SetRequiredClass(class_name)
	self.required_class = class_name

	if class_name and private.Player:Class() ~= class_name then
		self.is_ignored = true
		private.num_category_collectables[self.type] = private.num_category_collectables[self.type] - 1
	end
end

function collectable_prototype:RequiredClass()
	return self.required_class
end

function collectable_prototype:SetRequiredFaction(faction_name)
	self.required_faction = faction_name

	if faction_name and private.Player:Faction() ~= faction_name then
		self.is_ignored = true
		private.num_category_collectables[self.type] = private.num_category_collectables[self.type] - 1
	end
end

function collectable_prototype:RequiredFaction()
	return self.required_faction
end

function collectable_prototype:SetRequiredRaces(...)
	local num_races = select('#', ...)

	self.required_races = self.required_races or {}

	for index = 1, num_races do
		local race_name = select(index, ...)

		if private.PLAYER_RACE_FILENAMES[race_name] then
			self.required_races[race_name] = true
		else
			addon:Debug("Attempting to set unknown race '%s' for '%s' (%d)", race_name, self.name or _G.UNKNOWN, self.id)
		end
	end

	if not self.required_races[private.Player:Race()] then
		self.is_ignored = true
		private.num_category_collectables[self.type] = private.num_category_collectables[self.type] - 1
	end
end

function collectable_prototype:RequiredRaces()
	return self.required_races
end

function collectable_prototype:Retire()
	self:AddAcquireData(private.ACQUIRE_TYPES.RETIRED)
	self:AddFilters(private.FILTER_IDS.RETIRED)
end

-------------------------------------------------------------------------------
-- Collectable state flags.
-------------------------------------------------------------------------------
local COLLECTABLE_STATE_FLAGS = {
	KNOWN = 0x00000001,
	RELEVANT = 0x00000002,
	VISIBLE = 0x00000004,
}

function collectable_prototype:HasState(state_name)
	return self.state and (bit.band(self.state, COLLECTABLE_STATE_FLAGS[state_name]) == COLLECTABLE_STATE_FLAGS[state_name]) or false
end

function collectable_prototype:AddState(state_name)
	if not self.state then
		self.state = 0
	end

	if bit.band(self.state, COLLECTABLE_STATE_FLAGS[state_name]) == COLLECTABLE_STATE_FLAGS[state_name] then
		return
	end
	self.state = bit.bxor(self.state, COLLECTABLE_STATE_FLAGS[state_name])
end

function collectable_prototype:RemoveState(state_name)
	if not self.state then
		return
	end

	if bit.band(self.state, COLLECTABLE_STATE_FLAGS[state_name]) ~= COLLECTABLE_STATE_FLAGS[state_name] then
		return
	end
	self.state = bit.bxor(self.state, COLLECTABLE_STATE_FLAGS[state_name])

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
		reputation3 = private.REP_FLAGS_WORD3,
		item1 = private.ITEM_FLAGS_WORD1,
	}

	function collectable_prototype:HasFilter(field_name, flag_name)
		local bitfield = self.flags[field_name]
		local bitset = BITFIELD_MAP[field_name]
		local value = bitset[flag_name]

		return bitfield and (bit.band(bitfield, value) == value) or false
	end
end -- do-block

function collectable_prototype:GetName()
	return self.name or ("%s - %d"):format(_G.UNKNOWN, self.id)
end

function collectable_prototype:GetDisplayName()
	local _, _, _, quality_color = _G.GetItemQualityColor(self.quality)
	local has_faction = private.Player:HasProperRepLevel(self.acquire_data[A.REPUTATION])
	local display_name = ("|c%s%s|r"):format(quality_color, self:GetName())

	if addon.db.profile.exclusionlist[self.id] then
		display_name = ("** %s **"):format(display_name)
	end

	return display_name
end

function collectable_prototype:SetMiscFilterType(filter_type)
	if not private.COLLECTION_FILTER_TYPES[filter_type:upper()] then
		addon:Debug("Attempting to set invalid misc filter type '%s' for '%s' (%d)", filter_type, self.name, self.id)
		return
	end
	self.misc_filter_type = filter_type:lower()
end

function collectable_prototype:MiscFilterType()
	return self.misc_filter_type
end

local function SetFilterState(collectable, turn_on, ...)
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

			if not collectable.flags[member_name] then
				collectable.flags[member_name] = 0
			end

			if turn_on then
				if bit.band(collectable.flags[member_name], bitfield[filter_name]) == bitfield[filter_name] then
					if collectable.flags[member_name] == 0 then
						collectable.flags[member_name] = nil
					end
					return
				end
			else
				if bit.band(collectable.flags[member_name], bitfield[filter_name]) ~= bitfield[filter_name] then
					if collectable.flags[member_name] == 0 then
						collectable.flags[member_name] = nil
					end
					return
				end
			end
			collectable.flags[member_name] = bit.bxor(collectable.flags[member_name], bitfield[filter_name])

			if collectable.flags[member_name] == 0 then
				collectable.flags[member_name] = nil
			end
		else
			addon:Debug("Collectable '%s' (ID %d): Attempting to %s non-existent filter flag.", collectable.name or _G.UNKNOWN, collectable.id, turn_on and "assign" or "remove")
		end
	end
end

function collectable_prototype:AddFilters(...)
	SetFilterState(self, true, ...)
end

function collectable_prototype:RemoveFilters(...)
	SetFilterState(self, false, ...)
end

function collectable_prototype:AddAcquireData(acquire_type, type_string, unit_list, ...)
	local location_list = private.location_list
	local acquire_list = private.acquire_list
	local acquire = self.acquire_data[acquire_type]

	if not acquire then
		self.acquire_data[acquire_type] = {}
		acquire = self.acquire_data[acquire_type]
	end
	acquire_list[acquire_type].collectables[self.type] = acquire_list[acquire_type].collectables[self.type] or {}
	acquire_list[acquire_type].collectables[self.type][self.id] = true

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
				unit.item_list[self.type] = unit.item_list[self.type] or {}
				unit.item_list[self.type][self.id] = quantity
			else
				addon:Debug("Collectable ID %d: %s ID %s does not exist in the database.", self.id, type_string, identifier)
			end
		elseif type(identifier) == "string" and private.ZONE_LABELS_FROM_NAME[identifier] then
			location_name = identifier
			affiliation = type_string

			if affiliation then
				acquire_list[acquire_type].collectables[self.type][self.id] = affiliation
			end
		end

		if location_name then
			location_list[location_name] = location_list[location_name] or {}
			location_list[location_name].collectables = location_list[location_name].collectables or {}
			location_list[location_name].collectables[self.type] = location_list[location_name].collectables[self.type] or {}

			location_list[location_name].name = location_name
			location_list[location_name].collectables[self.type][self.id] = affiliation or true
		end
	end
end

function collectable_prototype:AddGarrisonMission(...)
	self:AddAcquireData(A.GARRISON_MISSION, "Garrison Mission", nil, ...)
	self:AddFilters(private.FILTER_IDS.GARRISON_MISSION)
	self:AddFilters(private.FILTER_IDS.MISC)
end

function collectable_prototype:AddProfession(...)
	self:AddAcquireData(A.PROFESSION, nil, nil, ...)
end

function collectable_prototype:AddMobDrop(...)
	self:AddAcquireData(A.MOB_DROP, "Mob", private.mob_list, ...)
	self:AddFilters(private.FILTER_IDS.MOB_DROP)
end

function collectable_prototype:AddTrainer(...)
	self:AddAcquireData(A.TRAINER, "Trainer", private.trainer_list, ...)
	self:AddFilters(private.FILTER_IDS.TRAINER)
end

function collectable_prototype:AddVendor(...)
	self:AddAcquireData(A.VENDOR, "Vendor", private.vendor_list, ...)
	self:AddFilters(private.FILTER_IDS.VENDOR)
end

function collectable_prototype:AddLimitedVendor(...)
	self:AddAcquireData(A.VENDOR, "Limited Vendor", private.vendor_list, ...)
	self:AddFilters(private.FILTER_IDS.VENDOR)
end

function collectable_prototype:AddWorldDrop(...)
	self:AddAcquireData(A.WORLD_DROP, "world_drop", nil, ...)
	self:AddFilters(private.FILTER_IDS.WORLD_DROP)
end

function collectable_prototype:AddQuest(...)
	self:AddAcquireData(A.QUEST, "Quest", private.quest_list, ...)
	self:AddFilters(private.FILTER_IDS.QUEST)
end

function collectable_prototype:AddAchievement(...)
	self:AddAcquireData(A.ACHIEVEMENT, "Achievement", nil, ...)
	self:AddFilters(private.FILTER_IDS.ACHIEVEMENT)
end

function collectable_prototype:AddCustom(...)
	self:AddAcquireData(A.CUSTOM, "Custom", private.custom_list, ...)
end

function collectable_prototype:AddWorldEvent(...)
	self:AddAcquireData(A.WORLD_EVENTS, "World Events", private.world_events_list, ...)
	self:AddFilters(private.FILTER_IDS.WORLD_EVENTS)
end

function collectable_prototype:AddRepVendor(faction_id, rep_level, ...)
	local location_list = private.location_list
	local acquire_list = private.acquire_list
	local vendor_list = private.vendor_list
	local acquire_data = self.acquire_data[A.REPUTATION]

	if not acquire_data then
		self.acquire_data[A.REPUTATION] = {}
		acquire_data = self.acquire_data[A.REPUTATION]
	end
	local faction = acquire_data[faction_id]

	if not faction then
		acquire_data[faction_id] = {}
		faction = acquire_data[faction_id]
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
				rep_vendor.item_list[self.type] = rep_vendor.item_list[self.type] or {}
				rep_vendor.item_list[self.type][self.id] = true
			else
				addon:Debug("Collectable ID %d: Reputation Vendor ID %s does not exist in the database.", self.id, tostring(vendor_id))
			end
		else
			addon:Debug("Collectable ID %d: Faction ID %d does not exist in the database.", self.id, faction_id)
		end
		acquire_list[A.REPUTATION] = acquire_list[A.REPUTATION] or {}
		acquire_list[A.REPUTATION].collectables = acquire_list[A.REPUTATION].collectables or {}
		acquire_list[A.REPUTATION].collectables[self.type] = acquire_list[A.REPUTATION].collectables[self.type] or {}

		acquire_list[A.REPUTATION].name = private.ACQUIRE_NAMES[A.REPUTATION]
		acquire_list[A.REPUTATION].collectables[self.type][self.id] = affiliation or true

		if location_name then
			location_list[location_name] = location_list[location_name] or {}
			location_list[location_name].collectables = location_list[location_name].collectables or {}
			location_list[location_name].collectables[self.type] = location_list[location_name].collectables[self.type] or {}

			location_list[location_name].name = location_name
			location_list[location_name].collectables[self.type][self.id] = affiliation or true
		end
	end
	self:AddFilters(private.FILTER_IDS.REPUTATION)
end

local DUMP_FUNCTION_FORMATS = {
	[A.ACHIEVEMENT] = "%s:AddAchievement(%s)",
	[A.CUSTOM] = "%s:AddCustom(%s)",
	[A.GARRISON_MISSION] = "%s:AddGarrisonMission(%s)",
	[A.MOB_DROP] = "%s:AddMobDrop(%s)",
	[A.PROFESSION] = "%s:AddProfession(%s)",
	[A.QUEST] = "%s:AddQuest(%s)",
	[A.RETIRED] = "%s:Retire()",
	[A.WORLD_DROP] = "%s:AddWorldDrop(%s)",
	[A.WORLD_EVENTS] = "%s:AddWorldEvent(%s)",
}

local ZONE_LOCATION_FORMAT = "%s:AddZoneLocations(%s)"

local IGNORED_FLAGS = {
	RETIRED = true,
}

local sorted_data = {}
local reverse_map = {}

function collectable_prototype:Dump()
	local output = private.TextDump
	local genesis = private.GAME_VERSIONS[self.genesis]
	local label = (self.type == "CRITTER") and "pet" or "mount"

	if not self.name or not self.id then
		addon:Print("ID: " .. self.id .. " has an issue.")
		return
	end
	output:AddLine(("-- %s -- %d"):format(self.name, self.id))
	output:AddLine(("%s = Add%s(%d, V.%s, Q.%s)"):format(label, label:gsub("^%l", string.upper), self.id, private.GAME_VERSION_NAMES[genesis], private.ITEM_QUALITY_NAMES[self.quality]))

	if self.item_id then
		output:AddLine(("%s:SetItemID(%d)"):format(label, self.item_id))
	end

	if self.spell_id then
		output:AddLine(("%s:SetSpellID(%d)"):format(label, self.spell_id))
	end

	if self.required_faction then
		output:AddLine(("%s:SetRequiredFaction(\"%s\")"):format(label, self.required_faction))
	end

	if self.misc_filter_type then
--		output:AddLine(("%s:SetMiscFilterType(\"%s\")"):format(self.misc_filter_type:upper()))
	end

	if self.time_of_day then
		output:AddLine(("%s:SetTimeOfDay(TOD.%s)"):format(label, private.TIME_OF_DAY_STRINGS[self.time_of_day]))
	end

	if self.season then
		output:AddLine(("%s:SetSeason(SEASON.%s)"):format(label, private.SEASON_STRINGS[self.season]))
	end

	if self.weather then
		output:AddLine(("%s:SetWeather(WEATHER.%s)"):format(label, private.WEATHER_STRINGS[self.weather]))
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
				local flag_name = private.FILTER_STRINGS[private.FILTER_IDS[reverse_map[flag]]]

				if not IGNORED_FLAGS[flag_name] then
					if flag_string then
						flag_string = ("%s, F.%s"):format(flag_string, flag_name)
					else
						flag_string = ("F.%s"):format(flag_name)
					end
				end
			end
		end
	end

	if flag_string then
		output:AddLine(("%s:AddFilters(%s)"):format(label, flag_string))
	end

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
					addon:Printf("Collectable %d (%s) - no string for faction %d", self.id, self.name, rep_id)
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
					if faction_string and rep_string and values then
						output:AddLine(("%s:AddRepVendor(%s, %s, %s)"):format(label, faction_string, rep_string, values))
					end
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
				local quantity = vendor.item_list[self.id]

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
				output:AddLine(("%s:AddVendor(%s)"):format(label, values))
			end

			if limited_values then
				output:AddLine(("%s:AddLimitedVendor(%s)"):format(label, limited_values))
			end
		elseif DUMP_FUNCTION_FORMATS[acquire_type] then
			local values

			table.wipe(sorted_data)
			table.wipe(reverse_map)

			for id_num in pairs(acquire_info) do
				table.insert(sorted_data, id_num)
			end
			table.sort(sorted_data)

			if acquire_type == A.WORLD_DROP and self.zone_list and _G.next(self.zone_list) then
				for zoneIndex = 1, #sorted_data do
					local zoneName = sorted_data[zoneIndex]

					if self.zone_list[zoneName] then
						local zoneString = ("Z.%s"):format(ZL[zoneName])

						for levelRange, coordinateList in pairs(self.zone_list[zoneName]) do
							values = ("%s, \"%s\""):format(zoneString, levelRange)

							for coordinateIndex = 1, #coordinateList do
								local coordinates = coordinateList[coordinateIndex]

								if coordinateIndex == 1 then
									if coordinates == "secondary" then
										values = ("%s, %s"):format(values, "true")
									elseif coordinates == "unknown" then
										values = nil
										break
									else
										values = ("%s, false, \"%s\""):format(values, coordinates)
									end
								else
									values = ("%s, \"%s\""):format(values, coordinates)
								end
							end

							if values then
								output:AddLine(ZONE_LOCATION_FORMAT:format(label, values))
							end
						end
					end
				end
			else
				for index, identifier in ipairs(sorted_data) do
					local saved_id

					if type(identifier) == "string" then
						if acquire_type == A.WORLD_DROP then
							saved_id = ("Z.%s"):format(ZL[identifier])
						elseif acquire_type == A.PROFESSION then
							saved_id = ("PROF.%s"):format(string.upper(identifier:gsub(" ", "_")))
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

				output:AddLine(DUMP_FUNCTION_FORMATS[acquire_type]:format(label, values))
			end

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
		output:AddLine(("%s:AddAcquireData(%s)"):format(label, flag_string))
	end
	output:AddLine(" ")
end

function collectable_prototype:DumpTrainers(registry)
	local trainer_data = self.acquire_data[A.TRAINER]

	if not trainer_data then
		return
	end

	for identifier in pairs(trainer_data) do
		registry[identifier] = true
	end
end

