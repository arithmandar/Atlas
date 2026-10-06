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

-- This file replaces Atlas.xml. AtlasFrame, AtlasFrameLarge and AtlasFrameSmall
-- are created here, in Lua, instead of being declared in an XML <Ui> file.

-- ----------------------------------------------------------------------------
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local CreateFrame = _G.CreateFrame

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local _, private = ...

local LibStub = _G.LibStub
-- UIDropDownMenu
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")

local UI = {}
private.UI = UI

local IMAGE_PATH = "Interface\\AddOns\\Atlas\\Images\\"

-- Creates an anonymous ARTWORK texture, anchored the same way the old XML
-- <Anchor point="..."><Offset x y/></Anchor> shorthand worked (relative to parent).
local function CreateArt(parent, file, w, h, point, x, y)
	local tex = parent:CreateTexture(nil, "ARTWORK")
	tex:SetTexture(IMAGE_PATH..file)
	tex:SetSize(w, h)
	tex:SetPoint(point, x, y)
	return tex
end

-- ----------------------------------------------------------------------------
-- AtlasFrame
-- ----------------------------------------------------------------------------
local function AtlasFrame_OnLoad(self)
	private.Templates.CreateFrameDropDownType(self:GetName().."DropDownType", self)
	private.Templates.CreateFrameDropDown(self:GetName().."DropDown", self)
	LibDD:Create_UIDropDownMenu("AtlasSwitchDD", self)
	Atlas_OnLoad(self)
end

local function AtlasFrame_OnShow(self)
	Atlas_OnShow()
	PlaySound(844)
	ATLAS_SMALLFRAME_SELECTED = false
end

local function AtlasFrame_OnHide(self)
	self:StopMovingOrSizing()
	PlaySound(845)
end

local function AtlasFrame_OnDragStart(self, button)
	if (button == "LeftButton") then
		Atlas:StartMoving(self)
	end
end

local function AtlasFrame_OnDragStop(self)
	self:StopMovingOrSizing()
end

local function AtlasFrame_OnMouseUp(self, button)
	self:StopMovingOrSizing()
	if (button == "RightButton") then
		if (Atlas.db.profile.options.frames.rightClick) then
			Atlas_Toggle()
			ToggleFrame(WorldMapFrame)
		end
	end
end

