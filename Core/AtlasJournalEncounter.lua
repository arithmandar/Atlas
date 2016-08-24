-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2016 - Arith Hsu, Atlas Team <atlas.addon@gmail.com>

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

local L = LibStub("AceLocale-3.0"):GetLocale("Atlas");
local BB = Atlas_GetLocaleLibBabble("LibBabble-Boss-3.0");

function AtlasFrameAdventureJournalButton_OnClick(frame)
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];

	if (not EJ_GetInstanceInfo(base.JournalInstanceID)) then
		return;
	end

	if ( not EncounterJournal or not EncounterJournal:IsShown() ) then
		ToggleEncounterJournal();
	end
	EncounterJournal_ListInstances();
	EncounterJournal_DisplayInstance(base.JournalInstanceID);

	Atlas_Toggle();
	if (not EncounterJournal:IsShown()) then
		EncounterJournal:Show();
	else
		EncounterJournal:Hide();
		EncounterJournal:Show();
	end
end

function Atlas_JournalEncounter_EncounterButton_OnClick(encounterID)
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];

	if (not EJ_GetInstanceInfo(base.JournalInstanceID)) then
		return;
	end
	if (not EJ_GetEncounterInfo(encounterID)) then
		return;
	end

	if ( not EncounterJournal or not EncounterJournal:IsShown() ) then
		ToggleEncounterJournal();
	end
	EncounterJournal_ListInstances();
	EncounterJournal_DisplayInstance(base.JournalInstanceID);
	EncounterJournal_DisplayEncounter(encounterID);

	Atlas_Toggle();
	if (not EncounterJournal:IsShown()) then
		EncounterJournal:Show();
	else
		EncounterJournal:Hide();
		EncounterJournal:Show();
	end
end


function AtlasFrameAdventureJournalButton_OnEnter(frame)
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];

	if (MouseIsOver(frame)) then
		if (EJ_GetInstanceInfo(base.JournalInstanceID)) then
			EJ_SelectInstance(base.JournalInstanceID);

			local name, description = EJ_GetInstanceInfo();

			GameTooltip:SetOwner(frame, "ANCHOR_RIGHT");
			GameTooltip:SetText(name);
			GameTooltipTextLeft1:SetTextColor(1, 1, 1);
			GameTooltip:AddLine(description, nil, nil, nil, true);
			GameTooltip:AddLine(L["ATLAS_OPEN_ADVENTURE"], 0.5, 0.5, 1, true);
			GameTooltip:Show();
		end
	else
		GameTooltip:Hide();
	end
end

-- ------------------------------------------------------------
-- Call this function to translate boss name
-- Syntax 1: Atlas_GetBossName(bossname);
-- Syntax 2: Atlas_GetBossName(bossname, encounterID);
-- Syntax 2: Atlas_GetBossName(bossname, encounterID, creatureIndex);
-- ------------------------------------------------------------
function Atlas_GetBossName(bossname, encounterID, creatureIndex)
	if (encounterID) then
		local encounter;
		if (creatureIndex) then
			if (EJ_GetCreatureInfo(creatureIndex, encounterID)) then
				local _;
				_, encounter = EJ_GetCreatureInfo(creatureIndex, encounterID);
			end
		else 
			if (EJ_GetEncounterInfo(encounterID)) then
				encounter, _, _, _, link = EJ_GetEncounterInfo(encounterID);
			end
		end
		if (encounter == nil) then
			if (bossname and BB[bossname]) then
				bossname = BB[bossname];
			elseif (bossname and L[bossname]) then
				bossname = L[bossname];
			else
				--bossname = bossname;
			end
		else
			bossname = encounter;
		end
	elseif (bossname and BB[bossname]) then
		bossname = BB[bossname];
	elseif (bossname and L[bossname]) then
		bossname = L[bossname];
	else
		--bossname = bossname;
	end

	return bossname;
end

function Atlas_EncounterJournal_Binding()
	local button = _G["AtlasToggleFromEncounterJournal"];
	if (not button) then
		button = CreateFrame("Button","AtlasToggleFromEncounterJournal", EncounterJournal);
		button:SetWidth(32);
		button:SetHeight(32);
		
		button:SetPoint("TOPRIGHT", EncounterJournalCloseButton, -23, 0, "TOPRIGHT"); 
		button:SetNormalTexture("Interface\\AddOns\\Atlas\\Images\\AtlasButton-Up");
		button:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD");

		button:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
			GameTooltip:SetText(L["ATLAS_CLICK_TO_OPEN"], nil, nil, nil, nil, 1);
		end);
		button:SetScript("OnLeave", function(self) GameTooltip:Hide(); end);
		button:SetScript("OnClick",AtlasToggleFromEncounterJournal_OnClick);
	end
end

function AtlasFrameAdventureJournalMapButton_OnClick()
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];
	local mapID, mapLevel;

--	local _, _, _, _, _, _, dungeonAreaMapID = EJ_GetInstanceInfo(base.JournalInstanceID);
--	if (dungeonAreaMapID and dungeonAreaMapID > 0) then
--[[
		local AtlasMapPath = "Interface\\WorldMap\\dungeonAreaMapID\\";
		for i=1, 12 do
			_G["AtlasMapLarge"..i]:SetTexture(AtlasMapPath..dungeonAreaMapID..i);
		end
]]
	if (base.WorldMapID) then
		if (type(base.WorldMapID) == "table") then
			if (tonumber(base.WorldMapID[1]) > 0) then
				mapID = base.WorldMapID[1];
				mapLevel = base.WorldMapID[2];
			end
		else
			if (tonumber(base.WorldMapID) > 0) then
				mapID = base.WorldMapID;
			end
		end
	end
	HideUIPanel(AtlasFrame);
	WorldMapFrame.fromJournal = true;
	ShowUIPanel(WorldMapFrame);
	if (mapID) then
		SetMapByID(mapID);
	end
	if (mapLevel) then
		SetDungeonMapLevel(mapLevel);
	end
