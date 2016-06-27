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

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas", "enUS", true, true);
-- Localize file must set above to false, for example:
--    local AL = AceLocale:NewLocale("Atlas", "deDE", false);

-- Atlas English Localization
--if ( GetLocale() ==	"enUS" ) then
-- Define the leading strings to be ignored while sorting
-- Ex: The Stockade
AtlasSortIgnore = {"the (.+)"};

-- Syntax: ["real_zone_name"] = "localized map zone name"
AtlasZoneSubstitutions = {
	["Ahn'Qiraj"] = "Temple of Ahn'Qiraj";
	["The Temple of Atal'Hakkar"] = "Sunken Temple";
--	["Throne of Tides"] = "The Abyssal Maw: Throne of the Tides";
};
--end


if L then
--@localization(locale="enUS", format="lua_additive_table")@

--@do-not-package@
--************************************************
-- UI terms and common strings
--************************************************
	L["ATLAS_TITLE"] = "Atlas";

	L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas Bindings";
	L["BINDING_NAME_ATLAS_TOGGLE"] = "Toggle Atlas";
	L["BINDING_NAME_ATLAS_OPTIONS"] = "Toggle Options";
	L["BINDING_NAME_ATLAS_AUTOSEL"] = "Auto-Select";

	L["ATLAS_SLASH"] = "/atlas";
	L["ATLAS_SLASH_OPTIONS"] = "options";

	L["ATLAS_STRING_LOCATION"] = "Location";
	L["ATLAS_STRING_LEVELRANGE"] = "Level"; -- shorten from "Level Range" as we are running out of space
	L["ATLAS_STRING_RECLEVELRANGE"] = "Rec. Level"; -- abbrevation and shorten of "Recommended Level Range", the dungeon's recommended level range
	L["ATLAS_STRING_PLAYERLIMIT"] = "Player Limit";
	L["ATLAS_STRING_SELECT_CAT"] = "Select Category";
	L["ATLAS_STRING_SELECT_MAP"] = "Select Map";
	L["ATLAS_STRING_SEARCH"] = "Search";
	L["ATLAS_STRING_CLEAR"] = "Clear";
	L["ATLAS_STRING_MINLEVEL"] = "Minimum Level";

	L["ATLAS_OPTIONS_BUTTON"] = "Options";
	L["ATLAS_OPTIONS_SHOWBUT"] = "Show Button on Minimap";
	L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "Show Atlas button around the minimap.";
	L["ATLAS_OPTIONS_AUTOSEL"] = "Auto-Select Instance Map";
	L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Auto-select instance map, Atlas will detect your location to choose the best instance map for you.";
	L["ATLAS_OPTIONS_BUTPOS"] = "Button Position";
	L["ATLAS_OPTIONS_LOCK"] = "Lock Atlas window";
	L["ATLAS_OPTIONS_LOCK_TIP"] = "Toggle lock / unlock of Atlas window.";
	L["ATLAS_OPTIONS_TRANS"] = "Transparency";
	L["ATLAS_OPTIONS_RCLICK"] = "Right-Click for World Map";
	L["ATLAS_OPTIONS_RCLICK_TIP"] = "Enable the Right-Click in Atlas window to switch to WoW World Map.";
	L["ATLAS_OPTIONS_RESETPOS"] = "Reset Position";
	L["ATLAS_OPTIONS_ACRONYMS"] = "Display Acronyms";
	L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "Display the instance's acronym in the map details.";
	L["ATLAS_OPTIONS_SCALE"] = "Atlas Frame Scale";
	L["ATLAS_OPTIONS_BOSS_DESC"] = "Show boss description when available";
	L["ATLAS_OPTIONS_BOSS_DESC_TIP"] = "When mouse hover the boss number, display the boss description when relative information is available.";
	L["ATLAS_OPTIONS_BOSS_DESC_SCALE"] = "Boss Description Map ToolTip Scale";
	L["ATLAS_OPTIONS_BUTRAD"] = "Button Radius";
	L["ATLAS_OPTIONS_CLAMPED"] = "Clamp window to screen";
	L["ATLAS_OPTIONS_CLAMPED_TIP"] = "Clamp Atlas window to screen, disable to allow Atlas window can be dragged outside the game screen.";
	L["ATLAS_OPTIONS_CTRL"] = "Hold down Control for tooltips";
	L["ATLAS_OPTIONS_CTRL_TIP"] = "Enable to show tooltips text while hold down control key and mouse over the map info. Useful when the text is too long to be displayed in the window.";
	L["ATLAS_OPTIONS_DONTSHOWAGAIN"] = "Don't show the same information again.";
	L["ATLAS_OPTIONS_CHECKMODULE"] = "Remind me for missing module(s) / plug-in(s).";
	L["ATLAS_OPTIONS_CHECKMODULE_TIP"] = "Enable to perform checking if any missing Atlas module / plug-in after WoW loaded.";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "Show dungeon dropdown in colors";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "Based on the dungeon's recommended minimul level and player's level, to show the dungeon with difficulty colors.";

	L["ATLAS_BUTTON_CLOSE"] = "Close";
	L["ATLAS_LDB_HINT"] = "Left-Click to open Atlas.\nRight-Click for Atlas options.";
	L["ATLAS_MINIMAPLDB_HINT"] = "Left-Click to open Atlas.\nRight-Click for Atlas options.\nLeft-click and drag to move this button.";

	L["ATLAS_OPTIONS_CATDD"] = "Sort Instance Maps by:";
	L["ATLAS_DDL_CONTINENT"] = "Continent";	-- Sort Instance Maps by: Continent
	L["ATLAS_DDL_CONTINENT_EASTERN"] = "Eastern Kingdoms Instances";
	L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "Kalimdor Instances";
	L["ATLAS_DDL_CONTINENT_OUTLAND"] = "Outland Instances";
	L["ATLAS_DDL_CONTINENT_NORTHREND"] = "Northrend Instances";
	L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "Deepholm Instances";
	L["ATLAS_DDL_CONTINENT_PANDARIA"] = "Pandaria Instances";
	L["ATLAS_DDL_CONTINENT_DRAENOR"] = "Draenor Instances";
	L["ATLAS_DDL_CONTINENT_BROKENISLES"] = "Broken Isles Instances";
	L["ATLAS_DDL_LEVEL"] = "Level";		-- Sort Instance Maps by: Level
	L["ATLAS_DDL_LEVEL_UNDER45"] = "Instances Under Level 45";
	L["ATLAS_DDL_LEVEL_45TO60"] = "Instances Level 45-60";
	L["ATLAS_DDL_LEVEL_60TO70"] = "Instances Level 60-70";
	L["ATLAS_DDL_LEVEL_70TO80"] = "Instances Level 70-80";
	L["ATLAS_DDL_LEVEL_80TO85"] = "Instances Level 80-85";
	L["ATLAS_DDL_LEVEL_85TO90"] = "Instances Level 85-90";
	L["ATLAS_DDL_LEVEL_90TO100"] = "Instances Level 90-100";
	L["ATLAS_DDL_LEVEL_100PLUS"] = "Instances Level 100+";
	L["ATLAS_DDL_LEVEL_100TO110"] = "Instances Level 100-110";
	L["ATLAS_DDL_LEVEL_110PLUS"] = "Instances Level 110+";
	L["ATLAS_DDL_PARTYSIZE"] = "Party Size";	-- Sort Instance Maps by: Party Size
	L["ATLAS_DDL_PARTYSIZE_5_AE"] = "Instances for 5 Players A-E";
	L["ATLAS_DDL_PARTYSIZE_5_FS"] = "Instances for 5 Players F-S";
	L["ATLAS_DDL_PARTYSIZE_5_TZ"] = "Instances for 5 Players T-Z";
	L["ATLAS_DDL_PARTYSIZE_10_AN"] = "Instances for 10 Players A-N";
	L["ATLAS_DDL_PARTYSIZE_10_OZ"] = "Instances for 10 Players O-Z";
	L["ATLAS_DDL_PARTYSIZE_20TO40AH"] = "Instances for 20-40 Players A-H";
	L["ATLAS_DDL_PARTYSIZE_20TO40IZ"] = "Instances for 20-40 Players I-Z";
	L["ATLAS_DDL_EXPANSION"] = "Expansion";	-- Sort Instance Maps by: Expansion
	L["ATLAS_DDL_EXPANSION_OLD_AO"] = "Old World Instances A-O";
	L["ATLAS_DDL_EXPANSION_OLD_PZ"] = "Old World Instances P-Z";
	L["ATLAS_DDL_EXPANSION_BC"] = "Burning Crusade Instances";
	L["ATLAS_DDL_EXPANSION_WOTLK"] = "Wrath of the Lich King Instances";
	L["ATLAS_DDL_EXPANSION_CATA"] = "Cataclysm Instances";
	L["ATLAS_DDL_EXPANSION_MOP"] = "Mists of Pandaria Instances";
	L["ATLAS_DDL_EXPANSION_WOD"] = "Warlords of Draenor Instances";
	L["ATLAS_DDL_EXPANSION_LEGION"] = "Legion Instances";
	L["ATLAS_DDL_TYPE"] = "Type";			-- -- Sort Instance Maps by: Map Type
	L["ATLAS_DDL_TYPE_INSTANCE_AB"] = "Instances A-B";
	L["ATLAS_DDL_TYPE_INSTANCE_CF"] = "Instances C-F";
	L["ATLAS_DDL_TYPE_INSTANCE_GM"] = "Instances G-M";
	L["ATLAS_DDL_TYPE_INSTANCE_NS"] = "Instances N-S";
	L["ATLAS_DDL_TYPE_INSTANCE_TZ"] = "Instances T-Z";
	L["ATLAS_DDL_TYPE_ENTRANCE"] = "Entrances";

	L["ATLAS_INSTANCE_BUTTON"] = "Instance";
	L["ATLAS_ENTRANCE_BUTTON"] = "Entrance";
	L["ATLAS_SEARCH_UNAVAIL"] = "Search Unavailable";

	L["ATLAS_DEP_MSG1"] = "Atlas has detected outdated module(s).";
	L["ATLAS_DEP_MSG2"] = "They have been disabled for this character.";
	L["ATLAS_DEP_MSG3"] = "Delete them from your AddOns folder.";
	L["ATLAS_DEP_OK"] = "Ok";

	L["ATLAS_INFO"] = "Atlas Information";
	L["ATLAS_INFO_12200"] = "Important Notice:\n\nDue to the concern of increasing addon file size, we have moved out \npart of our dungeon maps and built-in plug-ins into separated addon package.\n\nUsers who download our addons from some of the famous game web sites \nmay only get our core addon which only include the Atlas core function \nand the latest WoW expansion maps.\n\nIf you also want to see all the old expansions' maps, and also want all those \nAtlas plug-ins made by us, you have to download and install them separately.\n\nRead below forum topic for more information:\n|cff6666ffhttp://www.atlasmod.com/phpBB3/viewtopic.php?t=1522|cffffffff\n\nOr visit our website to see where to download:\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";
	L["ATLAS_INFO_12201"] = "Please be advised that we have created a new plug-in - |cff6666ffAtlas Scenarios|cffffffff, to \nprovide the brand-new Scenarios maps introduced in WoW 5.0. \n\nCheck out our web site for more details, and don't forget to download / \ninstall it separately.\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";

	L["ATLAS_MISSING_MODULE"] = "Atlas has detected missing module(s) / plugin(s): ";

