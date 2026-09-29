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

-- Atlas JournalEncounter Integration
-- ----------------------------------------------------------------------------
-- Localized Lua globals.
-- ----------------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local pairs = _G.pairs
local select = _G.select
local tonumber = _G.tonumber
-- Libraries
local GameTooltip, GetBuildInfo = _G.GameTooltip, _G.GetBuildInfo
local C_AddOns = _G.C_AddOns
local GetAddOnInfo = C_AddOns.GetAddOnInfo
local C_AdventureJournal = _G.C_AdventureJournal
local C_EncounterJournal = _G.C_EncounterJournal
local EJ_GetEncounterInfo = _G.EJ_GetEncounterInfo
local EJ_GetCreatureInfo = _G.EJ_GetCreatureInfo
local EJ_GetInstanceInfo = _G.EJ_GetInstanceInfo
local GetSectionInfo = C_EncounterJournal.GetSectionInfo

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local _, private = ...
local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local BB = Atlas_GetLocaleLibBabble("LibBabble-Boss-3.0")

-- Adopted from EncounterJournal
local EJ_HTYPE_OVERVIEW = 3

function addon:EncounterJournal_IsHeaderTypeOverview(headerType)
	return headerType == EJ_HTYPE_OVERVIEW
end

-- Falls back to the Babble-Boss / Atlas locale tables to translate a boss name.
local function TranslateBossNameFallback(bossname, LL, checkBBFirst)
	if (not bossname) then return bossname end

	if (checkBBFirst) then
		if (BB[bossname]) then
			return BB[bossname]
		elseif (L[bossname]) then
			return LL and LL[bossname] or bossname
		end
	else
		if (L[bossname]) then
			return LL and LL[bossname] or bossname
		elseif (BB[bossname]) then
			return BB[bossname]
		end
	end

	return bossname
end

-- ------------------------------------------------------------
-- Call this function to translate boss name
-- Syntax 1: Atlas_GetBossName(bossname);
-- Syntax 2: Atlas_GetBossName(bossname, encounterID);
-- Syntax 2: Atlas_GetBossName(bossname, encounterID, creatureIndex);
-- ------------------------------------------------------------
function addon:GetBossName(bossname, encounterID, creatureIndex, moduleName)
	local LL
	if (moduleName) then LL = LibStub("AceLocale-3.0"):GetLocale("Atlas_"..moduleName) end
	
	if (ATLAS_HAS_EJ) then
		if (encounterID and EJ_GetEncounterInfo) then
			local _, encounter, iconImage
			if (not creatureIndex) then
				encounter = EJ_GetEncounterInfo(encounterID)
				_, _, _, _, iconImage = EJ_GetCreatureInfo(1, encounterID)
			else
				-- id, name, description, displayInfo, iconImage = EJ_GetCreatureInfo(index[, encounterID])
				_, encounter, _, _, iconImage = EJ_GetCreatureInfo(creatureIndex or 1, encounterID)
			end

			if (encounter == nil) then
				bossname = TranslateBossNameFallback(bossname, LL, false)
			else
				bossname = iconImage and format("|T%d:0:2.5|t%s", iconImage, encounter) or encounter
			end
		else
			bossname = TranslateBossNameFallback(bossname, LL, false)
		end
	else
		bossname = TranslateBossNameFallback(bossname, LL, true)
	end

	return bossname
end

function Atlas_GetBossName(bossname, encounterID, creatureIndex)
	return addon:GetBossName(bossname, encounterID, creatureIndex)
end

function addon:GetEJSectionTitle(bossname, sectionID, moduleName)
	if (ATLAS_HAS_EJ) then
		if not bossname or not sectionID then
			return nil
		end
		local info = GetSectionInfo(sectionID)
		return info and info.title or bossname
	else
		local LL
		if (moduleName) then LL = LibStub("AceLocale-3.0"):GetLocale("Atlas_"..moduleName) end
		return TranslateBossNameFallback(bossname, LL, true)
	end
end