end

function AtlasFrameLarge_OnShow(self)
	--AtlasFrameLarge_AddMapButtons();
	AtlasMap_AddNPCButtonLarge();
end

--[[
local EJ_HTYPE_OVERVIEW = 3;
local function EncounterJournal_CheckForOverview(rootSectionID)
	return select(3,EJ_GetSectionInfo(rootSectionID)) == EJ_HTYPE_OVERVIEW;
end

-- codes adopted from WorldMapFrame.lua
function AtlasFrameLarge_AddMapButtons()
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];
	local instanceID = base.JournalInstanceID;
	local worldmapID = base.WorldMapID;
	
	if (worldmapID) then 
		SetMapByID(worldmapID);
	end

	local left = AtlasFrameLargeBossButtonFrame:GetLeft();
	local right = AtlasFrameLargeBossButtonFrame:GetRight();
	local top = AtlasFrameLargeBossButtonFrame:GetTop();
	local bottom = AtlasFrameLargeBossButtonFrame:GetBottom();

	if not left or not right or not top or not bottom then
		--This frame is resizing
		AtlasFrameLargeBossButtonFrame.ready = false;
		AtlasFrameLargeBossButtonFrame:SetScript("OnUpdate", AtlasFrameLarge_AddMapButtons);
		return;
	else
		AtlasFrameLargeBossButtonFrame:SetScript("OnUpdate", nil);
	end
	
	-- frame size of AtlasFrameLarge, for the map area, not the entire frame
	local width = 1002;
	local height = 668;
	
	local bossButton, displayInfo;
	local index = 1;
	local x, y, instanceID, name, description, encounterID = EJ_GetMapEncounter(index, true);

	while name do
		bossButton = _G["AtlasEJMapButton"..index];
		if (not bossButton) then -- create button
			bossButton = CreateFrame("Button", "AtlasEJMapButton"..index, AtlasFrameLargeBossButtonFrame, "AtlasFrameLargeMapButtonTemplate");
		end

		local _, _, _, rootSectionID = EJ_GetEncounterInfo(encounterID); 
		if (EncounterJournal_CheckForOverview(rootSectionID)) then
			local _, overviewDescription = EJ_GetSectionInfo(rootSectionID);
			bossButton.overviewDescription = overviewDescription;
		end
		
		bossButton.instanceID = instanceID;
		bossButton.encounterID = encounterID;
		bossButton.tooltipTitle = name;
		bossButton.tooltipText = description;
		bossButton:SetPoint("CENTER", AtlasFrameLargeBossButtonFrame, "BOTTOMLEFT", x*width +10, y*height+30);
		_, _, _, displayInfo = EJ_GetCreatureInfo(1, encounterID);
		bossButton.displayInfo = displayInfo;
		if ( displayInfo ) then
			SetPortraitTexture(bossButton.bgImage, displayInfo);
		else 
			bossButton.bgImage:SetTexture("DoesNotExist");
		end
		bossButton:Show();
		index = index + 1;
		x, y, instanceID, name, description, encounterID = EJ_GetMapEncounter(index, true);
	end
	AtlasFrameLarge.hasBosses = index ~= 1;
	
	bossButton = _G["AtlasEJMapButton"..index];
	while bossButton do
		bossButton:Hide();
		index = index + 1;
		bossButton = _G["AtlasEJMapButton"..index];
	end
	
	AtlasFrameLarge.ready = true;
	AtlasFrameLarge_CheckQuestButtons();
end

function AtlasFrameLarge_CheckQuestButtons()
	if not AtlasFrameLarge.ready then
		return;
	end
	
	--Validate that there are no quest button intersection
	local questI, bossI = 1, 1;
	local bossButton = _G["AtlasEJMapButton"..bossI];
	local questPOI = _G["poiWorldMapPOIFrame1_"..questI];
	while bossButton and bossButton:IsShown() do
		while questPOI and questPOI:IsShown() do
			local qx,qy = questPOI:GetCenter();
			local bx,by = bossButton:GetCenter();
			if not qx or not qy or not bx or not by then
				_G["AtlasEJMapButton1"]:SetScript("OnUpdate", AtlasFrameLarge_CheckQuestButtons);
				return;
			end
			
			local xdis = abs(bx-qx);
			local ydis = abs(by-qy);
			local disSqr = xdis*xdis + ydis*ydis;
			
			if EJ_QUEST_POI_MINDIS_SQR > disSqr then
				questPOI:SetPoint("CENTER", bossButton, "BOTTOMRIGHT",  -15, 15);
			end
			questI = questI + 1;
			questPOI = _G["poiWorldMapPOIFrame1_"..questI];
		end
		questI = 1;
		bossI = bossI + 1;
		bossButton = _G["AtlasEJMapButton"..bossI];
		questPOI = _G["poiWorldMapPOIFrame1_"..questI];
	end
	if _G["AtlasEJMapButton1"] then
		_G["AtlasEJMapButton1"]:SetScript("OnUpdate", nil);
	end
end
]]
