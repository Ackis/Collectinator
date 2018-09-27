-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Libraries
local table = _G.table

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub	= _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local F = private.FILTER_IDS
local A = private.ACQUIRE_TYPES
local Q = private.ITEM_QUALITIES
local REP = private.REP_LEVELS
local FAC = private.FACTION_IDS
local V = private.GAME_VERSIONS
local Z = private.ZONE_NAMES
local PROF = private.LOCALIZED_PROFESSION_NAMES

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------


function addon:InitWardrobe()
	local function AddWardrobe(spell_id, genesis, quality)
		return addon:AddCollectable(spell_id, "WARDROBE", genesis, quality)
	end

	local wardrobe

	wardrobe = AddWardrobe(155, V.BFA, Q.RARE)
	wardrobe:AddFilters(F.HORDE, F.PVP)

	self.InitWardrobe = nil

end

function private.UpdateWardrobeList(wardrobes)
	local wardrobeCount = _G.C_TransmogCollection.GetNumTransmogSources()
	local wardrobeIDs = {}
	local wardrobeItemIDs = {}
	local wardrobeNames = {}

	for index = 1, wardrobeCount do
		local wardrobeID = _G.C_ToyBox.GetToyFromIndex(index)

		if wardrobeID > -1 then
			local itemID, toyName, icon = _G.C_ToyBox.GetToyInfo(toyID)
			local toy = toys[toyID]

			if toy then
				toy:SetIcon(icon)
				toy:SetItemID(itemID)
				toy:SetName(toyName)

				if _G.PlayerHasToy(toyID) then
					toy:AddState("KNOWN")
				end
			else
				toyIDs[#toyIDs + 1] = toyID
				toyItemIDs[toyID] = itemID
				toyNames[toyID] = toyName or ("%s_%d"):format(_G.UNKNOWN, toyID)
			end
		end
	end

	table.sort(toyIDs)

	--@debug@
	private.TextDump:Clear()
	for index = 1, #toyIDs do
		local toyID = toyIDs[index]

		private.TextDump:AddLine(("-- %s -- %d"):format(toyNames[toyID], toyID))
		private.TextDump:AddLine(("toy = AddToy(%d, V.BFA, Q.RARE)"):format(toyID))
		private.TextDump:AddLine(("toy:AddFilters(F.ALLIANCE, F.HORDE, F.IBOP)\n"))
	end

	local lineCount = private.TextDump:Lines()
	if lineCount > 0 then
		private.TextDump:InsertLine(1, ("Untracked: %d\n"):format(lineCount / 2))
		private.TextDump:Display()
	end
	--@end-debug@
end