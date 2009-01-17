--[[

enUS.lua

enUS localization strings for Collectinator

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

Original translated by: Ackis
Currently maintained by: Ackis

Please make sure you update the ToC file with any translations.

Please update http://www.wowace.com/projects/collectinator/localization/enUS/ for any translation
additions or changes.

****************************************************************************************
]]--

--[[
Locale schema
	* single and double words are just fine, anything longer should have a tag
	* tag name rules:
		* tags should be ALL_CAPITAL_LETTERS with words separated with _'s
		* descriptions are typically used in tooltips and header in sections
		* short descriptions will end in _DESC
		* long descriptions will end in _LONG
	* don't include the object being described in the name (no _TOGGLE or _TT) since it
	  can be used several times to describe different objects (in theory)
	* group related elements together, either by their location in the GUI/config,
	  or by purpose (Weapon categories, etc)
]]--

local L = LibStub("AceLocale-3.0"):NewLocale("Collectinator", "enUS", true, false)

if not L then return end

-- General strings
L["Filters"]				= true
--L["All"]					= true
--L["None"]					= true
--L["Ok"]						= true

-- Command line options
L["Profile"]				= true
L["Filter"]					= true

-- Config Options
L["About"]					= true
L["Main Options"]			= true
L["General Settings"]		= true
L["Display Settings"]		= true
L["Sorting Settings"]		= true
L["Profile Options"]		= true

-- Config UI Elements and their associated descriptions
L["MAIN_OPTIONS_DESC"]		= "Main configuration options"
L["Scan"]					= true
L["SCAN_RECIPES_DESC"]		= "Scans an open tradeskill for missing recipes.  Press shift to generate a text dump."
L["Text Dump"]				= true
L["TEXT_DUMP_DESC"]			= "Displays all recipes in a comma separated value format which can be copied and pasted into another client."
L["View Exclusion List"]	= true
L["SCANBUTTONPOSITION_DESC"] = "Allows you to customize where the scan button is placed on the tradeskill frame."
L["VIEW_EXCLUSION_LIST_DESC"] = "Prints out a list of all recipes on the exclusion list."
L["DISPLAY_SETTINGS_DESC"]	= "Allows you to customize how the GUI behaves."
L["SORTING_SETTINGS_DESC"]	= "Allows you to customize the way displayed recipes are sorted."

-- Config UI Elements and their associated descriptions
L["Include Filtered"]		= true
L["FILTERCOUNT_DESC"]		= "Include filtered recipes in the count of total recipes."
L["Include Excluded"]		= true
L["EXCLUDECOUNT_DESC"]		= "Include excluded recipes in the count of total recipes."
L["Close GUI"]				= "Close with Tradeskill UI"
L["CLOSEGUI_DESC"]			= "Close the ARL window when the crafting window is closed."
L["Display Exclusions"]		= true
L["DISPLAY_EXCLUSION_DESC"]	= "Display recipes that are in the exclusion list."
L["Reset Window"]			= true
L["RESET_WINDOW_DESC"]		= "Resets the ARL GUI to default position."
L["UI Scale"]				= true
L["UI_SCALE_DESC"]			= "Changes the scale of the UI. Ranges from .5 to 1.5 (1 is default)"
L["Tooltip Scale"]			= true
L["TOOLTIP_SCALE_DESC"]		= "Changes the scale of the ARL tooltip. Ranges from .5 to 1.5 (.9 is default)"
L["Sorting"]				= true
L["Sort"]					= true
L["Display"]				= true
L["SORTING_DESC"]			= "Change the way in which displayed recipes are sorted."
L["Version"]				= "Version: "
L["Right"]					= true
L["Left"]					= true
L["Name"]					= true
L["Skill"]					= true
L["Location"]				= true
L["Acquisition"]			= true

-- Filter Config Options
L["Filtering Options"]		= true
L["General"]				= true
L["Obtain"]					= true
L["Binding"]				= true
L["Item"]					= true
L["Armor"]					= true
L["Weapon"]					= true
L["Player Type"]			= true
L["Reputation"]				= true
L["Old World"]				= true
L["Burning Crusade"]		= true
L["Wrath of the Lich King"]	= true

-- Filter Configuration Descriptions
L["FILTERING_OPTIONS_DESC"]					= "Allows you to customize which recipes are filtered."
L["General Filtering Options"]				= true
L["FILTERING_GENERAL_DESC"]					= "Configuration for several more general filter types."
L["Obtain Filtering Options"]				= true
L["FILTERING_OBTAIN_DESC"]					= "Configuration for which methods of obtaining recipes are included in the scan."
L["Binding Filtering Options"]				= true
L["FILTERING_BINDING_DESC"]					= "Configuration for which types of binding are included in the scan."
L["Item Filtering Options"]					= true
L["FILTERING_ITEM_DESC"]					= "Configuration for which item types are included in the scan."
L["Armor Filtering Options"]				= true
L["FILTERING_Armor_DESC"]					= "Configuration for which types of armor are included in the scan."
L["Weapon Filtering Options"]				= true
L["FILTERING_WEAPONS_DESC"]					= "Configuration for which types of weapons are included in the scan."
L["Player Type Filtering Options"]			= true
L["FILTERING_PLAYERTYPE_DESC"]				= "Configuration for items matching which player types are included in the scan."
L["Reputation Filtering Options"]			= true
L["FILTERING_REP_DESC"]						= "Configuration for which reputation reward recipes are included in the scan."
L["Old World Rep. Filtering Options"]		= true
L["FILTERING_OLDWORLD_DESC"]				= "Configuration for which Old World Reputation reward recipes are included in the scan."
L["Burning Crusade Rep. Filtering Options"]	= true
L["FILTERING_BC_DESC"]						= "Configuration for which Burning Crusade Reputation reward recipes are included in the scan."
L["Lich King Rep. Filtering Options"]		= true
L["FILTERING_WOTLK_DESC"]					= "Configuration for which Wrath of the Lich King Reputation reward recipes are included in the scan."

