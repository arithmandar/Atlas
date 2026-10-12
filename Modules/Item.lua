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
-- Item handling functions for Atlas addon
-- ----------------------------------------------------------------------------

local _G = getfenv(0)
local _, private = ...
local pairs, ipairs, type = _G.pairs, _G.ipairs, _G.type
local strsub = _G.string.sub
local C_Item  = _G.C_Item
local GetItemInfo = C_Item.GetItemInfo
local RequestLoadItemDataByID = C_Item.RequestLoadItemDataByID

local LibStub = _G.LibStub
---@type AtlasAddon
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)

local pendingItemTitles = {}

-- Item names saved per game locale, so they are available from the next session on.
-- addon.db does not exist while map data files are loading, hence the nil return.
local function getItemNameCache()
	local db = addon.db
	if (not db or not db.global) then
		return nil
	end
	local itemNames = db.global.itemNames
	if (not itemNames) then
		itemNames = {}
		db.global.itemNames = itemNames
	end
	local locale = GetLocale()
	itemNames[locale] = itemNames[locale] or {}
	return itemNames[locale]
end

local function resolveItemName(itemID)
	local cache = getItemNameCache()
	local itemName = GetItemInfo(itemID)
	if (itemName) then
		if (cache) then
			cache[itemID] = itemName
		end
		return itemName
	end
	return cache and cache[itemID] or nil
end

function addon:GetItemTitlebyID(title, id)
	if (not id) then
		return title
	end

	-- Always track the item, so the name can be cached and the row fixed up once addon.db is ready
	if (type(id) == "number" and type(title) == "string" and title ~= "") then
		pendingItemTitles[id] = pendingItemTitles[id] or {}
		pendingItemTitles[id][title] = true
	end

	local itemName = resolveItemName(id)
	if (itemName) then
		return itemName
	end

	if (RequestLoadItemDataByID and type(id) == "number") then
		RequestLoadItemDataByID(id)
	end
	return title
end

local function updatePendingItemTitle(itemID)
	local fallbacks = pendingItemTitles[itemID]
	if (not fallbacks) then
		return false
	end

	local itemName = resolveItemName(itemID)
	if (not itemName) then
		return false
	end
	pendingItemTitles[itemID] = nil

	local updated = false
	for _, map in pairs(AtlasMaps) do
		if (type(map) == "table") then
			for _, entry in ipairs(map) do
				if (type(entry) == "table" and entry[2] == itemID and type(entry[1]) == "string") then
					for fallback in pairs(fallbacks) do
						if (#entry[1] >= #fallback and strsub(entry[1], -#fallback) == fallback) then
							local updatedTitle = strsub(entry[1], 1, #entry[1] - #fallback)..itemName
							if (updatedTitle ~= entry[1]) then
								entry[1] = updatedTitle
								updated = true
							end
							break
						end
					end
				end
			end
		end
	end

	return updated
end

function addon:OnItemInfoReceived(itemID)
	if (updatePendingItemTitle(itemID) and addon.db) then
		addon:RefreshMap()
	end
end

function addon:RefreshPendingItemTitles()
	for itemID in pairs(pendingItemTitles) do
		if (not updatePendingItemTitle(itemID) and RequestLoadItemDataByID) then
			RequestLoadItemDataByID(itemID)
		end
	end
end

local function round(num, idp)
	local mult = 10 ^ (idp or 0)
	return floor(num * mult + 0.5) / mult
end


function addon:GetGearItemLevelDiffColor(minGearLevel)
	local color = {r = 1.00, g = 1.00, b = 1.00}
	if (minGearLevel == nil) then return color end
	local lDiff = minGearLevel
	lDiff = tonumber(lDiff)
	if (GetAverageItemLevel) then 
		lDiff = minGearLevel - GetAverageItemLevel()
	end
	
	if (lDiff >= 0) then
		for i= 1.00, 0.10, -0.10 do
			color = {r = 1.00, g = i, b = 0.00}
			if ( (i/0.10)==round(((100-lDiff)/10),0) ) then return color; end
		end
	elseif (-lDiff < 100) then
		for i= 0.90, 0.10, -0.10 do
			color = {r = i, g = 1.00, b = 0.00}
			if ((9-i/0.10)==round(((-1*lDiff)/10),0) ) then return color; end
		end
	elseif (-lDiff == 100) then
		color = {r = 0.50, g = 1.00, b = 0.50}
	else
		color = {r = 1.00, g = 1.00, b = 1.00}
	end
	
	return color
end