function UI.CreateAtlasFrame()
	local f = CreateFrame("Frame", "AtlasFrame", UIParent)
	f:SetToplevel(true)
	f:EnableMouse(true)
	f:SetMovable(true)
	f:Hide()
	f:SetSize(1023, 631)
	f:SetPoint("TOPLEFT", 0, -104)

	private.Templates.CreateCloseButton("AtlasFrameCloseButton", f)

	local lockButton = private.Templates.CreateLockButton("AtlasFrameLockButton", f)
	local lockNorm = lockButton:CreateTexture("AtlasLockNorm")
	lockButton:SetNormalTexture(lockNorm)
	local lockPush = lockButton:CreateTexture("AtlasLockPush")
	lockButton:SetPushedTexture(lockPush)

	private.Templates.CreateOptionsButton("AtlasFrameOptionsButton", f)

	local searchEditBox = CreateFrame("EditBox", "AtlasSearchEditBox", f, "InputBoxTemplate")
	searchEditBox:SetSize(150, 32)
	searchEditBox:SetPoint("BOTTOMRIGHT", -210, 0)
	searchEditBox:SetAutoFocus(false)
	searchEditBox:SetTextInsets(0, 8, 0, 0)
	searchEditBox:SetScript("OnEnterPressed", function(self)
		Atlas:SearchAndRefresh(self:GetText())
		self:ClearFocus()
	end)

	local switchButton = CreateFrame("Button", "AtlasSwitchButton", searchEditBox, "UIPanelButtonTemplate")
	switchButton:SetSize(120, 24)
	switchButton:SetPoint("RIGHT", searchEditBox, "LEFT", -6, 0)
	switchButton:SetScript("OnClick", function()
		AtlasSwitchButton_OnClick()
	end)

	local searchButton = CreateFrame("Button", "AtlasSearchButton", searchEditBox, "UIPanelButtonTemplate")
	searchButton:SetSize(100, 24)
	searchButton:SetPoint("LEFT", searchEditBox, "RIGHT", 1, 0)
	searchButton:SetText(ATLAS_STRING_SEARCH)
	searchButton:SetScript("OnClick", function()
		Atlas:SearchAndRefresh(searchEditBox:GetText())
		searchEditBox:ClearFocus()
	end)

	local searchClearButton = CreateFrame("Button", "AtlasSearchClearButton", searchEditBox, "UIPanelButtonTemplate")
	searchClearButton:SetSize(100, 24)
	searchClearButton:SetPoint("LEFT", searchButton, "RIGHT", 0, 0)
	searchClearButton:SetText(ATLAS_STRING_CLEAR)
	searchClearButton:SetScript("OnClick", function()
		searchEditBox:SetText("")
		Atlas:SearchAndRefresh(searchEditBox:GetText())
		searchEditBox:ClearFocus()
	end)

	local scrollBar = CreateFrame("ScrollFrame", "AtlasScrollBar", f, "FauxScrollFrameTemplate")
	scrollBar:SetSize(460, 392)
	scrollBar:SetPoint("TOPLEFT", 530, -201)
	scrollBar:SetScript("OnVerticalScroll", function(self, offset)
		FauxScrollFrame_OnVerticalScroll(self, offset, 15, Atlas_ScrollBar_Update)
	end)
	scrollBar:SetScript("OnShow", function()
		Atlas_ScrollBar_Update()
	end)

	local searchContainer = CreateFrame("Frame", "AtlasSearchContainer", f)
	searchContainer:SetSize(362, 32)
	searchContainer:SetPoint("TOPLEFT", 540, -555)
	local noSearch = searchContainer:CreateFontString("AtlasNoSearch", "ARTWORK", "GameFontDisableSmall")
	noSearch:SetText(ATLAS_SEARCH_UNAVAIL)
	noSearch:SetPoint("CENTER")
	noSearch:SetVertexColor(1, 1, 1, 0.4)

	local zoneNameHeader = private.Templates.CreateHeaderText("AtlasText_ZoneName", f)
	zoneNameHeader:SetPoint("TOPLEFT", 546, -84)

	local locationHeader = private.Templates.CreateSubHeaderText("AtlasText_Location", f)
	locationHeader:SetPoint("TOPLEFT", zoneNameHeader, "TOPLEFT", 0, -20)

	local levelRangeHeader = private.Templates.CreateSubHeaderText("AtlasText_LevelRange", f)
	levelRangeHeader:SetPoint("TOPLEFT", locationHeader, "TOPLEFT", 0, -15)

	local recommendedRangeHeader = private.Templates.CreateSubHeaderText("AtlasText_RecommendedRange", f)
	recommendedRangeHeader:SetPoint("TOPLEFT", levelRangeHeader, "TOPLEFT", 0, -15)

	local minLevelHeader = private.Templates.CreateSubHeaderText("AtlasText_MinLevel", f)
	minLevelHeader:SetPoint("TOPLEFT", recommendedRangeHeader, "TOPLEFT", 0, -15)

	local playerLimitHeader = private.Templates.CreateSubHeaderText("AtlasText_PlayerLimit", f)
	playerLimitHeader:SetPoint("TOPLEFT", minLevelHeader, "TOPLEFT", 0, -15)

	local minGearLevelHeader = private.Templates.CreateSubHeaderText("AtlasText_MinGearLevel", f)
	minGearLevelHeader:SetPoint("TOPLEFT", playerLimitHeader, "TOPLEFT", 0, -15)
	minGearLevelHeader:SetScript("OnEnter", function(self)
		Atlas:DungeonMinGearLevelToolTip(self)
	end)

	f.ZoneName = private.Templates.CreateMapZoneName("AtlasFrameMapZoneName", f)
	f.NextMap = private.Templates.CreateNextMapButton("AtlasFrameNextMapButton", f)
	f.PrevMap = private.Templates.CreatePrevMapButton("AtlasFramePrevMapButton", f)
	f.AdventureJournalMap = private.Templates.CreateAdventureJournalMapButton("AtlasFrameAdventureJournalMapButton", f)
	f.AdventureJournal = private.Templates.CreateAdventureJournalButton("AtlasFrameAdventureJournalButton", f)
	f.AtlasLoot = private.Templates.CreateAtlasLootButton("AtlasFrameAtlasLootButton", f)

	private.Templates.CreateSizeUpButton("AtlasFrameSizeUpButton", f)
	private.Templates.CreateCollapseButton("AtlasFrameCollapseButton", f)

	local mapFrame = CreateFrame("Frame", "AtlasFrameMapFrame", f)
	mapFrame:SetSize(512, 512)
	mapFrame:SetPoint("TOPLEFT", f, "TOPLEFT", 18, -84)
	local mapTex = mapFrame:CreateTexture("AtlasMap", "BACKGROUND")
	mapTex:SetSize(512, 512)
	mapTex:SetPoint("TOPLEFT", mapFrame, "TOPLEFT", 0, 0)
	f.MapFrame = mapFrame

	CreateArt(f, "AtlasFrame-TopLeft", 512, 128, "TOPLEFT", 0, 0)
	CreateArt(f, "AtlasFrame-BottomLeft", 512, 512, "TOPLEFT", 0, -128)
	CreateArt(f, "AtlasFrame-TopRight", 512, 128, "TOPLEFT", 512, 0)
	CreateArt(f, "AtlasFrame-BottomRight", 512, 512, "TOPLEFT", 512, -128)

	local title = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	title:SetText(ATLAS_TITLE)
	title:SetPoint("TOP", 20, -16)

	f:SetScript("OnEvent", function(self, event, ...)
		Atlas_OnEvent(self, event, ...)
	end)
	f:SetScript("OnShow", AtlasFrame_OnShow)
	f:SetScript("OnHide", AtlasFrame_OnHide)
	f:SetScript("OnDragStart", AtlasFrame_OnDragStart)
	f:SetScript("OnDragStop", AtlasFrame_OnDragStop)
	f:SetScript("OnMouseUp", AtlasFrame_OnMouseUp)

	-- OnLoad never fires automatically for frames created via CreateFrame, so invoke it manually.
	AtlasFrame_OnLoad(f)

	return f