function Atlas_GetEJSectionTitle(bossname, sectionID)
	return addon:GetEJSectionTitle(bossname, sectionID)
end

function addon:AdventureJournalButton_OnClick(frame)
	if (ATLAS_HAS_EJ) then 
	
		local instanceID = frame.instanceID
		local disabled = not (C_AdventureJournal and C_AdventureJournal.CanBeShown())
		--if (disabled) then return end
		
		if (not instanceID) then
			return
		end

		if (not EJ_GetInstanceInfo(instanceID)) then
			return
		end

		if ( not EncounterJournal or not EncounterJournal:IsShown() ) then
			ToggleEncounterJournal()
		end
		-- EncounterJournal_ListInstances();
		NavBar_Reset(EncounterJournal.navBar)
		EncounterJournal_DisplayInstance(instanceID)

		Atlas_Toggle()
	end
end

function addon:AdventureJournalButton_OnEnter(frame)
	if (ATLAS_HAS_EJ) then
	
		local instanceID = frame.instanceID
		if (not instanceID) then return end

		if (frame:IsMouseOver()) then
			if (EJ_GetInstanceInfo(instanceID)) then
				EJ_SelectInstance(instanceID)

				local name, description = EJ_GetInstanceInfo()
				--local disabled = not (C_AdventureJournal and C_AdventureJournal.CanBeShown())

				GameTooltip:SetOwner(frame, "ANCHOR_RIGHT")
				GameTooltip:SetText(name, 1, 1, 1)
				GameTooltipTextLeft1:SetTextColor(1, 1, 1)
				GameTooltip:AddLine(description, nil, nil, nil, true)
				--if (disabled) then
				--	GameTooltip:AddLine(FEATURE_NOT_YET_AVAILABLE, 0.7, 0, 0, true)
				--else
					GameTooltip:AddLine(L["ATLAS_OPEN_ADVENTURE"], 0.5, 0.5, 1, true)
				--end
				GameTooltip:Show()
			end
		else
			GameTooltip:Hide()
		end
	end
end

-- Shared OnClick handler for boss/encounter buttons (AtlasFrameBossButtonTemplate).
function addon:BossButton_OnClick(self, button)
	if (IsShiftKeyDown() and self.link) then
		if (IsModifiedClick("CHATLINK") and ChatEdit_GetActiveWindow()) then
			ChatEdit_InsertLink(self.link)
		end
		return
	end

	if (not ATLAS_HAS_EJ) then return end

	if (button == "RightButton") then
		if (AtlasFrameSmall:IsVisible()) then
			addon:ToggleLegendPanel()
		end
		if (AtlasEJLootFrame:IsShown()) then
			AtlasEJLootFrame:Hide()
		else
			addon:AdventureJournal_EncounterButton_OnClick(self.instanceID, self.encounterID, true)
			ToggleEncounterJournal()
			Atlas_EncounterJournal_DisplayLoot(self.instanceID, self.encounterID)
		end
	elseif (button == "LeftButton") then
		addon:AdventureJournal_EncounterButton_OnClick(self.instanceID, self.encounterID)
	end
end

function addon:AdventureJournal_EncounterButton_OnClick(instanceID, encounterID, keepAtlas)
	if (ATLAS_HAS_EJ) then 
	
		if (not instanceID or not encounterID) then return end
		
		local disabled = not (C_AdventureJournal and C_AdventureJournal.CanBeShown())
		--if (disabled) then return end

		if (not EJ_GetInstanceInfo(instanceID)) then
			return
		end
		if (not EJ_GetEncounterInfo(encounterID)) then
			return
		end

		if ( not EncounterJournal or not EncounterJournal:IsShown() ) then
			ToggleEncounterJournal()
		end
		-- EncounterJournal_ListInstances();
		NavBar_Reset(EncounterJournal.navBar)
		EncounterJournal_DisplayInstance(instanceID)
		EncounterJournal_DisplayEncounter(encounterID)

		if (not keepAtlas) then
			Atlas_Toggle()
		end
	end
