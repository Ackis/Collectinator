--[[
************************************************************************
Core.lua
Core functions for Collectinator
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
]]

-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local pairs, ipairs = _G.pairs, _G.ipairs
local select = _G.select
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
local addon = LibStub("AceAddon-3.0"):NewAddon(private.addon_name, "AceConsole-3.0", "AceEvent-3.0")
_G.Collectinator = addon

--@alpha@
_G.COL = addon
--@end-alpha@

local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local Toast = LibStub("LibToast-1.0")
local LPJ = LibStub("LibPetJournal-2.0")

local debugger = _G.tekDebug and _G.tekDebug:GetFrame(private.addon_name)

private.build_num = select(2, _G.GetBuildInfo())

-- Global Frame Variables
addon.optionsFrame = {}

-------------------------------------------------------------------------------
-- Debugger.
-------------------------------------------------------------------------------
function addon:Debug(...)
	if debugger then
		local text = string.format(...)
		debugger:AddMessage(text)

		--@debug@
		Toast:Spawn("Collectinator_DebugToast", text)
		--@end-debug@
	else
		--@debug@
		self:Printf(...)
		--@end-debug@
	end
end

Toast:Register("Collectinator_DebugToast", function(toast, ...)
	toast:SetTitle(("%s - Debug"):format(private.addon_name))
	toast:SetText(...)
	toast:SetIconTexture([[Interface\HELPFRAME\HotIssueIcon]])
end)

------------------------------------------------------------------------------
-- Constants.
------------------------------------------------------------------------------
local COLLECTION_INIT_FUNCS

-------------------------------------------------------------------------------
-- Initialization functions
-------------------------------------------------------------------------------
local REQUIRED_LIBS = {
	"AceLocale-3.0",
	"LibBabble-Boss-3.0",
	"LibBabble-Faction-3.0",
	"LibQTip-1.0",
	"LibToast-1.0"
}

