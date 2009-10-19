-------------------------------------------------------------------------------
-- testenUS.lua
-------------------------------------------------------------------------------
-- enUS localization strings for Collectinator (Repository Version)
-------------------------------------------------------------------------------
-- File date: @file-date-iso@ 
-- File revision: @file-revision@ 
-- Project revision: @project-revision@
-- Project version: @project-version@
-------------------------------------------------------------------------------
local MODNAME	= "Collectinator"

local L = LibStub("AceLocale-3.0"):NewLocale(MODNAME, "enUS", true, true)

if not L then return end

--[[
L["About"]
L["Achievement"]
L["ACHIEVEMENT_DESC"]
L["ACQUIRETOOLTIPPOSITION_DESC"]
L["Acquisition"]
L["ALL_FILTERED"]
L["ALT_CLICK"]
L["ALT_TRADESKILL_DESC"]
L["Alt-Tradeskills"]
L["ARL_DOC_DESC"]
L["BC_WOW_DESC"]
L["Binding"]
L["BOA_DESC"]
L["BOAFilter"]
L["BOE_DESC"]
L["BOEFilter"]
L["BOP_DESC"]
L["BOPFilter"]
L["Bottom Left"]
L["Burning Crusade"]
L["Clear Exclusion List"]
L["CLEAR_DESC"]
L["CLEAR_EXCLUSION_LIST_DESC"]
L["Close GUI"]
L["CLOSE_DESC"]
L["CLOSEGUI_DESC"]
L["COLLECTIBLE_EXCLUDED"]
L["Collectinator_ALLEXCLUDED"]
L["Collectinator_ALLKNOWN"]
L["Collectinator_SEARCHFILTERED"]
L["Common Issues"]
L["COMMON_ISSUES_DESC"]
L["CONTRACTALL"]
L["CONTRACTALL_DESC"]
L["CTRL_CLICK"]
L["CTRL_SHIFT_CLICK"]
L["Display Exclusions"]
L["Display Options"]
L["Display"]
L["DISPLAY_EXCLUSION_DESC"]
L["DISPLAY_EXCLUSION_DESC"]
L["DISPLAY_OPTIONS_DESC"]
L["Documentation"]
L["EVENT_DESC"]
L["EXCLUDECOUNT_DESC"]
L["Exclusion Issues"]
L["EXCLUSION_ISSUES_DESC"]
L["EXPANDALL"]
L["EXPANDALL_DESC"]
L["Faction"]
L["FACTION_DESC"]
L["Filter"]
L["FILTER_CLOSE"]
L["FILTER_CLOSE_DESC"]
L["FILTER_OPEN"]
L["FILTER_OPEN_DESC"]
L["FILTERCOUNT_DESC"]
L["FILTERING_BC_DESC"]
L["FILTERING_BINDING_DESC"]
L["FILTERING_GENERAL_DESC"]
L["FILTERING_ITEM_DESC"]
L["FILTERING_MISC_DESC"]
L["FILTERING_OBTAIN_DESC"]
L["FILTERING_OLDWORLD_DESC"]
L["FILTERING_REP_DESC"]
L["FILTERING_WOTLK_DESC"]
L["Filters"]
L["Font Size"]
L["FONT_SIZE_DESC"]
L["Game Commands"]
L["GAME_COMMANDS_DESC"]
L["General Options"]
L["General"]
L["Hide Pop-Up"]
L["HIDEPOPUP_DESC"]
L["Include Excluded"]
L["Include Filtered"]
L["Instance"]
L["INSTANCE_DESC"]
L["Item"]
L["Known"]
L["KNOWN_DESC"]
L["Lich King"]
L["LK_WOW_DESC"]
L["Location"]
L["Main Filter Options"]
L["Main Options"]
L["MAIN_OPTIONS_DESC"]
L["MAINFILTER_OPTIONS_DESC"]
L["Map Issues"]
L["MAP_ISSUES_DESC"]
L["MAP_OPTIONS_DESC"]
L["Misc"]
L["Miscellaneous"]
L["MISSING_LIBRARY"]
L["Mob Drop"]
L["MOB_DROP_DESC"]
L["Mouse"]
L["Name"]
L["NO_DISPLAY"]
L["NoItemLink"]
L["NOT_YET_SCANNED"]
L["NOTSCANNED"]
L["Obtain"]
L["Obtained From"]
L["Off"]
L["Ok"]
L["Old World"]
L["ORIGINAL_WOW_DESC"]
L["Other Realms"]
L["Profile Options"]
L["Profile"]
L["PVP"]
L["PVP_DESC"]
L["Quest"]
L["QUEST_DESC"]
L["Raid"]
L["RAID_DESC"]
L["Removed from Game"]
L["REP_TEXT_DESC"]
L["Reporting Bugs"]
L["REPORTING_BUGS_DESC"]
L["Reputation"]
L["Reset All Filters"]
L["Reset Window Position"]
L["RESET_DESC"]
L["RESET_WINDOW_DESC"]
L["Scan Button Position"]
L["Scan"]
L["SCAN_COMPANIONS_DESC"]
L["SCAN_RECIPES_DESC"]
L["SCANBUTTONPOSITION_DESC"]
L["SEARCH_BOX_DESC"]
L["SEARCH_DESC"]
L["SEASONAL_DESC"]
L["SHIFT_CLICK"]
L["Sort"]
L["Sorting Options"]
L["Sorting"]
L["SORTING_DESC"]
L["SORTING_OPTIONS_DESC"]
L["Special Event"]
L["SPECIFIC_REP_DESC"]
L["SPELLTOOLTIPPOSITION_DESC"]
L["Text Dump"]
L["TEXT_DUMP_DESC"]
L["Tooltip (Acquire) Position"]
L["Tooltip (Recipe) Position"]
L["Tooltip Options"]
L["Tooltip Scale"]
L["TOOLTIP_OPTIONS_DESC"]
L["TOOLTIP_SCALE_DESC"]
L["UI Scale"]
L["UI_SCALE_DESC"]
L["Unavailable"]
L["Unhandled Collectible"]
L["Unknown Zone"]
L["Unknown"]
L["UNKNOWN_DESC"]
L["Using Filters"]
L["USING_FILTERS_DESC"]
L["Vendor"]
L["VENDOR_DESC"]
L["Version"]
L["View Exclusion List"]
L["VIEW_EXCLUSION_LIST_DESC"]
L["World Drop"]
L["WORLD_DROP_DESC"]

-- Mobs
L["Blue Dragonspawn"] = true
L["Defias Pirate"] = true
L["Adolescent Whelp"] = true
L["Dreaming Whelp"] = true
L["Red Whelp"] = true
L["Flamesnorting Whelp"] = true
L["Crimson Whelp"] = true
L["Razormaw Matriarch"] = true
L["Bloodsail Raider"] = true
L["Bloodsail Mage"] = true
L["Bloodsail Swashbuckler"] = true
L["Bloodsail Warlock"] = true
L["Bloodsail Sea Dog"] = true
L["Bloodsail Elder Magus"] = true
L["Dalaran Spellscribe"] = true
L["Dalaran Shield Guard"] = true
L["Dalaran Theurgist"] = true
L["Dalaran Summoner"] = true
L["\"Pretty Boy\" Duncan"] = true
L["Scalding Whelp"] = true
L["Deviate Ravager"] = true
L["Deviate Guardian"] = true
L["Searing Whelp"] = true
L["Bloodsail Deckhand"] = true
L["Bloodsail Swabby"] = true
L["Sprite Darter"] = true
L["Takk the Leaper"] = true
L["Draconic Magelord"] = true
L["Blue Scalebane"] = true
L["Draconic Mageweaver"] = true
L["Ravasaur Matriarch"] = true
L["Dart"] = true
L["Razzashi Raptor"] = true
L["Bogflare Needler"] = true
L["Dark Iron Antagonist"] = true
L["Forest Frog"] = true
L["Gundrak Raptor"] = true
L["Time-Lost Proto Drake"] = true
]]--


-- General strings
L["Filters"]				= true
L["Ok"]						= true

-- Command line options
L["Profile"]				= true
L["Filter"]					= true

-- Config Options
L["About"]					= true
L["Main Options"]			= true
L["General Options"]		= true
L["Display Options"]		= true
L["Main Filter Options"]	= true
L["Sorting Options"]		= true
L["Profile Options"]		= true
L["Tooltip Options"]		= true
L["Map Options"]			= true
L["ARL Documentation"]		= true
L["Documentation"]			= true

-- Config UI Elements and their associated descriptions
L["MAIN_OPTIONS_DESC"]		= "Main configuration options"
L["Scan"]					= true
L["SCAN_RECIPES_DESC"]		= [[Scans an open tradeskill for missing entries.
Shift-click to generate a text dump.
Alt-click to remove all waypoints from the mini-map and world map.]]
L["Text Dump"]				= true
L["TEXT_DUMP_DESC"]			= "Displays all entries in a comma separated value format which can be copied and pasted into another client."
L["View Exclusion List"]	= true
L["Clear Exclusion List"]	= true
L["Reset All Filters"]		= true
L["Scan Button Position"]	= true
L["SCANBUTTONPOSITION_DESC"] = "Allows you to customize where the scan button is placed on the tradeskill frame."
L["VIEW_EXCLUSION_LIST_DESC"] = "Prints out a list of all entries on the exclusion list."
L["CLEAR_EXCLUSION_LIST_DESC"] = "Removes all entries from the exclusion list."
L["MAINFILTER_OPTIONS_DESC"] = "Allows you to specify how ARL handles different filters."
L["DISPLAY_OPTIONS_DESC"]	= "Allows you to customize how the GUI behaves."
L["SORTING_OPTIONS_DESC"]	= "Allows you to customize the way displayed entries are sorted."
L["ARL_DOC_DESC"]			= "Documentation for Ackis Recipe List"

