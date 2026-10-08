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
local L = AceLocale:NewLocale("Atlas", "frFR", false)
-- Localize file must set above to false, for example:
--    local AL = AceLocale:NewLocale("Atlas", "deDE", false)
-- Sur un travail de Wysiwyg, Khiria, TrAsHeR entre 2007 et 2017. Many thanks to all contributors !
-- Atlas French Localization.
if ( GetLocale() ==		"frFR" ) then
	-- Define the leading strings to be ignored while sorting
	-- Ex: The Stockade
	AtlasSortIgnore = {"le (.+)", "la (.+)", "les (.+)"}

	-- Syntax: ["real_zone_name"] = "localized map zone name"
	AtlasZoneSubstitutions = {
		["Ahn'Qiraj"] = "Temple d'Ahn'Qiraj",
		["The Temple of Atal'Hakkar"] = "Le temple d'Atal'Hakkar",
	--	["Throne of Tides"] = "The Abyssal Maw: Throne of the Tides",
	}
end


if L then
--************************************************
-- UI terms and common strings
--************************************************
L["ATLAS_TITLE"] = "Atlas"

L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas"
L["BINDING_NAME_ATLAS_TOGGLE"] = "Atlas [Ouvrir/Fermer]"
L["BINDING_NAME_ATLAS_OPTIONS"] = "Options [Ouvrir/Fermer]"
L["BINDING_NAME_ATLAS_AUTOSEL"] = "Sélection automatique"

L["ATLAS_SLASH"] = "/atlas"
L["ATLAS_SLASH_OPTIONS"] = "options"

L["ATLAS_STRING_LOCATION"] = "Lieu"
L["ATLAS_STRING_LEVELRANGE"] = "Niveau"
L["ATLAS_STRING_RECLEVELRANGE"] = "Niveau recommandé"
L["ATLAS_STRING_PLAYERLIMIT"] = "Limite de joueurs"
L["ATLAS_STRING_SELECT_CAT"] = "Choix de la catégorie"
L["ATLAS_STRING_SELECT_MAP"] = "Choix de la carte"
L["ATLAS_STRING_SEARCH"] = "Rechercher"
L["ATLAS_STRING_CLEAR"] = "Nettoyer"
L["ATLAS_STRING_MINLEVEL"] = "Niveau Minimum"
L["ATLAS_STRING_MINGEARLEVEL"] = "Niveau d'équipement minimum"

