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
-- Atlas frame handling functions for Atlas addon
-- ----------------------------------------------------------------------------

local _G = getfenv(0)
local pairs, wipe = _G.pairs, _G.wipe

local table = _G.table
local tsort = table.sort

local _, private = ...
local LibStub = _G.LibStub
---@type AtlasAddon
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
-- UIDropDownMenu
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")

-- addon.db is only created in addon:OnInitialize (after this file loads), and its
-- profile table is replaced on profile changes, so resolve these lazily.
local options = setmetatable({}, {
	__index = function(_, k) return addon.db.profile.options[k] end,
	__newindex = function(_, k, v) addon.db.profile.options[k] = v end,
})
local dropdowns = setmetatable({}, {
	__index = function(_, k) return addon.db.profile.options.dropdowns[k] end,
	__newindex = function(_, k, v) addon.db.profile.options.dropdowns[k] = v end,
})

-- Simple function to toggle the Atlas frame's lock status and update it's appearance
function addon:ToggleLock()
	options.frames.lock = not options.frames.lock
	addon:UpdateLock()
	addon:RefreshMap()
end

-- Updates the appearance of the lock button based on the status of AtlasLocked
function addon:UpdateLock()
	local texture = addon.constants.LockButtonTex
	local btnLckUp, btnLckDn, btnUlckUp, btnUnlckDn = texture.LockUp, texture.LockDown, texture.UnLockUp, texture.UnLockDown
	if (options.frames.lock) then
		AtlasLockNorm:SetTexture(btnLckUp)
		AtlasLockPush:SetTexture(btnLckDn)
		AtlasLockLargeNorm:SetTexture(btnLckUp)
		AtlasLockLargePush:SetTexture(btnLckDn)
		AtlasLockSmallNorm:SetTexture(btnLckUp)
		AtlasLockSmallPush:SetTexture(btnLckDn)
	else
		AtlasLockNorm:SetTexture(btnUlckUp)
		AtlasLockPush:SetTexture(btnUnlckDn)
		AtlasLockLargeNorm:SetTexture(btnUlckUp)
		AtlasLockLargePush:SetTexture(btnUnlckDn)
		AtlasLockSmallNorm:SetTexture(btnUlckUp)
		AtlasLockSmallPush:SetTexture(btnUnlckDn)
	end
end

-- Sets the transparency of the Atlas frame based on AtlasAlpha
function addon:UpdateAlpha()
	local alpha = options.frames.alpha
	AtlasFrame:SetAlpha(alpha)
end

function addon:UpdateSmallAlpha()
	local alpha = addon.db.profile.options.frames.smallAlpha
	AtlasFrameSmall:SetAlpha(alpha)
end

function addon:UpdateLargeAlpha()
	local alpha = addon.db.profile.options.frames.largeAlpha
	AtlasFrameLarge:SetAlpha(alpha)
end

-- Sets the scale of the Atlas frame based on AtlasScale
function addon:UpdateScale()
	local scale = options.frames.scale
	AtlasFrame:SetScale(scale)
end

function addon:UpdateSmallScale()
	local scale = addon.db.profile.options.frames.smallScale
	AtlasFrameSmall:SetScale(scale)
end

function addon:UpdateLargeScale()
	local scale = addon.db.profile.options.frames.largeScale
	AtlasFrameLarge:SetScale(scale)
end


-- Toggles the size of the Atlas window between large and small frames
function addon:ToggleWindowSize()
	if ( AtlasFrameLarge:IsVisible() ) then
		if (ATLAS_SMALLFRAME_SELECTED) then
			AtlasFrameLarge:Hide()
			AtlasFrameSmall:Show()
		else
			AtlasFrameLarge:Hide()
			AtlasFrame:Show()
		end
	else
		if (ATLAS_SMALLFRAME_SELECTED) then
			AtlasFrameSmall:Hide()
			AtlasFrameLarge:Show()
		else
			AtlasFrame:Hide()
			AtlasFrameLarge:Show()
		end
	end
end

-- Toggles the legend panel between the small and large Atlas frames
function addon:ToggleLegendPanel()
	if ( AtlasFrameSmall:IsVisible() ) then
		ATLAS_SMALLFRAME_SELECTED = false
		AtlasFrameSmall:Hide()
		AtlasFrame:Show()
	else
		ATLAS_SMALLFRAME_SELECTED = true
		AtlasFrame:Hide()
		AtlasFrameSmall:Show()
	end
