--[[
************************************************************************
Utilities.lua
Utilitiy functions used for Collectinator
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

-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local pairs = _G.pairs
local tonumber = _G.tonumber
local type = _G.type

-- Libraries
local table = _G.table

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub

local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)

-----------------------------------------------------------------------
-- Methods.
-----------------------------------------------------------------------
function private.SetExpansionLogo(texture, expansionLevel)
	if private.EXPANSION_LOGOS[expansionLevel].texture then
		texture:SetTexture(private.EXPANSION_LOGOS[expansionLevel].texture)
		texture:Show()
	elseif private.EXPANSION_LOGOS[expansionLevel].atlas then
		texture:SetAtlas(private.EXPANSION_LOGOS[expansionLevel].atlas)
		texture:Show()
	else
		texture:Hide()
	end
end

function private.SetTextColor(color_code, text)
	return ("|cff%s%s|r"):format(color_code or "ffffff", text)
end

local NO_LOCATION_LISTS

function private:AddListEntry(lookup_list, identifier, name, location, coord_x, coord_y, faction)
	if lookup_list[identifier] then
		addon:Debug("Duplicate lookup: %s - %s.", identifier, name)
		return
	end

	local entry = {
		name = name,
		location = location,
		faction = faction,
	}

	if coord_x and coord_y then
		entry.coord_x = coord_x
		entry.coord_y = coord_y
	end

	--@alpha@
	if not NO_LOCATION_LISTS then
		NO_LOCATION_LISTS = {
			[self.custom_list] = true,
			[self.reputation_list] = true,
		}
	end

	if not location and not NO_LOCATION_LISTS[lookup_list] then
		addon:Debug("Lookup ID: %s (%s) has an unknown location.", identifier, entry.name or _G.UNKNOWN)
	end

	if faction and lookup_list == self.mob_list then
		addon:Debug("Mob %d (%s) has been assigned to faction %s.", identifier, name, entry.faction)
	end
	--@end-alpha@
	lookup_list[identifier] = entry
	return entry
end

function private.ItemLinkToID(item_link)
	if not item_link then
		return
	end

	local id = item_link:match("item:(%d+)")

	if not id then
		return
	end
	return tonumber(id)
end

-------------------------------------------------------------------------------
-- Text dumping functions
-------------------------------------------------------------------------------
--@debug@
do
	local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
	local TextDump = private.TextDump

	private.DUMP_COMMANDS = {
		empties = function()
			addon:ShowEmptySources()
		end,
		phrases = function()
			addon:DumpPhrases()
		end,
		zones = function(input)
			if not input then
				addon:Print("Type the name or partial name of a zone.")
				return
			end
			addon:DumpZones(input)
		end
	}

	function addon:DumpPhrases()
		local sorted = {}

		for phrase, translation in pairs(L) do
			sorted[#sorted + 1] = phrase
		end
		table.sort(sorted)
		TextDump:Clear()

		for index = 1, #sorted do
			local phrase = sorted[index]
			local translation = L[phrase]

			if phrase == translation then
				TextDump:AddLine(("L[\"%s\"] = true"):format(phrase:gsub("\"", "\\\"")))
			elseif translation:find("\n") then
				TextDump:AddLine(("L[\"%s\"] = [[%s]]"):format(phrase:gsub("\"", "\\\""), translation))
			else
				TextDump:AddLine(("L[\"%s\"] = \"%s\""):format(phrase:gsub("\"", "\\\""), translation:gsub('\"', '\\"')))
			end
		end
		TextDump:Display()
	end

	function addon:DumpMembers(match)
		TextDump:AddLine("Addon Object members.\n")

		local count = 0

		for key, value in pairs(self) do
			local val_type = type(value)

			if not match or val_type == match then
				TextDump:AddLine(("%s (%s)"):format(key, val_type))
				count = count + 1
			end
		end
		TextDump:AddLine(("\n%d found\n"):format(count))
		TextDump:Display()
	end

	local function TableKeyFormat(input)
		if not input then
			return ""
		end

		return input:upper():gsub(" ", "_"):gsub("'", ""):gsub(":", ""):gsub("-", "_"):gsub("%(", ""):gsub("%)", "")
	end

	function addon:DumpZones(name)
		for index = 1, 100000 do
			local zone_name = _G.C_Map.GetMapInfo(index).name

			if zone_name and zone_name:lower():find(name:lower()) then
				TextDump:AddLine(("%s = _G.C_Map.GetMapInfo(%d).name,"):format(TableKeyFormat(zone_name), index))
			end
		end
		TextDump:Display()
	end

	function addon:DumpZones2(input)
		TextDump:Clear()

		if type(input) == "number" then
			local zone_name = _G.C_Map.GetMapInfo(input).name

			if zone_name then
				TextDump:AddLine(("%s = _G.C_Map.GetMapInfo(%d).name,"):format(TableKeyFormat(zone_name), input))
			end
		else
			for index = 1, 100000 do
				local zone_name = _G.C_Map.GetMapInfo(index).name

				if zone_name and zone_name:lower():find(input:lower()) then
					TextDump:AddLine(("%s = _G.C_Map.GetMapInfo(%d).name,"):format(TableKeyFormat(zone_name), index))
				end
			end
		end

		if TextDump:Lines() == 0 then
			TextDump:AddLine("Nothing to display.")
		end
		TextDump:Display()
	end

	function addon:DumpReps(name)
		TextDump:Clear()

		for index = 1, 3000 do
			local rep_name = _G.GetFactionInfoByID(index)

			if rep_name and (not name or rep_name:lower():find(name:lower())) then
				TextDump:AddLine(("%s = %d,"):format(TableKeyFormat(rep_name), index))
			end
		end
		TextDump:Display()
	end

	function addon:DumpBossIDs(name)
		TextDump:Clear()
		for index = 1, 10000 do
			local boss_name = _G.EJ_GetEncounterInfo(index)

			if boss_name and boss_name:lower():find(name:lower()) then
				TextDump:AddLine(("%s = _G.EJ_GetEncounterInfo(%d),"):format(TableKeyFormat(boss_name), index))
			end
		end
		TextDump:Display()
	end


	-------------------------------------------------------------------------------
	-- Miscellaneous utilities
	-------------------------------------------------------------------------------
	local function find_empties(unit_list, description)
		local count

		for unit_id, unit in pairs(unit_list) do
			count = 0

			if unit.item_list then
				for collectable_id in pairs(unit.item_list) do
					count = count + 1
				end
			end

			if count == 0 then
				TextDump:AddLine(("%s %s (%s) has no collections."):format(description, unit.name or _G.UNKNOWN, unit_id))
			end
		end
	end

	function addon:ShowEmptySources()
		private.LoadAllCollectables()
		TextDump:Clear()

		find_empties(private.vendor_list, "Vendor")
		find_empties(private.mob_list, "Mob")
		find_empties(private.quest_list, "Quest")
		find_empties(private.custom_list, "Custom Entry")
		find_empties(private.world_events_list, "World Event")

		if TextDump:Lines() == 0 then
			TextDump:AddLine("Nothing to display.")
		end

		TextDump:Display()
	end
end -- do
--@end-debug@
