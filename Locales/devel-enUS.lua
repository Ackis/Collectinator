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
L["ALL_EXCLUDED"] = true
L["ALL_FILTERED"] = true
L["ALL_KNOWN"] = true
L["BOAFilter"] = "Item Bind to Account"
L["BOEFilter"] = "Item Bind on Equip"
L["BOPFilter"] = "Item Bind on Pickup"
L["Bottom Left"] = true
L["Bottom Right"] = true
L["CLOSEGUI_DESC"] = "Close the Collectinator window when the PetJournal window is closed."
L["Close GUI"] = "Close with PetJournal UI"
L["Collectables In Tooltips"] = true
L["DISPLAY_OPTIONS_DESC"] = true
L["FILTERING_BINDING_DESC"] = "Configuration for which types of binding are included in the scan."
L["FILTERING_GENERAL_DESC"] = "Configuration for several more general filter types."
L["FILTERING_ITEM_DESC"] = "Configuration for which item types are included in the scan."
L["FILTERING_MISC_DESC"] = "Configuration for miscellaneous options which are also present in the display options."
L["FILTERING_OBTAIN_DESC"] = "Configuration for which methods of obtaining collectables are included in the scan."
L["FILTERING_PLAYERTYPE_DESC"] = "Configuration for items matching which player types are included in the scan."
L["FILTERING_QUALITY_DESC"] = "Configuration for which quality types are included in the scan."
L["FILTERING_REP_DESC"] = "Configuration for which reputation reward collectables are included in the scan."
L["FONT_SIZE_DESC"] = "Changes the size of the fonts for Collectinator."
L["HIDEPOPUP_DESC"] = "Prevents pop-ups notifying you why the scan window is empty from showing.  Pop-ups will always show for the first time after a new version has been added."
L["Hide Pop-Up"] = true
L["Mob Drop"] = true
L["NOTSCANNED"] = true
L["Profile Options"] = true
L["Quest"] = true
L["RESET_WINDOW_DESC"] = "Resets the ARL GUI to default position."
L["Reset Window Position"] = true
L["SCANBUTTONPOSITION_DESC"] = true
L["SCAN_COMPANIONS_DESC"] = true
L["SEARCH_FILTERED"] = true
L["SMALL_FONT_DESC"] = "Toggle on to use a smaller font for entries in the recipe list."
L["SPELLTOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the collectable information."
L["Scan"] = true
L["Scan Button Position"] = true
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
L["Vendor"] = true
L["World Drop"] = true