--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************

	--Common strings
	L["East"] = "East";
	L["North"] = "North";
	L["South"] = "South";
	L["West"] = "West";

	--World Events, Festival
	L["Brewfest"] = "Brewfest";
	L["Hallow's End"] = "Hallow's End";
	L["Love is in the Air"] = "Love is in the Air";
	L["Lunar Festival"] = "Lunar Festival";
	L["Midsummer Festival"] = "Midsummer Festival";

	--Misc strings
	L["Colon"] = ": "; -- The colon symbol to be used in string, ex: "Zone: Firelands
	L["Adult"] = "Adult";
	L["AKA"] = "AKA"; -- As Known As
	L["Arcane Container"] = "Arcane Container";
	L["Arms Warrior"] = "Arms Warrior";
	L["Attunement Required"] = "Attunement Required";
	L["Back"] = "Back";
	L["Basement"] = "Basement";
	L["Blacksmithing Plans"] = "Blacksmithing Plans";
	L["Chase Begins"] = "Chase Begins";
	L["Chase Ends"] = "Chase Ends";
	L["Child"] = "Child";
	L["Click to open Dungeon Journal window."] = "Click to open Dungeon Journal window.";
	L["Connection"] = "Connection";
	L["Elevator"] = "Elevator";
	L["End"] = "End";
	L["Engineer"] = "Engineer";
	L["Entrance"] = "Entrance";
	L["Event"] = "Event";
	L["Exalted"] = "Exalted";
	L["Exit"] = "Exit";
	L["Fourth Stop"] = "Fourth Stop";
	L["Front"] = "Front";
	L["Ghost"] = "Ghost";
	L["Graveyard"] = "Graveyard";
	L["Heroic"] = "Heroic";
	L["Holy Paladin"] = "Holy Paladin";
	L["Holy Priest"] = "Holy Priest";
	L["Hunter"] = "Hunter";
	L["Imp"] = "Imp";
	L["Key"] = "Key";
	L["Lower"] = "Lower";
	L["Mage"] = "Mage";
	L["Meeting Stone"] = "Meeting Stone";
	L["Middle"] = "Middle";
	L["Monk"] = "Monk";
	L["Moonwell"] = "Moonwell";
	L["Optional"] = "Optional";
	L["Orange"] = "Orange";
	L["Outside"] = "Outside";
	L["Paladin"] = "Paladin";
	L["Portal"] = "Portal";
	L["Priest"] = "Priest";
	L["Protection Warrior"] = "Protection Warrior";
	L["Purple"] = "Purple";
	L["Random"] = "Random";
	L["Rare"] = "Rare";
	L["Repair"] = "Repair";
	L["Retribution Paladin"] = "Retribution Paladin";
	L["Rewards"] = "Rewards";
	L["Rogue"] = "Rogue";
	L["Second Stop"] = "Second Stop";
	L["Shadow Priest"] = "Shadow Priest";
	L["Shaman"] = "Shaman";
	L["Spawn Point"] = "Spawn Point";
	L["Start"] = "Start";
	L["Summon"] = "Summon";
	L["Teleporter"] = "Teleporter";
	L["Teleporter destination"] = "Teleporter destination";
	L["Third Stop"] = "Third Stop";
	L["Top"] = "Top";
	L["Tunnel"] = "Tunnel";
	L["Underwater"] = "Underwater";
	L["Upper"] = "Upper";
	L["Varies"] = "Varies";
	L["Wanders"] = "Wanders";
	L["Warlock"] = "Warlock";
	L["Warrior"] = "Warrior";
	L["Wave 5"] = "Wave 5";
	L["Wave 6"] = "Wave 6";
	L["Wave 10"] = "Wave 10";
	L["Wave 12"] = "Wave 12";
	L["Wave 18"] = "Wave 18";
	L["MapsNotFound"] = "Current selected dungeon does not have a \ncorresponding map image associated with. \n\nPlease make sure you have installed \nthe corresponding Atlas map module(s).";
	L["PossibleMissingModule"] = "It is likely this map is from this module: ";

	--Classic Acronyms
	L["AQ"] = "AQ"; -- Ahn'Qiraj
	L["AQ10"] = "AQ10"; -- Ruins of Ahn'Qiraj
	L["AQ40"] = "AQ40"; -- Temple of Ahn'Qiraj
	L["BFD"] = "BFD"; -- Blackfathom Deeps
	L["BRD"] = "BRD"; -- Blackrock Depths
	L["BRM"] = "BRM"; -- Blackrock Mountain
	L["BWL"] = "BWL"; -- Blackwing Lair
	L["DM"] = "DM"; -- Dire Maul
	L["Gnome"] = "Gnome"; -- Gnomeregan
	L["LBRS"] = "LBRS"; -- Lower Blackrock Spire
	L["Mara"] = "Mara"; -- Maraudon
	L["MC"] = "MC"; -- Molten Core
	L["RFC"] = "RFC"; -- Ragefire Chasm
	L["RFD"] = "RFD"; -- Razorfen Downs
	L["RFK"] = "RFK"; -- Razorfen Kraul
	L["ST"] = "ST"; -- Sunken Temple
	L["Strat"] = "Strat"; -- Stratholme
	L["Stocks"] = "Stocks"; -- The Stockade
	L["Ulda"] = "Ulda"; -- Uldaman
	L["WC"] = "WC"; -- Wailing Caverns
	L["ZF"] = "ZF"; -- Zul'Farrak

	--BC Acronyms
	L["AC"] = "AC"; -- Auchenai Crypts
	L["Arca"] = "Arca"; -- The Arcatraz
	L["Auch"] = "Auch"; -- Auchindoun
	L["BF"] = "BF"; -- The Blood Furnace
	L["BT"] = "BT"; -- Black Temple
	L["Bota"] = "Bota"; -- The Botanica
	L["CoT"] = "CoT"; -- Caverns of Time
	L["CoT1"] = "CoT1"; -- Old Hillsbrad Foothills
	L["CoT2"] = "CoT2"; -- The Black Morass
	L["CoT3"] = "CoT3"; -- Hyjal Summit
	L["CR"] = "CR"; -- Coilfang Reservoir
	L["GL"] = "GL"; -- Gruul's Lair
	L["HC"] = "HC"; -- Hellfire Citadel
	L["Kara"] = "Kara"; -- Karazhan
	L["MaT"] = "MT"; -- Magisters' Terrace
	L["Mag"] = "Mag"; -- Magtheridon's Lair
	L["Mech"] = "Mech"; -- The Mechanar
	L["MT"] = "MT"; -- Mana-Tombs
	L["Ramp"] = "Ramp"; -- Hellfire Ramparts
	L["SSC"] = "SSC"; -- Serpentshrine Cavern
	L["Seth"] = "Seth"; -- Sethekk Halls
	L["SH"] = "SH"; -- The Shattered Halls
	L["SL"] = "SL"; -- Shadow Labyrinth
	L["SP"] = "SP"; -- The Slave Pens
	L["SuP"] = "SP"; -- Sunwell Plateau
	L["SV"] = "SV"; -- The Steamvault
	L["TK"] = "TK"; -- Tempest Keep
	L["UB"] = "UB"; -- The Underbog

	--WotLK Acronyms
	L["AK, Kahet"] = "AK, Kahet"; -- Ahn'kahet
	L["AN, Nerub"] = "AN, Nerub"; -- Azjol-Nerub
	L["Champ"] = "Champ"; -- Trial of the Champion
	L["CoT-Strat"] = "CoT-Strat"; -- Culling of Stratholme
	L["Crus"] = "Crus"; -- Trial of the Crusader
	L["DTK"] = "DTK"; -- Drak'Tharon Keep
	L["FoS"] = "FoS"; -- The Forge of Souls
	L["FH1"] = "FH1"; -- The Forge of Souls
	L["Gun"] = "Gun"; -- Gundrak
	L["HoL"] = "HoL"; -- Halls of Lightning
	L["HoR"] = "HoR"; -- Halls of Reflection
	L["FH3"] = "FH3"; -- Halls of Reflection
	L["HoS"] = "HoS"; -- Halls of Stone
	L["IC"] = "IC"; -- Icecrown Citadel
	L["Nax"] = "Nax"; -- Naxxramas
	L["Nex, Nexus"] = "Nex, Nexus"; -- The Nexus
	L["Ocu"] = "Ocu"; -- The Oculus
	L["Ony"] = "Ony"; -- Onyxia's Lair
	L["OS"] = "OS"; -- The Obsidian Sanctum
	L["PoS"] = "PoS"; -- Pit of Saron
	L["FH2"] = "FH2"; -- Pit of Saron
	L["RS"] = "RS"; -- The Ruby Sanctum
	L["TEoE"] = "TEoE"; -- The Eye of Eternity
	L["UK, Keep"] = "UK, Keep"; -- Utgarde Keep
	L["Uldu"] = "Uldu"; -- Ulduar
	L["UP, Pinn"] = "UP, Pinn"; -- Utgarde Pinnacle
	L["VH"] = "VH"; -- The Violet Hold
	L["VoA"] = "VoA"; -- Vault of Archavon

	--Zones not included in LibBabble-Zone
	L["Crusaders' Coliseum"] = "Crusaders' Coliseum"; 

	--Cataclysm Acronyms
	L["BH"] = "BH"; --Baradin Hold
	L["BoT"] = "BoT"; --Bastion of Twilight
	L["BRC"] = "BRC"; --Blackrock Caverns
	L["BWD"] = "BWD"; --Blackwing Descent
	L["CoT-DS"] = "CoT-DS"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "CoT-ET"; --Caverns of Time: End Time
	L["CoT-HoT"] = "CoT-HoT"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "CoT-WoE"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands
	L["GB"] = "GB"; --Grim Batol
	L["HoO"] = "HoO"; --Halls of Origination
	L["LCoT"] = "LCoT"; --Lost City of the Tol'vir 
	L["SFK"] = "SFK"; -- Shadowfang Keep
	L["TSC"] = "TSC"; --The Stonecore
	L["TWT"] = "TWT"; --Throne of the Four Winds
	L["ToTT"] = "ToTT"; --Throne of the Tides
	L["VC"] = "VC"; -- The Deadmines
	L["VP"] = "VP"; --The Vortex Pinnacle
	L["ZA"] = "ZA"; -- Zul'Aman
	L["ZG"] = "ZG"; --Zul'Gurub

	--MoP Acronyms
	L["GSS"] = "GSS"; --Gate of the Setting Sun
	L["Halls"] = "Halls"; -- Scarlet Halls
	L["HoF"] = "HoF"; --Heart of Fear
	L["MP"] = "MP"; --Mogu'shan Palace
	L["MV"] = "MV"; --Mogu'shan Vaults
	L["SM"] = "SM"; -- Scarlet Monastery
	L["Scholo"] = "Scholo"; -- Scholomance
	L["SPM"] = "SPM"; --Shado-Pan Monastery
	L["SNT"] = "SNT"; --Siege of Niuzao Temple
	L["SB"] = "SB"; --Stormstout Brewery
	L["SoO"] = "SoO"; --Siege of Orgrimmar
	L["TJS"] = "TJS"; --Temple of the Jade Serpent
	L["TES"] = "TES"; --Terrace of Endless Spring
	L["ToT"] = "ToT"; --Throne of Thunder

	--WoD Acronyms
	L["BRF"] = "BRF"; -- Blackrock Foundry
	L["BSM"] = "BSM"; -- Bloodmaul Slag Mines
	L["EB"] = "EB"; -- The Everbloom
	L["GD"] = "GD"; -- Grimrail Depot
	L["HM"] = "HM"; -- Highmaul
	L["ID"] = "ID"; -- Iron Docks
	L["SBG"] = "SBG"; -- Shadowmoon Burial Grounds
	L["SR"] = "SR"; -- Skyreach
	L["UBRS"] = "UBRS"; -- Upper Blackrock Spire

	--Map sections
	L["MapA"] = " [A]"; -- For example: Shado-Pan Monastery [A]
	L["MapB"] = " [B]";
	L["MapC"] = " [C]";
	L["MapD"] = " [D]";
	L["MapE"] = " [E]";
	L["MapF"] = " [F]";