L["ATLAS_OPTIONS_BUTTON"] = "Options"
L["ATLAS_OPTIONS_SHOWBUT"] = "Afficher le bouton sur la mini-carte"
L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "Afficher le bouton Atlas autour de la mini-carte."
L["ATLAS_OPTIONS_SHOWWMBUT"] = "Afficher le bouton sur la fenêtre de la carte du monde."
L["ATLAS_OPTIONS_AUTOSEL"] = "Sélection automatique de la carte"
L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Sélection automatique de la carte, Atlas détectera votre localisation pour choisir votre instance à afficher."
L["ATLAS_OPTIONS_BUTPOS"] = "Position du bouton"
L["ATLAS_OPTIONS_LOCK"] = "Verrouiller la fenêtre d'Atlas"
L["ATLAS_OPTIONS_LOCK_TIP"] = "Verrouiller / déverrouiller la fenêtre d'Atlas."
L["ATLAS_OPTIONS_TRANS"] = "Transparence"
L["ATLAS_OPTIONS_RCLICK"] = "Clic-Droit pour afficher la carte du monde"
L["ATLAS_OPTIONS_RCLICK_TIP"] = "Active le clic-droit dans la fenêtre d'Atlas pour afficher la carte du monde."
L["ATLAS_OPTIONS_RESETPOS"] = "Position initiale"
L["ATLAS_OPTIONS_ACRONYMS"] = "Afficher les acronymes VO/VF"
L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "Afficher les acronymes de l'instance dans les détails de la carte"
L["ATLAS_OPTIONS_SCALE"] = "Mise à l'échelle de la fenêtre Atlas"
L["ATLAS_OPTIONS_BOSS_DESC"] = "Afficher la description des boss, si disponible"
L["ATLAS_OPTIONS_BOSS_POTRAIT"] = "Afficher le portrait du boss lorsqu'il est disponible"
L["ATLAS_OPTIONS_BOSS_DESC_TIP"] = "Afficher la description d'un boss au passage de la souris sur son numéro, si disponible."
L["ATLAS_OPTIONS_BOSS_DESC_SCALE"] = "Mise à l'échelle de l'info-bulles pour les descriptions de boss sur la carte"
L["ATLAS_OPTIONS_BUTRAD"] = "Rayon du bouton"
L["ATLAS_OPTIONS_CLAMPED"] = "Fixer la fenêtre à l'écran"
L["ATLAS_OPTIONS_CLAMPED_TIP"] = "Fixer la fenêtre à l'écran, désactiver pour permettre de déplacer le fenêtre d'Atlas."
L["ATLAS_OPTIONS_CTRL"] = "Maintenir la touche Ctrl enfoncée pour afficher les infobulles"
L["ATLAS_OPTIONS_CTRL_TIP"] = "Maintenir la touche Ctrl enfoncée pour afficher les infobulles au passage de la souris. Très utile quand le texte est trop long pour apparaitre dans la fenêtre."
L["ATLAS_OPTIONS_DONTSHOWAGAIN"] = "Ne pas remontrer de nouveau l'information"
L["ATLAS_OPTIONS_CHECKMODULE"] = "Me rappeler en cas de module(s)/plug-in(s) manquant."
L["ATLAS_OPTIONS_CHECKMODULE_TIP"] = "Activer pour vérifier après le chargement de WoW s'il manque un module/plug-in Atlas."
L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "Afficher les donjons de la liste par couleurs de difficulté"
L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "Basé sur le niveau minimum recommandé par le donjon et le niveau du joueur, pour afficher le donjon avec des couleurs de difficulté."
L["ATLAS_OPTIONS_HEADER_DISPLAY"] = "Options d'affichage"
L["ATLAS_OPTIONS_HEADER_ADDONCONFIG"] = "Configuration de l'addon"
L["ATLAS_OPTIONS_MAXMENUITEMS"] = "Nombre maximum d’éléments du menu"
L["ATLAS_OPTIONS_MAXMENUITEMS_TIP"] = "Configurez le nombre maximum d’éléments du menu déroulant à afficher avant de passer à une autre catégorie de menu"
L["ATLAS_NO_MODULE_OR_PLUGIN"] = "|cffff66ffErreur :|r Atlas ne peut détecter aucun module ou plugin de carte installé et activé. Notez qu’Atlas lui-même est un navigateur de cartes ; vous devez installer au moins un module ou plugin de carte pour pouvoir consulter les cartes."