function addon:OnInitialize()
	-------------------------------------------------------------------------------
	-- Check to see if we have mandatory libraries loaded. If not, notify the user
	-- which are missing and return.
	-------------------------------------------------------------------------------

	local missing_libraries = false

	for index = 1, #REQUIRED_LIBS do
		local library_name = REQUIRED_LIBS[index]

		if not LibStub:GetLibrary(library_name, true) then
			missing_libraries = true
			addon:Print(L["MISSING_LIBRARY"]:format(library_name))
		end
	end
	REQUIRED_LIBS = nil

	if missing_libraries then
		--@debug@
		addon:Print("You are using a development version of Collectinator.  As per WowAce standards, externals are not set up.  You will have to install all necessary libraries in order for the addon to function correctly.")
		--@end-debug@
		_G.Collectinator = nil
		return
	end

	-- Set default options, which are to include everything in the scan
	local defaults = {
		global = {
		},
		profile = {
			-------------------------------------------------------------------------------
			-- Frame options
			-------------------------------------------------------------------------------
			frameopts = {
				offsetx = 0,
				offsety = 0,
				anchorTo = "",
				anchorFrom = "",
				uiscale = 1,
				small_list_font = true,
			},

			-------------------------------------------------------------------------------
			-- Tooltip Options
			-------------------------------------------------------------------------------
			tooltip = {
				scale = 1,
				acquire_fontsize = 11,
			},
			-------------------------------------------------------------------------------
			-- Sorting Options
			-------------------------------------------------------------------------------
			sorting = "Ascending",
			current_tab = 3, -- Name tab

			-------------------------------------------------------------------------------
			-- Display Options
			-------------------------------------------------------------------------------
			includefiltered = false,
			includeexcluded = false,
			closeguionskillclose = false,
			ignoreexclusionlist = false,
			scanbuttonlocation = "TR",
			spelltooltiplocation = "Right",
			acquiretooltiplocation = "Right",
			collectables_in_tooltips = true,
			max_collectables_in_tooltips = 10,
			hide_tooltip_hint = false,
			hidepopup = false,
			minimap = true,
			worldmap = true,
			autoscanmap = false,
			scantrainers = false,
			scanvendors = false,
			autoloaddb = false,
			maptrainer = false,
			mapvendor = true,
			mapmob = true,
			mapquest = true,

			-------------------------------------------------------------------------------
			-- Text Dump Options
			-------------------------------------------------------------------------------
			textdumpformat = "BBCode",

			-------------------------------------------------------------------------------
			-- Recipe Exclusion
			-------------------------------------------------------------------------------
			exclusionlist = {},

			-------------------------------------------------------------------------------
			-- Filter Options
			-------------------------------------------------------------------------------
			filters = {
				-------------------------------------------------------------------------------
				-- General Filters
				-------------------------------------------------------------------------------
				general = {
					faction = true,
					known = false,
					unknown = true,
					retired = false,
				},
				-------------------------------------------------------------------------------
				-- Obtain Filters
				-------------------------------------------------------------------------------
				obtain = {
					achievement = true,
					expansion0 = true,
					expansion1 = true,
					expansion2 = true,
					expansion3 = true,
					expansion4 = true,
					instance = true,
					mobdrop = true,
					pvp = true,
					quest = true,
					raid = true,
					reputation = true,
					seasonal = true,
					trainer = true,
					vendor = true,
					worlddrop = true,
				},
				-------------------------------------------------------------------------------
				-- Quality Filters
				-------------------------------------------------------------------------------
				quality = {
					common = true,
					uncommon = true,
					rare = true,
					epic = true,
				},
				-------------------------------------------------------------------------------
				-- Binding Filters
				-------------------------------------------------------------------------------
				binding = {
					itemboe = true,
					itembop = true,
				},
				-------------------------------------------------------------------------------
				-- Reputation Filters
				-------------------------------------------------------------------------------
				rep = {
					aldor = true,
					scryer = true,
					argentdawn = true,
					ashtonguedeathsworn = true,
					cenarioncircle = true,
					cenarionexpedition = true,
					consortium = true,
					hellfire = true,
					keepersoftime = true,
					nagrand = true,
					lowercity = true,
					scaleofthesands = true,
					shatar = true,
					shatteredsun = true,
					sporeggar = true,
					thoriumbrotherhood = true,
					timbermaw = true,
					violeteye = true,
					zandalar = true,
					argentcrusade = true,
					frenzyheart = true,
					ebonblade = true,
					kirintor = true,
					sonsofhodir = true,
					kaluak = true,
					oracles = true,
					wyrmrest = true,
					wrathcommon1 = true,
					wrathcommon2 = true,
					wrathcommon3 = true,
					wrathcommon4 = true,
					wrathcommon5 = true,
					ashenverdict = true,
					catacommon1 = true,
					catacommon2 = true,
					guardiansofhyjal = true,
					ramkahen = true,
					earthenring = true,
					therazane = true,
				},
				pet = {
					captured = true,
				},
			}
		}
	}



	--for filter_name in pairs(private.ITEM_FILTER_TYPES) do
