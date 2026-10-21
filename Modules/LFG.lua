-- ----------------------------------------------------------------------------
-- LFG Module
-- ----------------------------------------------------------------------------
local _G = getfenv(0)
local _, private = ...
local LibStub = _G.LibStub
---@type AtlasAddon
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)


local function startLFGSearch(categoryID, activityID)
	-- Open LFG to the group browser
	ShowLFGParentFrame(2);

	-- Set Category
	LFGBrowseFrame.CategoryDropdown:SetValue(categoryID);

	-- Set Activity
	LFGBrowseFrame.ActivityDropdown:Reset()
	LFGBrowseFrame.ActivityDropdown:ValueSetSelected(activityID, true);

	-- Start search
	LFGBrowse_DoSearch();
end

function addon:SearchLFG()
	-- LFG tool isn't available until level 10
	if (UnitLevel("player") < 10) then return end

	if #AtlasFrameLFGButton.ActivityID > 2 then
		MenuUtil.CreateContextMenu(AtlasFrameLFGButton, function(owner, rootDescription)
			for i = 2, #AtlasFrameLFGButton.ActivityID do
				rootDescription:CreateButton(C_LFGList.GetActivityFullName(AtlasFrameLFGButton.ActivityID[i]), function(activityID)
					startLFGSearch(AtlasFrameLFGButton.ActivityID[1], activityID)
				end, AtlasFrameLFGButton.ActivityID[i])
			end
		end)
	else
		startLFGSearch(AtlasFrameLFGButton.ActivityID[1], AtlasFrameLFGButton.ActivityID[2])
	end
end

function addon:SearchLFG_Enter(button)
	GameTooltip:SetOwner(button, "ANCHOR_RIGHT");
	if (UnitLevel("player") < 10) then
		GameTooltip:SetText(L["Find group for this instance"].."\n"..RED_FONT_COLOR_CODE..L["LFG is unavailable until level 10"]);
	else
		GameTooltip:SetText(L["Find group for this instance"]);
	end
end