end

function addon:AdventureJournal_MapButton_OnClick(frame)
	if (ATLAS_HAS_EJ) then 
	
		local uiMapID = frame.mapID
		local dungeonLevel = frame.dungeonLevel

		HideUIPanel(AtlasFrame)
		local disabled = not (C_AdventureJournal and C_AdventureJournal.CanBeShown())
		--if (disabled) then 
		--	WorldMapFrame.fromJournal = false
		--else
			WorldMapFrame.fromJournal = true
		--end
		ShowUIPanel(WorldMapFrame)
		if (uiMapID) then
			WorldMapFrame:SetMapID(uiMapID)
		end
	--	if (dungeonLevel) then
	--		SetDungeonMapLevel(dungeonLevel)
	--	end
	end
end

-- Added Atlas button to Encounter Journal
function addon:EncounterJournal_Binding()
	if (not ATLAS_HAS_EJ) then return end
	local function autoSelect_from_EncounterJournal()
		local instanceID = EncounterJournal.instanceID
		
		if (not instanceID) then
			return
		end

		for type_k, type_v in pairs(ATLAS_DROPDOWNS) do
			for zone_k, zone_v in pairs(type_v) do
				if (AtlasMaps[zone_v].JournalInstanceID and tonumber(AtlasMaps[zone_v].JournalInstanceID) == instanceID) then
					Atlas.db.profile.options.dropdowns.module = type_k
					Atlas.db.profile.options.dropdowns.zone = zone_k
					Atlas_Refresh()
					return
				end
			end
		end
	end

	-- Encounter Journal's button bidding
	local function toggleFromEncounterJournal_OnClick(self)
		autoSelect_from_EncounterJournal()
		ToggleFrame(EncounterJournal)
		Atlas_Toggle()
	end

	local function toggleFromEncounterJournal_OnShow(self)
		local ElvUI = select(4, GetAddOnInfo("ElvUI"))

		if (not ElvUI) then return end
		local ElvUI_BZSkin = false

		if (ElvUI and ElvPrivateDB) then
			local profileKey
			if ElvPrivateDB.profileKeys then
				profileKey = ElvPrivateDB.profileKeys[UnitName("player")..' - '..GetRealmName()]
			end

			if profileKey and ElvPrivateDB.profiles and ElvPrivateDB.profiles[profileKey] then
				if (ElvPrivateDB.profiles[profileKey]["skins"]["blizzard"]["enable"] and ElvPrivateDB.profiles[profileKey]["skins"]["blizzard"]["encounterjournal"]) then
					ElvUI_BZSkin = true
				end
			end
		end
		
		if (ElvUI_BZSkin) then
			local button = _G["AtlasToggleFromEncounterJournal"]
			if (button) then
				button:SetNormalTexture("Interface\\WorldMap\\WorldMap-Icon")
				button:SetWidth(16)
				button:SetHeight(16)
				button:SetPoint("TOPRIGHT", EncounterJournalCloseButton, -28, -6, "TOPRIGHT") 
			end
		end
	end

	local button = _G["AtlasToggleFromEncounterJournal"]
	if (not button) then
		button = CreateFrame("Button","AtlasToggleFromEncounterJournal", EncounterJournal)
		button:SetWidth(32)
		button:SetHeight(32)
		
		button:SetPoint("TOPRIGHT", EncounterJournalCloseButton, "TOPRIGHT", -23, 0 )
		button:SetNormalTexture("Interface\\AddOns\\Atlas\\Images\\AtlasButton-Up")
		button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")

		button:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
			GameTooltip:SetText(L["ATLAS_CLICK_TO_OPEN"], 1.0, 0.82, 0.0, nil, true)
		end)
		button:SetScript("OnLeave", function() GameTooltip:Hide() end)
		button:SetScript("OnClick", toggleFromEncounterJournal_OnClick)
		button:SetScript("OnShow", toggleFromEncounterJournal_OnShow)
	end
end

-- End of Encounter Journal's button bidding

