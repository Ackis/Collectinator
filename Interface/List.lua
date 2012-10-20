-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

local string = _G.string
local table = _G.table
local math = _G.math

local bit = _G.bit
local pairs = _G.pairs
local select = _G.select
local type = _G.type

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub	= _G.LibStub
local addon	= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L		= LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local QTip	= LibStub("LibQTip-1.0")
local Dialog	= LibStub("LibDialog-1.0")

-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
local NUM_COLLECTABLE_LINES = 25
local SCROLL_DEPTH	= 5
local LISTFRAME_WIDTH	= 295
local LIST_ENTRY_WIDTH	= 286

local CATEGORY_COLORS	= private.CATEGORY_COLORS
local BASIC_COLORS	= private.BASIC_COLORS

local COMMON1		= private.COMMON_FLAGS_WORD1

local A			= private.ACQUIRE_TYPES
local BFAC		= private.LOCALIZED_FACTION_STRINGS

local COORD_FORMAT	= "(%.2f, %.2f)"

-------------------------------------------------------------------------------
-- Dialogs.
-------------------------------------------------------------------------------
Dialog:Register("Collectinator_NotScanned", {
	text = L["NOTSCANNED"],
	buttons = {
		{
			text = _G.OKAY,
		},
	},
	show_while_dead = true,
	hide_on_escape = true,
})

Dialog:Register("Collectinator_AllFiltered", {
	text = L["ALL_FILTERED"],
	buttons = {
		{
			text = _G.OKAY
		},
	},
	show_while_dead = true,
	hide_on_escape = true,
})

Dialog:Register("Collectinator_AllKnown", {
	text = L["ALL_KNOWN"],
	buttons = {
		{
			text = _G.OKAY
		},
	},
	show_while_dead = true,
	hide_on_escape = true,
})

Dialog:Register("Collectinator_AllExcluded", {
	text = L["ALL_EXCLUDED"],
	buttons = {
		{
			text = _G.OKAY
		},
	},
	show_while_dead = true,
	hide_on_escape = true,
})

Dialog:Register("Collectinator_SearchFiltered", {
	text = L["SEARCH_FILTERED"],
	buttons = {
		{
			text = _G.OKAY
		},
	},
	show_while_dead = true,
	hide_on_escape = true,
})

function private.DismissDialogs()
	Dialog:Dismiss("Collectinator_NotScanned")
	Dialog:Dismiss("Collectinator_AllFiltered")
	Dialog:Dismiss("Collectinator_AllKnown")
	Dialog:Dismiss("Collectinator_AllExcluded")
	Dialog:Dismiss("Collectinator_SearchFiltered")
end


-------------------------------------------------------------------------------
-- Upvalues
-------------------------------------------------------------------------------
local ListItem_ShowTooltip

local acquire_tooltip

local AcquireTable = private.AcquireTable
local ReleaseTable = private.ReleaseTable
local SetTextColor = private.SetTextColor

