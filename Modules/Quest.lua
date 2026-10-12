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
-- Quest handling functions for Atlas addon
-- ----------------------------------------------------------------------------

local _G = getfenv(0)
local _, private = ...
local C_QuestLog = _G.C_QuestLog
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted
local GetTitleForQuestID = C_QuestLog.GetTitleForQuestID
local GetQuestDifficultyLevel = C_QuestLog.GetQuestDifficultyLevel

local LibStub = _G.LibStub
---@type AtlasAddon
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)

local colors = private.constants.colors

function addon:GetQuestLevelRange()
	if (ATLAS_USES_MAINLINE_API) then
		return _G.UnitQuestTrivialLevelRange('player')
	else
		return _G.GetQuestGreenRange()
	end
end

function addon:GetQuestTitlebyID(title, id)
	if not id then
		return title
		end
	local questTitle = GetTitleForQuestID(id)
	if not questTitle then
		return title
	end

	local isCompleted = IsQuestFlaggedCompleted(id)
	local difficulty = GetQuestDifficultyLevel(id)
	local color = addon:GetDungeonDifficultyColor(difficulty)
	local colorTag = addon:FormatColor(color)
	if isCompleted then
		questTitle = colors.labels.GREY..questTitle
	else
		questTitle = colorTag.."["..difficulty.."] "..questTitle
	end
	return questTitle
end

