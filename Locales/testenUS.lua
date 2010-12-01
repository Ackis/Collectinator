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

local L = LibStub("AceLocale-3.0"):NewLocale(MODNAME, "enUS", true, false)

if not L then return end

L["About"] = true
L["Achievement"] = true
L["ACHIEVEMENT_DESC"] = "Collectibles which are achievements should be included in the scan."
L["ACQUIRETOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the acquire information."
L["Acquisition"] = true
L["ALL_FILTERED"] = "Your filters are currently preventing any entries from being displayed. Please change your filter settings and try again."
L["ALT_CLICK"] = "Alt-Click to add/remove this entry to your ignore list."
--L["ALT_COLLECTION_DESC"] = "This will display a list of alts which have had their collections.  Clicking on the alt's name will output the collection to chat."
L["Alt-Collections"] = true
L["Auto Scan Map"] = true
L["AUTOSCANMAP_DESC"] = true
L["DOC_DESC"] = "Documentation for Collectinator"
L["BC_WOW_DESC"] = "Entries available with the Burning Crusade."
L["Binding"] = true
L["BOEFilter"] = "Entry Bind on Equip"
L["BOE_DESC"] = "Entry that are Bind on Equip items should be included in the scan."
L["BOPFilter"] = "Entry Bind on Pickup"
L["BOP_DESC"] = "Entry that are Bind on Pickup items should be included in the scan."
L["BOAFilter"] = "Entry Bind to Account"
L["BOA_DESC"] = "Entry that are Bind to Account items should be included in the scan."
L["Bottom"] = true
L["Burning Crusade"] = true
L["Clear Exclusion List"] = true
L["Clear Waypoints"] = true
L["CLEAR_DESC"] = "Clear the search text box."
L["CLEAR_EXCLUSION_LIST_DESC"] = "Removes all entries from the exclusion list."
L["CLEAR_WAYPOINTS_DESC"] = true
L["CLOSE_DESC"] = "Close the Collectinator Window."
L["Collectors' Edition"] = true
L["COLLECTIBLE_EXCLUDED"] = "Collectible is in Exclusion list"
L["COLLECTOR_ED_DESC"] = "Collectibles obtained from Collectors' Edition retail boxes should be included in the scan."
L["Collectinator_ALLEXCLUDED"] = "Your exclusions are currently preventing any entries from being displayed. Please change your exclusions and try again."
L["Collectinator_ALLKNOWN"] = "You know all the entries, there is nothing left for you to collect."
L["Collectinator_SEARCHFILTERED"] = "Your search has no results."
L["Collectinator Documentation"] = true
L["Common Issues"] = true
L["COMMON_ISSUES_DESC"] = [[Please refer to these common issues before submitting a bug report.
1) Mount/Pet does not show up! - Check your filter settings to make sure that the entry is not being filtered.]]
L["CONTRACTALL"] = "- All"
L["CONTRACTALL_DESC"] = "Minimize all entries listed below."
L["Crafted"] = true
L["CRAFT_DESC"] = "Collectibles which are obtained by crafting them should be included in the scan."
L["CTRL_CLICK"] = "Ctrl-Click to add the link for this entry to your chat."
L["CTRL_SHIFT_CLICK"] = "Ctrl-Shift-Click to add the item to the map and mini-map."
L["Display Exclusions"] = true
L["Display Options"] = true
L["Display"] = true
L["DISPLAY_EXCLUSION_DESC"] = "Display entries that are in the exclusion list."
L["DISPLAY_OPTIONS_DESC"] = "Allows you to customize how the GUI behaves."
L["Documentation"] = true
L["EVENT_DESC"] = "Collectibles which are from special events (BlizzCon, WWI, etc) should be included in the scan."
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
L["FILTERCOUNT_DESC"] = "Treat filtered items as non-existant.  Selecting this option will change the number of known and unknown collectibles."
L["FILTERKNOWNCOUNT_DESC"] = "Includes filtered items which are known in the count, but treats unknown filtered items as non-existant."
L["FILTERING_BC_DESC"] = "Configuration for which Burning Crusade Reputation reward entries are included in the scan."
L["FILTERING_BINDING_DESC"] = "Configuration for which types of binding are included in the scan."
L["FILTERING_GENERAL_DESC"] = "Configuration for several more general filter types."
L["FILTERING_RARITY_DESC"] = "Configuration for which rarity types are included in the scan."
L["FILTERING_MISC_DESC"] = "Configuration for miscellaneous options which are also present in the display options."
L["FILTERING_OBTAIN_DESC"] = "Configuration for which methods of obtaining entries are included in the scan."
L["FILTERING_OLDWORLD_DESC"] = "Configuration for which Old World Reputation reward entries are included in the scan."
L["FILTERING_REP_DESC"] = "Configuration for which reputation reward entries are included in the scan."
L["FILTERING_WOTLK_DESC"] = "Configuration for which Wrath of the Lich King Reputation reward entries are included in the scan."
L["Include Known Filtered"] = true
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
  Performs a scan of the current tradeskill displaying collectibles in a new window.
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
L["Left"] = true
L["Lich King"] = true
L["LK_WOW_DESC"] = "Collectibles available with the Wrath of the Lich King."
L["Location"] = true
L["Main Filter Options"] = true
L["Main Options"] = true
L["MAIN_OPTIONS_DESC"] = "Main configuration options"
L["MAINFILTER_OPTIONS_DESC"] = "Allows you to specify how different filters are handled."
L["Map Issues"] = true
L["Map Options"] = true
L["MAP_ISSUES_DESC"] = "Collectinator relies on TomTom to add icons and waypoints to the World Map and the Mini-map.  You can customize these by going to the Collectinator configuration menu and scrolling to the display options.  If you do not have TomTom installed, nothing will be added.  Auto-adding icons is disabled by default."
L["MAP_OPTIONS_DESC"] = "Allows you to change how Collectinator integrates into the world map and into the mini-map."
L["Mini Map"] = true
L["Misc"] = true
L["Miscellaneous"] = true
L["MINIMAP_DESC"] = true
L["MISSING_LIBRARY"] = "%s is missing.  Addon cannot run."
L["Mob Drop"] = true
L["MOB_DROP_DESC"] = "Collectibles that are Mob Drops should be included in the scan."
L["Mouse"] = true
L["Name"] = true
L["NO_DISPLAY"] = "No entries to display.  If you get this message please submit a ticket at http://www.wowace.com/projects/collectinator/tickets listing what filters you have, what is in your exclusion list, which type of scan is being done, and the number of known/unknown entries."
L["NoItemLink"] = "This item does not have an item link or it was not in your cache."
L["NOT_YET_SCANNED"] = "Not yet scanned!"
L["NOTSCANNED"] = "You have not yet scanned this collectible. Please open this the itnerface and click on Scan.  Note that mount/pet scanning is done at the same time."
L["Obtain"] = true
L["Obtained From"] = true
L["Off"] = true
L["Ok"] = true
L["Old World"] = true
L["ORIGINAL_WOW_DESC"] = "Collectibles available with the original game."
L["Other Realms"] = true
L["Profile Options"] = true
L["Profile"] = true
L["PVP"] = true
L["PVP_DESC"] = "Collectibles obtained through PVP should be included in the scan."
L["Quest"] = true
L["QUEST_DESC"] = "Collectibles obtained as quest rewards should be included in the scan."
L["Raid"] = true
L["Ray'ma"] = true
L["RAID_DESC"] = "Collectibles obtained in raids (ie: Molten Core, Serpent Shrine Cavern, etc.) should be included in the scan."
L["Rarity"] = true
L["Poor"] = true
L["Common"] = true
L["Uncommon"] = true
L["Rare"] = true
L["Epic"] = true
L["Legendary"] = true
L["Artifact"] = true
L["Poor_DESC"] = "Collectibles with poor quality should be included in the scan."
L["Common_DESC"] = "Collectibles with common quality should be included in the scan."
L["Uncommon_DESC"] = "Collectibles with uncommon quality should be included in the scan."
L["Rare_DESC"] = "Collectibles with rare quality should be included in the scan."
L["Epic_DESC"] = "Collectibles with epic quality should be included in the scan."
L["Legendary_DESC"] = "Collectibles with legendary quality should be included in the scan."
L["Artifact_DESC"] = "Collectibles with artifact quality should be included in the scan."
L["Removed from Game"] = true
L["Retired"] = true
L["REP_TEXT_DESC"] = [[Left-click here to select all reputation filters.
Right-click here to deselect all reputation filters.]]
L["Reporting Bugs"] = true
L["REPORTING_BUGS_DESC"] = [[When reporting a bug, please make sure you do the following:
1) Download the latest version, available from http://www.wowace.com/projects/collectinator/files/
2) Make sure there is not a bug report filed for your issue already.  You can check these at http://www.wowace.com/projects/collectinator/tickets/
3) Read the bug reporting documentation at http://www.wowace.com/projects/collectinator/pages/feedback-and-bug-reporting/
4) If your problem is not listed and you are using the latest version verify your addon settings.  Verify filters, profiles, etc.
5) You have found a bug that no one has reported before.  Create a new ticket at http://www.wowace.com/projects/collectinator/tickets/ with a descriptive heading about the problem.  In the ticket make sure you include the error message that you received (just the error message, I don't need a listing of the addons you use), the entry you were working with, and any other info that you think may help.
When posting a bug report, do NOT include all of the addons from swatter.  This just makes it difficult to read.  If you want a good error reporting mod, get BugSack.  Do not post errors/missing items in the comments, or send them to me via a PM.  Post them as a ticket which I can address and track easily.]]
L["Reputation"] = true
L["Reset All Filters"] = true
L["Reset Window Position"] = true
L["RESET_DESC"] = "Reset All Filters to default values."
L["RESET_WINDOW_DESC"] = "Resets the GUI to default position."
L["Right"] = true
L["Scan"] = true
L["SCAN_COMPANIONS_DESC"] = [[Scans the current opened companion window.
Shift-click to generate a text dump of the collectibles you have.
Alt-click to remove all waypoints from the mini-map and world map.
Alt-Shift-click to generate an import list for the warcraftpets.com web site.]]
L["SEARCH_BOX_DESC"] = "Search"
L["SEARCH_DESC"] = "Filter to entries that contain text at left."
L["SEASONAL_DESC"] = "Collectibles obtained in world events should be included in the scan."
L["SHIFT_CLICK"] = "Shift-Click to add the item crafted by this collectible's link to your chat." -- remove?
L["Sort"] = true
L["Sorting Options"] = true
L["Sorting"] = true
L["SORTING_DESC"] = "Change the way in which displayed collectibles are sorted."
L["SORTING_OPTIONS_DESC"] = "Allows you to customize the way displayed collectibles are sorted."
L["Special Event"] = true
L["SPECIFIC_REP_DESC"] = "Include %s faction."
L["SPELLTOOLTIPPOSITION_DESC"] = "Changes the location of the tooltip containing the collectible information."
L["TCG"] = "WoW Trading Card Game"
L["TCG_DESC"] = "Collectibles obtained from the World of Warcraft Trading Card Game should be included in the scan."
L["Text Dump"] = true
L["TEXT_DUMP_DESC"] = "Displays all collectibles in a comma separated value format which can be copied and pasted into another client."
L["Tooltip (Acquire) Position"] = true
L["Tooltip (Collectible) Position"] = true
L["Tooltip Options"] = true
L["Tooltip Scale"] = true
L["TOOLTIP_OPTIONS_DESC"] = "Allows you to specify how the tooltips behave.  The acquire tooltip lists the different information on how to acquire the collectible, whereas the spell tooltip lists the collectible information itself."
L["TOOLTIP_SCALE_DESC"] = "Changes the scale of the tooltip. Ranges from .5 to 1.5 (.9 is default)"
L["Top"] = true
L["UI_SCALE_DESC"] = "Changes the scale of the UI. Ranges from .5 to 1.5 (1 is default)"
L["Unavailable"] = true
L["Unhandled Collectible"] = true
L["Unknown Zone"] = true
L["Unknown"] = true
L["UNKNOWN_DESC"] = "Include all unknown collectibles in the scan."
L["Using Filters"] = true
L["USING_FILTERS_DESC"]= [[Filters may be toggled on or off.  There are two types of filters: one which will prevent the collectible from showing up at all, and one which will prevent a specific type of acquire information from showing up.
With the first type of filter, these match the proprieties of the collectible (ie: binding).  If you toggle Collectinator to not show BoP collectibles, no collectibles that are BoP will show up in the scan.  The second type of filter deals with acquire information.  If a collectible is available as a mob drop, or from a vendor and you toggle to not show vendor collectibles, the collectible will still show up but vendor information will be hidden for it.  The reason is that there is still another way to acquire this collectible (mob drop) so it should still be included in the scan.
Please note that the tooltips will always hide the opposite faction methods of acquiring a collectible.  This has been done to save space in the tooltip since they can get quite large.]]
L["Vendor"] = true
L["VENDOR_DESC"] = "Collectibles purchased from vendors should be included in the scan."
L["Version"] = true
L["View Exclusion List"] = true
L["VIEW_EXCLUSION_LIST_DESC"] = "Prints out a list of all entries on the exclusion list."
L["World Drop"] = true
L["WORLD_DROP_DESC"] = "Collectibles that are World Drops should be included in the scan."
L["WORLDMAP_DESC"] = true
L["Store"] = "Blizzard Store"
L["STORE_DESC"] = "Collectibles obtained from the Blizzard Store should be included in the scan."

