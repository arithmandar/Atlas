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
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G = getfenv(0)

-- Libraries
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local _, private = ...

local Fonts = {}

private.Fonts = Fonts

local locale = GetLocale()

local fontByLocale = {
    enUS = "Fonts\\FRIZQT__.TTF",
    enGB = "Fonts\\FRIZQT__.TTF",
    deDE = "Fonts\\FRIZQT__.TTF",
    esES = "Fonts\\FRIZQT__.TTF",
    esMX = "Fonts\\FRIZQT__.TTF",
    frFR = "Fonts\\FRIZQT__.TTF",
    itIT = "Fonts\\FRIZQT__.TTF",
    ptBR = "Fonts\\FRIZQT__.TTF",

    koKR = "Fonts\\2002.TTF",
    zhCN = "Fonts\\ARKai_T.ttf",
    zhTW = "Fonts\\blei00d.TTF",
    ruRU = "Fonts\\FRIZQT___CYR.TTF",
}

local numberFontByLocale = {
    enUS = "Fonts\\skurri.ttf",
    enGB = "Fonts\\skurri.ttf",
    deDE = "Fonts\\skurri.ttf",
    esES = "Fonts\\skurri.ttf",
    esMX = "Fonts\\skurri.ttf",
    frFR = "Fonts\\skurri.ttf",
    itIT = "Fonts\\skurri.ttf",
    ptBR = "Fonts\\skurri.ttf",

    koKR = "Fonts\\K_Damage.ttf",
    zhCN = "Fonts\\ARKai_C.ttf",
    zhTW = "Fonts\\bKAI00M.ttf",
    ruRU = "Fonts\\SKURRI_CYR.TTF",
}

local zoneFontByLocale = {
    enUS = "Fonts\\FRIZQT__.TTF",
    enGB = "Fonts\\FRIZQT__.TTF",
    deDE = "Fonts\\FRIZQT__.TTF",
    esES = "Fonts\\FRIZQT__.TTF",
    esMX = "Fonts\\FRIZQT__.TTF",
    frFR = "Fonts\\FRIZQT__.TTF",
    itIT = "Fonts\\FRIZQT__.TTF",
    ptBR = "Fonts\\FRIZQT__.TTF",

    koKR = "Fonts\\K_Pagetext.TTF",
    zhCN = "Fonts\\ARKai_T.ttf",
    zhTW = "Fonts\\blei00d.TTF",
    ruRU = "Fonts\\FRIZQT___CYR.TTF",
}

Fonts.systemPath = fontByLocale[locale] or fontByLocale.enUS
Fonts.numberPath = numberFontByLocale[locale] or numberFontByLocale.enUS
Fonts.zonePath = zoneFontByLocale[locale] or zoneFontByLocale.enUS

Fonts.systemSize = 16
Fonts.systemOutline = "THICK"

if locale == "koKR" then
    Fonts.systemSize = 14
end

if locale == "zhCN" or locale == "zhTW" then
    Fonts.systemSize = 17
end

Fonts.numberSize = 30

if locale == "koKR" then
    Fonts.numberSize = 24
elseif locale == "zhCN" or locale == "zhTW" then
    Fonts.numberSize = 20
end

local function CreateAtlasFont(name, fontPath, fontSize, fontFlags, color, shadow)
    local font = _G[name] or CreateFont(name)

    font:SetFont(fontPath, fontSize, fontFlags)

    if color then
        font:SetTextColor(color[1], color[2], color[3], color[4] or 1)
    end

    if shadow then
        font:SetShadowOffset(shadow.x or 0, shadow.y or 0)
        font:SetShadowColor(
            shadow.r or 0,
            shadow.g or 0,
            shadow.b or 0,
            shadow.a or 1
        )
    else
        font:SetShadowOffset(0, 0)
        font:SetShadowColor(0, 0, 0, 0)
    end

    return font
end

local blackShadow = {
    x = 1,
    y = -1,
    r = 0,
    g = 0,
    b = 0,
    a = 1,
}

local atlasTextColor = {
    1.0,
    0.9294,
    0.7607,
    1.0,
}

local white = {
    1.0,
    1.0,
    1.0,
    1.0,
}

-- AtlasSystemFont_Shadow_Large_Outline_Thick
Fonts.SystemShadowLargeOutlineThick = CreateAtlasFont(
    "AtlasSystemFont_Shadow_Large_Outline_Thick",
    Fonts.systemPath,
    Fonts.systemSize,
    "THICKOUTLINE",
    nil,
    blackShadow
)

-- AtlasSystemFont_Shadow_Large_Outline_Normal
Fonts.SystemShadowLargeOutlineNormal = CreateAtlasFont(
    "AtlasSystemFont_Shadow_Large_Outline_Normal",
    Fonts.systemPath,
    Fonts.systemSize,
    "OUTLINE",
    nil,
    blackShadow
)

-- AtlasSystemFont_Large_Outline_Thick
Fonts.SystemLargeOutlineThick = CreateAtlasFont(
    "AtlasSystemFont_Large_Outline_Thick",
    Fonts.systemPath,
    Fonts.systemSize,
    "THICKOUTLINE"
)

-- AtlasSystemFont_Large_Outline_Normal
Fonts.SystemLargeOutlineNormal = CreateAtlasFont(
    "AtlasSystemFont_Large_Outline_Normal",
    Fonts.systemPath,
    Fonts.systemSize,
    "OUTLINE"
)

-- AtlasNumberFont_Outline_Huge
Fonts.NumberOutlineHuge = CreateAtlasFont(
    "AtlasNumberFont_Outline_Huge",
    Fonts.numberPath,
    Fonts.numberSize,
    "THICKOUTLINE"
)

-- AtlasZoneInfoFont_Outline_Thick_Huge2
Fonts.ZoneInfoOutlineThickHuge2 = CreateAtlasFont(
    "AtlasZoneInfoFont_Outline_Thick_Huge2",
    Fonts.zonePath,
    22,
    "THICKOUTLINE"
)

-- AtlasSystemFont_OutlineThick_WTF
Fonts.SystemOutlineThickWTF = CreateAtlasFont(
    "AtlasSystemFont_OutlineThick_WTF",
    Fonts.zonePath,
    32,
    "THICKOUTLINE"
)

-- AtlasZoneTextFont
Fonts.ZoneText = CreateAtlasFont(
    "AtlasZoneTextFont",
    Fonts.zonePath,
    32,
    "THICKOUTLINE",
    atlasTextColor
)

-- AtlasSubZoneTextFont
Fonts.SubZoneText = CreateAtlasFont(
    "AtlasSubZoneTextFont",
    Fonts.zonePath,
    22,
    "THICKOUTLINE",
    atlasTextColor
)

-- AtlasNumberFontNormalHugeWhite
Fonts.NumberNormalHugeWhite = CreateAtlasFont(
    "AtlasNumberFontNormalHugeWhite",
    Fonts.numberPath,
    Fonts.numberSize,
    "THICKOUTLINE",
    white
)

-- Preserve the XML behavior exactly: this template is also white,
-- despite its "Orange" name.
Fonts.NumberNormalHugeOrange = CreateAtlasFont(
    "AtlasNumberFontNormalHugeOrange",
    Fonts.numberPath,
    Fonts.numberSize,
    "THICKOUTLINE",
    white
)
