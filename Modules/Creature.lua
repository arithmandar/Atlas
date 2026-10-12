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
-- Creature handling functions for Atlas addon
-- ----------------------------------------------------------------------------

local _G = getfenv(0)
local _, private = ...

local LibStub = _G.LibStub
---@type AtlasAddon
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)

-- get creature's name from server
local cache_tooltip = CreateFrame(
    "GameTooltip",
    "AtlasCreatureNameTooltip",
    UIParent,
    "GameTooltipTemplate"
)

local function getCreatureNamebyID(id)
    id = tonumber(id)

    if not id or id <= 0 or id % 1 ~= 0 then
        return nil
    end

    cache_tooltip:SetOwner(UIParent, "ANCHOR_NONE")
    cache_tooltip:ClearLines()

    -- Use the complete Creature GUID shape, including the spawn UID.
    local link = ("unit:Creature-0-0-0-0-%d-0000000000"):format(id)
    cache_tooltip:SetHyperlink(link)

    local creatureName

    if cache_tooltip:NumLines() > 0 then
        local firstLine = _G["AtlasCreatureNameTooltipTextLeft1"]
        creatureName = firstLine and firstLine:GetText()
    end

    cache_tooltip:Hide()

    if not creatureName
        or creatureName == ""
        or creatureName == UNKNOWN
    then
        return nil
    end

    return creatureName
end

local pendingCreatureNames = {}
local retryScheduled = false
local retryCount = 0
local MAX_RETRIES = 5

-- addon.db does not exist while map data files are loading, hence the nil return.
local function getCreatureNameCache()
    local db = addon.db
    if not db or not db.global then
        return nil
    end
    local creatureNames = db.global.creatureNames
    if not creatureNames then
        creatureNames = {}
        db.global.creatureNames = creatureNames
    end
    local locale = GetLocale()
    creatureNames[locale] = creatureNames[locale] or {}
    return creatureNames[locale]
end

local function resolveCreatureName(id)
    local cache = getCreatureNameCache()
    local name = getCreatureNamebyID(id)
    if name then
        if cache then
            cache[id] = name
        end
        return name
    end
    return cache and cache[id] or nil
end

-- Replaces the fallback text inside the already built map rows
local function updatePendingCreatureName(id)
    local fallbacks = pendingCreatureNames[id]
    if not fallbacks then
        return false
    end

    local name = resolveCreatureName(id)
    if not name then
        return false
    end
    pendingCreatureNames[id] = nil

    local updated = false
    for _, map in pairs(AtlasMaps) do
        if type(map) == "table" then
            for _, entry in ipairs(map) do
                if type(entry) == "table" and type(entry[1]) == "string" then
                    for fallback in pairs(fallbacks) do
                        local first, last = entry[1]:find(fallback, 1, true)
                        if first and fallback ~= name then
                            entry[1] = entry[1]:sub(1, first - 1)..name..entry[1]:sub(last + 1)
                            updated = true
                            break
                        end
                    end
                end
            end
        end
    end
    return updated
end

local function updatePendingCreatureNames()
    local updated = false
    local remaining = false
    for id in pairs(pendingCreatureNames) do
        if updatePendingCreatureName(id) then
            updated = true
        elseif pendingCreatureNames[id] then
            remaining = true
        end
    end
    return updated, remaining
end

-- The server needs a moment to answer the first unit tooltip request, so retry a few times
local function scheduleRetry()
    if retryScheduled or retryCount >= MAX_RETRIES or not C_Timer then
        return
    end
    retryScheduled = true
    C_Timer.After(1, function()
        retryScheduled = false
        retryCount = retryCount + 1
        local updated, remaining = updatePendingCreatureNames()
        if updated and addon.db then
            Atlas_Refresh()
        end
        if remaining then
            scheduleRetry()
        end
    end)
end

function addon:GetCreatureName(creatureName, id)
    id = tonumber(id)
    if not id then
        return creatureName
    end

    if type(creatureName) == "string" and creatureName ~= "" then
        pendingCreatureNames[id] = pendingCreatureNames[id] or {}
        pendingCreatureNames[id][creatureName] = true
    end

    local name = resolveCreatureName(id)
    if name then
        return name
    end

    scheduleRetry()
    return creatureName
end

function addon:RefreshPendingCreatureNames()
    updatePendingCreatureNames()
    retryCount = 0
    scheduleRetry()
end


