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

local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Atlas", "itIT", false)

-- Atlas Italian Localization
if ( GetLocale() == "itIT" ) then
-- Define the leading strings to be ignored while sorting
-- Ex: The Stockade
AtlasSortIgnore = {
	--"the (.+)",
};

-- Syntax: ["real_zone_name"] = "localized map zone name"
AtlasZoneSubstitutions = {
--	["Ahn'Qiraj"] = "Tempio di Ahn'Qiraj",
--	["The Temple of Atal'Hakkar"] = "Il Tempio di Atal'Hakkar",
--	["Throne of Tides"] = "Fauce Abisal: Trono delle Maree",
}
end


if L then

L["ATLAS_NO_MODULE_OR_PLUGIN_NEW"] = [=[|cffffd200Atlas richiede un pacchetto di mappe|r


Atlas è un visualizzatore di mappe e non include mappe. Non è stato rilevato alcun pacchetto di mappe o plugin attivo.


Per consultare le mappe di Kalimdor e dei Regni Orientali, installa separatamente questo addon:
|cff66ccffAtlas Kalimdor & Eastern Kingdoms|r


I nomi dei pacchetti di mappe descrivono le mappe incluse, non il client di WoW supportato. Scegli il file adatto alla tua versione di WoW.


Se hai già installato un pacchetto di mappe, assicurati che sia Atlas sia il pacchetto siano attivati nell'elenco degli addon del tuo personaggio.]=]

L["ATLAS_MAP_PACK_GUIDE_TEXT"] = [=[|cffffd2001. Scegli un pacchetto di mappe|r

Atlas è un visualizzatore di mappe e non include mappe. Installa almeno un pacchetto di mappe o un plugin compatibile per poter consultare le mappe.

Visita la pagina "Atlas Map Packs and Plugins" utilizzando l'indirizzo riportato qui sotto. Troverai i link per scaricare i pacchetti disponibili, le istruzioni di installazione e i suggerimenti per la risoluzione dei problemi.

Per consultare le mappe di Kalimdor e dei Regni Orientali, scegli:
|cff66ccffAtlas Kalimdor & Eastern Kingdoms|r
Questo pacchetto di mappe si chiamava precedentemente Atlas Classic WoW.

|cffffd2002. Scegli il download adatto alla tua versione di WoW|r

I nomi dei pacchetti di mappe descrivono le mappe incluse, non il client di WoW supportato. Controlla i file disponibili per ciascun progetto e scegli un download compatibile con il tuo client e la tua versione del gioco.

Devi installare solo i pacchetti contenenti le mappe che desideri utilizzare.

|cffffd2003. Attiva Atlas e il pacchetto di mappe|r

Se WoW è in esecuzione durante l'installazione, riavvia il gioco al termine. Nell'elenco degli addon del tuo personaggio, assicurati che sia Atlas sia il pacchetto di mappe siano attivati.

|cffffd200Non vedi ancora le mappe?|r

Consulta la sezione dedicata alla risoluzione dei problemi nella pagina "Atlas Map Packs and Plugins". Se segnali un problema, includi la tua versione di WoW, la versione di Atlas, i nomi e le versioni dei pacchetti di mappe installati e gli eventuali messaggi di errore Lua.]=]

L["ATLAS_MAP_PACK_GUIDE_URL_LABEL"] = "Download dei pacchetti di mappe e guida all'installazione:"

L["ATLAS_MAP_PACK_GUIDE_COPY_HINT"] = "Fai clic sull'indirizzo per selezionarlo, quindi copialo e incollalo nel browser."

end