-- General Filter UI Elements and their associated descriptions
L["Faction"]				= true
L["FACTION_DESC"]			= "Include both horde and alliance faction recipes in the scan."
L["Classes"]				= true
L["CLASS_DESC"]				= "Include all class specific recipes in the scan."
L["Specialties"]			= true
L["SPECIALTY_DESC"]			= "Include all trade-skill specialties in the scan."
L["Skill"]					= true
L["SKILL_DESC"]				= "Include all recipes in the scan, regardless of your current skill level."
L["Known"]					= true
L["KNOWN_DESC"]				= "Include all known recipes in the scan."
L["Unknown"]				= true
L["UNKNOWN_DESC"]			= "Include all unknown recipes in the scan."

-- Obtain Filter UI Elements and their associated descriptions
L["Instance"]				= true
L["INSTANCE_DESC"]			= "Recipes obtained from (5 man) instances should be included in the scan."
L["Raid"]					= true
L["RAID_DESC"]				= "Recipes obtained in raids (ie: Molten Core, Serpent Shrine Cavern, etc.) should be included in the scan."
L["Quest"]					= true
L["QUEST_DESC"]				= "Recipes obtained as quest rewards should be included in the scan."
L["Seasonal"]				= true
L["SEASONAL_DESC"]			= "Recipes obtained in seasonal events should be included in the scan."
L["Profession"]				= true
L["PROFESSION_DESC"]		= "Recipes learned from professions should be included in the scan."
L["Vendor"]					= true
L["VENDOR_DESC"]			= "Recipes purchased from vendors should be included in the scan."
L["PVP"]					= true
L["PVP_DESC"]				= "Recipes obtained through PVP should be included in the scan."
L["Discovery"]				= true
L["DISCOVERY_DESC"]			= "Recipes obtained through Discovery should be included in the scan."
L["World Drop"]				= true
L["WORLD_DROP_DESC"]		= "Recipes that are World Drops should be included in the scan."
L["Mob Drop"]				= true
L["MOB_DROP_DESC"]			= "Recipes that are Mob Drops should be included in the scan."

-- Binding Filter UI Elements and their associated descriptions
L["BOEFilter"]				= "Item Bind on Equip"
L["BOE_DESC"]				= "Recipes that make Bind on Equip items should be included in the scan."
L["BOPFilter"]				= "Item Bind on Pickup"
L["BOP_DESC"]				= "Recipes that make Bind on Pickup items should be included in the scan."
L["BOAFilter"]				= "Item Bind to Account"
L["BOA_DESC"]				= "Recipes that make Bind to Account items should be included in the scan."
L["RecipeBOEFilter"]		= "Recipe Bind on Equip"
L["RECIPE_BOE_DESC"]		= "Recipes that are Bind on Equip should be included in the scan."
L["RecipeBOPFilter"]		= "Recipe Bind on Pickup"
L["RECIPE_BOP_DESC"]		= "Recipes that are Bind on Pickup should be included in the scan."
L["RecipeBOAFilter"]		= "Recipe Bind to Account"
L["RECIPE_BOA_DESC"]		= "Recipes that are Bind to Account should be included in the scan."

-- Reputation Filtering UI Elements and their associated description
L["SPECIFIC_REP_DESC"]		= "Include %s faction."

-- ZJUI UI Elements (when different from the above ones) and their associated descriptions
L["FILTER_OPEN"]			= "Filter >>>"
L["FILTER_OPEN_DESC"]		= "Open filter option panel."
L["FILTER_CLOSE"]			= "<<< Filter"
L["FILTER_CLOSE_DESC"]		= "Close filter option panel."
L["EXPANDALL"]				= "+ All"
L["EXPANDALL_DESC"]			= "Expand all recipes listed below."
L["CONTRACTALL"]			= "- All"
L["CONTRACTALL_DESC"]		= "Minimize all recipes listed below."
L["Search"]					= true
L["SEARCH_DESC"]			= "Filter to recipes that contain text at left."
L["SEARCH_BOX_DESC"]		= "Enter text to search"
L["CLEAR_DESC"]				= "Clear the search text box."
L["Close"]					= "Exit"
L["CLOSE_DESC"]				= "Close the Ackis Recipe List Window."
L["Reset"]					= true
L["RESET_DESC"]				= "Reset All Filters to default values."
L["Apply"]					= true
L["APPLY_DESC"]				= "Apply the above selected filters to the recipe list"
L["ARMOR_ALL_DESC"]			= "Recipes that make ANY armor item should be included in the scan."
L["ARMOR_NONE_DESC"]		= "Do NOT include any recipes that make armor items in the scan."
L["WEAPON_ALL_DESC"]		= "Recipes that make ANY weapon item should be included in the scan."
L["WEAPON_NONE_DESC"]		= "Do NOT include any recipes that make weapon items in the scan."
L["NOT_YET_SCANNED"]		= "not yet scanned!"

-- Drop Obtain Info
L["Unknown Zone"] = true

-- Special Event information
L["Midsummer Fire Festival"] = true
L["Feast of Winters Veil"] = true
L["Lunar Festival"] = true
L["Darkmoon Faire"] = true
L["Seasonal"] = true