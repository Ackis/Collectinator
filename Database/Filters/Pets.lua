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

function private:InitializeItemFilters_Pet(parent_panel)
	local MainPanel = addon.Frame

	local misc_toggle = _G.CreateFrame("Button", nil, parent_panel)
	misc_toggle:SetWidth(105)
	misc_toggle:SetHeight(20)
	misc_toggle:SetNormalFontObject("QuestTitleFont")
	misc_toggle:SetHighlightFontObject("QuestTitleFontBlackShadow")
	misc_toggle:SetText(_G.MISCELLANEOUS .. ":")
	misc_toggle:SetPoint("TOP", parent_panel, "TOP", 0, -7)
	misc_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	private.SetTooltipScripts(misc_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.MISCELLANEOUS))

	local misc_types = {
		captured	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Captured"]),		text = L["Captured"],		row = 1, col = 1 },
	}

	misc_toggle:SetScript("OnClick", function(self, button)
		local toggle = (button == "LeftButton") and true or false

		for item in pairs(misc_types) do
			addon.db.profile.filters.item[item] = toggle
			parent_panel[item]:SetChecked(toggle)
		end
		MainPanel:UpdateTitle()
		MainPanel.list_frame:Update(nil, false)
	end)

	parent_panel.misc_toggle = misc_toggle

	local misc_panel = _G.CreateFrame("Frame", nil, parent_panel)
	misc_panel:SetHeight(100)
	misc_panel:SetPoint("TOP", misc_toggle, "BOTTOM")
	misc_panel:SetPoint("LEFT", parent_panel, "LEFT")
	misc_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	private.GenerateCheckBoxes(parent_panel, misc_types, misc_panel)

	for misc_type in pairs(misc_types) do
		MainPanel.filter_menu.value_map[misc_type] = {
			cb = MainPanel.filter_menu.misc.items_pets[misc_type],
			svroot = addon.db.profile.filters.pet
		}
	end
	self.InitializeItemFilters_Pet = nil
end