--************************************************
-- Instance Entrance Maps
--************************************************

	--Auchindoun (Entrance)
	L["Clarissa"] = "Clarissa";
	L["Greatfather Aldrimus"] = "Greatfather Aldrimus";
	L["Ha'lei"] = "Ha'lei";
	L["Horvon the Armorer <Armorsmith>"] = "Horvon the Armorer <Armorsmith>";
	L["Ramdor the Mad"] = "Ramdor the Mad";
	L["Nexus-Prince Haramad"] = "Nexus-Prince Haramad";
	L["\"Slim\" <Shady Dealer>"] = "\"Slim\" <Shady Dealer>";
	L["\"Captain\" Kaftiz"] = "\"Captain\" Kaftiz";
	L["Dealer Tariq <Shady Dealer>"] = "Dealer Tariq <Shady Dealer>";
	L["Provisioner Tsaalt"] = "Provisioner Tsaalt";

	--Blackfathom Deeps (Entrance)

	--Blackrock Mountain (Entrance)
	L["Bodley"] = "Bodley";
	L["Lothos Riftwaker"] = "Lothos Riftwaker";
	L["Orb of Command"] = "Orb of Command";
	L["Scarshield Quartermaster <Scarshield Legion>"] = "Scarshield Quartermaster <Scarshield Legion>";
	L["The Behemoth"] = "The Behemoth";

	--Caverns of Time (Entrance)
	L["Steward of Time <Keepers of Time>"] = "Steward of Time <Keepers of Time>";
	L["Alexston Chrome <Tavern of Time>"] = "Alexston Chrome <Tavern of Time>";
	L["Yarley <Armorer>"] = "Yarley <Armorer>";
	L["Bortega <Reagents & Poison Supplies>"] = "Bortega <Reagents & Poison Supplies>";
	L["Alurmi <Keepers of Time Quartermaster>"] = "Alurmi <Keepers of Time Quartermaster>";
	L["Galgrom <Provisioner>"] = "Galgrom <Provisioner>";
	L["Zaladormu"] = "Zaladormu";
	L["Soridormi <The Scale of Sands>"] = "Soridormi <The Scale of Sands>";
	L["Arazmodu <The Scale of Sands>"] = "Arazmodu <The Scale of Sands>";
	L["Andormu <Keepers of Time>"] = "Andormu <Keepers of Time>";
	L["Nozari <Keepers of Time>"] = "Nozari <Keepers of Time>";
	L["Anachronos <Keepers of Time>"] = "Anachronos <Keepers of Time>";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Indormi <Keeper of Ancient Gem Lore>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Tydormu <Keeper of Lost Artifacts>";

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Mortog Steamhead";

	--Dire Maul (Entrance)
	L["Dire Pool"] = "Dire Pool";
	L["Dire Maul Arena"] = "Dire Maul Arena";
	L["Elder Mistwalker"] = "Elder Mistwalker";

	--Gnomeregan (Entrance)
	L["Torben Zapblast <Teleportation Specialist>"] = "Torben Zapblast <Teleportation Specialist>";

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Steps and path to the Blood Furnace";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Path to the Hellfire Ramparts and Shattered Halls";
	L["Meeting Stone of Magtheridon's Lair"] = "Meeting Stone of Magtheridon's Lair";
	L["Meeting Stone of Hellfire Citadel"] = "Meeting Stone of Hellfire Citadel";

	--Icecrown Citadel (Entrance)

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Archmage Leryda";
	L["Archmage Alturus"] = "Archmage Alturus";
	L["Apprentice Darius"] = "Apprentice Darius";
	L["Stairs to Underground Pond"] = "Stairs to Underground Pond";
	L["Stairs to Underground Well"] = "Stairs to Underground Well";
	L["Charred Bone Fragment"] = "Charred Bone Fragment";

	--Maraudon (Entrance)
	L["The Nameless Prophet"] = "The Nameless Prophet";
	L["Cursed Centaur"] = "Cursed Centaur";
	L["Kherrah"] = "Kherrah";

	--Scarlet Monastery (Entrance)

	--The Deadmines (Entrance)

	--Sunken Temple (Entrance)
	L["Priestess Udum'bra"] = "Priestess Udum'bra";
	L["Gomora the Bloodletter"] = "Gomora the Bloodletter";
	L["Captain Wyrmak"] = "Captain Wyrmak";

	--Uldaman (Entrance)

	--Ulduar (Entrance)
	L["Shavalius the Fancy <Flight Master>"] = "Shavalius the Fancy <Flight Master>";
	L["Chester Copperpot <General & Trade Supplies>"] = "Chester Copperpot <General & Trade Supplies>";
	L["Slosh <Food & Drink>"] = "Slosh <Food & Drink>";

	--Wailing Caverns (Entrance)

