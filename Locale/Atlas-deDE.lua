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
local L = AceLocale:NewLocale("Atlas", "deDE", false);
-- Localize file must set above to false

-- Deutsche Lokalisierung (German, deDE)
-- Letztes Update: 29.10.2014

if ( GetLocale() == "deDE" ) then
-- Define the leading strings to be ignored while sorting
-- Ex: The Stockade
AtlasSortIgnore = {
	"der (.+)",
	"die (.+)",
	"das (.+)"
}

-- Syntax: ["real_zone_name"] = "localized map zone name"
AtlasZoneSubstitutions = {
	["Ahn'Qiraj"] = "Tempel von Ahn'Qiraj";
	["Der Tempel von Atal'Hakkar"] = "Versunkener Tempel";
--	["Throne of Tides"] = "The Abyssal Maw: Throne of the Tides";
};
end


if L then
--@localization(locale="deDE", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- UI terms and common strings
--************************************************
	L["ATLAS_TITLE"] = "Atlas";

	L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas Tastaturbelegungen";
	L["BINDING_NAME_ATLAS_TOGGLE"] = "Atlas an/aus";
	L["BINDING_NAME_ATLAS_OPTIONS"] = "Optionen an/aus";
	L["BINDING_NAME_ATLAS_AUTOSEL"] = "Automatische Auswahl";

	L["ATLAS_SLASH"] = "/atlas";
	L["ATLAS_SLASH_OPTIONS"] = "Optionen";

	L["ATLAS_STRING_LOCATION"] = "Region";
	L["ATLAS_STRING_LEVELRANGE"] = "Stufe";
	L["ATLAS_STRING_RECLEVELRANGE"] = "Empf. Stufe";
	L["ATLAS_STRING_PLAYERLIMIT"] = "Max. Spielerzahl";
	L["ATLAS_STRING_SELECT_CAT"] = "Kategorie wählen";
	L["ATLAS_STRING_SELECT_MAP"] = "Karte wählen";
	L["ATLAS_STRING_SEARCH"] = "Suchen";
	L["ATLAS_STRING_CLEAR"] = "Leeren";
	L["ATLAS_STRING_MINLEVEL"] = "Minimale Stufe";

	L["ATLAS_OPTIONS_BUTTON"] = "Optionen";
	L["ATLAS_OPTIONS_SHOWBUT"] = "Minimap-Schalter anzeigen";
	L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "Atlas Minimap-Schalter an der Minimap anzeigen.";
	L["ATLAS_OPTIONS_AUTOSEL"] = "Automatische Karten-Auswahl";
	L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Instanzkarte automatisch auswählen. Atlas wählt je nach aktueller Position die beste Instanzkarte aus.";
	L["ATLAS_OPTIONS_BUTPOS"] = "Schalterposition";
	L["ATLAS_OPTIONS_LOCK"] = "Atlasfenster fixieren";
	L["ATLAS_OPTIONS_LOCK_TIP"] = "Atlasfenster fixieren / freigeben.";
	L["ATLAS_OPTIONS_TRANS"] = "Transparenz";
	L["ATLAS_OPTIONS_RCLICK"] = "Rechte Maustaste für Weltkarte drücken";
	L["ATLAS_OPTIONS_RCLICK_TIP"] = "Aktiviert das Rechtsklicken im Atlasfenster, um die WoW Weltkarte anzuzeigen.";
	L["ATLAS_OPTIONS_RESETPOS"] = "Position zurücksetzen";
	L["ATLAS_OPTIONS_ACRONYMS"] = "Abkürzungen anzeigen";
	L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "Zeigt die Instanz-Abkürzungen in den Kartendetails an.";
	L["ATLAS_OPTIONS_SCALE"] = "Skalierung des Atlas Fensters";
	L["ATLAS_OPTIONS_BOSS_DESC"] = "Bossbeschreibungen anzeigen, wenn verfügbar";
	L["ATLAS_OPTIONS_BOSS_DESC_TIP"] = "Beim Überfahren der Bossnummer mit dem Mauszeiger wird, wenn verfügbar, eine Bossbeschreibung angezeigt.";
	L["ATLAS_OPTIONS_BOSS_DESC_SCALE"] = "Skalierung der Bossbeschreibungen auf der Karte";
	L["ATLAS_OPTIONS_BUTRAD"] = "Schalterradius";
	L["ATLAS_OPTIONS_CLAMPED"] = "Fenster im Bildschirm festhalten";
	L["ATLAS_OPTIONS_CLAMPED_TIP"] = "Atlasfenster im Bildschirm festhalten. Deaktivieren, um das Atlasfenster über den Spielfensterrand hinaus bewegen zu können.";
	L["ATLAS_OPTIONS_CTRL"] = "Steuerung drücken, um Tooltips anzuzeigen";
	L["ATLAS_OPTIONS_CTRL_TIP"] = "Aktivieren, um die Kartendetails beim Drücken der Strg-Taste und Überfahren eines Eintrages anzuzeigen. Nützlich, falls der dargestellte Text länger als das Fenster groß ist.";
	L["ATLAS_OPTIONS_DONTSHOWAGAIN"] = "Diese Information nicht erneut anzeigen.";
	L["ATLAS_OPTIONS_CHECKMODULE"] = "Über fehlende Module / Plugins benachrichtigen.";
	L["ATLAS_OPTIONS_CHECKMODULE_TIP"] = "Aktivieren Sie diese Option, um nach dem Starten von WoW zu prüfen, ob Module / Plugins fehlen.";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "Instanzlisten in Stufenfarben anzeigen";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "Zeigt die Instanzlisten je nach minimaler Stufe und Spielerstufe mit unterschiedlichen Farben zur Indikation des Schwierigkeitsgrades an. ";

	L["ATLAS_BUTTON_CLOSE"] = "Schließen";
	L["ATLAS_LDB_HINT"] = "Linke Maustaste drücken, um Atlas zu öffnen.\nRechte Maustaste drücken, um die Atlas Optionen anzuzeigen.";
	L["ATLAS_MINIMAPLDB_HINT"] = "Linke Maustaste drücken, um Atlas zu öffnen.\nRechte Maustaste drücken, um die Atlas Optionen anzuzeigen.\nLinke Maustaste gedrückt halten, um diesen Schalter zu verschieben.";

	L["ATLAS_OPTIONS_CATDD"] = "Sortierung der Karten nach:";
	L["ATLAS_DDL_CONTINENT"] = "Kontinent";
	L["ATLAS_DDL_CONTINENT_EASTERN"] = "Instanzen der Östlichen Königreiche";
	L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "Instanzen von Kalimdor";
	L["ATLAS_DDL_CONTINENT_OUTLAND"] = "Instanzen der Scherbenwelt";
	L["ATLAS_DDL_CONTINENT_NORTHREND"] = "Instanzen von Nordend";
	L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "Instanzen in Tiefenheim";
	L["ATLAS_DDL_CONTINENT_PANDARIA"] = "Instanzen in Pandaria";
	L["ATLAS_DDL_CONTINENT_DRAENOR"] = "Instanzen in Draenor";
	L["ATLAS_DDL_LEVEL"] = "Stufe";
	L["ATLAS_DDL_LEVEL_UNDER45"] = "Instanzen unter Stufe 45";
	L["ATLAS_DDL_LEVEL_45TO60"] = "Instanzen Stufe 45-60";
	L["ATLAS_DDL_LEVEL_60TO70"] = "Instanzen Stufe 60-70";
	L["ATLAS_DDL_LEVEL_70TO80"] = "Instanzen Stufe 70-80";
	L["ATLAS_DDL_LEVEL_80TO85"] = "Instanzen Stufe 80-85";
	L["ATLAS_DDL_LEVEL_85TO90"] = "Instanzen Stufe 85-90";
	L["ATLAS_DDL_LEVEL_90TO100"] = "Instanzen Stufe 90-100";
	L["ATLAS_DDL_LEVEL_100PLUS"] = "Instanzen Stufe 100+";
	L["ATLAS_DDL_PARTYSIZE"] = "Gruppengröße";
	L["ATLAS_DDL_PARTYSIZE_5_AE"] = "Instanzen für 5 Spieler 1/3";
	L["ATLAS_DDL_PARTYSIZE_5_FS"] = "Instanzen für 5 Spieler 2/3";
	L["ATLAS_DDL_PARTYSIZE_5_TZ"] = "Instanzen für 5 Spieler 3/3";
	L["ATLAS_DDL_PARTYSIZE_10_AN"] = "Instanzen für 10 Spieler 1/2";
	L["ATLAS_DDL_PARTYSIZE_10_OZ"] = "Instanzen für 10 Spieler 2/2";
	L["ATLAS_DDL_PARTYSIZE_20TO40AH"] = "Instanzen für 20-40 Spieler 1/2";
	L["ATLAS_DDL_PARTYSIZE_20TO40IZ"] = "Instanzen für 20-40 Spieler 2/2";
	L["ATLAS_DDL_EXPANSION"] = "Erweiterung";
	L["ATLAS_DDL_EXPANSION_OLD_AO"] = "Instanzen der alten Welt 1/2";
	L["ATLAS_DDL_EXPANSION_OLD_PZ"] = "Instanzen der alten Welt 2/2";
	L["ATLAS_DDL_EXPANSION_BC"] = "Burning Crusade Instanzen";
	L["ATLAS_DDL_EXPANSION_WOTLK"] = "Wrath of the Lich King Instanzen";
	L["ATLAS_DDL_EXPANSION_CATA"] = "Cataclysm Instanzen";
	L["ATLAS_DDL_EXPANSION_MOP"] = "Mists of Pandaria Instanzen";
	L["ATLAS_DDL_EXPANSION_WOD"] = "Warlords of Draenor Instanzen";
	L["ATLAS_DDL_TYPE"] = "Typ";
	L["ATLAS_DDL_TYPE_INSTANCE_AB"] = "Instanzen 1/5";
	L["ATLAS_DDL_TYPE_INSTANCE_CF"] = "Instanzen 2/5";
	L["ATLAS_DDL_TYPE_INSTANCE_GM"] = "Instanzen 3/5";
	L["ATLAS_DDL_TYPE_INSTANCE_NS"] = "Instanzen 4/5";
	L["ATLAS_DDL_TYPE_INSTANCE_TZ"] = "Instanzen 5/5";
	L["ATLAS_DDL_TYPE_ENTRANCE"] = "Eingänge";

	L["ATLAS_INSTANCE_BUTTON"] = "Instanz";
	L["ATLAS_ENTRANCE_BUTTON"] = "Eingang";
	L["ATLAS_SEARCH_UNAVAIL"] = "Suche nicht verfügbar";

	L["ATLAS_DEP_MSG1"] = "Atlas hat veraltete Module entdeckt.";
	L["ATLAS_DEP_MSG2"] = "Daher wurden diese Module deaktiviert.";
	L["ATLAS_DEP_MSG3"] = "Entfernen Sie diese aus Ihrem Verzeichnis AddOns.";
	L["ATLAS_DEP_OK"] = "OK";

	L["ATLAS_INFO"] = "Atlas Information";
	L["ATLAS_INFO_12200"] = "Wichtiger Hinweis:\n\nDa die Addondatei stets größer wird, wurde ein Teil \nder Instanzkarten in getrennte Module verschoben.\n\nBeim Download des Addons von den bekannten Webseiten \nerhält man daher nun lediglich das Haupt-Addon mit den Kernfunktionen \nund den Instanzkarten von Cataclysm.\n\nWer alle alten Instanzkarten und alle Atlas Plugins benötigt, \nmuss diese seperat herunterladen.\n\nMehr Infos dazu gibt es im Forum:\nhttp://www.atlasmod.com/phpBB3/viewtopic.php?t=1522";
	L["ATLAS_INFO_12201"] = "Bitte beachten Sie, dass ein neues Plugin |cff6666ffAtlas Scenarios|cffffffff mit den Karten der neuen Szenarien erstellt wurde. \n\nBesuchen Sie für weitere Details unsere Webseite und vergessen Sie nicht,\ndas Plugin separat zu installieren.\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";

	L["ATLAS_MISSING_MODULE"] = "Atlas hat fehlende Module / Plugins erkannt: ";

--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************

	--Common strings
	L["East"] = "Osten";
	L["North"] = "Norden";
	L["South"] = "Süden";
	L["West"] = "Westen";

	--World Events, Festival
	L["Brewfest"] = "Braufest";
	L["Hallow's End"] = "Schlotternächte";
	L["Love is in the Air"] = "Liebe liegt in der Luft";
	L["Lunar Festival"] = "Mondfest";
	L["Midsummer Festival"] = "Sonnenwendfest";

	--Misc strings
	L["Colon"] = ": ";
	L["Adult"] = "Erwachsen";
	L["AKA"] = "AKA";
	L["Arcane Container"] = "Arkaner Behälter";
	L["Arms Warrior"] = "Offensiv Krieger";
	L["Attunement Required"] = "Zugangsquest erforderlich";
	L["Back"] = "Hinten";
	L["Basement"] = "Keller";
	L["Blacksmithing Plans"] = "Schmiedekunstpläne";
	L["Chase Begins"] = "Jagd beginnt";
	L["Chase Ends"] = "Jagd endet";
	L["Child"] = "Kind";
	L["Click to open Dungeon Journal window."] = "Zum Öffnen des Dungeonkompendiums klicken.";
	L["Connection"] = "Verbindung";
	L["Elevator"] = "Aufzug";
	L["End"] = "Ende";
	L["Engineer"] = "Ingenieur";
	L["Entrance"] = "Eingang";
	L["Event"] = "Ereignis";
	L["Exalted"] = "Ehrfürchtig";
	L["Exit"] = "Ausgang";
	L["Fourth Stop"] = "Vierter Halt";
	L["Front"] = "Vorne";
	L["Ghost"] = "Geist";
	L["Graveyard"] = "Friedhof";
	L["Heroic"] = "Heroisch";
	L["Holy Paladin"] = "Heilig Paladin";
	L["Holy Priest"] = "Heilig Priesterin";
	L["Hunter"] = "Jäger";
	L["Imp"] = "Wichtel";
	L["Key"] = "Schlüssel";
	L["Lower"] = "Unten";
	L["Mage"] = "Magier";
	L["Meeting Stone"] = "Versammlungsstein";
	L["Middle"] = "Mitte";
	L["Monk"] = "Mönch";
	L["Moonwell"] = "Mondbrunnen";
	L["Optional"] = "Optional";
	L["Orange"] = "Orange";
	L["Outside"] = "Außerhalb";
	L["Paladin"] = "Paladin";
	L["Portal"] = "Portal";
	L["Priest"] = "Priester";
	L["Protection Warrior"] = "Defensiv Krieger";
	L["Purple"] = "Lila";
	L["Random"] = "Zufällig";
	L["Rare"] = "Selten";
	L["Repair"] = "Reparieren";
	L["Retribution Paladin"] = "Vergeltungs Paladin";
	L["Rewards"] = "Belohnungen";
	L["Rogue"] = "Schurke";
	L["Second Stop"] = "Zweiter Halt";
	L["Shadow Priest"] = "Schatten Priesterin";
	L["Shaman"] = "Schamane";
	L["Spawn Point"] = "Spawnpunkt";
	L["Start"] = "Anfang";
	L["Summon"] = "Beschwörbar";
	L["Teleporter"] = "Teleporter";
	L["Teleporter destination"] = "Teleportziel";
	L["Third Stop"] = "Dritter Halt";
	L["Top"] = "Spitze";
	L["Tunnel"] = "Tunnel";
	L["Underwater"] = "Unter Wasser";
	L["Upper"] = "Oben";
	L["Varies"] = "Variiert";
	L["Wanders"] = "Wandert";
	L["Warlock"] = "Hexenmeister";
	L["Warrior"] = "Krieger";
	L["Wave 5"] = "Welle 5";
	L["Wave 6"] = "Welle 6";
	L["Wave 10"] = "Welle 10";
	L["Wave 12"] = "Welle 12";
	L["Wave 18"] = "Welle 18";
	L["MapsNotFound"] = "Für die gewählte Instanz wurde \nkeine anzuzeigende Karte gefunden. \n\nBitte stellen Sie sicher, dass die erforderlichen \nAtlas-Kartenmodule installiert sind.";
	L["PossibleMissingModule"] = "Diese Karte ist sehr wahrscheinlich in folgendem Modul enthalten: ";

	--Classic Acronyms
	L["AQ"] = "AQ"; -- Ahn'Qiraj
	L["AQ10"] = "AQ10"; -- Ruins of Ahn'Qiraj
	L["AQ40"] = "AQ40"; -- Temple of Ahn'Qiraj
	L["BFD"] = "BFT"; -- Blackfathom Deeps
	L["BRD"] = "BRT"; -- Blackrock Depths
	L["BRM"] = "BRM"; -- Blackrock Mountain
	L["BWL"] = "BWL"; -- Blackwing Lair
	L["DM"] = "DM"; -- Dire Maul
	L["Gnome"] = "Gnome"; -- Gnomeregan
	L["LBRS"] = "LBRS"; -- Lower Blackrock Spire
	L["Mara"] = "Mara"; -- Maraudon
	L["MC"] = "MC"; -- Molten Core
	L["RFC"] = "RF"; -- Ragefire Chasm
	L["RFD"] = "Hügel"; -- Razorfen Downs
	L["RFK"] = "Kral"; -- Razorfen Kraul
	L["ST"] = "Tempel"; -- Sunken Temple
	L["Strat"] = "Strat"; -- Stratholme
	L["Stocks"] = "Verlies"; -- The Stockade
	L["Ulda"] = "Ulda"; -- Uldaman
	L["WC"] = "HdW"; -- Wailing Caverns
	L["ZF"] = "ZF"; -- Zul'Farrak

	--BC Acronyms
	L["AC"] = "Krypta"; -- Auchenai Crypts
	L["Arca"] = "Arka"; -- The Arcatraz
	L["Auch"] = "Auch"; -- Auchindoun
	L["BF"] = "BK"; -- The Blood Furnace
	L["BT"] = "BT"; -- Black Temple
	L["Bota"] = "Bota"; -- The Botanica
	L["CoT"] = "HdZ"; -- Caverns of Time
	L["CoT1"] = "Durnholde, HdZ1"; -- Old Hillsbrad Foothills
	L["CoT2"] = "Morast, HdZ2"; -- The Black Morass
	L["CoT3"] = "Hyjal, HdZ3"; -- Hyjal Summit
	L["CR"] = "EK"; -- Coilfang Reservoir
	L["GL"] = "Gruul"; -- Gruul's Lair
	L["HC"] = "HZ"; -- Hellfire Citadel
	L["Kara"] = "Kara"; -- Karazhan
	L["MaT"] = "TdM"; -- Magisters' Terrace
	L["Mag"] = "Maggi"; -- Magtheridon's Lair
	L["Mech"] = "Mecha"; -- The Mechanar
	L["MT"] = "Gruft"; -- Mana-Tombs
	L["Ramp"] = "BW"; -- Hellfire Ramparts
	L["SSC"] = "SSC, HdS"; -- Serpentshrine Cavern
	L["Seth"] = "SH"; -- Sethekk Halls
	L["SH"] = "ZH"; -- The Shattered Halls
	L["SL"] = "Laby"; -- Shadow Labyrinth
	L["SP"] = "SU"; -- The Slave Pens
	L["SuP"] = "Sunwell"; -- Sunwell Plateau
	L["SV"] = "DK"; -- The Steamvault
	L["TK"] = "FdS"; -- Tempest Keep
	L["UB"] = "TS"; -- The Underbog

	--WotLK Acronyms
	L["AK, Kahet"] = "AK, Kahet"; -- Ahn'kahet
	L["AN, Nerub"] = "AN, Azjol"; -- Azjol-Nerub
	L["Champ"] = "PDC"; -- Trial of the Champion
	L["CoT-Strat"] = "HdZ4"; -- Culling of Stratholme
	L["Crus"] = "PDK"; -- Trial of the Crusader
	L["DTK"] = "Feste"; -- Drak'Tharon Keep
	L["FoS"] = "Schmiede, SS";
	L["FH1"] = "FH1"; -- The Forge of Souls
	L["Gun"] = "Gun"; -- Gundrak
	L["HoL"] = "HdB"; -- Halls of Lightning
	L["HoR"] = "HdR";
	L["FH3"] = "FH3"; -- Halls of Reflection
	L["HoS"] = "HdS"; -- Halls of Stone
	L["IC"] = "ICC, Zita"; -- Icecrown Citadel
	L["Nax"] = "Naxx"; -- Naxxramas
	L["Nex, Nexus"] = "Nex"; -- The Nexus
	L["Ocu"] = "Ocu"; -- The Oculus
	L["Ony"] = "Ony"; -- Onyxia's Lair
	L["OS"] = "Obsi"; -- The Obsidian Sanctum
	L["PoS"] = "Grube";
	L["FH2"] = "FH2"; -- Pit of Saron
	L["RS"] = "RS"; -- The Ruby Sanctum
	L["TEoE"] = "Maly"; -- The Eye of Eternity
	L["UK, Keep"] = "Burg"; -- Utgarde Keep
	L["Uldu"] = "Uldu"; -- Ulduar
	L["UP, Pinn"] = "Turm"; -- Utgarde Pinnacle
	L["VH"] = "VF, Vio"; -- The Violet Hold
	L["VoA"] = "Archa"; -- Vault of Archavon

	--Zones not included in LibBabble-Zone
	L["Crusaders' Coliseum"] = "Kolloseum der Kreuzfahrer";

	--Cataclysm Acronyms
	L["BH"] = "BF"; --Baradin Hold
	L["BoT"] = "BdZ"; --Bastion of Twilight
	L["BRC"] = "BRH"; --Blackrock Caverns
	L["BWD"] = "BWD"; --Blackwing Descent
	L["CoT-DS"] = "HdZ-DS"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "HdZ-EZ"; --Caverns of Time: End Time
	L["CoT-HoT"] = "HdZ-SdZ"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "HdZ-BdE"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands
	L["GB"] = "GB"; --Grim Batol
	L["HoO"] = "HdU"; --Halls of Origination
	L["LCoT"] = "VSdT"; --Lost City of the Tol'vir
	L["SFK"] = "BSF"; -- Shadowfang Keep
	L["TSC"] = "DSK"; --The Stonecore
	L["TWT"] = "TdVW"; --Throne of the Four Winds
	L["ToTT"] = "TdG"; --Throne of the Tides
	L["VC"] = "DM"; -- The Deadmines
	L["VP"] = "VG"; --The Vortex Pinnacle
	L["ZA"] = "ZA"; -- Zul'Aman
	L["ZG"] = "ZG"; --Zul'Gurub

	--MoP Acronyms
	L["GSS"] = "TdUS, Tor"; --Gate of the Setting Sun
	L["Halls"] = "Hallen"; -- Scarlet Halls
	L["HoF"] = "HdF"; --Heart of Fear
	L["MP"] = "MP, Palast"; --Mogu'shan Palace
	L["MV"] = "MS, Kammer"; --Mogu'shan Vaults
	L["SM"] = "Kloster"; -- Scarlet Monastery
	L["Scholo"] = "Scholo"; -- Scholomance
	L["SPM"] = "SPK"; --Shado-Pan Monastery
	L["SNT"] = "BNT, Niuzao"; --Siege of Niuzao Temple
	L["SB"] = "BS, Brauerei"; --Stormstout Brewery
	L["SoO"] = "SuO, OG"; --Siege of Orgrimmar
	L["TJS"] = "TdJ, Jade"; --Temple of the Jade Serpent
	L["TES"] = "TdEF, Terrasse"; --Terrace of Endless Spring
	L["ToT"] = "TdD"; --Throne of Thunder

	--WoD Acronyms
	L["BRF"] = "SFG"; -- Blackrock Foundry
	L["BSM"] = "BSM"; -- Bloodmaul Slag Mines
	L["EB"] = "IF"; -- The Everbloom
	L["GD"] = "GD"; -- Grimrail Depot
	L["HM"] = "HF"; -- Highmaul
	L["ID"] = "ED"; -- Iron Docks
	L["SBG"] = "SGS"; -- Shadowmoon Burial Grounds
	L["SR"] = "HN"; -- Skyreach
	L["UBRS"] = "OBRS"; -- Upper Blackrock Spire

	--Map sections
	L["MapA"] = " [A]";
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
	L["Greatfather Aldrimus"] = "Großvater Aldrimus";
	L["Ha'lei"] = "Ha'lei";
	L["Horvon the Armorer <Armorsmith>"] = "Horvon der Rüstungsschmied <Rüstungsschmied>";
	L["Ramdor the Mad"] = "Ramdor der Wahnsinnige";
	L["Nexus-Prince Haramad"] = "Nexusprinz Haramad";
	L["\"Slim\" <Shady Dealer>"] = "Smudo <Zwielichtiger Händler>";
	L["\"Captain\" Kaftiz"] = "\"Kapitän\" Kaftiz";
	L["Dealer Tariq <Shady Dealer>"] = "Händler Tariq <Zwielichtiger Händler>";
	L["Provisioner Tsaalt"] = "Versorger Tsaalt";

	--Blackfathom Deeps (Entrance)

	--Blackrock Mountain (Entrance)
	L["Bodley"] = "Bodley";
	L["Lothos Riftwaker"] = "Lothos Felsspalter";
	L["Orb of Command"] = "Befehlskugel";
	L["Scarshield Quartermaster <Scarshield Legion>"] = "Rüstmeister der Schmetterschilde <Schmetterschildlegion>";
	L["The Behemoth"] = "Das Ungetüm";

	--Caverns of Time (Entrance)
	L["Steward of Time <Keepers of Time>"] = "Ordner der Zeit <Hüter der Zeit>";
	L["Alexston Chrome <Tavern of Time>"] = "Alexston Chrom <Taverne der Zeit>";
	L["Yarley <Armorer>"] = "Yarley <Rüstungsschmied>";
	L["Bortega <Reagents & Poison Supplies>"] = "Bortega <Reagenzien & Gifte>";
	L["Alurmi <Keepers of Time Quartermaster>"] = "Alurmi <Rüstmeisterin der Hüter der Zeit>";
	L["Galgrom <Provisioner>"] = "Galgrom <Versorger>";
	L["Zaladormu"] = "Zaladormu";
	L["Soridormi <The Scale of Sands>"] = "Soridormi <Die Wächter der Sande>";
	L["Arazmodu <The Scale of Sands>"] = "Arazmodu <Die Wächter der Sande>";
	L["Andormu <Keepers of Time>"] = "Andormu <Hüter der Zeit>";
	L["Nozari <Keepers of Time>"] = "Nozari <Hüter der Zeit>";
	L["Anachronos <Keepers of Time>"] = "Anachronos <Hüter der Zeit>";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Indormi <Bewahrerin der alten Edelsteinkunde>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Tydormu <Bewahrer der verlorenen Artefakte>";

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Mortog Dampfkopf";

	--Dire Maul (Entrance)
	L["Dire Pool"] = "Düsterteich";
	L["Dire Maul Arena"] = "Düsterbruch Arena";
	L["Elder Mistwalker"] = "Urahnin Nebelgänger";

	--Gnomeregan (Entrance)
	L["Torben Zapblast <Teleportation Specialist>"] = "Torben Zischknall <Teleportationsspezialist>";

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Stufen und Pfad zum Blutkessel";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Pfad zum Höllenfeuerbollwerk und den zerschmetterten Hallen";
	L["Meeting Stone of Magtheridon's Lair"] = "Versammlungsstein für Magtheridons Kammer";
	L["Meeting Stone of Hellfire Citadel"] = "Versammlungsstein der Höllenfeuerzitadelle";

	--Icecrown Citadel (Entrance)

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Erzmagierin Leryda";
	L["Archmage Alturus"] = "Erzmagier Alturus";
	L["Apprentice Darius"] = "Lehrling Darius";
	L["Stairs to Underground Pond"] = "Treppe zum Unterirdischen Teich";
	L["Stairs to Underground Well"] = "Treppe zum Unterirdischen Brunnen";
	L["Charred Bone Fragment"] = "Verkohltes Knochenfragment";

	--Maraudon (Entrance)
	L["The Nameless Prophet"] = "Der namenlose Prophet";
	L["Cursed Centaur"] = "Verfluchter Zentaur";
	L["Kherrah"] = "Kherrah";

	--Scarlet Monastery (Entrance)

	--The Deadmines (Entrance)

	--Sunken Temple (Entrance)
	L["Priestess Udum'bra"] = "Priesterin Udum'bra";
	L["Gomora the Bloodletter"] = "Gomora der Blutvergießer";
	L["Captain Wyrmak"] = "Hauptmann Wyrmak";

	--Uldaman (Entrance)

	--Ulduar (Entrance)
	L["Shavalius the Fancy <Flight Master>"] = "Shavalius der Adrette <Flugmeister>";
	L["Chester Copperpot <General & Trade Supplies>"] = "Chester Kupferkessel <Gemischt- & Handwerkswaren>";
	L["Slosh <Food & Drink>"] = "Slosh <Speis & Trank>";

	--Wailing Caverns (Entrance)

--************************************************
-- Kalimdor Instances (Classic)
--************************************************

	--Blackfathom Deeps
	L["Je'neu Sancrea <The Earthen Ring>"] = "Je'neu Sancrea <Der Irdene Ring>";
	L["Sentinel Aluwyn"] = "Schildwache Aluwyn";
	L["Zeya"] = "Zeya";
	L["Altar of Blood"] = "Altar des Blutes";
	L["Fire of Aku'mai"] = "Feuer von Aku'mai";
	L["Spoils of Blackfathom"] = "Schätze der Tiefschwarzen Grotte";

	--Dire Maul (East)
	L["\"Ambassador\" Dagg'thol"] = "\"Botschafter\" Dagg'thol";
	L["Furgus Warpwood"] = "Furgus Wucherborke";
	L["Old Ironbark"] = "Eisenborke der Große";
	L["Ironbark the Redeemed"] = "Eisenborke der Erlöste";

	--Dire Maul (North)
	L["Druid of the Talon"] = "Druide der Kralle";
	L["Stonemaul Ogre"] = "Oger der Steinbrecher";
	L["Knot Thimblejack"] = "Knot Zwingschraub";

	--Dire Maul (West)
	L["Ferra"] = "Ferra";
	L["Estulan <The Highborne>"] = "Estulan <Die Hochgeborenen>";
	L["Shen'dralar Watcher"] = "Behüter der Shen'dralar";
	L["Pylons"] = "Pylonen";
	L["Ancient Equine Spirit"] = "Uralter Pferdegeist";
	L["Shen'dralar Ancient"] = "Uralte Shen'dralar";
	L["Falrin Treeshaper"] = "Falrin Rankenweber";
	L["Lorekeeper Lydros"] = "Wissenshüter Lydros";
	L["Lorekeeper Javon"] = "Wissenshüter Javon";
	L["Lorekeeper Kildrath"] = "Wissenshüter Kildrath";
	L["Lorekeeper Mykos"] = "Wissenshüter Mykos";
	L["Shen'dralar Provisioner"] = "Versorger der Shen'dralar";

	--Maraudon	
	L["Elder Splitrock"] = "Urahne Splitterfels";
	L["Celebras the Redeemed"] = "Celebras der Erlöste";

	--Ragefire Chasm
	L["Commander Bagran"] = "Kommandant Bagran";
	L["Invoker Xorenth"] = "Herbeirufer Xorenth";
	L["Scout Cage"] = "Späherkäfig";

	--Razorfen Downs
	L["Koristrasza"] = "Koristrasza";
	L["Amnennar's Phylactery"] = "Amnennars Phylakterium";

	--Razorfen Kraul
	L["Auld Stonespire"] = "Auld Steinkeil";
	L["Spirit of Agamaggan <Ancient>"] = "Geist von Agamaggan <Uralter>";

	--Ruins of Ahn'Qiraj
	L["Four Kaldorei Elites"] = "Vier Elitesoldaten der Kaldorei";
	L["Captain Qeez"] = "Hauptmann Qeez";
	L["Captain Tuubid"] = "Hauptmann Tuubid";
	L["Captain Drenn"] = "Hauptmann Drenn";
	L["Captain Xurrem"] = "Hauptmann Xurrem";
	L["Major Yeggeth"] = "Major Yeggeth";
	L["Major Pakkon"] = "Major Pakkon";
	L["Colonel Zerran"] = "Oberst Zerran";
	L["Safe Room"] = "Sicherer Raum";

	--Temple of Ahn'Qiraj
	L["Andorgos <Brood of Malygos>"] = "Andorgos <Brut Malygos'>";
	L["Vethsera <Brood of Ysera>"] = "Vethsera <Brut Yseras>";
	L["Kandrostrasz <Brood of Alexstrasza>"] = "Kandrostrasz <Brut Alexstraszas>";
	L["Arygos"] = "Arygos";
	L["Caelestrasz"] = "Caelestrasz";
	L["Merithra of the Dream"] = "Merithra des Traums";

	--Wailing Caverns
	L["Ebru <Disciple of Naralex>"] = "Ebru <Jüngerin von Naralex>";
	L["Nalpak <Disciple of Naralex>"] = "Nalpak <Jünger von Naralex>";
	L["Muyoh <Disciple of Naralex>"] = "Muyoh <Jünger von Naralex>";
	L["Naralex"] = "Naralex";

	--Zul'Farrak
	L["Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>"] = "Chefingenieur Bilgenritzel <Gadgetzan Water Co.>";
	L["Mazoga's Spirit"] = "Mazogas Geist";
	L["Tran'rek"] = "Tran'rek";
	L["Weegli Blastfuse"] = "Weegli Lunte";
	L["Raven"] = "Die Krähe";
	L["Elder Wildmane"] = "Urahnin Wildmähne";

--****************************
-- Eastern Kingdoms Instances (Classic)
--****************************

	--Blackrock Depths
	L["The Black Anvil"] = "Der Schwarze Amboss";
	L["The Vault"] = "Der Tresorraum";
	L["Watchman Doomgrip"] = "Wachmann Stahlgriff";
	L["Elder Morndeep"] = "Urahne Schwermut";
	L["Schematic: Field Repair Bot 74A"] = "Bauplan: Feldreparaturbot 74A";
	L["Private Rocknot"] = "Gefreiter Rocknot";
	L["Mistress Nagmara"] = "Herrin Nagmara";
	L["Jalinda Sprig <Morgan's Militia>"] = "Jalinda Sprig <Morgans Miliz>";
	L["Oralius <Morgan's Militia>"] = "Oralius <Morgans Miliz>";
	L["Thal'trak Proudtusk <Kargath Expeditionary Force>"] = "Thal'trak Ehrenhauer <Expeditionskorps von Kargath>";
	L["Galamav the Marksman <Kargath Expeditionary Force>"] = "Galamav der Schütze <Expeditionskorps von Kargath>";
	L["Maxwort Uberglint"] = "Maxwort Funkelglanz";
	L["Tinkee Steamboil"] = "Tinkee Kesseldampf";
	L["Yuka Screwspigot <Engineering Supplies>"] = "Yuka Schraubstutz <Ingenieursbedarf>";
	L["Abandonded Mole Machine"] = "Verlassene Maulwurfmaschine";
	L["Kevin Dawson <Morgan's Militia>"] = "Kevin Dawson <Morgans Miliz>";
	L["Lexlort <Kargath Expeditionary Force>"] = "Lexlort <Expeditionskorps von Kargath>";
	L["Prospector Seymour <Morgan's Militia>"] = "Ausgrabungsleiter Seymour <Morgans Miliz>";
	L["Razal'blade <Kargath Expeditionary Force>"] = "Razal'hieb <Expeditionskorps von Kargath>";
	L["The Shadowforge Lock"] = "Das Schloss der Schattenschmiede";
	L["Mayara Brightwing <Morgan's Militia>"] = "Mayara Wolkenglanz <Morgans Miliz>";
	L["Hierophant Theodora Mulvadania <Kargath Expeditionary Force>"] = "Hierophantin Theodora Mulvadania <Expeditionskorps von Kargath>";
	L["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = "Lokhtos Düsterfeilsch <Die Thoriumbruderschaft>";
	L["Mountaineer Orfus <Morgan's Militia>"] = "Gebirgsjäger Orfus <Morgans Miliz>";
	L["Thunderheart <Kargath Expeditionary Force>"] = "Donnerherz <Expeditionskorps von Kargath>";
	L["Marshal Maxwell <Morgan's Militia>"] = "Marschall Maxwell <Morgans Miliz>";
	L["Warlord Goretooth <Kargath Expeditionary Force>"] = "Kriegsherr Bluthauer <Expeditionskorps von Kargath>";
	L["The Black Forge"] = "Die schwarze Schmiede";
	L["Core Fragment"] = "Kernfragment";
	L["Shadowforge Brazier"] = "Schattenschmiedekohlenpfanne";

	--Blackrock Spire (Lower)
	L["Urok's Tribute Pile"] = "Uroks Tributhaufen";
	L["Acride <Scarshield Legion>"] = "Acride <Schmetterschildlegion>";
	L["Elder Stonefort"] = "Urahne Steinwehr";
	L["Roughshod Pike"] = "Beschlagene Pike";

	--Blackwing Lair
	L["Orb of Domination"] = "Kugel der Herrschaft";
	L["Master Elemental Shaper Krixix"] = "Meisterelementarformer Krixix";

	--Gnomeregan
	L["Chomper"] = "Mümmler";
	L["Blastmaster Emi Shortfuse"] = "Sprengmeisterin Emi Schnellzünd";
	L["Murd Doc <S.A.F.E.>"] = "Murd Doc <S.I.C.H.E.R.>";
	L["Tink Sprocketwhistle <Engineering Supplies>"] = "Tink Sprosspfiff <Ingenieursbedarf>";
	L["The Sparklematic 5200"] = "Der Funkelmat 5200";
	L["Mail Box"] = "Briefkasten";
	L["B.E Barechus <S.A.F.E.>"] = "Bi'ay Bäräkuss <S.I.C.H.E.R.>";
	L["Face <S.A.F.E.>"] = "Fähs <S.I.C.H.E.R.>";
	L["Hann Ibal <S.A.F.E.>"] = "Hann Ibal <S.I.C.H.E.R.>";

	--Molten Core

	--Stratholme - Crusader's Square
	L["Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>"] = "Kreuzzugskommandant Eligor Morgenbringer <Bruderschaft des Lichts>";
	L["Master Craftsman Wilhelm <Brotherhood of the Light>"] = "Meisterhandwerker Wilhelm <Bruderschaft des Lichts>";
	L["Packmaster Stonebruiser <Brotherhood of the Light>"] = "Rottenkommandant Steinberster <Bruderschaft des Lichts>";
	L["Stratholme Courier"] = "Kurier von Stratholme";
	L["Fras Siabi's Postbox"] = "Fras Siabis Briefkasten";
	L["King's Square Postbox"] = "Briefkasten am Königsplatz";
	L["Festival Lane Postbox"] = "Briefkasten in der Feststraße";
	L["Elder Farwhisper"] = "Urahne Fernwisper";
	L["Market Row Postbox"] = "Briefkasten in der Marktgasse";

	--Stratholme - The Gauntlet
	L["Elders' Square Postbox"] = "Briefkasten am Ältestenplatz";
	L["Archmage Angela Dosantos <Brotherhood of the Light>"] = "Erzmagierin Angela Dosantos <Bruderschaft des Lichts>";
	L["Crusade Commander Korfax <Brotherhood of the Light>"] = "Kreuzzugskommandant Korfax <Bruderschaft des Lichts>";

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Leutnant Horatio Laine";
	L["Kagtha"] = "Kagtha";
	L["Slinky Sharpshiv"] = "Slinky Scharfklinge";
	L["Quartermaster Lewis <Quartermaster>"] = "Rüstmeister Lewis <Rüstmeister>";
	L["Miss Mayhem"] = "Fräulein Fiasko";
	L["Vend-O-Tron D-Luxe"] = "Kauf-o-Mat 1-A";

	--The Stockade
	L["Rifle Commander Coe"] = "Schützenkommandant Coe";
	L["Warden Thelwater"] = "Aufseher Thelwasser";
	L["Nurse Lillian"] = "Schwester Lillian";

	--The Sunken Temple
	L["Lord Itharius"] = "Lord Itharius";
	L["Elder Starsong"] = "Urahnin Sternensang";

	--Uldaman
	L["Baelog's Chest"] = "Baelogs Truhe";
	L["Kand Sandseeker <Explorer's League>"] = "Kand Sandsucher <Forscherliga>";
	L["Lead Prospector Durdin <Explorer's League>"] = "Oberausgrabungsleiter Durdin <Forscherliga>";
	L["Olga Runesworn <Explorer's League>"] = "Olga Runenschwur <Forscherliga>";
	L["Aoren Sunglow <The Reliquary>"] = "Aoren Sonnenglanz <Die Archäologische Akademie>";
	L["High Examiner Tae'thelan Bloodwatcher <The Reliquary>"] = "Oberster Prüfer Tae'thelan Blutwächter <Die Archäologische Akademie>";
	L["Lidia Sunglow <The Reliquary>"] = "Lidia Sonnenglanz <Die Archäologische Akademie>";
	L["Ancient Treasure"] = "Antiker Schatz";
	L["The Discs of Norgannon"] = "Die Scheiben von Norgannon";

--*******************
-- Burning Crusade Instances
--*******************

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Draeneigeist";
	L["Avatar of the Martyred"] = "Avatar des Gemarterten";
	L["D'ore"] = "D'ore";
	L["Tormented Soulpriest"] = "Gequälte Seelenpriesterin";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Konstrukteur Morphalius";
	L["Mamdy the \"Ologist\""] = "Mamdy der \"Ologe\"";
	L["Shadow Lord Xiraxis"] = "Schattenlord Xiraxis";
	L["Ambassador Pax'ivi"] = "Botschafter Pax'ivi";
	L["Cryo-Engineer Sha'heen"] = "Kryoingenieur Sha'heen";
	L["Ethereal Transporter Control Panel"] = "Bedienungskonsole des Astraltransporters";

	--Auch: Sethekk Halls
	L["Isfar"] = "Isfar";
	L["Dealer Vijaad"] = "Händler Vijaad";
	L["Lakka"] = "Lakka";
	L["The Saga of Terokk"] = "Die Sage von Terokk";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Feldkommandeur Mahfuun";
	L["Spy Grik'tha"] = "Spionin Grik'tha";
	L["The Codex of Blood"] = "Kodex des Blutes";
	L["First Fragment Guardian"] = "Wächter des ersten Teils";
	L["Spy To'gun"] = "Spion To'gun";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "Zum Relikt der Seelen";
	L["Towards Teron Gorefiend"] = "Zu Teron Blutschatten";
	L["Towards Illidan Stormrage"] = "Zu Illidan Sturmgrimm";
	L["Spirit of Olum"] = "Geist von Olum";
	L["Spirit of Udalo"] = "Geist von Udalo";
	L["Aluyen <Reagents>"] = "Aluyen <Reagenzien>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Okuno <Rüstmeister der Todeshörigen>";
	L["Seer Kanai"] = "Seher Kanai";

	--Black Temple (Basement)

	--Black Temple (Top)

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Seher Olum";

	--CFR: The Slave Pens
	L["Nahuud"] = "Nahuud";
	L["Watcher Jhang"] = "Behüterin Jhang";
	L["Weeder Greenthumb"] = "Jäter Gründaum";
	L["Skar'this the Heretic"] = "Nar'biss der Ketzer";
	L["Naturalist Bite"] = "Naturalist Biss";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Windrufer Klaue";
	L["Main Chambers Access Panel"] = "Zugangskonsole der Hauptkammer";
	L["Second Fragment Guardian"] = "Wächter des zweiten Teils";

	--CFR: The Underbog
	L["T'shu"] = "T'shu";
	L["The Underspore"] = "Die Tiefenspore";
	L["Earthbinder Rayge"] = "Erdbinder Rayge";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Sa'at <Hüter der Zeit>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Lady Jaina Prachtmeer";
	L["Thrall <Warchief>"] = "Thrall <Kriegshäuptling>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Tyrande Wisperwind <Hohepriesterin von Elune>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Erozion";
	L["Brazen"] = "Brazen";
	L["Landing Spot"] = "Landepunkt";
	L["Thrall"] = "Thrall";
	L["Taretha"] = "Taretha";
	L["Don Carlos"] = "Don Carlos";
	L["Guerrero"] = "Guerrero";
	L["Thomas Yance <Travelling Salesman>"] = "Thomas Yance <Fliegender Händler>";
	L["Aged Dalaran Wizard"] = "Gealterter Hexer von Dalaran";
	L["Jonathan Revah"] = "Jonathan Revah";
	L["Jerry Carter"] = "Jerry Carter";
	L["Helcular"] = "Helcular";
	L["Farmer Kent"] = "Bauer Kent";
	L["Sally Whitemane"] = "Sally Weißsträhne";
	L["Renault Mograine"] = "Renault Mograine";
	L["Little Jimmy Vishas"] = "Kleiner Jimmy Vishas";
	L["Herod the Bully"] = "Herod der Tyrann";
	L["Nat Pagle"] = "Nat Pagle";
	L["Hal McAllister"] = "Hal McAllister";
	L["Zixil <Aspiring Merchant>"] = "Zixil <Aufstrebender Händler>";
	L["Overwatch Mark 0 <Protector>"] = "Überwacher V.0 <Beschützer>";
	L["Southshore Inn"] = "Süderstade Gasthaus";
	L["Captain Edward Hanes"] = "Kapitän Edward Hanes";
	L["Captain Sanders"] = "Kapitän Sanders";
	L["Commander Mograine"] = "Kommandant Mograine";
	L["Isillien"] = "Isillien";
	L["Abbendis"] = "Abbendis";
	L["Fairbanks"] = "Schönufer";
	L["Taelan"] = "Taelan";
	L["Barkeep Kelly <Bartender>"] = "Barkeeper Kelly <Schankkellner>";
	L["Frances Lin <Barmaid>"] = "Frances Lin <Bardame>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Küchenchef Jessen <Spezialitätenfleisch & Pampe>";
	L["Stalvan Mistmantle"] = "Stalvan Dunstmantel";
	L["Phin Odelic <The Kirin Tor>"] = "Phin Odelic <Kirin Tor>";
	L["Magistrate Henry Maleb"] = "Magistrat Henry Maleb";
	L["Raleigh the True"] = "Raleigh der Getreue";
	L["Nathanos Marris"] = "Nathanos Marris";
	L["Bilger the Straight-laced"] = "Bilger der Strenge";
	L["Innkeeper Monica"] = "Gastwirtin Monica";
	L["Julie Honeywell"] = "Julie Honigbrunn";
	L["Jay Lemieux"] = "Jay Lemieux";
	L["Young Blanchy"] = "Kleine Graumähne";

	--Gruul's Lair

	--HFC: The Blood Furnace
	L["Gunny"] = "Gunny";
	L["Caza'rez"] = "Caza'rez";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Vorhutsspäher Chadwick";
	L["Stone Guard Stok'ton"] = "Steingardist Stok'ton";
	L["Reinforced Fel Iron Chest"] = "Verstärkte Teufelseisentruhe";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Henker der Zerschmetterten Hand";
	L["Private Jacint"] = "Gefreiter Jacint";
	L["Rifleman Brownbeard"] = "Scharfschütze Braunbart";
	L["Captain Alina"] = "Hauptmann Alina";
	L["Scout Orgarr"] = "Späher Orgarr";
	L["Korag Proudmane"] = "Korag Mähnenstolz";
	L["Captain Boneshatter"] = "Hauptmann Knochenbrecher";
	L["Randy Whizzlesprocket"] = "Randy Sauseritzel";
	L["Drisella"] = "Drisella";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Baroness Dorothea Mühlenstein";
	L["Lady Catriona Von'Indi"] = "Lady Catriona Von'Indi";
	L["Lady Keira Berrybuck"] = "Lady Keira Beerhas";
	L["Baron Rafe Dreuger"] = "Baron Rafe Dreuger";
	L["Lord Robin Daris"] = "Lord Robin Daris";
	L["Lord Crispin Ference"] = "Lord Crispin Ference";
	L["Red Riding Hood"] = "Rotkäppchen";
	L["Wizard of Oz"] = "Zauberer von Oz";
	L["The Master's Terrace"] = "Die Terrasse des Meisters";
	L["Servant Quarters"] = "Quartier der Diener";
	L["Hastings <The Caretaker>"] = "Hastings <Der Hauswart>";
	L["Berthold <The Doorman>"] = "Berthold <Der Pförtner>";
	L["Calliard <The Nightman>"] = "Calliard <Der Nachtwächter>";
	L["Koren <The Blacksmith>"] = "Koren <Der Schmied>";
	L["Bennett <The Sergeant at Arms>"] = "Bennett <Die Schutzwache>";
	L["Keanna's Log"] = "Keannas Aufzeichnungen";
	L["Ebonlocke <The Noble>"] = "Schwarzhaupt <Der Adlige>";
	L["Sebastian <The Organist>"] = "Sebastian <Der Orgelspieler>";
	L["Barnes <The Stage Manager>"] = "Barnes <Der Inspizient>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Weg zur Beschädigten Treppe";
	L["Broken Stairs"] = "Beschädigte Treppe";
	L["Ramp to Guardian's Library"] = "Rampe zur Bibliothek der Beschützer";
	L["Mysterious Bookshelf"] = "Verdächtiges Bücherregal";
	L["Ramp up to the Celestial Watch"] = "Rampe nach oben zur Himmelswacht";
	L["Ramp down to the Gamesman's Hall"] = "Rampe nach unten zur Halle der Spieler";
	L["Ramp to Medivh's Chamber"] = "Rampe zu Medivhs Kammer";
	L["Spiral Stairs to Netherspace"] = "Wendeltreppe zum Netherraum";
	L["Wravien <The Mage>"] = "Wravien <Der Magier>";
	L["Gradav <The Warlock>"] = "Gradav <Der Hexenmeister>";
	L["Kamsis <The Conjurer>"] = "Kamsis <Die Beschwörerin>";
	L["Ythyar"] = "Ythyar";
	L["Echo of Medivh"] = "Echo Medivhs";

	--Magisters Terrace
	L["Exarch Larethor"] = "Exarch Larethor";
	L["Fel Crystals"] = "Teufelskristalle";
	L["Apoko"] = "Apoko";
	L["Eramas Brightblaze"] = "Eramas Leuchtfeuer";
	L["Ellrys Duskhallow"] = "Ellrys Dämmerweih";
	L["Fizzle"] = "Zischel";
	L["Garaxxas"] = "Garaxxas";
	L["Sliver <Garaxxas' Pet>"] = "Splitter <Garaxxas Tier>";
	L["Kagani Nightstrike"] = "Kagani Nachtschlag";
	L["Warlord Salaris"] = "Kriegsherr Salaris";
	L["Yazzai"] = "Yazzai";
	L["Zelfan"] = "Zelfan";
	L["Tyrith"] = "Tyrith";
	L["Scrying Orb"] = "Seherkugel";

	--Sunwell Plateau
	L["Madrigosa"] = "Madrigosa";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Millhaus Manasturm";
	L["Third Fragment Guardian"] = "Wächter des dritten Teils";
	L["Udalo"] = "Udalo";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Überladene Manazelle";

	--TK: The Eye

--*****************
-- WotLK Instances
--*****************

	--Azjol-Nerub: Ahn'kahet: The Old Kingdom
	L["Seer Ixit"] = "Seher Ixit";
	L["Ahn'kahet Brazier"] = "Kohlenbecken von Ahn'kahet";

	--Azjol-Nerub: Azjol-Nerub
	L["Reclaimer A'zak"] = "Pionier A'zak";
	L["Watcher Gashra"] = "Aufseher Gashra";
	L["Watcher Narjil"] = "Aufseher Narjil";
	L["Watcher Silthik"] = "Aufseher Silthik";
	L["Elder Nurgen"] = "Urahne Nurgen";

	--Caverns of Time: The Culling of Stratholme
	L["The Culling of Stratholme"] = "Das Ausmerzen von Stratholme";
	L["Scourge Invasion Points"] = "Invasionspunkte der Geißel";
	L["Guardian of Time"] = "Wächter der Zeit";
	L["Chromie"] = "Chromie";

	--Drak'Tharon Keep
	L["Image of Drakuru"] = "Abbild von Drakuru";
	L["Kurzel"] = "Kurzel";
	L["Elder Kilias"] = "Urahne Kilias";
	L["Drakuru's Brazier"] = "Drakuru's Kohlenpfanne";

	--The Frozen Halls: Halls of Reflection
	--3 beginning NPCs omitted, see The Forge of Souls
	L["The Captain's Chest"] = "Die Truhe des Hauptmanns";

	--The Frozen Halls: Pit of Saron
	--6 beginning NPCs omitted, see The Forge of Souls
	L["Martin Victus"] = "Martin Victus";
	L["Gorkun Ironskull"] = "Gorkun Eisenschädel";
	L["Rimefang"] = "Raufang";

	--The Frozen Halls: The Forge of Souls
	--Lady Jaina Proudmoore omitted, in Hyjal Summit
	L["Archmage Koreln <Kirin Tor>"] = "Erzmagier Koreln <Kirin Tor>";
	L["Archmage Elandra <Kirin Tor>"] = "Erzmagierin Elandra <Kirin Tor>";
	L["Lady Sylvanas Windrunner <Banshee Queen>"] = "Fürstin Sylvanas Windläufer <Bansheekönigin>";
	L["Dark Ranger Loralen"] = "Dunkelläuferin Loralen";
	L["Dark Ranger Kalira"] = "Dunkelläuferin Kalira";

	--Gundrak
	L["Chronicler Bah'Kini"] = "Chronistin Bah'Kini";
	L["Tol'mar"] = "Tol'mar";
	L["Elder Ohanzee"] = "Urahne Ohanzee";

	--Icecrown Citadel
	L["To next map"] = "Zur nächsten Karte";
	L["From previous map"] = "Von vorheriger Karte";
	L["Upper Spire"] = "Obere Spitze";
	L["Sindragosa's Lair"] = "Sindragosas Hort";
	L["Stinky"] = "Stinki";
	L["Precious"] = "Schatz";
	L["Rimefang"] = "Raufang";
	L["Spinestalker"] = "Wirbelpirscher";
	L["Sister Svalna"] = "Schwester Svalna";

	--Naxxramas
	L["Mr. Bigglesworth"] = "Mr. Bigglesworth";
	L["Frostwyrm Lair"] = "Frostwyrmhöhle";
	L["Teleporter to Middle"] = "Teleporter zur Mitte";

	--The Obsidian Sanctum
	L["Black Dragonflight Chamber"] = "Kammer des schwarzen Drachenschwarms";

	--Onyxia's Lair

	--The Ruby Sanctum
	L["Red Dragonflight Chamber"] = "Kammer des roten Drachenschwarms";

	--The Nexus: The Eye of Eternity

	--The Nexus: The Nexus
	L["Warmage Kaitlyn"] = "Kriegsmagierin Kaitlyn";
	L["Berinand's Research"] = "Berinands Forschungsergebnisse";
	L["Elder Igasho"] = "Urahne Igasho";

	--The Nexus: The Oculus
	L["Belgaristrasz"] = "Belgaristrasz";
	L["Eternos"] = "Eternos";
	L["Verdisa"] = "Verdisa";
	L["Centrifuge Construct"] = "Zentrifugenkonstrukt";
	L["Cache of Eregos"] = "Eregos' Lager";

	--Trial of the Champion
	L["Marshal Jacob Alerius"] = "Marschall Jacob Alerius";
	L["Ambrose Boltspark"] = "Ambrose Bolzenfunk";
	L["Colosos"] = "Kolosos";
	L["Jaelyne Evensong"] = "Jaelyne Abendlied";
	L["Lana Stouthammer"] = "Lana Starkhammer";

	--Trial of the Crusader
	L["Heroic: Trial of the Grand Crusader"] = "Heroisch: Prüfung des Obersten Kreuzfahrers";
	L["Cavern Entrance"] = "Höhleneingang";

	--Ulduar General
	L["The Siege"] = "Die Belagerung";
	L["The Keepers"] = "Die Hüter";

	--Ulduar A
	L["Tower of Life"] = "Turm des Lebens";
	L["Tower of Flame"] = "Turm der Flammen";
	L["Tower of Frost"] = "Turm des Frostes";
	L["Tower of Storms"] = "Turm der Stürme";

	--Ulduar B
	L["Prospector Doren"] = "Ausgrabungsleiter Doren"; 
	L["Archivum Console"] = "Archivumkonsole";

	--Ulduar C
	L["Sif"] = "Sif";

	--Ulduar D

	--Ulduar E

	--Ulduar: Halls of Lightning
	L["Stormherald Eljrrin"] = "Sturmbote Eljrrin";

	--Ulduar: Halls of Stone
	L["Kaldir Ironbane"] = "Kaldir Eisenbann";
	L["Tribunal Chest"] = "Kiste des Tribunals";
	L["Elder Yurauk"] = "Urahne Yurauk";
	L["Brann Bronzebeard"] = "Brann Bronzebart";

	--Utgarde Keep: Utgarde Keep
	L["Defender Mordun"] = "Verteidiger Mordun";
	L["Dark Ranger Marrah"] = "Dunkelläuferin Marrah";
	L["Elder Jarten"] = "Urahne Jarten";

	--Utgarde Keep: Utgarde Pinnacle
	L["Brigg Smallshanks"] = "Brigg Kleinkeul";
	L["Image of Argent Confessor Paletress"] = "Abbild von Argentumbeichtpatin Blondlocke";
	L["Elder Chogan'gada"] = "Urahne Chogan'gada";

	--Vault of Archavon

	--The Violet Hold
	L["Lieutenant Sinclari"] = "Leutnant Sinclari";

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "Dasnurimi <Geologin & Konservatorin>";
	L["Lord Afrasastrasz"] = "Lord Afrasastrasz";

	--Caverns of Time: End Time
	L["Alurmi"] = "Alurmi";
	L["Nozdormu"] = "Nozdormu";

	--Caverns of Time: Hour of Twilight

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Lurah Zornranke <Sammlerin kristallisierten Feuersteins>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Naresir Sturmwut <Rüstmeister der Rächer des Hyjal>";

	--Grim Batol
	L["Baleflame"] = "Unheilsflamme";
	L["Farseer Tooranu <The Earthen Ring>"] = "Scharfseher Tooranu <Der Irdene Ring>";
	L["Velastrasza"] = "Velastrasza";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Große Steintafel";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Kapitän Hadan";
	L["Tol'vir Grave"] = "Grab der Tol'vir";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Apotheker-Trio";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Apotheker Hummel <Chemiemanufaktur Krone>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Apotheker Baxter <Chemiemanufaktur Krone>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Apotheker Frye <Chemiemanufaktur Krone>";
	L["Packleader Ivar Bloodfang"] = "Rudelführer Ivar Blutfang";
	L["Deathstalker Commander Belmont"] = "Todespirscherkommandant Belmont";
	L["Haunted Stable Hand"] = "Geisterhafter Stallknecht";
	L["Investigator Fezzen Brasstacks"] = "Ermittler Fezzen Kupferstapel";

	--The Bastion of Twilight

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Erdwächterin Yrsa <Der Irdene Ring>";

	--The Vortex Pinnacle
	L["Itesh"] = "Itesh";
	L["Magical Brazier"] = "Magische Kohlenpfanne";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Kapitän Taylor";
	L["Legionnaire Nazgrim"] = "Legionär Nazgrim";
	L["Neptulon"] = "Neptulon";

	--Zul'Aman
	L["Vol'jin"] = "Vol'jin";
	L["Witch Doctor T'wansi"] = "Hexendoktor T'wansi";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Blutwache Hakkuz <Elite der Dunkelspeere>";
	L["Voodoo Pile"] = "Voodoohaufen";
	L["Bakkalzu"] = "Bakkalzu";
	L["Hazlek"] = "Hazlek";
	L["The Map of Zul'Aman"] = "Karte von Zul'Aman";
	L["Norkani"] = "Norkani";
	L["Kasha"] = "Kasha";
	L["Thurg"] = "Thurg";
	L["Gazakroth"] = "Gazakroth";
	L["Lord Raadan"] = "Lord Raadan";
	L["Darkheart"] = "Düsterherz";
	L["Alyson Antille"] = "Alyson Antille";
	L["Slither"] = "Glibber";
	L["Fenstalker"] = "Fennpirscher";
	L["Koragg"] = "Koragg";
	L["Zungam"] = "Zungam";
	L["Forest Frogs"] = "Urwaldfrösche";
	L["Eulinda <Reagents>"] = "Eulinda <Reagenzien>";
	L["Harald <Food Vendor>"] = "Harald <Lebensmittelhändler>";
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
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Briney Schraubschneider <Schwarzmeer Kapitalbeteiligungen>";
	L["Vehini <Assault Provisions>"] = "Vehini <Angriffsvorräte>";
	L["Overseer Blingbang"] = "Aufseher Klunkerknall";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Blutschlächterin T'ara <Dunkelspeerveteranin>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Blutschlächterin Vaena <Dunkelspeerveteranin>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Blutschlächterin Zala <Dunkelspeerveteranin>";
	L["Helpful Jungle Monkey"] = "Hilfreicher Dschungelaffe";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Giftmischerin Mauri <Das Flüstern der Schlange>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Zanzils Kessel der giftigen Grausamkeit";
	L["Tiki Lord Mu'Loa"] = "Tikilord Mu'Loa";
	L["Gub <Destroyer of Fish>"] = "Gub <Fischvernichter>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Giftmischer T'Kulu <Der Toxische Biss>";
	L["Tor-Tun <The Slumberer>"] = "Tor-Tun <Der Schläfer>";
	L["Kaulema the Mover"] = "Kaulema der Beweger";
	L["Berserking Boulder Roller"] = "Wütender Felsroller";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Zanzils Kessel des frierenden Fleisches";
	L["Mor'Lek the Dismantler"] = "Mor'Lek der Zerleger";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Hexendoktor Qu'in <Medizinfrau>";
	L["Zanza the Restless"] = "Zanza der Ruhelose";
	L["Mortaxx <The Tolling Bell>"] = "Mortaxx <Das Schlagen der Stunde>";
	L["Tiki Lord Zim'wae"] = "Tikilord Zim'wae";
	L["Zanzil's Cauldron of Burning Blood"] = "Zanzils Kessel des brennenden Blutes";

--*********************
-- Mists of Pandaria Instances
--*********************

	--Gate of the Setting Sun
	L["Bowmistress Li <Guard Captain>"] = "Bogenmeisterin Li <Wachoffizierin>";

	--Heart of Fear

	--Mogu'shan Palace
	L["Sinan the Dreamer"] = "Sinan die Träumerin";

	--Mogu'shan Vaults

	--Scarlet Halls
	L["Commander Lindon"] = "Kommandant Lindon";
	L["Hooded Crusader"] = "Vermummte Kreuzfahrerin";
	L["Bucket of Meaty Dog Food"] = "Eimer mit fleischigem Hundefutter";
	L["Reinforced Archery Target"] = "Verstärkte Zielscheibe";

	--Scarlet Monastery

	--Scholomance
	L["Instructor Chillheart's Phylactery"] = "Ausbilderin Kaltherz' Phylakterium";
	L["Professor Slate"] = "Professor Schiefer";
	L["Polyformic Acid Potion"] = "Polyformgift";
	L["Talking Skull"] = "Sprechender Schädel";
	L["In the Shadow of the Light"] = "Im Schatten des Lichts";
	L["Kel'Thuzad's Deep Knowledge"] = "Kel'Thuzads tiefgründiges Wissen";
	L["Forbidden Rites and other Rituals Necromantic"] = "Verbotene Riten und andere nekromantische Rituale";
	L["Coffer of Forgotten Souls"] = "Truhe der vergessenen Seelen";
	L["The Dark Grimoire"] = "Der dunkle Zauberfoliant";

	--Shado-Pan Monastery
	L["Ban Bearheart"] = "Ban Bärenherz";

	--Siege of Niuzao Temple
	L["Shado-Master Chum Kiu"] = "Shado-Meister Chum-Kiu";

	--Siege of Orgrimmar

	--Stormstout Brewery
	L["Auntie Stormstout"] = "Tantchen Sturmbräu";
	L["Chen Stormstout"] = "Chen Sturmbräu";

	--Temple of the Jade Serpent
	L["Master Windstrong"] = "Meister Windstark";
	L["Priestess Summerpetal"] = "Priesterin Sommerblatt";

	--Terrace of Endless Spring

	--Throne of Thunder
	L["Monara <The Last Queen>"] = "Monara <Die Letzte Königin>";
	L["No'ku Stormsayer <Lord of Tempest>"] = "No'ku Sturmsprecher <Herr der Stürme>";
	L["Rocky Horror"] = "Krankenstein";
	L["Focused Eye"] = "Fokussiertes Auge";
	L["Unblinking Eye"] = "Starrendes Auge";
	L["Archritualist Kelada"] = "Erzritualist Kelada";
	L["Flesh'rok the Diseased <Primordial Saurok Horror>"] = "Fleisch'rok der Verpestete <Urzeitlicher Saurokschrecken>";
	L["Zao'cho <The Emperor's Shield>"] = "Zao'cho <Der Schild des Kaisers>";

--*********************
-- Warlords of Draenor Instances
--*********************

	--Auchindoun

	--Blackrock Foundry

	--Bloodmaul Slag Mines

	--The Everbloom

	--Grimrail Depot
	L["Train Ride"] = "Zugfahrt";

	--Highmaul

	--Iron Docks

	--Shadowmoon Burial Grounds

	--Skyreach

	--Upper Blackrock Spire
--@end-do-not-package@

end