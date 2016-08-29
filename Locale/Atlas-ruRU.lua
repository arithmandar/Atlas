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
local L = AceLocale:NewLocale("Atlas", "ruRU", false);

-- Atlas Russian Localization
-- Compiled by Eugene Filatov, bigoblin, StingerSoft
-- Last Update: 23.01.2011
-- $Date$
-- $Revision$

if ( GetLocale() == "ruRU" ) then
-- Define the leading strings to be ignored while sorting
-- Ex: The Stockade
AtlasSortIgnore = {"(.+)"};

-- Syntax: ["real_zone_name"] = "localized map zone name"
AtlasZoneSubstitutions = {
	["Ahn'Qiraj"] = "Ан'Кираж";
	["The Temple of Atal'Hakkar"] = "Храм Атал'Хаккара";
--	["Throne of Tides"] = "Бездонная пучина: Трон Приливов";
};
end


if L then
--@localization(locale="ruRU", format="lua_additive_table")@

--@do-not-package@
--************************************************
-- UI terms and common strings
--************************************************
	L["ATLAS_TITLE"] = "Атлас";

	L["BINDING_HEADER_ATLAS_TITLE"] = "Сопоставления кнопок";
	L["BINDING_NAME_ATLAS_TOGGLE"] = "Атлас";
	L["BINDING_NAME_ATLAS_OPTIONS"] = "Настройки Атласа";
	L["BINDING_NAME_ATLAS_AUTOSEL"] = "Авто-выбор поздемелья";

	L["ATLAS_SLASH"] = "/atlas";
	L["ATLAS_SLASH_OPTIONS"] = "options";

	L["ATLAS_STRING_LOCATION"] = "Расположение";
	L["ATLAS_STRING_LEVELRANGE"] = "Уровень"; -- shorten from "Level Range" as we are running out of space
	L["ATLAS_STRING_RECLEVELRANGE"] = "Реком. уровень"; -- abbrevation and shorten of "Recommended Level Range", the dungeon's recommended level range
	L["ATLAS_STRING_PLAYERLIMIT"] = "Лимит игроков";
	L["ATLAS_STRING_SELECT_CAT"] = "Выбор категории";
	L["ATLAS_STRING_SELECT_MAP"] = "Выбор карты";
	L["ATLAS_STRING_SEARCH"] = "Поиск";
	L["ATLAS_STRING_CLEAR"] = "Сбросить";
	L["ATLAS_STRING_MINLEVEL"] = "Минимальный уровень";

	L["ATLAS_OPTIONS_BUTTON"] = "Настройки";
	L["ATLAS_OPTIONS_SHOWBUT"] = "Показывать кнопку у мини-карты";
	L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "Отображать кнопку Атласа у мини-карты.";
	L["ATLAS_OPTIONS_AUTOSEL"] = "Автоматический выбор поздемелья";
	L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Автоматический выбор карты поздемелья, Атлас будет определить ваше местоположение, чтобы выбрать лучшую карту подземелья для вас.";
	L["ATLAS_OPTIONS_BUTPOS"] = "Расположение кнопки";
	L["ATLAS_OPTIONS_LOCK"] = "Закрепить окно Атласа";
	L["ATLAS_OPTIONS_LOCK_TIP"] = "Закрепить / освободить окно Атласа.";
	L["ATLAS_OPTIONS_TRANS"] = "Прозрачность";
	L["ATLAS_OPTIONS_RCLICK"] = "[ПКМ] для карты мира";
	L["ATLAS_OPTIONS_RCLICK_TIP"] = "Включает отображение мировой карты при нажатии ПКМ в окне Атласа.";
	L["ATLAS_OPTIONS_RESETPOS"] = "Сбросить позиции";
	L["ATLAS_OPTIONS_ACRONYMS"] = "Короткие названия";
	L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "Будут отображаться сокрощенные названия подземелий в информации о карте.";
	L["ATLAS_OPTIONS_SCALE"] = "Размер";
	L["ATLAS_OPTIONS_BOSS_DESC"] = "Показать описание босса (если доступно)";
	L["ATLAS_OPTIONS_BOSS_DESC_TIP"] = "При наведении курсора мышки над номером босса, будет показано описание босса, если такая информация доступна.";
	L["ATLAS_OPTIONS_BOSS_DESC_SCALE"] = "Размер подсказки описания босса на карте";
	L["ATLAS_OPTIONS_BUTRAD"] = "Радиус расположения кнопки";
	L["ATLAS_OPTIONS_CLAMPED"] = "Не заходить за размеры экрана";
	L["ATLAS_OPTIONS_CLAMPED_TIP"] = "Фиксировать окно Атласа на экране, отключение позволит перемещать окно Атласа за пределы игрового экрана.";
	L["ATLAS_OPTIONS_CTRL"] = "Удерживайте клавишу [CTRL] для сравнений";
	L["ATLAS_OPTIONS_CTRL_TIP"] = "Включить/отключить отображение подсказки при удерживании клавиши CTRL и наведении курсора мышки на информационной карте. Полезно тогда, когда текст слишком длинный, для отображения в окне.";
	L["ATLAS_OPTIONS_DONTSHOWAGAIN"] = "Не отображать одинаковую информацию снова.";
	L["ATLAS_OPTIONS_CHECKMODULE"] = "Напоминать о недостоющих модулях / плагинах.";
	L["ATLAS_OPTIONS_CHECKMODULE_TIP"] = "Выполнение проверки после загрузки WoW, на наличие недостающих модулей / плагинов Atlas'а.";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "Цвет ур. сложности подземелья";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "Полагаясь на предложенный минимальный уровень подземелья и уровень игрока, окрашивать названия подземелий с учетом их уровня сложности.";

	L["ATLAS_BUTTON_CLOSE"] = "Закрыть";	
	L["ATLAS_LDB_HINT"] = "[ЛКМ] - открывает Атлас.\n[ПКМ] - открывает настройки Атласа.";
	L["ATLAS_MINIMAPLDB_HINT"] = "[ЛКМ] - открывает Атлас.\n[ПКМ] + открывает настройки Атласа.\n[ЛКМ] + [перемещение] - изменяет позицию кнопки.";

	L["ATLAS_OPTIONS_CATDD"] = "Сортировать подземелья по:";
	L["ATLAS_DDL_CONTINENT"] = "Континенту";
	L["ATLAS_DDL_CONTINENT_EASTERN"] = "Подземелья Восточных королевств";
	L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "Подземелья Калимдора";
	L["ATLAS_DDL_CONTINENT_OUTLAND"] = "Подземелья Запределья";
	L["ATLAS_DDL_CONTINENT_NORTHREND"] = "Подземелья Нордскола";
	L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "Подземелья Подземья";
	L["ATLAS_DDL_CONTINENT_PANDARIA"] = "Подземелья Пандории";
	L["ATLAS_DDL_CONTINENT_DRAENOR"] = "Подземелья Дренорский";
	L["ATLAS_DDL_LEVEL"] = "Уровню";
	L["ATLAS_DDL_LEVEL_UNDER45"] = "Подземелья уровня ниже 45";
	L["ATLAS_DDL_LEVEL_45TO60"] = "Подземелья уровня 45-60";
	L["ATLAS_DDL_LEVEL_60TO70"] = "Подземелья уровня 60-70";
	L["ATLAS_DDL_LEVEL_70TO80"] = "Подземелья уровня 70-80";
	L["ATLAS_DDL_LEVEL_80TO85"] = "Подземелья уровня 80-85";
	L["ATLAS_DDL_LEVEL_85TO90"] = "Подземелья уровня 85-90";
	L["ATLAS_DDL_LEVEL_90TO100"] = "Подземелья уровня 90-100";
	L["ATLAS_DDL_LEVEL_100PLUS"] = "Подземелья уровня 100+";
	L["ATLAS_DDL_PARTYSIZE"] = "Размеру группы";
	L["ATLAS_DDL_PARTYSIZE_5_AE"] = "Подземелья на 5 игроков A-E";
	L["ATLAS_DDL_PARTYSIZE_5_FS"] = "Подземелья на 5 игроков F-S";
	L["ATLAS_DDL_PARTYSIZE_5_TZ"] = "Подземелья на 5 игроков T-Z";
	L["ATLAS_DDL_PARTYSIZE_10_AN"] = "Подземелья на 10 игроков A-N";
	L["ATLAS_DDL_PARTYSIZE_10_OZ"] = "Подземелья на 10 игроков O-Z";
	L["ATLAS_DDL_PARTYSIZE_20TO40AH"] = "Подземелья на 20-40 игроков A-H";
	L["ATLAS_DDL_PARTYSIZE_20TO40IZ"] = "Подземелья на 20-40 игроков I-Z";
	L["ATLAS_DDL_EXPANSION"] = "Дополнению";
	L["ATLAS_DDL_EXPANSION_OLD_AO"] = "Подземелья Старого Мира A-O";
	L["ATLAS_DDL_EXPANSION_OLD_PZ"] = "Подземелья Старого Мира P-Z";
	L["ATLAS_DDL_EXPANSION_BC"] = "Подземелья Пылающего Крестового Похода";
	L["ATLAS_DDL_EXPANSION_WOTLK"] = "Подземелья Wrath of the Lich King";
	L["ATLAS_DDL_EXPANSION_CATA"] = "Подземелья Cataclysm";
	L["ATLAS_DDL_EXPANSION_MOP"] = "Подземелья Mists of Pandaria";
	L["ATLAS_DDL_EXPANSION_WOD"] = "Подземелья Warlords of Draenor";
	L["ATLAS_DDL_TYPE"] = "Типу";
	L["ATLAS_DDL_TYPE_INSTANCE_AB"] = "Подземелья A-B";
	L["ATLAS_DDL_TYPE_INSTANCE_CF"] = "Подземелья C-F";
	L["ATLAS_DDL_TYPE_INSTANCE_GM"] = "Подземелья G-M";
	L["ATLAS_DDL_TYPE_INSTANCE_NS"] = "Подземелья N-S";
	L["ATLAS_DDL_TYPE_INSTANCE_TZ"] = "Подземелья T-Z";
	L["ATLAS_DDL_TYPE_ENTRANCE"] = "Входы";

	L["ATLAS_INSTANCE_BUTTON"] = "Подземелье";
	L["ATLAS_ENTRANCE_BUTTON"] = "Вход";
	L["ATLAS_SEARCH_UNAVAIL"] = "Поиск недоступен";

	L["ATLAS_DEP_MSG1"] = "Атлас обнаружил устаревший(е) модуль(и).";
	L["ATLAS_DEP_MSG2"] = "Они будут отключены для данного персонажа.";
	L["ATLAS_DEP_MSG3"] = "Удалите их из вашей папки аддонов.";
	L["ATLAS_DEP_OK"] = "Ok";

	L["ATLAS_INFO"] = "Atlas информация";
	L["ATLAS_INFO_12200"] = "Важное уведомление:\n\nВ связи с проблемой увеличение размеров файлов модификации, мы разделили\n модификацию на отдельные модули подземелий.\n\nПользователи, которые скачивают нашу модификацию с известных веб-сайтов,\n в основном получают только основное ядро, которое включает в себя все\n функции ядра Атласа и карты подземелий Cataclysm'а.\n\nПользователи, которые хотят загрузить все старые карты подземелий и все\n модули Атласа, сделанные нами, могут их скачать по отдельности.\n\nДля получения дополнительной информации прочтите следующий топик:\n|cff6666ffhttp://www.atlasmod.com/phpBB3/viewtopic.php?t=1522|cffffffff\n\nИли посетите наш сайт, чтобы узнать где скачать:\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";
	L["ATLAS_INFO_12201"] = "Обратите внимание, что мы создали новый плагин - |cff6666ffAtlas Сценарии|cffffffff, который \nобеспечивает совершенно новыми картыми сценарий, введенных в 5.0. \n\nДля более подробной информации посетите наш веб-сайт, и не забудьте скачать / \nустановить его отдельно.\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";

	L["ATLAS_MISSING_MODULE"] = "Atlas обнаружил недостоющие модули / плагины: ";
