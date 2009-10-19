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

L["About"] = true
L["Achievement"] = true
--L["ACHIEVEMENT_DESC"] = ""
L["ACQUIRETOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the acquire information."
L["Acquisition"] = true
L["ALL_FILTERED"] = "Your filters are currently preventing any entries from being displayed. Please change your filter settings and try again."
L["ALT_CLICK"] = "Alt-Click to add/remove this entry to your ignore list."
--L["ALT_TRADESKILL_DESC"]
--L["Alt-Tradeskills"]
--L["ARL_DOC_DESC"]
L["BC_WOW_DESC"] = "Entries available with the Burning Crusade."
L["Binding"] = true
L["BOEFilter"] = "Entry Bind on Equip"
L["BOE_DESC"] = "Entry that are Bind on Equip items should be included in the scan."
L["BOPFilter"] = "Entry Bind on Pickup"
L["BOP_DESC"] = "Entry that are Bind on Pickup items should be included in the scan."
L["BOAFilter"] = "Entry Bind to Account"
L["BOA_DESC"] = "Entry that are Bind to Account items should be included in the scan."
L["Bottom Left"] = true
L["Burning Crusade"] = true
L["Clear Exclusion List"] = true
L["CLEAR_DESC"] = "Clear the search text box."
L["CLEAR_EXCLUSION_LIST_DESC"] = "Removes all entries from the exclusion list."
L["Close GUI"] = true
L["CLOSE_DESC"] = "Close the Collectinator Window."
--L["CLOSEGUI_DESC"] remove ref
--L["COLLECTIBLE_EXCLUDED"]
L["Collectinator_ALLEXCLUDED"] = "Your exclusions are currently preventing any entries from being displayed. Please change your exclusions and try again."
L["Collectinator_ALLKNOWN"] = "You know all the entries, there is nothing left for you to collect."
L["Collectinator_SEARCHFILTERED"] = "Your search has no results."
L["Common Issues"] = true
L["COMMON_ISSUES_DESC"] = [[Please refer to these common issues before submitting a bug report.
1) Mount/Pet does not show up! - Check your filter settings to make sure that the entry is not being filtered.]]
L["CONTRACTALL"] = "- All"
L["CONTRACTALL_DESC"] = "Minimize all entries listed below."
L["CTRL_CLICK"] = "Ctrl-Click to add this entries link to your chat."
L["CTRL_SHIFT_CLICK"] = "Ctrl-Shift-Click to add the item to the map and mini-map."
L["Display Exclusions"] = true
L["Display Options"] = true
L["Display"] = true
L["DISPLAY_EXCLUSION_DESC"] = "Display entries that are in the exclusion list."
L["DISPLAY_OPTIONS_DESC"] = "Allows you to customize how the GUI behaves."
L["Documentation"] = true
--L["EVENT_DESC"]
L["EXCLUDECOUNT_DESC"] = "Include excluded entries in the count of total entries."
L["Exclusion Issues"] = true
L["EXCLUSION_ISSUES_DESC"] = "To add a entry to the exclusion (ignore) list, just alt-click on it from the scan window.  To get this entry back, open up the options and set the toggle of \"Show Excluded\" to be on.  This will show all the entries you've excluded in your scan during your next scan.  Once you have done this, Alt-Click on the entry again to remove it from the exclusion list."
L["EXPANDALL"] = "+ All"
L["EXPANDALL_DESC"] = "Expand all entries listed below."
L["Faction"] = true
L["FACTION_DESC"] = "Include both horde and alliance faction collectibles in the scan."
L["Filter"] = true
L["FILTER_CLOSE_DESC"] = "Close filter option panel."
L["FILTER_OPEN_DESC"] = "Open filter option panel."
L["FILTERCOUNT_DESC"] = "Include filtered entries in the count of total entries."
L["FILTERING_BC_DESC"] = "Configuration for which Burning Crusade Reputation reward entries are included in the scan."
L["FILTERING_BINDING_DESC"] = "Configuration for which types of binding are included in the scan."
L["FILTERING_GENERAL_DESC"] = "Configuration for several more general filter types."
L["FILTERING_ITEM_DESC"] = "Configuration for which item types are included in the scan." -- remove?
L["FILTERING_MISC_DESC"] = "Configuration for miscellaneous options which are also present in the display options."
L["FILTERING_OBTAIN_DESC"] = "Configuration for which methods of obtaining entries are included in the scan."
L["FILTERING_OLDWORLD_DESC"] = "Configuration for which Old World Reputation reward entries are included in the scan."
L["FILTERING_REP_DESC"] = "Configuration for which reputation reward entries are included in the scan."
L["FILTERING_WOTLK_DESC"] = "Configuration for which Wrath of the Lich King Reputation reward entries are included in the scan."
L["Filters"] = true
L["Font Size"] = true
L["FONT_SIZE_DESC"] = "Changes the size of the fonts."
L["Game Commands"] = true
L["GAME_COMMANDS_DESC"] = [[Command Line:
Collectinator has recently changed to use a GUI for change parameters.  Type /collectinator to open up the GUI.  Acceptable commands include:
- TBD

Clicking:
Collectinator will behave differently depending on which modifying keys you use to click.

Scan Button:
This is the functionality that occurs when you are clicking the scan button.

- Normal Click
  Performs a scan of the current tradeskill displaying recipes in a new window.
- Shift Click
  Generates a text dumping of the current tradeskill in CSV format.
- Alt Click
  Removes all waypoints on the World Map and Mini-map generated by Collectinator.

Entries:
This is the functionality that occurs when you click on an entry.

- Normal Click
  Expands or contracts the entry acquire information.
- Shift Click
  Generates an item link of the item that the entry will make into your default chat box.
- Ctrl Click
  Generates a spell link for the entry you clicked.
- Alt Click
  Adds or removes a entry from the exclusion list.
- Ctrl-Shift Click
  Adds the specific entry acquire methods to the World Map and Mini-map.]]

