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
local L = AceLocale:NewLocale("Atlas", "zhTW", false);

if ( GetLocale() == "zhTW" ) then
-- Define the leading strings to be ignored while sorting
-- Ex: The Stockade
AtlasSortIgnore = {};

-- Syntax: ["real_zone_name"] = "localized map zone name"
AtlasZoneSubstitutions = {
	["Ahn'Qiraj"] = "安其拉神廟";
	["Karazhan"] = "卡拉贊 - 1.開始";
};
end


if L then
--@localization(locale="zhTW", format="lua_additive_table")@

--@do-not-package@
--************************************************
-- UI terms and common strings
--************************************************
	L["ATLAS_TITLE"] = "Atlas 地圖集";

	L["BINDING_HEADER_ATLAS_TITLE"] = "Atlas 按鍵設定";
	L["BINDING_NAME_ATLAS_TOGGLE"] = "開啟/關閉 Atlas";
	L["BINDING_NAME_ATLAS_OPTIONS"] = "切換設定";
	L["BINDING_NAME_ATLAS_AUTOSEL"] = "自動選擇";

	L["ATLAS_SLASH"] = "/atlas";
	L["ATLAS_SLASH_OPTIONS"] = "options";

	L["ATLAS_STRING_LOCATION"] = "所在位置";
	L["ATLAS_STRING_LEVELRANGE"] = "等級範圍";
	L["ATLAS_STRING_RECLEVELRANGE"] = "建議等級"; -- abbrevation and shorten of "Recommended Level Range", the dungeon's recommended level range
	L["ATLAS_STRING_PLAYERLIMIT"] = "人數上限";
	L["ATLAS_STRING_SELECT_CAT"] = "選擇類別";
	L["ATLAS_STRING_SELECT_MAP"] = "選擇地圖";
	L["ATLAS_STRING_SEARCH"] = "搜尋";
	L["ATLAS_STRING_CLEAR"] = "清除";
	L["ATLAS_STRING_MINLEVEL"] = "最低等級";

	L["ATLAS_OPTIONS_BUTTON"] = "選項";
	L["ATLAS_OPTIONS_SHOWBUT"] = "在小地圖旁顯示 Atlas 按鈕";
	L["ATLAS_OPTIONS_SHOWBUT_TIP"] = "在小地圖旁顯示 Atlas 按鈕";
	L["ATLAS_OPTIONS_AUTOSEL"] = "自動選擇副本地圖";
	L["ATLAS_OPTIONS_AUTOSEL_TIP"] = "Atlas 可偵測您目前所在的副區域以顯示一個最佳的副本地圖";
	L["ATLAS_OPTIONS_BUTPOS"] = "按鈕位置";
	L["ATLAS_OPTIONS_LOCK"] = "鎖定 Atlas 視窗位置";
	L["ATLAS_OPTIONS_LOCK_TIP"] = "設定將 Atlas 視窗位置鎖定或不鎖定";
	L["ATLAS_OPTIONS_TRANS"] = "透明度";
	L["ATLAS_OPTIONS_RCLICK"] = "滑鼠右鍵開啟世界地圖";
	L["ATLAS_OPTIONS_RCLICK_TIP"] = "啟用在 Atlas 視窗中按下滑鼠右鍵自動切換到魔獸的世界地圖";
	L["ATLAS_OPTIONS_RESETPOS"] = "重設位置";
	L["ATLAS_OPTIONS_ACRONYMS"] = "顯示副本縮寫";
	L["ATLAS_OPTIONS_ACRONYMS_TIP"] = "在地圖的詳盡敘述中顯示副本的縮寫";
	L["ATLAS_OPTIONS_SCALE"] = "Atlas 視窗大小比率";
	L["ATLAS_OPTIONS_BOSS_DESC"] = "當首領資訊可獲取時, 顯示該資訊";
	L["ATLAS_OPTIONS_BOSS_DESC_TIP"] = "當滑鼠游標移動到地圖上首領的標號時, 並且首領資訊可獲取時, 顯示該首領的相關資訊.";
	L["ATLAS_OPTIONS_BOSS_DESC_SCALE"] = "首領資訊提示視窗大小比率";
	L["ATLAS_OPTIONS_BUTRAD"] = "按鈕半徑範圍";
	L["ATLAS_OPTIONS_CLAMPED"] = "使 Atlas 視窗不超出遊戲畫面";
	L["ATLAS_OPTIONS_CLAMPED_TIP"] = "使 Atlas 視窗被拖曳時不會超出遊戲主畫面的邊界, 關閉此選項則可將 Atlas 視窗拖曳並超出遊戲畫面邊界";
	L["ATLAS_OPTIONS_CTRL"] = "按住 Ctrl 鍵以顯示工具提示";
	L["ATLAS_OPTIONS_CTRL_TIP"] = "勾選後, 當滑鼠移到地圖資訊欄位時, 按下 Ctrl 控制鍵, 則會將資訊的完整資訊以提示型態顯示. 當資訊過長而被截斷時很有用.";
	L["ATLAS_OPTIONS_DONTSHOWAGAIN"] = "不再顯示相同訊息。";
	L["ATLAS_OPTIONS_CHECKMODULE"] = "提醒我是否有遺失的模組或插件";
	L["ATLAS_OPTIONS_CHECKMODULE_TIP"] = "勾選以在每次登入 WoW 時檢查是否有遺失的 Atlas 模組或插件。";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN"] = "副本清單以難易度色彩顯示";
	L["ATLAS_OPTIONS_COLORINGDROPDOWN_TIP"] = "依據副本建議的最低進入等級、以及玩家現今等級的差異，將副本清單以難易度色彩顯示。";

	L["ATLAS_BUTTON_CLOSE"] = "關閉";
	L["ATLAS_LDB_HINT"] = "左鍵開啟 Atlas.\n中鍵開啟 Atlas 選項.\n右鍵打開顯示選單.";
	L["ATLAS_MINIMAPLDB_HINT"] = "左鍵開啟 Atlas.\n右鍵開啟 Atlas 選項.\n左鍵並拖曳以移動圖示按鈕位置.";

	L["ATLAS_OPTIONS_CATDD"] = "副本地圖分類方式:";
	L["ATLAS_DDL_CONTINENT"] = "依不同大陸分類";
	L["ATLAS_DDL_CONTINENT_EASTERN"] = "東部王國副本";
	L["ATLAS_DDL_CONTINENT_KALIMDOR"] = "卡林多副本";
	L["ATLAS_DDL_CONTINENT_OUTLAND"] = "外域副本";
	L["ATLAS_DDL_CONTINENT_NORTHREND"] = "北裂境副本";
	L["ATLAS_DDL_CONTINENT_DEEPHOLM"] = "地深之源副本";
	L["ATLAS_DDL_CONTINENT_PANDARIA"] = "潘達利亞副本";
	L["ATLAS_DDL_CONTINENT_DRAENOR"] = "德拉諾副本";
	L["ATLAS_DDL_LEVEL"] = "依等級分類";
	L["ATLAS_DDL_LEVEL_UNDER45"] = "副本等級低於 45";
	L["ATLAS_DDL_LEVEL_45TO60"] = "副本等級介於 45-60";
	L["ATLAS_DDL_LEVEL_60TO70"] = "副本等級介於 60-70";
	L["ATLAS_DDL_LEVEL_70TO80"] = "副本等級介於 70-80";
	L["ATLAS_DDL_LEVEL_80TO85"] = "副本等級介於 80-85";
	L["ATLAS_DDL_LEVEL_85TO90"] = "副本等級介於 85-90";
	L["ATLAS_DDL_LEVEL_90TO100"] = "副本等級介於 90-100";
	L["ATLAS_DDL_LEVEL_100PLUS"] = "副本等級大於 100";
	L["ATLAS_DDL_PARTYSIZE"] = "依隊伍人數分類";
	L["ATLAS_DDL_PARTYSIZE_5_AE"] = "5 人副本 1/3";
	L["ATLAS_DDL_PARTYSIZE_5_FS"] = "5 人副本 2/3";
	L["ATLAS_DDL_PARTYSIZE_5_TZ"] = "5 人副本 3/3";
	L["ATLAS_DDL_PARTYSIZE_10_AN"] = "10 人副本 1/2";
	L["ATLAS_DDL_PARTYSIZE_10_OZ"] = "10 人副本 2/2";
	L["ATLAS_DDL_PARTYSIZE_20TO40AH"] = "20-40 人副本 1/2";
	L["ATLAS_DDL_PARTYSIZE_20TO40IZ"] = "20-40 人副本 2/2";
	L["ATLAS_DDL_EXPANSION"] = "依資料片分類";
	L["ATLAS_DDL_EXPANSION_OLD_AO"] = "舊世界副本 1/2";
	L["ATLAS_DDL_EXPANSION_OLD_PZ"] = "舊世界副本 2/2";
	L["ATLAS_DDL_EXPANSION_BC"] = "燃燒的遠征副本";
	L["ATLAS_DDL_EXPANSION_WOTLK"] = "巫妖王之怒副本";
	L["ATLAS_DDL_EXPANSION_CATA"] = "浩劫與重生副本";
	L["ATLAS_DDL_EXPANSION_MOP"] = "潘達利亞之謎副本";
	L["ATLAS_DDL_EXPANSION_WOD"] = "德拉諾之霸副本";
	L["ATLAS_DDL_TYPE"] = "依地圖類型分類";
	L["ATLAS_DDL_TYPE_INSTANCE_AB"] = "副本 1/5";
	L["ATLAS_DDL_TYPE_INSTANCE_CF"] = "副本 2/5";
	L["ATLAS_DDL_TYPE_INSTANCE_GM"] = "副本 3/5";
	L["ATLAS_DDL_TYPE_INSTANCE_NS"] = "副本 4/5";
	L["ATLAS_DDL_TYPE_INSTANCE_TZ"] = "副本 5/5";
	L["ATLAS_DDL_TYPE_ENTRANCE"] = "副本入口";

	L["ATLAS_INSTANCE_BUTTON"] = "副本";
	L["ATLAS_ENTRANCE_BUTTON"] = "入口";
	L["ATLAS_SEARCH_UNAVAIL"] = "搜尋功能停用";

	L["ATLAS_DEP_MSG1"] = "Atlas 偵測到過期的模組";
	L["ATLAS_DEP_MSG2"] = "這些模組已從這個角色被停用";
	L["ATLAS_DEP_MSG3"] = "請將這些模組從 AddOns 目錄移除";
	L["ATLAS_DEP_OK"] = "OK";

	L["ATLAS_INFO"] = "Atlas 訊息";
	L["ATLAS_INFO_12200"] = "重要提示：\n\n由於副本插件檔案大小日益增加，我們已獨立出部分副本地圖和內建插件\n到單獨的模組。\n\n您從各大遊戲插件網站所下載的 Atlas 插件，可能只包含了主要的核心功能\n與最新資料片裡的副本地圖。\n\n若您想要取得包含舊的資料片的所有地圖，以及 Atlas 團隊所開發的其他\n模組，您必須分別下載這些獨立模組的壓縮檔並分別進行安裝。\n\n請詳讀我們論壇的這個討論串以了解更多詳情：\n|cff6666ffhttp://www.atlasmod.com/phpBB3/viewtopic.php?t=1522|cffffffff\n或造訪我們的首頁：\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";
	L["ATLAS_INFO_12201"] = "我們最近新增了一個新的 Atlas 插件 - |cff6666ffAtlas 情境地圖|cffffffff，用以提供 WoW 5.0 \n起新增的情境事件的地圖。\n\n請參見我們的網站以取得更詳細的資訊，並請記得分別下載並安裝此插件。\n|cff6666ffhttp://www.atlasmod.com/|cffffffff";

	L["ATLAS_MISSING_MODULE"] = "Atlas 已偵測到遺失的模組/插件：";