end

-- ----------------------------------------------------------------------------
-- AtlasFrameLarge
-- ----------------------------------------------------------------------------
local function AtlasFrameLarge_OnLoad(self)
	self.DropDownType = private.Templates.CreateFrameDropDownType(self:GetName().."DropDownType", self)
	self.DropDown = private.Templates.CreateFrameDropDown(self:GetName().."DropDown", self)
end

local function AtlasFrameLarge_OnShowScript(self)
	AtlasFrameLarge_OnShow(self)
	PlaySound(844)
end

local function AtlasFrameLarge_OnHide(self)
	self:StopMovingOrSizing()
	PlaySound(845)
end

local function AtlasFrameLarge_OnMouseDown(self, button)
	if (button == "LeftButton") then
		Atlas:StartMoving(self)
	end
end

local function AtlasFrameLarge_OnDragStop(self)
	self:StopMovingOrSizing()
end

local function AtlasFrameLarge_OnMouseUp(self, button)
	self:StopMovingOrSizing()
	if (button == "RightButton") then
		if (Atlas.db.profile.options.frames.rightClick) then
			if (AtlasFrameLarge:IsVisible()) then
				AtlasFrameLarge:Hide()
			else
				AtlasFrameLarge:Show()
			end
			ToggleFrame(WorldMapFrame)
		end
	end
