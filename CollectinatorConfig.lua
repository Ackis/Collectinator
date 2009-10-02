--[[

****************************************************************************************

CollectinatorConfig.lua

Ace3 Configuration options for Collectinator

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

-- Factions which differ depending on ally/horde
-- Original
local city1 = BFAC["Darnassus"] .. "\\" .. BFAC["Darkspear Trolls"]
local city2 = BFAC["Exodar"] .. "\\" .. BFAC["Silvermoon City"]
local city3 = BFAC["Gnomeregan Exiles"] .. "\\" .. BFAC["Thunder Bluff"]
local city4 = BFAC["Ironforge"] .. "\\" .. BFAC["Undercity"]
local city5 = BFAC["Stormwind"] .. "\\" .. BFAC["Orgrimmar"]

local pvp1 = BFAC["Silverwing Sentinels"] .. "\\" .. BFAC["Warsong Outriders"]
local pvp2 = BFAC["Stormpike Guard"] .. "\\" .. BFAC["Frostwolf Clan"]
local pvp3 = BFAC["The League of Arathor"] .. "\\" .. BFAC["The Defilers"]
-- BC
local nagrandfac = BFAC["Kurenai"] .. "\\" .. BFAC["The Mag'har"]
local hellfirefac = BFAC["Honor Hold"] .. "\\" .. BFAC["Thrallmar"]
-- Wrath
local wrathcommon1 = BFAC["Alliance Vanguard"] .. "\\" .. BFAC["Horde Expedition"]
local wrathcommon2 = BFAC["The Silver Covenant"] .. "\\" .. BFAC["The Sunreavers"]
local wrathcommon3 = BFAC["Valiance Expedition"] .. "\\" .. BFAC["Warsong Offensive"]
local wrathcommon4 =  BFAC["The Frostborn"] .. "\\" .. BFAC["The Taunka"]
local wrathcommon5 = BFAC["Explorers' League"] .. "\\" .. BFAC["The Hand of Vengeance"]

local addonversion = GetAddOnMetadata("Collectinator", "Version")
addonversion = string.gsub(addonversion, "@project.revision@", "SVN")

local function giveProfiles()

	return LibStub("AceDBOptions-3.0"):GetOptionsTable(addon.db)

end

local filterOptions = nil

local function giveFilter()

	if (not filterOptions) then

		filterOptions = {
			order = 1,
			type = "group",
			name = L["Filtering Options"],
			desc = L["FILTERING_OPTIONS_DESC"],
			args = {
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
						known = {
							order	= 6,
							type	= "toggle",
							name	= L["Known"],
							desc	= L["KNOWN_DESC"],
							get		= function() return addon.db.profile.filters.general.known end,
							set		= function() addon.db.profile.filters.general.known = not addon.db.profile.filters.general.known end,
						},
						unknown = {
							order	= 7,
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
							name	= GetCategoryInfo(155),
							desc	= L["SEASONAL_DESC"],
							get		= function() return addon.db.profile.filters.obtain.seasonal end,
							set		= function() addon.db.profile.filters.obtain.seasonal = not addon.db.profile.filters.obtain.seasonal end,
						},
						vendor = {
							order	= 7,
							type	= "toggle",
							name	= L["Vendor"],
							desc	= L["VENDOR_DESC"],
							get		= function() return addon.db.profile.filters.obtain.vendor end,
							set		= function() addon.db.profile.filters.obtain.vendor = not addon.db.profile.filters.obtain.vendor end,
						},
						PVP = {
							order	= 8,
							type	= "toggle",
							name	= L["PVP"],
							desc	= L["PVP_DESC"],
							get		= function() return addon.db.profile.filters.obtain.pvp end,
							set		= function() addon.db.profile.filters.obtain.pvp = not addon.db.profile.filters.obtain.pvp end,
						},
						worlddrop = {
							order	= 9,
							type	= "toggle",
							name	= L["World Drop"],
							desc	= L["WORLD_DROP_DESC"],
							get		= function() return addon.db.profile.filters.obtain.worlddrop end,
							set		= function() addon.db.profile.filters.obtain.worlddrop = not addon.db.profile.filters.obtain.worlddrop end,
						},
						mobdrop = {
							order	= 10,
							type	= "toggle",
							name	= L["Mob Drop"],
							desc	= L["MOB_DROP_DESC"],
							get		= function() return addon.db.profile.filters.obtain.mobdrop end,
							set		= function() addon.db.profile.filters.obtain.mobdrop = not addon.db.profile.filters.obtain.mobdrop end,
						},
						tcg = {
							order	= 11,
							type	= "toggle",
							name	= L["TCG"],
							desc	= L["TCG_DESC"],
							get		= function() return addon.db.profile.filters.obtain.tcg end,
							set		= function() addon.db.profile.filters.obtain.tcg = not addon.db.profile.filters.obtain.tcg end,
						},
						event = {
							order	= 12,
							type	= "toggle",
							name	= L["Event"],
							desc	= L["EVENT_DESC"],
							get		= function() return addon.db.profile.filters.obtain.event end,
							set		= function() addon.db.profile.filters.obtain.event = not addon.db.profile.filters.obtain.event end,
						},
						ce = {
							order	= 13,
							type	= "toggle",
							name	= L["Collector's Edition"],
							desc	= L["CE_DESC"],
							get		= function() return addon.db.profile.filters.obtain.ce end,
							set		= function() addon.db.profile.filters.obtain.ce = not addon.db.profile.filters.obtain.ce end,
						},
						removed = {
							order	= 14,
							type	= "toggle",
							name	= L["Removed"],
							desc	= L["REMOVED_DESC"],
							get		= function() return addon.db.profile.filters.obtain.removed end,
							set		= function() addon.db.profile.filters.obtain.removed = not addon.db.profile.filters.obtain.removed end,
						},
						achievement = {
							order	= 15,
							type	= "toggle",
							name	= L["Achievement"],
							desc	= L["ACHIEVEMENT_DESC"],
							get		= function() return addon.db.profile.filters.obtain.achievement end,
							set		= function() addon.db.profile.filters.obtain.achievement = not addon.db.profile.filters.obtain.achievement end,
						},
						originalwow = {
							order	= 20,
							type	= "toggle",
							name	= L["Old World"],
							desc	= L["ORIGINAL_WOW_DESC"],
							get		= function() return addon.db.profile.filters.obtain.originalwow end,
							set		= function() addon.db.profile.filters.obtain.originalwow = not addon.db.profile.filters.obtain.originalwow end,
						},
						bc = {
							order	= 21,
							type	= "toggle",
							name	= L["Burning Crusade"],
							desc	= L["BC_WOW_DESC"],
							get		= function() return addon.db.profile.filters.obtain.bc end,
							set		= function() addon.db.profile.filters.obtain.bc = not addon.db.profile.filters.obtain.bc end,
						},
						wrath = {
							order	= 22,
							type	= "toggle",
							name	= L["Wrath of the Lich King"],
							desc	= L["LK_WOW_DESC"],
							get		= function() return addon.db.profile.filters.obtain.wrath end,
							set		= function() addon.db.profile.filters.obtain.wrath = not addon.db.profile.filters.obtain.wrath end,
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
						BOP = {
							order	= 4,
							type	= "toggle",
							name	= L["BOAFilter"],
							desc	= L["BOA_DESC"],
							get		= function() return addon.db.profile.filters.binding.itemboa end,
							set		= function() addon.db.profile.filters.binding.itemboa = not addon.db.profile.filters.binding.itemboa end,
						},
					},
				},
				profs = {
					order	= 6,
					type	= "group",
					name	= L["Profession"],
					desc	= L["FILTERING_PROF_DESC"],
					args	= {
						header1 = {
							order	= 1,
							type	= "header",
							name	= L["Professon Filtering Options"],
						},
						desc = {
							order	= 2,
							type	= "description",
							name	= L["FILTERING_PROF_DESC"] .. "\n",
						},
						alch = {
							order	= 3,
							type	= "toggle",
							name	= L["Alchemy"],
							desc	= L["ALCH_DESC"],
							get		= function() return addon.db.profile.filters.profs.alch end,
							set		= function() addon.db.profile.filters.profs.alch = not addon.db.profile.filters.profs.alch end,
							disabled = true,
						},
						bs = {
							order	= 4,
							type	= "toggle",
							name	= L["Blacksmithing"],
							desc	= L["BS_DESC"],
							get		= function() return addon.db.profile.filters.profs.bs end,
							set		= function() addon.db.profile.filters.profs.bs = not addon.db.profile.filters.profs.bs end,
							disabled = true,
						},
						cook = {
							order	= 5,
							type	= "toggle",
							name	= L["Cooking"],
							desc	= L["COOK_DESC"],
							get		= function() return addon.db.profile.filters.profs.cook end,
							set		= function() addon.db.profile.filters.profs.cook = not addon.db.profile.filters.profs.cook end,
							disabled = true,
						},
						ench = {
							order	= 6,
							type	= "toggle",
							name	= L["Enchanting"],
							desc	= L["ENCH_DESC"],
							get		= function() return addon.db.profile.filters.profs.ench end,
							set		= function() addon.db.profile.filters.profs.ench = not addon.db.profile.filters.profs.ench end,
							disabled = true,
						},
						eng = {
							order	= 7,
							type	= "toggle",
							name	= L["Engineering"],
							desc	= L["ENG_DESC"],
							get		= function() return addon.db.profile.filters.profs.eng end,
							set		= function() addon.db.profile.filters.profs.eng = not addon.db.profile.filters.profs.eng end,
						},
						fa = {
							order	= 8,
							type	= "toggle",
							name	= L["First Aid"],
							desc	= L["FA_DESC"],
							get		= function() return addon.db.profile.filters.profs.fa end,
							set		= function() addon.db.profile.filters.profs.fa = not addon.db.profile.filters.profs.fa end,
							disabled = true,
						},
						insc = {
							order	= 9,
							type	= "toggle",
							name	= L["Inscription"],
							desc	= L["INSC_DESC"],
							get		= function() return addon.db.profile.filters.profs.insc end,
							set		= function() addon.db.profile.filters.profs.insc = not addon.db.profile.filters.profs.insc end,
							disabled = true,
						},
						jc = {
							order	= 10,
							type	= "toggle",
							name	= L["Jewelcrafting"],
							desc	= L["JC_DESC"],
							get		= function() return addon.db.profile.filters.profs.jc end,
							set		= function() addon.db.profile.filters.profs.jc = not addon.db.profile.filters.profs.jc end,
							disabled = true,
						},
						lw = {
							order	= 11,
							type	= "toggle",
							name	= L["Leatherworking"],
							desc	= L["LW_DESC"],
							get		= function() return addon.db.profile.filters.profs.lw end,
							set		= function() addon.db.profile.filters.profs.lw = not addon.db.profile.filters.profs.lw end,
							disabled = true,
						},
						smelt = {
							order	= 12,
							type	= "toggle",
							name	= L["Smelting"],
							desc	= L["SMELT_DESC"],
							get		= function() return addon.db.profile.filters.profs.smelt end,
							set		= function() addon.db.profile.filters.profs.smelt = not addon.db.profile.filters.profs.smelt end,
							disabled = true,
						},
						tailor = {
							order	= 13,
							type	= "toggle",
							name	= L["Tailoring"],
							desc	= L["TAILOR_DESC"],
							get		= function() return addon.db.profile.filters.profs.tailor end,
							set		= function() addon.db.profile.filters.profs.tailor = not addon.db.profile.filters.profs.tailor end,
						},
						fish = {
							order	= 14,
							type	= "toggle",
							name	= L["Fishing"],
							desc	= L["FISH_DESC"],
							get		= function() return addon.db.profile.filters.profs.fish end,
							set		= function() addon.db.profile.filters.profs.fish = not addon.db.profile.filters.profs.fish end,
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
								Bloodsail = {
									order	= 11,
									type	= "toggle",
									name	= BFAC["Bloodsail Buccaneers"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Bloodsail Buccaneers"]),
									get		= function() return addon.db.profile.filters.rep.bloodsail end,
									set		= function() addon.db.profile.filters.rep.bloodsail = not addon.db.profile.filters.rep.bloodsail end,
								},
								CenarionCircle = {
									order	= 12,
									type	= "toggle",
									name	= BFAC["Cenarion Circle"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Cenarion Circle"]),
									get		= function() return addon.db.profile.filters.rep.cenarioncircle end,
									set		= function() addon.db.profile.filters.rep.cenarioncircle = not addon.db.profile.filters.rep.cenarioncircle end,
								},
								TB = {
									order	= 13,
									type	= "toggle",
									name	= BFAC["Thorium Brotherhood"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Thorium Brotherhood"]),
									get		= function() return addon.db.profile.filters.rep.thoriumbrotherhood end,
									set		= function() addon.db.profile.filters.rep.thoriumbrotherhood = not addon.db.profile.filters.rep.thoriumbrotherhood end,
								},
								Timbermaw = {
									order	= 14,
									type	= "toggle",
									name	= BFAC["Timbermaw Hold"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Timbermaw Hold"]),
									get		= function() return addon.db.profile.filters.rep.timbermaw end,
									set		= function() addon.db.profile.filters.rep.timbermaw = not addon.db.profile.filters.rep.timbermaw end,
								},
								Zandalar = {
									order	= 15,
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
								Skyguard = {
									order	= 21,
									type	= "toggle",
									name	= BFAC["Sha'tari Skyguard"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Sha'tari Skyguard"]),
									get		= function() return addon.db.profile.filters.rep.skyguard end,
									set		= function() addon.db.profile.filters.rep.skyguard = not addon.db.profile.filters.rep.skyguard end,
								},
								SSO = {
									order	= 22,
									type	= "toggle",
									name	= BFAC["Shattered Sun Offensive"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Shattered Sun Offensive"]),
									get		= function() return addon.db.profile.filters.rep.shatteredsun end,
									set		= function() addon.db.profile.filters.rep.shatteredsun = not addon.db.profile.filters.rep.shatteredsun end,
								},
								Sporeggar = {
									order	= 23,
									type	= "toggle",
									name	= BFAC["Sporeggar"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Sporeggar"]),
									get		= function() return addon.db.profile.filters.rep.sporeggar end,
									set		= function() addon.db.profile.filters.rep.sporeggar = not addon.db.profile.filters.rep.sporeggar end,
								},
								Violeteye = {
									order	= 24,
									type	= "toggle",
									name	= BFAC["The Violet Eye"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["The Violet Eye"]),
									get		= function() return addon.db.profile.filters.rep.violeteye end,
									set		= function() addon.db.profile.filters.rep.violeteye = not addon.db.profile.filters.rep.violeteye end,
								},
								Netherwing = {
									order	= 25,
									type	= "toggle",
									name	= BFAC["Netherwing"],
									desc	= format(L["SPECIFIC_REP_DESC"],BFAC["Netherwing"]),
									get		= function() return addon.db.profile.filters.rep.netherwing end,
									set		= function() addon.db.profile.filters.rep.netherwing = not addon.db.profile.filters.rep.netherwing end,
								},
							},
						},
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
								WrathCommon1 = {
									order	= 12,
									type	= "toggle",
									name	= wrathcommon1,
									desc	= format(L["SPECIFIC_REP_DESC"],wrathcommon1),
									get		= function() return addon.db.profile.filters.rep.wrathcommon1 end,
									set		= function() addon.db.profile.filters.rep.wrathcommon1 = not addon.db.profile.filters.rep.wrathcommon1 end,
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
								WrathCommon2 = {
									order	= 26,
									type	= "toggle",
									name	= wrathcommon2,
									desc	= format(L["SPECIFIC_REP_DESC"],wrathcommon2),
									get		= function() return addon.db.profile.filters.rep.wrathcommon2 end,
									set		= function() addon.db.profile.filters.rep.wrathcommon2 = not addon.db.profile.filters.rep.wrathcommon2 end,
									disabled = true,
								},
								WrathCommon3 = {
									order	= 27,
									type	= "toggle",
									name	= wrathcommon3,
									desc	= format(L["SPECIFIC_REP_DESC"],wrathcommon3),
									get		= function() return addon.db.profile.filters.rep.wrathcommon3 end,
									set		= function() addon.db.profile.filters.rep.wrathcommon3 = not addon.db.profile.filters.rep.wrathcommon3 end,
									disabled = true,
								},
								WrathCommon4 = {
									order	= 28,
									type	= "toggle",
									name	= wrathcommon4,
									desc	= format(L["SPECIFIC_REP_DESC"],wrathcommon4),
									get		= function() return addon.db.profile.filters.rep.wrathcommon4 end,
									set		= function() addon.db.profile.filters.rep.wrathcommon4 = not addon.db.profile.filters.rep.wrathcommon4 end,
									disabled = true,
								},
								WrathCommon5 = {
									order	= 27,
									type	= "toggle",
									name	= wrathcommon5,
									desc	= format(L["SPECIFIC_REP_DESC"],wrathcommon5),
									get		= function() return addon.db.profile.filters.rep.wrathcommon5 end,
									set		= function() addon.db.profile.filters.rep.wrathcommon5 = not addon.db.profile.filters.rep.wrathcommon5 end,
									disabled = true,
								},
							},
						},
						factioncity = {
							order	= 6,
							type	= "group",
							name	= L["Main Factions"],
							desc	= L["FILTERING_MAINFACTION_DESC"],
							args	= {
								header1 = {
									order	= 1,
									type	= "header",
									name	= L["Main Factions"],
								},
								header2 = {
									order	= 2,
									type	= "header",
									name	= L["Reputation Filtering Options"],
								},
								desc = {
									order	= 3,
									type	= "description",
									name	= L["FILTERING_MAINFACTION_DESC"] .. "\n",
								},
								City1 = {
									order	= 10,
									type	= "toggle",
									name	= city1,
									desc	= format(L["SPECIFIC_REP_DESC"],city1),
									get		= function() return addon.db.profile.filters.rep.city1 end,
									set		= function() addon.db.profile.filters.rep.city1 = not addon.db.profile.filters.rep.city1 end,
								},
								City2 = {
									order	= 11,
									type	= "toggle",
									name	= city1,
									desc	= format(L["SPECIFIC_REP_DESC"],city2),
									get		= function() return addon.db.profile.filters.rep.city2 end,
									set		= function() addon.db.profile.filters.rep.city2 = not addon.db.profile.filters.rep.city2 end,
								},
								City3 = {
									order	= 12,
									type	= "toggle",
									name	= city3,
									desc	= format(L["SPECIFIC_REP_DESC"],city3),
									get		= function() return addon.db.profile.filters.rep.city3 end,
									set		= function() addon.db.profile.filters.rep.city3 = not addon.db.profile.filters.rep.city3 end,
								},
								City4 = {
									order	= 13,
									type	= "toggle",
									name	= city4,
									desc	= format(L["SPECIFIC_REP_DESC"],city4),
									get		= function() return addon.db.profile.filters.rep.city4 end,
									set		= function() addon.db.profile.filters.rep.city4 = not addon.db.profile.filters.rep.city4 end,
								},
								City5 = {
									order	= 14,
									type	= "toggle",
									name	= city5,
									desc	= format(L["SPECIFIC_REP_DESC"],city5),
									get		= function() return addon.db.profile.filters.rep.city5 end,
									set		= function() addon.db.profile.filters.rep.city5 = not addon.db.profile.filters.rep.city5 end,
								},
							},
						},
						factionpvp = {
							order	= 6,
							type	= "group",
							name	= L["PVP Factions"],
							desc	= L["FILTERING_PVPFACTION_DESC"],
							args	= {
								header1 = {
									order	= 1,
									type	= "header",
									name	= L["PVP Factions"],
								},
								header2 = {
									order	= 2,
									type	= "header",
									name	= L["Reputation Filtering Options"],
								},
								desc = {
									order	= 3,
									type	= "description",
									name	= L["FILTERING_PVPFACTION_DESC"] .. "\n",
								},
								PVP1 = {
									order	= 10,
									type	= "toggle",
									name	= pvp1,
									desc	= format(L["SPECIFIC_REP_DESC"],pvp1),
									get		= function() return addon.db.profile.filters.rep.pvp1 end,
									set		= function() addon.db.profile.filters.rep.pvp1 = not addon.db.profile.filters.rep.pvp1 end,
								},
								PVP2 = {
									order	= 11,
									type	= "toggle",
									name	= pvp1,
									desc	= format(L["SPECIFIC_REP_DESC"],pvp2),
									get		= function() return addon.db.profile.filters.rep.pvp2 end,
									set		= function() addon.db.profile.filters.rep.pvp2 = not addon.db.profile.filters.rep.pvp2 end,
								},
								PVP3 = {
									order	= 12,
									type	= "toggle",
									name	= pvp3,
									desc	= format(L["SPECIFIC_REP_DESC"],pvp3),
									get		= function() return addon.db.profile.filters.rep.pvp3 end,
									set		= function() addon.db.profile.filters.rep.pvp3 = not addon.db.profile.filters.rep.pvp3 end,
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
							name	= L["General Options"],
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
							func	= function(info) addon:Scan(false) end,
						},
						textdump = {
							order	= 13,
							type	= "execute",
							name	= L["Text Dump"],
							desc	= L["TEXT_DUMP_DESC"],
							func	= function(info) addon:Scan(true) end,
						},
						exclusionlist = {
							order	= 14,
							type	= "execute",
							name	= L["View Exclusion List"],
							desc	= L["VIEW_EXCLUSION_LIST_DESC"],
							func	= function(info) addon:ViewExclusionList() end,
						},
						clearexclusionlist = {
							order	= 15,
							type	= "execute",
							name	= L["Clear Exclusion List"],
							desc	= L["CLEAR_EXCLUSION_LIST_DESC"],
							func	= function(info) addon:ClearExclusionList() end,
						},
						resetallfilters = {
							order	= 16,
							type	= "execute",
							name	= L["Reset All Filters"],
							desc	= L["RESET_DESC"],
							func	= function(info) addon.resetFilters() end,
						},
						resetguiwindow = {
							order	= 17,
							type	= "execute",
							name	= L["Reset Window Position"],
							desc	= L["RESET_WINDOW_DESC"],
							func	= function(info) addon:ResetGUI() end,
						},
						spacer1 = {
							order	= 19,
							type	= "description",
							name	= "\n",
						},
						header1a = {
							order	= 20,
							type	= "header",
							name	= L["Main Filter Options"],
						},
						mainfilter_desc = {
							order	= 21,
							type	= "description",
							name	= L["MAINFILTER_OPTIONS_DESC"] .. "\n",
						},
						includefiltered = {
							order	= 22,
							type	= "toggle",
							name	= L["Include Filtered"],
							desc	= L["FILTERCOUNT_DESC"],
							get		= function() return addon.db.profile.includefiltered end,
							set		= function() addon.db.profile.includefiltered = not addon.db.profile.includefiltered end,
						},
						includeexcluded = {
							order	= 23,
							type	= "toggle",
							name	= L["Include Excluded"],
							desc	= L["EXCLUDECOUNT_DESC"],
							get		= function() return addon.db.profile.includeexcluded end,
							set		= function() addon.db.profile.includeexcluded = not addon.db.profile.includeexcluded end,
						},
						ignoreexclusionlist = {
							order	= 24,
							type	= "toggle",
							name	= L["Display Exclusions"],
							desc	= L["DISPLAY_EXCLUSION_DESC"],
							get		= function() return addon.db.profile.ignoreexclusionlist end,
							set		= function() addon.db.profile.ignoreexclusionlist = not addon.db.profile.ignoreexclusionlist end,
						},
						spacer2 = {
							order	= 39,
							type	= "description",
							name	= "\n",
						},
						header3 = {
							order	= 40,
							type	= "header",
							name	= L["Sorting Options"],
						},
						sort_desc =	{
							order	= 41,
							type	= "description",
							name	= L["SORTING_OPTIONS_DESC"] .. "\n",
						},
						sorting = {
							order	= 45,
							type	= "select",
							name	= L["Sorting"],
							desc	= L["SORTING_DESC"],
							get		= function() return addon.db.profile.sorting end,
							set		= function(info,name) addon.db.profile.sorting = name end,
							values	= function() return {Name = L["Name"], Acquisition = L["Acquisition"], Location = L["Location"]} end,
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

local documentation = nil

local function giveDocs()

	if (not documentation) then

		documentation = {
			order = 1,
			type = "group",
			name = L["ARL Documentation"],
			desc = L["ARL_DOC_DESC"],
			args = {
				header1 = {
					order	= 1,
					type	= "header",
					name	= L["ARL Documentation"],
				},
				desc1 = {
					order	= 2,
					type	= "description",
					name	= L["ARL_DOC_DESC"],
				},
				header2 = {
					order	= 3,
					type	= "header",
					name	= L["Using Filters"],
				},
				desc2 = {
					order	= 4,
					type	= "description",
					name	= L["USING_FILTERS_DESC"],
				},
				header3 = {
					order	= 5,
					type	= "header",
					name	= L["Common Issues"],
				},
				desc3 = {
					order	= 6,
					type	= "description",
					name	= L["COMMON_ISSUES_DESC"],
				},
				header4 = {
					order	= 7,
					type	= "header",
					name	= L["Reporting Bugs"],
				},
				desc4 = {
					order	= 8,
					type	= "description",
					name	= L["REPORTING_BUGS_DESC"],
				},
				header5 = {
					order	= 9,
					type	= "header",
					name	= L["Exclusion Issues"],
				},
				desc5 = {
					order	= 10,
					type	= "description",
					name	= L["EXCLUSION_ISSUES_DESC"],
				},
				header6 = {
					order	= 11,
					type	= "header",
					name	= L["Map Issues"],
				},
				desc6 = {
					order	= 12,
					type	= "description",
					name	= L["MAP_ISSUES_DESC"],
				},
				header7 = {
					order	= 13,
					type	= "header",
					name	= L["Game Commands"],
				},
				desc7 = {
					order	= 14,
					type	= "description",
					name	= L["GAME_COMMANDS_DESC"],
				},
			},
		}

	end

	return documentation

end

local displayoptions = nil

local function giveDisplay()

	if (not displayoptions) then

	displayoptions = {
			order = 1,
			type = "group",
			name = L["Display Options"],
			desc = L["DISPLAY_OPTIONS_DESC"],
			args = {
				display_desc =	{
					order	= 1,
					type	= "description",
					name	= L["MAP_OPTIONS_DESC"] .. "\n",
				},
				scanbuttonlocation = {
					order	= 2,
					type	= "select",
					name	= L["Scan Button Position"],
					desc	= L["SCANBUTTONPOSITION_DESC"],
					get		= function() return addon.db.profile.scanbuttonlocation end,
					set		= function(info,name) addon.db.profile.scanbuttonlocation = name end,
					values	= function() return {TR = L["Top Right"], TL = L["Top Left"], BR = L["Bottom Right"], BL = L["Bottom Left"]} end,
				},
				uiscale = {
					order	= 3,
					type	= "range",
					name	= L["UI Scale"],
					desc	= L["UI_SCALE_DESC"],
					min		= .5,
					max		= 1.5,
					step	= .05,
					bigStep = .05,
					get		= function() return addon.db.profile.frameopts.uiscale end,
					set		= function(info, v)
								addon.db.profile.frameopts.uiscale = v
								if (addon.Frame) then addon.Frame:SetScale(v) end
							  end,
				},
				fontsize = {
					order	= 4,
					type	= "range",
					name	= L["Font Size"],
					desc	= L["FONT_SIZE_DESC"],
					min		= 6,
					max		= 20,
					step	= 1,
					bigStep = 1,
					get		= function() return addon.db.profile.frameopts.fontsize end,
					set		= function(info, v) addon.db.profile.frameopts.fontsize = v end,
				},
				closegui = {
					order	= 5,
					type	= "toggle",
					name	= L["Close GUI"],
					desc	= L["CLOSEGUI_DESC"],
					get		= function() return addon.db.profile.closeguionskillclose end,
					set		= function() addon.db.profile.closeguionskillclose = not addon.db.profile.closeguionskillclose end,
				},
				hidepopup = {
					order	= 6,
					type	= "toggle",
					name	= L["Hide Pop-Up"],
					desc	= L["HIDEPOPUP_DESC"],
					get		= function() return addon.db.profile.hidepopup end,
					set		= function() addon.db.profile.hidepopup = not addon.db.profile.hidepopup end,
				},
				spacer1 = {
					order	= 10,
					type	= "description",
					name	= "\n",
				},
				tooltip_header = {
					order	= 11,
					type	= "header",
					name	= L["Tooltip Options"],
				},
				tooltip_desc =	{
					order	= 12,
					type	= "description",
					name	= L["TOOLTIP_OPTIONS_DESC"] .. "\n",
				},
				tooltipscale = {
					order	= 20,
					type	= "range",
					name	= L["Tooltip Scale"],
					desc	= L["TOOLTIP_SCALE_DESC"],
					min		= .5,
					max		= 1.5,
					step	= .05,
					bigStep = .05,
					get		= function() return addon.db.profile.frameopts.tooltipscale end,
					set		= function(info, v)
								addon.db.profile.frameopts.tooltipscale = v
								if (CollectinatorTooltip) then CollectinatorTooltip:SetScale(v) end
								if (CollectinatorSpellTooltip) then CollectinatorSpellTooltip:SetScale(v) end
							  end,
				},
				acquiretooltiplocation = {
					order	= 21,
					type	= "select",
					name	= L["Tooltip (Acquire) Position"],
					desc	= L["ACQUIRETOOLTIPPOSITION_DESC"],
					get		= function() return addon.db.profile.acquiretooltiplocation end,
					set		= function(info,name) addon.db.profile.acquiretooltiplocation = name end,
					values	= function() return {Right = L["Right"], Left = L["Left"], Top = L["Top"], Bottom = L["Bottom"], Off = L["Off"], Mouse = L["Mouse"]} end,
				},
				spelltooltiplocation = {
					order	= 22,
					type	= "select",
					name	= L["Tooltip (Recipe) Position"],
					desc	= L["SPELLTOOLTIPPOSITION_DESC"],
					get		= function() return addon.db.profile.spelltooltiplocation end,
					set		= function(info,name) addon.db.profile.spelltooltiplocation = name end,
					values	= function() return {Right = L["Right"], Left = L["Left"], Top = L["Top"], Bottom = L["Bottom"], Off = L["Off"]} end,
				},
			},
		}


	end

	return displayoptions

end

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
	self:RegisterModuleOptions("Display", giveDisplay(), L["Display Options"])
	self:RegisterModuleOptions("Documentation", giveDocs(), L["ARL Documentation"])
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