--************************************************
-- Kalimdor Instances (Classic)
--************************************************

	--Blackfathom Deeps
	L["Je'neu Sancrea <The Earthen Ring>"] = "Je'neu Sancrea <The Earthen Ring>";
	L["Sentinel Aluwyn"] = "Sentinel Aluwyn";
	L["Zeya"] = "Zeya";
	L["Altar of Blood"] = "Altar of Blood";
	L["Fire of Aku'mai"] = "Fire of Aku'mai";
	L["Spoils of Blackfathom"] = "Spoils of Blackfathom";

	--Dire Maul (East)
	L["\"Ambassador\" Dagg'thol"] = "\"Ambassador\" Dagg'thol";
	L["Furgus Warpwood"] = "Furgus Warpwood";
	L["Old Ironbark"] = "Old Ironbark";
	L["Ironbark the Redeemed"] = "Ironbark the Redeemed";

	--Dire Maul (North)
	L["Druid of the Talon"] = "Druid of the Talon";
	L["Stonemaul Ogre"] = "Stonemaul Ogre";
	L["Knot Thimblejack"] = "Knot Thimblejack";

	--Dire Maul (West)
	L["Ferra"] = "Ferra";
	L["Estulan <The Highborne>"] = "Estulan <The Highborne>";
	L["Shen'dralar Watcher"] = "Shen'dralar Watcher";
	L["Pylons"] = "Pylons";
	L["Ancient Equine Spirit"] = "Ancient Equine Spirit";
	L["Shen'dralar Ancient"] = "Shen'dralar Ancient";
	L["Falrin Treeshaper"] = "Falrin Treeshaper";
	L["Lorekeeper Lydros"] = "Lorekeeper Lydros";
	L["Lorekeeper Javon"] = "Lorekeeper Javon";
	L["Lorekeeper Kildrath"] = "Lorekeeper Kildrath";
	L["Lorekeeper Mykos"] = "Lorekeeper Mykos";
	L["Shen'dralar Provisioner"] = "Shen'dralar Provisioner";

	--Maraudon	
	L["Elder Splitrock"] = "Elder Splitrock";
	L["Celebras the Redeemed"] = "Celebras the Redeemed";

	--Ragefire Chasm
	L["Commander Bagran"] = "Commander Bagran";
	L["Invoker Xorenth"] = "Invoker Xorenth";
	L["Scout Cage"] = "Scout Cage";

	--Razorfen Downs
	L["Koristrasza"] = "Koristrasza";
	L["Amnennar's Phylactery"] = "Amnennar's Phylactery";

	--Razorfen Kraul
	L["Auld Stonespire"] = "Auld Stonespire";
	L["Spirit of Agamaggan <Ancient>"] = "Spirit of Agamaggan <Ancient>";

	--Ruins of Ahn'Qiraj
	L["Four Kaldorei Elites"] = "Four Kaldorei Elites";
	L["Captain Qeez"] = "Captain Qeez";
	L["Captain Tuubid"] = "Captain Tuubid";
	L["Captain Drenn"] = "Captain Drenn";
	L["Captain Xurrem"] = "Captain Xurrem";
	L["Major Yeggeth"] = "Major Yeggeth";
	L["Major Pakkon"] = "Major Pakkon";
	L["Colonel Zerran"] = "Colonel Zerran";
	L["Safe Room"] = "Safe Room";

	--Temple of Ahn'Qiraj
	L["Andorgos <Brood of Malygos>"] = "Andorgos <Brood of Malygos>";
	L["Vethsera <Brood of Ysera>"] = "Vethsera <Brood of Ysera>";
	L["Kandrostrasz <Brood of Alexstrasza>"] = "Kandrostrasz <Brood of Alexstrasza>";
	L["Arygos"] = "Arygos";
	L["Caelestrasz"] = "Caelestrasz";
	L["Merithra of the Dream"] = "Merithra of the Dream";

	--Wailing Caverns
	L["Ebru <Disciple of Naralex>"] = "Ebru <Disciple of Naralex>"; -- 5768
	L["Nalpak <Disciple of Naralex>"] = "Nalpak <Disciple of Naralex>"; -- 5767
	L["Muyoh <Disciple of Naralex>"] = "Muyoh <Disciple of Naralex>";  -- 3678
	L["Naralex"] = "Naralex"; -- 3679

	--Zul'Farrak
	L["Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>"] = "Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>";
	L["Mazoga's Spirit"] = "Mazoga's Spirit";
	L["Tran'rek"] = "Tran'rek";
	L["Weegli Blastfuse"] = "Weegli Blastfuse";
	L["Raven"] = "Raven";
	L["Elder Wildmane"] = "Elder Wildmane";

