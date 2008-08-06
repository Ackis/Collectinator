--[[
****************************************************************************************
Download Count
$Date$
$Rev$

Author: Ackis on Illidan US Horde

****************************************************************************************

Require socket.  You can get it from: http://luaforge.net/projects/luasocket/

This is not to be run in WoW.  It will query all of the release sites and obtain download information for
the mod specified in the variables.

****************************************************************************************
]]--

http = require("socket.http")

function GetNumberDownloads(addonurl,patternmatch1,patternmatch2)

	local _,_,temp = string.find(http.request(addonurl), patternmatch1)
	local _,_,temp1 = string.find(http.request(addonurl), patternmatch2)

	if (temp) then
		local numberdownloads = string.gsub(temp,",","")
		return numberdownloads
	else
		return temp1
	end

end

do

	-- URL of where the add-ons are hosted
	local curseurl = "http://www.curse.com/downloads/details/12775"
	local wowuiurl = "http://wowui.worldofwar.net/?p=mod&m=6461"
	local wowiurl = "http://www.wowinterface.com/downloads/info9072-Querier.html"

	-- Patterns which we match to find download information
	local cursepatternmatch1 = "<th>Downloads Total:</th>\n                                            <td>(%d+,%d+)</td>"
	local cursepatternmatch2 = "<th>Downloads Total:</th>\n                                            <td>(%d+)</td>"
	local wowuipatternmatch1 = "<b>(%d+,%d+)</b> total downloads</b>"
	local wowuipatternmatch2 = "<b>(%d+)</b> total downloads</b>"
	local wowipatternmatch1 = "<td class=\"alt1\"><div class=\"smallfont\">(%d+,%d+)</div></td>"
	local wowipatternmatch2 = "<td class=\"alt1\"><div class=\"smallfont\">(%d+)</div></td>"

	local curse = GetNumberDownloads(curseurl,cursepatternmatch1,cursepatternmatch2)
	local WoWUI = GetNumberDownloads(wowuiurl,wowuipatternmatch1,wowuipatternmatch2)
	local WoWI = GetNumberDownloads(wowiurl,wowipatternmatch1,wowipatternmatch2)

	print("Downloads by site:")
	print("Curse Gaming:   " .. curse)
	print("WoW UI:         " .. WoWUI)
	print("WoW Interface:  " .. WoWI)
	print("--------------------")
	print("Total: " .. curse + WoWUI + WoWI)

	--os.execute("pause")

end
