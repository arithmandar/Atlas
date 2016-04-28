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

-- Atlas Map NPC Description Data
-- Maintainers: Arith, Dynaletik

local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local AL = LibStub("AceLocale-3.0"):GetLocale("Atlas");
local ALIL = Atlas_IngameLocales;

AtlasMaps_NPC_DB = {
--[[
Syntax: 
	MapName = {
		{ number, EJ_BossID, X coordinate, Y coordinate };
		{ 2, 193,339, 435 };
	};
]]

--************************************************
-- Instance Entrance Maps
--************************************************

	AuchindounEnt = {
		{ "A", 10001, 47, 255 }; -- Auchenai Crypts
		{ "B", 10002, 246, 53 }; -- Mana-Tombs
		{ "C", 10003, 445, 251 }; -- Sethekk Halls
		{ "D", 10004, 246, 451 }; -- Shadow Labyrinth
		{ "E", 10005, 92, 97 }; -- Entrance
		{ "E", 10005, 400, 100 }; -- Entrance
		{ "E", 10005, 92, 406 }; -- Entrance
		{ "E", 10005, 400, 406 }; -- Entrance
		{ "1'", 10006, 83, 250 }; -- Clarissa
		{ "2'", 10007, 248, 88 }; -- Nexus-Prince Haramad
		{ "3'", 10008, 414, 253 }; -- Dealer Tariq <Shady Dealer>
		{ "3'", 10008, 248, 414 }; -- Dealer Tariq <Shady Dealer>
		{ "4'", 10009, 248, 251 }; -- Meeting Stone
	};
	BlackfathomDeepsEnt = {
		{ "A", 10001, 171, 395 }; -- Entrance
		{ "B", 10002, 353, 227 }; -- Blackfathom Deeps
	};
	BlackrockMountainEnt = {
		{ "A", 10001, 266, 182 };
		{ "B", 10002, 250, 498};
		{ "C", 10003, 153, 12};
		{ "D", 10004, 357, 308};
		{ "E", 10005, 215, 286};
		{ "F", 10006, 329, 419};
		{ "G", 10007, 427, 357};
		{ "1", 10008, 400, 356};
		{ "2", 10009, 131, 191};
		{ "3", 10010, 125, 33};
		{ "1'", 10011, 276, 350};
		{ "2'", 10012, 336, 391};
	};
	CavernsOfTimeEnt = {
		{ "A", 10001, 400, 170 }; -- Entrance
		{ "B", 10002, 135, 79 }; -- Hyjal Summit
		{ "C", 10003, 13, 156 }; -- Old Hillsbrad Foothills
		{ "D", 10004, 60, 442 }; -- The Black Morass
		{ "E", 10005, 258, 411 }; -- The Culling of Stratholme
		{ "F", 10006, 286, 170 }; -- Dragon Soul
		{ "G", 10007, 256, 201 }; -- End Time
		{ "H", 10008, 23, 298 }; -- Well of Eternity
		{ "I", 10009, 324, 210 }; -- Hour of Twilight
		{ "1'", 10010, 421, 170 }; -- Steward of Time <Keepers of Time>
		{ "2'", 10011, 456, 159 }; -- Alexston Chrome <Tavern of Time>
		{ "3'", 10012, 350, 148 }; -- Graveyard
		{ "4'", 10013, 318, 303 }; -- Yarley <Armorer>
		{ "5'", 10014, 308, 329 }; -- Bortega <Reagents & Poison Supplies>
		{ "6'", 10015, 191, 293 }; -- Zaladormu
		{ "7'", 10016, 193, 157 }; -- Moonwell
		{ "8'", 10017, 156, 216 }; -- Andormu <Keepers of Time>
		{ "9'", 10018, 141, 263 }; -- Anachronos <Keepers of Time>
		{ "10'", 10019, 110, 317 }; -- Andormu <Keepers of Time>
	};
	CoTHyjalEnt = {
		{ "A", 10001, 375, 303 }; -- Entrance
		{ "B", 10002, 293, 410 }; -- Alliance Base
		{ "C", 10003, 216, 124 }; -- Horde Encampment
		{ "D", 10004, 138, 254 }; -- Night Elf Village
		{ "1'", 10005, 244, 268 }; -- Indormi <Keeper of Ancient Gem Lore>
	};
	CoilfangReservoirEnt = {
		{ "A", 10001, 74, 321 }; -- The Slave Pens
		{ "B", 10002, 134, 230 }; -- The Steamvault
		{ "C", 10003, 236, 224 }; -- Serpentshrine Cavern
		{ "D", 10004, 344, 292 }; -- The Underbog
		{ "E", 10005, 236, 378 }; -- Entrance - Underwater
		{ "1'", 10006, 246, 321 }; -- Meeting Stone
		{ "2'", 10007, 222, 308 }; -- Mortog Steamhead
	};
	DireMaulEnt = {
		{ "A", 10001, 126, 495 }; -- Entrance
		{ "B", 10002, 343, 360 }; -- Dire Maul, East
		{ "B", 10002, 319, 228}; -- Dire Maul, East
		{ "C", 10003, 250, 124 }; -- Dire Maul, North
		{ "D", 10004, 164, 244 }; -- Dire Maul, West
		{ "D", 10004, 164, 278 }; -- Dire Maul, West
		{ "1'", 10005, 126, 377 }; -- Dire Pool
		{ "2'", 10006, 241, 238 }; -- Dire Maul Arena
	};
	GnomereganEnt = {
		{ "A", 10001, 495, 436 }; -- Entrance
		{ "B", 10002, 21, 413 }; -- Gnomeregan, Front
		{ "C", 10003, 124, 21 }; -- Gnomeregan, Back
		{ "1'", 10004, 398, 435 }; -- Elevator
		{ "2'", 10005, 81, 132 }; -- Mail Box
	};
	HellfireCitadelEnt = {
		{ "A", 10001, 270, 306 }; -- Hellfire Ramparts
		{ "B", 10002, 300, 253 }; -- The Shattered Halls
		{ "C", 10003, 196, 249 }; -- The Blood Furnace
		{ "D", 10004, 205, 286 }; -- Magtheridon's Lair
		{ "1'", 10005, 185, 344 }; -- Meeting Stone of Magtheridon's Lair
		{ "2'", 10006, 304, 283 }; -- Meeting Stone of Hellfire Citadel
		{ "3'", 10007, 200, 489 }; -- Steps and path to the Blood Furnace
		{ "4'", 10008, 326, 377 }; -- Path to the Hellfire Ramparts and Shattered Halls
		{ "4'", 10008, 321, 134 }; -- Path to the Hellfire Ramparts and Shattered Halls
	};
	IcecrownEnt = {
		{ "A", 10001, 6, 180 }; -- Entrance
		{ "A", 10001, 407, 26 }; -- Entrance
		{ "B", 10002, 262, 243 }; -- The Forge of Souls
		{ "C", 10003, 241, 376 }; -- Pit of Saron
		{ "D", 10004, 328, 322 }; -- Halls of Reflection
		{ "E", 10005, 407, 219 }; -- Icecrown Citadel
		{ "1'", 10006, 216, 306 }; -- Meeting Stone
	};
	KarazhanEnt = {
		{ "A", 10001, 274, 289 }; -- Karazhan, Front
		{ "B", 10002, 322, 192 }; -- Karazhan, Back
		{ "1'", 10003, 285, 304 }; -- Archmage Leryda
		{ "2'", 10004, 295, 355 }; -- Stairs to Underground Pond
		{ "3'", 10005, 320, 365 }; -- Stairs to Underground Well
		{ "4'", 10006, 221, 364 }; -- Charred Bone Fragment
		{ "5'", 10007, 269, 315 }; -- Meeting Stone
		{ "6'", 10008, 89, 288 }; -- Graveyard
	};
	MaraudonEnt = {
		{ "A", 10001, 121, 291 }; -- Entrance
		{ "B", 10002, 218, 63 }; -- Maraudon, Purple
		{ "C", 10003, 424, 387 }; -- Maraudon, Orange
		{ "D", 10004, 130, 238 }; -- Maraudon, Portal, Lower
		{ "1'", 10005, 52, 298 }; -- Kherrah, Lower
	};
	ScarletMonasteryEnt = {
		{ "A", 10001, 88, 359 }; -- Entrance
		{ "B", 10002, 281, 176 }; -- Scarlet Monastery
		{ "C", 10003, 345, 285 }; -- Scarlet Halls
	};
	TempestKeepEnt = {
		{ "A", 10001, 228, 354 }; -- The Mechanar
		{ "B", 10002, 261, 127 }; -- The Botanica
		{ "C", 10003, 327, 165 }; -- The Arcatraz
		{ "D", 10004, 252, 258 }; -- Tempest Keep
	};
	TheDeadminesEnt = {
		{ "A", 10001, 329, 20 }; -- Entrance
		{ "B", 10002, 74, 249 }; -- The Deadmines
		{ "1", 10003, 434, 204 }; -- Marisa du'Paige
		{ "1", 10003, 314, 324 }; -- Marisa du'Paige
		{ "2", 10004, 356, 363 }; -- Brainwashed Noble
		{ "3", 10005, 314, 449 }; -- Foreman Thistlenettle
	};
	TheSunkenTempleEnt = {
		{ "A", 10001, 82, 447 }; -- Entrance
		{ "B", 10002, 299, 166 }; -- Sunken Temple
		{ "1", 10003, 248, 282 }; -- Priestess Udum'bra
		{ "2", 10004, 349, 176 }; -- Gomora the Bloodletter
		{ "3", 10005, 299, 62 }; -- Jammal'an the Prophet
		{ "1", 10006, 243, 179 }; -- Captain Wyrmak
	};
	UldamanEnt = {
		{ "A", 10001, 489, 167 }; -- Entrance
		{ "B", 10002, 158, 117 }; -- Uldaman
	};
	UlduarEnt = {
		{ "A", 10001, 172, 373 }; -- Ulduar: Halls of Stone
		{ "B", 10002, 359, 244 }; -- Ulduar: Halls of Lightning
		{ "C", 10003, 225, 157 }; -- Ulduar
		{ "1'", 10004, 307, 353 }; -- Meeting Stone
		{ "2'", 10005, 251, 316 }; -- Graveyard
		{ "3'", 10006, 347, 395 }; -- Shavalius the Fancy <Flight Master>
	};
	WailingCavernsEnt = {
		{ "A", 10001, 47, 394 }; -- Entrance
		{ "B", 10002, 258, 325 }; -- Wailing Caverns
		{ "1", 10003, 327, 190 }; -- Trigore the Lasher
	};

--************************************************
-- Kalimdor Instances (Classic)
--************************************************

	BlackfathomDeeps = {
		{ 1, 368, 185, 183 }; -- Ghamoo-ra
		{ 2, 436, 71, 111 }; -- Domina
		{ 3, 426, 300, 171 }; -- Subjugator Kor'ul
		{ 4, 1145, 306, 366 }; -- Thruk
		{ 5, 447, 412, 360 }; -- Guardian of the Deep
		{ 6, 1144, 350, 375 }; -- Executioner Gore
		{ 7, 437, 240, 449 }; -- Twilight Lord Bathiel
		{ 8, 444, 453, 465 }; -- Aku'mai
	};
	DireMaulEast = {
		{ 1, 404, 212, 109 }; -- Lethtendris
		{ 2, 403, 352, 401 }; -- Hydrospawn
		{ 3, 402, 384, 415 }; -- Zevrim Thornhoof
		{ 4, 405, 376, 213 }; -- Alzzin the Wildshaper
	};
	DireMaulNorth = {
		{ 1, 411, 406, 365 }; -- Guard Mol'dar
		{ 2, 412, 348, 318 }; -- Stomper Kreeg
		{ 3, 413, 240, 383 }; -- Guard Fengus
		{ 4, 414, 50, 253 }; -- Guard Slip'kik
		{ 5, 415, 88, 225 }; -- Captain Kromcrush
		{ 6, 417, 88, 91 }; -- King Gordok
	};
	DireMaulWest = {
		{ 1, 406, 287, 347 }; -- Tendris Warpwood
		{ 2, 408, 386, 127 }; -- Magister Kalendris
		{ 3, 407, 245, 410 }; -- Illyanna Ravenoak
		{ 4, 409, 102, 218 }; -- Immol'thar
		{ 5, 410, 231, 111 }; -- Prince Tortheldrin
	};
	Maraudon = {
		{ 1, 423, 264, 13 }; -- Noxxion
		{ 2, 424, 193, 73 }; -- Razorlash
		{ 3, 427, 271, 159 }; -- Lord Vyletongue
		{ 4, 425, 316, 124 }; -- Tinkerer Gizlock
		{ 5, 428, 160, 164 }; -- Celebras the Cursed
		{ 6, 429, 262, 306 }; -- Landslide
		{ 7, 430, 266, 440 }; -- Rotgrip
		{ 8, 431, 169, 430 }; -- Princess Theradras
	};
	RagefireChasm = {
		{ 1, 694, 429, 342 }; -- Adarogg
		{ 2, 695, 277, 151 }; -- Dark Shaman Koranthal
		{ 3, 696, 182, 299 }; -- Slagmaw
		{ 4, 697, 153, 444 }; -- Lava Guard Gordoth
	};
	RazorfenDowns = {
		{ 1, 1142, 260, 184 }; -- Aarux
		{ 2, 433, 430, 241 }; -- Mordresh Fire Eye
		{ 3, 1143, 93, 328 }; -- Mushlump
		{ 4, 1146, 165, 290 }; -- Death Speaker Blackthorn
		{ 5, 1141, 165, 306 }; -- Amnennar the Coldbringer
	};
	RazorfenKraul = {
		{ 1, 896, 432, 260 }; -- Hunter Bonetusk
		{ 2, 895, 471, 213 }; -- Roogug
		{ 3, 899, 301, 165 }; -- Warlord Ramtusk
		{ 4, 900, 28, 249 }; -- Groyat, the Blind Hunter
		{ 5, 901, 109, 165 }; -- Charlga Razorflank
	};
	TheRuinsofAhnQiraj = {
		-- N/A
	};
	TheTempleofAhnQiraj = {
		-- N/A
	};
	WailingCaverns = {
		{ 1, 474, 196, 229 }; -- Lady Anacondra
		{ 2, 476, 121, 225 }; -- Lord Pythas
		{ 3, 475, 99, 306 }; -- Lord Cobrahn
		{ 4, 478, 395, 335 }; -- Skum
		{ 5, 479, 424, 255 }; -- Lord Serpentis
		{ 6, 480, 370, 231 }; -- Verdan the Everliving
		{ 7, 481, 212, 116 }; -- Mutanus the Devourer
	};
	ZulFarrak = {
		{ 1, 483, 178, 218 }; -- Gahz'rilla
		{ 3, 487, 166, 112 }; -- Nekrum Gutchewer and Shadow Priest Sezz'ziz
		{ 4, 489, 260, 190 }; -- Chief Ukorz Sandscalp
		{ 5, 486, 259, 101 }; -- Witch Doctor Zum'rah
		{ 6, 484, 399, 147 }; -- Antu'sul
		{ 2, 482, 160, 197 }; -- Hydromancer Velratha
		{ 3, 485, 324, 150 }; -- Theka the Martyr
	};

--************************************************
-- Eastern Kingdoms Instances (Classic)
--************************************************

	BlackrockDepths = {
		{ 1, 369, 360, 407 }; -- High Interrogator Gerstahn
		{ 2, 370, 411, 263 }; -- Lord Roccor
		{ 3, 371, 381, 279 }; -- Houndmaster Grebmar
		{ 4, 377, 216, 234 }; -- Bael'Gar
		{ 5, 374, 419, 142 }; -- Lord Incendius
		{ 6, 376, 462, 97 }; -- Fineous Darkvire
		{ 7, 375, 202, 327 }; -- Warder Stilgiss
		{ 8, 373, 152, 464 }; -- Pyromancer Loregrain
		{ 9, 372, 123, 433 }; -- Ring of Law
		{ 10, 378, 20, 399 }; -- General Angerforge
		{ 11, 379, 21, 309 }; -- Golem Lord Argelmach
		{ 12, 380, 105, 283 }; -- Hurley Blackbreath
		{ 13, 382, 111, 301 }; -- Ribbly Screwspigot
		{ 14, 381, 131, 300 }; -- Phalanx
		{ 15, 384, 151, 230 }; -- Ambassador Flamelash
		{ 16, 385, 160, 107 }; -- The Seven
		{ 17, 386, 340, 50 }; -- Magmus
		{ 18, 387, 429, 49 }; -- Emperor Dagran Thaurissan
	};
	BlackwingLair = {
		-- N/A
	};
	Gnomeregan = {
		{ 1, 419, 196, 175 }; -- Grubbis
		{ 2, 420, 454, 53 }; -- Viscous Fallout
		{ 3, 421, 260, 109 }; -- Electrocutioner 6000
		{ 4, 418, 110, 483 }; -- Crowd Pummeler 9-60
		{ 5, 422, 291, 229 }; -- Mekgineer Thermaplugg
	};
	LowerBlackrockSpire = {
		{ 1, 388, 111, 143 }; -- Highlord Omokk
		{ 2, 389, 297, 321 }; -- Shadow Hunter Vosh'gajin
		{ 3, 390, 368, 354 }; -- War Master Voone
		{ 4, 391, 444, 472 }; -- Mother Smolderweb
		{ 5, 392, 251, 366 }; -- Urok Doomhowl
		{ 6, 393, 196, 392 }; -- Quartermaster Zigris
		{ 7, 394, 43, 387 }; -- Halycon
		{ 8, 396, 202, 223 }; -- Overlord Wyrmthalak
	};
	MoltenCore = {
		-- N/A
	};
	ShadowfangKeep = {
		{ 1, 96, 363, 408 }; -- Baron Ashbury
		{ 2, 97, 54, 339 }; -- Baron Silverlaine
		{ 3, 98, 171, 353 }; -- Commander Springvale
		{ 4, 99, 290, 173 }; -- Lord Walden
		{ 5, 100, 207, 51 }; -- Lord Godfrey
	};
	StratholmeCrusader = {
		{ 1, 450, 387, 151 }; -- The Unforgiven
		{ 2, 445, 180, 173 }; -- Timmy the Cruel
		{ 3, 749, 151, 228 }; -- Commander Malor
		{ 4, 446, 11, 268 }; -- Willey Hopebreaker
		{ 5, 448, 137, 352 }; -- Instructor Galford
		{ 6, 449, 99, 378 }; -- Balnazzar
	};
	StratholmeGauntlet = {
		{ 1, 451, 400, 248 }; -- Baroness Anastari
		{ 2, 452, 241, 247 }; -- Nerub'enkan
		{ 3, 453, 340, 96 }; -- Maleki the Pallid
		{ 4, 454, 316, 414 }; -- Magistrate Barthilas
		{ 5, 455, 144, 96 }; -- Ramstein the Gorger
		{ 6, 456, 91, 96 }; -- Lord Aurius Rivendare
	};
	TheDeadmines = {
		{ 1, 89, 113, 287 }; -- Glubtok
		{ 2, 90, 178, 399 }; -- Helix Gearbreaker
		{ 3, 91, 228, 300 }; -- Foe Reaper 5000 
		{ 4, 92, 397, 178 }; -- Admiral Ripsnarl
		{ "4'", 93, 400, 190 }; -- "Captain"Cookie
		{ "4''", 95, 416, 178 }; -- Vanessa VanCleef
	};
	TheStockade = {
		{ 1, 466, 257, 182 }; -- Randolph Moloch
		{ 2, 464, 58, 198 }; -- Hogger
		{ 3, 465, 443, 298 }; -- Lord Overheat
	};
	TheSunkenTemple = {
		{ 1, 457, 52, 220 }; -- Avatar of Hakkar
		{ 2, 458, 448, 176 }; -- Jammal'an the Prophet
		{ 4, 459, 254, 430 }; -- Wardens of the Dream
		{ 5, 463, 408, 429 }; -- Shade of Eranikus
	};
	Uldaman = {
		{ 1, 468, 370, 485 }; -- The Lost Dwarves
		{ 2, 467, 323, 368 }; -- Revelosh
		{ 3, 469, 193, 376 }; -- Ironaya
		{ 4, 748, 126, 309 }; -- Obsidian Sentinel
		{ 5, 470, 277, 208 }; -- Ancient Stone Keeper
		{ 6, 471, 104, 169 }; -- Galgann Firehammer
		{ 7, 472, 68, 112 }; -- Grimlok
		{ 8, 473, 343, 65 }; -- Archaedas
	};

--************************************************
-- Burning Crusade Instances
--************************************************

	AuchAuchenaiCrypts = {
		{ 1, 523, 220, 362 }; -- Shirrak the Dead Watcher
		{ 2, 524, 448, 227 }; -- Exarch Maladaar
	};
	AuchManaTombs = {
		{ 1, 534, 253, 142 }; -- Pandemonius
		{ 2, 535, 357, 394 }; -- Tavarok
		{ 3, 537, 127, 266 }; -- Nexus-Prince Shaffar
	};
	AuchSethekkHalls = {
		{ 1, 541, 230, 317 }; -- Darkweaver Syth
		{ 2, 542, 91, 253 }; -- Anzu
		{ 3, 543, 95, 88 }; -- Talon King Ikiss
	};
	AuchShadowLabyrinth = {
		{ 1, 544, 60, 217 }; -- Ambassador Hellmaw
		{ 2, 545, 95, 363 }; -- Blackheart the Inciter
		{ 3, 546, 272, 293 }; -- Grandmaster Vorpil
		{ 4, 547, 456, 216 }; -- Murmur
	};
	BlackTempleStart = {
		-- N/A
	};
	BlackTempleBasement = {
		-- N/A
	};
	BlackTempleTop = {
		-- N/A
	};
	CFRSerpentshrineCavern = {
		-- N/A
	};
	CFRTheSlavePens = {
		{ 1, 570, 243, 167 }; -- Mennu the Betrayer
		{ 2, 571, 288, 220 }; -- Rokmar the Crackler
		{ 3, 572, 401, 369 }; -- Quagmirran
	};
	CFRTheSteamvault = {
		{ 1, 573, 270, 80 }; -- Hydromancer Thespia
		{ 2, 574, 123, 401 }; -- Mekgineer Steamrigger
		{ 3, 575, 470, 217 }; -- Warlord Kalithresh
	};
	CFRTheUnderbog = {
		{ 1, 576, 360, 423 }; -- Hungarfen
		{ 2, 577, 414, 169 }; -- Ghaz'an
		{ 3, 578, 195, 148 }; -- Swamplord Musel'ek
		{ 4, 579, 101, 230 }; -- The Black Stalker
	};
	CoTBlackMorass = {
		-- N/A
	};
	CoTHyjal = {
		-- N/A
	};
	CoTOldHillsbrad = {
		{ 1, 538, 402, 286 }; -- Lieutenant Drake
		{ 2, 539, 355, 298 }; -- Captain Skarloc
		{ 3, 540, 220, 123 }; -- Epoch Hunter
	};
	GruulsLair = {
		-- N/A
	};
	HCBloodFurnace = {
		{ 1, 555, 138, 191 }; -- The Maker
		{ 2, 556, 198, 80 }; -- Broggok
		{ 3, 557, 323, 191 }; -- Keli'dan the Breaker
	};
	HCHellfireRamparts = {
		{ 1, 527, 392, 143 }; -- Watchkeeper Gargolmar
		{ 2, 528, 106, 80 }; -- Omor the Unscarred
		{ 3, 529, 77, 418 }; -- Vazruden the Herald
	};
	HCMagtheridonsLair = {
		-- N/A
	};
	HCTheShatteredHalls = {
		{ 1, 566, 114, 328 }; -- Grand Warlock Nethekurse
		{ 2, 728, 69, 47 }; -- Blood Guard Porung
		{ 3, 568, 283, 166 }; -- Warbringer O'mrogg
		{ 4, 569, 401, 287 }; -- Warchief Kargath Bladefist
	};
	KarazhanStart = {
		-- N/A
	};
	KarazhanEnd = {
		-- N/A
	};
	MagistersTerrace = {
		{ 1, 530, 210, 123 }; -- Selin Fireheart
		{ 2, 531, 424, 153 }; -- Vexallus
		{ 3, 532, 190, 257 }; -- Priestess Delrissa
		{ 4, 533, 34, 236 }; -- Kael'thas Sunstrider
	};
	SunwellPlateau = {
		-- N/A
	};
	TempestKeepArcatraz = {
		{ 1, 548, 331, 234 }; -- Zereketh the Unbound
		{ 2, 549, 142, 353 }; -- Dalliah the Doomsayer
		{ 3, 550, 65, 353 }; -- Wrath-Scryer Soccothrates
		{ 4, 551, 364, 81 }; -- Harbinger Skyriss
	};
	TempestKeepBotanica = {
		{ 1, 558, 221, 144 }; -- Commander Sarannis
		{ 2, 559, 114, 144 }; -- High Botanist Freywinn
		{ 3, 560, 31, 235 }; -- Thorngrin the Tender
		{ 4, 561, 167, 352 }; -- Laj
		{ 5, 562, 168, 197 }; -- Warp Splinter
	};
	TempestKeepMechanar = {
		{ 3, 563, 295, 175 }; -- Mechano-Lord Capacitus
		{ 4, 564, 234, 25 }; -- Nethermancer Sepethrea
		{ 5, 565, 82, 232 }; -- Pathaleon the Calculator	
	};
	TempestKeepTheEye = {
		-- N/A
	};

--************************************************
-- Wrath of the Lich King Instances
--************************************************

	AhnKahet = {
		{ 1, 580, 340, 192 }; -- Elder Nadox
		{ 2, 581, 312, 258 }; -- Prince Taldaram
		{ 3, 583, 320, 333 }; -- Amanitar
		{ 4, 582, 244, 335 }; -- Jedoga Shadowseeker
		{ 5, 584, 125, 263 }; -- Herald Volazj
	};
	AzjolNerub = {
		{ 1, 585, 180, 120 }; -- Krik'thir the Gatewatcher
		{ 2, 586, 301, 118 }; -- Hadronox
		{ 3, 587, 308, 352 }; -- Anub'arak
	};
	CoTOldStratholme = {
		{ 3, 613, 312, 80 }; -- Chrono-Lord Epoch
		{ 5, 614, 117, 161 }; -- Mal'Ganis
	};
	DrakTharonKeep = {
		{ 1, 588, 170, 50 }; -- Trollgore
		{ 2, 589, 236, 155 }; -- Novos the Summoner
		{ 3, 590, 415, 441 }; -- King Dred
		{ 4, 591, 418, 174 }; -- The Prophet Tharon'ja
	};
	FHHallsOfReflection = {
		{ 1, 601, 213, 375 }; -- Falric
		{ 2, 602, 273, 317 }; -- Marwyn
		{ 3, 603, 47, 153 }; -- Escape from Arthas
	};
	FHPitOfSaron = {
		{ 1, 608, 387, 289 }; -- Forgemaster Garfrost
		{ 2, 609, 241, 205 }; -- Ick & Krick
		{ 3, 610, 223, 148 }; -- Scourgelord Tyrannus
	};
	FHTheForgeOfSouls = {
		{ 1, 615, 150, 250 }; -- Bronjahm
		{ 2, 616, 148, 34 }; -- Devourer of Souls
	};
	Gundrak = {
		{ 1, 592, 345, 244 }; -- Slad'ran
		{ 2, 593, 266, 340 }; -- Drakkari Colossus
		{ 3, 594, 198, 245 }; -- Moorabi
		{ 4, 595, 83, 367 }; -- Eck the Ferocious
		{ 5, 596, 267, 90}; -- Gal'darah
	};
	IcecrownCitadelA = {
		-- N/A
	};
	IcecrownCitadelB = {
		-- N/A
	};
	IcecrownCitadelC = {
		-- N/A
	};
	Naxxramas = {
		-- N/A
	};
	ObsidianSanctum = {
		-- N/A
	};
	OnyxiasLair = {
		-- N/A
	};
	RubySanctum = {
		-- N/A	
	};
	TheEyeOfEternity = {
		-- N/A
	};
	TheNexus = {
		{ 1, 617, 30, 268 }; -- Frozen Commander
		{ 2, 618, 110, 192 }; -- Grand Magus Telestra
		{ 3, 619, 430, 79 }; -- Anomalus
		{ 4, 620, 369, 407 }; -- Ormorok the Tree-Shaper
		{ 5, 621, 189, 363 }; -- Keristrasza
	};
	TheOculus = {
		{ 1, 622, 259, 434 }; -- Drakos the Interrogator
		{ 2, 623, 229, 83 }; -- Varos Cloudstrider
		{ 3, 624, 258, 416 }; -- Mage-Lord Urom
		{ 3, 624, 368, 201 }; -- Mage-Lord Urom
		{ 3, 624, 121, 215 }; -- Mage-Lord Urom
		{ 3, 624, 250, 262 }; -- Mage-Lord Urom
		{ 4, 625, 250, 287 }; -- Ley-Guardian Eregos
	};
	TrialOfTheChampion = {
		-- N/A
	};
	TrialOfTheCrusader = {
		-- N/A
	};
	UlduarA = {
		-- N/A
	};
	UlduarB = {
		-- N/A
	};
	UlduarC = {
		-- N/A
	};
	UlduarD = {
		-- N/A
	};
	UlduarE = {
		-- N/A
	};
	UlduarHallsofLightning = {
		{ 1, 597, 247, 142 }; -- General Bjarngrim
		{ 2, 598, 320, 145 }; -- Volkhan
		{ 3, 599, 435, 352 }; -- Ionar
		{ 4, 600, 199, 250 }; -- Loken
	};
	UlduarHallsofStone = {
		{ 1, 604, 138, 313 }; -- Krystallus
		{ 2, 605, 209, 434 }; -- Maiden of Grief
		{ 3, 606, 463, 387 }; -- Tribunal of Ages
		{ 4, 607, 211, 83 }; -- Sjonnir The Ironshaper
	};
	UtgardeKeep = {
		{ 1, 638, 157, 131 }; -- Prince Keleseth
		{ 2, 639, 217, 419 }; -- Skarvold & Dalronn
		{ 3, 640, 444, 383 }; -- Ingvar the Plunderer
	};
	UtgardePinnacle = {
		{ 1, 641, 215, 390 }; -- Svala Sorrowgrave
		{ 2, 642, 347, 364 }; -- Gortok Palehoof
		{ 3, 643, 426, 215 }; -- Skadi the Ruthless
		{ 4, 644, 144, 263 }; -- King Ymiron
	};
	VaultOfArchavon = {
		-- N/A
	};
	VioletHold = {
		{ 1, 626, 74, 266 }; -- Erekem
		{ 2, 631, 106, 132 }; -- Zuramat the Obliterator
		{ 3, 628, 345, 117 }; -- Ichoron
		{ 4, 627, 383, 216 }; -- Moragg
		{ 5, 630, 338, 323 }; -- Lavanthor
		{ 6, 632, 229, 227 }; -- Cyanigosa
	};

--************************************************
-- Cataclysm Instances
--************************************************

	BaradinHold = {
		{ 1, 139, 425, 320 }; -- Argaloth
		{ 2, 140, 72, 319 }; -- Occu'thar
		{ 3, 339, 249, 139 }; -- Alizabal, Mistress of Hate
	};
	BlackrockCaverns = {
		{ 1, 105, 166, 311 }; -- Rom'ogg Bonecrusher
		{ 2, 106, 143, 102 }; -- Corla, Herald of Twilight
		{ 3, 107, 281, 301 }; -- Karsh Steelbender
		{ 4, 108, 363, 381 }; -- Beauty
		{ 5, 109, 377, 236 }; -- Ascendant Lord Obsidius
	};
	BlackwingDescent = {
		{ 1, 170, 132, 370 }; -- Magmaw
		{ 2, 169, 311, 372 }; -- Omnotron Defense System
		{ 3, 172, 77, 246 }; -- Chimaeron
		{ 4, 173, 364, 247 }; -- Maloriak
		{ 5, 171, 224, 109 }; -- Atramedes
		{ 6, 174, 223, 246 }; -- Nefarian's End
	};
	CoTDragonSoulA = {
		{ 1, 311, 250, 301 }; -- Morchok
		{ 5, 331, 248, 252 }; -- Ultraxion
	};
	CoTDragonSoulB = {
		{ 2, 324, 135, 132 }; -- Warlord Zon'ozz
		{ 3, 325, 302, 370 }; -- Yor'sahj the Unsleeping
		{ 4, 317, 393, 130 }; -- Hagara the Stormbinder
	};
	CoTDragonSoulC = {
		{ 6, 332, 101, 86 }; -- Warmaster Blackhorn
		{ 7, 318, 69, 345 }; -- Spine of Deathwing
		{ 8, 333, 333, 318 }; -- Madness of Deathwing	
	};
	CoTEndTime = {
		{ 1, 340, 94, 143 }; -- Echo of Baine
		{ 2, 285, 294, 409 }; -- Echo of Jaina
		{ 3, 323, 218, 259 }; -- Echo of Sylvanas
		{ 4, 283, 380, 467 }; -- Echo of Tyrande
		{ 5, 289, 475, 183 }; -- Murozond
	};
	CoTHourOfTwilight = {
		{ 1, 322, 340, 101 }; -- Arcurion
		{ 2, 342, 187, 231 }; -- Asira Dawnslayer
		{ 3, 341, 270, 435 }; -- Archbishop Benedictus
	};
	CoTWellOfEternity = {
		{ 1, 290, 138, 311 }; -- Peroth'arn
		{ 2, 291, 241, 278 }; -- Queen Azshara
		{ 3, 292, 424, 314 }; -- Mannoroth and Varo'then
	};
	Firelands = {
		{ 1, 192, 140, 320 }; -- Beth'tilac
		{ 2, 193, 336, 438 }; -- Lord Rhyolith
		{ 3, 194, 339, 330 }; -- Alysrazor
		{ 4, 195, 263, 353 }; -- Shannox
		{ 5, 196, 264, 308 }; -- Baleroc, the Gatekeeper
		{ 6, 197, 265, 190 }; -- Majordomo Staghelm
		{ 7, 198, 264, 56 }; -- Ragnaros
	};
	GrimBatol = {
		{ 1, 131, 176, 320 }; -- General Umbriss
		{ 2, 132, 238, 181 }; -- Forgemaster Throngus
		{ 3, 133, 336, 135 }; -- Drahga Shadowburner
		{ 4, 134, 429, 343 }; -- Erudax, the Duke of Below
	};
	HallsOfOrigination = {
		{ 1, 124, 85, 290 }; -- Temple Guardian Anhuur
		{ 2, 125, 348, 230 }; -- Earthrager Ptah
		{ 3, 126, 72, 93 }; -- Anraphet
		{ 4, 127, 170, 382 }; -- Isiset, Construct of Magic
		{ 5, 128, 245, 454 }; -- Ammunae, Construct of Life
		{ 6, 129, 319, 382 }; -- Setesh, Construct of Destruction
		{ 7, 130, 242, 306 }; -- Rajh, Construct of Sun
	};
	LostCityOfTolvir = {
		{ 1, 117, 234, 219 }; -- General Husam
		{ 2, 118, 379, 313 }; -- Lockmaw
		{ 3, 119, 183, 286 }; -- High Prophet Barim
		{ 4, 122, 248, 253 }; -- Siamat
	};
	TheBastionOfTwilight = {
		{ 1, 156, 154, 103 }; -- Halfus Wyrmbreaker
		{ 2, 157, 155, 280 }; -- Theralion and Valiona
		{ 3, 158, 112, 395 }; -- Ascendant Council
		{ 4, 167, 222, 458 }; -- Cho'gall
		{ 5, 168, 393, 302 }; -- Sinestra
	};
	TheStonecore = {
		{ 1, 110, 336, 289 }; -- Corborus
		{ 2, 111, 128, 219 }; -- Slabhide
		{ 3, 112, 221, 108 }; -- Ozruk
		{ 4, 113, 282, 197 }; -- High Priestess Azil
	};
	TheVortexPinnacle = {
		{ 1, 114, 341, 216 }; -- Grand Vizier Ertan
		{ 2, 115, 312, 455 }; -- Altairus
		{ 3, 116, 100, 171 }; -- Asaad, Caliph of Zephyrs
	};
	ThroneOfTheFourWinds = {
		{ 1, 154, 134, 250 }; -- The Conclave of Wind
		{ 1, 154, 249, 137 }; -- The Conclave of Wind
		{ 1, 154, 364, 251 }; -- The Conclave of Wind
		{ 2, 155, 248, 250 }; -- Al'Akir
	};
	ThroneOfTheTides = {
		{ 1, 101, 249, 45 }; -- Lady Naz'jar
		{ 2, 102, 248, 119 }; -- Commander Ulthok, the Festering Prince
		{ 3, 103, 339, 253 }; -- Mindbender Ghur'sha
		{ 4, 104, 158, 254 }; -- Ozumat
	};
	ZulAman = {
		{ 1, 186, 117, 145 }; -- Akil'zon
		{ 2, 187, 147, 364 }; -- Nalorakk
		{ 3, 188, 240, 343 }; -- Jan'alai
		{ 4, 189, 254, 143 }; -- Halazzi
		{ 5, 190, 328, 268 }; -- Hex Lord Malacrass
		{ 6, 191, 452, 268 }; -- Daakara
	};	
	ZulGurub = {
		{ 5, 175, 323, 293 }; -- High Priest Venoxis
		{ 9, 176, 414, 445 }; -- Bloodlord Mandokir
		{ 15, 181, 288, 72 }; -- High Priestess Kilnara
		{ 16, 184, 141, 103 }; -- Zanzil
		{ 17, 185, 306, 194 }; -- Jin'do the Godbreaker
	};

--************************************************
-- Mists of Pandaria Instances
--************************************************

	GateoftheSettingSun = {
		{ 1, 655, 235, 400 }; -- Saboteur Kip'tilak
		{ 2, 675, 235, 169 }; -- Striker Ga'dok
		{ 3, 676, 235, 138 }; -- Commander Ri'mok
		{ 4, 649, 229, 284 }; -- Raigonn
		{ "A", 10001, 322, 401 };
		{ "B", 10002, 304, 291 };
	};
	HeartofFear = {
		{ 1, 745, 318, 250 }; -- Imperial Vizier Zor'lok
		{ 2, 744, 269, 74 }; -- Blade Lord Ta'yak
		{ 3, 713, 428, 46 }; -- Garalon
		{ 4, 741, 427, 124 }; -- Wind Lord Mel'jarak
		{ 5, 737, 225, 377 }; -- Amber-Shaper Un'sok
		{ 6, 743, 64, 377 }; -- Grand Empress Shek'zeer
		{ "A", 10001, 156, 289 };
		{ "B", 10002, 146, 64 };
		{ "B", 10002, 428, 82 };
	};
	MoguShanPalace = {
		{ 1, 708, 203, 454 }; -- Trial of the King
		{ 2, 690, 83, 247 }; -- Gekkan
		{ 3, 698, 379, 309 }; -- Xin the Weaponmaster
		{ "A", 10001, 2, 61 };
		{ "B", 10002, 130, 268 };
		{ "B", 10002, 258, 340 };
		{ "C", 10002, 305, 459 };
		{ "C", 10002, 425, 59 };
		{ "1'", 10003, 29, 52 };
	};
	MoguShanVaults = {
		{ 1, 679, 364, 315 }; -- The Stone Guard
		{ 2, 689, 316, 240 }; -- Feng the Accursed
		{ 3, 682, 318, 116 }; -- Gara'jal the Spiritbinder
		{ 4, 687, 181, 142 }; -- The Spirit Kings
		{ 5, 726, 46, 303 }; -- Elegon
		{ 6, 677, 236, 382 }; -- Will of the Emperor
		{ "A", 10001, 469, 344 };
		{ "B", 10002, 211, 165 };
		{ "B", 10002, 224, 197 };
	};
	-- Outdoor Raids
	Pandaria = {
		{ 1, 814, 58, 81 }; -- Nalak, The Storm Lord
		{ 2, 826, 219, 70 }; -- Oondasta
		{ 3, 691, 240, 211 }; -- Sha of Anger
		{ 4, 725, 270, 324 }; -- Salyis's Warband
		{ 5, 861, 463, 310 }; -- Ordos, Fire-God of the Yaungol
		{ 6, 857, 450, 321 }; -- Chi-Ji, The Red Crane
		{ 6, 859, 464, 321 }; -- Niuzao, The Black Ox
		{ 6, 860, 450, 337 }; -- Xuen, The White Tiger
		{ 6, 858, 464, 337 }; -- Yu'lon, The Jade Serpent
	};
	ScarletHalls = {
		{ 1, 10002, 230, 384 }; -- Commander Lindon
		{ 2, 660, 260, 308 }; -- Houndmaster Braun
		{ 3, 654, 326, 113 }; -- Armsmaster Harlan
		{ 4, 656, 223, 21 }; -- Flameweaver Koegler
		{ "A", 10001, 148, 496 };
		{ "1'", 10003, 153, 477 };
		{ "2'", 10004, 236, 453 }; 
		{ "3'", 10005, 264, 287 };
	};
	ScarletMonastery = {
		{ 1, 688, 131, 61 }; -- Thalnos the Soulrender
		{ 2, 671, 231, 332 }; -- Brother Korloff
		{ 3, 674, 226, 439 }; -- High Inquisitor Whitemane
		{ "A", 10001, 377, 62 };
		{ "1'", 10002, 299, 62 };
		{ "1", 10003, 222, 87 };
	};
	Scholomance = {
		{ 1, 659, 140, 133 }; -- Instructor Chillheart
		{ 2, 663, 394, 57 }; -- Jandice Barov
		{ 3, 665, 329, 90 }; -- Rattlegore
		{ 4, 666, 356, 165 }; -- Lilian Voss
		{ 5, 10003, 360, 291 }; --Professor Slate
		{ 6, 684, 286, 391 }; -- Darkmaster Gandling
		{ "A", 10001, 1, 165 }; 
		{ "B", 10002, 196, 61 };
		{ "B", 10002, 495, 90 };
		{ "C", 10002, 131, 213 };
		{ "C", 10002, 388, 344 };
		{ "D", 10002, 131, 243 };
		{ "D", 10002, 282, 372 };
		{ "1'", 10004, 31, 130 };
		{ "2'", 10005, 106, 125 };
		{ "3'", 10006, 458, 96 };
		{ "4'", 10007, 312, 153 };
		{ "5'", 10008, 338, 203 };
		{ "6'", 10009, 339, 226 };
		
	};
	ShadoPanMonasteryA = {
		{ 1, 673, 329, 310 }; -- Gu Cloudstrike
		{ 4, 686, 366, 236 }; -- Taran Zhu
		{ "B", 10001, 369, 311 };
		{ "C", 10001, 296, 345 };
		{ "D", 10001, 282, 369 };
		{ "E", 10001, 178, 351 };
		{ "F", 10001, 115, 310 };
		{ "G", 10001, 154, 195 };
		{ "H", 10001, 217, 210 };
	};
	ShadoPanMonasteryB = {
		{ 2, 657, 55, 307 }; -- Master Snowdrift
		{ 3, 685, 373, 373 }; -- Sha of Violence
		{ "A", 10001, 211, 174 };
		{ "B", 10002, 35, 164 };
		{ "C", 10002, 402, 45 };
		{ "D", 10002, 313, 194 };
		{ "E", 10002, 198, 454 };
		{ "F", 10002, 36, 282 };
		{ "G", 10002, 265, 479 };
		{ "H", 10002, 413, 419 };
		{ "1'", 10003, 184, 160 };
	};
	SiegeofNiuzaoTempleA = {
		{ 1, 693, 143, 158 }; -- Vizier Jin'bak
		{ "A", 10001, 207, 323 };
		{ "B", 10002, 145, 250 };
		{ "B", 10002, 374, 443 };
		{ "C", 10002, 258, 346 };
		{ "1'", 10003, 184, 251 };
	};
	SiegeofNiuzaoTempleB = {
		{ 2, 738, 205, 325 }; -- Commander Vo'jak
		{ 3, 692, 304, 236 }; -- General Pa'valak
		{ 4, 727, 301, 141 }; -- Wing Leader Ner'onok
		{ "C", 10001, 256, 313 };
	};
	SiegeofOrgrimmarA = {
		{ 1, 852, 208, 101 }; -- Immerseus
		{ 3, 866, 272, 349 }; -- Norushen
		{ 4, 867, 129, 380 }; -- Sha of Pride
		{ "A", 10001, 460, 100 };
		{ "B", 10002, 56, 184 };
		{ "C", 10002, 314, 183 };
		{ "D", 10002, 73, 345 };
		{ "D", 10002, 94, 439 };
	};
	SiegeofOrgrimmarB = {
		{ 2, 849, 168, 195 }; -- The Fallen Protectors
		{ "B", 10001, 173, 181 };
		{ "C", 10001, 231, 323 };
	};
	SiegeofOrgrimmarC = {
		{ 5, 868, 430, 266 }; -- Galakras
		{ 6, 864, 185, 308 }; -- Iron Juggernaut
		{ 7, 856, 169, 158 }; -- Kor'kron Dark Shaman
		{ "D", 10001, 491, 264 };
		{ "E", 10001, 234, 49 };
	};
	SiegeofOrgrimmarD = {
		{ 8, 850, 127, 282 }; -- General Nazgrim
		{ 9, 846, 197, 180 }; -- Malkorok
		{ 10, 870, 266, 252 }; -- Spoils of Pandaria
		{ 11, 851, 286, 380 }; -- Thok the Bloodthirsty
		{ 12, 865, 389, 130 }; -- Siegecrafter Blackfuse
		{ 13, 853, 434, 235 }; -- Paragons of the Klaxxi
		{ 14, 869, 451, 410 }; -- Garrosh Hellscream
		{ "E", 10001, 57, 214 };
	};
	StormstoutBrewery = {
		{ 1, 668, 175, 340 }; -- Ook-Ook
		{ 2, 669, 314, 280 }; -- Hoptallus
		{ 3, 670, 430, 400 }; -- Yan-Zhu the Uncasked
		{ "A", 10001, 369, 72 };
		{ "B", 10002, 91, 75 };
		{ "B", 10002, 8, 341 };
		{ "C", 10002, 245, 447 };
		{ "C", 10002, 278, 405 };
		{ "D", 10002, 318, 232 };
		{ "D", 10002, 416, 85 };
		{ "E", 10002, 494, 226 };
		{ "E", 10002, 489, 334 };
		{ "1'", 10003, 348, 55 };
	};
	TempleOfTheJadeSerpent = {
		{ 1, 672, 218, 68 }; -- Wise Mari
		{ 2, 664, 65, 380 }; -- Lorewalker Stonestep
		{ 3, 658, 213, 252 }; -- Liu Flameheart
		{ 4, 335, 355, 296 }; -- Sha of Doubt
		{ "A", 10001, 76, 211 };
		{ "1'", 10002, 136, 213 };
	};
	TerraceofEndlessSpring = {
		{ 1, 683, 398, 265 }; -- Protectors of the Endless
		{ 2, 742, 360, 265 }; -- Tsulong
		{ 3, 729, 296, 265 }; -- Lei Shi
		{ 4, 709, 204, 265 }; -- Sha of Fear
		{ "A", 10001, 451, 265 };
	};
	ThroneofThunderA = {
		{ 1, 827, 111, 196 }; -- Jin'rokh the Breaker
		{ 2, 819, 266, 335 }; -- Horridon
		{ 3, 816, 372, 149 }; -- Council of Elders
		{ "A", 10001, 1, 196 };
		{ "B", 10002, 491, 149 };
		{ "1", 10003, 110, 337 };
		{ "2", 10004, 265, 152 };
	};
	ThroneofThunderB = {
		{ 4, 825, 88, 359 }; -- Tortos
		{ 5, 821, 296, 185 }; -- Megaera
		{ 6, 828, 406, 308 }; -- Ji-Kun
		{ "B", 10001, 22, 359 };
		{ "C", 10001, 361, 340 };
		{ "3", 10002, 187, 250 };
	};
	ThroneofThunderC = {
		{ 7, 818, 392, 173 }; -- Durumu the Forgotten
		{ 8, 820, 235, 414 }; -- Primordius
		{ 9, 824, 156, 304 }; -- Dark Animus
		{ "C", 10001, 460, 21 };
		{ "D", 10001, 278, 415 };
		{ "E", 10001, 189, 94 };
		{ "4", 10002, 156, 364 };
		{ "5", 10003, 253, 133 };
	};
	ThroneofThunderD = {
		{ 10, 817, 146, 160 }; -- Iron Qon
		{ 11, 829, 405, 79 }; -- Twin Consorts
		{ 12, 832, 118, 339 }; -- Lei Shen
		{ 13, 831, 370, 453 }; -- Ra-den
		{ "D", 10001, 365, 247 };
		{ "E", 10001, 121, 210 };
		{ "F", 10001, 103, 243 };
		{ "F", 10001, 462, 220 };
		{ "6", 10002, 472, 144 };
	};

--************************************************
-- Warlords of Draenor Instances
--************************************************

	Auchindoun = {
		{ 1, 1185, 70, 153 }; -- Vigilant Kaathar
		{ 2, 1186, 250, 348 }; -- Soulbinder Nyami
		{ 3, 1216, 428, 152 }; -- Azzakel
		{ 4, 1225, 250, 153 }; -- Teron'gor
		{ "A", 10001, 253, 491};
	};
	BlackrockFoundryA = {
		{ 1, 1161, 349, 158 }; -- Gruul
		{ 2, 1202, 341, 351 }; -- Oregorger
		{ 3, 1122, 241, 269 }; -- Beastlord Darmac
		{ 6, 1147, 153, 128 }; -- Operator Thogar
		{ 7, 1154, 383, 262 }; -- The Blast Furnace
		{ 10, 959, 44, 139 }; -- Blackhand
		{ "A", 10001, 87, 432 };
		{ "B", 10002, 123, 368 };
		{ "B", 10002, 464, 266 };
		{ "C", 10002, 45, 333 };
	};
	BlackrockFoundryB = {
		{ 4, 1123, 32, 370 }; -- Flamebender Ka'graz
		{ 5, 1155, 217, 369 }; -- Hans'gar and Franzok
		{ 8, 1162, 127, 231 }; -- Kromog
		{ 9, 1203, 437, 166 }; -- The Iron Maidens
		{ "C", 10001, 217, 294};
	};
	BloodmaulSlagMines = {
		{ 1, 893, 31, 307 }; -- Magmolatus
		{ 2, 888, 321, 331 }; -- Slave Watcher Crushto
		{ 3, 887, 232, 186 }; -- Roltall
		{ 4, 889, 371, 115 }; -- Gug'rokk
		{ "A", 10001, 264, 488};
	};
	-- Atlas_OutdoorRaids
	Draenor = {
		{ 1, 1291, 264, 125 }; -- Drov the Ruiner
		{ 2, 1211, 275, 210 }; -- Tarlna the Ageless
		{ 3, 1262, 267, 421 }; -- Rukhmar
		{ 4, 1452, 351, 203 }; -- Supreme Lord Kazzak
	};
	TheEverbloomA = {
		{ 1, 1214, 201, 303 }; -- Witherbark
		{ 2, 1207, 316, 118 }; -- Ancient Protectors
		{ 3, 1208, 232, 187 }; -- Archmage Sol
		{ 4, 1209, 260, 52 }; -- Xeri'tac
		{ "A", 10001, 376, 302};
		{ "B", 10002, 137, 183}; 
	};
	TheEverbloomB = {
		{ 5, 1210, 225, 356 }; -- Yalnu
		{ "B", 10001, 230, 429};
	};
	GrimrailDepot = {
		{ 1, 1138, 413, 207 }; -- Rocketspark and Borka
		{ 2, 1163, 257, 417 }; -- Nitrogg Thundertower
		{ 3, 1133, 159, 417 }; -- Skylord Tovra
		{ "A", 10001, 177, 75};
		{ "B", 10002, 417, 283};
		{ "B", 10002, 458, 419};
	};
	HellfireA = {
		{ 1, 1425, 155, 255}; -- Iron Reaver
		{ "A", 10001, 364, 227}; 
		{ "B", 10002, 113, 257};
	};
	HellfireB = {
		{ 2, 1372, 142, 184 };	-- Gorefiend
		{ 3, 1396, 239, 334 };	-- Kilrogg Deadeye
		{ 4, 1432, 319, 428 };	-- Hellfire High Council
		{ "B", 10001, 443, 190};
		{ "C", 10001, 320, 7};
	};
	HellfireC = {
		{ 5, 1392, 279, 247 }; -- Kormrok
		{ "C", 10001, 317, 346}; 
	};
	HellfireD = { 
		{ 6, 1438, 290, 265 }; -- Archimonde
		{ "D", 10001, 116, 261}; 
	};
	HellfireE = {
		{ 6, 1433, 103, 196 };	-- Shadow-Lord Iskar
		{ 7, 1391, 138, 51 };	-- Fel Lord Zakuun
		{ 8, 1447, 355, 132 };	-- Xhul'horac
		{ 9, 1427, 259, 350 };	-- Socrethar the Eternal
		{ 10, 1394, 124, 345 };	-- Tyrant Velhari
--		{ 12, 1395, nil, nil };	-- Mannoroth
		{ "B", 10001, 179, 156};
		{ "C", 10001, 179, 192};
	};
	HighmaulA = {
		{ 1, 1128, 347, 430 }; -- Kargath Bladefist
		{ 2, 971, 290, 272 }; -- The Butcher
		{ 3, 1195, 133, 377 }; -- Tectus
		{ 4, 1196, 238, 68 }; -- Brackenspore
		{ "A", 10001, 304, 398};
		{ "B", 10002, 133, 84};
	};
	HighmaulB = {
		{ 5, 1148, 162, 86 }; -- Twin Ogron
		{ 6, 1153, 94, 161 }; -- Ko'ragh
		{ 7, 1197, 390, 375 }; -- Imperator Mar'gok
		{ "B", 10001, 283, 231};
		{ "C", 10001, 55, 126};
		{ "C", 10001, 61, 448};
		{ "D", 10001, 138, 281};
		{ "D", 10001, 405, 179};
	};
	IronDocks = {
		{ 1, 1235, 231, 240 }; -- Fleshrender Nok'gar
		{ 2, 1236, 410, 391 }; -- Grimrail Enforcers
		{ 3, 1237, 410, 182 }; -- Oshir
		{ 4, 1238, 351, 273 }; -- Skulloc
		{ "A", 10001, 143, 275};
	};
	ShadowmoonBurialGrounds = {
		{ 1, 1139, 116, 205 }; -- Sadana Bloodfury
		{ 2, 1168, 187, 246 }; -- Nhallish
		{ 3, 1140, 318, 190 }; -- Bonemaw
		{ 4, 1160, 244, 370 }; -- Ner'zhul
		{ "A", 10001, 7, 240};
		{ "B", 10002, 244, 398};
		{ "B", 10002, 440, 239};
	};
	Skyreach = {
		{ 1, 965, 311, 164 }; -- Ranjit
		{ 2, 966, 233, 276 }; -- Araknath
		{ 3, 967, 177, 358 }; -- Rukhran
		{ 4, 968, 275, 214 }; -- High Sage Viryx
		{ "A", 10001, 298, 107};
	};
	UpperBlackrockSpire = {
		{ 1, 1226, 193, 87 }; -- Orebender Gor'ashan
		{ 2, 1227, 251, 144 }; -- Kyrak
		{ 3, 1228, 361, 233 }; -- Commander Tharbek
		{ 4, 1229, 340, 331 }; -- Ragewing the Untamed
		{ 5, 1234, 110, 342 }; -- Warlord Zaela
		{ "A", 10001, 95, 192};
		{ "B", 10002, 45, 111};
		{ "B", 10002, 195, 37};
	};
};