-- UI Documentation
L["Using Filters"]			= true
L["USING_FILTERS_DESC"]		= [[Filters may be toggled on or off.  There are two types of filters: one which will prevent the recipe from showing up at all, and one which will prevent a specific type of acquire information from showing up.
With the first type of filter, these match the proprieties of the recipe (ie: binding).  If you toggle ARL to not show BoP entries, no entries that are BoP will show up in the scan.  The second type of filter deals with acquire information.  If a recipe is available as a mob drop, or from a vendor and you toggle to not show vendor entries, the recipe will still show up but vendor information will be hidden for it.  The reason is that there is still another way to acquire this recipe (mob drop) so it should still be included in the scan.
Please note that the tooltips will always hide the opposite faction methods of acquiring a recipe.  This has been done to save space in the tooltip since they can get quite large.]]
L["Reporting Bugs"]			= true
L["REPORTING_BUGS_DESC"]	= [[When reporting a bug, please make sure you do the following:
1) Download the latest version, available from http://www.wowace.com/projects/arl/files/
2) Make sure there is not a bug report filed for your issue already.  You can check these at http://www.wowace.com/projects/arl/tickets/
3) Disable addons such as Skillet or ATSW.
4) Read the bug reporting documentation at http://www.wowace.com/projects/arl/pages/feedback-and-bug-reporting/
5) If your problem is not listed and you are using the latest version verify your addon settings.  Verify filters, profiles, etc.
6) You have found a bug that no one has reported before.  Create a new ticket at http://www.wowace.com/projects/arl/tickets/ with a descriptive heading about the problem.  In the ticket make sure you include the error message that you received (just the error message, I don't need a listing of the addons you use), the recipe/profession you were working with, and any other info that you think may help.
When posting a bug report, do NOT include all of the addons from swatter.  This just makes it difficult to read.  If you want a good error reporting mod, get BugSack.  Do not post errors/missing entries in the comments, or send them to me via a PM.  Post them as a ticket which I can address and track easily.]]
L["Common Issues"]			= true
L["COMMON_ISSUES_DESC"]		= [[Please refer to these common issues before submitting a bug report.
1) Recipe X does not show up! - Check your filter settings to make sure that the recipe is not being filtered.
2) Inscription is missing so many glyphs! Why aren't they listed?  Turn off your 'classes' filter.  By default (and due to popular request) ARL will only show entries which your class can use and most glpyhs are not usable by your class.
3) I don't want to see opposite faction entries! Turn on the factions filter.  This will set it up to only display your factions obtainable entries.  If something still shows up and it shouldn't, please submit a bug report.]]
L["Exclusion Issues"]		= true
L["EXCLUSION_ISSUES_DESC"]	= "To add a recipe to the exclusion (ignore) list, just alt-click on it from the recipe window.  To get this recipe back, open up the ARL options and set the toggle of \"Show Excluded entries\" to be on.  This will show all the entries you've excluded in your scan during your next scan.  Once you have done this, Alt Click on the recipe again to remove it from the exclusion list."
L["Map Issues"]				= true
L["MAP_ISSUES_DESC"]		= "ARL relies on TomTom to add icons and waypoints to the World Map and the Mini-map.  You can customize these by going to the ARL configuration menu and scrolling to the display options.  If you do not have TomTom installed, nothing will be added.  Auto-adding icons is disabled by default."
L["Game Commands"]			= true
L["GAME_COMMANDS_DESC"]		= [[Command Line:
Ackis Recipe List has recently changed to use a GUI for change parameters.  Type /arl to open up the GUI.  Acceptable commands include:
- /arl about
  Opens up the about panel, listing information about the mod.
- /arl sort or /arl sorting
  Opens up the sorting options.
- /arl documentation
  Opens up in-game documentation regarding ARL.
- /arl display
  Opens up display options.
- /arl profile
  Opens up profile options.
- /arl filter
  Opens up filtering options.
- /arl scan
  Performs a scan for missing entries.  This is in place for those times when you cannot access the scan button.

Clicking:
Ackis Recipe List will behave differently depending on which modifying keys you use to click.

Scan Button:
This is the functionality that occurs when you are clicking the scan button.

- Normal Click
  Performs a scan of the current tradeskill displaying entries in a new window.
- Shift Click
  Generates a text dumping of the current tradeskill in CSV format.
- Alt Click
  Removes all waypoints on the World Map and Mini-map generated by ARL.

Recipe:
This is the functionality that occurs when you click on a recipe.

- Normal Click
  Expands or contracts the recipe acquire information.
- Shift Click
  Generates an item link of the item that the recipe will make into your default chat box.
- Ctrl Click
  Genereates a spell link for the recipe you clicked.
- Alt Click
  Adds or removes a recipe from the exclusion list.
- Ctrl-Shift Click
  Adds the specific recipe acquire methods to the World Map and Mini-map.]]