--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************

	--Common strings
	L["East"] = "東";
	L["North"] = "北";
	L["South"] = "南";
	L["West"] = "西";

	--World Events, Festival
	L["Brewfest"] = "啤酒節";
	L["Hallow's End"] = "萬鬼節";
	L["Love is in the Air"] = "愛就在身邊";
	L["Lunar Festival"] = "新年慶典";
	L["Midsummer Festival"] = "仲夏節慶";

	--Misc strings
		--Symbols
		L["Colon"] = "：";
		L["Semicolon"] = "；";
		L["L-Parenthesis"] = "（";
		L["R-Parenthesis"] = "）";
		L["Comma"] = "，";
		L["Period"] = "。";
		L["Hyphen"] = "－";
		L["Slash"] = "／";
		L["L-SBracket"] = "【";
		L["R-SBracket"] = "】";
		L["L-DQuote"] = "「";
		L["R-DQuote"] = "」";
	L["Adult"] = "成年";
	L["AKA"] = "又稱";
	L["Arcane Container"] = "秘法容器";
	L["Arms Warrior"] = "武戰";
	L["Attunement Required"] = "需完成傳送門/鑰匙前置任務";
	L["Back"] = "後方";
	L["Basement"] = "地下室";
	L["Blacksmithing Plans"] = "黑鐵鍛造圖樣";
	L["Chase Begins"] = "追逐開始";
	L["Chase Ends"] = "追逐結束";
	L["Child"] = "幼年";
	L["Click to open Dungeon Journal window."] = "按下以開啟地城導覽視窗.";
	L["Connection"] = "通道";
	L["Elevator"] = "電梯";
	L["End"] = "結束";
	L["Engineer"] = "工程師";
	L["Entrance"] = "入口";
	L["Event"] = "事件";
	L["Exalted"] = "崇拜";
	L["Exit"] = "出口";
	L["Fourth Stop"] = "第四停留點";
	L["Front"] = "前方";
	L["Ghost"] = "鬼魂";
	L["Graveyard"] = "墓地";
	L["Heroic"] = "英雄";
	L["Holy Paladin"] = "神聖聖騎";
	L["Holy Priest"] = "神聖牧師";
	L["Hunter"] = "獵人";
	L["Imp"] = "小鬼";
	L["Key"] = "鑰匙";
	L["Lower"] = "下層";
	L["Mage"] = "法師";
	L["Meeting Stone"] = "集合石";
	L["Middle"] = "中間";
	L["Monk"] = "僧侶";
	L["Moonwell"] = "月井";
	L["Optional"] = "可選擇";
	L["Orange"] = "橙";
	L["Outside"] = "戶外";
	L["Paladin"] = "聖騎士";
	L["Portal"] = "入口/傳送門";
	L["Priest"] = "牧師";
	L["Protection Warrior"] = "防戰";
	L["Purple"] = "紫";
	L["Random"] = "隨機";
	L["Rare"] = "稀有";
	L["Repair"] = "修理";
	L["Retribution Paladin"] = "懲戒聖騎";
	L["Rewards"] = "獎勵";
	L["Rogue"] = "盜賊";
	L["Second Stop"] = "第二停留點";
	L["Shadow Priest"] = "暗影牧師";
	L["Shaman"] = "薩滿";
	L["Spawn Point"] = "生成點";
	L["Start"] = "開始";
	L["Summon"] = "召喚";
	L["Teleporter"] = "傳送";
	L["Teleporter destination"] = "傳送目的地";
	L["Third Stop"] = "第三停留點";
	L["Top"] = "上方";
	L["Tunnel"] = "通道";
	L["Underwater"] = "水下";
	L["Upper"] = "上層";
	L["Varies"] = "多處";
	L["Wanders"] = "徘徊";
	L["Warlock"] = "術士";
	L["Warrior"] = "戰士";
	L["Wave 5"] = "第 5 波";
	L["Wave 6"] = "第 6 波";
	L["Wave 10"] = "第 10 波";
	L["Wave 12"] = "第 12 波";
	L["Wave 18"] = "第 18 波";	
	L["MapsNotFound"] = "目前的副本找不到對應的地圖影像檔.\n\n請確認您是否有安裝 Atlas 相關的副本地圖模組.";
	L["PossibleMissingModule"] = "遺失的地圖應是來自以下的模組: ";

	--Classic Acronyms
	L["AQ"] = "AQ"; -- Ahn'Qiraj 安其拉
	L["AQ10"] = "AQ10"; -- Ruins of Ahn'Qiraj 安其拉廢墟
	L["AQ40"] = "AQ40"; -- Temple of Ahn'Qiraj 安其拉神廟
	L["BFD"] = "BFD/黑淵"; -- Blackfathom Deeps 黑暗深淵
	L["BRD"] = "BRD/黑石淵"; -- Blackrock Depths 黑石深淵
	L["BRM"] = "BRM/黑石山"; -- Blackrock Mountain 黑石山
	L["BWL"] = "BWL/黑翼"; -- Blackwing Lair 黑翼之巢
	L["DM"] = "DM/厄運"; -- Dire Maul 厄運之槌
	L["Gnome"] = "Gnome/諾姆"; -- Gnomeregan 諾姆瑞根
	L["LBRS"] = "LBRS/黑下";  -- Lower Blackrock Spire 黑石塔下層
	L["Mara"] = "Mara/瑪拉"; -- Maraudon 瑪拉頓
	L["MC"] = "MC"; -- Molten Core 熔火之心
	L["RFC"] = "RFC/怒焰"; -- Ragefire Chasm 怒焰裂谷
	L["RFD"] = "RFD"; -- Razorfen Downs 剃刀高地
	L["RFK"] = "RFK"; -- Razorfen Kraul 剃刀沼澤
	L["ST"] = "ST/神廟"; -- Sunken Temple 沉沒的神廟
	L["Strat"] = "Strat/斯坦"; -- Stratholme 斯坦索姆
	L["Stocks"] = "監獄"; -- The Stockade 監獄
	L["Ulda"] = "Ulda"; -- Uldaman 奧達曼
	L["WC"] = "WC/哀嚎"; -- Wailing Caverns 哀嚎洞穴
	L["ZF"] = "ZF/祖法"; -- Zul'Farrak 祖爾法拉克

	--BC Acronyms
	L["AC"] = "AC"; -- Auchenai Crypts 奧奇奈地穴
	L["Arca"] = "Arca/亞克"; -- The Arcatraz 亞克崔茲
	L["Auch"] = "Auch"; -- Auchindoun 奧齊頓
	L["BF"] = "BF"; -- The Blood Furnace 血熔爐
	L["BT"] = "BT/黑廟"; -- Black Temple 黑暗神廟
	L["Bota"] = "Bota/波塔"; -- The Botanica 波塔尼卡
	L["CoT"] = "CoT"; -- Caverns of Time 時光之穴
	L["CoT1"] = "CoT1/舊址"; -- Old Hillsbrad Foothills 希爾斯布萊德丘陵舊址
	L["CoT2"] = "CoT2/黑沼"; -- The Black Morass 黑色沼澤
	L["CoT3"] = "CoT3/海山"; -- Hyjal Summit 海加爾山
	L["CR"] = "CR/盤牙"; -- Coilfang Reservoir
	L["GL"] = "GL/戈魯爾"; -- Gruul's Lair 戈魯爾之巢
	L["HC"] = "HC/火堡"; -- Hellfire Citadel 地獄火堡壘
	L["Kara"] = "Kara/卡拉"; -- Karazhan 卡拉贊
	L["MaT"] = "MT/博學"; -- Magisters' Terrace 博學者殿堂
	L["Mag"] = "Mag/瑪瑟"; -- Magtheridon's Lair 瑪瑟里頓的巢穴
	L["Mech"] = "Mech/麥克"; -- The Mechanar 麥克納爾
	L["MT"] = "MT/法力"; -- Mana-Tombs 法力墓地
	L["Ramp"] = "Ramp"; -- Hellfire Ramparts 地獄火壁壘
	L["SSC"] = "SSC/毒蛇"; -- Serpentshrine Cavern 毒蛇神殿洞穴
	L["Seth"] = "Seth/塞司克"; -- Sethekk Halls 塞司克大廳
	L["SH"] = "SH/破碎"; -- The Shattered Halls 破碎大廳
	L["SL"] = "SL/迷宮"; -- Shadow Labyrinth 暗影迷宮
	L["SP"] = "SP"; -- The Slave Pens 奴隸監獄
	L["SuP"] = "SP/太陽井"; -- Sunwell Plateau 太陽之井高地
	L["SV"] = "SV/蒸汽"; -- The Steamvault 蒸汽洞窟
	L["TK"] = "TK/風暴"; -- Tempest Keep 風暴要塞
	L["UB"] = "UB/深幽"; -- The Underbog 深幽泥沼

	--WotLK Acronyms
	L["AK, Kahet"] = "AK/安卡"; -- Ahn'kahet -- 安卡罕特
	L["AN, Nerub"] = "AN/奈幽"; -- Azjol-Nerub -- 阿茲歐-奈幽
	L["Champ"] = "勇士"; -- Trial of the Champion -- 勇士試煉
	L["CoT-Strat"] = "CoT斯坦"; -- Culling of Stratholme -- 斯坦索姆的抉擇
	L["Crus"] = "十字軍"; -- Trial of the Crusader --十字軍試煉
	L["DTK"] = "DTK/德拉克"; -- Drak'Tharon Keep -- 德拉克薩隆要塞
	L["FoS"] = "FoS/熔爐"; 
	L["FH1"] = "FH1"; -- The Forge of Souls -- 眾魂熔爐
	L["Gun"] = "Gun/剛德"; -- Gundrak -- 剛德拉克
	L["HoL"] = "HoL/雷光"; -- Halls of Lightning --雷光大廳
	L["HoR"] = "HoR/倒影"; 
	L["FH3"] = "FH3"; -- Halls of Reflection -- 倒影大廳
	L["HoS"] = "HoS/石廳"; -- Halls of Stone -- 石之大廳
 	L["IC"] = "ICC/冰冠"; -- Icecrown Citadel -- 冰冠城塞
	L["Nax"] = "Nax/納克"; -- Naxxramas -- 納克薩瑪斯
	L["Nex, Nexus"] = "Nex/奧心"; -- The Nexus -- 奧核之心
	L["Ocu"] = "Ocu/奧眼"; -- The Oculus -- 奧核之眼
	L["Ony"] = "Ony/黑龍"; -- Onyxia's Lair 奧妮克希亞的巢穴
	L["OS"] = "OS/黑曜"; -- The Obsidian Sanctum -- 黑曜聖所
	L["PoS"] = "PoS"; 
	L["FH2"] = "FH2"; -- Pit of Saron -- 薩倫之淵
	L["RS"] = "RS/晶紅"; -- The Ruby Sanctum
	L["TEoE"] = "TEoE/永恆"; -- The Eye of Eternity--永恆之眼
	L["UK, Keep"] = "UK/俄塞"; -- Utgarde Keep -- 俄特加德要塞
	L["Uldu"] = "Uldu/奧杜亞"; -- Ulduar-- 奧杜亞
	L["UP, Pinn"] = "UP/俄巔"; -- Utgarde Pinnacle -- 俄特加德之巔
	L["VH"] = "VH/紫堡"; -- The Violet Hold -- 紫羅蘭堡
	L["VoA"] = "VoA/亞夏"; -- Vault of Archavon--亞夏梵穹殿

	--Zones not included in LibBabble-Zone
	L["Crusaders' Coliseum"] = "銀白大競技場";

	--Cataclysm Acronyms
	L["BH"] = "BH"; --Baradin Hold 巴拉丁堡
	L["BoT"] = "BoT"; --Bastion of Twilight 暮光堡壘
	L["BRC"] = "BRC"; --Blackrock Caverns 黑石洞穴
	L["BWD"] = "BWD"; --Blackwing Descent 黑翼陷窟
	L["CoT-DS"] = "CoT-DS"; --Caverns of Time: Dragon Soul
	L["CoT-ET"] = "CoT-ET"; --Caverns of Time: End Time
	L["CoT-HoT"] = "CoT-HoT"; --Caverns of Time: Hour of Twilight
	L["CoT-WoE"] = "CoT-WoE"; --Caverns of Time: Well of Eternity
	L["FL"] = "FL"; --Firelands 火源之界
	L["GB"] = "GB"; --Grim Batol 格瑞姆巴托
	L["HoO"] = "HoO"; --Halls of Origination 起源大廳
	L["LCoT"] = "LCoT"; --Lost City of the Tol'vir 托維爾的失落之城
	L["SFK"] = "SFK/影牙"; -- Shadowfang Keep 影牙城堡
	L["TSC"] = "TSC"; --The Stonecore 石岩之心
	L["TWT"] = "TWT"; --Throne of the Four Winds 四風王座
	L["ToTT"] = "ToTT"; --Throne of the Tides 海潮王座
	L["VC"] = "VC/死礦"; -- The Deadmines 死亡礦坑
	L["VP"] = "VP"; --The Vortex Pinnacle 漩渦尖塔
	L["ZA"] = "ZA"; -- Zul'Aman 祖阿曼
	L["ZG"] = "ZG"; --Zul'Gurub 祖爾格拉布

	--MoP Acronyms
	L["GSS"] = "GSS"; --Gate of the Setting Sun
	L["Halls"] = "Halls/大廳"; -- Scarlet Halls
	L["HoF"] = "HoF"; --Heart of Fear
	L["MP"] = "MP"; --Mogu'shan Palace
	L["MV"] = "MV"; --Mogu'shan Vaults
	L["SM"] = "SM/血色"; -- Scarlet Monastery 血色修道院
	L["Scholo"] = "Scholo/通靈"; -- Scholomance 通靈學院
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
	L["MapA"] = " [1]"; -- For example: Shado-Pan Monastery [A]
	L["MapB"] = " [2]"; -- 一, 二, 三...won't work as somehow it will be sorted as 一, 三, 二, 四. so need to change to digits
	L["MapC"] = " [3]";
	L["MapD"] = " [4]";
	L["MapE"] = " [5]";
	L["MapF"] = " [6]";
	L["MapG"] = " [7]";
	L["MapH"] = " [8]";
	L["MapI"] = " [9]";
	L["MapJ"] = " [10]";