end

-- Lays out the 4x3 grid of 256x256 map tiles used by the large frame.
local function CreateAtlasMapLargeTiles(parent, anchorFrame, baseX, baseY)
	local tiles = {}
	tiles[1] = parent:CreateTexture("AtlasMapLarge1", "BACKGROUND")
	tiles[1]:SetSize(256, 256)
	tiles[1]:SetPoint("TOPLEFT", anchorFrame, "TOPLEFT", baseX, baseY)

	for i = 2, 4 do
		tiles[i] = parent:CreateTexture("AtlasMapLarge"..i, "BACKGROUND")
		tiles[i]:SetSize(256, 256)
		tiles[i]:SetPoint("TOPLEFT", tiles[i - 1], "TOPRIGHT")
	end

	tiles[5] = parent:CreateTexture("AtlasMapLarge5", "BACKGROUND")
	tiles[5]:SetSize(256, 256)
	tiles[5]:SetPoint("TOPLEFT", tiles[1], "BOTTOMLEFT")

	for i = 6, 8 do
		tiles[i] = parent:CreateTexture("AtlasMapLarge"..i, "BACKGROUND")
		tiles[i]:SetSize(256, 256)
		tiles[i]:SetPoint("TOPLEFT", tiles[i - 1], "TOPRIGHT")
	end

	tiles[9] = parent:CreateTexture("AtlasMapLarge9", "BACKGROUND")
	tiles[9]:SetSize(256, 256)
	tiles[9]:SetPoint("TOPLEFT", tiles[5], "BOTTOMLEFT")

	for i = 10, 12 do
		tiles[i] = parent:CreateTexture("AtlasMapLarge"..i, "BACKGROUND")
		tiles[i]:SetSize(256, 256)
		tiles[i]:SetPoint("TOPLEFT", tiles[i - 1], "TOPRIGHT")
	end

	return tiles
end