--		defaults.profile.filters.item[filter_name:lower()] = true
--	end
	self.db = LibStub("AceDB-3.0"):New("COLLECTINATORDB2", defaults)

	if not self.db then
		self:Print("Error: Database not loaded correctly.  Please exit out of WoW and delete the Collectinator database file Collectinator.lua) found in: \\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\")
		return
	end
	local version = _G.GetAddOnMetadata("Collectinator", "Version")
	local debug_version = false
	local alpha_version = false

	--@debug@
	debug_version = true
	--@end-debug@

	--@alpha@
	alpha_version = true
	--@end-alpha@

	version = debug_version and "Devel" or (alpha_version and version .. "-Alpha") or version

	self.version = version

	-------------------------------------------------------------------------------
	-- Create the scan button.
	-------------------------------------------------------------------------------
	local scan_button_parent = _G.PetJournalParent
	local scan_button = _G.CreateFrame("Button", nil, scan_button_parent, "UIPanelButtonTemplate")
	scan_button:SetHeight(20)
	scan_button:SetText(L["Scan"])
	scan_button:SetWidth(scan_button:GetTextWidth() + 10)
	scan_button:RegisterForClicks("LeftButtonUp")
	scan_button:SetFrameLevel(scan_button_parent:GetFrameLevel() + 1)
	scan_button:SetFrameStrata(scan_button_parent:GetFrameStrata())
	scan_button:Enable()
	scan_button:SetPoint("RIGHT", _G.PetJournalParentCloseButton, "LEFT", 4, 0)

	scan_button:SetScript("OnClick", function()
		local companion_frame = (_G.PetJournal:IsVisible() and _G.PetJournal) or (_G.MountJournal:IsVisible() and _G.MountJournal)
		local shift_pressed = _G.IsShiftKeyDown()
		local alt_pressed = _G.IsAltKeyDown()
		local control_pressed = _G.IsControlKeyDown()

		-- Alt-Shift (Warcraft Pets)
		if shift_pressed and alt_pressed and not control_pressed then
			addon:Scan(true, false, "pets")
			-- Shift only (Text Dump)
		elseif shift_pressed and not alt_pressed and not control_pressed then
			addon:Scan(true, false, companion_frame)
			-- Alt only (Wipe icons from map)
		elseif not shift_pressed and alt_pressed and not control_pressed then
			addon:ClearMap()
			-- If we are just clicking do the scan
		elseif not shift_pressed and not alt_pressed and not control_pressed then
			addon:Scan(false, false, companion_frame)
			--self:SetupMap()
		end
	end)

	scan_button:SetScript("OnEnter", function(this)
		local tooltip = _G.GameTooltip
		_G.GameTooltip_SetDefaultAnchor(tooltip, this)
		tooltip:SetText(L["SCAN_COMPANIONS_DESC"])
		tooltip:Show()
	end)

	scan_button:SetScript("OnLeave", function() _G.GameTooltip:Hide() end)

	scan_button:Show()
	self.scan_button = scan_button

	-------------------------------------------------------------------------------
	-- Add mini-pet/mount totals to the tab
	-------------------------------------------------------------------------------
	_G.PetJournalParentTab1:SetScript("OnEnter", function(this)
		local tooltip = _G.GameTooltip

		_G.GameTooltip_SetDefaultAnchor(tooltip, this)
		tooltip:SetText(string.format("%d %s.", _G.GetNumCompanions("MOUNT"), _G.MOUNTS))
		tooltip:Show()
	end)

	_G.PetJournalParentTab1:SetScript("OnLeave", function()
		_G.GameTooltip:Hide()
	end)

	_G.PetJournalParentTab2:SetScript("OnEnter", function(this)
		local tooltip = _G.GameTooltip

		_G.GameTooltip_SetDefaultAnchor(tooltip, this)
		tooltip:SetText(string.format("%d %s.", LPJ:NumPets(), _G.PETS))
		tooltip:Show()
	end)

	_G.PetJournalParentTab2:SetScript("OnLeave", function()
		_G.GameTooltip:Hide()
	end)

	self:SetupOptions()

	-- Register slash commands
	self:RegisterChatCommand("col", "ChatCommand")
	self:RegisterChatCommand("collectinator", "ChatCommand")

	-------------------------------------------------------------------------------
	-- Populate the collection initialization functions.
	-------------------------------------------------------------------------------
	COLLECTION_INIT_FUNCS = {
		[private.COLLECTION_NAMES.PET] = addon.InitCritters,
		[private.COLLECTION_NAMES.MOUNT] = addon.InitMounts,
	}

	-------------------------------------------------------------------------------
	-- Hook GameTooltip so we can show information on mobs that drop/sell/train
	-------------------------------------------------------------------------------
--Tooltip shit can come later
--[[
	_G.GameTooltip:HookScript("OnTooltipSetUnit", function(self)
		if not addon.db.profile.collections_in_tooltips then
			return
		end
		local name, tooltip_unit = self:GetUnit()

		if not tooltip_unit then
			return
		end
		local id_num = private.MobGUIDToIDNum(_G.UnitGUID(tooltip_unit))
		local unit = private.mob_list[id_num] or private.vendor_list[id_num] or private.trainer_list[id_num]

		if not unit or not unit.item_list then
			return
		end
		local player = private.Player
		local count = 0

		for spell_id in pairs(unit.item_list) do
			local recipe = private.recipe_list[spell_id]
			local recipe_prof = _G.GetSpellInfo(recipe.profession)

			if player.scanned_professions[recipe_prof] then
				local skill_level = player.professions[recipe_prof]
				local has_level = skill_level and (type(skill_level) == "boolean" and true or skill_level >= recipe.skill_level)

				if (_G.IsShiftKeyDown() or (not recipe:HasState("KNOWN") and has_level)) and player:HasCollectableFaction(recipe) then
					local _, _, _, hex = _G.GetItemQualityColor(recipe.quality)

					self:AddLine(("%s: |c%s%s|r (%d)"):format(recipe.profession, hex, recipe.name, recipe.skill_level))
					count = count + 1
				end
			end

			if count >= addon.db.profile.max_collections_in_tooltips then
				break
			end
		end
	end)
]]--
end

--- Function run when the addon is enabled.  Registers events and pre-loads certain variables.
function addon:OnEnable()
	private.Player:Initialize()
end

function addon:OnDisable()
	if addon.Frame then
		addon.Frame:Hide()
	end
end

-------------------------------------------------------------------------------
-- Event handling functions
-------------------------------------------------------------------------------



-------------------------------------------------------------------------------
-- Logic Functions
-------------------------------------------------------------------------------

do

	-- Code snippet stolen from GearGuage by Torhal and butchered by Ackis
	local function StrSplit(input)
		if not input then
			return nil, nil
		end
		local arg1, arg2, var1

		arg1, var1 = input:match("^([^%s]+)%s*(.*)$")
		arg1 = (arg1 and arg1:lower() or input:lower())

		if var1 then
			local var2
			arg2, var2 = var1:match("^([^%s]+)%s*(.*)$")
			arg2 = (arg2 and arg2:lower() or var1:lower())
		end
		return arg1, arg2
	end

	-- Determines what to do when the slash command is called.
	function addon:ChatCommand(input)
		local arg1, arg2 = StrSplit(input)

		-- Open About panel if there's no parameters or if we do /col about
		if not arg1 or (arg1 and arg1:trim() == "") then
			_G.InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		elseif arg1 == L["About"]:lower() then
			if self.optionsFrame["About"] then
				_G.InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["About"])
			else
				_G.InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
			end
		elseif arg1 == L["Profile"]:lower() then
			_G.InterfaceOptionsFrame_OpenToCategory(self.optionsFrame["Profiles"])
		else
			-- What happens when we get here?
			LibStub("AceConfigCmd-3.0"):HandleCommand("col", "Collectinator", arg1)
		end
	end

