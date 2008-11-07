=begin

****************************************************************************************

Dataminer.rb

Datamining for all of Collectinator

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

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

# Creates the TCG listing database

def create_tcg_db()


	puts "Generating TCG file..."

	replua = File.open("./DB/TCG.lua", "w")

	header=<<EOF
--[[

************************************************************************

TCG.lua

TCG Set data for all of Collectinator

Auto-generated using Dataminer.rb	
Entries to this file will be overwritten

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(TCGDB, TCG ID, TCG Name)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:InitTCG(TCGDB)

	self:addLookupList(TCGDB, 1, "Heroes of Azeroth")
	self:addLookupList(TCGDB, 2, "Beyond the Dark Portal")
	self:addLookupList(TCGDB, 3, "Fires of Outland")
	self:addLookupList(TCGDB, 4, "March of the Legion")
	self:addLookupList(TCGDB, 5, "Servants of the Betrayer")
	self:addLookupList(TCGDB, 6, "Hunt for Illidan")
	self:addLookupList(TCGDB, 7, "Drums of War")
	self:addLookupList(TCGDB, 8, "Special Event")
	self:addLookupList(TCGDB, 9, "CE")

end

EOF

	replua.puts(header)

end

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

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:addLookupList(RepDB, Rep ID, Rep Name)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)
local BFAC				= LibStub("LibBabble-Faction-3.0"):GetLookupTable()

function addon:InitReputation(RepDB)

EOF

	replua.puts(header)

	flags = {
		"Bloodsail Buccaneers" => 40,
		"Sporeggar" => 40,
		"Sha'tari Skyguard" => 41,
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

def create_companion_db(file,type,db,funcstub,list,maps,petsandmounts,ignorelist,specialcase,wrathignore)

	puts "Generating #{type} file .. #{list.length} entries to process"

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

		list[name][:spellid]

	end

	companion_lua = File.open(file, "w")

	header =<<EOF
--[[

************************************************************************

#{file}

#{type} data for all of Collectinator

Auto-generated using Dataminer.rb
Entries to this file will be overwritten

#{list.length} found from data mining.
#{ignorelist.length} ignored.
#{wrathignore.length} WotLK ignored.

************************************************************************

File date: @file-date-iso@ 
File revision: @file-revision@ 
Project revision: @project-revision@
Project version: @project-version@

************************************************************************

Format:

	self:AddCompanion(#{db}, SpellID, Item ID, Rarity)

************************************************************************

]]--

local MODNAME			= "Collectinator"
local addon				= LibStub("AceAddon-3.0"):GetAddon(MODNAME)

--local L					= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

function addon:#{funcstub}(#{db})

	local companioncount = 0

EOF

	companion_lua.puts header

	puts "\nProcessing #{type} data..."

	flags = Array.new
	acquire = Array.new

	# Parse the ordered list and print out the detailed information into the file
	ordered_list.each do |name|

		companiondetail = list[name]

		companion_lua.puts "\t-- #{name} - #{companiondetail[:spellid]}"
		companion_lua.puts "\t-- #{companiondetail}"
		companion_lua.print("\t-- Obtain information: ")

		companiondetail[:method].split(",").each do |method|

			case method

			# vendors
			when 'sold-by'

				flags << $flags["Vendor"]
				data = companiondetail[:method_vendors]
			
				# Reputation vendor
				unless companiondetail[:faction].nil?

					companion_lua.print("Reputation (#{companiondetail[:faction]} - #{companiondetail[:faction_level]}), ")
					flags << $reps[companiondetail[:faction]][:flag]

					data.each do |npc|

						unless npc[:id] == 0

							acquire << {"type" => $acquire["Reputation"], "id" => npc[:id], "faction" => $reps[companiondetail[:faction]][:id],"factionlevel" => (factionlevels.has_key?(companiondetail[:faction_level]) ? factionlevels[companiondetail[:faction_level]] : companiondetail[:faction_level])}
							$vendors[npc[:id]] = {:name => npc[:name]}

							unless npc[:react].nil?

								react_a = npc[:react][0].nil? ? 0 : npc[:react][0]
								react_h = npc[:react][1].nil? ? 0 : npc[:react][1]

								if react_a < 3
									flags << $flags["Alliance"]
								end

								if react_h < 3
									flags << $flags["Horde"]
								end

								$vendors[npc[:id]][:faction] = react_h < 3 && react_a < 3 ? 0 : react_h == 3 && react_a < 3 ? 1 : react_a == 3 && react_h < 3 ? 2 : 0

							else

								flags << $flags["Alliance"] << $flags["Horde"]

							end

							if npc[:locs]

								npc[:locs].each do |loc|

									if $dungeons[loc]

										flags << $flags["Instance"]
										companion_lua.print("Instance (#{loc} - #{$dungeons[loc][:name]}), ")

									elsif $raids[loc]

										flags << $flags["Raid"]
										companion_lua.print("Raid (#{loc} - #{$raids[loc][:name]}), ")

									end

								end

							end

						end

					end

				# Normal vendor
				else

					companion_lua.print("Vendor, ")

					data.each do |npc|

						unless npc[:id] == 0

							acquire << {"type" => $acquire["Vendor"], "id" => npc[:id]}
							$vendors[npc[:id]] = {:name => npc[:name]}

							unless npc[:react].nil?

								react_a = npc[:react][0].nil? ? 0 : npc[:react][0]
								react_h = npc[:react][1].nil? ? 0 : npc[:react][1]

								if react_a < 3
									flags << $flags["Alliance"]
								end

								if react_h < 3
									flags << $flags["Horde"]
								end

								$vendors[npc[:id]][:faction] = react_h < 3 && react_a < 3 ? 0 : react_h == 3 && react_a < 3 ? 1 : react_a == 3 && react_h < 3 ? 2 : 0

							else

								flags << $flags["Alliance"] << $flags["Horde"]

							end

							if npc[:locs]

								npc[:locs].each do |loc|

									if $dungeons[loc]

										flags << $flags["Instance"]
										companion_lua.print("Instance (#{loc} - #{$dungeons[loc][:name]}), ")

									elsif $raids[loc]

										flags << $flags["Raid"]
										companion_lua.print("Raid (#{loc} - #{$raids[loc][:name]}), ")

									end

								end

							end

						end

					end

				end

			# Mob drops
			when 'dropped-by'

				data = companiondetail[:method_drops]
				# Cheat and say that it's both horde/alliance
				flags << $flags["Alliance"] << $flags["Horde"]

				# Instance, mob, or raid drop
				unless data.length > 10

					companion_lua.print("Mob Drop, ")
					data.each do |npc|

						unless npc[:id] == 0

							acquire << {"type" => $acquire["Mob Drop"], "id" => npc[:id]}
							$monsters[npc[:id]] = {:name => npc[:name]}

							if npc[:locs]

								npc[:locs].each do |loc|

									if $dungeons[loc]

										flags << $flags["Instance"]
										companion_lua.print("Instance (#{loc} - #{$dungeons[loc][:name]}), ")

									elsif $raids[loc]

										flags << $flags["Raid"]
										companion_lua.print("Raid (#{loc} - #{$raids[loc][:name]}), ")

									else

										flags << $flags["Mob Drop"]

									end

								end

							end

						end

					end

				# World drop
				else

					# Cheat and say that it's both horde/alliance
					flags << $flags["Alliance"] << $flags["Horde"] << $flags["World Drop"]
					companion_lua.print("World Drop, ")
					acquire << {"type" => $acquire["World Drop"], "id" => companiondetail[:rarity]}

				end

			# Quest reward
			when 'rewardfrom'

				data = companiondetail[:method_quests]
				companion_lua.print("Quest, ")
				flags << $flags["Quest"]

				data.each do |quest|

					acquire << {"type" => $acquire["Quest"], "id" => quest[:id]}
					$quests[quest[:id]] = {:name => quest[:name]}

					if quest[:side] == 1
						flags << $flags["Alliance"] << $flags["Horde"]
						$quests[quest[:id]][:faction] = 0

					elsif quest[:side] == 2

						flags << $flags["Alliance"]
						$quests[quest[:id]][:faction] = 1

					elsif quest[:side] == 4

						flags << $flags["Horde"]
						$quests[quest[:id]][:faction] = 2

					end

					quest[:questinfo] = maps.get_quest_map_info(quest[:id])

					if quest[:questinfo]

						quest[:questinfo][:quest_zones].values do |loc|

							if $dungeons[loc]

								flags << $flags["Instance"]
								companion_lua.print("Instance (#{loc} - #{$dungeons[loc][:name]}), ")

							elsif $raids[loc]

								flags << $flags["Raid"]
								companion_lua.print("Raid (#{loc} - #{$raids[loc][:name]}), ")

							end

						end

					end

				end

			when 'crafted'

				craft = companiondetail[:method_crafted]

				# Cheat and say that it's both horde/alliance
				flags << $flags["Alliance"] << $flags["Horde"] << $flags["Crafted"]

				acquire << {"type" => $acquire["Crafted"], "id" => craft[:id], "factionlevel" => $proftable[craft[:skill]]}

				# Crafted item that is BoP means that it's for that profession only
				if companiondetail[:item_binds] == "BOP"

					companion_lua.print("Crafted BoP (#{craft[:skill]}), ")
					flags << $flags[craft[:skill]]

				else

					companion_lua.print("Crafted BoU, ")

				end

			when 'redemption'

				companion_lua.print("Redemption, ")
				# Cheat and say that it's both horde/alliance
				data = companiondetail[:method_redemption]
				flags << $flags["Alliance"] << $flags["Horde"]

				if $ce.include?(companiondetail[:spellid])

					acquire << {"type" => $acquire["Special Event"], "id" => 9}
					flags << $flags["CE"]

				elsif $events.include?(companiondetail[:spellid])

					acquire << {"type" => $acquire["Special Event"], "id" => 8}
					flags << $flags["Special Event"]

				elsif $tcg.include?(companiondetail[:spellid])

					acquire << {"type" => $acquire["Special Event"], "id" => $tcglist[companiondetail[:spellid]]}
					flags << $flags["TCG"]

				end


			else

				# Cheat and say that it's both horde/alliance
				flags << $flags["Alliance"] << $flags["Horde"]
				companion_lua.print("Unknown, ")

			end

		end
		companion_lua.print("\n")
		companion_lua.print("\t-- Flags: ")

		# Just add some text to identify which flags are which
		if flags.include?($flags["Alliance"])

			companion_lua.print("Alliance, ")

		end

		if flags.include?($flags["Horde"])

			companion_lua.print("Horde, ")

		end

		if flags.include?($flags["Instance"])

			companion_lua.print("Instance, ")

		end

		if flags.include?($flags["Raid"])

			companion_lua.print("Raid, ")

		end

		if companiondetail[:item_binds] == "BOU"

			companion_lua.print("BOU, ")
			flags << $flags["BOU"]

		end

		if companiondetail[:item_binds] == "BOP"

			companion_lua.print("BOP, ")
			flags << $flags["BOP"]

		end

		if companiondetail[:item_binds] == "BOA"

			companion_lua.print("BOA, ")
			flags << $flags["BOA"]

		end

		if specialcase[companiondetail[:spellid]]

			case specialcase[companiondetail[:spellid]][:id]

			when $flags["CE"]

				acquire << {"type" => $acquire["Special Event"], "id" => 10}
				flags << $flags["CE"]


			when $flags["TCG"]

				acquire << {"type" => $acquire["Special Event"], "id" => $tcglist[companiondetail[:spellid]]}
				flags << $flags["TCG"]

			when $flags["Special Event"]

				acquire << {"type" => $acquire["Special Event"], "id" => 8}
				flags << $flags["Special Event"]

			end

		end

		companion_lua.puts ""

		if ignorelist.include?(companiondetail[:spellid]) or wrathignore.include?(companiondetail[:spellid])

			companion_lua.print("\t--")

		else

			companion_lua.print("\t")

		end

		companion_lua.puts "companioncount = companioncount + 1"

		if ignorelist.include?(companiondetail[:spellid]) or wrathignore.include?(companiondetail[:spellid])

			companion_lua.print("\t--")

		else

			companion_lua.print("\t")

		end

		companion_lua.puts "self:AddCompanion(#{db}, #{companiondetail[:spellid]}, #{companiondetail[:id]}, #{companiondetail[:rarity]})"

		# Compress, remove duplicates and sort the list of flags
		flags.compact!
		flags.uniq!
		flags.sort!

		if flags.length == 0

			companion_lua.puts "\t-- No filter flags"

		else

			if ignorelist.include?(companiondetail[:spellid]) or wrathignore.include?(companiondetail[:spellid])

				companion_lua.print("\t--")

			else

				companion_lua.print("\t")

			end

			companion_lua.puts "self:AddCompanionFlags(#{db}, #{companiondetail[:spellid]}, #{flags.join(",")})"

		end

		flags.clear

        # acquire info  
		if acquire.length == 0 

			companion_lua.puts "\t-- No acquire information"

		else

			acquiredordered = acquire.sort_by { |entry| entry["id"] }

			temp = []

			for id in %w(1 2 3 4 5 6 7 8)

				for entry in acquiredordered.select { |entry| entry["type"] == id.to_i }

					temp << [entry["type"],entry["faction"],entry["factionlevel"],entry["id"]].compact

				end

			end 

			temp.flatten!

			if ignorelist.include?(companiondetail[:spellid]) or wrathignore.include?(companiondetail[:spellid])

				companion_lua.print("\t--")

			else

				companion_lua.print("\t")

			end


			companion_lua.puts "self:AddCompanionAcquire(#{db}, #{companiondetail[:spellid]}, #{temp.join(", ")})"

		end
	 
		acquire.clear  

		companion_lua.puts ""

	end

	companion_lua.puts "\treturn companioncount"
	companion_lua.puts ""
	companion_lua.puts "end"
	companion_lua.close

	print "Processing #{type} complete...\n"
	STDOUT.flush

end

petsandmounts = WoWDBPetsAndMounts.new
maps = WoWDBMaps.new

$dungeons = maps.get_dungeon_maps
$raids = maps.get_raid_maps

# List of all flags
$flags = {
	"Alliance" => 1,
	"Horde" => 2,
	"Vendor" => 3,
	"Quest" => 4,
	"Crafted" => 5,
	"Instance" => 6,
	"Raid" => 7,
	"Seasonal" => 8,
	"World Drop" => 9,
	"Mob Drop" => 10,
	"TCG" => 11,
	"Special Event" => 12,
	"CE" => 13,
	"BOU" => 15,
	"BOP" => 16,
	"BOA" => 17,
	"Alchemist" => 21,
	"Blacksmithing" => 22,
	"Cooking" => 23,
	"Enchanting" => 24,
	"Engineering" => 25,
	"First Aid" => 26,
	"Inscription" => 27,
	"Jewelcrafting" => 28,
	"Leatherworking" => 29,
	"Smelting" => 30,
	"Tailoring" => 31,
}

$ce = [17707, 17708, 17709, 32298]
$events = [40405, 53082]
$tcg = [30156, 40549, 45125, 45127, 49964]

$tcglist = {
	30156 => 1,
	40549 => 2,
	45127 => 5,
	45125 => 5,
	49964 => 6,
}

$acquire = {
	"Vendor" => 1,
	"Quest" => 2,
	"Crafted" => 3,
	"Mob Drop" => 4,
	"World Drop" => 5,
	"Reputational" => 6,
	"Seasonal" => 7,
	"Special Event" => 8,
}

$proftable = {
	"Alchemy" 			=> 2259,
	"Blacksmithing" 	=> 2018,
	"Cooking"			=> 2550,
	"Enchanting"		=> 7411,
	"Engineering"		=> 4036,
	"First Aid"			=> 746,
	"Leatherworking"	=> 2108,
	"Smelting"			=> 2575,
	"Tailoring"			=> 3908,
	"Jewelcrafting"		=> 25229,
	"Inscription"		=> 45357,
	"Runeforging"		=> 28481
}
# Pets that I need to manually deal with: 13548 (Chicken Egg), 17567 (Admiral's Hat -> Faction), 25162 (Oozling),  27570 (Arrow -> seasonal), 33050(Crawdad -> fishing), 39709 -> brewfest, 
# 40990 ->achievement, 42609 -> halloween, 43697,43698,46425,46426 -> Fishing daily, 43918 -> ZA, 45048 -> Seasonal, 45082 ->Rep (Spore), 45890 -> Fire festival, 51716 -> Reputation
create_tcg_db()

create_faction_db()

pets = petsandmounts.get_pet_list
petspecial = {
	17707 => {:id => $flags["CE"]},
	17708 => {:id => $flags["CE"]},
	17709 => {:id => $flags["CE"]},
	30156 => {:id => $flags["TCG"]},
	24696 => {:id => $flags["Special Event"]},
	24988 => {:id => $flags["Special Event"]},
	27241 => {:id => $flags["Special Event"]},
	28505 => {:id => $flags["Special Event"]},
	40405 => {:id => $flags["Special Event"]},
}
create_companion_db("./DB/PetDatabase.lua","Pet Database","PetDB","MakeMiniPetTable",pets,maps,petsandmounts,[23012,23013,39478,39479],petspecial,[25849])

#mounts = petsandmounts.get_mount_list
mountspecial = {
}
#create_companion_db("./DB/MountDatabase.lua","Mount Database","MountDB","MakeMountTable",mounts,maps,petsandmounts,[],mountspecial,[])

puts ""
puts "Finished processing run time was #{((Time.now).to_i-generator_start.to_i)} seconds"