--	L["Click to open Dungeon Journal window."] = "[ЛКМ] - открывает окно журнала подземелий.";

--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************

	--Common strings
	L["East"] = "Восток";
	L["North"] = "Север";
	L["South"] = "Юг";
	L["West"] = "Запад";

	--World Events, Festival
	L["Brewfest"] = "Праздника пива";
	L["Hallow's End"] = "Тыква";
	L["Love is in the Air"] = "Любовная лихорадка";
	L["Lunar Festival"] = "Лунный фестиваль";
	L["Midsummer Festival"] = "Огненный солнцеворот";

	--Misc strings
	L["Colon"] = ": "; -- The colon symbol to be used in string, ex: "Zone: Firelands
	L["Adult"] = "Взрослый";
	L["AKA"] = "AKA";
	L["Arcane Container"] = "Волшебный контейнер";
	L["Arms Warrior"] = "Воин-Оружия";
	L["Attunement Required"] = "Необходима подготавка";
	L["Back"] = "Назад";
	L["Basement"] = "Подвал";
	L["Blacksmithing Plans"] = "Чертежи кузнечного дела";
	L["Chase Begins"] = "Начало охоты";
	L["Chase Ends"] = "Конец охоты";
	L["Child"] = "Ребенок";
	L["Connection"] = "Связан";
	L["Elevator"] = "Лифт";
	L["End"] = "Конец";
	L["Engineer"] = "Инженер";
	L["Entrance"] = "Вход";
	L["Event"] = "Событие";
	L["Exalted"] = "Превознесение";
	L["Exit"] = "Выход";
	L["Fourth Stop"] = "Четвертая остановка";
	L["Front"] = "Передний";
	L["Ghost"] = "Призрак";
	L["Graveyard"] = "Кладбище";
	L["Heroic"] = "Героический";
	L["Holy Paladin"] = "Паладин-Света";
	L["Holy Priest"] = "Жрец-Света";
	L["Imp"] = "Бесс";
	L["Key"] = "Ключ";
	L["Lower"] = "Нижний";
	L["Meeting Stone"] = "Камень встреч";
	L["Middle"] = "Центр"; --???
	L["Moonwell"] = "Лунный колодец";
	L["Optional"] = "Необяз.";
	L["Orange"] = "Оранжевый";
	L["Outside"] = "Снаружи";
	L["Portal"] = "Портал";
	L["Protection Warrior"] = "Воин-Защиты";
	L["Purple"] = "Пурпурный";
	L["Random"] = "Случайный";
	L["Rare"] = "Редкий";
	L["Repair"] = "Починка";
	L["Retribution Paladin"] = "Паладин-Возмездия";
	L["Rewards"] = "Награды";
	L["Second Stop"] = "Вторая остановка";
	L["Shadow Priest"] = "Жрец-Темной магии";
	L["Spawn Point"] = "Точка рождения";
	L["Start"] = "Начало";
	L["Summon"] = "Вызов";
	L["Teleporter"] = "Телепорт";
	L["Teleporter destination"] = "Назначение телепорта";
	L["Third Stop"] = "Третья остановка";
	L["Top"] = "Верхний";
	L["Tunnel"] = "Туннель";
	L["Underwater"] = "Подводный";
	L["Upper"] = "Верхний";
	L["Varies"] = "Изменяется";
	L["Wanders"] = "Странник";
	L["Wave 5"] = "5-ая волна";
	L["Wave 6"] = "6-ая волна";
	L["Wave 10"] = "10-ая волна";
	L["Wave 12"] = "12-ая волна";
	L["Wave 18"] = "18-ая волна";
	L["MapsNotFound"] = "Текущее выбранное подземелье не имеет \nсоответствующего изображения карты. \n\nПожалуйста, убедитесь, что вы установили \nсоответствующий модуль(и) карт Atlas'а.";
	L["PossibleMissingModule"] = "Вполне вероятно, эта карта из этого модуля: ";

	--Classic Acronyms
	L["AQ"] = "АКУ"; -- Ан'Кираж
	L["AQ10"] = "АКУ20"; -- Руины Ан'Киража
	L["AQ40"] = "АКУ40"; -- Храм Ан'Киража
	L["BFD"] = "НП"; -- Непроглядная Пучина
	L["BRD"] = "ГЧГ"; -- Глубины Черной горы
	L["BRM"] = "ЧГ"; -- Черная гора
	L["BWL"] = "ЛКТ"; -- Логово Крыла Тьмы
	L["DM"] = "ЗГ"; -- Забытый Город
	L["Gnome"] = "Гном"; -- Гномреган
	L["LBRS"] = "НЧГ"; -- Нижняя часть Вершины Черной горы
	L["Mara"] = "Маро"; -- Мародон
	L["MC"] = "ОН"; -- Огненные Недра
	L["RFC"] = "ОгП"; -- Огненная пропасть
	L["RFD"] = "Курганы"; -- Курганы Иглошкурых
	L["RFK"] = "ЛабИ"; -- Лабиринты Иглошкурых
	L["ST"] = "ЗХ"; -- Затонувший храм
	L["Strat"] = "Страт"; -- Стратхольм
	L["Stocks"] = "Тюрьма"; -- Тюрьма
	L["Ulda"] = "Ульд"; -- Ульдаман
	L["WC"] = "ПС"; -- Пещеры Стенаний
	L["ZF"] = "ЗФ"; -- Зул'Фаррак

	--BC Acronyms
	L["AC"] = "АГ"; -- Аукенайские гробницы
	L["Arca"] = "Арка"; -- Аркатрац
	L["Auch"] = "Аук"; -- Аукиндон
	L["BF"] = "КК"; -- Кузня Крови
	L["BT"] = "ЧХ"; -- Черный Храм
	L["Bota"] = "Бота"; -- Ботаника
	L["CoT"] = "ПВ"; -- Пещеры Времени
	L["CoT1"] = "ПВ1"; -- Старые предгорья Хилсбрада
	L["CoT2"] = "ПВ2"; -- Черные топи
	L["CoT3"] = "ПВ3"; -- Вершина Хиджала
	L["CR"] = "РКК"; -- Резервуар Кривого Клыка
	L["GL"] = "Груль"; -- Логово Груула
	L["HC"] = "ЦАП"; -- Цитадель Адского Пламени
	L["Kara"] = "Кара"; -- Каражан
	L["MaT"] = "ТМ"; -- Терраса Магистров
	L["Mag"] = "Маги"; -- Логово Магтеридона
	L["Mech"] = "Мех"; -- Механар
	L["MT"] = "ГМ"; -- Гробницы Маны
	L["Ramp"] = "Баст"; -- Бастионы Адского Пламени
	L["SSC"] = "ЗС"; -- Змеиное святилище
	L["Seth"] = "Сетекк"; -- Сетеккские залы
	L["SH"] = "РЗ"; -- Разрушенные залы
	L["SL"] = "ТЛ"; -- Темный Лабиринт
	L["SP"] = "Узи"; -- Узилище
	L["SuP"] = "СК"; -- Солнечный Колодец
	L["SV"] = "ПП"; -- Паровое Подземелье
	L["TK"] = "КБ"; -- Крепость Бурь
	L["UB"] = "НТ"; -- Нижетопь

	--WotLK Acronyms
	L["AK, Kahet"] = "АК, Кахет"; -- Ан'кахет
	L["AN, Nerub"] = "АЖ, Неруб"; -- Азжол-Неруб
	L["Champ"] = "ИЧ"; -- Испытание чемпиона
	L["CoT-Strat"] = "ПВ-Страт"; -- Очищение Стратхольма
	L["Crus"] = "Crus"; -- Испытание крестоносца
	L["DTK"] = "КДТ"; -- Крепость Драк'Тарон
	L["FoS"] = "Кузня Душ"; 
	L["FH1"] = "ЛЗ1"; -- Кузня Душ
	L["Gun"] = "Гун"; -- Гундрак
	L["HoL"] = "ЧМ"; -- Чертоги Молний
	L["HoR"] = "ЗО"; 
	L["FH3"] = "ЛЗ3"; -- Залы Отражения
	L["HoS"] = "ЧК"; -- Чертоги Камня
	L["IC"] = "ЦЛК"; -- Цитадель Ледяной Короны
	L["Nax"] = "Накс"; -- Наксрамас
	L["Nex, Nexus"] = "Некс, Нексус"; -- Нексус
	L["Ocu"] = "Оку"; -- Окулус
	L["Ony"] = "Ony"; -- Onyxia's Lair
	L["OS"] = "OS"; -- The Obsidian Sanctum
	L["PoS"] = "Яма"; 
	L["FH2"] = "ЛЗ2"; -- Яма Сарона
	L["RS"] = "PC"; -- Рубиновое святилище
	L["TEoE"] = "ОВ"; -- Око Вечности
	L["UK, Keep"] = "УК, Крепость"; -- Крепость Утгард
	L["Uldu"] = "Ульда"; -- Ульдуар
	L["UP, Pinn"] = "УВ, Вершина"; -- Вершина Утгард
	L["VH"] = "АМК"; -- Аметистовая крепость
	L["VoA"] = "Склеп"; -- Склеп Аркавона

	--Zones not included in LibBabble-Zone
	L["Crusaders' Coliseum"] = "Колизей Авангарда"; 

	--Cataclysm Acronyms
	L["BH"] = "КБ"; --Крепость Барадин
	L["BoT"] = "СБ"; --Сумеречный бастион
	L["BRC"] = "ПСГ"; --Пещеры Черной горы
	L["BWD"] = "ТКТ"; --Твердыня Крыла Тьмы
	L["CoT-DS"] = "ПВ-ДД"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "ПВ-КВ"; --Caverns of Time: End Time
	L["CoT-HoT"] = "ПВ-ЧС"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "ПВ-ИВ"; --Caverns of Time: Well of Eternity
	L["FL"] = "ОП"; --Firelands
	L["GB"] = "ГБ"; --Грим Батол
	L["HoO"] = "ЧТГС"; --Чертоги Созидания
	L["LCoT"] = "ЗГТВ"; --Затерянный город Тол'вир
	L["SFK"] = "КТК"; -- Крепость Темного Клыка
	L["TSC"] = "КН"; --Каменные Недра
	L["TWT"] = "ТЧВ"; --Трон Четырех Ветров
	L["ToTT"] = "ТП"; --Трон Приливов
	L["VC"] = "МК"; -- Мертвые копи
	L["VP"] = "ВС"; --Вершина смерча
	L["ZA"] = "ЗА"; -- Зул'Аман
	L["ZG"] = "ЗГ"; --Зул'Гуруб

	--MoP Acronyms
	L["GSS"] = "ВЗС"; --Врата Заходящего Солнца
	L["Halls"] = "ЗАо"; -- Кладбище
	L["HoF"] = "СС"; --Сердце Страха
	L["MP"] = "ДМОГ"; --Дворец Могу'шан
	L["MV"] = "ПМ"; --Подземелья Могу'шан
	L["SM"] = "МАО"; -- Монастырь Алого ордена
	L["Scholo"] = "Некро"; -- Некроситет
	L["SPM"] = "МШадо"; --Монастырь Шадо-Пан
	L["SNT"] = "ОХН"; --Осада храма Нюцзао
	L["SB"] = "ХБП"; --Хмелеварня Буйных Портеров
	L["SoO"] = "Оо"; --Осада Оргриммара
	L["TJS"] = "ХНЗ"; --Храм Нефритовой Змеи
	L["TES"] = "ТВВ"; --Терраса Вечной Весны
	L["ToT"] = "ЗМ"; --Throne of Thunder

	--WoD Acronyms
	L["BRF"] = "ЛКЧГ"; -- Литейная клана Черной горы
	L["BSM"] = "ШКМ"; -- Шлаковые шахты Кровавого Молота
	L["EB"] = "ВЧ"; -- Вечное Цветение
	L["GD"] = "ДМП"; -- Депо Мрачных Путей
	L["HM"] = "ВМ"; -- Верховный Молот
	L["ID"] = "ЖД"; -- Железные доки
	L["SBG"] = "НПЛ"; -- Некрополь Призрачной Луны
	L["SR"] = "НП"; -- Небесный Путь
	L["UBRS"] = "ВЧГ"; -- Вершина Черной горы

	--Map sections