--************************************************
-- Instance Entrance Maps
--************************************************

	--Auchindoun (Entrance)
	L["Clarissa"] = "克萊瑞莎";
	L["Greatfather Aldrimus"] = "大祖父阿爾崔瑪斯";
	L["Ha'lei"] = "哈勒";
	L["Horvon the Armorer <Armorsmith>"] = "護甲匠霍沃 <護甲鍛造師>";
	L["Ramdor the Mad"] = "瘋狂者藍姆多";
	L["Nexus-Prince Haramad"] = "奈薩斯王子哈拉瑪德";
	L["\"Slim\" <Shady Dealer>"] = "『瘦子』 <黑市商人>";
	L["\"Captain\" Kaftiz"] = "隊長卡夫提茲";
	L["Dealer Tariq <Shady Dealer>"] = "商人塔爾利奎 <黑市商人>";
	L["Provisioner Tsaalt"] = "糧食供應者·茲索特";

	--Blackfathom Deeps (Entrance)

	--Blackrock Mountain (Entrance)
	L["Bodley"] = "布德利";
	L["Lothos Riftwaker"] = "洛索斯·天痕";
	L["Orb of Command"] = "命令寶珠";
	L["Scarshield Quartermaster <Scarshield Legion>"] = "裂盾軍需官 <裂盾軍團>";
	L["The Behemoth"] = "貝希摩斯";

	--Caverns of Time (Entrance)
	L["Steward of Time <Keepers of Time>"] = "時間服務員 <時光守望者>";
	L["Alexston Chrome <Tavern of Time>"] = "艾力克斯頓·科洛米 <時間酒館>";
	L["Yarley <Armorer>"] = "亞利 <護甲商>";
	L["Bortega <Reagents & Poison Supplies>"] = "伯特卡 <施法材料和毒藥供應商>";
	L["Alurmi <Keepers of Time Quartermaster>"] = "阿勒米 <時光守望者軍需官>";
	L["Galgrom <Provisioner>"] = "卡葛隆姆 <物資供應者>";
	L["Zaladormu"] = "薩拉多姆";
	L["Soridormi <The Scale of Sands>"] = "索芮朵蜜 <流沙之鱗>";
	L["Arazmodu <The Scale of Sands>"] = "阿拉斯莫杜 <流沙之鱗>";
	L["Andormu <Keepers of Time>"] = "安杜姆 <時光守望者>";
	L["Nozari <Keepers of Time>"] = "諾札瑞 <時光守望者>";
	L["Anachronos <Keepers of Time>"] = "安納克羅斯 <時光守望者>";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "隱多米 <寶石傳說的守護者>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "提多姆 <失落的神器看管者>";

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "莫塔格·史提海德";

	--Dire Maul (Entrance)
	L["Dire Pool"] = "厄運之池";
	L["Dire Maul Arena"] = "厄運競技場";
	L["Elder Mistwalker"] = "霧行長者";

	--Gnomeregan (Entrance)
	L["Torben Zapblast <Teleportation Specialist>"] = "托爾班·速轟 <傳送專家>";

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "通往血熔爐的階梯與通道";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "通往地獄火壁壘與破碎大廳的通道";
	L["Meeting Stone of Magtheridon's Lair"] = "集合石 - 瑪瑟里頓的巢穴";
	L["Meeting Stone of Hellfire Citadel"] = "集合石 - 地獄火堡壘";

	--Icecrown Citadel (Entrance)

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "大法師利瑞達";
	L["Archmage Alturus"] = "大法師艾特羅斯";
	L["Apprentice Darius"] = "學徒達瑞爾斯";
	L["Stairs to Underground Pond"] = "通往地底池塘的階梯";
	L["Stairs to Underground Well"] = "通往地底水井的階梯";
	L["Charred Bone Fragment"] = "燒焦的白骨碎片";

	--Maraudon (Entrance)
	L["The Nameless Prophet"] = "無名預言者";
	L["Cursed Centaur"] = "被詛咒的半人馬";
	L["Kherrah"] = "凱拉";

	--Scarlet Monastery (Entrance)

	--The Deadmines (Entrance)

	--Sunken Temple (Entrance)
	L["Priestess Udum'bra"] = "女祭師烏丹姆布拉";
	L["Gomora the Bloodletter"] = "『放血者』高摩拉";
	L["Captain Wyrmak"] = "維爾瑪克隊長";

	--Uldaman (Entrance)

	--Ulduar (Entrance)
	L["Shavalius the Fancy <Flight Master>"] = "『狂想』夏瓦利厄斯 <飛行管理員>";
	L["Chester Copperpot <General & Trade Supplies>"] = "查斯特·銅壺 <一般與貿易供應商>";
	L["Slosh <Food & Drink>"] = "斯洛許 <食物和飲料>";

	--Wailing Caverns (Entrance)