--****************************
-- Eastern Kingdoms Instances (Classic)
--****************************

	--Blackrock Depths
	L["The Black Anvil"] = "The Black Anvil";
	L["The Vault"] = "The Vault";
	L["Watchman Doomgrip"] = "Watchman Doomgrip";
	L["Elder Morndeep"] = "Elder Morndeep";
	L["Schematic: Field Repair Bot 74A"] = "Schematic: Field Repair Bot 74A";
	L["Private Rocknot"] = "Private Rocknot";
	L["Mistress Nagmara"] = "Mistress Nagmara";
	L["Jalinda Sprig <Morgan's Militia>"] = "Jalinda Sprig <Morgan's Militia>";
	L["Oralius <Morgan's Militia>"] = "Oralius <Morgan's Militia>";
	L["Thal'trak Proudtusk <Kargath Expeditionary Force>"] = "Thal'trak Proudtusk <Kargath Expeditionary Force>";
	L["Galamav the Marksman <Kargath Expeditionary Force>"] = "Galamav the Marksman <Kargath Expeditionary Force>";
	L["Maxwort Uberglint"] = "Maxwort Uberglint";
	L["Tinkee Steamboil"] = "Tinkee Steamboil";
	L["Yuka Screwspigot <Engineering Supplies>"] = "Yuka Screwspigot <Engineering Supplies>";
	L["Abandonded Mole Machine"] = "Abandonded Mole Machine";
	L["Kevin Dawson <Morgan's Militia>"] = "Kevin Dawson <Morgan's Militia>";
	L["Lexlort <Kargath Expeditionary Force>"] = "Lexlort <Kargath Expeditionary Force>";
	L["Prospector Seymour <Morgan's Militia>"] = "Prospector Seymour <Morgan's Militia>";
	L["Razal'blade <Kargath Expeditionary Force>"] = "Razal'blade <Kargath Expeditionary Force>";
	L["The Shadowforge Lock"] = "The Shadowforge Lock";
	L["Mayara Brightwing <Morgan's Militia>"] = "Mayara Brightwing <Morgan's Militia>";
	L["Hierophant Theodora Mulvadania <Kargath Expeditionary Force>"] = "Hierophant Theodora Mulvadania <Kargath Expeditionary Force>";
	L["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = "Lokhtos Darkbargainer <The Thorium Brotherhood>";
	L["Mountaineer Orfus <Morgan's Militia>"] = "Mountaineer Orfus <Morgan's Militia>";
	L["Thunderheart <Kargath Expeditionary Force>"] = "Thunderheart <Kargath Expeditionary Force>";
	L["Marshal Maxwell <Morgan's Militia>"] = "Marshal Maxwell <Morgan's Militia>";
	L["Warlord Goretooth <Kargath Expeditionary Force>"] = "Warlord Goretooth <Kargath Expeditionary Force>";
	L["The Black Forge"] = "The Black Forge";
	L["Core Fragment"] = "Core Fragment";
	L["Shadowforge Brazier"] = "Shadowforge Brazier";

	--Blackrock Spire (Lower)
	L["Urok's Tribute Pile"] = "Urok's Tribute Pile";
	L["Acride <Scarshield Legion>"] = "Acride <Scarshield Legion>";
	L["Elder Stonefort"] = "Elder Stonefort";
	L["Roughshod Pike"] = "Roughshod Pike";

	--Blackwing Lair
	L["Orb of Domination"] = "Orb of Domination";
	L["Master Elemental Shaper Krixix"] = "Master Elemental Shaper Krixix";

	--Gnomeregan
	L["Chomper"] = "Chomper";
	L["Blastmaster Emi Shortfuse"] = "Blastmaster Emi Shortfuse";
	L["Murd Doc <S.A.F.E.>"] = "Murd Doc <S.A.F.E.>";
	L["Tink Sprocketwhistle <Engineering Supplies>"] = "Tink Sprocketwhistle <Engineering Supplies>";
	L["The Sparklematic 5200"] = "The Sparklematic 5200";
	L["Mail Box"] = "Mail Box";
	L["B.E Barechus <S.A.F.E.>"] = "B.E Barechus <S.A.F.E.>";
	L["Face <S.A.F.E.>"] = "Face <S.A.F.E.>";
	L["Hann Ibal <S.A.F.E.>"] = "Hann Ibal <S.A.F.E.>";

	--Molten Core

	--Stratholme - Crusader's Square
	L["Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>"] = "Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>";
	L["Master Craftsman Wilhelm <Brotherhood of the Light>"] = "Master Craftsman Wilhelm <Brotherhood of the Light>";
	L["Packmaster Stonebruiser <Brotherhood of the Light>"] = "Packmaster Stonebruiser <Brotherhood of the Light>";
	L["Stratholme Courier"] = "Stratholme Courier";
	L["Fras Siabi's Postbox"] = "Fras Siabi's Postbox";
	L["King's Square Postbox"] = "King's Square Postbox";
	L["Festival Lane Postbox"] = "Festival Lane Postbox";
	L["Elder Farwhisper"] = "Elder Farwhisper";
	L["Market Row Postbox"] = "Market Row Postbox";

	--Stratholme - The Gauntlet
	L["Elders' Square Postbox"] = "Elders' Square Postbox";
	L["Archmage Angela Dosantos <Brotherhood of the Light>"] = "Archmage Angela Dosantos <Brotherhood of the Light>";
	L["Crusade Commander Korfax <Brotherhood of the Light>"] = "Crusade Commander Korfax <Brotherhood of the Light>";

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Lieutenant Horatio Laine";
	L["Kagtha"] = "Kagtha";
	L["Slinky Sharpshiv"] = "Slinky Sharpshiv";
	L["Quartermaster Lewis <Quartermaster>"] = "Quartermaster Lewis <Quartermaster>";
	L["Miss Mayhem"] = "Miss Mayhem";
	L["Vend-O-Tron D-Luxe"] = "Vend-O-Tron D-Luxe";

	--The Stockade
	L["Rifle Commander Coe"] = "Rifle Commander Coe";
	L["Warden Thelwater"] = "Warden Thelwater";
	L["Nurse Lillian"] = "Nurse Lillian";

	--The Sunken Temple
	L["Lord Itharius"] = "Lord Itharius";
	L["Elder Starsong"] = "Elder Starsong";

	--Uldaman
	L["Baelog's Chest"] = "Baelog's Chest";
	L["Kand Sandseeker <Explorer's League>"] = "Kand Sandseeker <Explorer's League>";
	L["Lead Prospector Durdin <Explorer's League>"] = "Lead Prospector Durdin <Explorer's League>";
	L["Olga Runesworn <Explorer's League>"] = "Olga Runesworn <Explorer's League>";
	L["Aoren Sunglow <The Reliquary>"] = "Aoren Sunglow <The Reliquary>";
	L["High Examiner Tae'thelan Bloodwatcher <The Reliquary>"] = "High Examiner Tae'thelan Bloodwatcher <The Reliquary>";
	L["Lidia Sunglow <The Reliquary>"] = "Lidia Sunglow <The Reliquary>";
	L["Ancient Treasure"] = "Ancient Treasure";
	L["The Discs of Norgannon"] = "The Discs of Norgannon";

--*******************
-- Burning Crusade Instances
--*******************

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Draenei Spirit";
	L["Avatar of the Martyred"] = "Avatar of the Martyred";
	L["D'ore"] = "D'ore";
	L["Tormented Soulpriest"] = "Tormented Soulpriest";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Artificer Morphalius";
	L["Mamdy the \"Ologist\""] = "Mamdy the \"Ologist\"";
	L["Shadow Lord Xiraxis"] = "Shadow Lord Xiraxis";
	L["Ambassador Pax'ivi"] = "Ambassador Pax'ivi";
	L["Cryo-Engineer Sha'heen"] = "Cryo-Engineer Sha'heen";
	L["Ethereal Transporter Control Panel"] = "Ethereal Transporter Control Panel";

	--Auch: Sethekk Halls
	L["Isfar"] = "Isfar";
	L["Dealer Vijaad"] = "Dealer Vijaad";
	L["Lakka"] = "Lakka";
	L["The Saga of Terokk"] = "The Saga of Terokk";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Field Commander Mahfuun";
	L["Spy Grik'tha"] = "Spy Grik'tha";
	L["The Codex of Blood"] = "The Codex of Blood";
	L["First Fragment Guardian"] = "First Fragment Guardian";
	L["Spy To'gun"] = "Spy To'gun";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "Towards Reliquary of Souls";
	L["Towards Teron Gorefiend"] = "Towards Teron Gorefiend";
	L["Towards Illidan Stormrage"] = "Towards Illidan Stormrage";
	L["Spirit of Olum"] = "Spirit of Olum";
	L["Spirit of Udalo"] = "Spirit of Udalo";
	L["Aluyen <Reagents>"] = "Aluyen <Reagents>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Okuno <Ashtongue Deathsworn Quartermaster>";
	L["Seer Kanai"] = "Seer Kanai";

	--Black Temple (Basement)

	--Black Temple (Top)

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Seer Olum";

	--CFR: The Slave Pens
	L["Nahuud"] = "Nahuud";
	L["Watcher Jhang"] = "Watcher Jhang";
	L["Weeder Greenthumb"] = "Weeder Greenthumb";
	L["Skar'this the Heretic"] = "Skar'this the Heretic";
	L["Naturalist Bite"] = "Naturalist Bite";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Windcaller Claw";
	L["Main Chambers Access Panel"] = "Main Chambers Access Panel";
	L["Second Fragment Guardian"] = "Second Fragment Guardian";

	--CFR: The Underbog
	L["T'shu"] = "T'shu";
	L["The Underspore"] = "The Underspore";
	L["Earthbinder Rayge"] = "Earthbinder Rayge";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Sa'at <Keepers of Time>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Lady Jaina Proudmoore";
	L["Thrall <Warchief>"] = "Thrall <Warchief>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Tyrande Whisperwind <High Priestess of Elune>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Erozion";
	L["Brazen"] = "Brazen";
	L["Landing Spot"] = "Landing Spot";
	L["Thrall"] = "Thrall";
	L["Taretha"] = "Taretha";
	L["Don Carlos"] = "Don Carlos";
	L["Guerrero"] = "Guerrero";
	L["Thomas Yance <Travelling Salesman>"] = "Thomas Yance <Travelling Salesman>";
	L["Aged Dalaran Wizard"] = "Aged Dalaran Wizard";
	L["Jonathan Revah"] = "Jonathan Revah";
	L["Jerry Carter"] = "Jerry Carter";
	L["Helcular"] = "Helcular";
	L["Farmer Kent"] = "Farmer Kent";
	L["Sally Whitemane"] = "Sally Whitemane";
	L["Renault Mograine"] = "Renault Mograine";
	L["Little Jimmy Vishas"] = "Little Jimmy Vishas";
	L["Herod the Bully"] = "Herod the Bully";
	L["Nat Pagle"] = "Nat Pagle";
	L["Hal McAllister"] = "Hal McAllister";
	L["Zixil <Aspiring Merchant>"] = "Zixil <Aspiring Merchant>";
	L["Overwatch Mark 0 <Protector>"] = "Overwatch Mark 0 <Protector>";
	L["Southshore Inn"] = "Southshore Inn";
	L["Captain Edward Hanes"] = "Captain Edward Hanes";
	L["Captain Sanders"] = "Captain Sanders";
	L["Commander Mograine"] = "Commander Mograine";
	L["Isillien"] = "Isillien";
	L["Abbendis"] = "Abbendis";
	L["Fairbanks"] = "Fairbanks";
	L["Taelan"] = "Taelan";
	L["Barkeep Kelly <Bartender>"] = "Barkeep Kelly <Bartender>";
	L["Frances Lin <Barmaid>"] = "Frances Lin <Barmaid>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Chef Jessen <Speciality Meat & Slop>";
	L["Stalvan Mistmantle"] = "Stalvan Mistmantle";
	L["Phin Odelic <The Kirin Tor>"] = "Phin Odelic <The Kirin Tor>";
	L["Magistrate Henry Maleb"] = "Magistrate Henry Maleb";
	L["Raleigh the True"] = "Raleigh the True";
	L["Nathanos Marris"] = "Nathanos Marris";
	L["Bilger the Straight-laced"] = "Bilger the Straight-laced";
	L["Innkeeper Monica"] = "Innkeeper Monica";
	L["Julie Honeywell"] = "Julie Honeywell";
	L["Jay Lemieux"] = "Jay Lemieux";
	L["Young Blanchy"] = "Young Blanchy";

	--Gruul's Lair

	--HFC: The Blood Furnace
	L["Gunny"] = "Gunny";
	L["Caza'rez"] = "Caza'rez";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Advance Scout Chadwick";
	L["Stone Guard Stok'ton"] = "Stone Guard Stok'ton";
	L["Reinforced Fel Iron Chest"] = "Reinforced Fel Iron Chest";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Shattered Hand Executioner";
	L["Private Jacint"] = "Private Jacint";
	L["Rifleman Brownbeard"] = "Rifleman Brownbeard";
	L["Captain Alina"] = "Captain Alina";
	L["Scout Orgarr"] = "Scout Orgarr";
	L["Korag Proudmane"] = "Korag Proudmane";
	L["Captain Boneshatter"] = "Captain Boneshatter";
	L["Randy Whizzlesprocket"] = "Randy Whizzlesprocket";
	L["Drisella"] = "Drisella";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Baroness Dorothea Millstipe";
	L["Lady Catriona Von'Indi"] = "Lady Catriona Von'Indi";
	L["Lady Keira Berrybuck"] = "Lady Keira Berrybuck";
	L["Baron Rafe Dreuger"] = "Baron Rafe Dreuger";
	L["Lord Robin Daris"] = "Lord Robin Daris";
	L["Lord Crispin Ference"] = "Lord Crispin Ference";
	L["Red Riding Hood"] = "Red Riding Hood";
	L["Wizard of Oz"] = "Wizard of Oz";
	L["The Master's Terrace"] = "The Master's Terrace";
	L["Servant Quarters"] = "Servant Quarters";
	L["Hastings <The Caretaker>"] = "Hastings <The Caretaker>";
	L["Berthold <The Doorman>"] = "Berthold <The Doorman>";
	L["Calliard <The Nightman>"] = "Calliard <The Nightman>";
	L["Koren <The Blacksmith>"] = "Koren <The Blacksmith>";
	L["Bennett <The Sergeant at Arms>"] = "Bennett <The Sergeant at Arms>";
	L["Keanna's Log"] = "Keanna's Log";
	L["Ebonlocke <The Noble>"] = "Ebonlocke <The Noble>";
	L["Sebastian <The Organist>"] = "Sebastian <The Organist>";
	L["Barnes <The Stage Manager>"] = "Barnes <The Stage Manager>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Path to the Broken Stairs";
	L["Broken Stairs"] = "Broken Stairs";
	L["Ramp to Guardian's Library"] = "Ramp to Guardian's Library";
	L["Mysterious Bookshelf"] = "Mysterious Bookshelf";
	L["Ramp up to the Celestial Watch"] = "Ramp up to the Celestial Watch";
	L["Ramp down to the Gamesman's Hall"] = "Ramp down to the Gamesman's Hall";
	L["Ramp to Medivh's Chamber"] = "Ramp to Medivh's Chamber";
	L["Spiral Stairs to Netherspace"] = "Spiral Stairs to Netherspace";
	L["Wravien <The Mage>"] = "Wravien <The Mage>";
	L["Gradav <The Warlock>"] = "Gradav <The Warlock>";
	L["Kamsis <The Conjurer>"] = "Kamsis <The Conjurer>";
	L["Ythyar"] = "Ythyar";
	L["Echo of Medivh"] = "Echo of Medivh";

	--Magisters Terrace
	L["Exarch Larethor"] = "Exarch Larethor";
	L["Fel Crystals"] = "Fel Crystals";
	L["Apoko"] = "Apoko";
	L["Eramas Brightblaze"] = "Eramas Brightblaze";
	L["Ellrys Duskhallow"] = "Ellrys Duskhallow";
	L["Fizzle"] = "Fizzle";
	L["Garaxxas"] = "Garaxxas";
	L["Sliver <Garaxxas' Pet>"] = "Sliver <Garaxxas' Pet>";
	L["Kagani Nightstrike"] = "Kagani Nightstrike";
	L["Warlord Salaris"] = "Warlord Salaris";
	L["Yazzai"] = "Yazzai";
	L["Zelfan"] = "Zelfan";
	L["Tyrith"] = "Tyrith";
	L["Scrying Orb"] = "Scrying Orb";

	--Sunwell Plateau
	L["Madrigosa"] = "Madrigosa";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Millhouse Manastorm";
	L["Third Fragment Guardian"] = "Third Fragment Guardian";
	L["Udalo"] = "Udalo";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Overcharged Manacell";

	--TK: The Eye

--*****************
-- Wrath of the Lich King Instances
--*****************

	--Azjol-Nerub: Ahn'kahet: The Old Kingdom
	L["Seer Ixit"] = "Seer Ixit";
	L["Ahn'kahet Brazier"] = "Ahn'kahet Brazier";

	--Azjol-Nerub: Azjol-Nerub
	L["Reclaimer A'zak"] = "Reclaimer A'zak";
	L["Watcher Gashra"] = "Watcher Gashra";
	L["Watcher Narjil"] = "Watcher Narjil";
	L["Watcher Silthik"] = "Watcher Silthik";
	L["Elder Nurgen"] = "Elder Nurgen";	

	--Caverns of Time: The Culling of Stratholme
	L["The Culling of Stratholme"] = "The Culling of Stratholme";
	L["Scourge Invasion Points"] = "Scourge Invasion Points";
	L["Guardian of Time"] = "Guardian of Time";
	L["Chromie"] = "Chromie";

	--Drak'Tharon Keep
	L["Image of Drakuru"] = "Image of Drakuru";
	L["Kurzel"] = "Kurzel";
	L["Elder Kilias"] = "Elder Kilias";
	L["Drakuru's Brazier"] = "Drakuru's Brazier";

	--The Frozen Halls: Halls of Reflection
	--3 beginning NPCs omitted, see The Forge of Souls
	L["The Captain's Chest"] = "The Captain's Chest";

	--The Frozen Halls: Pit of Saron
	--6 beginning NPCs omitted, see The Forge of Souls
	L["Martin Victus"] = "Martin Victus";
	L["Gorkun Ironskull"] = "Gorkun Ironskull";
	L["Rimefang"] = "Rimefang";

	--The Frozen Halls: The Forge of Souls
	--Lady Jaina Proudmoore omitted, in Hyjal Summit
	L["Archmage Koreln <Kirin Tor>"] = "Archmage Koreln <Kirin Tor>";
	L["Archmage Elandra <Kirin Tor>"] = "Archmage Elandra <Kirin Tor>";
	L["Lady Sylvanas Windrunner <Banshee Queen>"] = "Lady Sylvanas Windrunner <Banshee Queen>";
	L["Dark Ranger Loralen"] = "Dark Ranger Loralen";
	L["Dark Ranger Kalira"] = "Dark Ranger Kalira";

	--Gundrak
	L["Chronicler Bah'Kini"] = "Chronicler Bah'Kini";
	L["Tol'mar"] = "Tol'mar";
	L["Elder Ohanzee"] = "Elder Ohanzee";

	--Icecrown Citadel
	L["To next map"] = "To next map";
	L["From previous map"] = "From previous map";
	L["Upper Spire"] = "Upper Spire";
	L["Sindragosa's Lair"] = "Sindragosa's Lair";
	L["Stinky"] = "Stinky";
	L["Precious"] = "Precious";
	L["Rimefang"] = "Rimefang";	-- NPC: 37533
	L["Spinestalker"] = "Spinestalker";	-- NPC: 37534
	L["Sister Svalna"] = "Sister Svalna";	-- NPC: 37126

	--Naxxramas
	L["Mr. Bigglesworth"] = "Mr. Bigglesworth";
	L["Frostwyrm Lair"] = "Frostwyrm Lair";
	L["Teleporter to Middle"] = "Teleporter to Middle";

	--The Obsidian Sanctum
	L["Black Dragonflight Chamber"] = "Black Dragonflight Chamber";

	--Onyxia's Lair

	--The Ruby Sanctum
	L["Red Dragonflight Chamber"] = "Red Dragonflight Chamber";

	--The Nexus: The Eye of Eternity

	--The Nexus: The Nexus
	L["Warmage Kaitlyn"] = "Warmage Kaitlyn";
	L["Berinand's Research"] = "Berinand's Research";
	L["Elder Igasho"] = "Elder Igasho";

	--The Nexus: The Oculus
	L["Belgaristrasz"] = "Belgaristrasz";
	L["Eternos"] = "Eternos";
	L["Verdisa"] = "Verdisa";
	L["Centrifuge Construct"] = "Centrifuge Construct";
	L["Cache of Eregos"] = "Cache of Eregos";

	--Trial of the Champion
	L["Marshal Jacob Alerius"] = "Marshal Jacob Alerius";
	L["Ambrose Boltspark"] = "Ambrose Boltspark";
	L["Colosos"] = "Colosos";
	L["Jaelyne Evensong"] = "Jaelyne Evensong";
	L["Lana Stouthammer"] = "Lana Stouthammer";

	--Trial of the Crusader
	L["Heroic: Trial of the Grand Crusader"] = "Heroic: Trial of the Grand Crusader";
	L["Cavern Entrance"] = "Cavern Entrance";

	--Ulduar General
	L["The Siege"] = "The Siege";
	L["The Keepers"] = "The Keepers";

	--Ulduar A
	L["Tower of Life"] = "Tower of Life";
	L["Tower of Flame"] = "Tower of Flame";
	L["Tower of Frost"] = "Tower of Frost";
	L["Tower of Storms"] = "Tower of Storms";

	--Ulduar B
	L["Prospector Doren"] = "Prospector Doren";
	L["Archivum Console"] = "Archivum Console";

	--Ulduar C
	L["Sif"] = "Sif";

	--Ulduar D

	--Ulduar E

	--Ulduar: Halls of Lightning
	L["Stormherald Eljrrin"] = "Stormherald Eljrrin";

	--Ulduar: Halls of Stone
	L["Kaldir Ironbane"] = "Kaldir Ironbane";
	L["Tribunal Chest"] = "Tribunal Chest";
	L["Elder Yurauk"] = "Elder Yurauk";
	L["Brann Bronzebeard"] = "Brann Bronzebeard";

	--Utgarde Keep: Utgarde Keep
	L["Defender Mordun"] = "Defender Mordun";
	L["Dark Ranger Marrah"] = "Dark Ranger Marrah";
	L["Elder Jarten"] = "Elder Jarten";

	--Utgarde Keep: Utgarde Pinnacle
	L["Brigg Smallshanks"] = "Brigg Smallshanks";
	L["Image of Argent Confessor Paletress"] = "Image of Argent Confessor Paletress";
	L["Elder Chogan'gada"] = "Elder Chogan'gada";

	--Vault of Archavon

	--The Violet Hold
	L["Lieutenant Sinclari"] = "Lieutenant Sinclari";

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "Dasnurimi <Geologist & Conservator>";
	L["Lord Afrasastrasz"] = "Lord Afrasastrasz";

	--Caverns of Time: End Time
	L["Alurmi"] = "Alurmi";
	L["Nozdormu"] = "Nozdormu";

	--Caverns of Time: Hour of Twilight

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Lurah Wrathvine <Crystallized Firestone Collector>"; -- 54402
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Naresir Stormfury <Avengers of Hyjal Quartermaster>"; -- 54401

	--Grim Batol
	L["Baleflame"] = "Baleflame";
	L["Farseer Tooranu <The Earthen Ring>"] = "Farseer Tooranu <The Earthen Ring>";
	L["Velastrasza"] = "Velastrasza";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Large Stone Obelisk";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Captain Hadan";
	L["Tol'vir Grave"] = "Tol'vir Grave";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Apothecary Trio";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Apothecary Hummel <Crown Chemical Co.>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Apothecary Baxter <Crown Chemical Co.>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Apothecary Frye <Crown Chemical Co.>";
	L["Packleader Ivar Bloodfang"] = "Packleader Ivar Bloodfang";
	L["Deathstalker Commander Belmont"] = "Deathstalker Commander Belmont";
	L["Haunted Stable Hand"] = "Haunted Stable Hand";
	L["Investigator Fezzen Brasstacks"] = "Investigator Fezzen Brasstacks";

	--The Bastion of Twilight

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Earthwarden Yrsa <The Earthen Ring>";

	--The Vortex Pinnacle
	L["Itesh"] = "Itesh";
	L["Magical Brazier"] = "Magical Brazier";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Captain Taylor";
	L["Legionnaire Nazgrim"] = "Legionnaire Nazgrim";
	L["Neptulon"] = "Neptulon";

	--Zul'Aman
	L["Vol'jin"] = "Vol'jin";
	L["Witch Doctor T'wansi"] = "Witch Doctor T'wansi";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Blood Guard Hakkuz <Darkspear Elite>";
	L["Voodoo Pile"] = "Voodoo Pile";
	L["Bakkalzu"] = "Bakkalzu";
	L["Hazlek"] = "Hazlek";
	L["The Map of Zul'Aman"] = "The Map of Zul'Aman";
	L["Norkani"] = "Norkani";
	L["Kasha"] = "Kasha";
	L["Thurg"] = "Thurg";
	L["Gazakroth"] = "Gazakroth";
	L["Lord Raadan"] = "Lord Raadan";
	L["Darkheart"] = "Darkheart";
	L["Alyson Antille"] = "Alyson Antille";
	L["Slither"] = "Slither";
	L["Fenstalker"] = "Fenstalker";
	L["Koragg"] = "Koragg";
	L["Zungam"] = "Zungam";
	L["Forest Frogs"] = "Forest Frogs";
	L["Eulinda <Reagents>"] = "Eulinda <Reagents>";
	L["Harald <Food Vendor>"] = "Harald <Food Vendor>";
	L["Arinoth"] = "Arinoth";
	L["Kaldrick"] = "Kaldrick";
	L["Lenzo"] = "Lenzo";
	L["Mawago"] = "Mawago";
	L["Melasong"] = "Melasong";
	L["Melissa"] = "Melissa";
	L["Micah"] = "Micah";
	L["Relissa"] = "Relissa";
	L["Rosa"] = "Rosa";
	L["Tyllan"] = "Tyllan";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Briney Boltcutter <Blackwater Financial Interests>";
	L["Vehini <Assault Provisions>"] = "Vehini <Assault Provisions>";
	L["Overseer Blingbang"] = "Overseer Blingbang";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Bloodslayer T'ara <Darkspear Veteran>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Bloodslayer Vaena <Darkspear Veteran>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Bloodslayer Zala <Darkspear Veteran>";
	L["Helpful Jungle Monkey"] = "Helpful Jungle Monkey";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Venomancer Mauri <The Snake's Whisper>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Zanzil's Cauldron of Toxic Torment";
	L["Tiki Lord Mu'Loa"] = "Tiki Lord Mu'Loa";
	L["Gub <Destroyer of Fish>"] = "Gub <Destroyer of Fish>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Venomancer T'Kulu <The Toxic Bite>";
	L["Tor-Tun <The Slumberer>"] = "Tor-Tun <The Slumberer>";
	L["Kaulema the Mover"] = "Kaulema the Mover";
	L["Berserking Boulder Roller"] = "Berserking Boulder Roller";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Zanzil's Cauldron of Frostburn Formula";
	L["Mor'Lek the Dismantler"] = "Mor'Lek the Dismantler";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Witch Doctor Qu'in <Medicine Woman>";
	L["Zanza the Restless"] = "Zanza the Restless";
	L["Mortaxx <The Tolling Bell>"] = "Mortaxx <The Tolling Bell>";
	L["Tiki Lord Zim'wae"] = "Tiki Lord Zim'wae";
	L["Zanzil's Cauldron of Burning Blood"] = "Zanzil's Cauldron of Burning Blood";

--*********************
-- Mists of Pandaria Instances
--*********************

	--Gate of the Setting Sun
	L["Bowmistress Li <Guard Captain>"] = "Bowmistress Li <Guard Captain>";

	--Heart of Fear

	--Mogu'shan Palace
	L["Sinan the Dreamer"] = "Sinan the Dreamer";

	--Mogu'shan Vaults

	--Scarlet Halls
	L["Commander Lindon"] = "Commander Lindon";
	L["Hooded Crusader"] = "Hooded Crusader";
	L["Bucket of Meaty Dog Food"] = "Bucket of Meaty Dog Food";
	L["Reinforced Archery Target"] = "Reinforced Archery Target";

	--Scarlet Monastery

	--Scholomance
	L["Instructor Chillheart's Phylactery"] = "Instructor Chillheart's Phylactery";
	L["Professor Slate"] = "Professor Slate";
	L["Polyformic Acid Potion"] = "Polyformic Acid Potion";
	L["Talking Skull"] = "Talking Skull";
	L["In the Shadow of the Light"] = "In the Shadow of the Light";
	L["Kel'Thuzad's Deep Knowledge"] = "Kel'Thuzad's Deep Knowledge";
	L["Forbidden Rites and other Rituals Necromantic"] = "Forbidden Rites and other Rituals Necromantic";
	L["Coffer of Forgotten Souls"] = "Coffer of Forgotten Souls";
	L["The Dark Grimoire"] = "The Dark Grimoire";

	--Shado-Pan Monastery
	L["Ban Bearheart"] = "Ban Bearheart";

	--Siege of Niuzao Temple
	L["Shado-Master Chum Kiu"] = "Shado-Master Chum Kiu";

	--Siege of Orgrimmar

	--Stormstout Brewery
	L["Auntie Stormstout"] = "Auntie Stormstout";
	L["Chen Stormstout"] = "Chen Stormstout";

	--Temple of the Jade Serpent
	L["Master Windstrong"] = "Master Windstrong";
	L["Priestess Summerpetal"] = "Priestess Summerpetal";

	--Terrace of Endless Spring

	--Throne of Thunder
	L["Monara <The Last Queen>"] = "Monara <The Last Queen>";
	L["No'ku Stormsayer <Lord of Tempest>"] = "No'ku Stormsayer <Lord of Tempest>";
	L["Rocky Horror"] = "Rocky Horror";
	L["Focused Eye"] = "Focused Eye";
	L["Unblinking Eye"] = "Unblinking Eye";
	L["Archritualist Kelada"] = "Archritualist Kelada";
	L["Flesh'rok the Diseased <Primordial Saurok Horror>"] = "Flesh'rok the Diseased <Primordial Saurok Horror>";
	L["Zao'cho <The Emperor's Shield>"] = "Zao'cho <The Emperor's Shield>";

--*********************
-- Warlords of Draenor Instances
--*********************

	--Auchindoun

	--Blackrock Foundry

	--Bloodmaul Slag Mines

	--The Everbloom

	--Grimrail Depot
	L["Train Ride"] = "Train Ride";

	--Highmaul

	--Iron Docks

	--Shadowmoon Burial Grounds

	--Skyreach

	--Upper Blackrock Spire
--@end-do-not-package@

end