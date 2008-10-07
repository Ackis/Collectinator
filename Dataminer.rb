=begin

****************************************************************************************

Dataminer.rb

Datamining for all of Collectinator

$Date: 2008-09-24 16:03:03 -0600 (Wed, 24 Sep 2008) $
$Rev: 82026 $

****************************************************************************************

=end

include Enumerable

$LOAD_PATH << './DataMiner'
require "core.rb"
require "wowdb_maps.rb"
require "wowdb_factions.rb"
require "wowdb_pets_and_mounts.rb"

generator_start = Time.now

# Some globals for use within the scraper
$quests = Hash.new
$monsters = Hash.new
$vendors = Hash.new
$localstring = Array.new

# Creates the faction database

def create_faction_db()

	puts "Generating Reputation file..."

	# Open the reputation file
	replua = File.open("./DB/Reputation.lua", "w")

	# Faction file header
	header=<<EOF
--[[

************************************************************************

Reputation.lua

Reputation data for all of Collectinator

Auto-generated using Dataminer.rb	
Entries to this file will be overwritten

************************************************************************

\$Date: \$
\$Rev: \$

************************************************************************

Format:

	self:addLookupList(RepDB, Rep ID, Rep Name)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()

function addon:InitReputation(RepDB)

EOF

	replua.puts(header)

	flags = {
		"Argent Dawn" => 96,
		"Cenarion Circle" => 97,
		"Thorium Brotherhood" => 98,
		"Timbermaw Hold" =>99,
		"Zandalar Tribe" => 100,
		"The Aldor" => 101,
		"Ashtongue Deathsworn" => 102,
		"Cenarion Expedition" => 103,
		"Thrallmar" => 104,
		"Honor Hold" => 104,
		"The Consortium" => 105,
		"Keepers of Time" => 106,
		"Lower City" => 107,
		"The Mag'har" => 108,
		"Kurenai" => 108,
		"The Scale of the Sands" => 109,
		"The Scryers" => 110,
		"The Sha'tar" => 111,
		"Shattered Sun Offensive" => 112,
		"Sporeggar" => 113,
		"The Violet Eye" => 114,
		"Argent Crusade" => 115,
		"Frenzyheart Tribe" => 116,
		"Knights of the Ebon Blade" => 117,
		"Kirin Tor" => 118,
		"The Sons of Hodir" => 119,
		"The Kalu'ak" => 120,
		"The Oracles" => 121,
		"The Wyrmrest Accord" => 122,
		"The Silver Convenant" => 123,
		"The Sunreavers" => 124,
		"Explorer's League" => 125,
		"Valiance Expedition" => 126,
		"The Hand of Vengeance" => 127,
		"The Taunka" => 128,
		"Warsong Offensive" => 129,
	}

	# Get the list of reputations 	 
	factions = WoWDBFactions.new

	$reps = factions.get_faction_list 

	# Parse the list and add the info to the file and a reputations look up file
	$reps.keys.sort_by {|key|	

		if flags.has_key?(key)
			$reps[key]={:id => $reps[key][:id], :flag => flags[key]}	
		else	
			$reps[key] = {:id => $reps[key][:id]} 
		end

		$reps[key][:id]}.each do |k|
			replua.puts "\tself:addLookupList(RepDB, #{$reps[k][:id]}, BFAC[\"#{k}\"]) -- Acquire Flag: #{$reps[k][:flag]}"

	end

	# File footer
	replua.puts "\nend"
	replua.close

end


def create_companion_db(file,type,db,funcstub,list,maps,petsandmounts,ignorelist)

	puts "Generating #{type} file .. #{list.length} entries to process"
	companion_lua = File.open(file, "w")

	header =<<EOF
--[[

************************************************************************

#{file}

#{type} data for all of Ackis Recipe List

Auto-generated using ARLDataminer.rb
Entries to this file will be overwritten

#{list.length} found from data mining.  #{ignorelist.length} ignored.

************************************************************************

\$Date: \$
\$Rev: \$

************************************************************************

Format:

	self:AddCompanion(PetDB, SpellID, Item ID, Rarity)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:#{funcstub}(#{db})

EOF

	companion_lua.puts header

	count = 0

	ordered_list = list.keys.sort_by do |name|

		if count == 50

			print "\n"
			count = 0

		end

		print "."

		count = count + 1
		STDOUT.flush

		petsandmounts.add_item_details(list[name])

		list[name][:spell_id]

	end

	puts "\nProcessing #{type} data..."

	flags = Array.new
	acquire = Array.new

	# Parse the ordered list and print out the detailed information into the file
	ordered_list.each do |name|

		companiondetail = list[name]

		companion_lua.puts "\t-- #{name} - #{companiondetail[:spell_id]}"
		companion_lua.puts "\t-- #{companiondetail}"

		companiondetail[:method].split(",").each do |method|

			case method

			# vendors
			when 'sold-by'

				flags << 4
				data = companiondetail[:method_vendors]

				# Reputation vendor
				unless companiondetail[:faction].nil?

					companion_lua.puts "\t-- #{companiondetail[:faction]} - #{companiondetail[:faction_level]}"
					flags << $reps[companiondetail[:faction]][:flag]

					data.each do |npc|

						unless npc[:id] == 0

							acquire << {"type" => 6, "id" => npc[:id], "faction" => $reps[companiondetail[:faction]][:id],"factionlevel" => (factionlevels.has_key?(companiondetail[:faction_level]) ? factionlevels[companiondetail[:faction_level]] : companiondetail[:faction_level])}
							$vendors[npc[:id]] = {:name => npc[:name]}
							react_a = npc[:react][0].nil? ? 0 : npc[:react][0]
							react_h = npc[:react][1].nil? ? 0 : npc[:react][1]
							$vendors[npc[:id]][:faction] = react_h < 3 && react_a < 3 ? 0 : react_h == 3 && react_a < 3 ? 1 : react_a == 3 && react_h < 3 ? 2 : 4

							if react_a < 3
								flags << 1
							end

							if react_h < 3
								flags << 2
							end

							if npc[:locs]

								npc[:locs].each do |loc|

									if $dungeons[loc]

										flags << 5
										companion_lua.puts "\t-- Instance: #{loc} - #{$dungeons[loc]}"

									end

									if $raids[loc]

										flags << 6
										companion_lua.puts "\t-- Raid: #{loc} - #{$raids[loc][:name]}"

									end

								end

							else

								companion_lua.puts "\t-- No location information"

							end

						end

					end

				# Normal vendor
				else

					data.each do |npc|

						unless npc[:id] == 0

							acquire << {"type" => 2, "id" => npc[:id]}
							$vendors[npc[:id]] = {:name => npc[:name]}
							react_a = npc[:react][0].nil? ? 0 : npc[:react][0]
							react_h = npc[:react][1].nil? ? 0 : npc[:react][1]
							$vendors[npc[:id]][:faction] = react_h < 3 && react_a < 3 ? 0 : react_h == 3 && react_a < 3 ? 1 : react_a == 3 && react_h < 3 ? 2 : 4

							if react_a < 3

								flags << 1

							end

							if react_h < 3

								flags << 2

							end

							if npc[:locs]

								npc[:locs].each do |loc|

									if $dungeons[loc]

										flags << 5
										companion_lua.puts "\t-- Instance: #{loc} - #{$dungeons[loc]}"

									end

									if $raids[loc]

										flags << 6
										companion_lua.puts "\t-- Raid: #{loc} - #{$raids[loc][:name]}"

									end

								end

							else

								companion_lua.puts "\t-- No location information"

							end

						end

					end

				end

				companion_lua.puts "\t-- Vendor"

			# Mob drops
			when 'dropped-by'

				data = companiondetail[:method_drops]

				# Instance, mob, or raid drop
				unless data.length > 10

					flags << 5 #instance = 5, raid = 6

					data.each do |npc|

						unless npc[:id] == 0

							acquire << {"type" => 3, "id" => npc[:id]}
							$monsters[npc[:id]] = {:name => npc[:name]}

							if npc[:locs]

								npc[:locs].each do |loc|

									if $dungeons[loc]

										flags << 5
										companion_lua.puts "\t-- Instance: #{loc} - #{$dungeons[loc]}"

									end

									if $raids[loc]

										flags << 6
										companion_lua.puts "\t-- Raid: #{loc} - #{$raids[loc][:name]}"

									end

								end

							else

								companion_lua.puts "\t-- No location information"

							end

						end

					end

					companion_lua.puts "\t-- Mob Drop"

				# World drop
				else

					flags << 10
					companion_lua.puts "\t-- World Drop"
					acquire << {"type" => 7, "id" => companiondetail[:rarity]}

				end

			# Quest reward
			when 'rewardfrom'

				data = companiondetail[:method_quests]
				flags << 8

				data.each do |quest|

					acquire << {"type" => 4, "id" => quest[:id]}
					$quests[quest[:id]] = {:name => quest[:name]}

					if quest[:side] == 1
						flags << 1 << 2
						$quests[quest[:id]][:faction] = 0

					elsif quest[:side] == 2

						flags << 1
						$quests[quest[:id]][:faction] = 1

					elsif quest[:side] == 4

						flags << 2
						$quests[quest[:id]][:faction] = 2

					end

					quest[:questinfo] = maps.get_quest_map_info(quest[:id])

					if quest[:questinfo]

						quest[:questinfo][:quest_zones].values do |loc|

							if $dungeons[loc]

								flags << 5
								companion_lua.puts "\t-- Instance: #{loc} - #{$dungeons[loc][:name]}"

							end

							if $raids[loc]

								flags << 6
								companion_lua.puts "\t-- Raid: #{loc} - #{$raids[loc][:name]}"

							end

						end

					else

						companion_lua.puts "\t-- No location information"

					end

				end

				companion_lua.puts "\t-- Quest Reward"

			when 'crafted'

				data = companiondetail[:method_crafted]
				companion_lua.puts "\t-- Crafted"

			when 'redemption'

				data = companiondetail[:method_crafted]
				companion_lua.puts "\t-- Redemption"

			else

				companion_lua.puts "\t-- Unknown"

			end

		end

		if ignorelist.include?(companiondetail[:spell_id])

			companion_lua.print("\t--")

		else

			companion_lua.print("\t")

		end

		companion_lua.puts "self:AddCompanion(PetDB, #{companiondetail[:spell_id]}, #{companiondetail[:id]}, #{companiondetail[:rarity]})"

		# Compress, remove duplicates and sort the list of flags
		flags.compact!
		flags.uniq!
		flags.sort!

		if flags.length == 0

			companion_lua.puts "\t-- No filter flags"

		else

			if ignorelist.include?(companiondetail[:spellid])

				companion_lua.print("\t--")

			else

				companion_lua.print("\t")

			end

			companion_lua.puts "self:addTradeFlags(RecipeDB, #{companiondetail[:spellid]}, #{flags.join(",")})"

		end

		flags.clear

        # acquire info  
		if acquire.length == 0 

			companion_lua.puts "\t-- No acquire information"

		else

			acquiredordered = acquire.sort_by { |entry| entry["id"] }

			temp = []

			for id in %w(5 7 3 4 1 2 6)

				for entry in acquiredordered.select { |entry| entry["type"] == id.to_i }

					temp << [entry["type"],entry["faction"],entry["factionlevel"],entry["id"]].compact

				end

			end 

			temp.flatten!

			if ignorelist.include?(companiondetail[:spellid])

				companion_lua.print("\t--")

			else

				companion_lua.print("\t")

			end


			companion_lua.puts "self:addTradeAcquire(RecipeDB, #{companiondetail[:spellid]}, #{temp.join(", ")})"

		end
	 
		acquire.clear  

		companion_lua.puts ""

	end

	companion_lua.puts "end"
	companion_lua.close

	print "Processing #{type} complete...\n"
	STDOUT.flush

end

petsandmounts = WoWDBPetsAndMounts.new
maps = WoWDBMaps.new

$dungeons = maps.get_dungeon_maps
$raids = maps.get_raid_maps

create_faction_db()

pets = petsandmounts.get_pet_list

create_companion_db("./DB/PetDatabase.lua","Pet Database","PetDB","MakeMiniPetTable",pets,maps,petsandmounts,[25849,23012,23013,39478,39479])

mounts = petsandmounts.get_mount_list

create_companion_db("./DB/MountDatabase.lua","Mount Database","MountDB","MakeMountTable",mounts,maps,petsandmounts,[])

puts ""
puts "Finished processing run time was #{((Time.now).to_i-generator_start.to_i)} seconds"