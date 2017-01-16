-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert at gmail dot com>
	Copyright 2010 - Lothaer <lothayer at gmail dot com>, Atlas Team
	Copyright 2011 ~ 2017 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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
	L["Imp"] = "Wichtel";
	L["Key"] = "Schlüssel";
	L["Lower"] = "Unten";
	L["Meeting Stone"] = "Versammlungsstein";
	L["Middle"] = "Mitte";
	L["Moonwell"] = "Mondbrunnen";
	L["Optional"] = "Optional";
	L["Orange"] = "Orange";
	L["Outside"] = "Außerhalb";
	L["Portal"] = "Portal";
	L["Protection Warrior"] = "Defensiv Krieger";
	L["Purple"] = "Lila";
	L["Random"] = "Zufällig";
	L["Rare"] = "Selten";
	L["Repair"] = "Reparieren";
	L["Retribution Paladin"] = "Vergeltungs Paladin";
	L["Rewards"] = "Belohnungen";
	L["Second Stop"] = "Zweiter Halt";
	L["Shadow Priest"] = "Schatten Priesterin";
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
	L["Wave 5"] = "Welle 5";
	L["Wave 6"] = "Welle 6";
	L["Wave 10"] = "Welle 10";
	L["Wave 12"] = "Welle 12";
	L["Wave 18"] = "Welle 18";
	L["MapsNotFound"] = "Für die gewählte Instanz wurde \nkeine anzuzeigende Karte gefunden. \n\nBitte stellen Sie sicher, dass die erforderlichen \nAtlas-Kartenmodule installiert sind.";
	L["PossibleMissingModule"] = "Diese Karte ist sehr wahrscheinlich in folgendem Modul enthalten: ";

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

--@end-do-not-package@

end