--************************************************
-- Kalimdor Instances (Classic)
--************************************************

	--Blackfathom Deeps
	L["Je'neu Sancrea <The Earthen Ring>"] = "耶努薩克雷 <陶土議會>";
	L["Sentinel Aluwyn"] = "哨兵阿露溫";
	L["Zeya"] = "仄亞";
	L["Altar of Blood"] = "血祭談";
	L["Fire of Aku'mai"] = "阿庫麥爾之火";
	L["Spoils of Blackfathom"] = "黑澗之寶";

	--Dire Maul (East)
	L["\"Ambassador\" Dagg'thol"] = "達格索大使";
	L["Furgus Warpwood"] = "佛格斯·扭木";
	L["Old Ironbark"] = "埃隆巴克";
	L["Ironbark the Redeemed"] = "贖罪的鐵朴";

	--Dire Maul (North)
	L["Druid of the Talon"] = "猛禽德魯伊";
	L["Stonemaul Ogre"] = "石槌巨魔";
	L["Knot Thimblejack"] = "諾特·希姆加克";

	--Dire Maul (West)
	L["Ferra"] = "費拉";
	L["Estulan <The Highborne>"] = "艾斯圖蘭";
	L["Shen'dralar Watcher"] = "辛德拉看守者";
	L["Pylons"] = "水晶塔";
	L["Ancient Equine Spirit"] = "上古聖馬之魂";
	L["Shen'dralar Ancient"] = "辛德拉古靈";
	L["Falrin Treeshaper"] = "法琳·樹形者";
	L["Lorekeeper Lydros"] = "博學者萊德羅斯";
	L["Lorekeeper Javon"] = "博學者亞沃";
	L["Lorekeeper Kildrath"] = "博學者基爾達斯";
	L["Lorekeeper Mykos"] = "博學者麥庫斯";
	L["Shen'dralar Provisioner"] = "辛德拉聖職者";

	--Maraudon	
	L["Elder Splitrock"] = "劈石長者";
	L["Celebras the Redeemed"] = "贖罪的塞雷布拉斯";

	--Ragefire Chasm
	L["Commander Bagran"] = "指揮官巴格仁";
	L["Invoker Xorenth"] = "塑能師索倫斯";
	L["Scout Cage"] = "斥侯牢籠";

	--Razorfen Downs
	L["Koristrasza"] = "柯莉史卓莎";
	L["Amnennar's Phylactery"] = "亞門納爾的骨匣";

	--Razorfen Kraul
	L["Auld Stonespire"] = "奧爾德·石塔";
	L["Spirit of Agamaggan <Ancient>"] = "阿迦瑪甘之靈 <先祖>";

	--Ruins of Ahn'Qiraj
	L["Four Kaldorei Elites"] = "四個卡多雷精英";
	L["Captain Qeez"] = "奎茲上尉";
	L["Captain Tuubid"] = "圖畢德上尉";
	L["Captain Drenn"] = "德蘭上尉";
	L["Captain Xurrem"] = "瑟瑞姆上尉";
	L["Major Yeggeth"] = "葉吉斯少校";
	L["Major Pakkon"] = "帕康少校";
	L["Colonel Zerran"] = "澤朗上校";
	L["Safe Room"] = "安全的空間";

	--Temple of Ahn'Qiraj
	L["Andorgos <Brood of Malygos>"] = "安多葛斯 <瑪里苟斯的後裔>";
	L["Vethsera <Brood of Ysera>"] = "溫瑟拉 <伊瑟拉的後裔>";
	L["Kandrostrasz <Brood of Alexstrasza>"] = "坎多斯塔茲 <雅立史卓莎的後裔>";
	L["Arygos"] = "亞雷戈斯";
	L["Caelestrasz"] = "凱雷斯特拉茲";
	L["Merithra of the Dream"] = "夢境之龍麥琳瑟拉";

	--Wailing Caverns
	L["Ebru <Disciple of Naralex>"] = "厄布魯 <納拉雷克斯的侍徒>"; -- 5768
	L["Nalpak <Disciple of Naralex>"] = "納爾派克 <納拉雷克斯的侍徒>"; -- 5767
	L["Muyoh <Disciple of Naralex>"] = "繆幽 <納拉雷克斯的侍徒>";  -- 3678
	L["Naralex"] = "納拉雷克斯"; -- 3679

	--Zul'Farrak
	L["Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>"] = "首席工程師膨嘯 <加基森水業公司>";
	L["Mazoga's Spirit"] = "瑪柔伽的靈魂";
	L["Tran'rek"] = "特蘭雷克";
	L["Weegli Blastfuse"] = "維格利";
	L["Raven"] = "拉文";
	L["Elder Wildmane"] = "蠻鬃長者";