--	L["MapA"] = " [A]"; -- For example: Shado-Pan Monastery [A]
--	L["MapB"] = " [B]";
--	L["MapC"] = " [C]";
--	L["MapD"] = " [D]";
--	L["MapE"] = " [E]";
--	L["MapF"] = " [F]";

--************************************************
-- Instance Entrance Maps
--************************************************

	--Auchindoun (Entrance)
	L["Clarissa"] = "Кларисса";
	L["Greatfather Aldrimus"] = "Великий Отец Алдримус";
	L["Ha'Lei"] = "Ха'лей";
	L["Horvon the Armorer <Armorsmith>"] = "Хорвон Бронник <Бронник>";
	L["Ramdor the Mad"] = "Рамдор Безумный";
	L["Nexus-Prince Haramad"] = "Принц Харамад";
	L["\"Slim\" <Shady Dealer>"] = "Тип <Сомнительный делец>";
	L["\"Captain\" Kaftiz"] = "Капитан Кафтиц";
	L["Dealer Tariq <Shady Dealer>"] = "Делец Тариг <Сомнительный делец>";
	L["Provisioner Tsaalt"] = "Поставщик Тсаальт";

	--Blackfathom Deeps (Entrance)

	--Blackrock Mountain (Entrance)
	L["Bodley"] = "Бодли";
	L["Lothos Riftwaker"] = "Лотос Хранитель Портала";
	L["Orb of Command"] = "Сфера Приказа";
	L["Scarshield Quartermaster <Scarshield Legion>"] = "Интендант из легиона Изрубленного Щита";
	L["The Behemoth"] = "Чудище";

	--Caverns of Time (Entrance)
	L["Steward of Time <Keepers of Time>"] = "Распорядитель времени <Хранители Времени>";
	L["Alexston Chrome <Tavern of Time>"] = "Алекстон Хром <Таверна Времени>";
	L["Yarley <Armorer>"] = "Ярли <Бронник>";
	L["Bortega <Reagents & Poison Supplies>"] = "Бортега <Реагенты и яды>";
	L["Alurmi <Keepers of Time Quartermaster>"] = "Алурми <Начальник снабжения Хранителей Времени>";
	L["Galgrom <Provisioner>"] = "Гальгром <Поставщик>";
	L["Zaladormu"] = "Заладорму";
	L["Soridormi <The Scale of Sands>"] = "Соридорми <Песчаная Чешуя>";
	L["Arazmodu <The Scale of Sands>"] = "Аразмоду <Песчаная Чешуя>";
	L["Andormu <Keepers of Time>"] = "Андорму <Хранители Времени>";
	L["Nozari <Keepers of Time>"] = "Нозари <Хранители Времени>";
	L["Anachronos <Keepers of Time>"] = "Анахронос <Хранители Времени>";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Индорми <Хранитель знаний о древних самоцветах>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Тайдорму <Хранитель утраченных артефактов>";

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Мортог Горячая Голова";

	--Dire Maul (Entrance)
	L["Dire Pool"] = "Забытый остров";
	L["Dire Maul Arena"] = "Арена забытого города";
	L["Elder Mistwalker"] = "Старейшина Странник Туманов ";

	--Gnomeregan (Entrance)
	L["Torben Zapblast <Teleportation Specialist>"] = "Торбен Запрыгуль <Мастер телепортации>";

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Подъем и путь к Кузне Крови";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Путь к Бастионам и Разрушенным залам";
	L["Meeting Stone of Magtheridon's Lair"] = "Камень встреч Логова Магтеридона";
	L["Meeting Stone of Hellfire Citadel"] = "Камень встреч Цитадели Адского Пламени";

	--Icecrown Citadel (Entrance)

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Верховный маг Лерида";
	L["Archmage Alturus"] = "Верховный маг Альтур";
	L["Apprentice Darius"] = "Ученик Дариус";
	L["Stairs to Underground Pond"] = "Лестница к Подземному пруду";
	L["Stairs to Underground Well"] = "Лестница к Подземному колодцу";
	L["Charred Bone Fragment"] = "Фрагмент обугленной кости";

	--Maraudon (Entrance)
	L["The Nameless Prophet"] = "Безымянный пророк";
	L["Cursed Centaur"] = "Проклятый кентавр";
	L["Kherrah"] = "Керра";

	--Scarlet Monastery (Entrance)

	--The Deadmines (Entrance)

	--Sunken Temple (Entrance)
	L["Priestess Udum'bra"] = "Жрица Удум'бра";
	L["Gomora the Bloodletter"] = "Гомора Кровопускатель";
	L["Captain Wyrmak"] = "Капитан Змеюк";

	--Uldaman (Entrance)

	--Ulduar (Entrance)
	L["Shavalius the Fancy <Flight Master>"] = "Шавалий Модник <Распорядитель полетов>";
	L["Chester Copperpot <General & Trade Supplies>"] = "Честер Медноковш <Потребительские и хозяйственные товары>";
	L["Slosh <Food & Drink>"] = "Хлюп <Еда и напитки>";

	--Wailing Caverns (Entrance)

