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

local LibStub = _G.LibStub
-- UIDropDownMenu
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")

local Templates = {}
private.Templates = Templates

-- //////////////////////////////////////////
-- AtlasFrameDropDownTypeTemplate
function Templates.CreateFrameDropDownType(name, parent)
	local f = _G[name] or LibDD:Create_UIDropDownMenu(name, parent)
	
	f:SetPoint("TOPLEFT", parent, 60, -50)
	
	f.Label = f:CreateFontString(name.."Label", "BACKGROUND", "GameFontNormalSmall")
	f.Label:SetText(ATLAS_STRING_SELECT_CAT)
	f.Label:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 21, 0)
	
	return f
end

-- //////////////////////////////////////////
-- AtlasFrameDropDownTemplate
function Templates.CreateFrameDropDown(name, parent)
	local f = _G[name] or LibDD:Create_UIDropDownMenu(name, parent)
	
	local ref = parent and parent:GetName().."DropDownType" or nil
	
	f:SetPoint("LEFT", ref or nil, "RIGHT", 0, 0)
	
	f.Label = f:CreateFontString(name.."Label", "BACKGROUND", "GameFontNormalSmall")
	f.Label:SetText(ATLAS_STRING_SELECT_MAP)
	f.Label:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 21, 0)
	
	return f
end

-- //////////////////////////////////////////
-- AtlasEntryTemplate
function Templates.CreateEntry(name, parent)
	local f = _G[name]
	if f then
		return f
	else
		f = CreateFrame("Button", name, parent)
		f:SetSize(440, 15)
		f:Hide()

		local text = f:CreateFontString(name.."_Text", "OVERLAY", "GameFontHighlight")
		text:SetPoint("LEFT", f, "LEFT", 0, 0)
		text:SetJustifyH("LEFT")
		text:SetNonSpaceWrap(true)
		text:SetWordWrap(false)
		text:SetSize(440, 15)
		f.Text = text

		local tex = f:CreateTexture(name.."Hightlight", "HIGHLIGHT")
		tex:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
		tex:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
		tex:SetSize(440, 15)
		tex:SetBlendMode("ADD")
		f:SetHighlightTexture(tex)
		f.Highlight = tex

		f:RegisterForClicks("LeftButtonDown", "RightButtonDown")

		f:SetScript("OnUpdate", function(self)
			AtlasEntry_OnUpdate(self)
		end)

		f:SetScript("OnLeave", AtlasEntry_OnLeave)

		f:SetScript("OnClick", function(self, button)
			AtlasEntry_OnClick(self, button)
		end)

	end

	return f
end

-- //////////////////////////////////////////
-- AtlasHeaderTextTemplate / AtlasSubHeaderTextTemplate
local function CreateHeaderTextFrame(name, parent, w, h, font)
	local f = CreateFrame("Frame", name, parent)
	f:SetSize(w, h)
	local text = f:CreateFontString(name.."_Text", "OVERLAY", font)
	text:SetSize(w, h)
	text:SetJustifyH("LEFT")
	text:SetPoint("CENTER")
	f:SetScript("OnUpdate", function(self) AtlasEntry_OnUpdate(self) end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return f
end

function Templates.CreateHeaderText(name, parent)
	return CreateHeaderTextFrame(name, parent, 450, 20, "GameFontHighlightLarge")
end

function Templates.CreateSubHeaderText(name, parent)
	return CreateHeaderTextFrame(name, parent, 450, 15, "GameFontNormal")
end

-- //////////////////////////////////////////
-- Atlas Frame Button Templates
function Templates.CreateCloseButton(name, parent)
	local f = CreateFrame("Button", name, parent, "UIPanelCloseButton")
	f:SetSize(20, 20)
	f:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -2, -14)
	return f
end

function Templates.CreateLockButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(36, 36)
	f:SetPoint("RIGHT", _G[parent:GetName().."CloseButton"], "LEFT", 6, 0)
	f:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", "ADD")
	f:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(ATLAS_OPTIONS_LOCK_TIP, nil, nil, nil, nil, 1)
	end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	f:SetScript("OnClick", function() Atlas:ToggleLock() end)
	return f