--****************************
-- Eastern Kingdoms Instances (Classic)
--****************************

	--Blackrock Depths
	L["The Black Anvil"] = "黑鐵砧";
	L["The Vault"] = "地窖";
	L["Watchman Doomgrip"] = "衛兵杜格瑞普";
	L["Elder Morndeep"] = "深晨長者";
	L["Schematic: Field Repair Bot 74A"] = "結構圖:戰地修理機器人74A型";
	L["Private Rocknot"] = "羅克諾特下士";
	L["Mistress Nagmara"] = "娜瑪拉小姐";
	L["Jalinda Sprig <Morgan's Militia>"] = "加琳達 <摩根的民兵>";
	L["Oralius <Morgan's Militia>"] = "奧拉留斯 <摩根的民兵>";
	L["Thal'trak Proudtusk <Kargath Expeditionary Force>"] = "薩特拉克·長齒 <卡加斯遠征軍>";
	L["Galamav the Marksman <Kargath Expeditionary Force>"] = "『神射手』賈拉瑪弗 <卡加斯遠征軍>";
	L["Maxwort Uberglint"] = "麥克斯沃特·尤柏格林";
	L["Tinkee Steamboil"] = "丁奇·斯迪波爾";
	L["Yuka Screwspigot <Engineering Supplies>"] = "尤卡·斯庫比格特 <工程學供應商>";
	L["Abandonded Mole Machine"] = "棄置的鑽地機";
	L["Kevin Dawson <Morgan's Militia>"] = "凱文·多森 <摩根的民兵>";
	L["Lexlort <Kargath Expeditionary Force>"] = "雷克斯洛特 <卡加斯遠征軍>";
	L["Prospector Seymour <Morgan's Militia>"] = "勘查員希摩爾 <摩根的民兵>";
	L["Razal'blade <Kargath Expeditionary Force>"] = "拉札布雷德 <卡加斯遠征軍>";
	L["The Shadowforge Lock"] = "暗爐之鎖";
	L["Mayara Brightwing <Morgan's Militia>"] = "瑪亞拉·亮翼 <摩根的民兵>";
	L["Hierophant Theodora Mulvadania <Kargath Expeditionary Force>"] = "祭師塞朵拉·穆瓦丹尼 <卡加斯遠征軍>";
	L["Lokhtos Darkbargainer <The Thorium Brotherhood>"] = "羅克圖斯·暗契 <瑟銀兄弟會>";
	L["Mountaineer Orfus <Morgan's Militia>"] = "巡山人歐弗斯 <摩根的民兵>";
	L["Thunderheart <Kargath Expeditionary Force>"] = "桑德哈特 <卡加斯遠征軍>";
	L["Marshal Maxwell <Morgan's Militia>"] = "麥斯威爾元帥 <摩根的民兵>";
	L["Warlord Goretooth <Kargath Expeditionary Force>"] = "督軍高圖斯 <卡加斯遠征軍>";
	L["The Black Forge"] = "黑熔爐";
	L["Core Fragment"] = "熔核碎片";
	L["Shadowforge Brazier"] = "暗爐火盆";

	--Blackrock Spire (Lower)
	L["Urok's Tribute Pile"] = "烏洛克的貢品堆";
	L["Acride <Scarshield Legion>"] = "裂盾滲透者 <裂盾軍團>";
	L["Elder Stonefort"] = "石壘長者";
	L["Roughshod Pike"] = "尖銳長矛";

	--Blackwing Lair
	L["Orb of Domination"] = "統禦寶珠";
	L["Master Elemental Shaper Krixix"] = "大元素師克里希克";

	--Gnomeregan
	L["Chomper"] = "咀嚼者";
	L["Blastmaster Emi Shortfuse"] = "爆破專家艾米·短線";
	L["Murd Doc <S.A.F.E.>"] = "哮·狼的護腿 <S.A.F.E.>";
	L["Tink Sprocketwhistle <Engineering Supplies>"] = "丁克·鐵哨 <工程學供應商>";
	L["The Sparklematic 5200"] = "超級清潔器5200型！";
	L["Mail Box"] = "鎖甲箱";
	L["B.E Barechus <S.A.F.E.>"] = "怪怪頭 <S.A.F.E.>";
	L["Face <S.A.F.E.>"] = "小白臉 <S.A.F.E.>";
	L["Hann Ibal <S.A.F.E.>"] = "漢·泥巴 <S.A.F.E.>";

	--Molten Core

	--Stratholme - Crusader's Square
	L["Crusade Commander Eligor Dawnbringer <Brotherhood of the Light>"] = "指揮官艾利格·黎明使者 <聖光兄弟會>";
	L["Master Craftsman Wilhelm <Brotherhood of the Light>"] = "工匠大師維爾海姆 <聖光兄弟會>";
	L["Packmaster Stonebruiser <Brotherhood of the Light>"] = "軍需籌備官石漢 <聖光兄弟會>";
	L["Stratholme Courier"] = "斯坦索姆信差";
	L["Fras Siabi's Postbox"] = "弗拉斯·希亞比的郵箱";
	L["King's Square Postbox"] = "國王廣場郵箱";
	L["Festival Lane Postbox"] = "節日小道郵箱";
	L["Elder Farwhisper"] = "遙語長者";
	L["Market Row Postbox"] = "市場郵箱";

	--Stratholme - The Gauntlet
	L["Elders' Square Postbox"] = "長者廣場郵箱";
	L["Archmage Angela Dosantos <Brotherhood of the Light>"] = "大法師安琪拉·多桑杜 <聖光兄弟會>";
	L["Crusade Commander Korfax <Brotherhood of the Light>"] = "『聖光勇士』柯菲斯 <聖光兄弟會>";

	--The Deadmines
	L["Lieutenant Horatio Laine"] = "何瑞修·萊恩中尉";
	L["Kagtha"] = "卡格薩";
	L["Slinky Sharpshiv"] = "史琳琪·利刀";
	L["Quartermaster Lewis <Quartermaster>"] = "軍需官路易斯 <軍需官>";
	L["Miss Mayhem"] = "暴行小姐";
	L["Vend-O-Tron D-Luxe"] = "高級自動販賣機";

	--The Stockade
	L["Rifle Commander Coe"] = "步槍指揮官寇伊";
	L["Warden Thelwater"] = "典獄官塞爾沃特";
	L["Nurse Lillian"] = "護士莉蓮";

	--The Sunken Temple
	L["Lord Itharius"] = "伊薩里奧斯領主";
	L["Elder Starsong"] = "星歌長者";

	--Uldaman
	L["Baelog's Chest"] = "巴爾洛戈的箱子";
	L["Kand Sandseeker <Explorer's League>"] = "坎德·覓沙 <探險者協會>";
	L["Lead Prospector Durdin <Explorer's League>"] = "首席勘察員杜爾丁 <探險者協會>";
	L["Olga Runesworn <Explorer's League>"] = "歐嘉·符誓 <探險者協會>";
	L["Aoren Sunglow <The Reliquary>"] = "安歐連·日耀";
	L["High Examiner Tae'thelan Bloodwatcher <The Reliquary>"] = "高階審查員泰瑟連·血腥看守者 <聖匣守護者>";
	L["Lidia Sunglow <The Reliquary>"] = "莉蒂雅·日耀";
	L["Ancient Treasure"] = "古代寶藏";
	L["The Discs of Norgannon"] = "諾甘農圓盤";

