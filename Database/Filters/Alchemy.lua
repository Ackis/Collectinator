-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

local pairs = _G.pairs

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

function private:InitializeItemFilters_Alchemy(parent_panel)
	local MainPanel = addon.Frame

	local items_toggle = _G.CreateFrame("Button", nil, parent_panel)
	items_toggle:SetWidth(105)
	items_toggle:SetHeight(20)
	items_toggle:SetNormalFontObject("QuestTitleFont")
	items_toggle:SetHighlightFontObject("QuestTitleFontBlackShadow")
	items_toggle:SetText(_G.ITEMS .. ":")
	items_toggle:SetPoint("TOP", parent_panel, "TOP", 0, -7)
	items_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	private.SetTooltipScripts(items_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.ITEMS))

	local item_types = {
		alchemy_cauldron	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Cauldron"]),		text = L["Cauldron"],		row = 1, col = 1 },
		alchemy_elixir		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Elixir"]),		text = L["Elixir"],		row = 1, col = 2 },
		alchemy_flask		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Flask"]),		text = L["Flask"],		row = 2, col = 1 },
		alchemy_misc		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.MISCELLANEOUS),	text = _G.MISCELLANEOUS,	row = 2, col = 2 },
		alchemy_oil		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Oil"]),		text = L["Oil"],		row = 3, col = 1 },
		alchemy_potion		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Potion"]),		text = L["Potion"],		row = 3, col = 2 },
		alchemy_transmute	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Transmute"]),	text = L["Transmute"],		row = 4, col = 1 },
		alchemy_trinket		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Trinket"]),		text = L["Trinket"],		row = 4, col = 2 },
	}

	items_toggle:SetScript("OnClick", function(self, button)
		local toggle = (button == "LeftButton") and true or false

		for item in pairs(item_types) do
			addon.db.profile.filters.item[item] = toggle
			parent_panel[item]:SetChecked(toggle)
		end
		MainPanel:UpdateTitle()
		MainPanel.list_frame:Update(nil, false)
	end)

	parent_panel.items_toggle = items_toggle

	local items_panel = _G.CreateFrame("Frame", nil, parent_panel)
	items_panel:SetHeight(100)
	items_panel:SetPoint("TOP", items_toggle, "BOTTOM")
	items_panel:SetPoint("LEFT", parent_panel, "LEFT")
	items_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	private.GenerateCheckBoxes(parent_panel, item_types, items_panel)

	for item_type in pairs(item_types) do
		MainPanel.filter_menu.value_map[item_type] = {
			cb = MainPanel.filter_menu.item.items_alchemy[item_type],
			svroot = addon.db.profile.filters.item
		}
	end
	self.InitializeItemFilters_Alchemy = nil
end