--************************************************
-- Kalimdor Instances (Classic)
--************************************************

	--Blackfathom Deeps
	L["Je'neu Sancrea <The Earthen Ring>"] = "Дже'неу Санкри <Служители Земли>";
	L["Sentinel Aluwyn"] = "Часовой Алувин";
	L["Zeya"] = "Зейя";
	L["Altar of Blood"] = "Алтарь крови";
	L["Fire of Aku'mai"] = "Огонь Аку'майя";
	L["Spoils of Blackfathom"] = "Трофеи Непроглядной Пучины";

	--Dire Maul (East)
	L["\"Ambassador\" Dagg'thol"] = "\"Посланник\"Дагг'тол";
	L["Furgus Warpwood"] = "Фургус Криводрев";
	L["Old Ironbark"] = "Старик Железной Коры";
	L["Ironbark the Redeemed"] = "Железная Кора - отмщенный";

	--Dire Maul (North)
	L["Druid of the Talon"] = "Друид-ворон";
	L["Stonemaul Ogre"] = "Огр из клана Каменного Молота";
	L["Knot Thimblejack"] = "Уззл Наперстяк";

	--Dire Maul (West)
	L["Ferra"] = "Ферра";
	L["Estulan <The Highborne>"] = "Эстулан <Высокорожденный>";
	L["Shen'dralar Watcher"] = "Шен'драларский дозорный";
	L["Pylons"] = "Опоры";
	L["Ancient Equine Spirit"] = "Дух древнего коня";
	L["Shen'dralar Ancient"] = "Шен'драларский поставщик";
	L["Falrin Treeshaper"] = "Фалрин Садовник";
	L["Lorekeeper Lydros"] = "Сказитель Лидрос";
	L["Lorekeeper Javon"] = " Сказитель Явон";
	L["Lorekeeper Kildrath"] = "Сказитель Килдрат";
	L["Lorekeeper Mykos"] = "Сказительница Микос";
	L["Shen'dralar Provisioner"] = "Шен'драларский поставщик";

	--Maraudon	
	L["Elder Splitrock"] = "Старейшина Камнепад";
	L["Celebras the Redeemed"] = "Келебрас Освобожденный";

	--Ragefire Chasm
	L["Commander Bagran"] = "Командир Багран";
	L["Invoker Xorenth"] = "Заклинатель Ксорент";
	L["Scout Cage"] = "Scout Cage"; --need check

	--Razorfen Downs
	L["Koristrasza"] = "Користраза";
	L["Amnennar's Phylactery"] = "Филактерия Амненнара";

	--Razorfen Kraul
	L["Auld Stonespire"] = "Ольд Каменное Копье";
	L["Spirit of Agamaggan <Ancient>"] = "Дух Агамаггана <Древний>";

	--Ruins of Ahn'Qiraj
	L["Four Kaldorei Elites"] = "4 Кальдорайских гвардейцев";
	L["Captain Qeez"] = "Капитан Квиз";
	L["Captain Tuubid"] = "Капитан Туубид";
	L["Captain Drenn"] = "Капитан Дренн";
	L["Captain Xurrem"] = "Капитан Ксуррем";
	L["Major Yeggeth"] = "Майор Йеггет";
	L["Major Pakkon"] = "Майор Паккон";
	L["Colonel Zerran"] = "Полковник Зерран";
	L["Safe Room"] = "Безопасная Комната";

	--Temple of Ahn'Qiraj
	L["Andorgos <Brood of Malygos>"] = "Андоргос <Род Малигоса>";
	L["Vethsera <Brood of Ysera>"] = "Ветсера <Род Изеры >";
	L["Kandrostrasz <Brood of Alexstrasza>"] = "Кандострас <Племя Алекстразы>";
	L["Arygos"] = "Аригос";
	L["Caelestrasz"] = "Келестраз";
	L["Merithra of the Dream"] = "Меритра из Сна";

	--Wailing Caverns
	L["Ebru <Disciple of Naralex>"] = "Эбру <Ученица Наралекса>"; -- 5768
	L["Nalpak <Disciple of Naralex>"] = "Налпак <Ученик Наралекса>"; -- 5767
	L["Muyoh <Disciple of Naralex>"] = "Муйон <Ученик Наралекса>";  -- 3678
	L["Naralex"] = "Наралекс"; -- 3679

	--Zul'Farrak
	L["Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>"] = "Главный инженер Чепухастер <Компания \"Воды Прибамбасска\">";
	L["Mazoga's Spirit"] = "Дух Мазоги";
	L["Tran'rek"] = "Тран'рек";
	L["Weegli Blastfuse"] = "Вигиль Фитиль";
	L["Raven"] = "Ворон";
	L["Elder Wildmane"] = "Старейшина Дикая Грива ";