end


-- Function used to initialize the map type dropdown menu
-- Cycle through Atlas_MapTypes to populate the dropdown
function AtlasFrameDropDownType_Initialize()
	wipe(ATLAS_DROPDOWN_TYPES)
	local i = 1
	local ddLayouts_order = addon.dropdowns.DropDownLayouts_Order
	local ddLayouts = addon.dropdowns.DropDownLayouts
	local catName = ddLayouts_order[dropdowns.menuType]
	local subcatOrder = ddLayouts_order[catName]
	if (subcatOrder and type(subcatOrder) == "table") then 
		tsort(subcatOrder) 
		for n = 1, #subcatOrder, 1 do
			local subcatItems = ddLayouts[catName][subcatOrder[n]]
			local q = (#subcatItems-(#subcatItems%ATLAS_MAX_MENUITEMS))/ATLAS_MAX_MENUITEMS
			
			if (q > 0) then
				for p = 0, q do
					ATLAS_DROPDOWN_TYPES[i+p] = {
						text = subcatOrder[n]..format(" %d/%d", p+1, q+1),
						func = AtlasFrameDropDownType_OnClick,
					}
				end
			else
				ATLAS_DROPDOWN_TYPES[i] = {
					text = subcatOrder[n],
					func = AtlasFrameDropDownType_OnClick,
				}
			end
			i = i + q + 1
		end
	end
	for j = 1, #Atlas_MapTypes, 1 do
		ATLAS_DROPDOWN_TYPES[i] = {
			text = Atlas_MapTypes[j],
			value = Atlas_MapTypes[j],
			func = AtlasFrameDropDownType_OnClick,
		}
		i = i + 1
	end
	
	for k = 1, #ATLAS_DROPDOWN_TYPES do
		LibDD:UIDropDownMenu_AddButton(ATLAS_DROPDOWN_TYPES[k])
	end
end

-- Called whenever the map type dropdown menu is shown
function AtlasFrameDropDownType_OnShow()
	local id = dropdowns.module or 1
	LibDD:UIDropDownMenu_Initialize(AtlasFrameDropDownType, AtlasFrameDropDownType_Initialize)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameDropDownType, id)
	LibDD:UIDropDownMenu_SetWidth(AtlasFrameDropDownType, ATLAS_DROPDOWN_WIDTH)

	LibDD:UIDropDownMenu_Initialize(AtlasFrameLargeDropDownType, AtlasFrameDropDownType_Initialize)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameLargeDropDownType, id)
	LibDD:UIDropDownMenu_SetWidth(AtlasFrameLargeDropDownType, ATLAS_DROPDOWN_WIDTH)

	LibDD:UIDropDownMenu_Initialize(AtlasFrameSmallDropDownType, AtlasFrameDropDownType_Initialize)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameSmallDropDownType, id)
	LibDD:UIDropDownMenu_SetWidth(AtlasFrameSmallDropDownType, ATLAS_DROPDOWN_WIDTH)
end

-- Called whenever an item in the map type dropdown menu is clicked
-- Sets the main dropdown menu contents to reflect the category of map selected
function AtlasFrameDropDownType_OnClick(self)
	local typeID = self:GetID()
	--local catName = addon.dropdowns.DropDownLayouts_Order[profile.options.dropdowns.menuType]
	--local subcatOrder = addon.dropdowns.DropDownLayouts_Order[catName]

	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameDropDownType, typeID)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameLargeDropDownType, typeID)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameSmallDropDownType, typeID)

	dropdowns.module = typeID
	local dropdowns_catKey = self:GetText()
	local index = dropdowns[dropdowns_catKey]
	if (index and ATLAS_DROPDOWNS[typeID] and ATLAS_DROPDOWNS[typeID][index]) then
		dropdowns.zone = dropdowns[dropdowns_catKey]
	else
		dropdowns.zone = 1
	end
	AtlasFrameDropDown_OnShow()
	addon:RefreshMap()
end