--*******************
-- Burning Crusade Instances
--*******************

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "德萊尼靈魂";
	L["Avatar of the Martyred"] = "馬丁瑞德的化身";
	L["D'ore"] = "迪歐瑞";
	L["Tormented Soulpriest"] = "受折磨的靈魂牧師";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "工匠莫法利厄司";
	L["Mamdy the \"Ologist\""] = "『學家』瑪姆迪";
	L["Shadow Lord Xiraxis"] = "暗影領主希瑞西斯";
	L["Ambassador Pax'ivi"] = "帕克西維大使";
	L["Cryo-Engineer Sha'heen"] = "工程師薩希恩";
	L["Ethereal Transporter Control Panel"] = "虛空傳送者控制面板";

	--Auch: Sethekk Halls
	L["Isfar"] = "伊斯法";
	L["Dealer Vijaad"] = "商人維傑";
	L["Lakka"] = "拉卡";
	L["The Saga of Terokk"] = "泰洛克的傳說";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "戰場元帥瑪赫范";
	L["Spy Grik'tha"] = "間諜葛瑞克莎";
	L["The Codex of Blood"] = "血之聖典";
	L["First Fragment Guardian"] = "第一碎片守衛者";
	L["Spy To'gun"] = "間諜·吐剛";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "通往靈魂聖盒";
	L["Towards Teron Gorefiend"] = "通往泰朗·血魔";
	L["Towards Illidan Stormrage"] = "通往伊利丹";
	L["Spirit of Olum"] = "歐蘭的靈魂";
	L["Spirit of Udalo"] = "烏達羅之靈";
	L["Aluyen <Reagents>"] = "阿魯焰 <施法材料>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "歐庫諾 <灰舌死亡誓言者軍需官>";
	L["Seer Kanai"] = "先知卡奈";

	--Black Temple (Basement)

	--Black Temple (Top)

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "先知歐蘭";

	--CFR: The Slave Pens
	L["Nahuud"] = "納霍德";
	L["Watcher Jhang"] = "看守者詹汗格";
	L["Weeder Greenthumb"] = "威德·綠指";
	L["Skar'this the Heretic"] = "異教徒司卡利斯";
	L["Naturalist Bite"] = "自然學家拜特";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "喚風者卡勞";
	L["Main Chambers Access Panel"] = "主房間通道面板";
	L["Second Fragment Guardian"] = "第二碎片守衛者";

	--CFR: The Underbog
	L["T'shu"] = "塔蘇";
	L["The Underspore"] = "地孢";
	L["Earthbinder Rayge"] = "縛地者瑞吉";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "塞特 <時光守望者>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "珍娜·普勞德摩爾女士";
	L["Thrall <Warchief>"] = "索爾 <首領>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "泰蘭妲·語風 <伊露恩的高階女祭司>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "伊洛森";
	L["Brazen"] = "布瑞茲恩";
	L["Landing Spot"] = "降落點";
	L["Thrall"] = "索爾";
	L["Taretha"] = "塔蕾莎";
	L["Don Carlos"] = "卡洛斯大爺";
	L["Guerrero"] = "葛雷洛";
	L["Thomas Yance <Travelling Salesman>"] = "湯瑪斯·陽斯 <旅行商人>";
	L["Aged Dalaran Wizard"] = "年邁的達拉然法師";
	L["Jonathan Revah"] = "強納森·瑞瓦";
	L["Jerry Carter"] = "傑瑞·卡特";
	L["Helcular"] = "赫爾庫拉";
	L["Farmer Kent"] = "農夫肯特";
	L["Sally Whitemane"] = "莎麗·白鬃";
	L["Renault Mograine"] = "雷諾·莫根尼";
	L["Little Jimmy Vishas"] = "小吉米·維希斯";
	L["Herod the Bully"] = "流氓希洛特";
	L["Nat Pagle"] = "納特·帕格";
	L["Hal McAllister"] = "哈爾·馬克奧里斯特";
	L["Zixil <Aspiring Merchant>"] = "吉克希爾 <高級商人>";
	L["Overwatch Mark 0 <Protector>"] = "守候者零型 <保衛者>";
	L["Southshore Inn"] = "南海鎮旅館";
	L["Captain Edward Hanes"] = "隊長艾德華·漢尼斯";
	L["Captain Sanders"] = "桑德斯船長";
	L["Commander Mograine"] = "指揮官莫格萊尼";
	L["Isillien"] = "伊斯利恩";
	L["Abbendis"] = "阿比迪斯";
	L["Fairbanks"] = "費爾班克";
	L["Taelan"] = "泰蘭";
	L["Barkeep Kelly <Bartender>"] = "酒吧老闆凱利 <酒保>";
	L["Frances Lin <Barmaid>"] = "法蘭斯·林 <酒吧女服務員>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "廚師傑森 <特殊肉品和食物>";
	L["Stalvan Mistmantle"] = "斯塔文·密斯特曼托";
	L["Phin Odelic <The Kirin Tor>"] = "費恩·奧德利克 <祈倫托>";
	L["Magistrate Henry Maleb"] = "赫尼·馬雷布鎮長";
	L["Raleigh the True"] = "純真者洛歐欸";
	L["Nathanos Marris"] = "納薩諾斯·瑪瑞斯";
	L["Bilger the Straight-laced"] = "嚴厲者畢歐吉";
	L["Innkeeper Monica"] = "旅店老闆莫妮卡";
	L["Julie Honeywell"] = "喬莉·哈妮威爾";
	L["Jay Lemieux"] = "杰·黎米厄斯";
	L["Young Blanchy"] = "小馬布蘭契";

	--Gruul's Lair

	--HFC: The Blood Furnace
	L["Gunny"] = "甘尼";
	L["Caza'rez"] = "卡沙瑞斯";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "先遣斥候查德威克";
	L["Stone Guard Stok'ton"] = "石衛士史托克頓";
	L["Reinforced Fel Iron Chest"] = "強化惡魔鐵箱";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "破碎之手劊子手";
	L["Private Jacint"] = "士兵賈辛特";
	L["Rifleman Brownbeard"] = "槍兵伯朗畢爾";
	L["Captain Alina"] = "隊長阿蓮娜";
	L["Scout Orgarr"] = "斥候歐卡爾";
	L["Korag Proudmane"] = "科洛特·波特曼";
	L["Captain Boneshatter"] = "隊長碎骨";
	L["Randy Whizzlesprocket"] = "藍迪·威索洛克";
	L["Drisella"] = "崔賽拉";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "女爵朵洛希·米爾斯泰普";
	L["Lady Catriona Von'Indi"] = "凱崔娜·瓦映迪女士";
	L["Lady Keira Berrybuck"] = "凱伊拉·拜瑞巴克女士";
	L["Baron Rafe Dreuger"] = "男爵洛夫·崔克爾";
	L["Lord Robin Daris"] = "貴族羅賓·達利斯";
	L["Lord Crispin Ference"] = "貴族克利斯平·費蘭斯";
	L["Red Riding Hood"] = "小紅帽";
	L["Wizard of Oz"] = "綠野仙蹤";
	L["The Master's Terrace"] = "大師的露臺";
	L["Servant Quarters"] = "伺從區";
	L["Hastings <The Caretaker>"] = "哈斯丁 <照料者>";
	L["Berthold <The Doorman>"] = "勃特霍德 <看門人>";
	L["Calliard <The Nightman>"] = "卡利卡 <夜間工作者>";
	L["Koren <The Blacksmith>"] = "卡爾侖 <鐵匠>";
	L["Bennett <The Sergeant at Arms>"] = "班尼特 <待命中的中士>";
	L["Keanna's Log"] = "琪安娜的日誌";
	L["Ebonlocke <The Noble>"] = "埃伯洛克 <貴族>";
	L["Sebastian <The Organist>"] = "塞巴斯汀 <風琴演奏家>";
	L["Barnes <The Stage Manager>"] = "巴奈斯 <舞台管理員>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "通往損壞的階梯的通道";
	L["Broken Stairs"] = "損壞的階梯";
	L["Ramp to Guardian's Library"] = "通往管理員圖書館的斜坡";
	L["Mysterious Bookshelf"] = "神秘的書架";
	L["Ramp up to the Celestial Watch"] = "通往天文觀測台的斜坡";
	L["Ramp down to the Gamesman's Hall"] = "通往投機者大廳的斜坡";
	L["Ramp to Medivh's Chamber"] = "通往麥迪文房間的斜坡";
	L["Spiral Stairs to Netherspace"] = "通往虛空空間的螺旋梯";
	L["Wravien <The Mage>"] = "瑞依恩 <法師>";
	L["Gradav <The Warlock>"] = "葛瑞戴 <術士>";
	L["Kamsis <The Conjurer>"] = "康席斯 <咒術師>";
	L["Ythyar"] = "伊斯亞爾";
	L["Echo of Medivh"] = "麥迪文的回音";

	--Magisters Terrace
	L["Exarch Larethor"] = "主教雷索爾";
	L["Fel Crystals"] = "惡魔水晶";
	L["Apoko"] = "阿波考";
	L["Eramas Brightblaze"] = "依拉瑪·火光";
	L["Ellrys Duskhallow"] = "艾爾里斯·聖暮";
	L["Fizzle"] = "費索";
	L["Garaxxas"] = "卡拉克薩斯";
	L["Sliver <Garaxxas' Pet>"] = "割裂者 <卡拉克薩斯的寵物>";
	L["Kagani Nightstrike"] = "卡嘉尼·夜擊";
	L["Warlord Salaris"] = "督軍沙拉利思";
	L["Yazzai"] = "耶賽";
	L["Zelfan"] = "塞爾汎";
	L["Tyrith"] = "提里斯";
	L["Scrying Orb"] = "索蘭尼亞的占卜寶珠";

	--Sunwell Plateau
	L["Madrigosa"] = "瑪德里茍沙";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "米歐浩斯·曼納斯頓";
	L["Third Fragment Guardian"] = "第三碎片守衛者";
	L["Udalo"] = "先知烏達羅";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "滿溢的法力容器";

	--TK: The Eye

