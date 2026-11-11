-- Run from the addon directory with: lua tests\Factions.lua
getfenv = getfenv or function() return _G end

local addon = {}
LibStub = function()
	return {
		GetAddon = function(_, name)
			assert(name == "Atlas")
			return addon
		end,
	}
end

local calls = 0
local modernResult
local legacyResult
C_Reputation = {
	GetFactionDataByID = function(id)
		assert(ATLAS_USES_MAINLINE_API)
		assert(id == 123)
		calls = calls + 1
		return modernResult
	end,
}
GetFactionInfoByID = function(id)
	assert(not ATLAS_USES_MAINLINE_API)
	assert(id == 123)
	calls = calls + 1
	return legacyResult, "description"
end

local separator = package.config:sub(1, 1)
assert(loadfile("Modules" .. separator .. "Factions.lua"))("Atlas", { addon_name = "Atlas" })

for _, mainline in ipairs({ true, false }) do
	ATLAS_USES_MAINLINE_API = mainline
	modernResult = { name = "Localized" }
	legacyResult = "Localized"
	calls = 0
	assert(addon:GetFactionName("Fallback", 123) == "Localized")
	assert(calls == 1)

	modernResult = nil
	legacyResult = nil
	assert(addon:GetFactionName("Fallback", 123) == "Fallback")
	assert(addon:GetFactionName(nil, 123) == nil)
	assert(calls == 3)

	assert(addon:GetFactionName("Fallback", nil) == "Fallback")
	assert(calls == 3)
end

ATLAS_USES_MAINLINE_API = true
modernResult = {}
assert(addon:GetFactionName("Fallback", 123) == "Fallback")

print("Faction lookup tests passed")