-- Config UI Elements and their associated descriptions
L["Include Filtered"]		= true
L["FILTERCOUNT_DESC"]		= "Include filtered entries in the count of total entries."
L["Include Excluded"]		= true
L["EXCLUDECOUNT_DESC"]		= "Include excluded entries in the count of total entries."
L["Close GUI"]				= "Close with Tradeskill UI"
L["CLOSEGUI_DESC"]			= "Close the ARL window when the crafting window is closed."
L["Display Exclusions"]		= true
L["DISPLAY_EXCLUSION_DESC"]	= "Display entries that are in the exclusion list."
L["Reset Window Position"]	= true
L["RESET_WINDOW_DESC"]		= "Resets the ARL GUI to default position."
L["UI Scale"]				= true
L["UI_SCALE_DESC"]			= "Changes the scale of the UI. Ranges from .5 to 1.5 (1 is default)"
L["Tooltip Scale"]			= true
L["TOOLTIP_SCALE_DESC"]		= "Changes the scale of the ARL tooltip. Ranges from .5 to 1.5 (.9 is default)"
L["Tooltip (Recipe) Position"] = true
L["SPELLTOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the recipe information."
L["Tooltip (Acquire) Position"] = true
L["ACQUIRETOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the acquire information."
L["Font Size"]				= true
L["FONT_SIZE_DESC"]			= "Changes the size of the fonts for ARL."
L["Sorting"]				= true
L["Sort"]					= true
L["Display"]				= true
L["SORTING_DESC"]			= "Change the way in which displayed entries are sorted."
L["TOOLTIP_OPTIONS_DESC"]	= "Allows you to specify how the tooltips for ARL behave.  The acquire tooltip lists the different information on how to acquire the recipe, whereas the spell tooltip lists the recipe information itself."
L["MAP_OPTIONS_DESC"]		= "Allows you to change how ARL integrates into the world map and into the mini-map."
L["Version"]				= "Version: "
L["Right"]					= true
L["Left"]					= true
L["Off"]					= true
L["Top"]					= true
L["Bottom"]					= true
L["Top Right"]				= true
L["Top Left"]				= true
L["Bottom Right"]			= true
L["Bottom Left"]			= true
L["Mouse"]					= true
L["Name"]					= true
L["Skill (Asc)"]			= true
L["Skill (Desc)"]			= true
L["Location"]				= true
L["Acquisition"]			= true
L["Unhandled Recipe"]		= true
L["World Map"]				= true
L["Mini Map"]				= true
L["WORLDMAP_DESC"]			= "Do you want missing vendor entries to appear on the world map."
L["MINIMAP_DESC"]			= "Do you want missing vendor entries to appear on the mini map."
L["Clear Waypoints"]		= true
L["CLEAR_WAYPOINTS_DESC"]	= "Remove all ARL waypoints from TomTom."
L["Hide Pop-Up"]			= true
L["HIDEPOPUP_DESC"]			= "Prevents pop-ups notifying you why the scan window is empty from showing.  Pop-ups will always show for the first time after a new version has been added."
L["Auto Scan Map"]			= true
L["AUTOSCANMAP_DESC"]		= "Auto show all waypoints when doing a recipe scan."

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
L["Misc"]					= true

-- Filter Configuration Descriptions
L["FILTERING_OPTIONS_DESC"]					= "Allows you to customize which entries are filtered."
L["General Filtering Options"]				= true
L["FILTERING_GENERAL_DESC"]					= "Configuration for several more general filter types."
L["Obtain Filtering Options"]				= true
L["FILTERING_OBTAIN_DESC"]					= "Configuration for which methods of obtaining entries are included in the scan."
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
L["FILTERING_REP_DESC"]						= "Configuration for which reputation reward entries are included in the scan."
L["Old World Rep. Filtering Options"]		= true
L["FILTERING_OLDWORLD_DESC"]				= "Configuration for which Old World Reputation reward entries are included in the scan."
L["Burning Crusade Rep. Filtering Options"]	= true
L["FILTERING_BC_DESC"]						= "Configuration for which Burning Crusade Reputation reward entries are included in the scan."
L["Lich King Rep. Filtering Options"]		= true
L["FILTERING_WOTLK_DESC"]					= "Configuration for which Wrath of the Lich King Reputation reward entries are included in the scan."
L["REP_TEXT_DESC"]							= [[Left-click here to select all reputation filters.
Right-click here to deselect all reputation filters.]]
L["Miscellaneous"]							= true
L["FILTERING_MISC_DESC"]					= "Configuration for miscellaneous options which are also present in the display options."

-- General Filter UI Elements and their associated descriptions
L["Faction"]				= true
L["FACTION_DESC"]			= "Include both horde and alliance faction entries in the scan."
L["Classes"]				= true
L["CLASS_DESC"]				= "Include this class in the scan.  This will filter on two factors: 1) Can the class use the recipe and 2) can the class learn the recipe."
L["CLASS_TEXT_DESC"]		= [[Left-click here to select all classes.
Right-click here to select your own class.]]
L["Specialties"]			= true
L["SPECIALTY_DESC"]			= "Include all trade-skill specialties in the scan."
L["Skill"]					= true
L["SKILL_DESC"]				= "Include all entries in the scan, regardless of your current skill level."
L["Known"]					= true
L["KNOWN_DESC"]				= "Include all known entries in the scan."
L["Unknown"]				= true
L["UNKNOWN_DESC"]			= "Include all unknown entries in the scan."

-- Obtain Filter UI Elements and their associated descriptions
L["Instance"]				= true
L["INSTANCE_DESC"]			= "entries obtained from (5 man) instances should be included in the scan."
L["Raid"]					= true
L["RAID_DESC"]				= "entries obtained in raids (ie: Molten Core, Serpent Shrine Cavern, etc.) should be included in the scan."
L["Quest"]					= true
L["QUEST_DESC"]				= "entries obtained as quest rewards should be included in the scan."
L["SEASONAL_DESC"]			= "entries obtained in world events should be included in the scan."
L["Trainer"]				= true
L["TRAINER_DESC"]			= "entries learned from trainers should be included in the scan."
L["Vendor"]					= true
L["VENDOR_DESC"]			= "entries purchased from vendors should be included in the scan."
L["PVP"]					= true
L["PVP_DESC"]				= "entries obtained through PVP should be included in the scan."
L["Discovery"]				= true
L["DISCOVERY_DESC"]			= "entries obtained through Discovery should be included in the scan."
L["World Drop"]				= true
L["WORLD_DROP_DESC"]		= "entries that are World Drops should be included in the scan."
L["Mob Drop"]				= true
L["MOB_DROP_DESC"]			= "entries that are Mob Drops should be included in the scan."

-- Binding Filter UI Elements and their associated descriptions
L["BOEFilter"]				= "Item Bind on Equip"
L["BOE_DESC"]				= "entries that make Bind on Equip items should be included in the scan."
L["BOPFilter"]				= "Item Bind on Pickup"
L["BOP_DESC"]				= "entries that make Bind on Pickup items should be included in the scan."
L["BOAFilter"]				= "Item Bind to Account"
L["BOA_DESC"]				= "entries that make Bind to Account items should be included in the scan."
L["RecipeBOEFilter"]		= "Recipe Bind on Equip"
L["RECIPE_BOE_DESC"]		= "entries that are Bind on Equip should be included in the scan."
L["RecipeBOPFilter"]		= "Recipe Bind on Pickup"
L["RECIPE_BOP_DESC"]		= "entries that are Bind on Pickup should be included in the scan."
L["RecipeBOAFilter"]		= "Recipe Bind to Account"
L["RECIPE_BOA_DESC"]		= "entries that are Bind to Account should be included in the scan."

-- Item - Armor UI Elements and their associated descriptions
L["ARMOR_TEXT_DESC"]		= [[Left-click here to select all armor filters.
Right-click here to deselect all armor filters.]]
L["Cloth"]					= true
L["CLOTH_DESC"]				= "entries that make cloth items should be included in the scan."
L["Leather"]				= true
L["LEATHER_DESC"]			= "entries that make leather items should be included in the scan."
L["Mail"]					= true
L["MAIL_DESC"]				= "entries that make mail items should be included in the scan."
L["Plate"]					= true
L["PLATE_DESC"]				= "entries that make plate items should be included in the scan."
L["Cloak"]					= true
L["CLOAK_DESC"]				= "entries that make cloaks should be included in the scan."
L["Ring"]					= true
L["RING_DESC"]				= "entries that make rings should be included in the scan."
L["Trinket"]				= true
L["TRINKET_DESC"]			= "entries that make trinkets should be included in the scan."
L["Necklace"]				= true
L["NECKLACE_DESC"]			= "entries that make necklaces should be included in the scan."
L["Shield"]					= true
L["SHIELD_DESC"]			= "entries that make shields should be included in the scan."

-- Item - Weapon UI Elements and their associated descriptions
L["WEAPON_TEXT_DESC"]		= [[Left-click here to select all weapon filters.
Right-click here to deselect all weapon filters.]]
L["One Hand"]				= true
L["ONEHAND_DESC"]			= "entries that make one handed items should be included in the scan."
L["Two Hand"]				= true
L["TWOHAND_DESC"]			= "entries that make two handed items should be included in the scan."
L["Axe"]					= true
L["AXE_DESC"]				= "entries that make axes should be included in the scan."
L["Sword"]					= true
L["SWORD_DESC"]				= "entries that make swords should be included in the scan."
L["Mace"]					= true
L["MACE_DESC"]				= "entries that make maces should be included in the scan."
L["Polearm"]				= true
L["POLEARM_DESC"]			= "entries that make polearms should be included in the scan."
L["Dagger"]					= true
L["DAGGER_DESC"]			= "entries that make daggers should be included in the scan."
L["Fist"]					= true
L["FIST_DESC"]				= "entries that make fist weapons should be included in the scan."
L["Staff"]					= true
L["STAFF_DESC"]				= "entries that make stave's should be included in the scan."
L["Wand"]					= true
L["WAND_DESC"]				= "entries that make wands should be included in the scan."
L["Thrown"]					= true
L["THROWN_DESC"]			= "entries that make thrown weapons should be included in the scan."
L["Bow"]					= true
L["BOW_DESC"]				= "entries that make bows should be included in the scan."
L["Crossbow"]				= true
L["CROSSBOW_DESC"]			= "entries that make crossbows should be included in the scan."
L["Ammo"]					= true
L["AMMO_DESC"]				= "entries that make ammunition should be included in the scan."
L["Gun"]					= true
L["GUN_DESC"]				= "entries that make guns should be included in the scan."

-- Player Type Filtering UI Elements and their associated descriptions
L["Melee DPS"]				= true
L["MELEE_DPS_DESC"]			= "entries that are used by melee dps players should be included in the scan."
L["Tanks"]					= true
L["TANKS_DESC"]				= "entries that are used by tank players should be included in the scan."
L["Caster DPS"]				= true
L["CASTER_DPS_DESC"]		= "entries that are used by casting dps players should be included in the scan."
L["Healers"]				= true
L["HEALERS_DESC"]			= "entries that are used by healer players should be included in the scan."

-- Reputation Filtering UI Elements and their associated description
L["SPECIFIC_REP_DESC"]		= "Include %s faction."

-- ZJUI UI Elements (when different from the above ones) and their associated descriptions
L["FILTER_OPEN"]			= "Filter >>>"
L["FILTER_OPEN_DESC"]		= "Open filter option panel."
L["FILTER_CLOSE"]			= "<<< Filter"
L["FILTER_CLOSE_DESC"]		= "Close filter option panel."
L["EXPANDALL"]				= "+ All"
L["EXPANDALL_DESC"]			= "Expand all entries listed below."
L["CONTRACTALL"]			= "- All"
L["CONTRACTALL_DESC"]		= "Minimize all entries listed below."
L["Search"]					= true
L["SEARCH_DESC"]			= "Filter to entries that contain text at left."
L["SEARCH_BOX_DESC"]		= "Enter text to search"
L["CLEAR_DESC"]				= "Clear the search text box."
L["Close"]					= "Exit"
L["CLOSE_DESC"]				= "Close the Ackis Recipe List Window."
L["Reset"]					= true
L["RESET_DESC"]				= "Reset All Filters to default values."
L["Apply"]					= true
L["APPLY_DESC"]				= "Apply the above selected filters to the recipe list"
L["NOT_YET_SCANNED"]		= "Not yet scanned!"

-- Common Tool tip Strings (where different from above)
L["CTRL_CLICK"]			= "Ctrl-Click to add this recipe's link to your chat."
L["ALT_CLICK"]			= "Alt-Click to add/remove this recipe to your ignore list."
L["SHIFT_CLICK"]		= "Shift-Click to add the item crafted by this recipe's link to your chat."
L["CTRL_SHIFT_CLICK"]	= "Ctrl-Shift-Click to add the item to the map and mini-map."
L["Obtained From"]		= true
L["RECIPE_EXCLUDED"]	= "Recipe is in Exclusion list"
L["Required Skill"]		= true

-- Popup Strings
L["NOTSCANNED"]		= "You have not yet scanned this profession. Please open this profession and click on Scan."
L["Collectinator_FILTERED"]	= "Although you have already scanned this profession, your filters are currently preventing any entries from being displayed. Please change your filters and try again."
L["Collectinator_ALLKNOWN"]	= "You know all the entries for this profession."
L["Collectinator_ALLEXCLUDED"] = "Although you have already scanned this profession, your exclusions are currently preventing any entries from being displayed. Please change your exclusions and try again."
L["Collectinator_SEARCHFILTERED"] = "Your search has no results."
L["NO_DISPLAY"] 	= "No entries to display.  If you get this message please submit a ticket at http://www.wowace.com/projects/arl/tickets listing what filters you have, what is in your exclusion list, which profession, and the number of known/unknown entries."

-- Error/warning Text
L["MissingFromDB"] = [[": is missing from the database.
Please inform the author of the add-on about this recipe."]]
L["UnknownTradeSkill"] = "You have opened up a trade skill window which is not supported by this add-on.  The trade skill is %s.  Please provide the author of the add-on with this information."
L["OpenTradeSkillWindow"] = "Please open trade skill window to scan."
L["SpellIDCache"] = "Spell ID: %s is not in your local cache.  Please submit a ticket at http://wow.curseforge.com/projects/ackis-recipe-list/tickets/ and include the spell ID and the profession in which you were scanning."
L["NoItemLink"] = "This item does not have an item link or it was not in your cache."
L["MISSING_LIBRARY"] = "%s is missing.  Addon cannot run."

-- Drop Obtain Info
L["Unknown Zone"] = true

-- Custom database strings (Need way better descriptions, just filler right now):
L["Custom1"] = "Discovered by making elixirs or flasks using Burning Crusade or higher ingredients."
L["Custom2"] = "Discovered by making potions using Burning Crusade or higher ingredients."
L["Custom3"] = "Discovered by doing transmutes using Burning Crusade or higher ingredients."
L["Custom4"] = "Discovered by Major Protection Potions using Burning Crusade or higher ingredients."
L["Custom5"] = "Randomly obtained by completing the cooking daily quest in Shattrath and selecting the meat crate."
L["Custom6"] = "Randomly obtained by completing the cooking daily quest in Shattrath and selecting the fish barrel."
L["Custom7"] = "Randomly obtained by completing the fishing daily quest in Shattrath."
L["Custom8"] = "Learnt by default when learning the profession."
L["Custom9"] = "Recipe is created by Engineers."
L["Custom10"] = "Quest to obtain the recipe opens up after turning in the Head of Onyxia."
L["Custom11"] = "Obtained by clicking on a tablet in Zul'Gurub in the Edge of Madness."
L["Custom12"] = "Discovered by doing transmutes using Wrath of the Lich King ingredients."
L["Custom13"] = "Obtained by talking to Henry Stern in Razorfen Downs."
L["Custom14"] = "Obtained randomly by conducting minor inscription research."
L["Custom15"] = "Obtained randomly by conducting Northrend inscription research."
L["Custom16"] = "Obtained randomly by renewing your engineering membership."
L["Custom17"] = "The schematic can be found on the floor near Golem Lord Argelmach in Blackrock Depths. Only engineers with 300 skill may learn the schematic after clicking on it."
L["Custom18"] = "Obtained randomly by conducting Northrend alchemy research."
L["Custom19"] = "Discovered by doing transmutes using Northrend or higher ingredients (transmute tooltip mentions that there is a chance to discovery something)."
L["Custom20"] = "Goblin transport." -- Update
L["Custom21"] = "Gnome transport." -- Update
L["Custom22"] = "Random BoP drop off of bosses in AQ40."
L["Custom23"] = "Randomly obtained in Dire Maul (North) in Knot Thimblejack's cache."
L["Custom24"] = "Random Sunwell trash drop."
L["Custom25"] = "There is a chance that you find it in 5 different rooms in blackrock depths, its random spawn though, and sometimes it doesnt even spawn at all."
L["Custom26"] = "Random drop off of Molten Core bosses."
L["Custom27"] = "Learned from Goblin's Guide to Elementium book - dropped by Master Elemental Shaper Krixix in Blackwing Lair."
L["Custom28"] = "Random drop from Black Temple/Hyjal Summit trash/bosses."
L["Custom29"] = "Random drop off of Zul'Aman bosses."
L["Custom30"] = "Jandice in Scholo book appears" -- Update
L["Custom31"] = "Blacksmith plans in Stratholme" -- Update
L["Custom32"] = "DM Tribute Run - Chest" -- Update
L["Custom33"] = "World Dragons" -- Update
L["Custom34"] = "Random Black Temple / Hyjal Summit trash drop"
L["Custom35"] = "Blade's Edge Mountains Summon Bosses" -- Update
L["Custom36"] = "From a NPC in Dalaran sewers after doing The Taste Test" -- Update
L["Custom37"] = "Random SSC / TK trash drop"
L["Custom38"] = "Randomly obtained by completing the cooking daily quest in Dalaran."
L["Custom39"] = "Random drop off of Ulduar bosses."
L["Custom40"] = "Discovered randomly by reading the Book of Glyph Mastery."

-- Monster/Quest/Trainer/Vendor strings:

-- Do not translate anything below this line without talking to Ackis first please.

L["40 Tickets - Schematic: Steam Tonk Controller"] = true
L["A Binding Contract"] = true
L["Aaron Hollman"] = true
L["Aayndia Floralwind"] = true
L["Abigail Shiel"] = true
L["Abomination"] = true
L["Abyssal Flamebringer"] = true
L["Adele Fielder"] = true
L["Adelene Sunlance"] = true
L["Aendel Windspear"] = true
L["Aged Dalaran Wizard"] = true
L["Ainderu Summerleaf"] = true
L["Ainethil"] = true
L["Akham"] = true
L["Alanna Raveneye"] = true
L["Alard Schmied"] = true
L["Alchemist Gribble"] = true
L["Alchemist Mallory"] = true
L["Alchemist Pestlezugg"] = true
L["Aldraan"] = true
L["Alegorn"] = true
L["Aleinia"] = true
L["Alestos"] = true
L["Alestus"] = true
L["Alexandra Bolero"] = true
L["Alexandra McQueen"] = true
L["Alexis Marlowe"] = true
L["Algernon"] = true
L["Almaador"] = true
L["Altaa"] = true
L["Alurmi"] = true
L["Alys Vol'tyr"] = true
L["Amal'thazad"] = true
L["Amani'shi Beast Tamer"] = true
L["Amani'shi Flame Caster"] = true
L["Amani'shi Guardian"] = true
L["Amani'shi Handler"] = true
L["Amani'shi Protector"] = true
L["Amani'shi Scout"] = true
L["Amani'shi Tribesman"] = true
L["Amani'shi Warbringer"] = true
L["Amani'shi Wind Walker"] = true
L["Amin"] = true
L["Amy Davenport"] = true
L["Anchorite Ensham"] = true
L["Anchorite Fateema"] = true
L["Anchorite Paetheus"] = true
L["Anchorite Yazmina"] = true
L["Ancient Female Vrykul"] = true
L["Andre Firebeard"] = true
L["Andrew Hilbert"] = true
L["Andrion Darkspinner"] = true
L["Androd Fadran"] = true
L["Anger Guard"] = true
L["Angerclaw Grizzly"] = true
L["Anguished Dead"] = true
L["Anguished Highborne"] = true
L["Annora"] = true
L["Anub'ar Guardian"] = true
L["Anub'ar Prime Guard"] = true
L["Anub'ar Venomancer"] = true
L["Anvilrage Captain"] = true
L["Anvilrage Enforcer"] = true
L["Anvilrage Marshal"] = true
L["Apothecary Antonivich"] = true
L["Apothecary Bressa"] = true
L["Apothecary Helbrim"] = true
L["Apothecary Wormwick"] = true
L["Apprentice Darius"] = true
L["Apprentice's Duties"] = true
L["Arathel Sunforge"] = true
L["Arcane Anomaly"] = true
L["Arcane Protector"] = true
L["Arcanist Sheynathren"] = true
L["Arcatraz Sentinel"] = true
L["Archmage Alvareaux"] = true
L["Are We There, Yeti?"] = true
L["Aresella"] = true
L["Argent Quartermaster Hasana"] = true
L["Argent Quartermaster Lightspark"] = true
L["Argo Strongstout"] = true
L["Arikara"] = true
L["Arkkoran Oracle"] = true
L["Arnok"] = true
L["Arras"] = true
L["Arred"] = true
L["Arrond"] = true
L["Arthur Henslowe"] = true
L["Arthur Moore"] = true
L["Artificer Daelo"] = true
L["Asarnan"] = true
L["Ashmane Boar"] = true
L["Ashtongue Warrior"] = true
L["Aska Mistrunner"] = true
L["Atal'ai Deathwalker"] = true
L["Atal'ai Warrior"] = true
L["Atal'ai Witch Doctor"] = true
L["Auchenai Monk"] = true
L["Awan Iceborn"] = true
L["Awilo Lon'gomba"] = true
L["Badlands Reagent Run II"] = true
L["Balai Lok'Wein"] = true
L["Bale"] = true
L["Balgaras the Foul"] = true
L["Banalash"] = true
L["Banshee"] = true
L["Barbaric Battlements"] = true
L["Barbecued Buzzard Wings"] = true
L["Barim Spilthoof"] = true
L["Bash'ir Spell-Thief"] = true
L["Basil Frye"] = true
L["Baxter"] = true
L["Beer Basted Boar Ribs"] = true
L["Belil"] = true
L["Bemarrin"] = true
L["Bena Winterhoof"] = true
L["Bengus Deepforge"] = true
L["Benjamin Clegg"] = true
L["Bernadette Dexter"] = true
L["Betty Quin"] = true
L["Black Broodling"] = true
L["Black Dragonspawn"] = true
L["Blackened Ancient"] = true
L["Blackhand Elite"] = true
L["Blackrock Battlemaster"] = true
L["Blackrock Slayer"] = true
L["Blackrock Soldier"] = true
L["Blackrock Worg"] = true
L["Blacksmith Calypso"] = true
L["Bleeding Hollow Darkcaster"] = true
L["Blighted Proto-Drake"] = true
L["Blisterpaw Hyena"] = true
L["Blizrik Buckshot"] = true
L["Bliztik"] = true
L["Bloodaxe Raider"] = true
L["Bloodhound"] = true
L["Bloodmaul Dire Wolf"] = true
L["Bloodmaul Geomancer"] = true
L["Bloodsail Raider"] = true
L["Bloodwarder Legionnaire"] = true
L["Bloodwarder Vindicator"] = true
L["Bog Giant"] = true
L["Bonechewer Backbreaker"] = true
L["Bonechewer Devastator"] = true
L["Booker Kells"] = true
L["Borgosh Corebender"] = true
L["Borgus Steelhand"] = true
L["Borto"] = true
L["Borus Ironbender"] = true
L["Borya"] = true
L["Boulderfist Warrior"] = true
L["Bowen Brisboise"] = true
L["Bradley Towns"] = true
L["Braeg Stoutbeard"] = true
L["Brandig"] = true
L["Brawn"] = true
L["Brek Stonehoof"] = true
L["Brikk Keencraft"] = true
L["Brittle Revenant"] = true
L["Bro'kin"] = true
L["Brock Stoneseeker"] = true
L["Brom Brewbaster"] = true
L["Brom Killian"] = true
L["Bronk"] = true
L["Bronk Guzzlegear"] = true
L["Brumeran"] = true
L["Brumman"] = true
L["Brumn Winterhoof"] = true
L["Brunna Ironaxe"] = true
L["Brynna Wilson"] = true
L["Burbik Gearspanner"] = true
L["Burko"] = true
L["Burrowing Thundersnout"] = true
L["Buzzek Bracketswing"] = true
L["Byancie"] = true
L["Cabal Acolyte"] = true
L["Cabal Cultist"] = true
L["Cabal Fanatic"] = true
L["Cabal Spellbinder"] = true
L["Camberon"] = true
L["Captain Halyndor"] = true
L["Captain O'Neal"] = true
L["Captured Gnome"] = true
L["Carolai Anise"] = true
L["Carter Tiffens"] = true
L["Caryssia Moonhunter"] = true
L["Catarina Stanford"] = true
L["Catherine Leland"] = true
L["Cave Yeti"] = true
L["Celie Steelwing"] = true
L["Centipaar Sandreaver"] = true
L["Charles Worth"] = true
L["Charred Ancient"] = true
L["Chaw Stronghide"] = true
L["Chief Engineer Leveny"] = true
L["Chillwind Chimaera"] = true
L["Chillwind Ravager"] = true
L["Christoph Jeffcoat"] = true
L["Cielstrasza"] = true
L["Clarise Gnarltree"] = true
L["Cliff Breaker"] = true
L["Clintar Dreamwalker"] = true
L["Cloned Ooze"] = true
L["Cloud Serpent"] = true
L["Clyde Ranthal"] = true
L["Cobalt Broodling"] = true
L["Cobalt Mageweaver"] = true
L["Cobalt Scalebane"] = true
L["Cobalt Serpent"] = true
L["Cobalt Whelp"] = true
L["Cobalt Wyrmkin"] = true
L["Coilfang Champion"] = true
L["Coilfang Hate-Screamer"] = true
L["Coilfang Myrmidon"] = true
L["Coilfang Oracle"] = true
L["Coilfang Serpentguard"] = true
L["Coilfang Shatterer"] = true
L["Coilfang Siren"] = true
L["Coilfang Sorceress"] = true
L["Coilfang Technician"] = true
L["Coilskar Sea-Caller"] = true
L["Coilskar Siren"] = true
L["Cold Eye Basilisk"] = true
L["Commander Malgor"] = true
L["Commander Mulfort"] = true
L["Constance Brisboise"] = true
L["Cook Ghilm"] = true
L["Cookie One-Eye"] = true
L["Coreiel"] = true
L["Corporal Bluth"] = true
L["Corruption"] = true
L["Costly Menace"] = true
L["Crazed Ancient"] = true
L["Crazed Murkblood Foreman"] = true
L["Crazk Sparks"] = true
L["Crimson Inquisitor"] = true
L["Crimson Sorcerer"] = true
L["Cro Threadstrong"] = true
L["Crocolisk Hunting"] = true
L["Crog Steelspine"] = true
L["Crypt Crawler"] = true
L["Crypt Fiend"] = true
L["Crystal Boughman"] = true
L["Crystalcore Mechanic"] = true
L["Culinary Crunch"] = true
L["Cult Alchemist"] = true
L["Cultist Shard Watcher"] = true
L["Cyndra Kindwhisper"] = true
L["Daedal"] = true
L["Daga Ramba"] = true
L["Daggle Ironshaper"] = true
L["Dalinna"] = true
L["Dalria"] = true
L["Damned Apothecary"] = true
L["Dan Golthas"] = true
L["Dane Lindgren"] = true
L["Daniel Bartlett"] = true
L["Danielle Zipstitch"] = true
L["Dank Drizzlecut"] = true
L["Dannelor"] = true
L["Danwe"] = true
L["Darianna"] = true
L["Darin Goodstitch"] = true
L["Dark Adept"] = true
L["Dark Conclave Shadowmancer"] = true
L["Dark Iron Demolitionist"] = true
L["Dark Iron Dwarf"] = true
L["Dark Iron Saboteur"] = true
L["Dark Iron Slaver"] = true
L["Dark Iron Taskmaster"] = true
L["Dark Iron Tunneler"] = true
L["Dark Iron Watchman"] = true
L["Dark Screecher"] = true
L["Dark Strand Voidcaller"] = true
L["Darkspine Myrmidon"] = true
L["Darkspine Siren"] = true
L["Darkwater Crocolisk"] = true
L["Darmari"] = true
L["Darnall"] = true
L["Daryl Riknussun"] = true
L["Daryl Stack"] = true
L["Dawnblade Marksman"] = true
L["Deadwind Warlock"] = true
L["Deadwood Shaman"] = true
L["Dealer Malij"] = true
L["Deathforge Guardian"] = true
L["Deathforge Imp"] = true
L["Deathforge Smith"] = true
L["Deathforge Tinkerer"] = true
L["Deathlash Scorpid"] = true
L["Decaying Horror"] = true
L["Deek Fizzlebizz"] = true
L["Deep Stinger"] = true
L["Defias Enchanter"] = true
L["Defias Looter"] = true
L["Defias Pirate"] = true
L["Defias Profiteer"] = true
L["Defias Renegade Mage"] = true
L["Defias Squallshaper"] = true
L["Delfrum Flintbeard"] = true
L["Deneb Walker"] = true
L["Derak Nightfall"] = true
L["Derek Odds"] = true
L["Deriz"] = true
L["Deviate Eradication"] = true
L["Deynna"] = true
L["Diane Cannings"] = true
L["Didi the Wrench"] = true
L["Diemetradon"] = true
L["Dig Rat Stew"] = true
L["Dirge Quikcleave"] = true
L["Dirge's Kickin' Chimaerok Chops"] = true
L["Disembodied Protector"] = true
L["Disembodied Vindicator"] = true
L["Doba"] = true
L["Doctor Gregory Victor"] = true
L["Doctor Gustaf VanHowzen"] = true
L["Doctor Herbert Halsey"] = true
L["Doctor Marsh"] = true
L["Doctor Martin Felben"] = true
L["Dolothos"] = true
L["Don Carlos"] = true
L["Doomforge Craftsman"] = true
L["Doomforge Dragoon"] = true
L["Doomforge Engineer"] = true
L["Drac Roughcut"] = true
L["Dragonmaw Wind Reaver"] = true
L["Drake Lindgren"] = true
L["Drakk Stonehand"] = true
L["Drovnar Strongbrew"] = true
L["Drywallow Crocolisk"] = true
L["Drywallow Snapper"] = true
L["Duchess Mynx"] = true
L["Duhng"] = true
L["Dulvi"] = true
L["Durnholde Lookout"] = true
L["Durnholde Rifleman"] = true
L["Durnholde Sentry"] = true
L["Durnholde Tracking Hound"] = true
L["Dusky Crab Cakes"] = true
L["Dwukk"] = true
L["Easy Strider Living"] = true
L["Eclipsion Archmage"] = true
L["Eclipsion Blood Knight"] = true
L["Eclipsion Bloodwarder"] = true
L["Eclipsion Cavalier"] = true
L["Eclipsion Centurion"] = true
L["Eclipsion Dragonhawk"] = true
L["Eclipsion Soldier"] = true
L["Eclipsion Spellbinder"] = true
L["Edna Mullby"] = true
L["Edrem"] = true
L["Eebee Jinglepocket"] = true
L["Egomis"] = true
L["Eiin"] = true
L["Eldara Dawnrunner"] = true
L["Elder Diemetradon"] = true
L["Elder Mistvale Gorilla"] = true
L["Elder Shardtooth"] = true
L["Elder Stranglethorn Tiger"] = true
L["Eldrin"] = true
L["Elise Brightletter"] = true
L["Elixir of Pain"] = true
L["Elizabeth Jackson"] = true
L["Elynna"] = true
L["Emil Autumn"] = true
L["Emrul Riknussun"] = true
L["Enchanted Thorium Platemail: Volume I"] = true
L["Enchanted Thorium Platemail: Volume II"] = true
L["Enchanted Thorium Platemail: Volume III"] = true
L["Enchanter Aeldron"] = true
L["Enchanter Nalthanis"] = true
L["Enchanter Salias"] = true
L["Enchantress Metura"] = true
L["Enchantress Volali"] = true
L["Enraged Crusher"] = true
L["Enraged Mammoth"] = true
L["Enslaved Proto-Drake"] = true
L["Eorain Dawnstrike"] = true
L["Eredar Deathbringer"] = true
L["Eriden"] = true
L["Erika Tate"] = true
L["Erilia"] = true
L["Erin Kelly"] = true
L["Ethereal Priest"] = true
L["Ethereal Spellbinder"] = true
L["Ethereal Thief"] = true
L["Ethereum Nullifier"] = true
L["Ethereum Smuggler"] = true
L["Eunice Burch"] = true
L["Faldron"] = true
L["Falorn Nightwhisper"] = true
L["Fariel Starsong"] = true
L["Farii"] = true
L["Fazu"] = true
L["Fedryen Swiftspear"] = true
L["Feera"] = true
L["Fel Orc Convert"] = true
L["Fel Rager"] = true
L["Fel Stalker"] = true
L["Felannia"] = true
L["Felguard Annihilator"] = true
L["Felicia Doan"] = true
L["Felika"] = true
L["Felpaw Ravager"] = true
L["Felpaw Wolf"] = true
L["Fendrig Redbeard"] = true
L["Fera Palerunner"] = true
L["Ferocious Yeti"] = true
L["Feruul"] = true
L["Festive Recipes"] = true
L["Feyden Darkin"] = true
L["Fiery Plate Gauntlets"] = true
L["Fimble Finespindle"] = true
L["Finbus Geargrind"] = true
L["Firebrand Grunt"] = true
L["Firebrand Invoker"] = true
L["Firebrand Legionnaire"] = true
L["Firebrand Pyromancer"] = true
L["Firegut Brute"] = true
L["Flash Bomb Recipe"] = true
L["Fledgling Chillwind"] = true
L["Fleshbeast"] = true
L["Foreman Marcrid"] = true
L["Forgotten One"] = true
L["Fradd Swiftgear"] = true
L["Franklin Lloyd"] = true
L["Fremal Doohickey"] = true
L["Frenzied Pterrordax"] = true
L["Frost Wyrm"] = true
L["Frostbrood Spawn"] = true
L["Frostfeather Screecher"] = true
L["Frostfeather Witch"] = true
L["Frostmaul Giant"] = true
L["Furywing"] = true
L["Fyldan"] = true
L["Gagsprocket"] = true
L["Galana"] = true
L["Gambarinka"] = true
L["Gara Skullcrush"] = true
L["Gargantuan Abyssal"] = true
L["Gargoyle"] = true
L["Gaston"] = true
L["Gazlowe"] = true
L["Gearcutter Cogspinner"] = true
L["Gearing Redridge"] = true
L["Geba'li"] = true
L["Geen"] = true
L["Gelanthis"] = true
L["Gelman Stonehand"] = true
L["Geofram Bouldertoe"] = true
L["George Candarte"] = true
L["Georgio Bolero"] = true
L["Ghak Healtouch"] = true
L["Gharash"] = true
L["Ghermas"] = true
L["Ghostly Steward"] = true
L["Ghoul"] = true
L["Giant Infernal"] = true
L["Gidge Spellweaver"] = true
L["Gikkix"] = true
L["Gimble Thistlefuzz"] = true
L["Gina MacGregor"] = true
L["Glasshide Basilisk"] = true
L["Glasshide Gazer"] = true
L["Gloresse"] = true
L["Gloria Femmel"] = true
L["Glutinous Ooze"] = true
L["Glyx Brewright"] = true
L["Gnaz Blunderflame"] = true
L["Godan"] = true
L["Goli Krumn"] = true
L["Gordunni Back-Breaker"] = true
L["Gordunni Elementalist"] = true
L["Gordunni Head-Splitter"] = true
L["Gordunni Soulreaper"] = true
L["Goretusk"] = true
L["Goretusk Liver Pie"] = true
L["Gorgolon the All-seeing"] = true
L["Gorishi Reaver"] = true
L["Graham Van Talen"] = true
L["Grand Crusader Dathrohan"] = true
L["Grarnik Goodstitch"] = true
L["Great Goretusk"] = true
L["Great-father Winter"] = true
L["Great-father Winter's Helper"] = true
L["Greater Bogstrok"] = true
L["Greater Fleshbeast"] = true
L["Greatfather Winter"] = true
L["Gremlock Pilsnor"] = true
L["Gretta Finespindle"] = true
L["Gretta Ganter"] = true
L["Grikka"] = true
L["Grimtak"] = true
L["Grimtotem Geomancer"] = true
L["Grondal Moonbreeze"] = true
L["Groum Stonebeard"] = true
L["Grumbol Stoutpick"] = true
L["Grumnus Steelshaper"] = true
L["Grutah"] = true
L["Guillaume Sorouy"] = true
L["Gundrak Savage"] = true
L["Gunter Hansen"] = true
L["Haalrun"] = true
L["Haferet"] = true
L["Hagrus"] = true
L["Hahrana Ironhide"] = true
L["Hama"] = true
L["Hamanar"] = true
L["Hammered Patron"] = true
L["Hammon Karwn"] = true
L["Harklan Moongrove"] = true
L["Harlown Darkweave"] = true
L["Harn Longcast"] = true
L["Hatefury Shadowstalker"] = true
L["Haughty Modiste"] = true
L["Hch'uu"] = true
L["Helboar"] = true
L["Heldan Galesong"] = true
L["Helenia Olden"] = true
L["Hgarth"] = true
L["High Enchanter Bardolan"] = true
L["Highlord Darion Mograine"] = true
L["Hillsbrad Tailor"] = true
L["Himmik"] = true
L["Homunculus"] = true
L["Horns of Frenzy"] = true
L["Hotoppik Copperpinch"] = true
L["Hulking Mountain Lion"] = true
L["Humphry"] = true
L["Hurnak Grimmord"] = true
L["Ice Thistle Matriarch"] = true
L["Ice Thistle Patriarch"] = true
L["Ice Thistle Yeti"] = true
L["Icemane Yeti"] = true
L["Ildine Sorrowspear"] = true
L["Illidari Defiler"] = true
L["Illidari Shocktrooper"] = true
L["Illidari Watcher"] = true
L["Imperial Plate Belt"] = true
L["Imperial Plate Boots"] = true
L["Imperial Plate Bracer"] = true
L["Imperial Plate Chest"] = true
L["Imperial Plate Helm"] = true
L["Imperial Plate Leggings"] = true
L["Imperial Plate Shoulders"] = true
L["Incandescent Fel Spark"] = true
L["Incendosaur"] = true
L["Indormi"] = true
L["Innkeeper Biribi"] = true
L["Innkeeper Fizzgrimble"] = true
L["Innkeeper Grilka"] = true
L["Innkeeper Gryshka"] = true
L["Insidion"] = true
L["Iron Rune-Shaper"] = true
L["Ironbark Protector"] = true
L["Ironus Coldsteel"] = true
L["Ironwool Mammoth"] = true
L["Jabbey"] = true
L["Jack Trapper"] = true
L["Jadefire Felsworn"] = true
L["Jadefire Rogue"] = true
L["Jaedenar Warlock"] = true
L["Jalane Ayrole"] = true
L["James Van Brunt"] = true
L["Jamesina Watterly"] = true
L["Jandia"] = true
L["Janet Hommers"] = true
L["Jangdor Swiftstrider"] = true
L["Jannos Ironwill"] = true
L["Jaquilina Dramet"] = true
L["Jase Farlane"] = true
L["Jaxin Chong"] = true
L["Jazdalaad"] = true
L["Jazzrik"] = true
L["Jedidiah Handers"] = true
L["Jeeda"] = true
L["Jemma Quikswitch"] = true
L["Jenna Lemkenilli"] = true
L["Jennabink Powerseam"] = true
L["Jessara Cordell"] = true
L["Jhag"] = true
L["Jim Saltit"] = true
L["Jo'mah"] = true
L["Johan Barnes"] = true
L["Johan Focht"] = true
L["Jonathan Garrett"] = true
L["Jonathan Lewis"] = true
L["Jormund Stonebrow"] = true
L["Josef Gregorian"] = true
L["Joseph Moore"] = true
L["Josephine Lister"] = true
L["Josric Fame"] = true
L["Joys of Omosh"] = true
L["Jubie Gadgetspring"] = true
L["Juno Dufrain"] = true
L["Justin Oshenko"] = true
L["Jutak"] = true
L["K. Lee Smallfry"] = true
L["Kaita Deepforge"] = true
L["Kalaen"] = true
L["Kalinda"] = true
L["Kalldan Felmoon"] = true
L["Kamari"] = true
L["Kanaria"] = true
L["Kania"] = true
L["Karaaz"] = true
L["Karn Stonehoof"] = true
L["Karolek"] = true
L["Katherine Lee"] = true
L["Kayaart"] = true
L["Keelen Sheets"] = true
L["Keena"] = true
L["Kelgruk Bloodaxe"] = true
L["Kelsey Yance"] = true
L["Kendor Kabonka"] = true
L["Khara Deepwater"] = true
L["Khole Jinglepocket"] = true
L["Kiknikle"] = true
L["Kil'hala"] = true
L["Killian Sanatha"] = true
L["Kilxx"] = true
L["Kireena"] = true
L["Kithas"] = true
L["Kitta Firewind"] = true
L["Klaven's Tower"] = true
L["Knaz Blunderflame"] = true
L["Knight Dameron"] = true
L["Kodo Hide Bag"] = true
L["Kor'geld"] = true
L["Koren"] = true
L["Kradu Grimblade"] = true
L["Kray"] = true
L["Krek Cragcrush"] = true
L["Kriggon Talsone"] = true
L["Kristen Smythe"] = true
L["Krugosh"] = true
L["Krulmoo Fullmoon"] = true
L["Krunn"] = true
L["Kudrii"] = true
L["Kulwia"] = true
L["Kurdram Stonehammer"] = true
L["Kurzen Commando"] = true
L["Kylanna"] = true
L["Kylanna Windwhisper"] = true
L["Kylene"] = true
L["Kzixx"] = true
L["Lady Alistra"] = true
L["Lady Palanseer"] = true
L["Laird"] = true
L["Lalina Summermoon"] = true
L["Lalla Brightweave"] = true
L["Landraelanis"] = true
L["Lanolis Dewdrop"] = true
L["Lardan"] = true
L["Lavinia Crowe"] = true
L["Lawrence Schneider"] = true
L["Lebowski"] = true
L["Leeli Longhaggle"] = true
L["Legashi Rogue"] = true
L["Leo Sarn"] = true
L["Leonard Porter"] = true
L["Lesser Infernal"] = true
L["Librarian Erickson"] = true
L["Lieutenant General Andorov"] = true
L["Lieutenant Mancuso"] = true
L["Lillehoff"] = true
L["Lilliam Sparkspindle"] = true
L["Lilly"] = true
L["Lilyssia Nightbreeze"] = true
L["Lindea Rabonne"] = true
L["Linna Bruder"] = true
L["Linzy Blackbolt"] = true
L["Liquid Stone"] = true
L["Lizbeth Cromwell"] = true
L["Logannas"] = true
L["Logistics Officer Brighton"] = true
L["Logistics Officer Silverstone"] = true
L["Logistics Officer Ulrike"] = true
L["Lokhtos Darkbargainer"] = true
L["Loolruna"] = true
L["Lord Thorval"] = true
L["Lorelae Wintersong"] = true
L["Lorokeem"] = true
L["Lucan Cordell"] = true
L["Lucc"] = true
L["Lyna"] = true
L["Lynalis"] = true
L["Mack Diver"] = true
L["Madame Ruby"] = true
L["Magar"] = true
L["Mageslayer"] = true
L["Magical Horror"] = true
L["Magistrix Eredania"] = true
L["Magnus Frostwake"] = true
L["Mahani"] = true
L["Mahu"] = true
L["Mak"] = true
L["Makaru"] = true
L["Malcomb Wynn"] = true
L["Mallen Swain"] = true
L["Malygen"] = true
L["Mana Warp"] = true
L["Manaclaw"] = true
L["Margaux Parchley"] = true
L["Mari Stonehand"] = true
L["Maria Lumere"] = true
L["Martine Tramblay"] = true
L["Mary Edras"] = true
L["Masat T'andr"] = true
L["Master Chef Mouldier"] = true
L["Master Craftsman Omarion"] = true
L["Master Elemental Shaper Krixix"] = true
L["Master of the Wild Leather"] = true
L["Mathar G'ochar"] = true
L["Matt Johnson"] = true
L["Mavralyn"] = true
L["Mazk Snipeshot"] = true
L["Me'lynn"] = true
L["Meilosh"] = true
L["Melaris"] = true
L["Miall"] = true
L["Miao'zan"] = true
L["Micha Yance"] = true
L["Michael Schwan"] = true
L["Michelle Belle"] = true
L["Mildred Fletcher"] = true
L["Milla Fairancora"] = true
L["Millie Gregorian"] = true
L["Mindri Dinkles"] = true
L["Mire Lord"] = true
L["Mirvedon"] = true
L["Misensi"] = true
L["Mishta"] = true
L["Mission: Possible But Not Probable"] = true
L["Mixie Farshot"] = true
L["Mo'arg Incinerator"] = true
L["Mo'arg Weaponsmith"] = true
L["Modoru"] = true
L["Mok'Nathal Treats"] = true
L["Montarr"] = true
L["Moonglow Vest"] = true
L["Moonrage Tailor"] = true
L["Moordo"] = true
L["Morgan Day"] = true
L["Mossflayer Shadowhunter"] = true
L["Mot Dawnstrider"] = true
L["Muaat"] = true
L["Muculent Ooze"] = true
L["Mudduk"] = true
L["Muheru the Weaver"] = true
L["Mukdrak"] = true
L["Mumman"] = true
L["Murk Spitter"] = true
L["Murk Worm"] = true
L["Murkblood Putrifier"] = true
L["Murkblood Raider"] = true
L["Mutant Horror"] = true
L["Muuran"] = true
L["Mycah"] = true
L["Mythrin'dir"] = true
L["Naal Mistrunner"] = true
L["Nadyia Maneweaver"] = true
L["Nahogg"] = true
L["Naka"] = true
L["Nakodu"] = true
L["Nandar Branson"] = true
L["Nardstrum Copperpinch"] = true
L["Narj Deepslice"] = true
L["Narv Hidecrafter"] = true
L["Nascent Val'kyr"] = true
L["Nasmara Moonsong"] = true
L["Nata Dawnstrider"] = true
L["Neal Allen"] = true
L["Neferatti"] = true
L["Neii"] = true
L["Nergal"] = true
L["Nerrist"] = true
L["Nessa Shadowsong"] = true
L["Nethergarde Engineer"] = true
L["Nexus Stalker"] = true
L["Nightmare Scalebane"] = true
L["Nimar the Slayer"] = true
L["Nina Lightbrew"] = true
L["Niobe Whizzlespark"] = true
L["Nioma"] = true
L["Nissa Firestone"] = true
L["Nixx Sprocketspring"] = true
L["Nogg"] = true
L["Nula the Butcher"] = true
L["Nurse Applewood"] = true
L["Nurse Neela"] = true
L["Nus"] = true
L["Nyoma"] = true
L["Obsidia"] = true
L["Ockil"] = true
L["Ogg'marr"] = true
L["Oglethorpe Obnoticus"] = true
L["Okothos Ironrager"] = true
L["Okuno"] = true
L["Olisarra the Kind"] = true
L["On Iron Pauldrons"] = true
L["Onslaught Bloodhound"] = true
L["Onslaught Mason"] = true
L["Ontuvo"] = true
L["Onyxian Warder"] = true
L["Ormer's Revenge"] = true
L["Orn Tenderhoof"] = true
L["Otho Moji'ko"] = true
L["Ounhulo"] = true
L["Outfitter Eric"] = true
L["Padaar"] = true
L["Pand Stonebinder"] = true
L["Paulsta'ats"] = true
L["Penney Copperpinch"] = true
L["Peter Galen"] = true
L["Phantom Attendant"] = true
L["Phantom Guardsman"] = true
L["Phantom Guest"] = true
L["Phantom Stagehand"] = true
L["Phantom Valet"] = true
L["Phea"] = true
L["Phoenix-Hawk"] = true
L["Phoenix-Hawk Hatchling"] = true
L["Pikkle"] = true
L["Plains Mammoth"] = true
L["Poshken Hardbinder"] = true
L["Pratt McGrubben"] = true
L["Primal Ooze"] = true
L["Primordial Drake"] = true
L["Professor Pallin"] = true
L["Prospector Nachlan"] = true
L["Provisioner Lorkran"] = true
L["Pterrordax"] = true
L["Pyall Silentstride"] = true
L["Pyrewood Tailor"] = true
L["Qia"] = true
L["Quarelestra"] = true
L["Quartermaster Davian Vaclav"] = true
L["Quartermaster Endarin"] = true
L["Quartermaster Enuril"] = true
L["Quartermaster Jaffrey Noreliqe"] = true
L["Quartermaster Miranda Breechlock"] = true
L["Quartermaster Urgronn"] = true
L["Quelis"] = true
L["Rabid Shardtooth"] = true
L["Rabid Warhound"] = true
L["Raenah"] = true
L["Rage Talon Dragon Guard"] = true
L["Raging Skeleton"] = true
L["Randal Worth"] = true
L["Ranik"] = true
L["Rann Flamespinner"] = true
L["Rathis Tomber"] = true
L["Ravaged Cadaver"] = true
L["Rawrk"] = true
L["Razia"] = true
L["Recipe of the Kaldorei"] = true
L["Redridge Goulash"] = true
L["Redstone Basilisk"] = true
L["Refik"] = true
L["Rhiannon Davis"] = true
L["Rhonsus"] = true
L["Ribbly's Crony"] = true
L["Rift Keeper"] = true
L["Rift Lord"] = true
L["Rikqiz"] = true
L["Rin'wosho the Trader"] = true
L["Risen Bonewarder"] = true
L["Risen Construct"] = true
L["Risen Drakkari Death Knight"] = true
L["Rivendark"] = true
L["Rogue Ice Thistle"] = true
L["Rogvar"] = true
L["Rohok"] = true
L["Rollick MacKreel"] = true
L["Ronald Burch"] = true
L["Rosemary Bovard"] = true
L["Rosina Rivet"] = true
L["Rotgath Stonebeard"] = true
L["Rotting Behemoth"] = true
L["Roxxik"] = true
L["Rungor"] = true
L["Sable Jaguar"] = true
L["Saenorion"] = true
L["Sairuk"] = true
L["Sally Tompkins"] = true
L["Saltstone Basilisk"] = true
L["Sandfury Blood Drinker"] = true
L["Sandfury Shadowcaster"] = true
L["Sarah Tanner"] = true
L["Saru Steelfury"] = true
L["Sassa Weldwell"] = true
L["Sathein"] = true
L["Savage Worg"] = true
L["Scargil"] = true
L["Scarlet Adept"] = true
L["Scarlet Archmage"] = true
L["Scarlet Cavalier"] = true
L["Scarlet Centurion"] = true
L["Scarlet Defender"] = true
L["Scarlet Gallant"] = true
L["Scarlet Monk"] = true
L["Scarlet Myrmidon"] = true
L["Scarlet Protector"] = true
L["Scarlet Smith"] = true
L["Scarlet Spellbinder"] = true
L["Scarlet Tracking Hound"] = true
L["Scarlet Warder"] = true
L["Scholomance Adept"] = true
L["Scholomance Necromancer"] = true
L["Sock Brightbolt"] = true
L["Scorpid Hunter"] = true
L["Scorpid Tail Lasher"] = true
L["Se'Jib"] = true
L["Seasoned Wolf Kabobs"] = true
L["Sebastian Crane"] = true
L["Sedana"] = true
L["Seer Janidi"] = true
L["Seersa Copperpinch"] = true
L["Sellandus"] = true
L["Selling Fish"] = true
L["Sempstress Ambershine"] = true
L["Serge Hinott"] = true
L["Serpentshrine Sporebat"] = true
L["Sethekk Prophet"] = true
L["Sethekk Ravenguard"] = true
L["Sewa Mistrunner"] = true
L["Shaani"] = true
L["Shadi Mistrunner"] = true
L["Shadow Council Warlock"] = true
L["Shadow Pillager"] = true
L["Shadowforge Peasant"] = true
L["Shadowmage"] = true
L["Shadowmoon Reaver"] = true
L["Shadowsworn Thug"] = true
L["Shadowy Necromancer"] = true
L["Shaina Fuller"] = true
L["Shandrina"] = true
L["Shankys"] = true
L["Shardtooth Bear"] = true
L["Shardtooth Mauler"] = true
L["Shattered Hand Centurion"] = true
L["Shattered Hand Champion"] = true
L["Shattertusk Bull"] = true
L["Shattertusk Mammoth"] = true
L["Shayis Steelfury"] = true
L["Sheendra Tallgrass"] = true
L["Shelene Rhobart"] = true
L["Shen'dralar Provisioner"] = true
L["Sheri Zipstitch"] = true
L["Shrike Bat"] = true
L["Sid Limbardi"] = true
L["Silvermane Stalker"] = true
L["Simon Tanner"] = true
L["Simon Unit"] = true
L["Sister of Torment"] = true
L["Skeletal Flayer"] = true
L["Skeletal Runesmith"] = true
L["Skettis Soulcaller"] = true
L["Skreah"] = true
L["Skullsplitter Mystic"] = true
L["Slagg"] = true
L["Slave Worker"] = true
L["Slavering Ghoul"] = true
L["Smelt On, Smelt Off"] = true
L["Smith Argus"] = true
L["Smooth as Butter"] = true
L["Smudge Thunderwood"] = true
L["Snakestone of the Shadow Huntress"] = true
L["Snang"] = true
L["Snarl"] = true
L["Son of Arkkoroc"] = true
L["Soolie Berryfizz"] = true
L["Soothing Turtle Bisque"] = true
L["Soran"] = true
L["Sorcerous Shade"] = true
L["Southsea Pirate"] = true
L["Sovik"] = true
L["Sparkleshell Snapper"] = true
L["Spawn of Hakkar"] = true
L["Spectral Apprentice"] = true
L["Spectral Charger"] = true
L["Spectral Chef"] = true
L["Spectral Researcher"] = true
L["Spectral Servant"] = true
L["Spectral Stable Hand"] = true
L["Spectral Stallion"] = true
L["Spell Eater"] = true
L["Spell Shade"] = true
L["Spellmaw"] = true
L["Spirestone Warlord"] = true
L["Splinterbone Centurion"] = true
L["Springspindle Fizzlegear"] = true
L["Sprite Jumpsprocket"] = true
L["Starving Blisterpaw"] = true
L["Stephen Ryback"] = true
L["Stoic Mammoth"] = true
L["Stone Guard Mukar"] = true
L["Stonevault Oracle"] = true
L["Stonevault Pillager"] = true
L["Storm Fury"] = true
L["Stormforged Ambusher"] = true
L["Stormforged Artificer"] = true
L["Stormforged Champion"] = true
L["Stormforged Giant"] = true
L["Stormforged Infiltrator"] = true
L["Strashaz Myrmidon"] = true
L["Strashaz Warrior"] = true
L["Stuart Fleming"] = true
L["Subterranean Diemetradon"] = true
L["Sunfury Arcanist"] = true
L["Sunfury Arch Mage"] = true
L["Sunfury Archer"] = true
L["Sunfury Bloodwarder"] = true
L["Sunfury Bowman"] = true
L["Sunfury Researcher"] = true
L["Sunscale Scytheclaw"] = true
L["Sunseeker Astromage"] = true
L["Sunseeker Botanist"] = true
L["Sunseeker Harvester"] = true
L["Super-Seller 680"] = true
L["Supply Officer Mills"] = true
L["Supplying the Front"] = true
L["Swampwalker"] = true
L["Swampwalker Elder"] = true
L["Sweet Serenity"] = true
L["Sylann"] = true
L["Sylvanna Forestmoon"] = true
L["Syndicate Assassin"] = true
L["Syndicate Mercenary"] = true
L["Syndicate Pathstalker"] = true
L["Syndicate Spy"] = true
L["Syphoner"] = true
L["Taladan"] = true
L["Tally Berryfizz"] = true
L["Talmar"] = true
L["Tamar"] = true
L["Tanaika"] = true
L["Tanak"] = true
L["Tangled Horror"] = true
L["Tansy Puddlefizz"] = true
L["Tar Lurker"] = true
L["Tarban Hearthgrain"] = true
L["Tari'qa"] = true
L["Tarn"] = true
L["Tatiana"] = true
L["Teg Dawnstrider"] = true
L["Tel'Athir"] = true
L["Telonis"] = true
L["Tempered War Golem"] = true
L["Tepa"] = true
L["Terrormaster"] = true
L["Thaddeus Webb"] = true
L["Thamner Pol"] = true
L["Tharynn Bouden"] = true
L["Thaurissan Firewalker"] = true
L["The Art of the Imbue"] = true
L["The Demon Forge"] = true
L["The Gordok Ogre Suit"] = true
L["The Great Moongraze Hunt"] = true
L["The Great Silver Deceiver"] = true
L["The Journey Has Just Begun"] = true
L["The Old Ways"] = true
L["The Origins of Smithing"] = true
L["The Rescue"] = true
L["The Spectral Chalice"] = true
L["The Undermarket"] = true
L["The Zapthrottle Mote Extractor!"] = true
L["Thelsamar Blood Sausages"] = true
L["Theramore Infiltrator"] = true
L["Theramore Marine"] = true
L["Theramore Preserver"] = true
L["Therum Deepforge"] = true
L["Thomas Kolichio"] = true
L["Thomas Yance"] = true
L["Thonys Pillarstone"] = true
L["Thorkaf Dragoneye"] = true
L["Thoth"] = true
L["Thrag Stonehoof"] = true
L["Thund"] = true
L["Thuzadin Shadowcaster"] = true
L["Tiffany Cartier"] = true
L["Tilli Thistlefuzz"] = true
L["Timber Worg Alpha"] = true
L["Time-Lost Shadowmage"] = true
L["Timothy Jones"] = true
L["Timothy Worthington"] = true
L["Tink Brightbolt"] = true
L["Tinkerwiz"] = true
L["Tinkmaster Overspark"] = true
L["Tisha Longbridge"] = true
L["Tognus Flintfire"] = true
L["Tomas"] = true
L["Torloth the Magnificent"] = true
L["Torn Fin Coastrunner"] = true
L["Torn Fin Muckdweller"] = true
L["Torn Fin Oracle"] = true
L["Torn Fin Tidehunter"] = true
L["Trader Narasu"] = true
L["Trampled Under Foot"] = true
L["Traugh"] = true
L["Triage"] = true
L["Trianna"] = true
L["Trixie Quikswitch"] = true
L["True Believers"] = true
L["Truk Wildbeard"] = true
L["Tunkk"] = true
L["Twilight Dark Shaman"] = true
L["Twilight Emissary"] = true
L["Twilight Fire Guard"] = true
L["Twilight Geomancer"] = true
L["Ug'thok"] = true
L["Ulthaan"] = true
L["Ulthir"] = true
L["Un'Goro Stomper"] = true
L["Una"] = true
L["Unchained Doombringer"] = true
L["Underbat"] = true
L["Unliving Atal'ai"] = true
L["Uriku"] = true
L["Ursius"] = true
L["Uthok"] = true
L["Uthrar Threx"] = true
L["Vaean"] = true
L["Valdaron"] = true
L["Vance Undergloom"] = true
L["Vanessa Sellers"] = true
L["Vargus"] = true
L["Vazario Linkgrease"] = true
L["Veenix"] = true
L["Vekh'nir Dreadhawk"] = true
L["Vendor-Tron 1000"] = true
L["Venture Co. Excavator"] = true
L["Venture Co. Strip Miner"] = true
L["Veteran Crusader Aliocha Segard"] = true
L["Vhan"] = true
L["Victor Ward"] = true
L["Viggz Shinesparked"] = true
L["Vilebranch Hideskinner"] = true
L["Vilebranch Raiding Wolf"] = true
L["Vir'aani Arcanist"] = true
L["Vira Younghoof"] = true
L["Vivianna"] = true
L["Vix Chromeblaster"] = true
L["Vizzklick"] = true
L["Vodesiin"] = true
L["Voidshrieker"] = true
L["Voidwalker Minion"] = true
L["Volchan"] = true
L["Vosur Brakthel"] = true
L["Waldor"] = true
L["Warmaul Shaman"] = true
L["Warped Peon"] = true
L["Wastewander Assassin"] = true
L["Wastewander Bandit"] = true
L["Wastewander Rogue"] = true
L["Wastewander Scofflaw"] = true
L["Wastewander Shadow Mage"] = true
L["Wastewander Thief"] = true
L["Weapon Technician"] = true
L["Wenna Silkbeard"] = true
L["Werg Thickblade"] = true
L["Westfall Stew"] = true
L["Whuut"] = true
L["Wik'Tar"] = true
L["Wild Hearts"] = true
L["Wild Leather Boots"] = true
L["Wild Leather Helmet"] = true
L["Wild Leather Leggings"] = true
L["Wild Leather Shoulders"] = true
L["Wild Leather Vest"] = true
L["Wilhelmina Renel"] = true
L["Wind Trader Lathrai"] = true
L["Winter Reveler"] = true
L["Winterfall Den Watcher"] = true
L["Winterfall Totemic"] = true
L["Winterfall Ursa"] = true
L["Witherbark Axe Thrower"] = true
L["Witherbark Berserker"] = true
L["Witherbark Headhunter"] = true
L["Witherbark Shadow Hunter"] = true
L["Withered Ancient"] = true
L["Wolgren Jinglepocket"] = true
L["Wrahk"] = true
L["Wrath Hammer Construct"] = true
L["Wrathwalker"] = true
L["Wretched Devourer"] = true
L["Wretched Fiend"] = true
L["Wulan"] = true
L["Wulmort Jinglepocket"] = true
L["Wunna Darkmane"] = true
L["Xandar Goodbeard"] = true
L["Xen'to"] = true
L["Xerintha Ravenoak"] = true
L["Xizk Goodstitch"] = true
L["Xizzer Fizzbolt"] = true
L["Xylinnia Starshine"] = true
L["Xyrol"] = true
L["Yarr Hammerstone"] = true
L["Yatheon"] = true
L["Yelmak"] = true
L["Yonada"] = true
L["Young Black Ravager"] = true
L["Young Diemetradon"] = true
L["Ythyar"] = true
L["Yuka Screwspigot"] = true
L["Yurial Soulwater"] = true
L["Zamja"] = true
L["Zan Shivsproket"] = true
L["Zannok Hidepiercer"] = true
L["Zansoa"] = true
L["Zantasia"] = true
L["Zanzil Zombie"] = true
L["Zaralda"] = true
L["Zarena Cromwind"] = true
L["Zargh"] = true
L["Zarrin"] = true
L["Zebig"] = true
L["Zixil"] = true
L["Zorbin Fandazzle"] = true
L["Zula Slagfury"] = true
L["Zulian Tiger"] = true
L["Zurai"] = true
L["\"Cookie\" McWeaksauce"] = true
L["Krinkle Goodsteel"] = true
L["A Good Head On Your Shoulders"] = true
L["The World At Your Feet"] = true
L["The Mithril Kid"] = true
L["Strashaz Serpent Guard"] = true
L["Enraged Earth Spirit"] = true
L["Enraged Water Spirit"] = true
L["Enraged Air Spirit"] = true
L["Enraged Fire Spirit"] = true
L["Namdo Bizzfizzle"] = true
L["Rizz Loosebolt"] = true
L["Ruppo Zipcoil"] = true
L["Jinky Twizzlefixxit"] = true
L["Harggan"] = true
L["Findle Whistlesteam"] = true
L["Narkk"] = true
L["Jun'ha"] = true
L["Brienna Starglow"] = true
L["Cowardly Crosby"] = true
L["Sacred Cloth"] = true
L["Vengeful Ancient"] = true
L["Molt Thorn"] = true
L["Fletcher's Lost and Found"] = true
L["Gigget Zipcoil"] = true
L["Blimo Gadgetspring"] = true
L["Hula'mahi"] = true
L["Bombus Finespindle"] = true
L["Rartar"] = true
L["Bryan Landers"] = true
L["Prospector Khazgorm"] = true
L["Northern Cooking"] = true
L["Clamlette Surprise"] = true
L["DATAMINER_SKILLELVEL"] = [[Recipe level different!
    Name: %s
	ARL Level: %s
	Trainer Level: %s]]
L["DATAMINER_SKILLLEVEL_ERROR"] = "This can only be used for a trade skill trainer.  Please open up the trainer and try again."
L["DATAMINER_TRAINER_NOTTARGETTED"] = "You must target the trainer when you run this command."
L["DATAMINER_VENDOR_NOTTARGETTED"] = "You must target the vendor when you run this command."
L["DATAMINER_TRAINER_INFO"] = [[Trainer Name: %s
Trainer ID: %s]]
L["DATAMINER_TRAINER_TEACH"] = "%s (%s) - Missing"
L["DATAMINER_TRAINER_NOTTEACH"] = "%s (%s) - Extra"
L["Auto Scan Trainers"] = true
L["Datamine Options"] = true
L["DATAMINE_OPTIONS_DESC"] = "Allows you to customize in-game ARL datamining."
L["AUTOSCAN_TRAINERS_DESC"] = "Turns on scanning at trainers to compare skill levels, and recipe acquire methods."
L["Generate Tradeskill Links"] = true
L["GENERATE_LINKS_DESC"] = "Generate complete profession links."
L["Compare Trainer Skills"] = true
L["COMPARE_TRAINER_SKILL_DESC"] = "Compare skill levels of selected trainer with those in ARL database."
L["Compare Trainer Acquire"] = true
L["COMPARE_TRAINER_ACQUIRE_DESC"] = "Compare selected trainer acquire methods with those in the ARL database."
L["DATAMINER_NODB_ERROR"] = "Recipe database not loaded.  Please scan the tradeskill first then try the datamining."
L["Dustin Vail"] = true
L["Kul'de"] = true
L["Fael Morningsong"] = true
L["Binkie Brightgear"] = true
L["Bethany Cromwell"] = true
L["Crystal Brightspark"] = true
L["Joseph Wilson"] = true
L["Oluros"] = true
L["Rekka the Hammer"] = true
L["Arthur Denny"] = true
L["Desert Recipe"] = true
L["Manfred Staller"] = true
L["Andellion"] = true
L["Namha Moonwater"] = true
L["Custom41"] = "Removed from the game when Naxx 40 was taken out."
L["AUTOLOAD_DB_DESC"] = "Automatically loads all of the ARL recipe databases when doing a datamining scan."
L["Auto Load Recipe Database"] = true
L["Orland Schaeffer"] = true
L["Imindril Spearsong"] = true
L["First Aid Trainer"] = true
L["Enchanting Trainer"] = true
L["Alt-Tradeskills"] = true
L["ORIGINAL_WOW_DESC"] = "entries available with the original game."
L["BC_WOW_DESC"] = "entries available with the Burning Crusade."
L["LK_WOW_DESC"] = "entries available with the Wrath of the Lich King."
L["Lich King"] = true
L["Silverbrook Trapper"] = true
L["Silverbrook Villager"] = true
L["Silverbrook Hunter"] = true
L["Silverbrook Defender"] = true
L["ALT_TRADESKILL_DESC"] = "This will display a list of alts which have had trade skills scanned.  Clicking on the alt's name will output the tradeskill to chat."
L["Other Realms"] = true
L["DATAMINE_WARNING_DESC"] = "Please note that enabling Auto Load Recipe Database will increase the amount of memory used by ARL.  Enabling Auto Scan Trainers may cause a slight bit of lag when the trainer is opened.  This will be more noticeable on the first scan of a trainer."
L["Anuur"] = true
