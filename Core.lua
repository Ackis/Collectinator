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
		Toast:Spawn("COL_DebugToast", text)
		--@end-debug@
	else
		--@debug@
		self:Printf(...)
		--@end-debug@
	end
end

Toast:Register("COL_DebugToast", function(toast, ...)
	toast:SetTitle(("%s - Debug"):format(private.addon_name))
	toast:SetText(...)
	toast:SetIconTexture([[Interface\HELPFRAME\HotIssueIcon]])
end)

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
		_G.AckisRecipeList = nil
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
			collections_in_tooltips = true,
			max_collections_in_tooltips = 10,
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
					specialty = false,
					skill = true,
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
			}
		}
	}

	for filter_name in pairs(private.ITEM_FILTER_TYPES) do
		defaults.profile.filters.item[filter_name:lower()] = true
	end
	self.db = LibStub("AceDB-3.0"):New("ARLDB2", defaults)

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

	self:SetupOptions()

	-- Register slash commands
	self:RegisterChatCommand("col", "ChatCommand")
	self:RegisterChatCommand("collectinator", "ChatCommand")

	-------------------------------------------------------------------------------
	-- Populate the collectin initialization functions.
	-------------------------------------------------------------------------------
	COLLECTIION_INIT_FUNCS = {

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

				if (_G.IsShiftKeyDown() or (not recipe:HasState("KNOWN") and has_level)) and player:HasRecipeFaction(recipe) then
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
-- Create the scan button
-------------------------------------------------------------------------------

function addon:CreateScanButton()
	-------------------------------------------------------------------------------
	-- Create the scan button.
	-------------------------------------------------------------------------------
	local scan_button = CreateFrame("Button", "Collectinator_ScanButton", PetJournalParent, "UIPanelButtonTemplate")
	self.ScanButton = scan_button

	scan_button:SetHeight(20)
	scan_button:RegisterForClicks("LeftButtonUp")
	scan_button:SetScript("OnClick",
				  function()
					  local companion_frame = (PetJournal:IsVisible() and PetJournal) or (MountJournal:IsVisible() and MountJournal)

					  -- Alt-Shift (Warcraft Pets)
					  if IsShiftKeyDown() and IsAltKeyDown() and not IsControlKeyDown() then
						  addon:Scan(true, false, "pets")
					  -- Shift only (Text Dump)
					  elseif IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
						  addon:Scan(true, false, companion_frame)
					  -- Alt only (Wipe icons from map)
					  elseif not IsShiftKeyDown() and IsAltKeyDown() and not IsControlKeyDown() then
						  addon:ClearMap()
					  -- If we are just clicking do the scan
					  elseif not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
						  addon:Scan(false, false, companion_frame)
						  self:SetupMap()
					  end
				  end)

	scan_button:SetScript("OnEnter",
				   function(this)
					   GameTooltip_SetDefaultAnchor(GameTooltip, this)
					   GameTooltip:SetText(L["SCAN_COMPANIONS_DESC"])
					   GameTooltip:Show()
				   end)

	scan_button:SetScript("OnLeave", function() GameTooltip:Hide() end)
	scan_button:SetText(L["Scan"])

	-- Set the frame level of the button to be 1 deeper than its parent
	local button_parent = scan_button:GetParent()
	scan_button:SetFrameLevel(button_parent:GetFrameLevel() + 1)
	scan_button:SetFrameStrata(button_parent:GetFrameStrata())

	scan_button:Enable()
	scan_button:ClearAllPoints()

	scan_button:SetPoint("RIGHT", PetJournalParentCloseButton, "LEFT", 4, 0)
	scan_button:SetWidth(addon.ScanButton:GetTextWidth() + 10)

	scan_button:Show()

	self.scan_button = scan_button
	return scan_button
end

-------------------------------------------------------------------------------
-- Logic Functions
-------------------------------------------------------------------------------

do
	-- Determines what to do when the slash command is called.
	function addon:ChatCommand(input)
		self:Print("LULZ THIS SHIT DON'T WORK")
	end
end

-------------------------------------------------------------------------------
-- Recipe Scanning Functions
-------------------------------------------------------------------------------
do
	local current_collection_count, previous_collection_count = 0, 0

	-- List of collection (e.g. pet filters) headers, used in addon:Scan()
	local header_list = {}

	--- Causes a scan of the tradeskill to be conducted. Function called when the scan button is clicked.   Parses recipes and displays output
	function addon:Scan(textdump, is_refresh)
		self:Print("LOL I'M SCANNING")
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
	end
end -- do

do
	-------------------------------------------------------------------------------
	-- Dumps recipe output in the format requested by the user
	-------------------------------------------------------------------------------
-- Don't care about dumps right now
--[[
	local text_table = {}
	local acquire_list = {}

	local GetFilterFlagNames
	do
		local LC = _G.LOCALIZED_CLASS_NAMES_MALE
		local FILTER_FLAG_NAMES

		function GetFilterFlagNames()
			if FILTER_FLAG_NAMES then
				return FILTER_FLAG_NAMES
			end
			local is_alliance = (private.Player.faction == "Alliance")

			FILTER_FLAG_NAMES = {
				-------------------------------------------------------------------------------
				-- Common flags.
				-------------------------------------------------------------------------------
				ALLIANCE = BFAC["Alliance"],
				HORDE = BFAC["Horde"],
				TRAINER = L["Trainer"],
				VENDOR = L["Vendor"],
				INSTANCE = _G.INSTANCE,
				RAID = _G.RAID,
				SEASONAL = _G.EVENTS_LABEL,
				QUEST = L["Quest"],
				PVP = _G.PVP,
				WORLD_DROP = L["World Drop"],
				MOB_DROP = L["Mob Drop"],
				DISC = L["Discovery"],
				RETIRED = L["Retired"],
				IBOE = L["BOEFilter"],
				IBOP = L["BOPFilter"],
				IBOA = L["BOAFilter"],
				RBOE = L["RecipeBOEFilter"],
				RBOP = L["RecipeBOPFilter"],
				RBOA = L["RecipeBOAFilter"],
				DPS = _G.MELEE,
				TANK = _G.TANK,
				HEALER = _G.HEALER,
				CASTER = _G.DAMAGER,
				ACHIEVEMENT = _G.ACHIEVEMENTS,
				-------------------------------------------------------------------------------
				-- Class flags.
				-------------------------------------------------------------------------------
				DK = LC["DEATHKNIGHT"],
				DRUID = LC["DRUID"],
				HUNTER = LC["HUNTER"],
				MAGE = LC["MAGE"],
				PALADIN = LC["PALADIN"],
				PRIEST = LC["PRIEST"],
				SHAMAN = LC["SHAMAN"],
				ROGUE = LC["ROGUE"],
				WARLOCK = LC["WARLOCK"],
				WARRIOR = LC["WARRIOR"],
				-------------------------------------------------------------------------------
				-- Reputation flags.
				-------------------------------------------------------------------------------
				ARGENTDAWN = BFAC["Argent Dawn"],
				CENARION_CIRCLE = BFAC["Cenarion Circle"],
				THORIUM_BROTHERHOOD = BFAC["Thorium Brotherhood"],
				TIMBERMAW_HOLD = BFAC["Timbermaw Hold"],
				ZANDALAR = BFAC["Zandalar Tribe"],
				ALDOR = BFAC["The Aldor"],
				ASHTONGUE = BFAC["Ashtongue Deathsworn"],
				CENARION_EXPEDITION = BFAC["Cenarion Expedition"],
				HELLFIRE = (is_alliance and BFAC["Honor Hold"] or BFAC["Thrallmar"]),
				CONSORTIUM = BFAC["The Consortium"],
				KOT = BFAC["Keepers of Time"],
				LOWERCITY = BFAC["Lower City"],
				NAGRAND = (is_alliance and BFAC["Kurenai"] or BFAC["The Mag'har"]),
				SCALE_SANDS = BFAC["The Scale of the Sands"],
				SCRYER = BFAC["The Scryers"],
				SHATAR = BFAC["The Sha'tar"],
				SHATTEREDSUN = BFAC["Shattered Sun Offensive"],
				SPOREGGAR = BFAC["Sporeggar"],
				VIOLETEYE = BFAC["The Violet Eye"],
				ARGENTCRUSADE = BFAC["Argent Crusade"],
				FRENZYHEART = BFAC["Frenzyheart Tribe"],
				EBONBLADE = BFAC["Knights of the Ebon Blade"],
				KIRINTOR = BFAC["Kirin Tor"],
				HODIR = BFAC["The Sons of Hodir"],
				KALUAK = BFAC["The Kalu'ak"],
				ORACLES = BFAC["The Oracles"],
				WYRMREST = BFAC["The Wyrmrest Accord"],
				WRATHCOMMON1 = (is_alliance and BFAC["The Silver Covenant"] or BFAC["The Sunreavers"]),
				WRATHCOMMON2 = (is_alliance and BFAC["Explorers' League"] or BFAC["The Hand of Vengeance"]),
				WRATHCOMMON3 = (is_alliance and BFAC["Valiance Expedition"] or BFAC["Warsong Offensive"]),
				WRATHCOMMON4 = (is_alliance and BFAC["The Frostborn"] or BFAC["The Taunka"]),
				WRATHCOMMON5 = (is_alliance and BFAC["Alliance Vanguard"] or BFAC["Horde Expedition"]),
				ASHEN_VERDICT = BFAC["The Ashen Verdict"],
				CATACOMMON1 = (is_alliance and BFAC["Wildhammer Clan"] or BFAC["Dragonmaw Clan"]),
				CATACOMMON2 = (is_alliance and BFAC["Baradin's Wardens"] or BFAC["Hellscream's Reach"]),
				GUARDIANS = BFAC["Guardians of Hyjal"],
				RAMKAHEN = BFAC["Ramkahen"],
				EARTHEN_RING = BFAC["The Earthen Ring"],
				THERAZANE = BFAC["Therazane"],
			}
			return FILTER_FLAG_NAMES
		end
	end -- do

	--- Dumps the recipe database in a format that is readable to humans (or machines)
	function addon:GetTextDump(profession_name)
		local output = addon.db.profile.textdumpformat or "Comma"
		table.wipe(text_table)

		if output == "Comma" then
			table.insert(text_table, ("Ackis Recipe List Text Dump for %s's %s, in the form of Comma Separated Values.\n  "):format(private.PLAYER_NAME, profession_name))
			table.insert(text_table, "Spell ID,Recipe Name,Skill Level,ARL Filter Flags,Acquire Methods,Known\n")
		elseif output == "BBCode" then
			table.insert(text_table, ("Ackis Recipe List Text Dump for %s's %s, in the form of BBCode.\n"):format(private.PLAYER_NAME, profession_name))
		elseif output == "XML" then
			table.insert(text_table, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>")
			table.insert(text_table, "\n<profession>")
		end

		local profession_recipes = private.profession_recipe_list[profession_name]

		for recipe_id in pairs(profession_recipes) do
			local recipe = profession_recipes[recipe_id]
			local is_known = recipe:HasState("KNOWN")

			if output == "Comma" then
				-- Add Spell ID, Name and Skill Level to the list
				table.insert(text_table, recipe_id)
				table.insert(text_table, ",")
				table.insert(text_table, recipe.name)
				table.insert(text_table, ",")
				table.insert(text_table, recipe.skill_level)
				table.insert(text_table, ",\"")
			elseif output == "BBCode" then
				-- Make the entry red
				table.insert(text_table, ("\n%s[b]%d[/b] - %s (%d)%s\n"):format(is_known and "" or "[color=red]", recipe_id, recipe.name, recipe.skill_level, is_known and "" or "[/color]"))

				table.insert(text_table, "\nRecipe Flags:\n[list]\n")
			elseif output == "XML" then
				table.insert(text_table, "\n<recipe>\n")
				table.insert(text_table, "  <id>" .. recipe_id .. "</id>\n")
				table.insert(text_table, "  <name>" .. recipe.name .. "</name>\n")
				table.insert(text_table, "  <skilllevel>" .. recipe.skill_level .. "</skilllevel>\n")
				table.insert(text_table, "  <known>" .. tostring(is_known) .. "</known>\n")
				table.insert(text_table, "  <flags>\n")
			elseif output == "Name" then
				table.insert(text_table, recipe.name)
			end

			-- Add in all the filter flags
			local filter_names = GetFilterFlagNames()
			local prev = false

			-- Find out which flags are set
			for table_index, bits in ipairs(private.FLAG_WORDS) do
				for flag_name, flag in pairs(bits) do
					local bitfield = recipe.flags[private.FLAG_MEMBERS[table_index]]

					if bitfield and bit.band(bitfield, flag) == flag then
						if output == "Comma" then
							if prev then
								table.insert(text_table, ",")
							end
							table.insert(text_table, filter_names[flag_name])
							prev = true
						elseif output == "BBCode" then
							table.insert(text_table, "[*]" .. filter_names[flag_name] .. "\n")
						elseif output == "XML" then
							table.insert(text_table, "    <flag>" .. filter_names[flag_name] .. "</flag>")
						end
					end
				end
			end

			if output == "Comma" then
				table.insert(text_table, "\",\"")
			elseif output == "BBCode" then
				table.insert(text_table, "[/list]\nAcquire Methods:\n[list]\n")
			elseif output == "XML" then
				table.insert(text_table, "  </flags>")
				table.insert(text_table, "  <acquire>")
			end

			-- Find out which unique acquire methods we have
			local acquire_data = recipe["acquire_data"]
			table.wipe(acquire_list)

			for acquire_type in pairs(acquire_data) do
				acquire_list[private.ACQUIRE_NAMES[acquire_type]] = true
			end

			-- Add all the acquire methods in
			prev = false

			for i in pairs(acquire_list) do
				if output == "Comma" then
					if prev then
						table.insert(text_table, ",")
					end
					table.insert(text_table, i)
					prev = true
				elseif output == "BBCode" then
					table.insert(text_table, "[*] " .. i)
				elseif output == "XML" then
					table.insert(text_table, "<acquiremethod>" .. i .. "</acquiremethod>")
				end
			end

			if output == "Comma" then
				table.insert(text_table, "\"," .. tostring(is_known) .. "\n")
				--if is_known then
				--	table.insert(text_table, "\",true\n")
				--else
				--	table.insert(text_table, "\",false\n")
				--end
			elseif output == "BBCode" then
				table.insert(text_table, "\n[/list]\n")
			elseif output == "XML" then
				table.insert(text_table, "  </acquire>")
				table.insert(text_table, "</recipe>")
			end
		end -- for

		if output == "XML" then
			table.insert(text_table, "\n</profession>")
		end
		return table.concat(text_table, "")
	end
]]--
end