end

function addon:InitializeCollection(collectable_type)
	if not collectable_type then
		addon:Debug("nil collection passed to InitializeCollection()")
		return
	end

	local func = COLLECTION_INIT_FUNCS[collectable_type]

	if func then
		func(addon)
		COLLECTION_INIT_FUNCS[collectable_type] = nil
	end
end


-------------------------------------------------------------------------------
-- Collection Scanning Functions
-------------------------------------------------------------------------------
do
	local current_collection_count, previous_collection_count = 0, 0

	-- List of collection (e.g. pet filters) headers, used in addon:Scan()
	local header_list = {}

--	local UNKNOWN_PET_FORMAT = "%s: %d\n--------------------\n%s\n--------------------\n%s\n********************"
	local UNKNOWN_PET_FORMAT = "%s: %d"

	local COLLECTABLE_SCAN_FUNCS = {
		[private.COLLECTION_TYPE_IDS.MOUNT] = function(collectable_type, mounts)
			local num_mounts = _G.GetNumCompanions(collectable_type)

			for index = 1, num_mounts do
				local mount_id = _G.GetCompanionInfo("MOUNT", index)
				local mount = mounts[mount_id]

				if mount then
					local mount_name = _G.GetSpellInfo(mount_id)
					mount:SetName(mount_name)
					mount:AddState("KNOWN")
				else
					--self:Debug("Mount %d - Not in db", mount_id)
				end
			end
		end,
		[private.COLLECTION_TYPE_IDS.PET] = function(collectable_type, critters)
			local num_pets = LPJ:NumPets()

			for index, creature_id in LPJ:IterateCreatureIDs() do
				local pet_id, species_id, is_owned, _, _, _, _, name, icon, petType, npc_id, source_text, description, is_wild  = _G.C_PetJournal.GetPetInfoByIndex(index)
				local critter = critters[creature_id]

				if critter then
					critter:SetName(name)
					critter:SetIcon(icon)

					critter.source_text_TEMPORARY = source_text

					if is_owned then
						critter:AddState("KNOWN")
					end
					addon:Printf("Critter %s exists (creature_id %d)", critter:Name(), creature_id)
				else
					table.insert(private.DUMP_OUTPUT, UNKNOWN_PET_FORMAT:format(name, creature_id, description, source_text))
				end
			end

			if #private.DUMP_OUTPUT > 0 then
				table.insert(private.DUMP_OUTPUT, 1, "Untracked pets:")
				addon:DisplayTextDump(nil, nil, table.concat(private.DUMP_OUTPUT, "\n"))
			end
		end,
	}

	-- Causes a scan of the relevant collectable type to be conducted. Function called when the scan button is clicked.
	-- Parses Collections and displays output
	function addon:Scan(textdump, is_refresh)
		local current_panel = _G.PanelTemplates_GetSelectedTab(_G.PetJournalParent)
		local collectable_type = private.COLLECTION_LABELS[current_panel]
		addon:InitializeCollection(collectable_type)

		local collectables = private.category_collectable_list[collectable_type]

		if not collectables then
			addon:Debug("Errror, %s table not made.", collectable_type)
			return
		end

		for id, collectable in pairs(collectables) do
			collectable:RemoveState("KNOWN")
			collectable:RemoveState("RELEVANT")
			collectable:RemoveState("VISIBLE")
		end
		COLLECTABLE_SCAN_FUNCS[current_panel](collectable_type, collectables)
		private.Player:UpdateReputations()

		-------------------------------------------------------------------------------
		-- Everything is ready - display the GUI or dump the list to text.
		-------------------------------------------------------------------------------
		if textdump then
			--self:DisplayTextDump(profession_recipes, current_panel)
		else
			if private.InitializeFrame then
				private.InitializeFrame()
			end
			self.Frame:Display(private.COLLECTION_LABELS[current_panel])
		end
	end
