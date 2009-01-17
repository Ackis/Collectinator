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
local addonversion = GetAddOnMetadata("Collectinator", "Version")

-- Description: Function which provides "profiles" options table
-- Expected result: modularOptions extended with Ace3 profiles options
-- Input: None
-- Output: Ace3 config table

local function giveProfiles()

	return LibStub("AceDBOptions-3.0"):GetOptionsTable(addon.db)

end

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
			name = L["Filtering Options"],
			desc = L["FILTERING_OPTIONS_DESC"],
			args = {
				header1 = {
					order	= 1,
					type	= "header",
					name	= L["Filtering Options"],
				},
				desc = {
					order	= 2,
					type	= "description",
					name	= L["FILTERING_OPTIONS_DESC"],
				},
				general = {
					order	= 3,
					type	= "group",
					name	= L["General"],
					desc	= L["FILTERING_GENERAL_DESC"],
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= L["General Filtering Options"],
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= L["FILTERING_GENERAL_DESC"] .. "\n",
						},
						factions = {
							order	= 3,
							type	= "toggle",
							name	= L["Faction"],
							desc	= L["FACTION_DESC"],
							get		= function() return addon.db.profile.filters.general.faction end,
							set		= function() addon.db.profile.filters.general.faction = not addon.db.profile.filters.general.faction end,
						},
						classes = {
							order	= 4,
							type	= "toggle",
							name	= L["Profession"],
							desc	= L["PROFESSION_DESC"],
							get		= function() return addon.db.profile.filters.general.prof end,
							set		= function() addon.db.profile.filters.general.prof = not addon.db.profile.filters.general.prof end,
						},
						known = {
							order	= 7,
							type	= "toggle",
							name	= L["Known"],
							desc	= L["KNOWN_DESC"],
							get		= function() return addon.db.profile.filters.general.known end,
							set		= function() addon.db.profile.filters.general.known = not addon.db.profile.filters.general.known end,
						},
						unknown = {
							order	= 8,
							type	= "toggle",
							name	= L["Unknown"],
							desc	= L["UNKNOWN_DESC"],
							get		= function() return addon.db.profile.filters.general.unknown end,
							set		= function() addon.db.profile.filters.general.unknown = not addon.db.profile.filters.general.unknown end,
						},
					},
				},
				obtain = {
					order	= 4,
					type	= "group",
					name	= L["Obtain"],
					desc	= L["FILTERING_OBTAIN_DESC"],
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= L["Obtain Filtering Options"],
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= L["FILTERING_OBTAIN_DESC"] .. "\n",
						},
						instance = {
							order	= 3,
							type	= "toggle",
							name	= L["Instance"],
							desc	= L["INSTANCE_DESC"],
							get		= function() return addon.db.profile.filters.obtain.instance end,
							set		= function() addon.db.profile.filters.obtain.instance = not addon.db.profile.filters.obtain.instance end,
						},
						raid = {
							order	= 4,
							type	= "toggle",
							name	= L["Raid"],
							desc	= L["RAID_DESC"],
							get		= function() return addon.db.profile.filters.obtain.raid end,
							set		= function() addon.db.profile.filters.obtain.raid = not addon.db.profile.filters.obtain.raid end,
						},
						quest = {
							order	= 5,
							type	= "toggle",
							name	= L["Quest"],
							desc	= L["QUEST_DESC"],
							get		= function() return addon.db.profile.filters.obtain.quest end,
							set		= function() addon.db.profile.filters.obtain.quest = not addon.db.profile.filters.obtain.quest end,
						},
						seasonal = {
							order	= 6,
							type	= "toggle",
							name	= L["Seasonal"],
							desc	= L["SEASONAL_DESC"],
							get		= function() return addon.db.profile.filters.obtain.seasonal end,
							set		= function() addon.db.profile.filters.obtain.seasonal = not addon.db.profile.filters.obtain.seasonal end,
						},
						vendor = {
							order	= 8,
							type	= "toggle",
							name	= L["Vendor"],
							desc	= L["VENDOR_DESC"],
							get		= function() return addon.db.profile.filters.obtain.vendor end,
							set		= function() addon.db.profile.filters.obtain.vendor = not addon.db.profile.filters.obtain.vendor end,
						},
						PVP = {
							order	= 9,
							type	= "toggle",
							name	= L["PVP"],
							desc	= L["PVP_DESC"],
							get		= function() return addon.db.profile.filters.obtain.pvp end,
							set		= function() addon.db.profile.filters.obtain.pvp = not addon.db.profile.filters.obtain.pvp end,
						},
						worlddrop = {
							order	= 11,
							type	= "toggle",
							name	= L["World Drop"],
							desc	= L["WORLD_DROP_DESC"],
							get		= function() return addon.db.profile.filters.obtain.worlddrop end,
							set		= function() addon.db.profile.filters.obtain.worlddrop = not addon.db.profile.filters.obtain.worlddrop end,
						},
						mobdrop = {
							order	= 12,
							type	= "toggle",
							name	= L["Mob Drop"],
							desc	= L["MOB_DROP_DESC"],
							get		= function() return addon.db.profile.filters.obtain.mobdrop end,
							set		= function() addon.db.profile.filters.obtain.mobdrop = not addon.db.profile.filters.obtain.mobdrop end,
						},
					}
				},
				binding = {
					order	= 5,
					type	= "group",
					name	= L["Binding"],
					desc	= L["FILTERING_BINDING_DESC"],
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= L["Binding Filtering Options"],
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= L["FILTERING_BINDING_DESC"] .. "\n",
						},
						BOE = {
							order	= 3,
							type	= "toggle",
							name	= L["BOEFilter"],
							desc	= L["BOE_DESC"],
							get		= function() return addon.db.profile.filters.binding.itemboe end,
							set		= function() addon.db.profile.filters.binding.itemboe = not addon.db.profile.filters.binding.itemboe end,
						},
						BOP = {
							order	= 4,
							type	= "toggle",
							name	= L["BOPFilter"],
							desc	= L["BOP_DESC"],
							get		= function() return addon.db.profile.filters.binding.itembop end,
							set		= function() addon.db.profile.filters.binding.itembop = not addon.db.profile.filters.binding.itembop end,
						},
						BOA = {
							order	= 4,
							type	= "toggle",
							name	= L["BOAFilter"],
							desc	= L["BOA_DESC"],
							get		= function() return addon.db.profile.filters.binding.itemboa end,
							set		= function() addon.db.profile.filters.binding.itemboa = not addon.db.profile.filters.binding.itemboa end,
						},
					},
				},
				item = {
					order	= 6,
					type	= "group",
					name	= L["Item"],
					desc	= L["FILTERING_ITEM_DESC"],
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= L["Item Filtering Options"],
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= L["FILTERING_ITEM_DESC"] .. "\n",
						},
					},
				},
				reputations = {
					order	= 8,
					type	= "group",
					name	= L["Reputation"],
					desc	= L["FILTERING_REP_DESC"],
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= L["Reputation Filtering Options"],
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= L["FILTERING_REP_DESC"] .. "\n",
						},
						oldworld = {
							order	= 3,
							type	= "group",
							name	= L["Old World"],
							desc	= L["FILTERING_OLDWORLD_DESC"],
							args	= {
								header1 = {
									order	= 1,
									type	= "header",
									name	= L["Old World"],
								},
								header2 = {
									order	= 2,
									type	= "header",
									name	= L["Reputation Filtering Options"],
								},
								desc = {
									order	= 3,
									type	= "description",
									name	= L["FILTERING_OLDWORLD_DESC"] .. "\n",
								},
								ArgentDawn = {
									order	= 10,
									type	= "toggle",
									name	= BFAC["Argent Dawn"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Argent Dawn"]),
									get		= function() return addon.db.profile.filters.rep.argentdawn end,
									set		= function() addon.db.profile.filters.rep.argentdawn = not addon.db.profile.filters.rep.argentdawn end,
								},
								CenarionCircle = {
									order	= 11,
									type	= "toggle",
									name	= BFAC["Cenarion Circle"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Cenarion Circle"]),
									get		= function() return addon.db.profile.filters.rep.cenarioncircle end,
									set		= function() addon.db.profile.filters.rep.cenarioncircle = not addon.db.profile.filters.rep.cenarioncircle end,
								},
								TB = {
									order	= 12,
									type	= "toggle",
									name	= BFAC["Thorium Brotherhood"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Thorium Brotherhood"]),
									get		= function() return addon.db.profile.filters.rep.thoriumbrotherhood end,
									set		= function() addon.db.profile.filters.rep.thoriumbrotherhood = not addon.db.profile.filters.rep.thoriumbrotherhood end,
								},
								Timbermaw = {
									order	= 13,
									type	= "toggle",
									name	= BFAC["Timbermaw Hold"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Timbermaw Hold"]),
									get		= function() return addon.db.profile.filters.rep.timbermaw end,
									set		= function() addon.db.profile.filters.rep.timbermaw = not addon.db.profile.filters.rep.timbermaw end,
								},
								Zandalar = {
									order	= 14,
									type	= "toggle",
									name	= BFAC["Zandalar Tribe"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Zandalar Tribe"]),
									get		= function() return addon.db.profile.filters.rep.zandalar end,
									set		= function() addon.db.profile.filters.rep.zandalar = not addon.db.profile.filters.rep.zandalar end,
								},
							},
						},
						BC = {
							order	= 4,
							type	= "group",
							name	= L["Burning Crusade"],
							desc	= L["FILTERING_BC_DESC"],
							args	= {
								header1 = {
									order	= 1,
									type	= "header",
									name	= L["Burning Crusade"],
								},
								header2 = {
									order	= 2,
									type	= "header",
									name	= L["Reputation Filtering Options"],
								},
								desc = {
									order	= 3,
									type	= "description",
									name	= L["FILTERING_BC_DESC"] .. "\n",
								},
								Aldor = {
									order	= 10,
									type	= "toggle",
									name	= BFAC["The Aldor"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Aldor"]),
									get		= function() return addon.db.profile.filters.rep.aldor end,
									set		= function() addon.db.profile.filters.rep.aldor = not addon.db.profile.filters.rep.aldor end,
								},
								Ashtongue = {
									order	= 11,
									type	= "toggle",
									name	= BFAC["Ashtongue Deathsworn"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Ashtongue Deathsworn"]),
									get		= function() return addon.db.profile.filters.rep.ashtonguedeathsworn end,
									set		= function() addon.db.profile.filters.rep.ashtonguedeathsworn = not addon.db.profile.filters.rep.ashtonguedeathsworn end,
								},
								CenarionExpedition = {
									order	= 12,
									type	= "toggle",
									name	= BFAC["Cenarion Expedition"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Cenarion Expedition"]),
									get		= function() return addon.db.profile.filters.rep.cenarionexpedition end,
									set		= function() addon.db.profile.filters.rep.cenarionexpedition = not addon.db.profile.filters.rep.cenarionexpedition end,
								},
								Consortium = {
									order	= 13,
									type	= "toggle",
									name	= BFAC["The Consortium"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Consortium"]),
									get		= function() return addon.db.profile.filters.rep.consortium end,
									set		= function() addon.db.profile.filters.rep.consortium = not addon.db.profile.filters.rep.consortium end,
								},
								HellfireFactions = {
									order	= 14,
									type	= "toggle",
									name	= hellfirefac,
									desc	= format(L["SPECIFIC_REP_DESC"],hellfirefac),
									get		= function() return addon.db.profile.filters.rep.hellfire end,
									set		= function() addon.db.profile.filters.rep.hellfire = not addon.db.profile.filters.rep.hellfire end,
								},
								KoT = {
									order	= 15,
									type	= "toggle",
									name	= BFAC["Keepers of Time"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Keepers of Time"]),
									get		= function() return addon.db.profile.filters.rep.keepersoftime end,
									set		= function() addon.db.profile.filters.rep.keepersoftime = not addon.db.profile.filters.rep.keepersoftime end,
								},
								NagrandFactions = {
									order	= 16,
									type	= "toggle",
									name	= nagrandfac,
									desc	= format(L["SPECIFIC_REP_DESC"],nagrandfac),
									get		= function() return addon.db.profile.filters.rep.nagrand end,
									set		= function() addon.db.profile.filters.rep.nagrand = not addon.db.profile.filters.rep.nagrand end,
								},
								LowerCity = {
									order	= 17,
									type	= "toggle",
									name	= BFAC["Lower City"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Lower City"]),
									get		= function() return addon.db.profile.filters.rep.lowercity end,
									set		= function() addon.db.profile.filters.rep.lowercity = not addon.db.profile.filters.rep.lowercity end,
								},
								Scale = {
									order	= 18,
									type	= "toggle",
									name	= BFAC["The Scale of the Sands"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Scale of the Sands"]),
									get		= function() return addon.db.profile.filters.rep.scaleofthesands end,
									set		= function() addon.db.profile.filters.rep.scaleofthesands = not addon.db.profile.filters.rep.scaleofthesands end,
								},
								Scryer = {
									order	= 19,
									type	= "toggle",
									name	= BFAC["The Scryers"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Scryers"]),
									get		= function() return addon.db.profile.filters.rep.scryer end,
									set		= function() addon.db.profile.filters.rep.scryer = not addon.db.profile.filters.rep.scryer end,
								},
								Shatar = {
									order	= 20,
									type	= "toggle",
									name	= BFAC["The Sha'tar"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Sha'tar"]),
									get		= function() return addon.db.profile.filters.rep.shatar end,
									set		= function() addon.db.profile.filters.rep.shatar = not addon.db.profile.filters.rep.shatar end,
								},
								SSO = {
									order	= 21,
									type	= "toggle",
									name	= BFAC["Shattered Sun Offensive"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Shattered Sun Offensive"]),
									get		= function() return addon.db.profile.filters.rep.shatteredsun end,
									set		= function() addon.db.profile.filters.rep.shatteredsun = not addon.db.profile.filters.rep.shatteredsun end,
								},
								Sporeggar = {
									order	= 22,
									type	= "toggle",
									name	= BFAC["Sporeggar"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Sporeggar"]),
									get		= function() return addon.db.profile.filters.rep.sporeggar end,
									set		= function() addon.db.profile.filters.rep.sporeggar = not addon.db.profile.filters.rep.sporeggar end,
								},
								Violeteye = {
									order	= 23,
									type	= "toggle",
									name	= BFAC["The Violet Eye"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Violet Eye"]),
									get		= function() return addon.db.profile.filters.rep.violeteye end,
									set		= function() addon.db.profile.filters.rep.violeteye = not addon.db.profile.filters.rep.violeteye end,
								},
							},
						},
-- Below this is WotLK stuff. May need to be changed post beta
						WotLK = {
							order	= 5,
							type	= "group",
							name	= L["Wrath of the Lich King"],
							desc	= L["FILTERING_WOTLK_DESC"],
							args	= {
								header1 = {
									order	= 1,
									type	= "header",
									name	= L["Wrath of the Lich King"],
								},
								header2 = {
									order	= 2,
									type	= "header",
									name	= L["Reputation Filtering Options"],
								},
								desc = {
									order	= 3,
									type	= "description",
									name	= L["FILTERING_WOTLK_DESC"] .. "\n",
								},
								AllianceVanguard = {
									order	= 9,
									type	= "toggle",
									name	= BFAC["Alliance Vanguard"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Alliance Vanguard"]),
									get		= function() return addon.db.profile.filters.rep.alliancevanguard end,
									set		= function() addon.db.profile.filters.rep.alliancevanguard = not addon.db.profile.filters.rep.alliancevanguard end,
								},
								ArgentCrusade = {
									order	= 10,
									type	= "toggle",
									name	= BFAC["Argent Crusade"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Argent Crusade"]),
									get		= function() return addon.db.profile.filters.rep.argentcrusade end,
									set		= function() addon.db.profile.filters.rep.argentcrusade = not addon.db.profile.filters.rep.argentcrusade end,
								},
								Frenzyheart = {
									order	= 11,
									type	= "toggle",
									name	= BFAC["Frenzyheart Tribe"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Frenzyheart Tribe"]),
									get		= function() return addon.db.profile.filters.rep.frenzyheart end,
									set		= function() addon.db.profile.filters.rep.frenzyheart = not addon.db.profile.filters.rep.frenzyheart end,
								},
								HordeExpidition = {
									order	= 15,
									type	= "toggle",
									name	= BFAC["Horde Expedition"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Horde Expedition"]),
									get		= function() return addon.db.profile.filters.rep.hordeexpedition end,
									set		= function() addon.db.profile.filters.rep.hordeexpedition = not addon.db.profile.filters.rep.hordeexpedition end,
								},
								EbonBlade = {
									order	= 16,
									type	= "toggle",
									name	= BFAC["Knights of the Ebon Blade"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Knights of the Ebon Blade"]),
									get		= function() return addon.db.profile.filters.rep.ebonblade end,
									set		= function() addon.db.profile.filters.rep.ebonblade = not addon.db.profile.filters.rep.ebonblade end,
								},
								KirinTor = {
									order	= 17,
									type	= "toggle",
									name	= BFAC["Kirin Tor"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Kirin Tor"]),
									get		= function() return addon.db.profile.filters.rep.kirintor end,
									set		= function() addon.db.profile.filters.rep.kirintor = not addon.db.profile.filters.rep.kirintor end,
								},
								SonsOfHodir = {
									order	= 20,
									type	= "toggle",
									name	= BFAC["The Sons of Hodir"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Sons of Hodir"]),
									get		= function() return addon.db.profile.filters.rep.sonsofhodir end,
									set		= function() addon.db.profile.filters.rep.sonsofhodir = not addon.db.profile.filters.rep.sonsofhodir end,
								},
								Kaluak = {
									order	= 21,
									type	= "toggle",
									name	= BFAC["The Kalu'ak"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Kalu'ak"]),
									get		= function() return addon.db.profile.filters.rep.kaluak end,
									set		= function() addon.db.profile.filters.rep.kaluak = not addon.db.profile.filters.rep.kaluak end,
								},
								Oracles = {
									order	= 22,
									type	= "toggle",
									name	= BFAC["The Oracles"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Oracles"]),
									get		= function() return addon.db.profile.filters.rep.oracles end,
									set		= function() addon.db.profile.filters.rep.oracles = not addon.db.profile.filters.rep.oracles end,
								},
								Wyrmrest = {
									order	= 25,
									type	= "toggle",
									name	= BFAC["The Wyrmrest Accord"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Wyrmrest Accord"]),
									get		= function() return addon.db.profile.filters.rep.wyrmrest end,
									set		= function() addon.db.profile.filters.rep.wyrmrest = not addon.db.profile.filters.rep.wyrmrest end,
								},
								SilverCovenant = {
									order	= 26,
									type	= "toggle",
									name	= BFAC["The Silver Covenant"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Silver Covenant"]),
									get		= function() return addon.db.profile.filters.rep.silvercovenant end,
									set		= function() addon.db.profile.filters.rep.silvercovenant = not addon.db.profile.filters.rep.silvercovenant end,
								},
								Sunreavers = {
									order	= 27,
									type	= "toggle",
									name	= BFAC["The Sunreavers"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Sunreavers"]),
									get		= function() return addon.db.profile.filters.rep.sunreavers end,
									set		= function() addon.db.profile.filters.rep.sunreavers = not addon.db.profile.filters.rep.sunreavers end,
								},
								ExplorersLeague = {
									order	= 28,
									type	= "toggle",
									name	= BFAC["Explorers' League"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Explorers' League"]),
									get		= function() return addon.db.profile.filters.rep.explorersleague end,
									set		= function() addon.db.profile.filters.rep.explorersleague = not addon.db.profile.filters.rep.explorersleague end,
								},
								ValianceExpedition = {
									order	= 29,
									type	= "toggle",
									name	= BFAC["Valiance Expedition"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Valiance Expedition"]),
									get		= function() return addon.db.profile.filters.rep.valiance end,
									set		= function() addon.db.profile.filters.rep.valiance = not addon.db.profile.filters.rep.valiance end,
								},
								HandOfVengeance = {
									order	= 35,
									type	= "toggle",
									name	= BFAC["The Hand of Vengeance"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Hand of Vengeance"]),
									get		= function() return addon.db.profile.filters.rep.handofvengeance end,
									set		= function() addon.db.profile.filters.rep.valiance = not addon.db.profile.filters.rep.valiance end,
								},
								Taunka = {
									order	= 36,
									type	= "toggle",
									name	= BFAC["The Taunka"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Taunka"]),
									get		= function() return addon.db.profile.filters.rep.taunka end,
									set		= function() addon.db.profile.filters.rep.taunka = not addon.db.profile.filters.rep.taunka end,
								},
								WarsongOffensive = {
									order	= 37,
									type	= "toggle",
									name	= BFAC["Warsong Offensive"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Warsong Offensive"]),
									get		= function() return addon.db.profile.filters.rep.warsongoffensive end,
									set		= function() addon.db.profile.filters.rep.warsongoffensive = not addon.db.profile.filters.rep.warsongoffensive end,
								},
							},
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

local function fullOptions()

	if (not options) then

		options = {
			type = "group",
			name = MODNAME,
			args = {
				general = {
					order	= 1,
					type	= "group",
					name	= L["Main Options"],
					desc	= L["MAIN_OPTIONS_DESC"],
					args	= {
						header1 = {
							order	= 10,
							type	= "header",
							name	= L["General Settings"],
						},
						version = {
							order	= 11,
							type	= "description",
							name	= L["Version"] .. addonversion .. "\n",
						},
						run = {
							order	= 12,
							type	= "execute",
							name	= L["Scan"],
							desc	= L["SCAN_RECIPES_DESC"],
							func	= function(info) addon:DoCompleteScan() end,
						},
						spacer1 = {
							order	= 19,
							type	= "description",
							name	= "\n",
						},
						header2 = {
							order	= 20,
							type	= "header",
							name	= L["Display Settings"],
						},
						display_desc = {
							order	= 21,
							type	= "description",
							name	= L["DISPLAY_SETTINGS_DESC"] .. "\n",
						},
						spacer1a = {
							order	= 24,
							type	= "description",
							name	= "\n",
						},
						closegui = {
							order	= 25,
							type	= "toggle",
							name	= L["Close GUI"],
							desc	= L["CLOSEGUI_DESC"],
							get		= function() return addon.db.profile.closeguionskillclose end,
							set		= function() addon.db.profile.closeguionskillclose = not addon.db.profile.closeguionskillclose end,
						},
						spacer1b = {
							order	= 28,
							type	= "description",
							name	= "\n",
						},
						spacer2 = {
							order	= 32,
							type	= "description",
							name	= "\n",
						},
						header3 = {
							order	= 40,
							type	= "header",
							name	= L["Sorting Settings"],
						},
						longdesc =	{
							order	= 41,
							type	= "description",
							name	= L["SORTING_SETTINGS_DESC"] .. "\n",
						},
						sorting = {
							order	= 45,
							type	= "select",
							name	= L["Sorting"],
							desc	= L["SORTING_DESC"],
							get		= function() return addon.db.profile.sorting end,
							set		= function(info,name) addon.db.profile.sorting = name end,
							values	= function() return {Name = L["Name"], Skill = L["Skill"], Acquisition = L["Acquisition"], Location = L["Location"]} end,
						},
					},
				},
			},
		}

		for k,v in pairs(modularOptions) do

			options.args[k] = (type(v) == "function") and v() or v

		end

	end

	return options

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
		self:Print("Lib AboutPanel not loaded.")
	end

	-- Fill up our modular options...
	self:RegisterModuleOptions("Filters", giveFilter(), L["Filtering Options"])
	self:RegisterModuleOptions("Profiles", giveProfiles(), L["Profile Options"])

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
