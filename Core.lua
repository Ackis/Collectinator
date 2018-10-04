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
local Toast = LibStub("LibToast-1.0")
local LPJ = LibStub("LibPetJournal-2.0")

local debugger -- Only defined if needed.

private.build_num = select(2, _G.GetBuildInfo())
private.TextDump = LibStub("LibTextDump-1.0"):New(private.addon_name)

-- Global Frame Variables
addon.optionsFrame = {}

-------------------------------------------------------------------------------
-- Debugger.
-------------------------------------------------------------------------------
local function CreateDebugFrame()
	if debugger then
		return
	end
	debugger = LibStub("LibTextDump-1.0"):New(("%s Debug Output"):format(private.addon_name), 640, 480)
end

function addon:Debug(...)
	if not debugger then
		CreateDebugFrame()
	end
	local text = string.format(...)
	debugger:AddLine(text)

	--@debug@
	Toast:Spawn("Collectinator_DebugToast", text)
	--@end-debug@
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
			current_tab = 2, -- Name tab

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
			-- Collection Exclusion
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
					-- Acquisition
					achievement = true,
					coll_edition = true,
					mobdrop = true,
					profession = true,
					pvp = true,
					quest = true,
					raid = true,
					reputation = true,
					world_events = true,
					trainer = true,
					vendor = true,
					worlddrop = true,
					store = true,
					tcg = true,
					promo = true,
					misc = true,
					garrisonMission = true,

					-- Version
					expansion0 = true,
					expansion1 = true,
					expansion2 = true,
					expansion3 = true,
					expansion4 = true,
					expansion5 = true,
					expansion6 = true,
					expansion7 = true,
				},
				-------------------------------------------------------------------------------
				-- Quality Filters
				-------------------------------------------------------------------------------
				quality = {
					common = true,
					uncommon = true,
					rare = true,
					epic = true,
					legendary = true,
					artifact = true,
				},
				-------------------------------------------------------------------------------
				-- Binding Filters
				-------------------------------------------------------------------------------
				binding = {
					itemboe = true,
					itembop = true,
					itemboa = true,
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
					goldenlotus = true,
					cloudserpent = true,
					shadopan = true,
					anglers = true,
					augustcelestials = true,
					brewmasters = true,
					klaxxi = true,
					lorewalkers = true,
					tillers = true,
					blackprince = true,
					shangxiacademy = true,
					pandacommon1 = true,
					pandacommon2 = true,
					guild = true,
					netherwing = true,
					brawlers = true,
					pandacommon3 = true,
					shaohao = true,
					draenorcommon1 = true,
					draenorcommon2 = true,
					draenorcommon3 = true,
					draenorcommon4 = true,
					steamwheedle = true,
					arakkoa = true,
					awakened = true,
					saberstalkers = true,
					thenightfallen = true,
					courtoffarondis	= true,
					thewardens = true,
					dreamweavers = true,
					highmountaintribe = true,
					valarjar = true,
					conjurermargoss = true,
					talonsvengeance = true,
					armiesoflegionfall = true,
					corbyn = true,
					keeper_raynae = true,
					ilyssia_of_the_waters = true,
					akule_riverhorn = true,
					impus = true,
					akule_riverhorn = true,
					shaleth = true,
					argussian_reach = true,
					armyofthelight = true,
					champsionsofazeroth = true,
					tortollanseekers = true,
					bfacommon1 = true,
					bfacommon2 = true,
					bfacommon3 = true,
					bfacommon4 = true,
				},
				-- Populated later via CONSTANTS
				item = {
				},
				misc = {
				},
			}
		}
	}

	for filter_name in pairs(private.COLLECTION_FILTER_TYPES) do
		defaults.profile.filters.item[filter_name:lower()] = true
	end
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
	local scan_button_parent = _G.CollectionsJournal
	local scan_button = _G.CreateFrame("Button", nil, scan_button_parent, "UIPanelButtonTemplate")
	scan_button:SetHeight(20)
	scan_button:SetText(L["Scan"])
	scan_button:SetWidth(scan_button:GetTextWidth() + 10)
	scan_button:RegisterForClicks("LeftButtonUp")
	scan_button:SetFrameLevel(scan_button_parent:GetFrameLevel() + 1)
	scan_button:SetFrameStrata(scan_button_parent:GetFrameStrata())
	scan_button:Enable()
	scan_button:SetPoint("RIGHT", _G.CollectionsJournalCloseButton, "LEFT", 4, 0)

	scan_button:SetScript("OnClick", function()
		local shift_pressed = _G.IsShiftKeyDown()
		local alt_pressed = _G.IsAltKeyDown()
		local control_pressed = _G.IsControlKeyDown()

		-- Alt-Shift (Warcraft Pets)
		if shift_pressed and alt_pressed and not control_pressed then
			--addon:Scan(true, false)
		-- Shift only (Text Dump)
		elseif shift_pressed and not alt_pressed and not control_pressed then
			--addon:Scan(true, false)
		-- Alt only (Wipe icons from map)
		elseif not shift_pressed and alt_pressed and not control_pressed then
			--addon:ClearMap()
		-- If we are just clicking do the scan
		elseif not shift_pressed and not alt_pressed and not control_pressed then
			addon:Scan(false, false)
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
	_G.CollectionsJournalTab1:SetScript("OnEnter", function(this)
		local tooltip = _G.GameTooltip

		_G.GameTooltip_SetDefaultAnchor(tooltip, this)
		tooltip:SetText(string.format("%d %s.", _G.GetNumCompanions("MOUNT"), _G.MOUNTS))
		tooltip:Show()
	end)

	_G.CollectionsJournalTab1:SetScript("OnLeave", function()
		_G.GameTooltip:Hide()
	end)

	_G.CollectionsJournalTab2:SetScript("OnEnter", function(this)
		local tooltip = _G.GameTooltip

		_G.GameTooltip_SetDefaultAnchor(tooltip, this)
		tooltip:SetText(string.format("%d %s.", LPJ:NumPets(), _G.PETS))
		tooltip:Show()
	end)

	_G.CollectionsJournalTab2:SetScript("OnLeave", function()
		_G.GameTooltip:Hide()
	end)

--[[	-- Remove this if Wardrobe support is ever added.
	do
		_G.WardrobeCollectionFrame:HookScript("OnShow", function()
			scan_button:Hide()
		end)

		_G.WardrobeCollectionFrame:HookScript("OnHide", function()
			scan_button:Show()
		end)
	end
]]--
	self:SetupOptions()

	-- Register slash commands
	self:RegisterChatCommand("col", "ChatCommand")
	self:RegisterChatCommand("collectinator", "ChatCommand")

	-------------------------------------------------------------------------------
	-- Populate the collection initialization functions.
	-------------------------------------------------------------------------------
	COLLECTION_INIT_FUNCS = {
		CRITTER = addon.InitCritters,
		MOUNT = addon.InitMounts,
		TOY = addon.InitToys,
		HEIRLOOM = addon.InitHeirloom,
		WARDROBE = addon.InitWardrobe,
	}
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
local SUBCOMMAND_FUNCS = {
	debug = function()
		if not debugger then
			CreateDebugFrame()
		end

		if debugger:Lines() == 0 then
			debugger:AddLine("Nothing to report.")
			debugger:Display()
			debugger:Clear()
			return
		end
		debugger:Display()
	end,
	--@debug@
	dump = function(arg1, arg2)
		local func = private.DUMP_COMMANDS[arg1]

		if func then
			func(arg2)
		else
			addon:Print("Unknown dump command:")

			for command in pairs(private.DUMP_COMMANDS) do
				addon:Print(command)
			end
		end
	end,
	--@end-debug@
}

function addon:ChatCommand(input)
	local arg1, arg2, arg3 = self:GetArgs(input, 3)

	if arg1 then
		arg1 = arg1:trim():lower()
	end

	-- Open About panel if there's no parameters or if we do /col about
	if not arg1 or (arg1 and arg1:trim() == "") then
		_G.InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
	else
		local func = SUBCOMMAND_FUNCS[arg1]
		if func then
			func(arg2, arg3)
		else

			LibStub("AceConfigCmd-3.0"):HandleCommand("col", "Collectinator", arg1)
		end
	end
end

do

	local function InitializeLookups()
		addon:InitCustom()
		addon:InitMob()
		addon:InitQuest()
		addon:InitReputation()
		addon:InitTrainer()
		addon:InitWorldEvents()
		addon:InitVendor()

		InitializeLookups = nil
	end

	function addon:InitializeCollection(collectable_type)
		if not collectable_type then
			addon:Debug("nil collection passed to InitializeCollection()")
			return
		end

		if InitializeLookups then
			InitializeLookups()
		end

		local func = COLLECTION_INIT_FUNCS[collectable_type]

		if func then
			func(addon)
			COLLECTION_INIT_FUNCS[collectable_type] = nil
		end
	end
end
-------------------------------------------------------------------------------
-- Collection Scanning Functions
-------------------------------------------------------------------------------
do
	local COLLECTABLE_SCAN_FUNCS = {
		[private.COLLECTION_TYPE_IDS.MOUNT] = function()
			private.UpdateMountList()
		end,
		[private.COLLECTION_TYPE_IDS.CRITTER] = function()
			private.UpdatePetList()
		end,
		[private.COLLECTION_TYPE_IDS.TOY] = function(collectable_type, toys)
			private.UpdateToyList(toys)
		end,
		[private.COLLECTION_TYPE_IDS.WARDROBE] = function(collectable_type, wardrobes)
			private.UpdateWardrobeList(wardrobes)
		end,
		[private.COLLECTION_TYPE_IDS.HEIRLOOM] = function(collectable_type, heirlooms)
			local itemIDs = _G.C_Heirloom.GetHeirloomItemIDs()
			local unknownHeirloomIDs = {}
			local unknownHeirloomNames = {}

			for itemIDIndex = 1, #itemIDs do
				local itemID = itemIDs[itemIDIndex]

				local heirloomName, _, _, icon = _G.C_Heirloom.GetHeirloomInfo(itemID)
				local heirloom = heirlooms[itemID]

				if heirloom then
					heirloom:SetIcon(icon)
					heirloom:SetItemID(itemID)
					heirloom:SetName(heirloomName)

					if _G.C_Heirloom.PlayerHasHeirloom(itemID) then
						heirloom:AddState("KNOWN")
					end
				else
					unknownHeirloomIDs[#unknownHeirloomIDs + 1] = itemID
					unknownHeirloomNames[itemID] = heirloomName or _G.UNKNOWN
				end

			end

			table.sort(unknownHeirloomIDs)

			--@debug@
			private.TextDump:Clear()
			for itemIDIndex = 1, #unknownHeirloomIDs do
				local itemID = unknownHeirloomIDs[itemIDIndex]
				private.TextDump:AddLine(("-- %s -- %d"):format(unknownHeirloomNames[itemID], itemID))
				private.TextDump:AddLine(("heirloom = AddHeirloom(%d, V.BFA, Q.ARTIFACT)"):format(itemID))
				private.TextDump:AddLine(("heirloom:AddFilters(F.ALLIANCE, F.HORDE, F.IBOA)\n"))
			end

			local dumpLines = private.TextDump:Lines()
			if dumpLines > 0 then
				private.TextDump:InsertLine(1, ("Untracked: %d\n"):format(dumpLines / 2))
				private.TextDump:Display()
			end
		--@end-debug@
		end,

		}

	-- Causes a scan of the relevant collectable type to be conducted. Function called when the scan button is clicked.
	-- Parses Collections and displays output
	function addon:Scan()
		local currentPanelID = _G.PanelTemplates_GetSelectedTab(_G.CollectionsJournal)
		local collectionID = private.ORDERED_COLLECTIONS[currentPanelID]
		addon:InitializeCollection(collectionID)

		local collectables = private.collectable_list[collectionID]

		for id, collectable in pairs(collectables) do
			collectable:RemoveState("RELEVANT")
			collectable:RemoveState("VISIBLE")
		end

		local search_box = _G.PetJournalSearchBox
		search_box:ClearFocus()
		search_box:SetText("")
		_G.PetJournal_OnSearchTextChanged(search_box)

		private.Player:UpdateReputations()

		local func = COLLECTABLE_SCAN_FUNCS[currentPanelID]
		if func then
			func(collectionID, collectables)
		end

		if private.InitializeFrame then
			private.InitializeFrame()
		end

		self.Frame:Display(private.ORDERED_COLLECTIONS[currentPanelID])
	end
end