--*****************
-- Wrath of the Lich King Instances
--*****************

	--Azjol-Nerub: Ahn'kahet: The Old Kingdom
	L["Seer Ixit"] = "先知伊須特";
	L["Ahn'kahet Brazier"] = "安卡罕特火盆";

	--Azjol-Nerub: Azjol-Nerub
	L["Reclaimer A'zak"] = "回收者阿札克";
	L["Watcher Gashra"] = "看守者賈西拉";
	L["Watcher Narjil"] = "看守者納吉爾";
	L["Watcher Silthik"] = "看守者席爾希克";
	L["Elder Nurgen"] = "訥金長者";

	--Caverns of Time: The Culling of Stratholme
	L["The Culling of Stratholme"] = "斯坦索姆的抉擇";
	L["Scourge Invasion Points"] = "天譴軍團地點";
	L["Guardian of Time"] = "時光守護者";
	L["Chromie"] = "克羅米";

	--Drak'Tharon Keep
	L["Image of Drakuru"] = "德拉庫魯的影像";
	L["Kurzel"] = "庫賽爾";
	L["Elder Kilias"] = "奇里亞斯長者";
	L["Drakuru's Brazier"] = "德拉庫魯的火盆";

	--The Frozen Halls: Halls of Reflection
	--3 beginning NPCs omitted, see The Forge of Souls
	L["The Captain's Chest"] = "船長的箱子";

	--The Frozen Halls: Pit of Saron
	--6 beginning NPCs omitted, see The Forge of Souls
	L["Martin Victus"] = "馬汀·維特斯";
	L["Gorkun Ironskull"] = "葛剛·鐵顱";
	L["Rimefang"] = "霜牙";

	--The Frozen Halls: The Forge of Souls
	--Lady Jaina Proudmoore omitted, in Hyjal Summit
	L["Archmage Koreln <Kirin Tor>"] = "大法師寇瑞倫 <祈倫托>";
	L["Archmage Elandra <Kirin Tor>"] = "大法師伊蘭卓 <祈倫托>";
	L["Lady Sylvanas Windrunner <Banshee Queen>"] = "希瓦娜斯·風行者女士 <女妖之王>";
	L["Dark Ranger Loralen"] = "黑暗遊俠洛拉倫";
	L["Dark Ranger Kalira"] = "黑暗遊俠卡麗菈";

	--Gundrak
	L["Chronicler Bah'Kini"] = "撰史者巴琪妮";
	L["Tol'mar"] = "托爾瑪";
	L["Elder Ohanzee"] = "歐漢茲長者";

	--Icecrown Citadel
	L["To next map"] = "到下一個地圖";
	L["From previous map"] = "到前一個地圖";
	L["Upper Spire"] = "冰冠尖塔";
	L["Sindragosa's Lair"] = "辛德拉苟莎之巢";
	L["Stinky"] = "臭皮";
	L["Precious"] = "普萊瑟斯";
	L["Rimefang"] = "霜牙";	-- NPC: 37533
	L["Spinestalker"] = "骨脊潛獵者";	-- NPC: 37534
	L["Sister Svalna"] = "絲瓦娜姐妹";	-- NPC: 37126

	--Naxxramas
	L["Mr. Bigglesworth"] = "畢勾沃斯先生";
	L["Frostwyrm Lair"] = "冰霜巨龍的巢穴";
	L["Teleporter to Middle"] = "傳送到中間";

	--The Obsidian Sanctum
	L["Black Dragonflight Chamber"] = "黑龍軍團密室";

	--Onyxia's Lair

	--The Ruby Sanctum
	L["Red Dragonflight Chamber"] = "紅龍軍團密室";

	--The Nexus: The Eye of Eternity

	--The Nexus: The Nexus
	L["Warmage Kaitlyn"] = "戰爭法師凱特林";
	L["Berinand's Research"] = "貝瑞那德的研究";
	L["Elder Igasho"] = "伊加修長者";

	--The Nexus: The Oculus
	L["Belgaristrasz"] = "貝加瑞斯塔茲";
	L["Eternos"] = "伊特諾斯";
	L["Verdisa"] = "薇爾迪莎";
	L["Centrifuge Construct"] = "離心傀儡";
	L["Cache of Eregos"] = "伊瑞茍斯的貯藏箱";	

	--Trial of the Champion
	L["Marshal Jacob Alerius"] = "傑科布·亞雷瑞斯元帥";
	L["Ambrose Boltspark"] = "安布羅斯·拴炫";
	L["Colosos"] = "克羅索斯";
	L["Jaelyne Evensong"] = "潔琳·晚歌";
	L["Lana Stouthammer"] = "菈娜·頑錘";

	--Trial of the Crusader
	L["Heroic: Trial of the Grand Crusader"] = "英雄: 大十字軍試煉";
	L["Cavern Entrance"] = "洞穴入口";

	--Ulduar General
	L["The Siege"] = "攻城區";
	L["The Keepers"] = "守護者";

	--Ulduar A
	L["Tower of Life"] = "生命之塔";
	L["Tower of Flame"] = "烈焰之塔";
	L["Tower of Frost"] = "冰霜之塔";
	L["Tower of Storms"] = "風暴之塔";

	--Ulduar B
	L["Prospector Doren"] = "勘察員多倫";
	L["Archivum Console"] = "大資料庫控制臺";

	--Ulduar C
	L["Sif"] = "希芙";

	--Ulduar D

	--Ulduar E

	--Ulduar: Halls of Lightning
	L["Stormherald Eljrrin"] = "風暴信使埃利林";

	--Ulduar: Halls of Stone
	L["Kaldir Ironbane"] = "卡迪爾·鐵禍";
	L["Tribunal Chest"] = "議庭之箱";
	L["Elder Yurauk"] = "由羅克長者";	
	L["Brann Bronzebeard"] = "布萊恩·銅鬚";

	--Utgarde Keep: Utgarde Keep
	L["Defender Mordun"] = "防衛者摩丹";
	L["Dark Ranger Marrah"] = "黑暗遊俠瑪拉";
	L["Elder Jarten"] = "加坦長者";

	--Utgarde Keep: Utgarde Pinnacle
	L["Brigg Smallshanks"] = "布里格·細柄";
	L["Image of Argent Confessor Paletress"] = "銀白告解者帕爾璀絲的影像";
	L["Elder Chogan'gada"] = "修干加達長者";

	--Vault of Archavon

	--The Violet Hold
	L["Lieutenant Sinclari"] = "辛克拉麗中尉";