L["General Options"] = true
L["General"] = true
L["Hide Pop-Up"] = true
L["HIDEPOPUP_DESC"] = "Prevents pop-ups notifying you why the scan window is empty from showing.  Pop-ups will always show for the first time after a new version has been added."
L["Include Excluded"] = true
L["Include Filtered"] = true
L["Instance"] = true
L["INSTANCE_DESC"] = "Collectibles obtained from (5 man) instances should be included in the scan."
L["Item"] = true
L["Known"] = true
L["KNOWN_DESC"] = "Include all known collectibles in the scan."
L["Lich King"] = true
L["LK_WOW_DESC"] = "Collectibles available with the Wrath of the Lich King."
L["Location"] = true
L["Main Filter Options"] = true
L["Main Options"] = true
L["MAIN_OPTIONS_DESC"] = "Main configuration options"
L["MAINFILTER_OPTIONS_DESC"] = "Allows you to specify how different filters are handled."
L["Map Issues"] = true
L["MAP_ISSUES_DESC"] = "Collectinator relies on TomTom to add icons and waypoints to the World Map and the Mini-map.  You can customize these by going to the Collectinator configuration menu and scrolling to the display options.  If you do not have TomTom installed, nothing will be added.  Auto-adding icons is disabled by default."
L["MAP_OPTIONS_DESC"] = "Allows you to change how Collectinator integrates into the world map and into the mini-map."
L["Misc"] = true
L["Miscellaneous"] = true
L["MISSING_LIBRARY"] = "%s is missing.  Addon cannot run."
L["Mob Drop"] = true
L["MOB_DROP_DESC"] = "Collectibles that are Mob Drops should be included in the scan."
L["Mouse"] = true
L["Name"] = true
--[[
L["NO_DISPLAY"]
L["NoItemLink"]
L["NOT_YET_SCANNED"]
L["NOTSCANNED"]
--]]
L["Obtain"] = true
L["Obtained From"] = true
L["Off"] = true
L["Ok"] = true
L["Old World"] = true
--L["ORIGINAL_WOW_DESC"]
L["Other Realms"] = true
L["Profile Options"] = true
L["Profile"] = true
L["PVP"] = true
--L["PVP_DESC"]
L["Quest"] = true
--L["QUEST_DESC"]
L["Raid"] = true
--L["RAID_DESC"]
L["Removed from Game"] = true
--L["REP_TEXT_DESC"]
L["Reporting Bugs"] = true
--L["REPORTING_BUGS_DESC"]
L["Reputation"] = true
L["Reset All Filters"] = true
L["Reset Window Position"] = true
--L["RESET_DESC"]
--L["RESET_WINDOW_DESC"]
L["Scan Button Position"] = true
L["Scan"] = true
--[[
L["SCAN_COMPANIONS_DESC"]
L["SCAN_RECIPES_DESC"]
L["SCANBUTTONPOSITION_DESC"]
L["SEARCH_BOX_DESC"]
L["SEARCH_DESC"]
L["SEASONAL_DESC"]
L["SHIFT_CLICK"]
]]--
L["Sort"] = true
L["Sorting Options"] = true
L["Sorting"] = true
--L["SORTING_DESC"]
--L["SORTING_OPTIONS_DESC"]
L["Special Event"] = true
--L["SPECIFIC_REP_DESC"]
--L["SPELLTOOLTIPPOSITION_DESC"]
L["Text Dump"] = true
--L["TEXT_DUMP_DESC"]
L["Tooltip (Acquire) Position"] = true
L["Tooltip (Recipe) Position"] = true
L["Tooltip Options"] = true
L["Tooltip Scale"] = true
--L["TOOLTIP_OPTIONS_DESC"]
--L["TOOLTIP_SCALE_DESC"]
L["UI Scale"] = true
--L["UI_SCALE_DESC"]
L["Unavailable"] = true
L["Unhandled Collectible"] = true
L["Unknown Zone"] = true
L["Unknown"] = true
--L["UNKNOWN_DESC"]
L["Using Filters"] = true
--L["USING_FILTERS_DESC"]
L["Vendor"] = true
--L["VENDOR_DESC"]
L["Version"] = true
L["View Exclusion List"] = true
--L["VIEW_EXCLUSION_LIST_DESC"]
L["World Drop"] = true
--L["WORLD_DROP_DESC"]

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