function UI.CreateAtlasFrameLarge()
	local f = CreateFrame("Frame", "AtlasFrameLarge", UIParent)
	f:SetToplevel(true)
	f:EnableMouse(true)
	f:SetMovable(true)
	f:Hide()
	f:SetSize(1023, 790)
	f:SetPoint("TOPLEFT", 0, -104)

	private.Templates.CreateCloseButton("AtlasFrameLargeCloseButton", f)

	local lockButton = private.Templates.CreateLockButton("AtlasFrameLargeLockButton", f)
	local lockNorm = lockButton:CreateTexture("AtlasLockLargeNorm")
	lockButton:SetNormalTexture(lockNorm)
	local lockPush = lockButton:CreateTexture("AtlasLockLargePush")
	lockButton:SetPushedTexture(lockPush)

	private.Templates.CreateOptionsButton("AtlasFrameLargeOptionsButton", f)
	private.Templates.CreateSizeDownButton("AtlasFrameLargeSizeDownButton", f)

	f.NextMap = private.Templates.CreateNextMapButton("AtlasFrameLargeNextMapButton", f)
	f.PrevMap = private.Templates.CreatePrevMapButton("AtlasFrameLargePrevMapButton", f)
	f.AdventureJournalMap = private.Templates.CreateAdventureJournalMapButton("AtlasFrameLargeAdventureJournalMapButton", f)
	f.AdventureJournal = private.Templates.CreateAdventureJournalButton("AtlasFrameLargeAdventureJournalButton", f)
	f.AtlasLoot = private.Templates.CreateAtlasLootButton("AtlasFrameLargeAtlasLootButton", f)

	-- Unlike the other frame sizes, the large frame's zone name button has its own
	-- (non-template) size, anchor and font.
	local zoneName = CreateFrame("Button", "AtlasFrameLargeMapZoneName", f)
	zoneName:SetSize(10, 60)
	zoneName:SetPoint("TOPLEFT", f, "TOPLEFT", 512, -84)
	zoneName.Text = zoneName:CreateFontString(nil, "ARTWORK", "AtlasZoneTextFont")
	zoneName.Text:SetJustifyH("CENTER")
	zoneName.Text:SetPoint("TOP", 0, 0)
	f.ZoneName = zoneName

	local bossButtonFrame = CreateFrame("Frame", "AtlasFrameLargeBossButtonFrame", f)
	bossButtonFrame:SetAllPoints()

	local mapFrame = CreateFrame("Frame", "AtlasFrameLargeMapFrame", f)
	mapFrame:SetSize(1002, 668)
	mapFrame:SetPoint("TOPLEFT", f, "TOPLEFT", 17, -84)
	CreateAtlasMapLargeTiles(mapFrame, mapFrame, 0, 0)
	f.MapFrame = mapFrame

	CreateArt(f, "AtlasFrameLarge-TopLeft", 512, 512, "TOPLEFT", 0, 0)
	CreateArt(f, "AtlasFrameLarge-TopRight", 512, 512, "TOPLEFT", 512, 0)
	CreateArt(f, "AtlasFrameLarge-MidLeft", 512, 256, "TOPLEFT", 0, -512)
	CreateArt(f, "AtlasFrameLarge-MidRight", 512, 256, "TOPLEFT", 512, -512)
	CreateArt(f, "AtlasFrameLarge-BottomLeft", 512, 32, "TOPLEFT", 0, -768)
	CreateArt(f, "AtlasFrameLarge-BottomRight", 512, 32, "TOPLEFT", 512, -768)

	local title = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	title:SetText(ATLAS_TITLE)
	title:SetPoint("TOP", 20, -16)

	-- The original XML duplicated this tile grid directly under the frame's own
	-- <Layers>, on top of the identically-positioned copy inside $parentMapFrame;
	-- since both sit at the same coordinates, the visual result is unaffected, but
	-- the global AtlasMapLarge# names end up pointing at this second set.
	CreateAtlasMapLargeTiles(f, f, 17, -84)

	f:SetScript("OnShow", AtlasFrameLarge_OnShowScript)
	f:SetScript("OnHide", AtlasFrameLarge_OnHide)
	f:SetScript("OnMouseDown", AtlasFrameLarge_OnMouseDown)
	f:SetScript("OnDragStop", AtlasFrameLarge_OnDragStop)
	f:SetScript("OnMouseUp", AtlasFrameLarge_OnMouseUp)

	-- OnLoad never fires automatically for frames created via CreateFrame, so invoke it manually.
	AtlasFrameLarge_OnLoad(f)

	return f
end

-- ----------------------------------------------------------------------------
-- AtlasFrameSmall
-- ----------------------------------------------------------------------------
local function AtlasFrameSmall_OnLoad(self)
	private.Templates.CreateFrameDropDownType(self:GetName().."DropDownType", self)
	private.Templates.CreateFrameDropDown(self:GetName().."DropDown", self)
end

local function AtlasFrameSmall_OnShow(self)
	ATLAS_SMALLFRAME_SELECTED = true
	PlaySound(844)
end

local function AtlasFrameSmall_OnHide(self)
	self:StopMovingOrSizing()
	PlaySound(845)
end

local function AtlasFrameSmall_OnMouseDown(self, button)
	if (button == "LeftButton") then
		Atlas:StartMoving(self)
	end
end

local function AtlasFrameSmall_OnDragStop(self)
	self:StopMovingOrSizing()
end

local function AtlasFrameSmall_OnMouseUp(self, button)
	self:StopMovingOrSizing()
	if (button == "RightButton") then
		if (Atlas.db.profile.options.frames.rightClick) then
			if (AtlasFrameLarge:IsVisible()) then
				AtlasFrameLarge:Hide()
			else
				AtlasFrameLarge:Show()
			end
			ToggleFrame(WorldMapFrame)
		end
	end
