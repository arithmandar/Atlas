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
-- Static popup dialogs for Atlas addon
-- ----------------------------------------------------------------------------

local _G = getfenv(0)

local _, private = ...
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

local C_Timer = _G.C_Timer
local InCombatLockdown = _G.InCombatLockdown
local ShowUIPanel = _G.ShowUIPanel
local AddonList = _G.AddonList
local print = _G.print

local function addonList_Show()
    C_Timer.After(0, function()
        if InCombatLockdown() then
            print(L["Cannot open the AddOns window during combat."])
            return
        end

        if not AddonList then
            print(L["AddonList frame is not available."])
            return
        end

        ShowUIPanel(AddonList)
    end)
end

local function onOpenAddonList(self, data, reason)
    if reason == "clicked" then
        addonList_Show()
    end
end


StaticPopupDialogs["ATLAS_MISSING_MODULES"] = {
    text = "%s",
    button1 = CLOSE,
    button2 = L["ATLAS_OPEN_ADDON_LIST"],
    OnCancel = onOpenAddonList,
    preferredWidth = 500,
    whileDead = false,
    hideOnEscape = true,
}

StaticPopupDialogs["ATLAS_NO_MODULE_OR_PLUGIN"] = {
    text = "%s",
    button1 = CLOSE,
    button2 = L["ATLAS_OPEN_ADDON_LIST"],
    OnCancel = onOpenAddonList,
    preferredWidth = 400,
    whileDead = false,
    hideOnEscape = true,
}