-- Quests
L["Spawn of Jubjub"] = true
L["CLUCK!"] = true
L["A Warden of the Alliance"] = true
L["A Warden of the Horde"] = true
L["Becoming a Parent"] = true
L["An OOX of Your Own"] = true	
L["Kibler's Exotic Pets"] = true
L["En-Ay-Es-Tee-Why"] = true
L["Avast Ye, Admiral!"] = true
L["Catch the Wild Wolpertinger!"] = true
L["Onyxien the Onyx Netherwing Drake"] = true
L["Catch the Wild Wolpertinger!"] = true
L["Skywing"] = true
L["Crocolisks in the City"] = true
L["Back to the Orphanage"] = true
L["A Champion Rises"] = true
L["They Grow Up So Fast"] = true
L["Dreadsteed of Xoroth"] = true
L["Judgment and Redemption"] = true
L["True Masters of the Light"] = true
L["Into the Realm of Shadows"] = true
L["The Ghostfish"] = true
L["Jewel Of The Sewers"] = true
L["Blood Is Thicker"] = true
L["Dangerously Delicious"] = true
L["Monsterbelly Appetite"] = true
L["Maintaining Discipline"] = true
L["Defending Your Title"] = true
L["Back to the Pit"] = true
L["The Aberrations Must Die "] = true
L["Wolf Swapping - Arctic Wolf"] = true
L["Wolf Swapping - Red Wolf"] = true
L["New Kodo - Teal"] = true
L["New Kodo - Green"] = true
L["Ivory Raptor Replacement"] = true
L["Red Raptor Replacement"] = true
L["Frostsaber Replacement"] = true
L["Nightsaber Replacement"] = true
L["Frost Ram Exchange"] = true
L["Black Ram Exchange"] = true
L["Icy Blue Mechanostrider Replacement"] = true
L["White Mechanostrider Replacement"] = true
L["White Stallion Exchange"] = true
L["Palomino Exchange"] = true