L["ATLAS_BUTTON_CLOSE"] = "Fermer"
L["ATLAS_LDB_HINT"] = [=[Clic-Gauche pour ouvrir Atlas.
Clic-Droit pour les options d'Atlas.]=]
L["ATLAS_MINIMAPLDB_HINT"] = [=[Clic-Gauche pour ouvrir Atlas.
CLic-Droit pour ouvrir les options d'Atlas.
Clic-Gauche + glisser pour déplacer ce bouton.]=]

L["ATLAS_OPTIONS_CATDD"] = "Trier les instances par :"
L["ATLAS_DDL_CONTINENT"] = "Continent"	-- Sort Instance Maps by: Continent
L["ATLAS_DDL_CONTINENT_EASTERN"] = "Instances des Royaumes de l'Est"
L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "Instances de Kalimdor"
L["ATLAS_DDL_CONTINENT_OUTLAND"] = "Instances de l'Outreterre"
L["ATLAS_DDL_CONTINENT_NORTHREND"] = "Instances de Norfendre"
L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "Instances du Tréfonds"
L["ATLAS_DDL_CONTINENT_PANDARIA"] = "Instances de Pandarie"
L["ATLAS_DDL_CONTINENT_DRAENOR"] = "Instances de Draenor"
L["ATLAS_DDL_CONTINENT_BROKENISLES"] = "Instances des Îles Brisées"
L["ATLAS_DDL_CONTINENT_BROKENISLES1"] = "Donjons des Îles Brisées"
L["ATLAS_DDL_CONTINENT_BROKENISLES2"] = "Raids des Îles Brisées"
L["ATLAS_DDL_CONTINENT_KULTIRAS"] = "Instances de Kul Tiras."
L["ATLAS_DDL_CONTINENT_ZANDALAR"] = "Instances de Zandalar"
L["ATLAS_DDL_CONTINENT_NAZJATAR"] = "Instances de Nazjatar"
L["ATLAS_DDL_LEVEL"] = "Niveau"		-- Sort Instance Maps by: Level
-- BCC / prior to new level range
L["ATLAS_DDL_LEVEL_10TO20"] = "Instances Niveau 10-20"
L["ATLAS_DDL_LEVEL_20TO40"] = "Instances Niveau 20-40"
L["ATLAS_DDL_LEVEL_40TO60"] = "Instances Niveau 40-60"
L["ATLAS_DDL_LEVEL_60TO70"] = "Instances Niveau 60-70"
L["ATLAS_DDL_LEVEL_70TO80"] = "Instances Niveau 70-80"
L["ATLAS_DDL_LEVEL_80TO85"] = "Instances Niveau 80-85"
L["ATLAS_DDL_LEVEL_85TO90"] = "Instances Niveau 85-90"
L["ATLAS_DDL_LEVEL_90TO100"] = "Instances Niveau 90-100"
L["ATLAS_DDL_LEVEL_100PLUS"] = "Instances Niveau 100+"
L["ATLAS_DDL_LEVEL_100TO110"] = "Instances Niveaux 100-110"
L["ATLAS_DDL_LEVEL_110PLUS"] = "Instances Niveau 110+"
L["ATLAS_DDL_LEVEL_110TO120"] = "Instances Niveaux 110-120"
L["ATLAS_DDL_LEVEL_120PLUS"] = "Instances Niveau 120+"
L["ATLAS_DDL_LEVEL_120TO130"] = "Instances Niveaux 120-130"
L["ATLAS_DDL_LEVEL_130PLUS"] = "Instances Niveau 130+"
-- Retail / new level range
L["ATLAS_DDL_LEVEL_UNDER30"] = "Instances avant Niveau 30"
L["ATLAS_DDL_LEVEL_UNDER45"] = "Instances avant Niveau 45"
L["ATLAS_DDL_LEVEL_10TO30"] = "Instances Niveau 10-30"
L["ATLAS_DDL_LEVEL_30TO35"] = "Instances Niveau 30-35"
L["ATLAS_DDL_LEVEL_35TO40"] = "Instances Niveau 35-40"
L["ATLAS_DDL_LEVEL_40TO45"] = "Instances Niveau 40-45"
L["ATLAS_DDL_LEVEL_45TO50"] = "Instances Niveau 45-50"
L["ATLAS_DDL_LEVEL_45TO60"] = "Instances Niveau 45-60"
L["ATLAS_DDL_LEVEL_50TO60"] = "Instances Niveau 50-60"
L["ATLAS_DDL_LEVEL_60PLUS"] = "Instances Niveau 60+"
L["ATLAS_DDL_PARTYSIZE"] = "Taille de groupe"	-- Sort Instance Maps by: Party Size
L["ATLAS_DDL_PARTYSIZE_5"] = "Instances pour 5 Joueurs"
L["ATLAS_DDL_PARTYSIZE_10"] = "Instances pour 10 Joueurs"
L["ATLAS_DDL_PARTYSIZE_20TO40"] = "Instances pour 20-40 Joueurs"
L["ATLAS_DDL_EXPANSION"] = "Extension"	-- Sort Instance Maps by: Expansion
L["ATLAS_DDL_EXPANSION_OLD"] = "Instances du Vieux Monde"
L["ATLAS_DDL_EXPANSION_BC"] = "Instances de Burning Crusade"
L["ATLAS_DDL_EXPANSION_WOTLK"] = "Instances de Wrath of the Lich King"
L["ATLAS_DDL_EXPANSION_CATA"] = "Instances de Cataclysm"
L["ATLAS_DDL_EXPANSION_MOP"] = "Instances de Mists of Pandaria"
L["ATLAS_DDL_EXPANSION_WOD"] = "Instances de Warlords of Draenor"
L["ATLAS_DDL_EXPANSION_LEGION"] = "Instances de Légion"
L["ATLAS_DDL_EXPANSION_LEGION1"] = "Donjons de Légion"
L["ATLAS_DDL_EXPANSION_LEGION2"] = "Raids de Légion"
L["ATLAS_DDL_EXPANSION_BFA"] = "Instances de Bataille pour Azeroth."
L["ATLAS_DDL_EXPANSION_SHADOWLANDS"] = "Instances de Shadowlands"
L["ATLAS_DDL_TYPE"] = "Type"			-- -- Sort Instance Maps by: Map Type
L["ATLAS_DDL_TYPE_INSTANCE"] = "Instances"
L["ATLAS_DDL_TYPE_ENTRANCE"] = "Entrées"

L["ATLAS_INSTANCE_BUTTON"] = "Instance"
L["ATLAS_ENTRANCE_BUTTON"] = "Entrée"
L["ATLAS_SEARCH_UNAVAIL"] = "Recherche Indisponible"

L["ATLAS_DEP_MSG1"] = "Atlas a détecté un ou plusieurs module(s) qui ne sont pas à jour."
L["ATLAS_DEP_MSG2"] = "Ils ont été désactivés pour ce personnage."
L["ATLAS_DEP_MSG3"] = [=[Supprimez-les de votre dossier addons et obtenez le dernier installé.

Liste des plugin(s) / module(s) / addon(s) obsolètes :]=]
L["ATLAS_DEP_MSG4"] = [=[Une fois que vous les avez installé, 
n'oubliez pas de les activer à partir de la liste d'addon.]=]
L["ATLAS_DEP_OK"] = "Ok"

L["ATLAS_INFO"] = "Atlas Information"

L["ATLAS_INFO_12200"] = [=[Information importante : 

Suite à l'augmentation de la taille des fichiers de l'addon, nous avons déplacé 
une partie de nos cartes des donjons et créé des modules séparés avec. 

Les utilisateurs qui téléchargent nos addons à partir de fameux sites tiers 
pourraient n'avoir que l'addon principal qui ne contient que les fonctions de 
base et les cartes de la dernière extension de WoW. 

Si vous souhaitez également afficher les cartes des vieilles extensions, et donc 
avoir tous ces modules Atlas, vous devez les télécharger et les installer séparément. 

Pour plus d'information, lire le sujet suivant sur notre forum : 
|cff6666ffhttp://www.atlasmod.com/phpBB3/viewtopic.php?t=1522|cffffffff 

ou visiter notre site web pour voir où les télécharger. 
|cff6666ffhttp://www.atlasmod.com/]=]
L["ATLAS_INFO_12201"] = [=[Veuillez noter que nous avons créé un nouveau plug-in - |cff6666ffAtlas Scenarios|cffffffff, 
afin de fournir les cartes des scénarios introduits dans WoW 5.0. 

Visitez notre site web pour plus de détail, et n'oubliez pas de le 
télécharger/installer séparément.
|cff6666ffhttp://www.atlasmod.com/|cffffffff]=]

L["ATLAS_MISSING_MODULE"] = [=[Atlas a détecté certains modules(s) / plugin(s) manquant(s).

Il se pourrait que vous ayez eu un module(s) / plugin(s) dépassé(s) qui avait été désactivé par Atlas.
Si vous les avez installé récemment, accédez à votre liste d'addons pour vérifier qu'ils ont été activés.

Si vous êtes sûr de ne pas avoir besoin de ces module(s) \ plugin(s) \"manquant(s)\" et que vous ne souhaitez plus voir ce message, vous pouvez accéder au panneau des options pour désactiver cette notification.

Liste des module(s) / plugin(s) manquant(s) :
]=]
L["ATLAS_OPEN_ADDON_LIST"] = "Ouvrir la liste d'addon"

L["ATLAS_OPEN_ACHIEVEMENT"] = "Cliquez pour ouvrir les détails des hauts faits."
L["ATLAS_OPEN_ADVENTURE"] = "Cliquez pour ouvrir le Guide de l'aventurier."
L["ATLAS_CLICK_TO_OPEN"] = "Cliquez pour ouvrir la fenêtre d'Atlas."
L["ATLAS_OPEN_WOWMAP_WINDOW"] = "Cliquez pour ouvrir la carte du Guide de l'aventurier."
L["ATLAS_OPEN_ATLASLOOT_WINDOW"] = "Cliquez pour ouvrir la fenêtre d'AtlasLoot."
L["ATLAS_ROPEN_ATLASLOOT_WINDOW"] = "Clic-Droit pour ouvrir la fenêtre d'AtlasLoot."
L["ATLAS_CLOSE_ATLASLOOT_WINDOW"] = "Clic-Droit pour fermer la fenêtre d'AtlasLoot."
L["ATLAS_COLLAPSE_BUTTON"] = "Cliquez pour fermer le panneau Atlas legend."
L["ATLAS_EXPAND_BUTTON"] = "Cliquez pour ouvrir le panneau Atlas legend."
L["ATLAS_TOGGLE_LOOT"] = "Clic-Droit pour afficher / masquer le panneau de butin."
L["ATLAS_REOPEN_LOOT_AGAIN"] = "Veuillez rouvrir la fenêtre de butin pour recharger."

--L["Scale and Transparency"] = "Scale and Transparency"

L["Click to open the corresponding World Map"] = "Cliquez pour ouvrir la carte du monde correspondante"
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************

--Common strings
L["East"] = "Est"
L["North"] = "Nord"
L["South"] = "Sud"
L["West"] = "Ouest"
L["%s Instances"] = "Instances de %s" 	-- Legion Instances
L["%s Dungeons"] = "Donjons de %s"	-- Legion Dungeons
L["%s Raids"] = "Raids de %s"		-- Legion Raids
L[" 1/2"] = "1/2"
L[" 2/2"] = "2/2"

--World Events, Festival
L["Brewfest"] = "Fête des Brasseurs"
L["Hallow's End"] = "Sanssaint"
L["Love is in the Air"] = "De l'amour dans l'air"
L["Lunar Festival"] = "Festival lunaire"
L["Midsummer Festival"] = "Solstice d'été : la fête du Feu"

--Instance Difficulties
L["Heroic_Symbol"] = "(H)"
L["Mythic_Symbol"] = "(M)"
--Misc strings
	--Symbols
	L["Colon"] = "  : " -- The colon symbol to be used in string, ex: "Zone: Firelands
	L["Semicolon"] = "; "
	L["L-Parenthesis"] = " ("
	L["R-Parenthesis"] = ") "
	L["Comma"] = ", "
	L["Period"] = ". "
	L["Hyphen"] = " - "
	L["Slash"] = " / "
	L["L-SBracket"] = "["
	L["R-SBracket"] = "]"
	L["L-DQuote"] = "\""
	L["R-DQuote"] = "\""
L["Adult"] = "Adulte"
L["AKA"] = "AKA" -- As Known As
L["Arcane Container"] = "Récipient arcanique"
L["Arms Warrior"] = "Guerrier Armes"
L["Attunement Required"] = "Harmonisation requise"
L["Back"] = "de derrière" -- Back de Back Door, trouver mieux
L["Basement"] = "Sous-sol"
L["Blacksmithing Plans"] = "Plans de forge"
L["Child"] = "Enfant"
L["Connection"] = "Connexion"
L["Elevator"] = "Ascenseur"
L["End"] = "Fin"
L["Engineer"] = "Ingénieur"
L["Entrance"] = "Entrée"
L["Event"] = "Evènement"
L["Exalted"] = "Exalté"
L["Exit"] = "Sortie"
L["Fourth Stop"] = "Quatrième arrêt"
L["Front"] = "Principale" -- Front de Front Door, trouver mieux
L["Ghost"] = "Fantôme"
L["Graveyard"] = "Cimetière"
L["Heroic"] = "Héroïque"
L["Mythic"] = "Mythique"
L["Holy Paladin"] = "Paladin Sacré"
L["Holy Priest"] = "Prêtre Sacré"
L["Imp"] = "Diablotin"
L["Key"] = "Clé"
L["Lower"] = "En bas"
L["Meeting Stone"] = "Pierre de rencontre"
L["Middle"] = "Milieu"
L["Moonwell"] = "Puits de lune"
L["Optional"] = "Optionel"
L["Orange"] = "Orange"
L["Outside"] = "Extérieur"
L["Portal"] = "Portail"
L["Portal to %s"] = "Portail vers %s"
L["Protection Warrior"] = "Guerrier Protection"
L["Purple"] = "Violet"
L["Random"] = "Aléatoire"
L["Rare"] = "Rare"
L["Repair"] = "Réparation"
L["Retribution Paladin"] = "Paladin Vindicte"
L["Rewards"] = "Récompenses"
L["Stairs"] = "Escaliers"
L["Stairs to %s"] = "Escaliers vers %s"
L["Second Stop"] = "Deuxième arrêt"
L["Shadow Priest"] = "Prêtre Ombre"
L["Spawn Point"] = "Points d'apparition"
L["Start"] = "Début"
L["Summon"] = "Invoqué"
L["Teleporter"] = "Téléporteur"
L["Teleporter destination"] = "Destination du téléporteur"
L["Third Stop"] = "Troisième arrêt"
L["Top"] = "Haut"
L["Tunnel"] = "Tunnel"
L["Underwater"] = "Sous l'eau"
L["Upper"] = "Étage" -- ou "En haut" à voir le contexte.
L["Upper floor"] = "Étage supérieur"
L["Varies"] = "Variable"
L["Wanders"] = "Errant"
L["Wave 5"] = "Vague 5"
L["Wave 6"] = "Vague 6"
L["Wave 10"] = "Vague 10"
L["Wave 12"] = "Vague 12"
L["Wave 18"] = "Vague 18"
L["MapsNotFound"] = "Le donjon actuellement sélectionné n'a pas \nd'image de la carte correspondante. \n\nAssurez-vous d'avoir installé le \nbon module de cartes d'Atlas"
L["PossibleMissingModule"] = "Il est probable que cette carte provient de ce module : "
L["Transport"] = "Transport"
L["Profile Options"] = "Options du profile"

--Map sections
L["MapA"] = " [A]" -- For example: Shado-Pan Monastery [A]
L["MapB"] = " [B]"
L["MapC"] = " [C]"
L["MapD"] = " [D]"
L["MapE"] = " [E]"
L["MapF"] = " [F]"
L["MapG"] = " [G]"
L["MapH"] = " [H]"
L["MapI"] = " [I]"
L["MapJ"] = " [J]"

--************************************************
-- Instance Entrance Maps
--************************************************
	--Blackrock Mountain (Entrance)
L["Bodley"] = "Bodley"
L["Lothos Riftwaker"] = "Lothos Ouvrefaille"
L["Orb of Command"] = "Orbe de Commandement"
L["Scarshield Quartermaster <Scarshield Legion>"] = "Intendant du Bouclier balafré <Légion du Bouclier balafré>"
L["The Behemoth"] = "Le Béhémoth"

	--Caverns of Time (Entrance)
L["Steward of Time <Keepers of Time>"] = "Régisseur du temps <Les Gardiens du temps>"
L["Alexston Chrome <Tavern of Time>"] = "Alexston Chrome <Gargotte du temps>"
L["Yarley <Armorer>"] = "Yarley <Armurier>"
L["Bortega <Reagents & Poison Supplies>"] = "Bortega <Composants & poisons>"
L["Alurmi <Keepers of Time Quartermaster>"] = "Alurmi <Intendant des gardiens du Temps>"
L["Galgrom <Provisioner>"] = "Galgrom <Approvisionneur>"
L["Zaladormu"] = "Zaladormu"
L["Soridormi <The Scale of Sands>"] = "Soridormi <La Balance des sables>"
L["Arazmodu <The Scale of Sands>"] = "Arazmodu <La Balance des sables>"
L["Andormu <Keepers of Time>"] = "Andormu <Les Gardiens du temps>"
L["Nozari <Keepers of Time>"] = "Nozari <Les Gardiens du temps>"
L["Anachronos <Keepers of Time>"] = "Anachronos <Les Gardiens du temps>"
end