end

function UI.CreateAtlasFrameSmall()
	local f = CreateFrame("Frame", "AtlasFrameSmall", UIParent)
	f:SetToplevel(true)
	f:EnableMouse(true)
	f:SetMovable(true)
	f:Hide()
	f:SetSize(534, 631)
	f:SetPoint("TOPLEFT", 0, -104)

	private.Templates.CreateCloseButton("AtlasFrameSmallCloseButton", f)

	local lockButton = private.Templates.CreateLockButton("AtlasFrameSmallLockButton", f)
	local lockNorm = lockButton:CreateTexture("AtlasLockSmallNorm")
	lockButton:SetNormalTexture(lockNorm)
	local lockPush = lockButton:CreateTexture("AtlasLockSmallPush")
	lockButton:SetPushedTexture(lockPush)

	private.Templates.CreateOptionsButton("AtlasFrameSmallOptionsButton", f)

	f.NextMap = private.Templates.CreateNextMapButton("AtlasFrameSmallNextMapButton", f)
	f.PrevMap = private.Templates.CreatePrevMapButton("AtlasFrameSmallPrevMapButton", f)
	f.AdventureJournalMap = private.Templates.CreateAdventureJournalMapButton("AtlasFrameSmallAdventureJournalMapButton", f)
	f.AdventureJournal = private.Templates.CreateAdventureJournalButton("AtlasFrameSmallAdventureJournalButton", f)
	f.AtlasLoot = private.Templates.CreateAtlasLootButton("AtlasFrameSmallAtlasLootButton", f)

	private.Templates.CreateExpandButton("AtlasFrameSmallExpandButton", f)
	private.Templates.CreateSizeUpButton("AtlasFrameSmallSizeUpButton", f)

	f.ZoneName = private.Templates.CreateMapZoneName("AtlasFrameSmallMapZoneName", f)

	local mapFrame = CreateFrame("Frame", "AtlasFrameSmallMapFrame", f)
	mapFrame:SetSize(512, 512)
	mapFrame:SetPoint("TOPLEFT", f, "TOPLEFT", 18, -84)
	local mapTex = mapFrame:CreateTexture("AtlasMapSmall", "BACKGROUND")
	mapTex:SetSize(512, 512)
	mapTex:SetPoint("TOPLEFT", mapFrame, "TOPLEFT", 0, 0)
	f.MapFrame = mapFrame

	CreateArt(f, "AtlasFrameSmall-TopLeft", 512, 128, "TOPLEFT", 0, 0)
	CreateArt(f, "AtlasFrameSmall-BottomLeft", 512, 512, "TOPLEFT", 0, -128)
	CreateArt(f, "AtlasFrameSmall-TopRight", 32, 128, "TOPLEFT", 512, 0)
	CreateArt(f, "AtlasFrameSmall-BottomRight", 32, 512, "TOPLEFT", 512, -128)

	local title = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
	title:SetText(ATLAS_TITLE)
	title:SetPoint("TOP", 20, -16)

	f:SetScript("OnShow", AtlasFrameSmall_OnShow)
	f:SetScript("OnHide", AtlasFrameSmall_OnHide)
	f:SetScript("OnMouseDown", AtlasFrameSmall_OnMouseDown)
	f:SetScript("OnDragStop", AtlasFrameSmall_OnDragStop)
	f:SetScript("OnMouseUp", AtlasFrameSmall_OnMouseUp)

	-- OnLoad never fires automatically for frames created via CreateFrame, so invoke it manually.
	AtlasFrameSmall_OnLoad(f)

	return f
end

-- ----------------------------------------------------------------------------
-- Build the frames now, mirroring the point at which Atlas.xml used to load
-- and instantiate them.
-- ----------------------------------------------------------------------------
UI.CreateAtlasFrame()
UI.CreateAtlasFrameLarge()
UI.CreateAtlasFrameSmall()

