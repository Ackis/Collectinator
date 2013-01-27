-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

local table = _G.table
local string = _G.string

local pairs, ipairs = _G.pairs, _G.ipairs

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
local ORDERED_COLLECTIONS = private.ORDERED_COLLECTIONS

local A = private.ACQUIRE_TYPES

-------------------------------------------------------------------------------
-- Upvalues
-------------------------------------------------------------------------------
local AcquireTable = private.AcquireTable
local SetTextColor = private.SetTextColor

function private.InitializeTabs()
	local MainPanel = addon.Frame
	local ListFrame = MainPanel.list_frame

	local function Tab_Enable(self)
		self.left:ClearAllPoints()
		self.left:SetPoint("BOTTOMLEFT")

		self.left:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ActiveTab")
		self.left:SetTexCoord(0, 0.15625, 0, 0.546875)

		self.middle:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ActiveTab")
		self.middle:SetTexCoord(0.15625, 0.84375, 0, 0.546875)

		self.right:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ActiveTab")
		self.right:SetTexCoord(0.84375, 1, 0, 0.546875)

		self:Disable()
	end

	local function Tab_Disable(self)
		self.left:ClearAllPoints()
		self.left:SetPoint("TOPLEFT")

		self.left:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-InactiveTab")
		self.left:SetTexCoord(0, 0.15625, 0, 1)

		self.middle:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-InactiveTab")
		self.middle:SetTexCoord(0.15625, 0.84375, 0, 1)

		self.right:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-InactiveTab")
		self.right:SetTexCoord(0.84375, 1, 0, 1)

		self:Enable()
	end

	local function Tab_SetText(self, ...)
		local text = self.Real_SetText(self, ...)
		self:SetWidth(40 + self:GetFontString():GetStringWidth())

		return ...
	end

	local function Tab_OnClick(self, button, down)
		local id_num = self:GetID()

		for index in ipairs(MainPanel.tabs) do
			local tab = MainPanel.tabs[index]

			if index == id_num then
				self:ToFront()
			else
				tab:ToBack()
			end
		end
		addon.db.profile.current_tab = id_num
		MainPanel.current_tab = id_num

		ListFrame:Update(nil, false)
		_G.PlaySound("igCharacterInfoTab")
	end

	-- Expands or collapses a list entry in the current active tab.
	local function Tab_ModifyEntry(self, entry, expanded)
		local member = ORDERED_COLLECTIONS[MainPanel.current_collectable_type] .. " expanded"

		if entry.acquire_id then
			self[member][private.ACQUIRE_NAMES[entry.acquire_id]] = expanded or nil
		end

		if entry.location_id then
			self[member][entry.location_id] = expanded or nil
		end

		if entry.collectable then
			self[member][entry.collectable] = expanded or nil
		end
	end

	local function CreateTab(id_num, text, ...)
		local tab = _G.CreateFrame("Button", nil, MainPanel)

		tab:SetID(id_num)
		tab:SetHeight(32)
		tab:SetPoint(...)
		tab:SetFrameLevel(tab:GetFrameLevel() + 4)

		tab.left = tab:CreateTexture(nil, "BORDER")
		tab.left:SetWidth(20)
		tab.left:SetHeight(32)

		tab.right = tab:CreateTexture(nil, "BORDER")
		tab.right:SetWidth(20)
		tab.right:SetHeight(32)
		tab.right:SetPoint("TOP", tab.left)
		tab.right:SetPoint("RIGHT", tab)

		tab.middle = tab:CreateTexture(nil, "BORDER")
		tab.middle:SetHeight(32)
		tab.middle:SetPoint("LEFT", tab.left, "RIGHT")
		tab.middle:SetPoint("RIGHT", tab.right, "LEFT")

		tab:SetHighlightTexture("Interface\\PaperDollInfoFrame\\UI-Character-Tab-Highlight", "ADD")

		local tab_highlight = tab:GetHighlightTexture()
		tab_highlight:ClearAllPoints()
		tab_highlight:SetPoint("TOPLEFT", tab, "TOPLEFT", 8, 1)
		tab_highlight:SetPoint("BOTTOMRIGHT", tab, "BOTTOMRIGHT", -8, 1)

		tab:SetDisabledFontObject(_G.GameFontHighlightSmall)
		tab:SetHighlightFontObject(_G.GameFontHighlightSmall)
		tab:SetNormalFontObject(_G.GameFontNormalSmall)
		tab.Real_SetText = tab.SetText

		tab.SetText = Tab_SetText
		tab:SetText(text)

		tab.ToFront = Tab_Enable
		tab.ToBack = Tab_Disable
		tab.ModifyEntry = Tab_ModifyEntry

		tab:ToBack()

		tab:SetScript("OnClick", Tab_OnClick)

		return tab
	end

	local AcquisitionTab = CreateTab(1, L["Acquisition"], "TOPLEFT", MainPanel, "BOTTOMLEFT", 4, 81)
	local CollectablesTab = CreateTab(2, _G.COMPANIONS, "LEFT", AcquisitionTab, "RIGHT", -14, 0)
	local LocationTab = CreateTab(3, L["Location"], "LEFT", CollectablesTab, "RIGHT", -14, 0)

	-- Used for Location and Acquisition sort - since many collectables have multiple locations/acquire types it is
	-- necessary to ensure each is counted only once.
	local collectable_registry = {}

	local function FactionTally(source_data, unit_list, location)
		local good, bad = 0, 0

		for id_num in pairs(source_data) do
			local unit_faction = unit_list[id_num].faction

			if not location or unit_list[id_num].location == location then
				if not unit_faction or unit_faction == private.Player:Faction() or unit_faction == "Neutral" then
					good = good + 1
				else
					bad = bad + 1
				end
			end
		end
		return good, bad
	end

	local sorted_acquires = {}

	local function Sort_Acquisition(a, b)
		local acquire_list = private.acquire_list
		local acquire_a = acquire_list[a]
		local acquire_b = acquire_list[b]

		return acquire_a.name < acquire_b.name
	end

	function AcquisitionTab:Initialize(expand_mode)
		local collectable_type = ORDERED_COLLECTIONS[MainPanel.current_collectable_type]
		local collectables = private.collectable_list[collectable_type]
		local collectable_count = 0
		local insert_index = 1

		table.wipe(collectable_registry)
		table.wipe(sorted_acquires)

		sorted_acquires = {}

		for acquire_name in pairs(private.acquire_list) do
			sorted_acquires[#sorted_acquires + 1] = acquire_name
		end
		table.sort(sorted_acquires, Sort_Acquisition)

		self[collectable_type .. " expanded"] = self[collectable_type .. " expanded"] or {}

		for index = 1, #sorted_acquires do
			local acquire_type = sorted_acquires[index]
			local acquire_list = private.acquire_list[acquire_type].collectables[collectable_type]
			local count = 0

			-- Check to see if any recipes for this acquire type will be shown - otherwise, don't show the type in the list.
			if acquire_list then
				for collectable_id, affiliation in pairs(acquire_list) do
					local collectable = collectables[collectable_id]

					if collectable and collectable:HasState("VISIBLE") and MainPanel.search_editbox:MatchesCollectable(collectable) then
						count = count + 1

						if not collectable_registry[collectable] then
							collectable_registry[collectable] = true
							collectable_count = collectable_count + 1
						end
					else
						self[collectable_type .. " expanded"][collectable_type] = nil
					end
				end
			end

			if count > 0 then
				local entry = AcquireTable()

				local acquire_str = private.ACQUIRE_STRINGS[acquire_type]:lower():gsub("_", "")
				local color_code = private.CATEGORY_COLORS[acquire_str] or "ffffff"
				local is_expanded = self[collectable_type .. " expanded"][private.ACQUIRE_NAMES[acquire_type]]

				entry.text = ("%s (%d)"):format(SetTextColor(color_code, private.ACQUIRE_NAMES[acquire_type]), count)
				entry.acquire_id = acquire_type

				insert_index = ListFrame:InsertEntry(entry, nil, insert_index, "header", is_expanded or expand_mode, is_expanded or expand_mode)
			else
				self[collectable_type .. " expanded"][private.ACQUIRE_NAMES[acquire_type]] = nil
			end
		end
		return collectable_count
	end

	local sorted_locations = {}

	local function Sort_Location(a, b)
		local location_list = private.location_list
		local loc_a = location_list[a]
		local loc_b = location_list[b]

		return loc_a.name < loc_b.name
	end

	function LocationTab:Initialize(expand_mode)
		local search_box = MainPanel.search_editbox
		local collectable_type = ORDERED_COLLECTIONS[MainPanel.current_collectable_type]
		local collectable_count = 0
		local insert_index = 1

		table.wipe(collectable_registry)
		table.wipe(sorted_locations)

		for loc_name in pairs(private.location_list) do
			table.insert(sorted_locations, loc_name)
		end
		table.sort(sorted_locations, Sort_Location)

		local collectables = private.collectable_list[collectable_type]

		self[collectable_type .. " expanded"] = self[collectable_type .. " expanded"] or {}

		for index = 1, #sorted_locations do
			local loc_name = sorted_locations[index]
			local location_list = private.location_list[loc_name].collectables[collectable_type]
			local count = 0

			-- Check to see if any recipes for this location will be shown - otherwise, don't show the location in the list.
			if location_list then
				for collectable_id, affiliation in pairs(location_list) do
					local collectable = collectables[collectable_id]

					if collectable and collectable:HasState("VISIBLE") and search_box:MatchesCollectable(collectable) then
						local trainer_data = collectable.acquire_data[A.TRAINER]
						local good_count, bad_count = 0, 0
						local fac_toggle = addon.db.profile.filters.general.faction

						if not fac_toggle then
							if trainer_data then
								local good, bad = FactionTally(trainer_data, private.trainer_list, loc_name)

								if good == 0 and bad > 0 then
									bad_count = bad_count + 1
								else
									good_count = good_count + 1
								end
							end
							local vendor_data = collectable.acquire_data[A.VENDOR]

							if vendor_data then
								local good, bad = FactionTally(vendor_data, private.vendor_list, loc_name)

								if good == 0 and bad > 0 then
									bad_count = bad_count + 1
								else
									good_count = good_count + 1
								end
							end
							local quest_data = collectable.acquire_data[A.QUEST]

							if quest_data then
								local good, bad = FactionTally(quest_data, private.quest_list, loc_name)

								if good == 0 and bad > 0 then
									bad_count = bad_count + 1
								else
									good_count = good_count + 1
								end
							end
						end

						if fac_toggle or not (good_count == 0 and bad_count > 0) then
							count = count + 1

							if not collectable_registry[collectable] then
								collectable_registry[collectable] = true
								collectable_count = collectable_count + 1
							end
						end
					else
						self[collectable_type .. " expanded"][collectable_id] = nil
					end
				end
			end

			if count > 0 then
				local is_expanded = self[collectable_type .. " expanded"][loc_name]
				local entry = AcquireTable()

				if loc_name == _G.GetRealZoneText() then
					entry.text = ("%s (%d)"):format(SetTextColor(private.BASIC_COLORS["green"], loc_name), count)
					entry.emphasized = true
				else
					entry.text = ("%s (%d)"):format(SetTextColor(private.CATEGORY_COLORS["location"], loc_name), count)
					entry.emphasized = nil
				end
				entry.location_id = loc_name

				insert_index = ListFrame:InsertEntry(entry, nil, insert_index, "header", is_expanded or expand_mode, is_expanded or expand_mode)
			else
				self[collectable_type .. " expanded"][loc_name] = nil
			end
		end
		return collectable_count
	end

	function CollectablesTab:Initialize(expand_mode)
		local collectable_type = ORDERED_COLLECTIONS[MainPanel.current_collectable_type]
		local collectables = private.collectable_list[collectable_type]

		self[collectable_type .. " expanded"] = self[collectable_type .. " expanded"] or {}

		private.SortCollectables(collectables, collectable_type)

		local sorted_collectables = addon.sorted_collectables
		local collectable_count = 0
		local insert_index = 1

		for i = 1, #sorted_collectables do
			local collectable = collectables[sorted_collectables[i]]

			if collectable and collectable:HasState("VISIBLE") and MainPanel.search_editbox:MatchesCollectable(collectable) then
				local is_expanded = self[collectable_type .. " expanded"][collectable]
				local entry = AcquireTable()
				entry.text = collectable:GetDisplayName()
				entry.collectable = collectable

				collectable_count = collectable_count + 1

				insert_index = ListFrame:InsertEntry(entry, nil, insert_index, "header", is_expanded or expand_mode, is_expanded or expand_mode)
			else
				self[collectable_type .. " expanded"][collectable] = nil
			end
		end
		return collectable_count
	end

	MainPanel.tabs = {
		AcquisitionTab,
		CollectablesTab,
		LocationTab,
	}

	private.InitializeTabs = nil
end