--****************************
-- Eastern Kingdoms Instances (Classic)
--****************************

	--Blackrock Depths
	L["The Black Anvil"] = "Черная наковальня";
	L["The Vault"] = "Подземелье";
	L["Watchman Doomgrip"] = "Сторож Хватка Смерти";
	L["Elder Morndeep"] = "Старейшина Рассветень";
	L["Schematic: Field Repair Bot 74A"] = "Схема: полевой ремонтный робот 74A";
	L["Private Rocknot"] = "Рядовой Камнеузл";
	L["Mistress Nagmara"] = "Госпожа Нагмара";
	L["Jalinda Sprig <Morgan's Militia>"] = "Джалинда Тирлипунька";
	L["Oralius <Morgan's Militia>"] = "Орелий";
	L["Thal'trak Proudtusk <Kargath Expeditionary Force>"] = "Тал'трак Гордый Клык <Каргатский экспедиционный корпус>";
	L["Galamav the Marksman <Kargath Expeditionary Force>"] = "Галамав Стрелок <Каргатский экспедиционный корпус>";
	L["Maxwort Uberglint"] = "Максворт Суперблеск";
	L["Tinkee Steamboil"] = "Тинки Кипеллер";
	L["Yuka Screwspigot <Engineering Supplies>"] = "Юка Крутипроб";
	L["Abandonded Mole Machine"] = "Брошенная буровая установка";
	L["Kevin Dawson <Morgan's Militia>"] = "Кевин Доусон <Отряд Морганы>";
	L["Lexlort <Kargath Expeditionary Force>"] = "Лекслорт <Каргатский экспедиционный корпус>";
	L["Prospector Seymour <Morgan's Militia>"] = "Геолог Сеймур <Отряд Морганы>";
	L["Razal'blade <Kargath Expeditionary Force>"] = "Разал'меч <Каргатский экспедиционный корпус>";
	L["The Shadowforge Lock"] = "Замок Тенегорна";
	L["Mayara Brightwing <Morgan's Militia>"] = "Майра Светлое Крыло <Отряд Морганы>";
	L["Hierophant Theodora Mulvadania <Kargath Expeditionary Force>"] = "Верховная Жрица Теодора Мальвадания";
	L["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = "Локтос Зловещий Торговец";
	L["Mountaineer Orfus <Morgan's Militia>"] = "Горный пехотинец Орфус <Отряд Морганы>";
	L["Thunderheart <Kargath Expeditionary Force>"] = "Громосерд <Каргатский экспедиционный корпус>";
	L["Marshal Maxwell <Morgan's Militia>"] = "Маршал Максвелл <Отряд Морганы>";
	L["Warlord Goretooth <Kargath Expeditionary Force>"] = "Полководец Клинозуб <Каргатский экспедиционный корпус>";
	L["The Black Forge"] = "Черная Кузня";
	L["Core Fragment"] = "Осколок из Огненных Недр";
	L["Shadowforge Brazier"] = "Жаровня Тенегорна";

	--Blackrock Spire (Lower)
	L["Urok's Tribute Pile"] = "Груда приношений Арроку";
	L["Acride <Scarshield Legion>"] = "Секретный агент <Легион Изрубленного Щита>";
	L["Elder Stonefort"] = "Старейшина Камнеград";
	L["Roughshod Pike"] = "Наконечник Грубой силы ";

	--Blackwing Lair
	L["Orb of Domination"] = "Сфера Приказа";
	L["Master Elemental Shaper Krixix"] = "Ваятель стихий Криксикс";

	--Gnomeregan
	L["Chomper"] = "Чавккер";
	L["Blastmaster Emi Shortfuse"] = "Взрывник Ими Фитилюшка";
	L["Murd Doc <S.A.F.E.>"] = "Мерд-Док <С.П.А.С.>";
	L["Tink Sprocketwhistle <Engineering Supplies>"] = "Звяк Пружиносвист <Инженерные материалы>";
	L["The Sparklematic 5200"] = "Чистер 5200!";
	L["Mail Box"] = "Почтовый яшик";
	L["B.E Barechus <S.A.F.E.>"] = "Б.Е. Барекус <С.П.А.С.>";
	L["Face <S.A.F.E.>"] = "Физий <С.П.А.С.>";
	L["Hann Ibal <S.A.F.E.>"] = "Ганни Бал <С.П.А.С.>";

	--Molten Core

	--Stratholme - Crusader's Square
	L["Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>"] = "Командир Элигор Вестник Рассвета <Братство Света>";
	L["Master Craftsman Wilhelm <Brotherhood of the Light>"] = "Мастер-ремесленник Вильгельм <Братство Света>";
	L["Packmaster Stonebruiser <Brotherhood of the Light>"] = "Караванщик Камнетес <Братство Света>";
	L["Stratholme Courier"] = "Стратхольмский курьер";
	L["Fras Siabi's Postbox"] = "Ключ от почтового ящика Фраса Сиаби";
	L["King's Square Postbox"] = "Ключ от почтового ящика на Королевской площали";
	L["Festival Lane Postbox"] = "Ключ от почтового ящика на Праздничной улице";
	L["Elder Farwhisper"] = "Старейшина Тихий Шепот";
	L["Market Row Postbox"] = "Ключ от почтового ящика в торговом ряду";

	--Stratholme - The Gauntlet
	L["Elders' Square Postbox"] = "Ключ от почтового ящика на Площади старейшины";
	L["Archmage Angela Dosantos <Brotherhood of the Light>"] = "Верховный маг Анджела Досантос <Братство Света>";
	L["Crusade Commander Korfax <Brotherhood of the Light>"] = "Командир рыцарей Корфакс <Братство Света>";

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "Лейтенант Горацио Лейн";
	L["Kagtha"] = "Кагта";
	L["Slinky Sharpshiv"] = "Крадли Дротик";
	L["Quartermaster Lewis <Quartermaster>"] = "Интендант Льюис <Интендант>";
	L["Miss Mayhem"] = "Мисс Кавардак";
	L["Vend-O-Tron D-Luxe"] = "Торг-о-трон делюкс";

	--The Stockade
	L["Rifle Commander Coe"] = "Командир стрелков Коу";
	L["Warden Thelwater"] = "Тюремщик Телвотер";
	L["Nurse Lillian"] = "Медсестра Лилиан";

	--The Sunken Temple
	L["Lord Itharius"] = "Лорд Итар";
	L["Elder Starsong"] = "Старейшина Звездная Песня";

	--Uldaman
	L["Baelog's Chest"] = "Сундук Бейлога";
	L["Kand Sandseeker <Explorer's League>"] = "Канд Искатель Песков <Лига исследователей>";
	L["Lead Prospector Durdin <Explorer's League>"] = "Старший геолог Дардин <Лига исследователей>";
	L["Olga Runesworn <Explorer's League>"] = "Ольга Преданная Рунам <Лига исследователей>";
	L["Aoren Sunglow <The Reliquary>"] = "Аорен Солнечное Сияние <Реликварий>";
	L["High Examiner Tae'thelan Bloodwatcher <The Reliquary>"] = "Главный дознаватель Тей'телан Кровавый Взор <Реликварий>";
	L["Lidia Sunglow <The Reliquary>"] = "Лидия Солнечное Сияние <Реликварий>";
	L["Ancient Treasure"] = "Древнее сокровище";
	L["The Discs of Norgannon"] = "Диски Норганнона";

--*******************
-- Burning Crusade Instances
--*******************

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Дух дренея";
	L["Avatar of the Martyred"] = "Аватара Мученика";
	L["D'ore"] = "Д'оре";
	L["Tormented Soulpriest"] = "Измученный жрец душ";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Работник Морфалиус";
	L["Mamdy the \"Ologist\""] = "Мамди по кличке \"Олог\"";
	L["Shadow Lord Xiraxis"] = "Владыка теней Зираксис";
	L["Ambassador Pax'ivi"] = "Посол Пакс'иви";
	L["Cryo-Engineer Sha'heen"] = "Крио-инженер Ша'хин";
	L["Ethereal Transporter Control Panel"] = "Пульт управления астрального телепорта";

	--Auch: Sethekk Halls
	L["Isfar"] = "Исфар";
	L["Dealer Vijaad"] = "Делец Виджад";
	L["Lakka"] = "Лакка";
	L["The Saga of Terokk"] = "Сага о Терокке";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Боевой командир Мафуун";
	L["Spy Grik'tha"] = "Шпион Грик'та";
	L["The Codex of Blood"] = "Кодекс Крови";
	L["First Fragment Guardian"] = "Страж первого фрагмента";
	L["Spy To'gun"] = "Шпион То'гун";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "К Гробнице Душ";
	L["Towards Teron Gorefiend"] = "К Терону Кровожадному";
	L["Towards Illidan Stormrage"] = "К Иллидану Ярости Бури";
	L["Spirit of Olum"] = "Олумов дух";
	L["Spirit of Udalo"] = "Дух Адало";
	L["Aluyen <Reagents>"] = "Алуйен <Реагенты>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Окуно <Начальник снабжения Пеплоустов>";
	L["Seer Kanai"] = "Провидец Канеи";

	--Black Temple (Basement)

	--Black Temple (Top)

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Провидец Олум";

	--CFR: The Slave Pens
	L["Nahuud"] = "Нахууд";
	L["Watcher Jhang"] = "Дозорный Джанг";
	L["Weeder Greenthumb"] = "Культиватор Зеленопал";
	L["Skar'this the Heretic"] = "Скартис Еретик";
	L["Naturalist Bite"] = "Натуралист Кус";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Призыватель ветров Коготь";
	L["Main Chambers Access Panel"] = "Главная камера сгорания - Панель доступа";
	L["Second Fragment Guardian"] = "Страж второго фрагмента";

	--CFR: The Underbog
	L["T'shu"] = "Тшу";
	L["The Underspore"] = "Подспорник";
	L["Earthbinder Rayge"] = "Землепряд Гневвс";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Са'ат <Хранители Времени>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Леди Джайна Праудмур";
	L["Thrall <Warchief>"] = "Тралл <Вождь>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Тиранда Шелест Ветра";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Эрозион";
	L["Brazen"] = "Бронзень";
	L["Landing Spot"] = "Место высадки";
	L["Thrall"] = "Раб";
	L["Taretha"] = "Тарета";
	L["Don Carlos"] = "Дон Карлос";
	L["Guerrero"] = "Герреро";
	L["Thomas Yance <Travelling Salesman>"] = "Томас Янс <Странствующий торговец>";
	L["Aged Dalaran Wizard"] = "Даларанский старый волшебник";
	L["Jonathan Revah"] = "Джонатан Рева";
	L["Jerry Carter"] = "Джерри Картер";
	L["Helcular"] = "Гелькулар";
	L["Farmer Kent"] = "Фермер Кент";
	L["Sally Whitemane"] = "Сэлли Белогрив";
	L["Renault Mograine"] = "Рено Могрейн";
	L["Little Jimmy Vishas"] = "Малыш Джимми Вишас";
	L["Herod the Bully"] = "Герод Забияка";
	L["Nat Pagle"] = "Нат Пэгл";
	L["Hal McAllister"] = "Хал Макаллистер";
	L["Zixil <Aspiring Merchant>"] = "Зиксель <Знаменитый купец>";
	L["Overwatch Mark 0 <Protector>"] = "Суперсторож, модель 0 <Заступник>";
	L["Southshore Inn"] = "Дома южнобережья";
	L["Captain Edward Hanes"] = "Капитан Эдвард Хейнс";
	L["Captain Sanders"] = "Капитан Сандерс";
	L["Commander Mograine"] = "Командир Могрейн";
	L["Isillien"] = "Изиллиен";
	L["Abbendis"] = "Аббендис";
	L["Fairbanks"] = "Фэйрбанкс";
	L["Taelan"] = "Таэлан";
	L["Barkeep Kelly <Bartender>"] = "Кабатчик Келли <Бармен>";
	L["Frances Lin <Barmaid>"] = "Франс Лин <Официантка>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Шеф-повар Джессен <Деликатесное мясо и похлебки>";
	L["Stalvan Mistmantle"] = "Сталван Мистмантл";
	L["Phin Odelic <The Kirin Tor>"] = "Фин Оделик <Кирин Тор>";
	L["Magistrate Henry Maleb"] = "Мировой судья Генри Малеб";
	L["Raleigh the True"] = "Роли Истинный";
	L["Nathanos Marris"] = "Натанос Маррис";
	L["Bilger the Straight-laced"] = "Бочкопуз Крепкосбитый";
	L["Innkeeper Monica"] = "Хозяйка таверны Моника";
	L["Julie Honeywell"] = "Джули Медовушка";
	L["Jay Lemieux"] = "Джей Лемье";
	L["Young Blanchy"] = "Молодая Савраска";

	--Gruul's Lair

	--HFC: The Blood Furnace
	L["Gunny"] = "Пушкаренок";
	L["Caza'rez"] = "Каса'рес";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Главный разведчик Чадвик";
	L["Stone Guard Stok'ton"] = "Каменный страж Сток'тон";
	L["Reinforced Fel Iron Chest"] = "Укрепленный сундук из оскверненного железа";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Палач из клана Изувеченной Длани";
	L["Private Jacint"] = "Рядовой Джасинт";
	L["Rifleman Brownbeard"] = "Ружейник Буробород";
	L["Captain Alina"] = "Капитан Алина";
	L["Scout Orgarr"] = "Разведчик Оргарр";
	L["Korag Proudmane"] = "Кораг Гордая Грива";
	L["Captain Boneshatter"] = "Капитан Костолом";
	L["Randy Whizzlesprocket"] = "Рэнди Свистельник";
	L["Drisella"] = "Дризелла";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Баронесса Дороти Милстип";
	L["Lady Catriona Von'Indi"] = "Леди Катриона Фон'Инди";
	L["Lady Keira Berrybuck"] = "Леди Кейра Ягодная Корзина";
	L["Baron Rafe Dreuger"] = "Барон Раф Дреугер";
	L["Lord Robin Daris"] = "Лорд Робин Дэрис";
	L["Lord Crispin Ference"] = "Лорд Криспин Ференс";
	L["Red Riding Hood"] = "Красная Шапочка";
	L["Wizard of Oz"] = "Волшебник страны Oз";
	L["The Master's Terrace"] = "Терраса Мастера";
	L["Servant Quarters"] = "Жильё прислуги";
	L["Hastings <The Caretaker>"] = "Гастингс <Управляющий>";
	L["Berthold <The Doorman>"] = "Бертольд <Привратник>";
	L["Calliard <The Nightman>"] = "Кальярд <Ночной страж>";
	L["Koren <The Blacksmith>"] = "Корен <Кузнец>";
	L["Bennett <The Sergeant at Arms>"] = "Беннет <Начальник охраны>";
	L["Keanna's Log"] = "Записи Кеанны";
	L["Ebonlocke <The Noble>"] = "Чернодрев <Аристократ>";
	L["Sebastian <The Organist>"] = "Себастиан <Органист>";
	L["Barnes <The Stage Manager>"] = "Барнс <Конферансье>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Путь к разрушенным лестницам";
	L["Broken Stairs"] = "Сломаная лесница";
	L["Ramp to Guardian's Library"] = "Рампа к библиотеку стражи";
	L["Mysterious Bookshelf"] = "Подозрительные книжные полки";
	L["Ramp up to the Celestial Watch"] = "Подъём к небесному надзору";
	L["Ramp down to the Gamesman's Hall"] = "Спуск в игровой зал";
	L["Ramp to Medivh's Chamber"] = "Рампа в комнату Медива";
	L["Spiral Stairs to Netherspace"] = "Спиральные лестницы к Пустомари";
	L["Wravien <The Mage>"] = "Вравьен <Маг>";
	L["Gradav <The Warlock>"] = "Градав <Чернокнижник>";
	L["Kamsis <The Conjurer>"] = "Камсис <Кудесник>";
	L["Ythyar"] = "Айтар";
	L["Echo of Medivh"] = "Эхо Медива";

	--Magisters Terrace
	L["Exarch Larethor"] = "Экзарх Ларетор";
	L["Fel Crystals"] = "Кристалл Скверны";
	L["Apoko"] = "Апоко";
	L["Eramas Brightblaze"] = "Эрамас Сияющее Пламя";
	L["Ellrys Duskhallow"] = "Эллриса Почитательница Тени";
	L["Fizzle"] = "Пшикс";
	L["Garaxxas"] = "Гараксас";
	L["Sliver <Garaxxas' Pet>"] = "Лыббс <Питомец Гараксаса>";
	L["Kagani Nightstrike"] = "Кагани Ночной Удар";
	L["Warlord Salaris"] = "Полководец Саларис";
	L["Yazzai"] = "Яззай";
	L["Zelfan"] = "Зелфан";
	L["Tyrith"] = "Тирит";
	L["Scrying Orb"] = "Гадательный шар Соланиана";

	--Sunwell Plateau
	L["Madrigosa"] = "Мадригоса";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Милхаус Манашторм";
	L["Third Fragment Guardian"] = "Страж третьего фрагмента";
	L["Udalo"] = "Адало";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Переполненный зарядом контейнер с маной";

	--TK: The Eye

--*****************
-- Wrath of the Lich King Instances
--*****************

	--Azjol-Nerub: Ahn'kahet: The Old Kingdom
	L["Seer Ixit"] = "Провидец Изит";
	L["Ahn'kahet Brazier"] = "Ан'кахетская жаровня";

	--Azjol-Nerub: Azjol-Nerub
	L["Reclaimer A'zak"] = "Завоеватель А'зак";
	L["Watcher Gashra"] = "Дозорный Гашра";
	L["Watcher Narjil"] = "Дозорный Нарджил";
	L["Watcher Silthik"] = "Дозорный Силтик";
	L["Elder Nurgen"] = "Предок Нурген";

	--Caverns of Time: The Culling of Stratholme
	L["The Culling of Stratholme"] = "Очищение Стратхольма";
	L["Scourge Invasion Points"] = "Точки вторжения Плети";
	L["Guardian of Time"] = "Хранитель Времени";
	L["Chromie"] = "Хроми";

	--Drak'Tharon Keep
	L["Image of Drakuru"] = "Проекция Дракуру";
	L["Kurzel"] = "Курцель";
	L["Elder Kilias"] = "Предок Килиас";
	L["Drakuru's Brazier"] = "Жаровня Дракуру";

	--The Frozen Halls: Halls of Reflection
	--3 beginning NPCs omitted, see The Forge of Souls
	L["The Captain's Chest"] = "Сундук капитана";

	--The Frozen Halls: Pit of Saron
	--6 beginning NPCs omitted, see The Forge of Souls
	L["Martin Victus"] = "Мартин Викт";
	L["Gorkun Ironskull"] = "Горкун Железный Череп";
	L["Rimefang"] = "Иний";

	--The Frozen Halls: The Forge of Souls
	--Lady Jaina Proudmoore omitted, in Hyjal Summit
	L["Archmage Koreln <Kirin Tor>"] = "Верховный маг Корелн <Кирин-Тор>";
	L["Archmage Elandra <Kirin Tor>"] = "Верховный маг Эландра <Кирин-Тор>";
	L["Lady Sylvanas Windrunner <Banshee Queen>"] = "Леди Сильвана Ветрокрылая";
	L["Dark Ranger Loralen"] = "Темный следопыт Лорален";
	L["Dark Ranger Kalira"] = "Темный следопыт Калира";

	--Gundrak
	L["Chronicler Bah'Kini"] = "Летописец Ба'кини";
	L["Tol'mar"] = "Тол'мар";
	L["Elder Ohanzee"] = "Предок Оханзи";

	--Icecrown Citadel
	L["To next map"] = "На следеющею карту";
	L["From previous map"] = "На предыдущую карту";
	L["Upper Spire"] = "Верхний ярус";
	L["Sindragosa's Lair"] = "Логово Синдрагосы";
	L["Stinky"] = "Вонючка";
	L["Precious"] = "Прелесть";
	L["Rimefang"] = "Иней";	-- NPC: 37533
	L["Spinestalker"] = "Хребтохруст";	-- NPC: 37534
	L["Sister Svalna"] = "Сестра Свална";	-- NPC: 37126

	--Naxxramas
	L["Mr. Bigglesworth"] = "Мистер Бигглсуорт";
	L["Frostwyrm Lair"] = "Логово Ледяного Змея";
	L["Teleporter to Middle"] = "Телепорт в центр";

	--The Obsidian Sanctum
	L["Black Dragonflight Chamber"] = "Комната черных драконов";

	--Onyxia's Lair

	--The Ruby Sanctum
	L["Red Dragonflight Chamber"] = "Комната красных драконов";

	--The Nexus: The Eye of Eternity

	--The Nexus: The Nexus
	L["Warmage Kaitlyn"] = "Боевой маг Кейтлин";
	L["Berinand's Research"] = "Исследования Беринарда";
	L["Elder Igasho"] = "Предок Игашо";

	--The Nexus: The Oculus
	L["Belgaristrasz"] = "Белгаристраз";
	L["Eternos"] = "Этернос";
	L["Verdisa"] = "Вердиса";
	L["Centrifuge Construct"] = "Центрифужное создание";
	L["Cache of Eregos"] = "Тайник Эрегоса";

	--Trial of the Champion
	L["Marshal Jacob Alerius"] = "Маршал Якоб Алерий";
	L["Ambrose Boltspark"] = "Амброз Искрокрут";
	L["Colosos"] = "Колосус";
	L["Jaelyne Evensong"] = "Джейлин Закатная Песня";
	L["Lana Stouthammer"] = "Лана Твердомолот";

	--Trial of the Crusader
	L["Heroic: Trial of the Grand Crusader"] = "Героик: Испытание великого крестоносца";
	L["Cavern Entrance"] = "Вход";

	--Ulduar General
	L["The Siege"] = "Осада"; --A
	L["The Keepers"] = "Хранители"; --C

	--Ulduar A
	L["Tower of Life"] = "Башня Жизни";
	L["Tower of Flame"] = "Башня Пламени";
	L["Tower of Frost"] = "Башня Холода";
	L["Tower of Storms"] = "Башня Гроз";

	--Ulduar B
	L["Prospector Doren"] = "Геолог Дорен";
	L["Archivum Console"] = "Панель управления Архивом";

	--Ulduar C
	L["Sif"] = "Сиф";

	--Ulduar D

	--Ulduar E

	--Ulduar: Halls of Lightning
	L["Stormherald Eljrrin"] = "Штормовестник Элдррин";

	--Ulduar: Halls of Stone
	L["Kaldir Ironbane"] = "Калдир Железоруб";
	L["Tribunal Chest"] = "Сундук Трибунала";
	L["Elder Yurauk"] = "Предок Яруак";
	L["Brann Bronzebeard"] = "Бранн Бронзобород";

	--Utgarde Keep: Utgarde Keep
	L["Defender Mordun"] = "Защитник Мордун";
	L["Dark Ranger Marrah"] = "Темный следопыт Марра";
	L["Elder Jarten"] = "Предок Яртен";

	--Utgarde Keep: Utgarde Pinnacle
	L["Brigg Smallshanks"] = "Бригг Мелкотруб";
	L["Image of Argent Confessor Paletress"] = "Проекция исповедницы Серебряного Авангарда Пейлтресс";
	L["Elder Chogan'gada"] = "Предок Чоган'гада";

	--Vault of Archavon

	--The Violet Hold
	L["Lieutenant Sinclari"] = "Лейтенант Синклари";

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "Даснурими <Геолог>";
	L["Lord Afrasastrasz"] = "Лорд Афрасастраз";

	--Caverns of Time: End Time
	L["Alurmi"] = "Алурми";
	L["Nozdormu"] = "Ноздорму";

	--Caverns of Time: Hour of Twilight

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "Лура Гневная Лоза <Собиратель кристаллизованного кремня>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "Наресир Штормовая Ярость <Интендант Хиджальских мстителей>";

	--Grim Batol
	L["Baleflame"] = "Пламегон";
	L["Farseer Tooranu <The Earthen Ring>"] = "Предсказатель Тоорану <Служители Земли>";
	L["Velastrasza"] = "Веластраза";

	--Halls of Origination
	L["Large Stone Obelisk"] = "Большой каменный обелиск";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "Капитан Хадан";
	L["Tol'vir Grave"] = "Тол'вирская могила";

	--Shadowfang Keep
	L["Apothecary Trio"] = "Трио аптекарей"; --
	L["Apothecary Hummel <Crown Chemical Co.>"] = "Аптекарь Хаммел <Королевская химическая компания>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "Аптекарь Бакстер <Королевская химическая компания>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "Аптекарь Фрай <Королевская химическая компания>";
	L["Packleader Ivar Bloodfang"] = "Вожак стаи Ивар Кровавый Клык";
	L["Deathstalker Commander Belmont"] = "Командир стражей смерти Бельмонт";
	L["Haunted Stable Hand"] = "Дух помощника смотрителя стойл";
	L["Investigator Fezzen Brasstacks"] = "Испытатель Феззен Клейстр";

	--The Bastion of Twilight

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "Хранитель земли Изра <Служители Земли>";

	--The Vortex Pinnacle
	L["Itesh"] = "Итеш";
	L["Magical Brazier"] = "Магическая жаровня";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "Капитан Тейлор";
	L["Legionnaire Nazgrim"] = "Легионер Назгрим";
	L["Neptulon"] = "Нептулон";

	--Zul'Aman
	L["Vol'jin"] = "Вол'джин";
	L["Witch Doctor T'wansi"] = "Знахарь Т'ванши";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "Кровавый страж Хаккуз <Элита племени Черного Копья>";
	L["Voodoo Pile"] = "Куча черепов вуду";
	L["Bakkalzu"] = "Баккальзу";
	L["Hazlek"] = "Хазлек";
	L["The Map of Zul'Aman"] = "Карта Зул'Амана";
	L["Norkani"] = "Норкани";
	L["Kasha"] = "Кайша";
	L["Thurg"] = "Тург";
	L["Gazakroth"] = "Газакрот";
	L["Lord Raadan"] = "Лорд Раадан";
	L["Darkheart"] = "Черносерд";
	L["Alyson Antille"] = "Алисон Антиль";
	L["Slither"] = "Скользь";
	L["Fenstalker"] = "Болотный ловец";
	L["Koragg"] = "Корагг";
	L["Zungam"] = "Зангам";
	L["Forest Frogs"] = "Лесная лягушка";
	L["Eulinda <Reagents>"] = "Эулинда <Реагенты>";
	L["Harald <Food Vendor>"] = "Гаральд <Продавец еды>";
	L["Arinoth"] = "Аринот";
	L["Kaldrick"] = "Кальдрик";
	L["Lenzo"] = "Ленцо";
	L["Mawago"] = "Маваго";
	L["Melasong"] = "Меласонг";
	L["Melissa"] = "Мелисса";
	L["Micah"] = "Мика";
	L["Relissa"] = "Релисса";
	L["Rosa"] = "Роза";
	L["Tyllan"] = "Тиллан";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "Брини Болторез <Финансовый воротила пиратов Черноводья>";
	L["Vehini <Assault Provisions>"] = "Вехини <Поставщик провизии для армии>";
	L["Overseer Blingbang"] = "Инспектор Бадабум";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "Умертвительница Т'ара <Ветеран Черного Копья>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "Умертвительница Ваэна <Ветеран Черного Копья>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "Умертвительница Залла <Ветеран Черного Копья>";
	L["Helpful Jungle Monkey"] = "Услужливая мартышка";
	L["Venomancer Mauri <The Snake's Whisper>"] = "Ядомант Маури <Змееязыкая>";
	L["Zanzil's Cauldron of Toxic Torment"] = "Котел Занзила с едкой щелочью";
	L["Tiki Lord Mu'Loa"] = "Вождь тики Му'Лоа";
	L["Gub <Destroyer of Fish>"] = "Габ <Гроза рыб>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "Ядомант Т'Кулу <Ядовитый укус>";
	L["Tor-Tun <The Slumberer>"] = "Тор-Тун <Спящий>";
	L["Kaulema the Mover"] = "Каулема Толкатель";
	L["Berserking Boulder Roller"] = "Яростный выворачиватель валунов";
	L["Zanzil's Cauldron of Frostburn Formula"] = "Котел Занзила с раствором обжигающего холода";
	L["Mor'Lek the Dismantler"] = "Мор'Лек Расчленитель";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "Доктор Ку'ин <Тролль-знахарка>";
	L["Zanza the Restless"] = "Занза Неупокоенный";
	L["Mortaxx <The Tolling Bell>"] = "Мортакс <Предвестник смерти>";
	L["Tiki Lord Zim'wae"] = "Вождь тики Зим'вэ";
	L["Zanzil's Cauldron of Burning Blood"] = "Котел Занзила с пылающей кровью";

--*********************
-- Mists of Pandaria Instances
--*********************

	--Gate of the Setting Sun
	L["Bowmistress Li <Guard Captain>"] = "Лучница Ли <Капитан стражи>";

	--Heart of Fear

	--Mogu'shan Palace
	L["Sinan the Dreamer"] = "Сынань Мечтательница";

	--Mogu'shan Vaults

	--Scarlet Halls
	L["Commander Lindon"] = "Командир Линдон";
	L["Hooded Crusader"] = "Рыцарь в капюшоне";
	L["Bucket of Meaty Dog Food"] = "Ведро с собачьим кормом";
	L["Reinforced Archery Target"] = "Укрепленная мишень";

	--Scarlet Monastery

	--Scholomance
	L["Instructor Chillheart's Phylactery"] = "Филактерия инструктора Ледяное Сердце";
	L["Professor Slate"] = "Профессор Слейт";
	L["Polyformic Acid Potion"] = "Наука о кислоте";
	L["Talking Skull"] = "Говорящий череп";
	L["In the Shadow of the Light"] = "В тени света";
	L["Kel'Thuzad's Deep Knowledge"] = "Сокровенное знание Кел'Тузада";
	L["Forbidden Rites and other Rituals Necromantic"] = "Запретные обряды и иные ритуалы некромантов";
	L["Coffer of Forgotten Souls"] = "Сундук забытых душ";
	L["The Dark Grimoire"] = "Гримуар Тьмы";

	--Shado-Pan Monastery
	L["Ban Bearheart"] = "Бань Медвежье Сердце";

	--Siege of Niuzao Temple
	L["Shado-Master Chum Kiu"] = "Шадо-мастер Чум Киу";

	--Siege of Orgrimmar

	--Stormstout Brewery
	L["Auntie Stormstout"] = "Тетушка Буйный Портер";
	L["Chen Stormstout"] = "Чэнь Буйный Портер";

	--Temple of the Jade Serpent
	L["Master Windstrong"] = "Мастер Порывистый Ветер";
	L["Priestess Summerpetal"] = "Жрица Летний Лепесток";

	--Terrace of Endless Spring

	--Throne of Thunder
	L["Monara <The Last Queen>"] = "Монара <Последняя королева>";
	L["No'ku Stormsayer <Lord of Tempest>"] = "Но'ку Буревестник <Владыка бури>";
	L["Rocky Horror"] = "Скальный ужас";
	L["Focused Eye"] = "Сосредоточенный глаз";
	L["Unblinking Eye"] = "Немигающий глаз";
	L["Archritualist Kelada"] = "Предводитель ритуалистов Келад";
	L["Flesh'rok the Diseased <Primordial Saurok Horror>"] = "Мясо'рок Прокаженный <Древний ужас>";
	L["Zao'cho <The Emperor's Shield>"] = "Зао'чо <Щит императора>";

--*********************
-- Warlords of Draenor Instances
--*********************

	--Auchindoun

	--Blackrock Foundry

	--Bloodmaul Slag Mines

	--The Everbloom

	--Grimrail Depot
	--L["Train Ride"] = "Train Ride";

	--Highmaul

	--Iron Docks

	--Shadowmoon Burial Grounds

	--Skyreach

	--Upper Blackrock Spire
--@end-do-not-package@

end