end

function Templates.CreateOptionsButton(name, parent)
	local f = CreateFrame("Button", name, parent, "UIPanelButtonTemplate")
	f:SetSize(80, 20)
	f:SetText(ATLAS_OPTIONS_BUTTON)
	f:SetPoint("RIGHT", _G[parent:GetName().."LockButton"], "LEFT", 6, 1)
	f:SetScript("OnClick", function() Atlas:OpenOptions() end)
	return f
end

local function CreatePrevNextMapButtonBase(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(32, 32)
	f:Hide()
	f:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
	f:SetScript("OnClick", function(self)
		PlaySound(856)
		Atlas:PrevNextMap_OnClick(self)
	end)
	return f
end

function Templates.CreateNextMapButton(name, parent)
	local f = CreatePrevNextMapButtonBase(name, parent)
	f:SetPoint("TOPLEFT", parent, 502, -599)
	f:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
	f:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
	f:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled")
	return f
end

function Templates.CreatePrevMapButton(name, parent)
	local f = CreatePrevNextMapButtonBase(name, parent)
	f:SetPoint("TOPLEFT", parent, 13, -599)
	f:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
	f:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
	f:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled")
	return f
end

-- Shared by the AdventureJournal map/EJ/AtlasLoot buttons: a 48x48 centered mouseover highlight
local function SetCenteredHighlight(button)
	local tex = button:CreateTexture(nil, "HIGHLIGHT")
	tex:SetTexture("Interface\\Buttons\\UI-Common-MouseHilight")
	tex:SetBlendMode("ADD")
	tex:SetAllPoints()
	tex:SetSize(48, 48)
	tex:SetPoint("CENTER")
	button:SetHighlightTexture(tex)
end

function Templates.CreateAdventureJournalMapButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(32, 32)
	f:Hide()
	f:SetPoint("TOPLEFT", _G[parent:GetName().."NextMapButton"], "TOPLEFT", -24, 0)
	f:SetNormalTexture("Interface\\AddOns\\Atlas\\Images\\UI-WorldMap-Icon")
	f:SetPushedTexture("Interface\\AddOns\\Atlas\\Images\\UI-WorldMap-Icon")
	SetCenteredHighlight(f)
	f:SetScript("OnClick", function(self) Atlas:AdventureJournal_MapButton_OnClick(self) end)
	f:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(L["Click to open relative World Map"], 0.5, 0.5, 1, nil, false)
	end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return f
end

function Templates.CreateAdventureJournalButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetToplevel(true)
	f:SetSize(32, 32)
	f:Hide()
	f:SetPoint("TOPLEFT", _G[parent:GetName().."AdventureJournalMapButton"], "TOPLEFT", -24, 0)
	f:SetNormalTexture("Interface\\AddOns\\Atlas\\Images\\UI-EJ-PortraitIcon")
	f:SetPushedTexture("Interface\\AddOns\\Atlas\\Images\\UI-EJ-PortraitIcon")
	SetCenteredHighlight(f)
	f:SetScript("OnEnter", function(self) Atlas:AdventureJournalButton_OnEnter(self) end)
	f:SetScript("OnClick", function(self) Atlas:AdventureJournalButton_OnClick(self) end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return f
end

function Templates.CreateAtlasLootButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetToplevel(true)
	f:SetSize(22, 22)
	f:Hide()
	f:SetPoint("TOPLEFT", _G[parent:GetName().."AdventureJournalButton"], "TOPLEFT", -19, -5)
	f:RegisterForClicks("LeftButtonDown", "RightButtonDown")
	f:SetNormalTexture("Interface\\Icons\\INV_Box_01")
	SetCenteredHighlight(f)
	f:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(ATLAS_OPEN_ATLASLOOT_WINDOW.."\n"..ATLAS_CLOSE_ATLASLOOT_WINDOW, 0.5, 0.5, 1, nil, false)
	end)
	f:SetScript("OnClick", function(self, button) Atlas:AtlasLootButton_OnClick(self, button) end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return f
end

function Templates.CreateSizeUpButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(32, 32)
	f:Hide()
	f:SetPoint("TOPLEFT", parent, 505, -76)
	f:SetNormalTexture("Interface\\Buttons\\UI-Panel-BiggerButton-Up")
	f:SetPushedTexture("Interface\\Buttons\\UI-Panel-BiggerButton-Down")
	f:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", "ADD")
	f:SetScript("OnClick", function() Atlas:ToggleWindowSize() end)
	return f
end

function Templates.CreateSizeDownButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(32, 32)
	f:SetPoint("TOPLEFT", parent, "TOPRIGHT", -28, -77)
	f:SetNormalTexture("Interface\\Buttons\\UI-Panel-SmallerButton-Up")
	f:SetPushedTexture("Interface\\Buttons\\UI-Panel-SmallerButton-Down")
	f:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", "ADD")
	f:SetScript("OnClick", function() Atlas:ToggleWindowSize() end)
	return f
end

function Templates.CreateCollapseButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(32, 32)
	f:SetPoint("TOPLEFT", parent, 505, -570)
	f:SetNormalTexture("Interface\\AddOns\\Atlas\\Images\\UI-Panel-CollapseButton-Up")
	f:SetPushedTexture("Interface\\AddOns\\Atlas\\Images\\UI-Panel-CollapseButton-Up")
	f:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", "ADD")
	f:SetScript("OnClick", function() Atlas:ToggleLegendPanel() end)
	f:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(ATLAS_COLLAPSE_BUTTON, nil, nil, nil, nil, 1)
	end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return f
end

function Templates.CreateExpandButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(32, 32)
	f:SetPoint("TOPLEFT", parent, 505, -570)
	f:SetNormalTexture("Interface\\AddOns\\Atlas\\Images\\UI-Panel-ExpandButton-Up")
	f:SetPushedTexture("Interface\\AddOns\\Atlas\\Images\\UI-Panel-ExpandButton-Up")
	f:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight", "ADD")
	f:SetScript("OnClick", function() Atlas:ToggleLegendPanel() end)
	f:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
		GameTooltip:SetText(ATLAS_EXPAND_BUTTON, nil, nil, nil, nil, 1)
	end)
	f:SetScript("OnLeave", function() GameTooltip:Hide() end)
	return f
end

function Templates.CreateMapZoneName(name, parent)
	local f = CreateFrame("Button", name, parent)
	f:SetSize(100, 60)
	f:SetPoint("TOP", parent, "TOPLEFT", 272, -88)
	local text = f:CreateFontString(name.."_Text", "ARTWORK", "AtlasSubZoneTextFont")
	text:SetJustifyH("CENTER")
	text:SetJustifyV("BOTTOM")
	text:SetPoint("TOP", 0, 0)
	f.Text = text
	return f
end

-- //////////////////////////////////////////
-- AtlasMapButtonTemplate and its children (NPC / boss map pin buttons)
local function ApplyMapButtonMixin(f)
	f:SetScript("OnEnter", function(self)
		if (self.tooltiptitle) then
			GameTooltip:SetOwner(self, "ANCHOR_LEFT")
			GameTooltip.NineSlice:SetCenterColor(0, 0, 0, 1 * Atlas.db.profile.options.frames.alpha)
			GameTooltip:SetText(self.tooltiptitle, 1, 1, 1, nil, false)
			GameTooltip:AddLine(self.tooltiptext, nil, nil, nil, true)
			if (self.overviewDescription) then
				GameTooltip:AddLine("\n"..OVERVIEW, 1, 1, 1, 1)
				GameTooltip:AddLine(self.overviewDescription, nil, nil, nil, 1)
				if (self.roleOverview) then
					GameTooltip:AddLine("\n"..self.roleOverview, nil, nil, nil, 1)
				end
			end
			if (self.encounterID and C_AdventureJournal) then
				local disabled = not C_AdventureJournal.CanBeShown()
				if (not disabled) then
					GameTooltip:AddLine(ATLAS_OPEN_ADVENTURE, 0.5, 0.5, 1, true)
					GameTooltip:AddLine(ATLAS_TOGGLE_LOOT, 0.5, 0.5, 1, true)
				end
			end
			GameTooltip:SetScale(Atlas.db.profile.options.frames.boss_description_scale * Atlas.db.profile.options.frames.scale)
			GameTooltip:Show()
		end
	end)
	f:SetScript("OnLeave", function()
		GameTooltip:Hide()
		GameTooltip:SetScale(ATLAS_GAMETOOLTIP_ORIGINAL_SCALE)
	end)
	f:SetScript("OnShow", function(self)
		self:SetFrameLevel(self:GetParent():GetFrameLevel() + 10)
	end)
end

function Templates.CreateMapNPCButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	ApplyMapButtonMixin(f)
	f:SetSize(12, 12)

	local bgImage = f:CreateTexture(name.."Image", "BACKGROUND")
	bgImage:SetSize(32, 32)
	bgImage:SetPoint("TOPLEFT", -5, 5)
	f.bgImage = bgImage

	local taxiImage = f:CreateTexture(name.."TaxiImage", "BACKGROUND")
	taxiImage:SetSize(20, 20)
	taxiImage:SetPoint("TOPLEFT", 0, 0)
	f.TaxiImage = taxiImage

	local letterImage = f:CreateTexture(name.."LImage", "BACKGROUND")
	letterImage:SetSize(20, 20)
	letterImage:SetPoint("CENTER", 0, 0)
	f.LetterImage = letterImage

	return f
end

function Templates.CreateBossButton(name, parent)
	local f = CreateFrame("Button", name, parent)
	ApplyMapButtonMixin(f)
	f:SetSize(50, 49)

	local bgImage = f:CreateTexture(name.."bgImage", "BACKGROUND")
	bgImage:SetSize(36, 36)
	bgImage:SetPoint("CENTER", 0, 0)
	f.bgImage = bgImage

	f:SetNormalTexture("Interface\\EncounterJournal\\UI-EncounterJournalTextures")
	f:GetNormalTexture():SetTexCoord(0.84960938, 0.97070313, 0.42871094, 0.48828125)

	f:SetPushedTexture("Interface\\EncounterJournal\\UI-EncounterJournalTextures")
	f:GetPushedTexture():SetTexCoord(0.77734375, 0.89843750, 0.26953125, 0.32910156)

	f:SetHighlightTexture("Interface\\EncounterJournal\\UI-EncounterJournalTextures")
	f:GetHighlightTexture():SetTexCoord(0.68945313, 0.81054688, 0.33300781, 0.39257813)

	f:RegisterForClicks("LeftButtonDown", "RightButtonDown")
	f:SetScript("OnClick", function(self, button) Atlas:BossButton_OnClick(self, button) end)

	return f
end

-- //////////////////////////////////////////
-- Atlas Marks letters / POI taxi icons (formerly virtual Texture templates;
-- kept for parity, though Data/Constants.lua's ATLAS_LETTER_MARKS_TCOORDS and
-- ATLAS_TAXI_TCOORDS already cover all current runtime usage of this artwork).
local LETTER_MARKS_FILE = "Interface\\AddOns\\Atlas\\Images\\Atlas_Marks_Letters1"
local POI_ICONS_FILE = "Interface\\AddOns\\Atlas\\Images\\POIICONS"

function Templates.CreateLetterTexture(parent, colorTag, letter, layer)
	local tex = parent:CreateTexture(nil, layer or "ARTWORK")
	tex:SetTexture(LETTER_MARKS_FILE)
	tex:SetSize(20, 20)
	tex:SetTexCoord(unpack(ATLAS_LETTER_MARKS_TCOORDS["Atlas_Letter_"..colorTag.."_"..letter]))
	return tex
end

function Templates.CreatePOITaxiTexture(parent, taxiTag, layer)
	local tex = parent:CreateTexture(nil, layer or "ARTWORK")
	tex:SetTexture(POI_ICONS_FILE)
	tex:SetSize(20, 20)
	tex:SetTexCoord(unpack(ATLAS_TAXI_TCOORDS[taxiTag]))
	return tex
end
