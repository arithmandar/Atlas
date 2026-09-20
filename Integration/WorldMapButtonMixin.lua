-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert at gmail dot com>
	Copyright 2010 - Lothaer <lothayer at gmail dot com>, Atlas Team
	Copyright 2011 ~ 2026 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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

-- Atlas WorldMap Integration
-- ----------------------------------------------------------------------------
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local pairs, tonumber = _G.pairs, _G.tonumber
-- Libraries
local GameTooltip = _G.GameTooltip
local GetBuildInfo = _G.GetBuildInfo
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...
local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon("Atlas")
---@cast addon AtlasAddon

-- Determine WoW client family
local WoWClassicEra, WoWClassicTBC, WoWWOTLKC, WoWClassicCata, WoWClassicMists, WoWRetail
local projectID = _G.WOW_PROJECT_ID
if projectID and _G.WOW_PROJECT_MAINLINE then
	WoWRetail = projectID == _G.WOW_PROJECT_MAINLINE
	WoWClassicEra = projectID == _G.WOW_PROJECT_CLASSIC
	WoWClassicTBC = projectID == _G.WOW_PROJECT_BURNING_CRUSADE_CLASSIC
	WoWWOTLKC = projectID == _G.WOW_PROJECT_WRATH_CLASSIC
	WoWClassicCata = projectID == _G.WOW_PROJECT_CATACLYSM_CLASSIC
	WoWClassicMists = projectID == _G.WOW_PROJECT_MISTS_CLASSIC
else
	local wowversion = select(4, GetBuildInfo())
	if wowversion < 20000 then
		WoWClassicEra = true
	elseif wowversion < 30000 then
		WoWClassicTBC = true
	elseif wowversion < 40000 then
		WoWWOTLKC = true
	elseif wowversion < 50000 then
		WoWClassicCata = true
	elseif wowversion < 60000 then
		WoWClassicMists = true
	elseif wowversion > 90000 then
		WoWRetail = true
	end
end

AtlasWorldMapButtonMixin = {}

function AtlasWorldMapButtonMixin:OnLoad()
	--if (WoWRetail) then
		self:SetFrameStrata("HIGH")
	--else
	--	self:SetFrameStrata("TOOLTIP")
	--end
end

function AtlasWorldMapButtonMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
	GameTooltip:SetText(ATLAS_CLICK_TO_OPEN, nil, nil, nil, nil, 1)
end

function AtlasWorldMapButtonMixin:OnLeave()
	GameTooltip:Hide()
end

function AtlasWorldMapButtonMixin:OnClick()
	addon:WorldMapButtonSelectMap()
	ToggleFrame(WorldMapFrame)
	addon:Toggle()
end

function AtlasWorldMapButtonMixin:Refresh()
	
end