function addon:GetDungeonData(id, fallbackMinRec, fallbackMaxRec)
    if (not id or not GetLFGDungeonInfo) then return nil end
    local _, typeID, subtypeID, minLevel, maxLevel, _, minRec, maxRec, _, _, _, _, maxPlayers, _, _, _, _, _, _, minGear = GetLFGDungeonInfo(id)
    if (minRec == 0) then minRec = fallbackMinRec or minLevel end
    if (maxRec == 0) then maxRec = fallbackMaxRec or maxLevel end
    return {
        typeID = typeID, subtypeID = subtypeID,
        minLevel = minLevel, maxLevel = maxLevel,
        minRecLevel = minRec, maxRecLevel = maxRec,
        maxPlayers = maxPlayers, minGearLevel = minGear,
    }
end

local function setupDungeonColorTag(dungeonID)
	local dungeonData = addon:GetDungeonData(dungeonID)
	local minLevel, minRecLevel = dungeonData and dungeonData.minLevel or 0, dungeonData and dungeonData.minRecLevel or 0
	if (minRecLevel == 0) then
		minRecLevel = minLevel
	end
	local dungeon_difficulty = addon:GetDungeonDifficultyColor(minRecLevel)
	return addon:FormatColor(dungeon_difficulty)
end

local ICON_HEROIC  = addon.constants.dungeonIcon.heroic
local ICON_MYTHIC  = addon.constants.dungeonIcon.mythic
local ICON_DUNGEON = addon.constants.dungeonIcon.dungeon
local ICON_RAID    = addon.constants.dungeonIcon.raid

function addon:IsRaidInfo(d)
	return d and (d.typeID == 2 or (d.typeID == 1 and d.subtypeID == 3))
end

function addon:FormatDungeonLevelRange(minLevel, maxLevel, icon)
	if (minLevel == nil) then return nil end

	local colortag = self:FormatColor(self:GetDungeonDifficultyColor(minLevel))
	local range = minLevel
	if (maxLevel ~= nil and minLevel ~= maxLevel) then
		range = minLevel.."-"..maxLevel
	end
	return colortag..range..icon
end

-- Function used to initialize the main dropdown menu
-- Looks at the status of AtlasType to determine how to populate the list
function AtlasFrameDropDown_Initialize()
	local ddcolor = dropdowns.color

	if (not ATLAS_DROPDOWNS[dropdowns.module]) then return end

	for _, v in pairs(ATLAS_DROPDOWNS[dropdowns.module]) do
		local zoneID = AtlasMaps[v]
		local zoneName = zoneID.ZoneName[1]
		local instanceID = zoneID.JournalInstanceID
		local dungeonID = zoneID.DungeonID
		local dungeonHeroicID = zoneID.DungeonHeroicID
		local dungeonMythicID = zoneID.DungeonMythicID

		local normalInfo = addon:GetDungeonData(dungeonID)
		local heroicInfo = addon:GetDungeonData(dungeonHeroicID, normalInfo and normalInfo.minRecLevel, normalInfo and normalInfo.maxRecLevel)
		local mythicInfo = addon:GetDungeonData(dungeonMythicID, normalInfo and normalInfo.minRecLevel, normalInfo and normalInfo.maxRecLevel)

		-- base on dungeon's minimum level or minimum required level to setup the color tag
		local colortag
		if (ddcolor) then
			local colorDungeonID = dungeonID or dungeonHeroicID or dungeonMythicID
			if (colorDungeonID) then
				colortag = setupDungeonColorTag(colorDungeonID)
			elseif (type(zoneID.MinLevel) == "number") then
				colortag = addon:FormatColor(addon:GetDungeonDifficultyColor(zoneID.MinLevel))
			end
		end

		local icontext_instance = (addon:IsRaidInfo(normalInfo) or addon:IsRaidInfo(heroicInfo) or addon:IsRaidInfo(mythicInfo)) and ICON_RAID or ICON_DUNGEON

		local parts = {}
		if (normalInfo and normalInfo.minLevel) then
			parts[#parts + 1] = addon:FormatDungeonLevelRange(normalInfo.minLevel, normalInfo.maxLevel, icontext_instance)
		end
		if (heroicInfo and heroicInfo.minLevel) then
			parts[#parts + 1] = addon:FormatDungeonLevelRange(heroicInfo.minLevel, heroicInfo.maxLevel, ICON_HEROIC)
		end
		if (mythicInfo and mythicInfo.minLevel) then
			parts[#parts + 1] = addon:FormatDungeonLevelRange(mythicInfo.minLevel, mythicInfo.maxLevel, ICON_MYTHIC)
		end
		local levelString = ""
		if (#parts > 0) then
			levelString = " - "..table.concat(parts, L["Slash"])
		end

		local tooltipTitle, tooltipText
		if (instanceID and ATLAS_HAS_EJ and EJ_GetInstanceInfo and EJ_GetInstanceInfo(instanceID)) then
			EJ_SelectInstance(tonumber(instanceID))
			tooltipTitle, tooltipText = EJ_GetInstanceInfo()
		end
		if (tooltipTitle) then
			tooltipTitle = tooltipTitle..levelString
		end

		LibDD:UIDropDownMenu_AddButton({
			text = zoneName,
			colorCode = colortag,
			func = AtlasFrameDropDown_OnClick,
			tooltipTitle = tooltipTitle,
			tooltipText = tooltipText,
			tooltipOnButton = true,
		})
	end
end

-- Called whenever the main dropdown menu is shown
function AtlasFrameDropDown_OnShow()
	local id = dropdowns.zone or 1
	LibDD:UIDropDownMenu_Initialize(AtlasFrameDropDown, AtlasFrameDropDown_Initialize)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameDropDown, id)
	LibDD:UIDropDownMenu_SetWidth(AtlasFrameDropDown, ATLAS_DROPDOWN_WIDTH)

	LibDD:UIDropDownMenu_Initialize(AtlasFrameLargeDropDown, AtlasFrameDropDown_Initialize)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameLargeDropDown, id)
	LibDD:UIDropDownMenu_SetWidth(AtlasFrameLargeDropDown, ATLAS_DROPDOWN_WIDTH)

	LibDD:UIDropDownMenu_Initialize(AtlasFrameSmallDropDown, AtlasFrameDropDown_Initialize)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameSmallDropDown, id)
	LibDD:UIDropDownMenu_SetWidth(AtlasFrameSmallDropDown, ATLAS_DROPDOWN_WIDTH)
end

-- Called whenever an item in the main dropdown menu is clicked
-- Sets the newly selected map as current and refreshes the frame
function AtlasFrameDropDown_OnClick(self)
	local mapID = self:GetID()
	local moduleID = dropdowns.module
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameDropDown, mapID)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameLargeDropDown, mapID)
	LibDD:UIDropDownMenu_SetSelectedID(AtlasFrameSmallDropDown, mapID)

	dropdowns.zone = mapID
	dropdowns[ATLAS_DROPDOWN_TYPES[moduleID].text] = mapID
	addon:RefreshMap()
