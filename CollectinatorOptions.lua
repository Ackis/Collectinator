--[[

****************************************************************************************

CollectinatorOptions.lua

Ace3 Configuration options for ARL

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

****************************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()
local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

local AceConfig 		= LibStub("AceConfig-3.0")
local AceConfigReg 		= LibStub("AceConfigRegistry-3.0")
local AceConfigDialog 	= LibStub("AceConfigDialog-3.0")

local modularOptions = {}
local nagrandfac = BFAC["Kurenai"] .. "\\" .. BFAC["The Mag'har"]
local hellfirefac = BFAC["Honor Hold"] .. "\\" .. BFAC["Thrallmar"]
local addonversion = GetAddOnMetadata(MODNAME, "Version")

-- Description: Function which provides our "filter" options tabkle
-- Expected result: extend modularOptions with our "filter" options
-- Input: None
-- Output: Ace3 config table

local filterOptions = nil

local function giveFilter()

	if (not filterOptions) then

		filterOptions = {
			order = 1,
			type = "group",
			name = "Filtering Options",
			desc = "FILTERING_OPTIONS_DESC",
			args = {
				header1 = {
					order	= 1,
					type	= "header",
					name	= "Filtering Options",
				},
				desc = {
					order	= 2,
					type	= "description",
					name	= "FILTERING_OPTIONS_DESC",
				},
				general = {
					order	= 3,
					type	= "group",
					name	= "General",
					desc	= "FILTERING_GENERAL_DESC",
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= "General Filtering Options",
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= "FILTERING_GENERAL_DESC" .. "\n",
						},
						factions = {
							order	= 3,
							type	= "toggle",
							name	= "Faction",
							desc	= "FACTION_DESC",
							get		= function() return addon.db.profile.filters.general.faction end,
							set		= function() addon.db.profile.filters.general.faction = not addon.db.profile.filters.general.faction end,
						},
						known = {
							order	= 7,
							type	= "toggle",
							name	= "Known",
							desc	= "KNOWN_DESC",
							get		= function() return addon.db.profile.filters.general.known end,
							set		= function() addon.db.profile.filters.general.known = not addon.db.profile.filters.general.known end,
						},
						unknown = {
							order	= 8,
							type	= "toggle",
							name	= "Unknown",
							desc	= "UNKNOWN_DESC",
							get		= function() return addon.db.profile.filters.general.unknown end,
							set		= function() addon.db.profile.filters.general.unknown = not addon.db.profile.filters.general.unknown end,
						},
					},
				},
			},
		}

	end

	return filterOptions

end

-- Description: function to return the top level Ace3 config table
-- Expected result: Will return the top level ace3 config table
-- Input: None
-- Output: Ace3 config table

local options = nil

local function giveOptions()

	if (not options) then

		options = {
			type = "group",
			name = MODNAME,
			args = {
				header1 =
				{
					order = 5,
					type = "header",
					name = "",
				},
				version =
				{
					order = 5,
					type = "description",
					name = "Version: 0.10\n",
				},
				showchecklist = 
				{
					type = "execute",
					name = "Show Checklist",
					desc = "Displays the checklist showing which collectable items you are missing.",
					func = function(info) addon:ShowChecklist() end,
					order = 40,
				},
				scancompanions = 
				{
					type = "execute",
					name = "Scan Companions",
					desc = "Scans for companions, updating the ones that you currently have.",
					func = function(info) addon:ScanCompanions() end,
					order = 50,
				},
			}
		}

	end

	return options

end

-- Description: Function which provides "profiles" options table
-- Expected result: modularOptions extended with Ace3 profiles options
-- Input: None
-- Output: Ace3 config table

local function giveProfiles()

	local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(addon.db)
	return profiles

end

-- Description: 
-- Expected result: 
-- Input: None
-- Output: None.

function addon:SetupOptions()

	AceConfigReg:RegisterOptionsTable(MODNAME, fullOptions)
	self.optionsFrame = AceConfigDialog:AddToBlizOptions(MODNAME, nil, nil, "general")

	-- Add in the about panel to the Bliz options (but not the ace3 config)
	if LibStub:GetLibrary("LibAboutPanel", true) then

		self.optionsFrame["About"] = LibStub:GetLibrary("LibAboutPanel").new(MODNAME, MODNAME)

	else

		self:Print("Lib About Panel not loaded.")

	end

	-- Fill up our modular options...
	self:RegisterModuleOptions("Filters", giveFilter(), "Filtering Options")
	self:RegisterModuleOptions("Profiles", giveProfiles(), "Profile Options")

end

-- Description: Function which extends our options table in a modular way
-- Expected result: add a new modular options table to the modularOptions upvalue as well as the Blizzard config
-- Input:
--		name			: index of the options table in our main options table
--		optionsTable	: the sub-table to insert
--		displayName	: the name to display in the config interface for this set of options
-- Output: None.

function addon:RegisterModuleOptions(name, optionsTable, displayName)

	modularOptions[name] = optionsTable
	self.optionsFrame[name] = AceConfigDialog:AddToBlizOptions(MODNAME, displayName, MODNAME, name)

end