--*********************
-- Cataclysm Instances
--*********************

	--Baradin Hold

	--Blackrock Caverns

	--Blackwing Descent

	--Caverns of Time: Dragon Soul
	L["Dasnurimi <Geologist & Conservator>"] = "達斯魯黎米 <地理學家與護存者>";
	L["Lord Afrasastrasz"] = "艾弗薩斯塔茲領主";

	--Caverns of Time: End Time
	L["Alurmi"] = "阿勒米";
	L["Nozdormu"] = "諾茲多姆";

	--Caverns of Time: Hour of Twilight

	--Caverns of Time: Well of Eternity

	--Firelands
	L["Lurah Wrathvine <Crystallized Firestone Collector>"] = "盧拉·怒藤 <晶化火石收集者>";
	L["Naresir Stormfury <Avengers of Hyjal Quartermaster>"] = "那瑞希爾·風暴之怒 <海加爾復仇者軍需官>";

	--Grim Batol
	L["Baleflame"] = "罪火";
	L["Farseer Tooranu <The Earthen Ring>"] = "先知圖拉奴 <陶土議會>";
	L["Velastrasza"] = "維菈史卓莎";

	--Halls of Origination
	L["Large Stone Obelisk"] = "大型石板";

	--Lost City of the Tol'vir
	L["Captain Hadan"] = "哈丹隊長";
	L["Tol'vir Grave"] = "托維爾墓地";

	--Shadowfang Keep 影牙城堡
	L["Apothecary Trio"] = "藥劑師三人組";
	L["Apothecary Hummel <Crown Chemical Co.>"] = "藥劑師胡默爾 <王冠化學製藥公司>";
	L["Apothecary Baxter <Crown Chemical Co.>"] = "藥劑師巴克斯特 <王冠化學製藥公司>";
	L["Apothecary Frye <Crown Chemical Co.>"] = "藥劑師弗萊伊 <王冠化學製藥公司>";
	L["Packleader Ivar Bloodfang"] = "狼群首領伊瓦·血牙";
	L["Deathstalker Commander Belmont"] = "亡靈哨兵指揮官貝爾蒙特";
	L["Haunted Stable Hand"] = "鬼怪獸欄僕人";
	L["Investigator Fezzen Brasstacks"] = "調查員菲贊·銅釘";

	--The Bastion of Twilight

	--The Stonecore
	L["Earthwarden Yrsa <The Earthen Ring>"] = "大地守望者伊爾薩 <陶土議會>";

	--The Vortex Pinnacle
	L["Itesh"] = "伊塔許";
	L["Magical Brazier"] = "魔法火盆";

	--Throne of the Four Winds

	--Throne of the Tides
	L["Captain Taylor"] = "泰勒隊長";
	L["Legionnaire Nazgrim"] = "軍團士兵納茲格寧姆";
	L["Neptulon"] = "奈普圖隆";

	--Zul'Aman
	L["Vol'jin"] = "沃金";
	L["Witch Doctor T'wansi"] = "巫醫塔灣西";
	L["Blood Guard Hakkuz <Darkspear Elite>"] = "血衛士哈庫茲 <暗矛精英>";
	L["Voodoo Pile"] = "巫毒堆";
	L["Bakkalzu"] = "巴卡祖";
	L["Hazlek"] = "哈茲雷克";
	L["The Map of Zul'Aman"] = "祖阿曼地圖";
	L["Norkani"] = "諾卡尼";
	L["Kasha"] = "卡沙";
	L["Thurg"] = "瑟吉";
	L["Gazakroth"] = "葛薩克羅司";
	L["Lord Raadan"] = "領主雷阿登";
	L["Darkheart"] = "黑心";
	L["Alyson Antille"] = "艾利森·安第列";
	L["Slither"] = "史立塞";
	L["Fenstalker"] = "沼群巡者";
	L["Koragg"] = "可拉格";
	L["Zungam"] = "祖剛";
	L["Forest Frogs"] = "森林樹蛙";
	L["Eulinda <Reagents>"] = "尤琳達 <施法材料>";
	L["Harald <Food Vendor>"] = "哈拉德 <食物商人>";
	L["Arinoth"] = "阿瑞諾斯";
	L["Kaldrick"] = "卡爾崔克";
	L["Lenzo"] = "蘭佐";
	L["Mawago"] = "瑪哇苟";
	L["Melasong"] = "馬拉頌";
	L["Melissa"] = "梅麗莎";
	L["Micah"] = "米迦";
	L["Relissa"] = "瑞麗莎";
	L["Rosa"] = "羅莎";
	L["Tyllan"] = "泰倫";

	--Zul'Gurub
	L["Briney Boltcutter <Blackwater Financial Interests>"] = "布蘭尼·破壞剪 <黑水金融>";
	L["Vehini <Assault Provisions>"] = "維希尼 <突襲物資供應者>";
	L["Overseer Blingbang"] = "監督者閃砰";
	L["Bloodslayer T'ara <Darkspear Veteran>"] = "血腥殺戮者特亞拉 <暗矛精兵>";
	L["Bloodslayer Vaena <Darkspear Veteran>"] = "血腥殺戮者瓦那 <暗矛精兵>";
	L["Bloodslayer Zala <Darkspear Veteran>"] = "血腥殺戮者札拉 <暗矛精兵>";
	L["Helpful Jungle Monkey"] = "好幫手叢林猴";
	L["Venomancer Mauri <The Snake's Whisper>"] = "怨毒法師莫里 <蛇之耳語>";
	L["Zanzil's Cauldron of Toxic Torment"] = "贊吉爾的毒物折磨大鍋";
	L["Tiki Lord Mu'Loa"] = "提基王穆羅亞";
	L["Gub <Destroyer of Fish>"] = "古布 <魚類滅殺者>";
	L["Venomancer T'Kulu <The Toxic Bite>"] = "怨毒法師堤庫魯 <毒咬>";
	L["Tor-Tun <The Slumberer>"] = "托通 <沉睡者>";
	L["Kaulema the Mover"] = "移石者考勒瑪";
	L["Berserking Boulder Roller"] = "狂暴巨礫滾動者";
	L["Zanzil's Cauldron of Frostburn Formula"] = "贊吉爾的霜燃配方";
	L["Mor'Lek the Dismantler"] = "拆卸人摩勒克";
	L["Witch Doctor Qu'in <Medicine Woman>"] = "巫醫枯因 <女巫醫>";
	L["Zanza the Restless"] = "『無眠者』贊札";
	L["Mortaxx <The Tolling Bell>"] = "莫爾塔克斯 <鐘鳴者>";
	L["Tiki Lord Zim'wae"] = "提基王辛瓦";
	L["Zanzil's Cauldron of Burning Blood"] = "贊吉爾的燃燒之血";

--*********************
-- Mists of Pandaria Instances
--*********************

	--Gate of the Setting Sun
	L["Bowmistress Li <Guard Captain>"] = "女弓手李 <守衛隊長>";

	--Heart of Fear

	--Mogu'shan Palace
	L["Sinan the Dreamer"] = "『夢旅者』司南";

	--Mogu'shan Vaults

	--Scarlet Halls
	L["Commander Lindon"] = "指揮官林敦";
	L["Hooded Crusader"] = "戴頭罩的十字軍";
	L["Bucket of Meaty Dog Food"] = "一桶豐盛狗食";
	L["Reinforced Archery Target"] = "強化箭靶";

	--Scarlet Monastery

	--Scholomance
	L["Instructor Chillheart's Phylactery"] = "講師冷心的骨匣";
	L["Professor Slate"] = "史雷特教授";
	L["Polyformic Acid Potion"] = "變體蟻酸藥水";
	L["Talking Skull"] = "說話的骨頭";
	L["In the Shadow of the Light"] = "在聖光的陰影之中";
	L["Kel'Thuzad's Deep Knowledge"] = "科爾蘇加德的深層知識";
	L["Forbidden Rites and other Rituals Necromantic"] = "禁忌儀式與其他死靈儀式";
	L["Coffer of Forgotten Souls"] = "遺忘靈魂的法櫃";
	L["The Dark Grimoire"] = "闇黑魔典";

	--Shado-Pan Monastery
	L["Ban Bearheart"] = "班·熊心";

	--Siege of Niuzao Temple
	L["Shado-Master Chum Kiu"] = "影潘宗師成樵";

	--Siege of Orgrimmar

	--Stormstout Brewery
	L["Auntie Stormstout"] = "風暴烈酒姑媽";
	L["Chen Stormstout"] = "老陳·風暴烈酒";

	--Temple of the Jade Serpent
	L["Master Windstrong"] = "風強大師";
	L["Priestess Summerpetal"] = "女司祭夏瓣";

	--Terrace of Endless Spring

	--Throne of Thunder
	L["Monara <The Last Queen>"] = "魔娜菈 <魔古的末代皇后>";
	L["No'ku Stormsayer <Lord of Tempest>"] = "諾庫·風暴預言者 <風暴之王>";
	L["Rocky Horror"] = "磐石駭獸";
	L["Focused Eye"] = "集束之眼";
	L["Unblinking Eye"] = "堅定無畏之眼";
	L["Archritualist Kelada"] = "大祭儀師凱烈德";
	L["Flesh'rok the Diseased <Primordial Saurok Horror>"] = "『瘟疫獸』血腐洛克 <原生薩烏洛克的恐怖>";
	L["Zao'cho <The Emperor's Shield>"] = "趙仇 <帝王之盾>";

--*********************
-- Warlords of Draenor Instances
--*********************

	--Auchindoun

	--Blackrock Foundry

	--Bloodmaul Slag Mines

	--The Everbloom

	--Grimrail Depot
--	L["Train Ride"] = "Train Ride";

	--Highmaul

	--Iron Docks

	--Shadowmoon Burial Grounds

	--Skyreach

	--Upper Blackrock Spire
--@end-do-not-package@

end