end

-- When the switch button is clicked, we can basically assume that there's a match
-- Find it, set it, then update menus and the maps
function AtlasSwitchButton_OnClick()
	--local zoneID = ATLAS_DROPDOWNS[addon.db.profile.options.dropdowns.module][addon.db.profile.options.dropdowns.zone]
	if (#ATLAS_INST_ENT_DROPDOWN == 1) then
		-- One link, so we can just go there right away
		AtlasSwitchDD_Set(1)
	else
		-- More than one link, so it's dropdown menu time
		LibDD:ToggleDropDownMenu(1, nil, AtlasSwitchDD, "AtlasSwitchButton", 0, 0)
	end
end

function AtlasSwitchDD_OnLoad()
	for _, v in pairs(ATLAS_INST_ENT_DROPDOWN) do
		local info = LibDD:UIDropDownMenu_CreateInfo()
		info = {
			text = AtlasMaps[v].ZoneName[1],
			func = AtlasSwitchDD_OnClick,
		}
		LibDD:UIDropDownMenu_AddButton(info)
	end
end

function AtlasSwitchDD_OnClick(self)
	AtlasSwitchDD_Set(self:GetID())
end

function AtlasSwitchDD_Set(index)
	for k, v in pairs(ATLAS_DROPDOWNS) do
		for k2, v2 in pairs(v) do
			if (v2 == ATLAS_INST_ENT_DROPDOWN[index]) then
				dropdowns.module = k
				dropdowns.zone = k2

				AtlasFrameDropDownType_OnShow()
				AtlasFrameDropDown_OnShow()
				addon:RefreshMap()
				return
			end
		end
	end
end

function AtlasSwitchDD_Sort(a, b)
	local aa = AtlasMaps[a].ZoneName[1]
	local bb = AtlasMaps[b].ZoneName[1]
	return aa < bb
end

function AtlasFrameLarge_OnShow(self)
	addon:MapAddNPCButtonLarge()
end
