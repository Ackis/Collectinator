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
$trainers = Hash.new
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


def create_companion_db(file,type,db,funcstub,list,maps,petsandmounts,ignorelist,mapping)

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

	# Get the detailed information for each pet
	list.each_pair do |k,v|

		if count == 50

			print "\n"
			count = 0

		end

		print "."
		count = count + 1
		STDOUT.flush

		petsandmounts.add_item_details(v)

		# Add spell ID into the mix
		list[k][:spellid] = mapping[v[:id]]

	end

	print "\nSorting #{type} data..."

	# Sort by the item ID
	ordered_list = list.keys.sort_by do |name|

		id = list[name][:spellid]

	end

	puts "\nProcessing #{type} data..."

	flags = Array.new
	aquire = Array.new

	# Parse the ordered list and print out the detailed information into the file
	ordered_list.each do |name|

		companiondetail = list[name]

		companion_lua.puts "\t-- #{name} - #{companiondetail[:spellid]}"
		companion_lua.puts "\t-- #{companiondetail}"

		companiondetail[:method].split(",").each do |method|

			case method

			# vendors
			when 'sold-by'

				data = companiondetail[:method_vendors]
				companion_lua.puts "\t-- Vendor"

			# Mob drops
			when 'dropped-by'

				data = companiondetail[:method_dropped_by]
				companion_lua.puts "\t-- Mob Drop"

			# Quest reward
			when 'rewardfrom'

				data = companiondetail[:method_quests]
				companion_lua.puts "\t-- Quest Reward"

			when 'crafted'

				data = companiondetail[:method_crafted]
				companion_lua.puts "\t-- Crafted"

			else

				companion_lua.puts "\t-- Unknown"

			end

		end

		if ignorelist.include?(companiondetail[:spellid])

			companion_lua.print("\t--")

		else

			companion_lua.print("\t")

		end

		companion_lua.puts "self:AddCompanion(PetDB, #{companiondetail[:spellid]}, #{companiondetail[:id]}, #{companiondetail[:rarity]})"
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

petmapping = {
				4401 => 3928,
				8485 => 10673,
				8486 => 10674,
				8487 => 10676,
				8488 => 10678,
				8489 => 10679,
				8490 => 10677,
				8491 => 10675,
				8492 => 10683,
				8494 => 10682,
				8495 => 10684,
				8496 => 10680,
				8497 => 10711,
				8498 => 10698,
				8499 => 10697,
				8500 => 10707,
				8501 => 10706,
				10360 => 10714,
				10361 => 10716,
				10392 => 10717,
				10393 => 10688,
				10394 => 10709,
				10398 => 12243,
				10822 => 10695,
				11023 => 10685,
				11026 => 10704,
				11027 => 10703,
				11110 => 13548,
				11474 => 15067,
				11825 => 15048,
				11826 => 15049,
				12185 => 17567,
				12264 => 15999,
				12529 => 16450,
				13582 => 17709,
				13583 => 17707,
				13584 => 17708,
				15996 => 19772,
				19450 => 23811,
				20371 => 24696,
				20769 => 25162,
				21168 => 25849,
				21277 => 26010,
				21301 => 26532,
				21305 => 26541,
				21308 => 26528,
				21309 => 26469,
				22114 => 27241,
				22235 => 27570,
				22781 => 28505,
				23002 => 28738,
				23007 => 28739,
				23015 => 28740,
				23713 => 30156,
				25535 => 32298,
				27445 => 33050,
				29363 => 35156,
				29364 => 35239,
				29901 => 35907,
				29902 => 35909,
				29903 => 35910,
				29904 => 35911,
				29953 => 36027,
				29956 => 36028,
				29957 => 36029,
				29958 => 36031,
				29960 => 36034,
				30360 => 24988,
				31760 => 39181,
				32233 => 39709,
				32498 => 40405,
				32588 => 40549,
				32616 => 40614,
				32617 => 40613,
				32622 => 40634,
				33154 => 42609,
				33816 => 43697,
				33818 => 43698,
				33993 => 43923,
				34425 => 45048,
				34478 => 45082,
				34492 => 45125,
				34493 => 45128,
				34535 => 10696,
				34955 => 45890,
				35349 => 46425,
				35350 => 46426,
				35504 => 46599,
				38050 => 49964,
				38628 => 51716,
				39656 => 53082,
				40653 => 40990,
				18597 => 23012,
				18598 => 23013,
				31880 => 39478,
				31881 => 39479
		}

create_companion_db("./DB/PetDatabase.lua","Pet Database","PetDB","MakeMiniPetTable",pets,maps,petsandmounts,[25849,23012,23013,39478,39479],petmapping)

puts ""
puts "Finished processing run time was #{((Time.now).to_i-generator_start.to_i)} seconds"