-- Mobs
L["Flesh Hunter"] = true
L["The Ongar"] = true
L["Large Vile Slime"] = true
L["Gargantuan Ooze"] = true
L["Cloned Ooze"] = true
L["Rotting Sludge"] = true
L["Living Decay"] = true
L["Vile Ooze"] = true
L["Tainted Ooze"] = true
L["Glutinous Ooze"] = true
L["Primal Ooze"] = true
L["Devouring Ooze"] = true
L["Vile Slime"] = true
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
L["Forest Frog"] = true
L["Gundrak Raptor"] = true
L["Time-Lost Proto Drake"] = true
L["Apothecary Hummel"] = true

-- Vendors
L["Yarlyn Amberstill"] = true
L["Narkk"] = true
L["Donni Anthania"] = true
L["Magus Tirth"] = true
L["Halpa"] = true
L["Jeremiah Payson"] = true
L["Xan'tish"] = true
L["Shylenai"] = true
L["Larkin Thunderbrew"] = true
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
L["Jepetto Joybuzz"] = true
L["Clockwork Assistant"] = true
L["Apothecary Furrows"] = true
L["Kall Worthaton"] = true

L["DB_LOAD_ERROR"] = [[Error: Database not loaded correctly.
Please exit out of WoW and delete the Collectinator database file (Collectinator.lua) found in:
\\World of Warcraft\\WTF\\Account\\<Account Name>>\\SavedVariables\\]]