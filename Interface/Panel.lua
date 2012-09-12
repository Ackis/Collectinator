--[[
************************************************************************
Panel.lua
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

-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

local string = _G.string

local select = _G.select

local table = _G.table

local ipairs, pairs = _G.ipairs, _G.pairs

local tonumber = _G.tonumber
local tostring = _G.tostring

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private	= ...

local LibStub = _G.LibStub
local addon	= LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L		= LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BFAC	= LibStub("LibBabble-Faction-3.0"):GetLookupTable()

-------------------------------------------------------------------------------
-- Upvalues
-------------------------------------------------------------------------------
local AcquireTable = private.AcquireTable
local SetTextColor = private.SetTextColor
local SetTooltipScripts = private.SetTooltipScripts

local A = private.ACQUIRE_TYPES

-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
local ORDERED_PROFESSIONS	= private.ORDERED_PROFESSIONS

function private.InitializeFrame()
	-------------------------------------------------------------------------------
	-- Create the MainPanel and set its values
	-------------------------------------------------------------------------------
	local MainPanel = _G.CreateFrame("Frame", "ARL_MainPanel", _G.UIParent)

	-- The panel width changes when contracting and expanding - store it for later use.
	MainPanel.normal_width = 384
	MainPanel.expanded_width = 768

	MainPanel:SetWidth(MainPanel.normal_width)
	MainPanel:SetHeight(512)
	MainPanel:SetFrameStrata("MEDIUM")
	MainPanel:SetToplevel(true)
	MainPanel:SetClampedToScreen(true)
	MainPanel:SetClampRectInsets(0, -35, 0, 53)

	MainPanel:SetHitRectInsets(0, 35, 0, 53)
	MainPanel:EnableMouse(true)
	MainPanel:EnableKeyboard(true)
	MainPanel:SetMovable(true)

	MainPanel.is_expanded = false

	-- Let the user banish the MainPanel with the ESC key.
	table.insert(_G.UISpecialFrames, "ARL_MainPanel")
	addon.Frame = MainPanel

	do
		local top_left = MainPanel:CreateTexture(nil, "OVERLAY")
		top_left:SetTexture("Interface\\QuestFrame\\UI-QuestLog-TopLeft")
		top_left:SetPoint("TOPLEFT", MainPanel, "TOPLEFT", 0, 0)
		MainPanel.top_left = top_left

		local top_right = MainPanel:CreateTexture(nil, "OVERLAY")
		top_right:SetTexture("Interface\\QuestFrame\\UI-QuestLog-TopRight")
		top_right:SetPoint("TOPRIGHT", MainPanel, "TOPRIGHT", 0, 0)
		MainPanel.top_right = top_right

		local bottom_left = MainPanel:CreateTexture(nil, "OVERLAY")
		bottom_left:SetTexture("Interface\\QuestFrame\\UI-QuestLog-BotLeft")
		bottom_left:SetPoint("BOTTOMLEFT", MainPanel, "BOTTOMLEFT", 0, 0)
		MainPanel.bottom_left = bottom_left

		local bottom_right = MainPanel:CreateTexture(nil, "OVERLAY")
		bottom_right:SetTexture("Interface\\QuestFrame\\UI-QuestLog-BotRight")
		bottom_right:SetPoint("BOTTOMRIGHT", MainPanel, "BOTTOMRIGHT", 0, 0)
		MainPanel.bottom_right = bottom_right

		local title_bar = MainPanel:CreateFontString(nil, "OVERLAY")
		title_bar:SetFontObject("GameFontHighlightSmall")
		title_bar:SetPoint("TOPLEFT", MainPanel, "TOPLEFT", 20, -20)
		title_bar:SetPoint("TOPRIGHT", MainPanel, "TOPRIGHT", -40, -20)
		title_bar:SetJustifyH("CENTER")
		MainPanel.title_bar = title_bar

		MainPanel:Hide()
	end	-- do block

	-------------------------------------------------------------------------------
	-- MainPanel scripts/functions.
	-------------------------------------------------------------------------------
	MainPanel:SetScript("OnHide", function(self)
		private.DismissDialogs()
	end)

	MainPanel:SetScript("OnMouseDown", MainPanel.StartMoving)

	MainPanel:SetScript("OnMouseUp", function(self, button)
		self:StopMovingOrSizing()

		local opts = addon.db.profile.frameopts
		local from, _, to, x, y = self:GetPoint()

		opts.anchorFrom = from
		opts.anchorTo = to

		if self.is_expanded then
			if opts.anchorFrom == "TOPLEFT" or opts.anchorFrom == "LEFT" or opts.anchorFrom == "BOTTOMLEFT" then
				opts.offsetx = x
			elseif opts.anchorFrom == "TOP" or opts.anchorFrom == "CENTER" or opts.anchorFrom == "BOTTOM" then
				opts.offsetx = x - 151 / 2
			elseif opts.anchorFrom == "TOPRIGHT" or opts.anchorFrom == "RIGHT" or opts.anchorFrom == "BOTTOMRIGHT" then
				opts.offsetx = x - 151
			end
		else
			opts.offsetx = x
		end
		opts.offsety = y
	end)

	-------------------------------------------------------------------------------
	-- Displays the main GUI frame.
	-------------------------------------------------------------------------------
	local ITEM_FILTER_INIT_FUNCS = {
		["alchemy"] = private.InitializeItemFilters_Alchemy,
		["blacksmithing"] = private.InitializeItemFilters_Blacksmithing,
		["cooking"] = private.InitializeItemFilters_Cooking,
		["enchanting"] = private.InitializeItemFilters_Enchanting,
		["engineering"] = private.InitializeItemFilters_Engineering,
		["firstaid"] = private.InitializeItemFilters_FirstAid,
		["leatherworking"] = private.InitializeItemFilters_Leatherworking,
		["smelting"] = private.InitializeItemFilters_Smelting,
		["tailoring"] = private.InitializeItemFilters_Tailoring,
		["jewelcrafting"] = private.InitializeItemFilters_Jewelcrafting,
		["inscription"] = private.InitializeItemFilters_Inscription,
		["runeforging"] = private.InitializeItemFilters_Runeforging,
	}

	function MainPanel:Display(profession_name, is_linked)
		self.is_linked = is_linked

		-------------------------------------------------------------------------------
		-- Set the profession.
		-------------------------------------------------------------------------------
		local prev_profession = self.profession

		for index, name in ipairs(ORDERED_PROFESSIONS) do
			if name == profession_name then
				self.profession = index
				break
			end
		end

		if self.profession ~= prev_profession then
			self.prev_profession = self.profession
		end
		self.prof_button:SetTexture()

		local editbox = self.search_editbox

		if self.profession ~= self.prev_profession then
			editbox.prev_search = nil
		end
		editbox:SetText(editbox.prev_search or _G.SEARCH)

		-- The first time this function is called, everything in the expanded section of the MainPanel must be created.
		if private.InitializeFilterPanel then
			private.InitializeFilterPanel()
		end
		local prof_name = private.PROFESSION_LABELS[self.profession]
		local init_func = ITEM_FILTER_INIT_FUNCS[prof_name]
		local panel

		if init_func then
			local panel_name = "items_" .. prof_name
			panel = self.filter_menu:CreateSubMenu(panel_name)

			self.filter_menu.item[panel_name] = self.filter_menu[panel_name]
			self.filter_menu[panel_name] = nil

			init_func(private, panel)

			ITEM_FILTER_INIT_FUNCS[prof_name] = nil
		else
			panel = self.filter_menu.item["items_" .. prof_name]
		end
		private.UpdateFilterMarks()

		if panel then
			self.menu_toggle_item.icon_texture:SetVertexColor(1, 1, 1)
			self.menu_toggle_item.bg_texture:SetVertexColor(1, 1, 1)
			self.menu_toggle_item:Enable()

			if self.filter_menu.item:IsVisible() then
				self.filter_menu.item:Hide()
				self.filter_menu.item:Show()
			end
		else
			self.menu_toggle_item.icon_texture:SetVertexColor(0.50, 0.50, 0.50)
			self.menu_toggle_item.bg_texture:SetVertexColor(0.50, 0.50, 0.50)
			self.menu_toggle_item:Disable()

			if self.filter_menu.item:IsVisible() then
				self.filter_menu.item:Hide()
				self.menu_toggle_item:SetChecked(false)

				self.menu_toggle_general:SetChecked(true)
				self.filter_menu.general:Show()
				self.filter_menu:Show()
			end
		end

		-- If there is no current tab, this is the first time the panel has been
		-- shown so things must be initialized. In this case, MainPanel.list_frame:Update()
		-- will be called by the tab's OnClick handler.
		if self.current_tab then
			MainPanel.list_frame:Update(nil, false)
		else
			local current_tab = self.tabs[addon.db.profile.current_tab]
			local on_click = current_tab:GetScript("OnClick")

			on_click(current_tab)

			self.current_tab = addon.db.profile.current_tab
		end
		self.sort_button:SetTextures()
		self.filter_toggle:SetTextures()

		self:UpdateTitle()
		self:Show()
	end

	do
		-------------------------------------------------------------------------------
		-- Restore the panel's position on the screen.
		-------------------------------------------------------------------------------
		local function Reset_Position(self)
			local opts = addon.db.profile.frameopts
			local FixedOffsetX = opts.offsetx

			self:ClearAllPoints()

			if opts.anchorTo == "" then	-- no values yet, clamp to whatever frame is appropriate
				if _G.ATSWFrame then
					self:SetPoint("CENTER", _G.ATSWFrame, "CENTER", 490, 0)
				elseif _G.CauldronFrame then
					self:SetPoint("CENTER", _G.CauldronFrame, "CENTER", 490, 0)
				elseif _G.Skillet then
					self:SetPoint("CENTER", _G.SkilletFrame, "CENTER", 468, 0)
				else
					self:SetPoint("TOPLEFT", _G.TradeSkillFrame, "TOPRIGHT", 10, 0)
				end
			else
				if self.is_expanded then
					if opts.anchorFrom == "TOPLEFT" or opts.anchorFrom == "LEFT" or opts.anchorFrom == "BOTTOMLEFT" then
						FixedOffsetX = opts.offsetx
					elseif opts.anchorFrom == "TOP" or opts.anchorFrom == "CENTER" or opts.anchorFrom == "BOTTOM" then
						FixedOffsetX = opts.offsetx + 151/2
					elseif opts.anchorFrom == "TOPRIGHT" or opts.anchorFrom == "RIGHT" or opts.anchorFrom == "BOTTOMRIGHT" then
						FixedOffsetX = opts.offsetx + 151
					end
				end
				self:SetPoint(opts.anchorFrom, _G.UIParent, opts.anchorTo, FixedOffsetX, opts.offsety)
			end
			self:SetScale(addon.db.profile.frameopts.uiscale)
		end

		MainPanel:SetScript("OnShow", Reset_Position)
	end	-- do-block

	do
		local VALID_CATEGORY = {
			["general"]	= true,
			["obtain"]	= true,
			["binding"]	= true,
			["item"]	= true,
			["quality"]	= true,
			["player"]	= true,
			["rep"]		= true,
			["misc"]	= true,
		}

		function MainPanel:ToggleState()
			local x, y = self:GetLeft(), self:GetBottom()

			if self.is_expanded then
				-- Hide the category buttons
				for category in pairs(self.filter_menu) do
					if VALID_CATEGORY[category] then
						self["menu_toggle_" .. category]:Hide()
					end
				end
				self.filter_reset:Hide()
				self.filter_menu:Hide()

				_G.PlaySound("igCharacterInfoClose")

				self:SetWidth(self.normal_width)
				self:SetHitRectInsets(0, 35, 0, 53)
				self:SetClampRectInsets(0, -35, 0, 53)

				self.top_left:SetTexture("Interface\\QuestFrame\\UI-QuestLog-TopLeft")
				self.top_right:SetTexture("Interface\\QuestFrame\\UI-QuestLog-TopRight")
				self.bottom_left:Show()
				self.bottom_right:Show()

				self.xclose_button:ClearAllPoints()
				self.xclose_button:SetPoint("TOPRIGHT", self, "TOPRIGHT", -30, -8)
			else
				local found_active = false

				-- Show the category buttons. If one has been selected, show its information in the panel.
				for category in pairs(MainPanel.filter_menu) do
					local toggle = "menu_toggle_" .. category

					if VALID_CATEGORY[category] then
						MainPanel[toggle]:Show()

						if MainPanel[toggle]:GetChecked() then
							found_active = true
							MainPanel.filter_menu[category]:Show()
							MainPanel.filter_menu:Show()
						end
					end
				end

				-- If nothing was checked, default to the general filters.
				if not found_active then
					MainPanel.menu_toggle_general:SetChecked(true)
					MainPanel.filter_menu.general:Show()
					MainPanel.filter_menu:Show()
				end
				MainPanel.filter_reset:Show()

				_G.PlaySound("igCharacterInfoOpen")

				self:SetWidth(self.expanded_width)
				self:SetHitRectInsets(0, 90, 0, 53)
				self:SetClampRectInsets(0, -90, 0, 53)

				self.top_left:SetTexture("Interface\\QuestFrame\\UI-QuestLogDualPane-Left")
				self.top_right:SetTexture("Interface\\QuestFrame\\UI-QuestLogDualPane-Right")
				self.bottom_left:Hide()
				self.bottom_right:Hide()

				self.xclose_button:ClearAllPoints()
				self.xclose_button:SetPoint("TOPRIGHT", self, "TOPRIGHT", -84, -8)
			end
			self.is_expanded = not self.is_expanded

			self:ClearAllPoints()
			self:SetPoint("BOTTOMLEFT", _G.UIParent, "BOTTOMLEFT", x, y)
			self:UpdateTitle()
		end
	end	-- do-block

	function MainPanel:UpdateTitle()
		local current_prof = ORDERED_PROFESSIONS[self.profession]

		if not self.is_expanded then
			self.title_bar:SetFormattedText(SetTextColor(private.BASIC_COLORS["normal"], "ARL (%s) - %s"), addon.version, current_prof)
			return
		end
		local total, active = 0, 0

		for filter, info in pairs(self.filter_menu.value_map) do
			if info.svroot then
				if info.svroot[filter] == true then
					active = active + 1
				end
				total = total + 1
			end
		end
		self.title_bar:SetFormattedText(SetTextColor(private.BASIC_COLORS["normal"], "ARL (%s) - %s (%d/%d %s)"), addon.version, current_prof, active, total, _G.FILTERS)
	end

	-------------------------------------------------------------------------------
	-- Create the profession-cycling button and assign its values.
	-------------------------------------------------------------------------------
	local profession_cycler = _G.CreateFrame("Button", nil, MainPanel)
	profession_cycler:SetSize(60, 60)
	profession_cycler:SetPoint("TOPLEFT", 7, -6)
	profession_cycler:SetHighlightTexture([[Interface\Cooldown\ping4]])
	profession_cycler:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	MainPanel.prof_button = profession_cycler

	local profession_texture = MainPanel:CreateTexture("ARL_ProfessionButtonPortrait", "ARTWORK")
	profession_texture:SetSize(60, 60)
	profession_texture:SetPoint("TOPLEFT", 7, -6)
	MainPanel.profession_texture = profession_texture


	-------------------------------------------------------------------------------
	-- ProfCycle scripts/functions.
	-------------------------------------------------------------------------------
	profession_cycler:SetScript("OnClick", function(self, button, down)
	-- Known professions should be in Player.professions

	-- This loop is gonna be weird. The reason is because we need to
	-- ensure that we cycle through all the known professions, but also
	-- that we do so in order. That means that if the currently displayed
	-- profession is the last one in the list, we're actually going to
	-- iterate completely once to get to the currently displayed profession
	-- and then iterate again to make sure we display the next one in line.
	-- Further, there is the nuance that the person may not know any
	-- professions yet at all. Users are so annoying.
		local loop_start = 0
		local loop_end = 0

		local num_professions = #private.ORDERED_PROFESSIONS

		-- ok, so first off, if we've never done this before, there is no "current"
		-- and a single iteration will do nicely, thank you
		if button == "LeftButton" then
			-- normal profession switch
			if MainPanel.profession == 0 then
				loop_start = 1
				loop_end = num_professions + 1
			else
				loop_start = MainPanel.profession + 1
				loop_end = MainPanel.profession
			end
			local index = loop_start

			while index ~= loop_end do
				if index > num_professions then
					index = 1
				elseif private.Player.professions[ORDERED_PROFESSIONS[index]] then
					MainPanel.profession = index
					break
				else
					index = index + 1
				end
			end
		elseif button == "RightButton" then
			-- reverse profession switch
			if MainPanel.profession == 0 then
				loop_start = num_professions + 1
				loop_end = 0
			else
				loop_start = MainPanel.profession - 1
				loop_end = MainPanel.profession
			end
			local index = loop_start

			while index ~= loop_end do
				if index < 1 then
					index = num_professions
				elseif private.Player.professions[ORDERED_PROFESSIONS[index]] then
					MainPanel.profession = index
					break
				else
					index = index - 1
				end
			end
		end
		local is_shown = addon.scan_button:GetParent():IsVisible()
		local sfx

		_G.PlaySound("igCharacterNPCSelect")

		-- If not shown, save the current sound effects setting then set it to 0.
		if not is_shown then
			sfx = tonumber(_G.GetCVar("Sound_EnableSFX"))
			_G.SetCVar("Sound_EnableSFX", 0)
		end
		_G.CastSpellByName(ORDERED_PROFESSIONS[MainPanel.profession])
		addon:Scan()

		if not is_shown then
			_G.CloseTradeSkill()
			_G.SetCVar("Sound_EnableSFX", sfx)
		end
	end)

	function profession_cycler:SetTexture()
		_G.SetPortraitToTexture("ARL_ProfessionButtonPortrait", _G.GetTradeSkillTexture())
	end

	-------------------------------------------------------------------------------
	-- The search entry box and associated methods.
	-------------------------------------------------------------------------------
	local SearchRecipes
	do
		local recipe_fields = {
			"name",
			"skill_level",
			"specialty",
		}

		local function SearchByField(recipe, search_pattern)
			for index, field in ipairs(recipe_fields) do
				local str = recipe[field] and tostring(recipe[field]):lower()

				if str and str:find(search_pattern) then
					return true
				end
			end
			return false
		end

		local function SearchByAcquireType(recipe, search_pattern)
			local ACQUIRE_NAMES = private.ACQUIRE_NAMES

			for acquire_type in pairs(ACQUIRE_NAMES) do
				if recipe.acquire_data[acquire_type] then
					local acquire_name = ACQUIRE_NAMES[acquire_type]:lower()

					if acquire_name:find(search_pattern) then
						return true
					end
				end
			end
			return false
		end

		local function SearchByLocation(recipe, search_pattern)
			local location_list = private.location_list

			for location_name in pairs(location_list) do
				for spell_id in pairs(location_list[location_name].recipes) do
					if spell_id == recipe.spell_id then
						local location = location_name:lower()

						if location:find(search_pattern) then
							return true
						end
					end
				end
			end
			return false
		end

		local function SearchByQuality(recipe, search_pattern)
			if private.ITEM_QUALITY_NAMES[recipe.quality]:lower():find(search_pattern) then
				return true
			end
			return false
		end

		local function SearchByList(recipe, search_pattern, list)
			for id_num, unit in pairs(list) do
				if unit.item_list and unit.item_list[recipe.spell_id] and unit.name:lower():find(search_pattern) then
					return true
				end
			end
		end

		local function SearchByTrainer(recipe, search_pattern)
			return SearchByList(recipe, search_pattern, private.trainer_list)
		end

		local function SearchByVendor(recipe, search_pattern)
			return SearchByList(recipe, search_pattern, private.vendor_list)
		end

		local function SearchByMobDrop(recipe, search_pattern)
			return SearchByList(recipe, search_pattern, private.mob_list)
		end

		local function SearchByCustom(recipe, search_pattern)
			return SearchByList(recipe, search_pattern, private.custom_list)
		end

		local function SearchByDiscovery(recipe, search_pattern)
			return SearchByList(recipe, search_pattern, private.discovery_list)
		end

		local function SearchByReputation(recipe, search_pattern)
			local reputation_list = private.reputation_list

			for acquire_type, acquire_data in pairs(recipe.acquire_data) do
				if acquire_type == A.REPUTATION then
					for id_num, info in pairs(acquire_data) do
						local str = reputation_list[id_num].name:lower()

						if str and str:find(search_pattern) then
							return true
						end
					end
				end
			end
			return false
		end

		local SEARCH_FUNCTIONS = {
			SearchByField,
			SearchByQuality,
			SearchByAcquireType,
			SearchByLocation,
			SearchByReputation,
			SearchByTrainer,
			SearchByVendor,
			SearchByMobDrop,
			SearchByCustom,
			SearchByDiscovery,
		}
		-- Scans through the recipe database and toggles the flag on if the item is in the search criteria
		function SearchRecipes(search_pattern)
			if not search_pattern then
				return
			end
			search_pattern = search_pattern:lower()

			for index, recipe in pairs(private.profession_recipe_list[ORDERED_PROFESSIONS[MainPanel.profession]]) do
				recipe:RemoveState("RELEVANT")

				for search_index = 1, #SEARCH_FUNCTIONS do
					if SEARCH_FUNCTIONS[search_index](recipe, search_pattern) then
						recipe:AddState("RELEVANT")
						break
					end
				end
			end
		end
	end	-- do-block

	-------------------------------------------------------------------------------
	-- Search EditBox
	-------------------------------------------------------------------------------
	local SearchBox = _G.CreateFrame("EditBox", nil, MainPanel, "SearchBoxTemplate")

	SearchBox:EnableMouse(true)
	SearchBox:SetAutoFocus(false)
	SearchBox:SetFontObject("ChatFontSmall")
	SearchBox:SetWidth(130)
	SearchBox:SetHeight(12)
	SearchBox:SetPoint("TOPLEFT", MainPanel, "TOPLEFT", 75, -39)
	SearchBox:Show()

	MainPanel.search_editbox = SearchBox

	SearchBox:SetText(_G.SEARCH)
	SearchBox:SetHistoryLines(10)

	-- Allow removal of focus from the SearchBox by clicking on the WorldFrame.
	do
		local old_x, old_y, click_time

		_G.WorldFrame:HookScript("OnMouseDown", function(frame, ...)
			if not SearchBox:HasFocus() then
				return
			end
			old_x, old_y = _G.GetCursorPosition()
			click_time = _G.GetTime()
		end)

		_G.WorldFrame:HookScript("OnMouseUp", function(frame, ...)
			if not SearchBox:HasFocus() then
				return
			end
			local x, y = _G.GetCursorPosition()

			if not old_x or not old_y or not x or not y or not click_time then
				SearchBox:ClearFocus()
				return
			end

			if (_G.math.abs(x - old_x) + _G.math.abs(y - old_y)) <= 5 and _G.GetTime() - click_time < .5 then
				SearchBox:ClearFocus()
			end
		end)
	end

	-- Resets the SearchBox text and the state of all MainPanel.list_frame and recipe_list entries.
	function SearchBox:Reset()
		for index, recipe in pairs(private.recipe_list) do
			recipe:RemoveState("RELEVANT")
		end
		self.prev_search = nil

		self:SetText(_G.SEARCH)

		if self:HasFocus() then
			self:HighlightText()
		end
		MainPanel.list_frame:Update(nil, false)
	end

	-- If there is text in the search box, return the recipe's RELEVANT state.
	function SearchBox:MatchesRecipe(recipe)
		local editbox_text = self:GetText()

		if editbox_text ~= "" and editbox_text ~= _G.SEARCH then
			return recipe:HasState("RELEVANT")
		end
		return true
	end

	SearchBox:SetScript("OnEnterPressed", function(self)
		local searchtext = self:GetText()
		searchtext = searchtext:trim()

		if not searchtext or searchtext == "" then
			self:Reset()
			return
		end
		self:HighlightText()

		if searchtext == _G.SEARCH then
			return
		end
		self.prev_search = searchtext

		self:AddHistoryLine(searchtext)
		SearchRecipes(searchtext)
		MainPanel.list_frame:Update(nil, false)
	end)

	SearchBox:SetScript("OnEditFocusLost", function(self)
		_G.SearchBoxTemplate_OnEditFocusLost(self)

		local text = self:GetText()

		if text == "" or text == _G.SEARCH then
			self:Reset()
			return
		end
		self:AddHistoryLine(text)
	end)


	SearchBox:SetScript("OnTextSet", function(self)
		local text = self:GetText()

		if text ~= "" and text ~= _G.SEARCH and text ~= self.prev_search then
			self:HighlightText()
		else
			self:Reset()
		end
	end)

	do
		local last_update = 0
		local updater = _G.CreateFrame("Frame", nil, _G.UIParent)

		updater:Hide()
		updater:SetScript("OnUpdate", function(self, elapsed)
			last_update = last_update + elapsed

			if last_update < 0.25 then
				return
			end
			local search_text = SearchBox:GetText()

			if #search_text < 4 then
				last_update = 0
				return
			end
			last_update = 0

			SearchRecipes(search_text)
			MainPanel.list_frame:Update(nil, false)
			self:Hide()
		end)

		SearchBox:SetScript("OnTextChanged", function(self, is_typed)
			if not is_typed then
				return
			end
			local text = self:GetText()

			if text ~= "" and text ~= _G.SEARCH and text ~= self.prev_search then
				updater:Show()
				last_update = 0
			else
				self:Reset()
			end
		end)
	end	-- do

	-------------------------------------------------------------------------------
	-- Create the expand button and set its scripts.
	-------------------------------------------------------------------------------
	local expand_button_frame = _G.CreateFrame("Frame", nil, MainPanel)

	expand_button_frame:SetHeight(20)
	expand_button_frame:SetPoint("TOPLEFT", SearchBox, "BOTTOMLEFT", -12, -5)

	expand_button_frame.left = expand_button_frame:CreateTexture(nil, "BACKGROUND")
	expand_button_frame.left:SetWidth(8)
	expand_button_frame.left:SetHeight(22)
	expand_button_frame.left:SetPoint("TOPLEFT", expand_button_frame, 0, 4)
	expand_button_frame.left:SetTexture("Interface\\QuestFrame\\UI-QuestLogSortTab-Left")

	expand_button_frame.right = expand_button_frame:CreateTexture(nil, "BACKGROUND")
	expand_button_frame.right:SetWidth(8)
	expand_button_frame.right:SetHeight(22)
	expand_button_frame.right:SetPoint("TOPRIGHT", expand_button_frame, 0, 4)
	expand_button_frame.right:SetTexture("Interface\\QuestFrame\\UI-QuestLogSortTab-Right")

	expand_button_frame.middle = expand_button_frame:CreateTexture(nil, "BACKGROUND")
	expand_button_frame.middle:SetHeight(22)
	expand_button_frame.middle:SetPoint("LEFT", expand_button_frame.left, "RIGHT")
	expand_button_frame.middle:SetPoint("RIGHT", expand_button_frame.right, "LEFT")
	expand_button_frame.middle:SetTexture("Interface\\QuestFrame\\UI-QuestLogSortTab-Middle")

	local expand_button = _G.CreateFrame("Button", nil, MainPanel)
	expand_button:SetWidth(16)
	expand_button:SetHeight(16)

	local expand_label = expand_button:CreateFontString(nil, "ARTWORK")
	expand_label:SetFontObject("GameFontNormalSmall")
	expand_label:SetPoint("LEFT", expand_button, "Right", 0, 0)
	expand_label:SetJustifyH("LEFT")
	expand_label:SetText(_G.ALL)

	expand_button:SetFontString(expand_label)
	private.SetTooltipScripts(expand_button, L["EXPANDALL_DESC"])

	-- Make sure the button frame is large enough to hold the localized word for "All"
	expand_button_frame:SetWidth(27 + expand_button:GetFontString():GetStringWidth())

	MainPanel.expand_button = expand_button

	expand_button:SetPoint("LEFT", expand_button_frame.left, "RIGHT", -3, -3)

	expand_button:SetScript("OnClick", function(self, mouse_button, down)
		local current_tab = MainPanel.tabs[MainPanel.current_tab]
		local is_expanded = current_tab["expand_button_" .. MainPanel.profession]
		local expand_mode

		if is_expanded then
			table.wipe(current_tab[ORDERED_PROFESSIONS[MainPanel.profession] .. " expanded"])
		else
			if _G.IsShiftKeyDown() then
				expand_mode = "deep"
			else
				expand_mode = "normal"
			end
		end
		-- MainPanel.list_frame:Update() must be called before the button can be expanded or contracted, since
		-- the button is contracted from there.
		-- If expand_mode is nil, that means expand nothing.
		MainPanel.list_frame:Update(expand_mode, false)

		if is_expanded then
			self:Contract(current_tab)
		else
			self:Expand(current_tab)
		end
	end)

	function expand_button:Expand(current_tab)
		current_tab["expand_button_"..MainPanel.profession] = true

		self:SetNormalTexture("Interface\\BUTTONS\\UI-MinusButton-Up")
		self:SetPushedTexture("Interface\\BUTTONS\\UI-MinusButton-Down")
		self:SetHighlightTexture("Interface\\BUTTONS\\UI-PlusButton-Hilight")
		self:SetDisabledTexture("Interface\\BUTTONS\\UI-MinusButton-Disabled")

		SetTooltipScripts(self, L["CONTRACTALL_DESC"])
	end

	function expand_button:Contract(current_tab)
		current_tab["expand_button_"..MainPanel.profession] = nil

		self:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
		self:SetPushedTexture("Interface\\Buttons\\UI-PlusButton-Down")
		self:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight")
		self:SetDisabledTexture("Interface\\Buttons\\UI-PlusButton-Disabled")

		SetTooltipScripts(self, L["EXPANDALL_DESC"])
	end

	-------------------------------------------------------------------------------
	-- "Skill Level" checkbox.
	-------------------------------------------------------------------------------
	local SkillToggle = _G.CreateFrame("CheckButton", nil, MainPanel, "UICheckButtonTemplate")
	SkillToggle:SetPoint("TOPLEFT", SearchBox, "TOPRIGHT", 0, 0)
	SkillToggle:SetHeight(16)
	SkillToggle:SetWidth(16)

	SkillToggle.text = SkillToggle:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	SkillToggle.text:SetPoint("LEFT", SkillToggle, "RIGHT", 0, 0)

	SkillToggle:SetScript("OnClick", function(self, button, down)
		addon.db.profile.skill_view = not addon.db.profile.skill_view
		MainPanel.list_frame:Update(nil, false)
	end)

	SkillToggle:SetScript("OnShow", function(self)
		self:SetChecked(addon.db.profile.skill_view)
	end)

	SkillToggle.text:SetText(_G.SKILL)
	SetTooltipScripts(SkillToggle, L["SKILL_TOGGLE_DESC"], 1)

	-------------------------------------------------------------------------------
	-- "Display Exclusions" checkbox.
	-------------------------------------------------------------------------------
	local ExcludeToggle = _G.CreateFrame("CheckButton", nil, MainPanel, "UICheckButtonTemplate")
	ExcludeToggle:SetPoint("TOP", SkillToggle, "BOTTOM", 0, 1)
	ExcludeToggle:SetHeight(16)
	ExcludeToggle:SetWidth(16)

	ExcludeToggle.text = ExcludeToggle:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	ExcludeToggle.text:SetPoint("LEFT", ExcludeToggle, "RIGHT", 0, 0)

	ExcludeToggle:SetScript("OnClick", function(self, button, down)
		addon.db.profile.ignoreexclusionlist = not addon.db.profile.ignoreexclusionlist
		MainPanel.list_frame:Update(nil, false)
	end)

	ExcludeToggle:SetScript("OnShow", function(self)
		self:SetChecked(addon.db.profile.ignoreexclusionlist)
	end)

	ExcludeToggle.text:SetText(L["Display Exclusions"])
	SetTooltipScripts(ExcludeToggle, L["DISPLAY_EXCLUSION_DESC"], 1)

	-------------------------------------------------------------------------------
	-- Create the X-close button, and set its scripts.
	-------------------------------------------------------------------------------
	MainPanel.xclose_button = _G.CreateFrame("Button", nil, MainPanel, "UIPanelCloseButton")
	MainPanel.xclose_button:SetPoint("TOPRIGHT", MainPanel, "TOPRIGHT", -30, -8)

	MainPanel.xclose_button:SetScript("OnClick", function(self, button, down)
		MainPanel:Hide()
	end)

	-------------------------------------------------------------------------------
	-- Create MainPanel.filter_toggle, and set its scripts.
	-------------------------------------------------------------------------------
	do
		local filter_toggle = _G.CreateFrame("Button", nil, MainPanel)
		filter_toggle:SetWidth(24)
		filter_toggle:SetHeight(24)
		filter_toggle:SetPoint("TOPLEFT", MainPanel, "TOPLEFT", 323, -41)

		private.SetTooltipScripts(filter_toggle, L["FILTER_OPEN_DESC"])

		filter_toggle:SetScript("OnClick", function(self, button, down)
			SetTooltipScripts(self, MainPanel.is_expanded and L["FILTER_OPEN_DESC"] or L["FILTER_CLOSE_DESC"])

			MainPanel:ToggleState()
			self:SetTextures()
		end)

		filter_toggle:SetHighlightTexture([[Interface\CHATFRAME\UI-ChatIcon-BlinkHilight]])

		function filter_toggle:SetTextures()
			if MainPanel.is_expanded then
				self:SetNormalTexture([[Interface\BUTTONS\UI-SpellbookIcon-PrevPage-Up]])
				self:SetPushedTexture([[Interface\BUTTONS\UI-SpellbookIcon-PrevPage-Down]])
				self:SetDisabledTexture([[Interface\BUTTONS\UI-SpellbookIcon-PrevPage-Disabled]])
			else
				self:SetNormalTexture([[Interface\BUTTONS\UI-SpellbookIcon-NextPage-Up]])
				self:SetPushedTexture([[Interface\BUTTONS\UI-SpellbookIcon-NextPage-Down]])
				self:SetDisabledTexture([[Interface\BUTTONS\UI-SpellbookIcon-NextPage-Disabled]])
			end
		end
		MainPanel.filter_toggle = filter_toggle
	end	-- do-block

	-------------------------------------------------------------------------------
	-- Sort-mode toggle button.
	-------------------------------------------------------------------------------
	local sort_toggle = _G.CreateFrame("Button", nil, MainPanel)
	sort_toggle:SetWidth(24)
	sort_toggle:SetHeight(24)
	sort_toggle:SetPoint("LEFT", expand_button_frame, "RIGHT", 0, 2)

	private.SetTooltipScripts(sort_toggle, L["SORTING_DESC"])

	MainPanel.sort_button = sort_toggle

	sort_toggle:SetScript("OnClick", function(self, button, down)
		local sort_type = addon.db.profile.sorting

		addon.db.profile.sorting = (sort_type == "Ascending" and "Descending" or "Ascending")

		self:SetTextures()
		MainPanel.list_frame:Update(nil, false)
	end)

	sort_toggle:SetHighlightTexture([[Interface\CHATFRAME\UI-ChatIcon-BlinkHilight]])

	function sort_toggle:SetTextures()
		local sort_type = addon.db.profile.sorting

		if sort_type == "Ascending" then
			self:SetNormalTexture([[Interface\CHATFRAME\UI-ChatIcon-ScrollDown-Up]])
			self:SetPushedTexture([[Interface\CHATFRAME\UI-ChatIcon-ScrollDown-Down]])
			self:SetDisabledTexture([[Interface\CHATFRAME\UI-ChatIcon-ScrollDown-Disabled]])
		else
			self:SetNormalTexture([[Interface\CHATFRAME\UI-ChatIcon-ScrollUp-Up]])
			self:SetPushedTexture([[Interface\CHATFRAME\UI-ChatIcon-ScrollUp-Down]])
			self:SetDisabledTexture([[Interface\CHATFRAME\UI-ChatIcon-ScrollUp-Disabled]])
		end
	end

	-------------------------------------------------------------------------------
	-- Create MainPanel.progress_bar and set its scripts
	-------------------------------------------------------------------------------
	do
		local progress_bar = _G.CreateFrame("StatusBar", nil, MainPanel)
		progress_bar:SetWidth(216)
		progress_bar:SetHeight(18)
		progress_bar:SetPoint("BOTTOMLEFT", MainPanel, 17, 80)
		progress_bar:SetBackdrop({
						 bgFile = [[Interface\DialogFrame\UI-DialogBox-Background-Dark]],
						 tile = true,
						 tileSize = 16,
					 })

		progress_bar:SetStatusBarTexture([[Interface\TARGETINGFRAME\UI-StatusBar]])
		progress_bar:SetOrientation("HORIZONTAL")
		progress_bar:SetStatusBarColor(0.37, 0.45, 1.0)

		local border = progress_bar:CreateTexture(nil, "OVERLAY")
		border:SetWidth(288)
		border:SetHeight(78)
		border:SetPoint("TOPLEFT", progress_bar, "TOPLEFT", -36, 31)
		border:SetTexture([[Interface\CastingBar\UI-CastingBar-Border]])

		local text = progress_bar:CreateFontString(nil, "ARTWORK")
		text:SetWidth(195)
		text:SetHeight(14)
		text:SetFontObject("GameFontHighlightSmall")
		text:SetPoint("CENTER", progress_bar, "CENTER", 0, 0)
		text:SetJustifyH("CENTER")
		text:SetJustifyV("CENTER")

		progress_bar.text = text
		MainPanel.progress_bar = progress_bar
	end	-- do

	-------------------------------------------------------------------------------
	-- Create the close button, and set its scripts.
	-------------------------------------------------------------------------------
	local close_button = _G.CreateFrame("Button", ("%s_CloseButton"):format(FOLDER_NAME), MainPanel, "UIPanelButtonTemplate")
	close_button:SetWidth(111)
	close_button:SetHeight(24)
	close_button:SetPoint("LEFT", MainPanel.progress_bar, "RIGHT", 3, 1)
	close_button:SetText(_G.EXIT)

	MainPanel.close_button = close_button

	close_button:SetScript("OnClick", function(self, button, down)
		MainPanel:Hide()
	end)

	private.SetTooltipScripts(close_button, L["CLOSE_DESC"])
	-------------------------------------------------------------------------------
	-- Initialize components defined in other files.
	-------------------------------------------------------------------------------
	private.InitializeListFrame()
	private.InitializeTabs()

	private.InitializeFrame = nil
end