end

-------------------------------------------------------------------------------
-- Text dumping functions
-------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--- Creates a new frame with the contents of a text dump so you can copy and paste
-- Code borrowed from Antiarc (Chatter) with permission
--------------------------------------------------------------------------------
do
	local copy_frame = _G.CreateFrame("Frame", "COLCopyFrame", _G.UIParent)
	copy_frame:SetBackdrop({
		bgFile = [[Interface\DialogFrame\UI-DialogBox-Background]],
		edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
		tile = true,
		tileSize = 16,
		edgeSize = 16,
		insets = {
			left = 3,
			right = 3,
			top = 5,
			bottom = 3
		}
	})
	copy_frame:SetBackdropColor(0, 0, 0, 1)
	copy_frame:SetWidth(750)
	copy_frame:SetHeight(400)
	copy_frame:SetPoint("CENTER", _G.UIParent, "CENTER")
	copy_frame:SetFrameStrata("DIALOG")

	table.insert(_G.UISpecialFrames, "COLCopyFrame")

	local scrollArea = _G.CreateFrame("ScrollFrame", "COLCopyScroll", copy_frame, "UIPanelScrollFrameTemplate")
	scrollArea:SetPoint("TOPLEFT", copy_frame, "TOPLEFT", 8, -30)
	scrollArea:SetPoint("BOTTOMRIGHT", copy_frame, "BOTTOMRIGHT", -30, 8)

	local edit_box = _G.CreateFrame("EditBox", nil, copy_frame)
	edit_box:SetMultiLine(true)
	edit_box:SetMaxLetters(0)
	edit_box:EnableMouse(true)
	edit_box:SetAutoFocus(true)
	edit_box:SetFontObject("ChatFontNormal")
	edit_box:SetWidth(650)
	edit_box:SetHeight(270)
	edit_box:SetScript("OnEscapePressed", function()
		copy_frame:Hide()
	end)
	edit_box:HighlightText(0)

	scrollArea:SetScrollChild(edit_box)

	local close = _G.CreateFrame("Button", nil, copy_frame, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", copy_frame, "TOPRIGHT")

	copy_frame:Hide()

	function addon:DisplayTextDump(recipe_list, profession, text)
		local display_text = (not recipe_list and not profession) and text or self:GetTextDump(profession)

		if display_text == "" then
			return
		end
		edit_box:SetText(display_text)
		edit_box:HighlightText(0)
		edit_box:SetCursorPosition(1)
		copy_frame:Show()
		table.wipe(private.DUMP_OUTPUT)
	end
end -- do