-- Vendors
L["Yarlyn Amberstill"] = true
L["Narkk"] = true
L["Donni Anthania"] = true
L["Magus Tirth"] = true
L["Halpa"] = true
L["Jeremiah Payson"] = true
L["Xan'tish"] = true
L["Shylenai"] = true
L["Lil Timmy"] = true
L["Jilanne"] = true
L["Landro Longshot"] = true
L["Mycah"] = true
L["Dealer Rashaad"] = true
L["Sixx"] = true
L["Grella"] = true
L["Breanni"] = true
L["Darahir"] = true
L["Geen"] = true
L["Tanaika"] = true
L["Sairuk"] = true
L["Flik"] = true
L["Belbi Quikswitch"] = true
L["Blix Fixwidget"] = true
L["Midsummer Supplier"] = true
L["Midsummer Merchant"] = true
L["Noblegarden Vendor"] = true
L["Noblegarden Merchant"] = true
L["Corporal Arthur Flew"] = true
L["Derrick Brindlebeard"] = true
L["Freka Bloodaxe"] = true
L["Samamba"] = true
L["Eliza Killian"] = true
L["Doru Thunderhorn"] = true
L["Trellis Morningsun"] = true
L["Rillie Spindlenut"] = true
L["Rook Hawkfist"] = true
L["Irisee"] = true
L["Vasarin Redmorn"] = true
L["Hiren Loresong"] = true
L["Dame Evniki Kapsalis"] = true
L["Katie Hunter"] = true
L["Veron Amberstill"] = true
L["Unger Statforth"] = true
L["Merideth Carlson"] = true
L["Ogunaro Wolfrunner"] = true
L["Harb Clawhoof"] = true
L["Lelanai"] = true
L["Zachariah Post"] = true
L["Gregor MacVince"] = true
L["Zjolnir"] = true
L["Milli Featherwhistle"] = true
L["Rivern Frostwind"] = true
L["Mor'vek"] = true
L["Lieutenant Karter"] = true
L["Raider Bork"] = true
L["Gaelden Hammersmith"] = true
L["Thanthaldis Snowgleam"] = true
L["Grunnda Wolfheart"] = true
L["Jekyll Flandring"] = true
L["Winaestra"] = true
L["Torallius the Pack Handler"] = true
L["Fedryen Swiftspear"] = true
L["Trader Narasu"] = true
L["Provisioner Nasela"] = true
L["Dama Wildmane"] = true
L["Brunn Flamebeard"] = true
L["Coreiel"] = true
L["Aldraan"] = true
L["Drake Dealer Hurlunk"] = true
L["Pol Amberstill"] = true
L["Driz Tumblequick"] = true
L["Dread Commander Thalanor"] = true
L["Mei Francis"] = true
L["Knight Dameron"] = true
L["Stone Guard Mukar"] = true
L["Cielstrasza"] = true
L["Lillehoff"] = true
L["Bana Wildmane"] = true
L["Grunda Bronzewing"] = true
L["Durgan Thunderbeak"] = true
L["Tohfo Skyhoof"] = true
L["Alamma"] = true
L["Alexander Calder"] = true
L["Babagaya Shadowcleft"] = true
L["Briarthorn"] = true
L["Celoenus"] = true
L["Demisette Cloyce"] = true
L["Dhugru Gorelust"] = true
L["Gimrizz Shadowcog"] = true
L["Grol'dar"] = true
L["Kaal Soulreaper"] = true
L["Kartosh"] = true
L["Luther Pickman"] = true
L["Maximillian Crowe"] = true
L["Mirket"] = true
L["Richard Kerwin"] = true
L["Rupert Boch"] = true
L["Sandahl"] = true
L["Strahad Farsan"] = true
L["Talionia"] = true
L["Thistleheart"] = true
L["Ursula Deline"] = true
L["Zanien"] = true
L["Zevrost"] = true