-------------------------------------------------------------------------------
-- Frame creation and anchoring
-------------------------------------------------------------------------------
function private.InitializeListFrame()
	local MainPanel	= addon.Frame
	local ListFrame = _G.CreateFrame("Frame", nil, MainPanel)

	MainPanel.list_frame = ListFrame

	ListFrame:SetHeight(335)
	ListFrame:SetWidth(LISTFRAME_WIDTH)
	ListFrame:SetPoint("TOPLEFT", MainPanel, "TOPLEFT", 22, -75)
	ListFrame:SetBackdrop({
				      bgFile = [[Interface\DialogFrame\UI-DialogBox-Background-Dark]],
				      tile = true,
				      tileSize = 16,
			      })
	ListFrame:SetBackdropColor(1, 1, 1)
	ListFrame:EnableMouse(true)
	ListFrame:EnableMouseWheel(true)

	-------------------------------------------------------------------------------
	-- Scroll bar.
	-------------------------------------------------------------------------------
	local ScrollBar = _G.CreateFrame("Slider", nil, ListFrame)

	ScrollBar:SetPoint("TOPLEFT", ListFrame, "TOPRIGHT", 5, -11)
	ScrollBar:SetPoint("BOTTOMLEFT", ListFrame, "BOTTOMRIGHT", 5, 12)
	ScrollBar:SetWidth(24)

	ScrollBar:EnableMouseWheel(true)
	ScrollBar:SetOrientation("VERTICAL")

	ScrollBar:SetThumbTexture([[Interface\Buttons\UI-ScrollBar-Knob]])
	ScrollBar:SetMinMaxValues(0, 1)
	ScrollBar:SetValueStep(1)

	ListFrame.scroll_bar = ScrollBar

	local ScrollUpButton = _G.CreateFrame("Button", nil, ScrollBar, "UIPanelScrollUpButtonTemplate")

	ScrollUpButton:SetHeight(16)
	ScrollUpButton:SetWidth(18)
	ScrollUpButton:SetPoint("BOTTOM", ScrollBar, "TOP", 0, -4)

	local ScrollDownButton = _G.CreateFrame("Button", nil, ScrollBar,"UIPanelScrollDownButtonTemplate")

	ScrollDownButton:SetHeight(16)
	ScrollDownButton:SetWidth(18)
	ScrollDownButton:SetPoint("TOP", ScrollBar, "BOTTOM", 0, 4)

	local function ScrollBar_Scroll(delta)
		if not ScrollBar:IsShown() then
			return
		end
		local cur_val = ScrollBar:GetValue()
		local min_val, max_val = ScrollBar:GetMinMaxValues()

		if delta < 0 and cur_val < max_val then
			cur_val = math.min(max_val, cur_val + SCROLL_DEPTH)
			ScrollBar:SetValue(cur_val)
		elseif delta > 0 and cur_val > min_val then
			cur_val = math.max(min_val, cur_val - SCROLL_DEPTH)
			ScrollBar:SetValue(cur_val)
		end
	end

	ScrollUpButton:SetScript("OnClick", function(self, button, down)
		if _G.IsAltKeyDown() then
			local min_val = ScrollBar:GetMinMaxValues()
			ScrollBar:SetValue(min_val)
		else
			ScrollBar_Scroll(1)
		end
	end)

	ScrollDownButton:SetScript("OnClick", function(self, button, down)
		if _G.IsAltKeyDown() then
			local _, max_val = ScrollBar:GetMinMaxValues()
			ScrollBar:SetValue(max_val)
		else
			ScrollBar_Scroll(-1)
		end
	end)

	ScrollBar:SetScript("OnMouseWheel", function(self, delta)
		ScrollBar_Scroll(delta)
	end)

	ListFrame:SetScript("OnMouseWheel", function(self, delta)
		ScrollBar_Scroll(delta)
	end)

	-- This can be called either from ListFrame's OnMouseWheel script, manually
	-- sliding the thumb, or from clicking the up/down buttons.
	ScrollBar:SetScript("OnValueChanged", function(self, value)
		local min_val, max_val = self:GetMinMaxValues()
		local current_tab = MainPanel.tabs[MainPanel.current_tab]
		local member = "collection_" .. MainPanel.current_collectable_type .. "_scroll_value"

		current_tab[member] = value

		if value == min_val then
			ScrollUpButton:Disable()
			ScrollDownButton:Enable()
		elseif value == max_val then
			ScrollUpButton:Enable()
			ScrollDownButton:Disable()
		else
			ScrollUpButton:Enable()
			ScrollDownButton:Enable()
		end
		ListFrame:Update(nil, true)
	end)

	local function Button_OnEnter(self)
		ListItem_ShowTooltip(self, ListFrame.entries[self.string_index])
	end

	local function Button_OnLeave()
		QTip:Release(acquire_tooltip)
	end

	local function Bar_OnEnter(self)
		ListItem_ShowTooltip(self, ListFrame.entries[self.string_index])
	end

	local function Bar_OnLeave()
		QTip:Release(acquire_tooltip)
	end

	local function ListItem_OnClick(self, button, down)
		local clicked_index = self.string_index

		-- Don't do anything if they've clicked on an empty button
		if not clicked_index or clicked_index == 0 then
			return
		end
		local clicked_line = ListFrame.entries[clicked_index]

		if not clicked_line then
			return
		end

		-- First, check if this is a "modified" click, and react appropriately
		if clicked_line.collectable and _G.IsModifierKeyDown() then
			if _G.IsControlKeyDown() then
				if _G.IsShiftKeyDown() then
					--addon:AddWaypoint(clicked_line.collectable, clicked_line.acquire_id, clicked_line.location_id, clicked_line.npc_id)
					addon:Print("Waypoints are not yet supported.")
				else
					local edit_box = _G.ChatEdit_ChooseBoxForSend()

					_G.ChatEdit_ActivateChat(edit_box)
					edit_box:Insert(_G.GetSpellLink(clicked_line.collectable.collection_spell_id))
				end
			elseif _G.IsShiftKeyDown() then
				local profession_item_id = clicked_line.collectable:ItemID()

				if profession_item_id then
					local _, item_link = _G.GetItemInfo(profession_item_id)

					if item_link then
						local edit_box = _G.ChatEdit_ChooseBoxForSend()

						_G.ChatEdit_ActivateChat(edit_box)
						edit_box:Insert(item_link)
					else
						addon:Print(L["NoItemLink"])
					end
				else
					addon:Print(L["NoItemLink"])
				end
			elseif _G.IsAltKeyDown() then
				local exclusion_list = addon.db.profile.exclusionlist
				local collectable = clicked_line.collectable

				exclusion_list[collectable.id] = (not exclusion_list[collectable.id] and true or nil)
				ListFrame:Update(nil, false)
			end
		elseif clicked_line.type == "header" or clicked_line.type == "subheader" then
			-- three possibilities here (all with no modifiers)
			-- 1) We clicked on the collectable button on a closed collectable
			-- 2) We clicked on the collectable button of an open collectable
			-- 3) we clicked on the expanded text of an open collectable
			if clicked_line.is_expanded then
				local check_type = clicked_line.type
				local removal_index = clicked_index + 1
				local entry = ListFrame.entries[removal_index]
				local current_tab = MainPanel.tabs[MainPanel.current_tab]

				-- get rid of our expanded lines
				while entry and entry.type ~= check_type do
					-- Headers are never removed.
					if entry.type == "header" then
						break
					end
					current_tab:ModifyEntry(entry, false)
					ReleaseTable(table.remove(ListFrame.entries, removal_index))
					entry = ListFrame.entries[removal_index]
				end
				current_tab:ModifyEntry(clicked_line, false)
				clicked_line.is_expanded = false
			else
				ListFrame:ExpandEntry(clicked_index)
				clicked_line.is_expanded = true
			end
		else
			-- clicked_line is an expanded entry - find the index for its parent, and remove all of the parent's child entries.
			local parent = clicked_line.parent

			if parent then
				local parent_index
				local entries = ListFrame.entries

				for index = 1, #entries do
					if entries[index] == parent then
						parent_index = index
						break
					end
				end

				if not parent_index then
					addon:Debug("clicked_line (%s): parent wasn't found in ListFrame.entries", clicked_line.text)
					return
				end
				local current_tab = MainPanel.tabs[MainPanel.current_tab]

				parent.is_expanded = false
				current_tab:ModifyEntry(parent, false)

				local child_index = parent_index + 1

				while entries[child_index] and entries[child_index].parent == parent do
					ReleaseTable(table.remove(entries, child_index))
				end
			else
				addon:Debug("Error: clicked_line (%s) has no parent.", clicked_line.type or _G.UNKNOWN)
			end
		end
		QTip:Release(acquire_tooltip)

		ListFrame:Update(nil, true)
	end

	-------------------------------------------------------------------------------
	-- The state and entry buttons and the container frames which hold them.
	-------------------------------------------------------------------------------
	ListFrame.entries = {}
	ListFrame.button_containers = {}
	ListFrame.state_buttons = {}
	ListFrame.entry_buttons = {}

	for index = 1, NUM_COLLECTABLE_LINES do
		local cur_container = _G.CreateFrame("Frame", nil, ListFrame)

		cur_container:SetHeight(16)
		cur_container:SetWidth(LIST_ENTRY_WIDTH)

		local cur_state = _G.CreateFrame("Button", nil, ListFrame)
		cur_state:SetWidth(16)
		cur_state:SetHeight(16)

		local entry_name = ("%s_ListEntryButton%d"):format(FOLDER_NAME, index)
		local cur_entry = _G.CreateFrame("Button", entry_name, cur_container)
		cur_entry:SetWidth(LIST_ENTRY_WIDTH)
		cur_entry:SetHeight(16)

		local highlight_texture = cur_entry:CreateTexture(nil, "BORDER")
		highlight_texture:SetTexture([[Interface\ClassTrainerFrame\TrainerTextures]])
		highlight_texture:SetTexCoord(0.00195313, 0.57421875, 0.75390625, 0.84570313)
		highlight_texture:SetBlendMode("ADD")
		highlight_texture:SetPoint("TOPLEFT", 2, 0)
		highlight_texture:SetPoint("BOTTOMRIGHT", -2, 1)
		cur_entry:SetHighlightTexture(highlight_texture)

		local emphasis_texture = cur_entry:CreateTexture(nil, "BORDER")
		emphasis_texture:SetTexture([[Interface\QUESTFRAME\Ui-QuestLogTitleHighlight]])
		emphasis_texture:SetVertexColor(1, 0.61, 0)
		emphasis_texture:SetBlendMode("ADD")
		emphasis_texture:SetPoint("TOPLEFT", 2, 0)
		emphasis_texture:SetPoint("BOTTOMRIGHT", -2, 1)
		cur_entry.emphasis_texture = emphasis_texture

		local label = cur_entry:CreateFontString(nil, "ARTWORK")
		label:SetPoint("LEFT", cur_entry, "LEFT", 7, 0)
		label:SetPoint("RIGHT", cur_entry, "RIGHT", -7, 0)
		label:SetFontObject("GameFontNormalSmall")
		label:SetJustifyH("LEFT")
		label:SetJustifyV("CENTER")

		cur_entry:SetFontString(label)
		cur_entry.text = label

		if index == 1 then
			cur_container:SetPoint("TOPLEFT", ListFrame, "TOPLEFT", 0, -3)
			cur_state:SetPoint("LEFT", cur_container, "LEFT", 0, 0)
			cur_entry:SetPoint("LEFT", cur_state, "RIGHT", -3, 0)
		else
			cur_container:SetPoint("TOPLEFT", ListFrame.button_containers[index - 1], "BOTTOMLEFT", 0, 3)
			cur_state:SetPoint("LEFT", cur_container, "LEFT", 0, 0)
			cur_entry:SetPoint("LEFT", cur_state, "RIGHT", -3, 0)
		end
		cur_state.container = cur_container

		cur_state:SetScript("OnClick", ListItem_OnClick)
		cur_entry:SetScript("OnClick", ListItem_OnClick)

		ListFrame.button_containers[index] = cur_container
		ListFrame.state_buttons[index] = cur_state
		ListFrame.entry_buttons[index] = cur_entry
	end

	function ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, entry_expanded, expand_mode)
		entry.type = entry_type

		if parent_entry then
			if parent_entry ~= entry then
				local collectable = parent_entry.collectable
				local acquire_id = parent_entry.acquire_id
				local location_id = parent_entry.location_id
				local npc_id = parent_entry.npc_id

				-- These checks are necessary: Simply nilling fields will break things.
				if collectable then
					entry.collectable = collectable
				end

				if acquire_id then
					entry.acquire_id = acquire_id
				end

				if location_id then
					entry.location_id = location_id
				end

				if npc_id then
					entry.npc_id = npc_id
				end
				entry.parent = parent_entry
			else
				addon:Debug("Attempting to parent an entry to itself.")
			end
		elseif entry.type ~= "header" then
			addon:Debug("Non-header entry without a parent: %s - %s", entry.type, entry.text)
		end
		local insert_index = entry_index

		-- If we have acquire information for this entry, push the data table into the list
		-- and start processing the acquires.
		if expand_mode then
			entry.is_expanded = true
			table.insert(self.entries, insert_index, entry)

			MainPanel.tabs[MainPanel.current_tab]:ModifyEntry(entry, entry_expanded)

			if entry_type == "header" or entry_type == "subheader" then
				insert_index = self:ExpandEntry(insert_index, expand_mode)
			else
				insert_index = insert_index + 1
			end
		else
			entry.is_expanded = entry_expanded
			table.insert(self.entries, insert_index, entry)

			insert_index = insert_index + 1
		end
		return insert_index
	end

	-------------------------------------------------------------------------------
	-- Filter flag data and functions for ListFrame:Initialize()
	-------------------------------------------------------------------------------
	do
		local filter_db		= addon.db.profile.filters

		local binding_filters	= filter_db.binding
		local player_filters	= filter_db.player
		local obtain_filters	= filter_db.obtain
		local general_filters	= filter_db.general

		local Q = private.ITEM_QUALITIES
		local QUALITY_FILTERS = {
			[Q.COMMON]	= "common",
			[Q.UNCOMMON]	= "uncommon",
			[Q.RARE]	= "rare",
			[Q.EPIC]	= "epic",
		}

		-- HARD_FILTERS and SOFT_FILTERS are used to determine if a recipe should be shown based on the value of the key compared to the value
		-- of its saved_var.
		private.HARD_FILTERS = {
			------------------------------------------------------------------------------------------------
			-- Binding flags.
			------------------------------------------------------------------------------------------------
			["itemboe"]	= { flag = COMMON1.IBOE,	field = "common1",	sv_root = binding_filters },
			["itembop"]	= { flag = COMMON1.IBOP,	field = "common1",	sv_root = binding_filters },
			["itemboa"]	= { flag = COMMON1.IBOA,	field = "common1",	sv_root = binding_filters },
		}

		local SOFT_FILTERS = {
			["achievement"]	= { flag = COMMON1.ACHIEVEMENT,	field = "common1",	sv_root = obtain_filters },
			["profession"]	= { flag = COMMON1.PROFESSION,	field = "common1",	sv_root = obtain_filters },
			["instance"]	= { flag = COMMON1.INSTANCE,	field = "common1",	sv_root = obtain_filters },
			["mobdrop"]	= { flag = COMMON1.MOB_DROP,	field = "common1",	sv_root = obtain_filters },
			["pvp"]		= { flag = COMMON1.PVP,		field = "common1",	sv_root = obtain_filters },
			["quest"]	= { flag = COMMON1.QUEST,	field = "common1",	sv_root = obtain_filters },
			["raid"]	= { flag = COMMON1.RAID,	field = "common1",	sv_root = obtain_filters },
			["retired"]	= { flag = COMMON1.RETIRED,	field = "common1",	sv_root = general_filters },
			["reputation"]	= { flag = COMMON1.REPUTATION,	field = "common1",	sv_root = obtain_filters},
			["seasonal"]	= { flag = COMMON1.SEASONAL,	field = "common1",	sv_root = obtain_filters },
			["store"]	= { flag = COMMON1.STORE,	field = "common1",	sv_root = obtain_filters },
			["trainer"]	= { flag = COMMON1.TRAINER,	field = "common1",	sv_root = obtain_filters },
			["vendor"]	= { flag = COMMON1.VENDOR,	field = "common1",	sv_root = obtain_filters },
			["worlddrop"]	= { flag = COMMON1.WORLD_DROP,	field = "common1",	sv_root = obtain_filters },
			["tcg"]		= { flag = COMMON1.TCG	,	field = "common1",	sv_root = obtain_filters },
		}

		local REP1 = private.REP_FLAGS_WORD1
		local REP_FILTERS = {
			[REP1.ARGENTDAWN]		= "argentdawn",
			[REP1.CENARION_CIRCLE]		= "cenarioncircle",
			[REP1.THORIUM_BROTHERHOOD]	= "thoriumbrotherhood",
			[REP1.TIMBERMAW_HOLD]		= "timbermaw",
			[REP1.ZANDALAR]			= "zandalar",
			[REP1.ALDOR]			= "aldor",
			[REP1.ASHTONGUE]		= "ashtonguedeathsworn",
			[REP1.CENARION_EXPEDITION]	= "cenarionexpedition",
			[REP1.HELLFIRE]			= "hellfire",
			[REP1.CONSORTIUM]		= "consortium",
			[REP1.KOT]			= "keepersoftime",
			[REP1.LOWERCITY]		= "lowercity",
			[REP1.NAGRAND]			= "nagrand",
			[REP1.SCALE_SANDS]		= "scaleofthesands",
			[REP1.SCRYER]			= "scryer",
			[REP1.SHATAR]			= "shatar",
			[REP1.SHATTEREDSUN]		= "shatteredsun",
			[REP1.SPOREGGAR]		= "sporeggar",
			[REP1.VIOLETEYE]		= "violeteye",
			[REP1.ARGENTCRUSADE]		= "argentcrusade",
			[REP1.FRENZYHEART]		= "frenzyheart",
			[REP1.EBONBLADE]		= "ebonblade",
			[REP1.KIRINTOR]			= "kirintor",
			[REP1.HODIR]			= "sonsofhodir",
			[REP1.KALUAK]			= "kaluak",
			[REP1.ORACLES]			= "oracles",
			[REP1.WYRMREST]			= "wyrmrest",
			[REP1.WRATHCOMMON1]		= "wrathcommon1",
			[REP1.WRATHCOMMON2]		= "wrathcommon2",
			[REP1.WRATHCOMMON3]		= "wrathcommon3",
			[REP1.WRATHCOMMON4]		= "wrathcommon4",
			[REP1.WRATHCOMMON5]		= "wrathcommon5",
		}

		local REP2 = private.REP_FLAGS_WORD2
		local REP_FILTERS_2 = {
			[REP2.ASHEN_VERDICT]		= "ashenverdict",
			[REP2.CATACOMMON1]		= "catacommon1",
			[REP2.CATACOMMON2]		= "catacommon2",
			[REP2.GUARDIANS]		= "guardiansofhyjal",
			[REP2.RAMKAHEN]			= "ramkahen",
			[REP2.EARTHEN_RING]		= "earthenring",
			[REP2.THERAZANE]		= "therazane",
			[REP2.GOLDEN_LOTUS]		= "goldenlotus",
			[REP2.CLOUDSERPENT]		= "cloudserpent",
			[REP2.SHADOPAN]			= "shadopan",
			[REP2.ANGLERS]			= "anglers",
			[REP2.AUGUSTCELESTIALS]		= "augustcelestials",
			[REP2.BREWMASTERS]		= "brewmasters",
			[REP2.KLAXXI]			= "klaxxi",
			[REP2.LOREWALKERS]		= "lorewalkers",
			[REP2.TILLERS]			= "tillers",
			[REP2.BLACKPRINCE]		= "blackprince",
			[REP2.SHANGXIACADEMY]		= "shangxiacademy",
			[REP2.PANDACOMMON1]		= "pandacommon1",
			[REP2.PANDACOMMON2]		= "pandacommon2",
			[REP2.GUILD]			= "guild",
			[REP2.NETHERWING]		= "netherwing",
		}

		-- Returns true if any of the filter flags are turned on.
		local function HasEnabledFlag(filters, bitfield, name_field)
			if not bitfield then
				return true
			end

			for flag, name in pairs(filters) do
				if bit.band(bitfield, flag) == flag then
					if name_field[name] then
						return true
					end
				end
			end
			return false
		end

		---Scans a specific recipe to determine if it is to be displayed or not.
		local function CanDisplayCollectable(collectable)
			if addon.db.profile.exclusionlist[collectable.id] and not addon.db.profile.ignoreexclusionlist then
				return false
			end
			local general_filters = filter_db.general

			-------------------------------------------------------------------------------
			-- Stage 1 - Loop through exclusive flags (hard filters).
			-- If one of these does not pass, the recipe is not displayed.
			-------------------------------------------------------------------------------

			-- Display both horde and alliance factions?
			if not general_filters.faction and not private.Player:HasCollectableFaction(collectable) then
				return false
			end

			-- Expansion filters.
			if not obtain_filters[private.EXPANSION_FILTERS[private.GAME_VERSIONS[collectable.genesis]]] then
				return false
			end

			-- Quality filters.
			if not filter_db.quality[QUALITY_FILTERS[collectable.quality]] then
				return false
			end

			-------------------------------------------------------------------------------
			-- Check the hard filter flags.
			-------------------------------------------------------------------------------
			for filter, data in pairs(private.HARD_FILTERS) do
				local bitfield = collectable.flags[data.field]

				if bitfield and bit.band(bitfield, data.flag) == data.flag and not data.sv_root[filter] then
					return false
				end
			end

			-------------------------------------------------------------------------------
			-- Check the reputation filter flags.
			------------------------------------------------------------------------------
			if not HasEnabledFlag(REP_FILTERS, collectable.flags.reputation1, filter_db.rep) then
				return false
			end

			if not HasEnabledFlag(REP_FILTERS_2, collectable.flags.reputation2, filter_db.rep) then
				return false
			end

			------------------------------------------------------------------------------------------------
			-- Stage 2
			-- loop through nonexclusive (soft filters) flags until one is true
			-- If one of these is true (ie: we want to see trainers and there is a trainer flag) we display the recipe
			------------------------------------------------------------------------------------------------
			for filter, data in pairs(SOFT_FILTERS) do
				local bitfield = collectable.flags[data.field]

				if bitfield and bit.band(bitfield, data.flag) == data.flag and data.sv_root[filter] then
					return true
				end
			end
		end

		function ListFrame:Initialize(expand_mode)
			for i = 1, #self.entries do
				ReleaseTable(self.entries[i])
			end
			table.wipe(self.entries)

			-------------------------------------------------------------------------------
			-- Update recipe filters.
			-------------------------------------------------------------------------------
			local general_filters = addon.db.profile.filters.general
			local collectables = private.collectable_list[private.ORDERED_COLLECTIONS[MainPanel.current_collectable_type]]
			local collectables_known, collectables_known_filtered = 0, 0
			local collectables_total, collectables_total_filtered = 0, 0

			for collectable_id, collectable in pairs(collectables) do
				local can_display = false
				collectable:RemoveState("VISIBLE")

				if not collectable.is_ignored then
					local is_known = collectable:HasState("KNOWN")

					collectables_total = collectables_total + 1
					collectables_known = collectables_known + (is_known and 1 or 0)

					can_display = CanDisplayCollectable(collectable)

					if can_display then
						collectables_total_filtered = collectables_total_filtered + 1
						collectables_known_filtered = collectables_known_filtered + (is_known and 1 or 0)

						if not general_filters.known and is_known then
							can_display = false
						end

						if not general_filters.unknown and not is_known then
							can_display = false
						end
					end
				end

				if can_display then
					collectable:AddState("VISIBLE")
				end
			end
			local player = private.Player
			player.collectables_total = collectables_total
			player.collectables_known = collectables_known
			player.collectables_total_filtered = collectables_total_filtered
			player.collectables_known_filtered = collectables_known_filtered

			-------------------------------------------------------------------------------
			-- Mark all exclusions in the recipe database to not be displayed, and update
			-- the player's known and unknown counts.
			-------------------------------------------------------------------------------
			local known_count = 0
			local unknown_count = 0

			for collectable_id in pairs(addon.db.profile.exclusionlist) do
				local collectable = collectables[collectable_id]

				if collectable then
					if collectable:HasState("KNOWN") then
						known_count = known_count + 1
					else
						unknown_count = unknown_count + 1
					end
				end
			end
			player.excluded_collectables_known = known_count
			player.excluded_collectables_unknown = unknown_count

			-------------------------------------------------------------------------------
			-- Initialize the expand button and entries for the current tab.
			-------------------------------------------------------------------------------
			local current_tab = MainPanel.tabs[addon.db.profile.current_tab]
			local expanded_button = current_tab["expand_button_" .. MainPanel.current_collectable_type]

			if expanded_button then
				MainPanel.expand_button:Expand(current_tab)
			else
				MainPanel.expand_button:Contract(current_tab)
			end
			local collectable_count = current_tab:Initialize(expand_mode)

			-------------------------------------------------------------------------------
			-- Update the progress bar display.
			-------------------------------------------------------------------------------
			local profile = addon.db.profile
			local max_value = profile.includefiltered and player.collectables_total or (player.collectables_total_filtered + (player.collectables_known - player.collectables_known_filtered))
			local cur_value = player.collectables_known	-- Current value will always be what we know regardless of filters.

			if not profile.includeexcluded and not profile.ignoreexclusionlist then
				max_value = max_value - player.excluded_collectables_known
			end
			local progress_bar = MainPanel.progress_bar

			progress_bar:SetMinMaxValues(0, max_value)
			progress_bar:SetValue(cur_value)

			local percentage = cur_value / max_value * 100

			if (math.floor(percentage) < 101) and cur_value >= 0 and max_value >= 0 then
				local results = _G.SINGLE_PAGE_RESULTS_TEMPLATE:format(collectable_count)
				progress_bar.text:SetFormattedText("%d/%d - %1.2f%% (%s)", cur_value, max_value, percentage, results)
			else
				progress_bar.text:SetFormattedText("%s", L["NOT_YET_SCANNED"])
			end
		end
	end	-- do-block

	-- Reset the current buttons/lines
	function ListFrame:ClearLines()
		local font_object = addon.db.profile.frameopts.small_list_font and "GameFontNormalSmall" or "GameFontNormal"

		for i = 1, NUM_COLLECTABLE_LINES do
			local entry = self.entry_buttons[i]
			local state = self.state_buttons[i]

			entry.string_index = 0
			entry.text:SetFontObject(font_object)

			entry:SetText("")
			entry:SetScript("OnEnter", nil)
			entry:SetScript("OnLeave", nil)
			entry:SetWidth(LIST_ENTRY_WIDTH)
			entry.emphasis_texture:Hide()
			entry:Disable()

			state.string_index = 0

			state:Hide()
			state:SetScript("OnEnter", nil)
			state:SetScript("OnLeave", nil)
			state:Disable()

			state:ClearAllPoints()
		end
	end

	function ListFrame:Update(expand_mode, refresh)
		if not refresh then
			self:Initialize(expand_mode)
		end

		local num_entries = #self.entries

		if num_entries == 0 then
			self:ClearLines()

			-- disable expand button, it's useless here and would spam the same error again
			MainPanel.expand_button:SetNormalFontObject("GameFontDisableSmall")
			MainPanel.expand_button:Disable()
			self.scroll_bar:Hide()

			local showpopup = false

			if not addon.db.profile.hidepopup then
				showpopup = true
			end

			-- If we haven't run this before we'll show pop-ups for the first time.
			if addon.db.profile.addonversion ~= addon.version then
				addon.db.profile.addonversion = addon.version
				showpopup = true
			end
			local editbox_text = MainPanel.search_editbox:GetText()
			local player = private.Player

			if player.collectables_total == 0 then
				if showpopup then
					Dialog:Spawn("Collectinator_NotScanned")
				end
			elseif player.collectables_known == player.collectables_total then
				if showpopup then
					Dialog:Spawn("Collectinator_AllKnown")
				end
			elseif (player.collectables_total_filtered - player.collectables_known_filtered) == 0 then
				if showpopup then
					Dialog:Spawn("Collectinator_AllFiltered")
				end
			elseif player.excluded_collectables_unknown ~= 0 then
				if showpopup then
					Dialog:Spawn("Collectinator_AllExcluded")
				end
			elseif editbox_text ~= "" and editbox_text ~= _G.SEARCH then
				Dialog:Spawn("Collectinator_SearchFiltered")
			else
				addon:Print(L["NO_DISPLAY"])
				addon:Debug("Current tab is %s", _G.tostring(addon.db.profile.current_tab))
				addon:Debug("collectables_total check for 0")
				addon:Debug("collectables_total: " .. player.collectables_total)
				addon:Debug("collectables_total check for equal to collectables_total")
				addon:Debug("collectables_known: " .. player.collectables_known)
				addon:Debug("collectables_total: " .. player.collectables_total)
				addon:Debug("collectables_total_filtered - collectables_known_filtered = 0")
				addon:Debug("collectables_total_filtered: " .. player.collectables_total_filtered)
				addon:Debug("collectables_known_filtered: " .. player.collectables_known_filtered)
				addon:Debug("excluded_collectables_unknown ~= 0")
				addon:Debug("excluded_collectables_unknown: " .. player.excluded_collectables_unknown)
			end
			return
		end
		local offset = 0

		private.DismissDialogs()

		MainPanel.expand_button:SetNormalFontObject("GameFontNormalSmall")
		MainPanel.expand_button:Enable()

		if num_entries <= NUM_COLLECTABLE_LINES then
			self.scroll_bar:Hide()
		else
			local max_val = num_entries - NUM_COLLECTABLE_LINES
			local current_tab = MainPanel.tabs[MainPanel.current_tab]
			local scroll_value = current_tab["collection_"..MainPanel.current_collectable_type.."_scroll_value"] or 0

			scroll_value = math.max(0, math.min(scroll_value, max_val))
			offset = scroll_value

			self.scroll_bar:SetMinMaxValues(0, math.max(0, max_val))
			self.scroll_bar:SetValue(scroll_value)
			self.scroll_bar:Show()
		end
		self:ClearLines()

		local button_index = 1
		local string_index = button_index + offset

		-- Populate the buttons with new values
		while button_index <= NUM_COLLECTABLE_LINES and string_index <= num_entries do
			local cur_state = self.state_buttons[button_index]
			local cur_entry = self.entries[string_index]

			if cur_entry.type == "header" or cur_entry.type == "subheader" then
				cur_state:Show()

				if cur_entry.is_expanded then
					cur_state:SetNormalTexture([[Interface\MINIMAP\UI-Minimap-ZoomOutButton-Up]])
					cur_state:SetPushedTexture([[Interface\MINIMAP\UI-Minimap-ZoomOutButton-Down]])
					cur_state:SetHighlightTexture([[Interface\MINIMAP\UI-Minimap-ZoomButton-Highlight]])
				else
					cur_state:SetNormalTexture([[Interface\MINIMAP\UI-Minimap-ZoomInButton-Up]])
					cur_state:SetPushedTexture([[Interface\MINIMAP\UI-Minimap-ZoomInButton-Down]])
					cur_state:SetHighlightTexture([[Interface\MINIMAP\UI-Minimap-ZoomButton-Highlight]])
				end
				cur_state.string_index = string_index
				cur_state:SetScript("OnEnter", Button_OnEnter)
				cur_state:SetScript("OnLeave", Button_OnLeave)
				cur_state:Enable()
			else
				cur_state:Hide()
				cur_state:Disable()
			end
			local cur_container = cur_state.container
			local cur_button = self.entry_buttons[button_index]

			if cur_entry.emphasized then
				cur_button.emphasis_texture:Show()
			end

			if cur_entry.type == "header" or cur_entry.type == "entry" then
				cur_state:SetPoint("TOPLEFT", cur_container, "TOPLEFT", 0, 0)
			elseif cur_entry.type == "subheader" or cur_entry.type == "subentry" then
				cur_state:SetPoint("TOPLEFT", cur_container, "TOPLEFT", 15, 0)
				cur_button:SetWidth(LIST_ENTRY_WIDTH - 15)
			end
			cur_button.string_index = string_index
			cur_button:SetText(cur_entry.text)
			cur_button:SetScript("OnEnter", Bar_OnEnter)
			cur_button:SetScript("OnLeave", Bar_OnLeave)
			cur_button:Enable()

			-- This function could possibly have been called from a mouse click or by scrolling. Since, in those cases, the list entries have
			-- changed, the mouse is likely over a different entry - a tooltip should be generated for it.
			if cur_state:IsMouseOver() then
				Button_OnEnter(cur_state)
			elseif cur_button:IsMouseOver() then
				Bar_OnEnter(cur_button)
			end
			button_index = button_index + 1
			string_index = string_index + 1
		end
	end

	-------------------------------------------------------------------------------
	-- Functions and data pertaining to individual list entries.
	-------------------------------------------------------------------------------
	local function CanDisplayFaction(faction)
		if addon.db.profile.filters.general.faction then
			return true
		end
		return (not faction or faction == private.Player:Faction() or faction == "Neutral")
	end

	-- Padding for list entries/subentries
	local PADDING = "    "

	-- Changes the color of "name" based on faction type.
	local function ColorNameByFaction(name, faction)
		if faction == "Neutral" then
			name = SetTextColor(private.REPUTATION_COLORS["neutral"], name)
		elseif faction == private.Player:Faction() then
			name = SetTextColor(private.REPUTATION_COLORS["exalted"], name)
		else
			name = SetTextColor(private.REPUTATION_COLORS["hated"], name)
		end
		return name
	end

	local function ExpandTrainerData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local trainer = private.trainer_list[id_num]

		if not trainer or not CanDisplayFaction(trainer.faction) then
			return entry_index
		end

		local name = ColorNameByFaction(trainer.name, trainer.faction)
		local coord_text = ""

		if trainer.coord_x ~= 0 and trainer.coord_y ~= 0 then
			coord_text = SetTextColor(CATEGORY_COLORS["coords"], COORD_FORMAT:format(trainer.coord_x, trainer.coord_y))
		end
		local entry = AcquireTable()

		entry.text = ("%s%s %s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["trainer"], L["Trainer"]) .. ":", name)
		entry.collectable = collectable
		entry.npc_id = id_num

		entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)

		if coord_text == "" and hide_location then
			return entry_index
		end
		entry = AcquireTable()
		entry.text = ("%s%s%s %s"):format(PADDING, PADDING, hide_location and "" or SetTextColor(CATEGORY_COLORS["location"], trainer.location), coord_text)
		entry.collectable = collectable
		entry.npc_id = id_num

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	-- Right now PVP obtained items are located on vendors so they have the vendor and PVP flag.
	-- We need to display the vendor in the drop down if we want to see vendors or if we want to see PVP
	-- This allows us to select PVP only and to see just the PVP recipes
	local function ExpandVendorData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local vendor = private.vendor_list[id_num]

		if not CanDisplayFaction(vendor.faction) then
			return entry_index
		end

		local name = ColorNameByFaction(vendor.name, vendor.faction)
		local coord_text = ""

		if vendor.coord_x ~= 0 and vendor.coord_y ~= 0 then
			coord_text = SetTextColor(CATEGORY_COLORS["coords"], COORD_FORMAT:format(vendor.coord_x, vendor.coord_y))
		end
		local entry = AcquireTable()
		local quantity = vendor.item_list[collectable.id]

		entry.text = ("%s%s %s%s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["vendor"], _G.BATTLE_PET_SOURCE_3) .. ":", name, type(quantity) == "number" and SetTextColor(BASIC_COLORS["white"], (" (%d)"):format(quantity)) or "")
		entry.collectable = collectable
		entry.npc_id = id_num

		entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)

		if coord_text == "" and hide_location then
			return entry_index
		end
		entry = AcquireTable()
		entry.text = ("%s%s%s %s"):format(PADDING, PADDING, hide_location and "" or SetTextColor(CATEGORY_COLORS["location"], vendor.location), coord_text)
		entry.collectable = collectable
		entry.npc_id = id_num

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	-- Mobs can be in instances, raids, or specific mob related drops.
	local function ExpandMobData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local mob = private.mob_list[id_num]
		local coord_text = ""

		if mob.coord_x ~= 0 and mob.coord_y ~= 0 then
			coord_text = SetTextColor(CATEGORY_COLORS["coords"], COORD_FORMAT:format(mob.coord_x, mob.coord_y))
		end
		local entry = AcquireTable()

		entry.text = ("%s%s %s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["mobdrop"], L["Mob Drop"]) .. ":", SetTextColor(private.REPUTATION_COLORS["hostile"], mob.name))
		entry.collectable = collectable
		entry.npc_id = id_num

		entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)

		if coord_text == "" and hide_location then
			return entry_index
		end
		entry = AcquireTable()
		entry.text = ("%s%s%s %s"):format(PADDING, PADDING, hide_location and "" or SetTextColor(CATEGORY_COLORS["location"], mob.location), coord_text)
		entry.collectable = collectable
		entry.npc_id = id_num

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandQuestData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local quest = private.quest_list[id_num]

		if not CanDisplayFaction(quest.faction) then
			return entry_index
		end

		local name = ColorNameByFaction(private.quest_names[id_num], quest.faction)
		local coord_text = ""

		if quest.coord_x ~= 0 and quest.coord_y ~= 0 then
			coord_text = SetTextColor(CATEGORY_COLORS["coords"], COORD_FORMAT:format(quest.coord_x, quest.coord_y))
		end
		local entry = AcquireTable()
		entry.text = ("%s%s %s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["quest"], _G.BATTLE_PET_SOURCE_2) .. ":", name)
		entry.collectable = collectable

		entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)

		if coord_text == "" and hide_location then
			return entry_index
		end
		entry = AcquireTable()
		entry.text = ("%s%s%s %s"):format(PADDING, PADDING, hide_location and "" or SetTextColor(CATEGORY_COLORS["location"], quest.location), coord_text)
		entry.collectable = collectable

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandSeasonalData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local entry = AcquireTable()
		entry.text = ("%s%s %s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["seasonal"], private.ACQUIRE_NAMES[A.SEASONAL]) .. ":", SetTextColor(CATEGORY_COLORS["seasonal"], private.seasonal_list[id_num].name))
		entry.collectable = collectable
		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local FACTION_LABELS

	local function ExpandReputationData(entry_index, entry_type, parent_entry, vendor_id, rep_id, rep_level, collectable, hide_location, hide_type)
		local rep_vendor = private.vendor_list[vendor_id]

		if not CanDisplayFaction(rep_vendor.faction) then
			return entry_index
		end

		if not FACTION_LABELS then
			local rep_color = private.REPUTATION_COLORS

			FACTION_LABELS = {
				[0] = SetTextColor(rep_color["neutral"], BFAC["Neutral"] .. " : "),
				[1] = SetTextColor(rep_color["friendly"], BFAC["Friendly"] .. " : "),
				[2] = SetTextColor(rep_color["honored"], BFAC["Honored"] .. " : "),
				[3] = SetTextColor(rep_color["revered"], BFAC["Revered"] .. " : "),
				[4] = SetTextColor(rep_color["exalted"], BFAC["Exalted"] .. " : ")
			}
		end

		local name = ColorNameByFaction(rep_vendor.name, rep_vendor.faction)
		local entry = AcquireTable()
		entry.text = ("%s%s %s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["reputation"], _G.REPUTATION) .. ":", SetTextColor(CATEGORY_COLORS["repname"], private.reputation_list[rep_id].name))
		entry.collectable = collectable
		entry.npc_id = vendor_id

		entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)

		entry = AcquireTable()
		entry.text = PADDING .. PADDING .. FACTION_LABELS[rep_level] .. name
		entry.collectable = collectable
		entry.npc_id = vendor_id

		entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)

		local coord_text = ""

		if rep_vendor.coord_x ~= 0 and rep_vendor.coord_y ~= 0 then
			coord_text = SetTextColor(CATEGORY_COLORS["coords"], COORD_FORMAT:format(rep_vendor.coord_x, rep_vendor.coord_y))
		end

		if coord_text == "" and hide_location then
			return entry_index
		end
		entry = AcquireTable()
		entry.text = ("%s%s%s%s %s"):format(PADDING, PADDING, PADDING, hide_location and "" or SetTextColor(CATEGORY_COLORS["location"], rep_vendor.location), coord_text)
		entry.collectable = collectable
		entry.npc_id = vendor_id

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandWorldDropData(entry_index, entry_type, parent_entry, identifier, collectable, hide_location, hide_type)
		local drop_location = type(identifier) == "string" and SetTextColor(CATEGORY_COLORS["location"], identifier)

		if drop_location then
			local collectable_item_id = collectable:ItemID()
			local collectable_item_level = collectable_item_id and select(4, _G.GetItemInfo(collectable_item_id))

			if collectable_item_level then
				drop_location = (": %s %s"):format(drop_location, SetTextColor(CATEGORY_COLORS["location"], "(%d - %d)"):format(collectable_item_level - 5, collectable_item_level + 5))
			else
				drop_location = (": %s"):format(drop_location)
			end
		else
			drop_location = ""
		end
		local entry = AcquireTable()
		entry.text = ("%s|c%s%s|r%s"):format(PADDING, select(4, _G.GetItemQualityColor(collectable.quality)), L["World Drop"], drop_location)
		entry.collectable = collectable

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandCustomData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local entry = AcquireTable()
		entry.text = PADDING .. SetTextColor(CATEGORY_COLORS["custom"], private.custom_list[id_num].name)
		entry.collectable = collectable

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandProfessionData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local entry = AcquireTable()
		entry.text = ("%s%s %s"):format(PADDING, _G.BATTLE_PET_SOURCE_4, SetTextColor(CATEGORY_COLORS["profession"], id_num))
		entry.collectable = collectable

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandAchievementData(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
		local entry = AcquireTable()
		entry.text = ("%s%s %s"):format(PADDING, hide_type and "" or SetTextColor(CATEGORY_COLORS["achievement"], _G.ACHIEVEMENTS) .. ":",
					    SetTextColor(BASIC_COLORS["normal"], select(2, _G.GetAchievementInfo(id_num))))
		entry.collectable = collectable

		return ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
	end

	local function ExpandAcquireData(entry_index, entry_type, parent_entry, acquire_type, acquire_data, collectable, hide_location, hide_type)
		local obtain_filters = addon.db.profile.filters.obtain
		local num_acquire_types = #private.ACQUIRE_STRINGS

		for id_num, info in pairs(acquire_data) do
			local func

			if acquire_type == A.TRAINER and obtain_filters.trainer then
				func = ExpandTrainerData
			elseif acquire_type == A.VENDOR and (obtain_filters.vendor or obtain_filters.pvp) then
				func = ExpandVendorData
			elseif acquire_type == A.MOB_DROP and (obtain_filters.mobdrop or obtain_filters.instance or obtain_filters.raid) then
				func = ExpandMobData
			elseif acquire_type == A.QUEST and obtain_filters.quest then
				func = ExpandQuestData
			elseif acquire_type == A.SEASONAL and obtain_filters.seasonal then
				func = ExpandSeasonalData
			elseif acquire_type == A.REPUTATION then
				for rep_level, level_info in pairs(info) do
					for vendor_id in pairs(level_info) do
						entry_index =  ExpandReputationData(entry_index, entry_type, parent_entry, vendor_id, id_num,
										    rep_level, collectable, hide_location, hide_type)
					end
				end
			elseif acquire_type == A.WORLD_DROP and obtain_filters.worlddrop then
				if not hide_type then
					func = ExpandWorldDropData
				end
			elseif acquire_type == A.CUSTOM then
				if not hide_type then
					func = ExpandCustomData
				end
			elseif acquire_type == A.PROFESSION and obtain_filters.profession then
				func = ExpandProfessionData
				--@alpha@
			elseif acquire_type == A.ACHIEVEMENT and obtain_filters.achievement then
				func = ExpandAchievementData
			elseif acquire_type > num_acquire_types then
				local entry = AcquireTable()
				entry.text = "Unhandled Acquire Case - Type: " .. acquire_type
				entry.collectable = collectable

				entry_index = ListFrame:InsertEntry(entry, parent_entry, entry_index, entry_type, true)
				--@end-alpha@
			end

			if func then
				entry_index = func(entry_index, entry_type, parent_entry, id_num, collectable, hide_location, hide_type)
			end
		end	-- for
		return entry_index
	end

	-- This function is called when an un-expanded entry in the list has been clicked.
	function ListFrame:ExpandEntry(entry_index, expand_mode)
		local orig_index = entry_index
		local current_entry = self.entries[orig_index]
		local expand_all = expand_mode == "deep"
		local current_tab = MainPanel.tabs[MainPanel.current_tab]
		local collectable_type = private.ORDERED_COLLECTIONS[MainPanel.current_collectable_type]
		local collectables = private.collectable_list[collectable_type]

		-- Entry_index is the position in self.entries that we want to expand. Since we are expanding the current entry, the return
		-- value should be the index of the next button after the expansion occurs
		entry_index = entry_index + 1

		current_tab:ModifyEntry(current_entry, true)

		-- This entry was generated using sorting based on Acquisition.
		if current_entry.acquire_id then
			local acquire_id = current_entry.acquire_id

			if current_entry.type == "header" then
				local acquired_collectables = private.acquire_list[acquire_id].collectables[collectable_type]
				local sorted_collectables = addon.sorted_collectables

				private.SortCollectables(acquired_collectables, collectable_type)

				for index = 1, #sorted_collectables do
					local collectable_id = sorted_collectables[index]
					local collectable_entry = collectables[collectable_id]

					if collectable_entry and collectable_entry:HasState("VISIBLE") and MainPanel.search_editbox:MatchesCollectable(collectable_entry) then
						local entry = AcquireTable()
						local expand = false
						local type = "subheader"

						if acquire_id == A.WORLD_DROP or acquire_id == A.CUSTOM or acquire_id == A.ACHIEVEMENT or acquire_id == A.DISCOVERY then
							expand = true
							type = "entry"
						end
						local is_expanded = (current_tab[collectable_type .." expanded"][collectable_entry]
								     and current_tab[collectable_type .." expanded"][private.ACQUIRE_NAMES[acquire_id]])

						entry.text = collectable_entry:GetDisplayName()
						entry.collectable = collectable_entry
						entry.acquire_id = acquire_id

						entry_index = self:InsertEntry(entry, current_entry, entry_index, type, expand or is_expanded, expand_all or is_expanded)
					end
				end
			elseif current_entry.type == "subheader" then
				for acquire_type, acquire_data in pairs(current_entry.collectable.acquire_data) do
					if acquire_type == acquire_id then
						entry_index = ExpandAcquireData(entry_index, "subentry", current_entry, acquire_type, acquire_data,
										current_entry.collectable, false, true)
					end
				end
			end
			return entry_index
		end

		-- This entry was generated using sorting based on Location.
		if current_entry.location_id then
			local location_id = current_entry.location_id

			if current_entry.type == "header" then
				local location_collectables = private.location_list[location_id].collectables[collectable_type]
				local sorted_collectables = addon.sorted_collectables

				private.SortCollectables(location_collectables, collectable_type)

				for index = 1, #sorted_collectables do
					local collectable_id = sorted_collectables[index]
					local collectable = collectables[collectable_id]

					if collectable and collectable:HasState("VISIBLE") and MainPanel.search_editbox:MatchesCollectable(collectable) then
						local expand = false
						local type = "subheader"
						local entry = AcquireTable()

						-- Add World Drop entries as normal entries.
						if location_collectables[collectable_id] and location_collectables[collectable_id] == "world_drop" then
							expand = true
							type = "entry"
						end
						local is_expanded = (current_tab[collectable_type .." expanded"][collectable]
								     and current_tab[collectable_type .." expanded"][location_id])

						entry.text = collectable:GetDisplayName()
						entry.collectable = collectable
						entry.location_id = location_id

						entry_index = self:InsertEntry(entry, current_entry, entry_index, type, expand or is_expanded,
									       expand_all or is_expanded)
					end
				end
			elseif current_entry.type == "subheader" then
				local collectable_entry = current_entry.collectable

				-- World Drops are not handled here because they are of type "entry".
				for acquire_type, acquire_data in pairs(collectable_entry.acquire_data) do
					-- Only expand an acquisition entry if it is from this location.
					for id_num, info in pairs(acquire_data) do
						if acquire_type == A.TRAINER and private.trainer_list[id_num].location == location_id then
							entry_index = ExpandTrainerData(entry_index, "subentry", current_entry,
								id_num, current_entry.collectable, true)
						elseif acquire_type == A.VENDOR and private.vendor_list[id_num].location == location_id then
							entry_index = ExpandVendorData(entry_index, "subentry", current_entry,
										       id_num, current_entry.collectable, true)
						elseif acquire_type == A.MOB_DROP and private.mob_list[id_num].location == location_id then
							entry_index = ExpandMobData(entry_index, "subentry", current_entry,
										    id_num, current_entry.collectable, true)
						elseif acquire_type == A.QUEST and private.quest_list[id_num].location == location_id then
							entry_index = ExpandQuestData(entry_index, "subentry", current_entry,
										      id_num, current_entry.collectable, true)
						elseif acquire_type == A.SEASONAL and private.seasonal_list[id_num].location == location_id then
							-- Hide the acquire type for this - it will already show up in the location list as
							-- "World Events".
							entry_index = ExpandSeasonalData(entry_index, "subentry", current_entry,
											 id_num, current_entry.collectable, true, true)
						elseif acquire_type == A.CUSTOM and private.custom_list[id_num].location == location_id then
							entry_index = ExpandCustomData(entry_index, "subentry", current_entry,
										       id_num, current_entry.collectable, true, true)
						elseif acquire_type == A.REPUTATION then
							for rep_level, level_info in pairs(info) do
								for vendor_id in pairs(level_info) do
									if private.vendor_list[vendor_id].location == location_id then
										entry_index =  ExpandReputationData(entry_index, "subentry", current_entry,
														    vendor_id, id_num, rep_level, current_entry.collectable, true)
									end
								end
							end
						end
					end
				end
			end
			return entry_index
		end

		-- Normal entry - expand all acquire types.
		local collectable = self.entries[orig_index].collectable

		for acquire_type, acquire_data in pairs(collectable.acquire_data) do
			entry_index = ExpandAcquireData(entry_index, "entry", current_entry, acquire_type, acquire_data, collectable)
		end
		return entry_index
	end
end	-- InitializeListFrame()

-------------------------------------------------------------------------------
-- Tooltip functions and data.
-------------------------------------------------------------------------------
-- Font Objects needed for acquire_tip
local narrowFont
local normalFont

do
	local LSM3 = LibStub("LibSharedMedia-3.0", true)

	if LSM3 then
		narrowFont = LSM3:Fetch(LSM3.MediaType.FONT, "Arial Narrow")
		normalFont = LSM3:Fetch(LSM3.MediaType.FONT, "Friz Quadrata TT")
	else
		-- Fix for font issues on koKR
		if _G.GetLocale() == "koKR" then
			narrowFont = "Fonts\\2002.TTF"
			normalFont = "Fonts\\2002.TTF"
		else
			narrowFont = "Fonts\\ARIALN.TTF"
			normalFont = "Fonts\\FRIZQT__.TTF"
		end
	end
	local narrowFontObj = _G.CreateFont(("%s%s"):format(private.addon_name, "narrowFontObj"))
	local normalFontObj = _G.CreateFont(("%s%s"):format(private.addon_name, "normalFontObj"))

	-- I want to do a bit more comprehensive tooltip processing. Things like changing font sizes,
	-- adding padding to the left hand side, and using better color handling. So... this function
	-- will do that for me.
	local function ttAdd(
			leftPad,		-- number of times to pad two spaces on left side
			textSize,		-- add to or subtract from addon.db.profile.tooltip.acquire_fontsize to get fontsize
			narrow,			-- if 1, use ARIALN instead of FRITZQ
			str1,			-- left-hand string
			hexcolor1,		-- hex color code for left-hand side
			str2,			-- if present, this is the right-hand string
			hexcolor2)		-- if present, hex color code for right-hand side

		-- are we changing fontsize or narrow?
		local fontSize

		if narrow or textSize ~= 0 then
			local font = narrow and narrowFont or normalFont
			local fontObj = narrow and narrowFontObj or normalFontObj

			fontSize = addon.db.profile.tooltip.acquire_fontsize + textSize

			fontObj:SetFont(font, fontSize)
			acquire_tooltip:SetFont(fontObj)
		end

		-- Add in our left hand padding
		local loopPad = leftPad
		local leftStr = str1

		while loopPad > 0 do
			leftStr = "    " .. leftStr
			loopPad = loopPad - 1
		end
		-- Set maximum width to match fontSize to maintain uniform tooltip size. -Torhal
		local width = math.ceil(fontSize * 37.5)
		local line = acquire_tooltip:AddLine()

		if str2 then
			width = width / 2

			acquire_tooltip:SetCell(line, 1, "|cff"..hexcolor1..leftStr.."|r", "LEFT", nil, nil, 0, 0, width, width)
			acquire_tooltip:SetCell(line, 2, "|cff"..hexcolor2..str2.."|r", "RIGHT", nil, nil, 0, 0, width, width)
		else
			acquire_tooltip:SetCell(line, 1, "|cff"..hexcolor1..leftStr.."|r", nil, "LEFT", 2, nil, 0, 0, width, width)
		end
	end

	local function GetTipFactionInfo(comp_faction)
		local display_tip
		local color

		if comp_faction == "Neutral" then
			color = private.REPUTATION_COLORS["neutral"]
			display_tip = true
		elseif comp_faction == private.Player:Faction() then
			color = private.REPUTATION_COLORS["exalted"]
			display_tip = true
		else
			color = private.REPUTATION_COLORS["hated"]
			display_tip = addon.db.profile.filters.general.faction
		end
		return display_tip, color
	end

	-------------------------------------------------------------------------------
	-- Functions for adding individual acquire type data to the tooltip.
	-------------------------------------------------------------------------------
	local TOOLTIP_ACQUIRE_FUNCS = {
		[A.TRAINER] = function(collectable, identifier, location, acquire_info, addline_func)
			local trainer = private.trainer_list[identifier]

			if not trainer or (location and trainer.location ~= location) then
				return
			end
			local display_tip, name_color = GetTipFactionInfo(trainer.faction)

			if not display_tip then
				return
			end
			addline_func(0, -2, false, L["Trainer"], CATEGORY_COLORS["trainer"], trainer.name, name_color)

			if trainer.coord_x ~= 0 and trainer.coord_y ~= 0 then
				addline_func(1, -2, true, trainer.location, CATEGORY_COLORS["location"], COORD_FORMAT:format(trainer.coord_x, trainer.coord_y), CATEGORY_COLORS["coords"])
			else
				addline_func(1, -2, true, trainer.location, CATEGORY_COLORS["location"], "", CATEGORY_COLORS["coords"])
			end
		end,
		[A.VENDOR] = function(collectable, identifier, location, acquire_info, addline_func)
			local vendor = private.vendor_list[identifier]

			if not vendor or (location and vendor.location ~= location) then
				return
			end
			local display_tip, name_color = GetTipFactionInfo(vendor.faction)

			if not display_tip then
				return
			end
			addline_func(0, -1, false, _G.BATTLE_PET_SOURCE_3, CATEGORY_COLORS["vendor"], vendor.name, name_color)

			if vendor.coord_x ~= 0 and vendor.coord_y ~= 0 then
				addline_func(1, -2, true, vendor.location, CATEGORY_COLORS["location"], COORD_FORMAT:format(vendor.coord_x, vendor.coord_y), CATEGORY_COLORS["coords"])
			else
				addline_func(1, -2, true, vendor.location, CATEGORY_COLORS["location"], "", CATEGORY_COLORS["coords"])
			end
		end,
		[A.MOB_DROP] = function(collectable, identifier, location, acquire_info, addline_func)
			local mob = private.mob_list[identifier]

			if not mob or (location and mob.location ~= location) then
				return
			end
			addline_func(0, -1, false, L["Mob Drop"], CATEGORY_COLORS["mobdrop"], mob.name, private.REPUTATION_COLORS["hostile"])

			if mob.coord_x ~= 0 and mob.coord_y ~= 0 then
				addline_func(1, -2, true, mob.location, CATEGORY_COLORS["location"], COORD_FORMAT:format(mob.coord_x, mob.coord_y), CATEGORY_COLORS["coords"])
			else
				addline_func(1, -2, true, mob.location, CATEGORY_COLORS["location"], "", CATEGORY_COLORS["coords"])

			end
		end,
		[A.QUEST] = function(collectable, identifier, location, acquire_info, addline_func)
			local quest = private.quest_list[identifier]

			if not quest or (location and quest.location ~= location) then
				return
			end
			local display_tip, name_color = GetTipFactionInfo(quest.faction)

			if not display_tip then
				return
			end
			addline_func(0, -1, false, _G.BATTLE_PET_SOURCE_2, CATEGORY_COLORS["quest"], private.quest_names[identifier], name_color)

			if quest.coord_x ~= 0 and quest.coord_y ~= 0 then
				addline_func(1, -2, true, quest.location, CATEGORY_COLORS["location"], COORD_FORMAT:format(quest.coord_x, quest.coord_y), CATEGORY_COLORS["coords"])
			else
				addline_func(1, -2, true, quest.location, CATEGORY_COLORS["location"], "", CATEGORY_COLORS["coords"])
			end
		end,
		[A.SEASONAL] = function(collectable, identifier, location, acquire_info, addline_func)
			local hex_color = CATEGORY_COLORS["seasonal"]
			addline_func(0, -1, 0, private.ACQUIRE_NAMES[A.SEASONAL], hex_color, private.seasonal_list[identifier].name, hex_color)
		end,
		[A.REPUTATION] = function(collectable, identifier, location, acquire_info, addline_func)
			for rep_level, level_info in pairs(acquire_info) do
				for vendor_id in pairs(level_info) do
					local rep_vendor = private.vendor_list[vendor_id]

					if rep_vendor and (not location or rep_vendor.location == location) then
						local display_tip, name_color = GetTipFactionInfo(rep_vendor.faction)

						if display_tip then
							addline_func(0, -1, false, _G.REPUTATION, CATEGORY_COLORS["reputation"], private.reputation_list[identifier].name, CATEGORY_COLORS["repname"])

							if rep_level == 0 then
								addline_func(1, -2, false, BFAC["Neutral"], private.REPUTATION_COLORS["neutral"], rep_vendor.name, name_color)
							elseif rep_level == 1 then
								addline_func(1, -2, false, BFAC["Friendly"], private.REPUTATION_COLORS["friendly"], rep_vendor.name, name_color)
							elseif rep_level == 2 then
								addline_func(1, -2, false, BFAC["Honored"], private.REPUTATION_COLORS["honored"], rep_vendor.name, name_color)
							elseif rep_level == 3 then
								addline_func(1, -2, false, BFAC["Revered"], private.REPUTATION_COLORS["revered"], rep_vendor.name, name_color)
							else
								addline_func(1, -2, false, BFAC["Exalted"], private.REPUTATION_COLORS["exalted"], rep_vendor.name, name_color)
							end

							if rep_vendor.coord_x ~= 0 and rep_vendor.coord_y ~= 0 then
								addline_func(2, -2, true, rep_vendor.location, CATEGORY_COLORS["location"], COORD_FORMAT:format(rep_vendor.coord_x, rep_vendor.coord_y), CATEGORY_COLORS["coords"])
							else
								addline_func(2, -2, true, rep_vendor.location, CATEGORY_COLORS["location"], "", CATEGORY_COLORS["coords"])
							end
						end
					end
				end
			end
		end,
		[A.WORLD_DROP] = function(collectable, identifier, location, acquire_info, addline_func)
			local drop_location = type(identifier) == "string" and identifier or _G.UNKNOWN

			if location and drop_location ~= location then
				return
			end
			local collectable_item_id = collectable:ItemID()
			local collectable_item_level = collectable_item_id and select(4, _G.GetItemInfo(collectable_item_id))
			local quality_color = select(4, _G.GetItemQualityColor(collectable.quality)):sub(3)
			local location_text

			if collectable_item_level then
				location_text = ("%s (%d - %d)"):format(drop_location, collectable_item_level - 5, collectable_item_level + 5)
			else
				location_text = drop_location
			end
			addline_func(0, -1, false, L["World Drop"], quality_color, location_text, CATEGORY_COLORS["location"])
		end,

		[A.PROFESSION] = function(collectable, identifier, location, acquire_info, addline_func)
			local profession_type = type(identifier) == "string" and identifier or _G.UNKNOWN

			if not profession_type then
				return
			end

			addline_func(0, -1, false, _G.BATTLE_PET_SOURCE_4, CATEGORY_COLORS["location"], profession_type, CATEGORY_COLORS["location"])
		end,

		[A.ACHIEVEMENT] = function(collectable, identifier, location, acquire_info, addline_func)
			local _, achievement_name, _, _, _, _, _, achievement_desc = _G.GetAchievementInfo(identifier)

			-- The recipe is an actual reward from an achievement if flagged - else we're just using the text to describe how to get it.
			if collectable:HasFilter("common1", "ACHIEVEMENT") then
				addline_func(0, -1, false, _G.ACHIEVEMENTS, CATEGORY_COLORS["achievement"], achievement_name, BASIC_COLORS["normal"])
			end
			addline_func(0, -1, false, achievement_desc, CATEGORY_COLORS["achievement"])
		end,
		[A.CUSTOM] = function(collectable, identifier, location, acquire_info, addline_func)
			addline_func(0, -1, false, private.custom_list[identifier].name, CATEGORY_COLORS["custom"])
		end,
	}

	-------------------------------------------------------------------------------
	-- Public API function for displaying a recipe's acquire data.
	-- * The addline_func paramater must be a function which accepts the same
	-- * arguments as ARL's ttAdd function.
	-------------------------------------------------------------------------------
	function addon:DisplayAcquireData(collectable, acquire_id, location, addline_func)
		if not collectable then
			return
		end

		for acquire_type, acquire_data in pairs(collectable.acquire_data) do
			if not acquire_id or acquire_type == acquire_id then
				local populate_func = TOOLTIP_ACQUIRE_FUNCS[acquire_type]

				for identifier, info in pairs(acquire_data) do
					if populate_func then
						populate_func(collectable, identifier, location, info, addline_func)
					else
						addline_func(0, -1, 0, L["Unhandled Recipe"], BASIC_COLORS["normal"])
					end
				end
			end
		end
	end

	-------------------------------------------------------------------------------
	-- Main tooltip function.
	-------------------------------------------------------------------------------
	local function InitializeTooltips(collectable)
		local acquire_tip_anchor = addon.db.profile.acquiretooltiplocation
		local MainPanel = addon.Frame

		if acquire_tip_anchor == _G.OFF then
			QTip:Release(acquire_tooltip)
			return
		end
		acquire_tooltip = QTip:Acquire(private.addon_name.." Tooltip", 2, "LEFT", "LEFT")
		acquire_tooltip:ClearAllPoints()
		acquire_tooltip:SetClampedToScreen(true)
		acquire_tooltip:Clear()
		acquire_tooltip:SetScale(addon.db.profile.tooltip.scale)

		if _G.TipTac and _G.TipTac.AddModifiedTip then
			-- Pass true as second parameter because hooking OnHide causes C stack overflows -Torhal
			_G.TipTac:AddModifiedTip(acquire_tooltip, true)
		end

		if acquire_tip_anchor == "Right" then
			acquire_tooltip:SetPoint("TOPLEFT", MainPanel, "TOPRIGHT", MainPanel.is_expanded and -90 or -35, 0)
		elseif acquire_tip_anchor == "Left" then
			acquire_tooltip:SetPoint("TOPRIGHT", MainPanel, "TOPLEFT")
		elseif acquire_tip_anchor == "Top" then
			acquire_tooltip:SetPoint("BOTTOMLEFT", MainPanel, "TOPLEFT")
		elseif acquire_tip_anchor == "Bottom" then
			acquire_tooltip:SetPoint("TOPLEFT", MainPanel, "BOTTOMLEFT", 0, 55)
		elseif acquire_tip_anchor == "Mouse" then
			local x, y = _G.GetCursorPosition()
			local uiscale = _G.UIParent:GetEffectiveScale()

			acquire_tooltip:SetPoint("BOTTOMLEFT", _G.UIParent, "BOTTOMLEFT", x / uiscale, y / uiscale)
		end
	end

	local BINDING_FLAGS = {
		IBOE = L["BOEFilter"],
		IBOP = L["BOPFilter"],
		IBOA = L["BOAFilter"],
	}

	local NON_COORD_ACQUIRES = {
		[A.WORLD_DROP] = true,
		[A.CUSTOM] = true,
		[A.ACHIEVEMENT] = true,
		[A.PROFESSION] = true
	}

	function ListItem_ShowTooltip(owner, list_entry)
		if not list_entry then
			return
		end
		local collectable = list_entry.collectable

		if not collectable then
			return
		end
		InitializeTooltips(collectable)

		if not acquire_tooltip then
			return
		end
		acquire_tooltip:AddHeader()
		acquire_tooltip:SetCell(1, 1, collectable:GetDisplayName(), "CENTER", 2)

		local collectable_icon = collectable:Icon()

		if collectable_icon then
			acquire_tooltip:AddHeader()
			acquire_tooltip:SetCell(2, 1, ("|T%s:30:30|t"):format(collectable_icon), "CENTER", 2)
		end
		ttAdd(0, -1, false, collectable:Description(), BASIC_COLORS["normal"])

		if addon.db.profile.exclusionlist[list_entry.collectable.id] then
			ttAdd(0, -1, true, L["RECIPE_EXCLUDED"], "ff0000")
		end
		acquire_tooltip:AddSeparator()

		for flag_name, label in pairs(BINDING_FLAGS) do
			if collectable:HasFilter("common1", flag_name) then
				ttAdd(0, -1, true, label, BASIC_COLORS["normal"])
			end
		end
		acquire_tooltip:AddSeparator()

		ttAdd(0, -1, false, L["Obtained From"] .. " : ", BASIC_COLORS["normal"])
		ttAdd(1, -1, false, collectable.source_text_TEMPORARY, BASIC_COLORS["normal"])

		addon:DisplayAcquireData(list_entry.collectable, list_entry.acquire_id, list_entry.location_id, ttAdd)

		if not addon.db.profile.hide_tooltip_hint then
			local HINT_COLOR = "c9c781"
			local acquire_id = list_entry.acquire_id

			acquire_tooltip:AddSeparator()
			acquire_tooltip:AddSeparator()

			ttAdd(0, -1, 0, L["ALT_CLICK"], HINT_COLOR)
			ttAdd(0, -1, 0, L["CTRL_CLICK"], HINT_COLOR)
			ttAdd(0, -1, 0, L["SHIFT_CLICK"], HINT_COLOR)

			if not NON_COORD_ACQUIRES[acquire_id] and _G.TomTom and (addon.db.profile.worldmap or addon.db.profile.minimap) then
				ttAdd(0, -1, 0, L["CTRL_SHIFT_CLICK"], HINT_COLOR)
			end
		end
		acquire_tooltip:Show()
	end
end	-- do
