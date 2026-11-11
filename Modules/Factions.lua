--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert at gmail dot com>
	Copyright 2010 - Lothaer <lothayer at gmail dot com>, Atlas Team
	Copyright 2011 ~ 2026 - Arith Hsu, Atlas Team

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

-- ----------------------------------------------------------------------------
-- Factions module for Atlas
-- ----------------------------------------------------------------------------

local _G = getfenv(0)
local _, private = ...
---@cast private AtlasNamespace

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
---@cast addon AtlasAddon

---@param factionName string?
---@param factionID number?
---@return string?
function addon:GetFactionName(factionName, factionID)
	if (not factionID) then
		return factionName
	end

	local name
	if (ATLAS_USES_MAINLINE_API) then
		local factionData = _G.C_Reputation.GetFactionDataByID(factionID)
		name = factionData and factionData.name
	else
		name = _G.GetFactionInfoByID(factionID)
	end

	return name or factionName
end
