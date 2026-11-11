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
---@cast private AtlasNamespace
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

local mapPackGuideFrame

local function ShowAtlasMapPackGuide()
    if mapPackGuideFrame then
        mapPackGuideFrame:Show()
        mapPackGuideFrame:Raise()
        return
    end

    local frame = CreateFrame(
        "Frame",
        "AtlasMapPackGuideFrame",
        UIParent,
        "BasicFrameTemplateWithInset"
    )

    frame:Hide()
    frame:SetSize(580, 480)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("DIALOG")
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")

    frame:SetScript("OnDragStart", function(self)
        self:StartMoving()
    end)

    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
    end)

    frame.TitleText:SetText(L["ATLAS_MAP_PACK_GUIDE"])

    -- Register once so Escape can close the window.
    UISpecialFrames[#UISpecialFrames + 1] = frame:GetName()

    local scrollFrame = CreateFrame(
        "ScrollFrame",
        "AtlasMapPackGuideScrollFrame",
        frame,
        "UIPanelScrollFrameTemplate"
    )

    scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 20, -40)
    scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -38, 126)

    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(1, 1)
    scrollFrame:SetScrollChild(content)

    local text = content:CreateFontString(
        nil,
        "ARTWORK",
        "GameFontHighlight"
    )

    text:SetPoint("TOPLEFT")
    text:SetJustifyH("LEFT")
    text:SetJustifyV("TOP")
    text:SetSpacing(4)
    text:SetText(L["ATLAS_MAP_PACK_GUIDE_TEXT"])

    local function UpdateContentSize()
        local width = math.max(1, scrollFrame:GetWidth() - 4)

        content:SetWidth(width)
        text:SetWidth(width)
        content:SetHeight(math.max(1, text:GetStringHeight() + 12))
    end

    scrollFrame:SetScript("OnSizeChanged", UpdateContentSize)

    local urlLabel = frame:CreateFontString(
        nil,
        "ARTWORK",
        "GameFontNormal"
    )

    urlLabel:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 22, 102)
    urlLabel:SetPoint("RIGHT", frame, "RIGHT", -22, 0)
    urlLabel:SetJustifyH("LEFT")
    urlLabel:SetText(L["ATLAS_MAP_PACK_GUIDE_URL_LABEL"])

    local url = "https://github.com/arithmandar/Atlas/wiki/Atlas-Map-Packs-and-Plugins"

    local urlBox = CreateFrame(
        "EditBox",
        nil,
        frame,
        "InputBoxTemplate"
    )

    urlBox:SetHeight(24)
    urlBox:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 26, 70)
    urlBox:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -24, 70)
    urlBox:SetAutoFocus(false)
    urlBox:SetMaxLetters(0)
    urlBox:SetText(url)
    urlBox:SetCursorPosition(0)

    -- Keep the address intact while still allowing selection and copying.
    urlBox:SetScript("OnTextChanged", function(self)
        if self:GetText() ~= url then
            self:SetText(url)
            self:SetCursorPosition(0)
        end
    end)

    urlBox:SetScript("OnEditFocusGained", function(self)
        self:HighlightText()
    end)

    urlBox:SetScript("OnMouseUp", function(self)
        self:HighlightText()
    end)

    urlBox:SetScript("OnEnterPressed", function(self)
        self:ClearFocus()
    end)

    urlBox:SetScript("OnEscapePressed", function(self)
        self:ClearFocus()
        frame:Hide()
    end)

    local copyHint = frame:CreateFontString(
        nil,
        "ARTWORK",
        "GameFontDisableSmall"
    )

    copyHint:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 22, 46)
    copyHint:SetPoint("RIGHT", frame, "RIGHT", -22, 0)
    copyHint:SetJustifyH("LEFT")
    copyHint:SetText(L["ATLAS_MAP_PACK_GUIDE_COPY_HINT"])

    local closeButton = CreateFrame(
        "Button",
        nil,
        frame,
        "UIPanelButtonTemplate"
    )

    closeButton:SetSize(120, 24)
    closeButton:SetPoint("BOTTOM", frame, "BOTTOM", 0, 14)
    closeButton:SetText(CLOSE)

    closeButton:SetScript("OnClick", function()
        frame:Hide()
    end)

    frame:SetScript("OnHide", function(self)
        self:StopMovingOrSizing()
        urlBox:ClearFocus()
    end)

    frame:SetScript("OnShow", function()
        UpdateContentSize()
        scrollFrame:SetVerticalScroll(0)
        urlBox:SetCursorPosition(0)
    end)

    mapPackGuideFrame = frame
    frame:Show()
end

StaticPopupDialogs["ATLAS_MISSING_MODULE"] = {
    text = "%s",
    button1 = L["ATLAS_OPEN_ADDON_LIST"],
    button2 = CLOSE,
    OnAccept = function(self, data)
        addonList_Show()
    end,
    preferredWidth = 500,
    whileDead = false,
    hideOnEscape = true,
}

StaticPopupDialogs["ATLAS_NO_MODULE_OR_PLUGIN_NEW"] = {
    text = "%s",
    button1 = L["ATLAS_OPEN_ADDON_LIST"], --OnAccept
    button2 = CLOSE, -- OnCancel
    button3 = L["ATLAS_MAP_PACK_GUIDE"], -- OnAlt
    OnAccept = function(self, data)
        addonList_Show()
    end,
    OnAlt = function(self, data, reason)
        if reason == "clicked" then
            ShowAtlasMapPackGuide()
        end
    end,
    preferredWidth = 500,
    whileDead = false,
    hideOnEscape = true,
}
