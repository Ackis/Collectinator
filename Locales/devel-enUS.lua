--[[
************************************************************************
devel-enUS.lua
These are localization strings used for the testing of collectinator.
Manually add entries here and then proceed to update the localization
application located here:
	http://www.wowace.com/addons/collectinator/localization/
************************************************************************
File date: @file-date-iso@
File revision: @file-revision@
Project revision: @project-revision@
Project version: @project-version@
************************************************************************
Please see http://www.wowace.com/addons/collectinator/ for more information.
These translations are released under the Public Domain.
************************************************************************
]]--

local L = LibStub("AceLocale-3.0"):NewLocale("Collectinator", "enUS", true)

if not L then return end

L["ACQUIRETOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the acquire information."
L["ACQUISITION_DESC_FORMAT"] = "%s collectables will be displayed."
L["ALL_EXCLUDED"] = "Although you have already scanned this collection, your exclusions are currently preventing any recipes from being displayed. Please change your exclusions and try again."
L["ALL_FILTERED"] = "Although you have already scanned this collection, your filters are currently preventing any recipes from being displayed. Please change your filters and try again."
L["ALL_KNOWN"] = "You know all the recipes for this collection.  Congratualtions on your accomplishment!"
L["ALT_CLICK"] = "Alt-Click to add/remove this collectable to your ignore list."
L["Acquisition"] = true
L["BOAFilter"] = "Item Bind to Account"
L["BOA_DESC"] = true
L["BOEFilter"] = "Item Bind on Equip"
L["BOE_DESC"] = true
L["BOPFilter"] = "Item Bind on Pickup"
L["BOP_DESC"] = true
L["Binding"] = true
L["Bottom Left"] = true
L["Bottom Right"] = true
L["Breanni"] = true
L["CLOSEGUI_DESC"] = "Close the Collectinator window when the PetJournal window is closed."
L["CLOSE_DESC"] = true
L["CONTRACTALL_DESC"] = "Minimize all collectables listed below."
L["CTRL_CLICK"] = "Ctrl-Click to add this collectable's link to your chat."
L["CTRL_SHIFT_CLICK"] = "Ctrl-Shift-Click to add the item to the map and mini-map."
L["Captured"] = true
L["Close GUI"] = "Close with PetJournal UI"
L["Collectables In Tooltips"] = true
L["DISPLAY_EXCLUSION_DESC"] = true
L["DISPLAY_OPTIONS_DESC"] = true
L["Day of the Dead"] = true
L["Display Exclusions"] = true
L["EXPANDALL_DESC"] = "Maximize all collectables listed below."
L["EXPANSION_DESC_FORMAT"] = true
L["EXPANSION_FILTER_FORMAT"] = true
L["FACTION_DESC_FORMAT"] = true
L["FILTERING_BINDING_DESC"] = "Configuration for which types of binding are included in the scan."
L["FILTERING_GENERAL_DESC"] = "Configuration for several more general filter types."
L["FILTERING_ITEM_DESC"] = "Configuration for which item types are included in the scan."
L["FILTERING_MISC_DESC"] = "Configuration for miscellaneous options which are also present in the display options."
L["FILTERING_OBTAIN_DESC"] = "Configuration for which methods of obtaining collectables are included in the scan."
L["FILTERING_PLAYERTYPE_DESC"] = "Configuration for items matching which player types are included in the scan."
L["FILTERING_QUALITY_DESC"] = "Configuration for which quality types are included in the scan."
L["FILTERING_REP_DESC"] = "Configuration for which reputation reward collectables are included in the scan."
L["FILTER_CLOSE_DESC"] = "Close filter option panel."
L["FILTER_DESC_FORMAT"] = true
L["FILTER_OPEN_DESC"] = true
L["FONT_SIZE_DESC"] = "Changes the size of the fonts for Collectinator."
L["GROUP_TOGGLE_FORMAT"] = true
L["HIDEPOPUP_DESC"] = "Prevents pop-ups notifying you why the scan window is empty from showing.  Pop-ups will always show for the first time after a new version has been added."
L["Hide Pop-Up"] = true
L["KNOWN_DESC"] = true
L["Location"] = true
L["Mob Drop"] = true
L["NOTSCANNED"] = "You have not yet scanned this collection. Please open this collection and click on Scan."
L["NOT_YET_SCANNED"] = "Not yet scanned!"
L["NO_DISPLAY"] = "No collectables to display.  If you get this message please submit a ticket at http://www.wowace.com/addons/collectinator/tickets listing what filters you have, what is in your exclusion list, which collectable type, and the number of known/unknown collectables."
L["NoItemLink"] = "There is no item in the database to link.  Please submit a bug report if you think this is in error."
L["Obtained From"] = true
L["Profession"] = true
L["Profession Required:"] = true
L["Profile Options"] = true
L["QUALITY_GENERAL_DESC"] = true
L["Quest"] = true
L["RESET_DESC"] = true
L["RESET_WINDOW_DESC"] = "Resets the Collectinator GUI to default position."
L["RETIRED_DESC"] = true
L["Reset Window Position"] = true
L["Retired"] = true
L["SCANBUTTONPOSITION_DESC"] = "Allows you to customize where the scan button is placed on the Mounts and Pets frame."
L["SCAN_COMPANIONS_DESC"] = "Scans the specific collection to determine what you are missing and where to get them from."
L["SEARCH_FILTERED"] = "Your search has no results."
L["SHIFT_CLICK"] = "Shift-Click to add the item profession by this collectable's link to your chat."
L["SMALL_FONT_DESC"] = "Toggle on to use a smaller font for entries in the collection list."
L["SORTING_DESC"] = true
L["SPECIFIC_REP_DESC"] = true
L["SPELLTOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the collectable information."
L["Scan"] = true
L["Scan Button Position"] = true
L["Show Known"] = true
L["Small Font"] = true
L["TOOLTIP_HINT"] = "Hide Hint Text"
L["TOOLTIP_HINT_DESC"] = "Hides the hint text at the bottom of the tooltip."
L["TOOLTIP_OPTIONS_DESC"] = "Allows you to specify how the tooltips for Collectinator behave.  The acquire tooltip lists the different information on how to acquire a collectable, whereas the spell tooltip lists the collectable information itself."
L["TOOLTIP_SCALE_DESC"] = "Changes the scale of the Collectinator tooltip. Ranges from .5 to 1.5 (.9 is default)"
L["Tooltip (Acquire) Position"] = true
L["Tooltip Options"] = true
L["Tooltip Position"] = true
L["Tooltip Scale"] = true
L["Top Left"] = true
L["Top Right"] = true
L["Trainer"] = true
L["UI_SCALE_DESC"] = "Changes the scale of the UI. Ranges from .5 to 1.5 (1 is default)"
L["UNIT_MAX_TOOLTIPS_DESC"] = "Maximum number of collectables to show in tooltips."
L["UNIT_TOOLTIPS_DESC"] = "Toggles whether or not to display unknown collectables in the tooltips of the vendors, trainers, or NPCs which carry them."
L["UNKNOWN_DESC"] = true
L["Vendor"] = true
L["World Drop"] = true
