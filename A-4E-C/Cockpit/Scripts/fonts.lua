if symbols_locale_included == nil then
	dofile(LockOn_Options.common_script_path.."Fonts/symbols_locale.lua")
end

CP1251_toUTF8 =
{
	[128]=	1026,
	[129]=	1027,
	[130]=	8218,
	[131]=	1107,
	[132]=	8222,
	[133]=	8214,
	[134]=	8224,
	[135]=	8225,
	[136]=	8364,
	[137]=	8240,
	[138]=	1033,
	[139]=	8249,
	[140]=	1034,
	[141]=	1036,
	[142]=	1035,
	[143]=	1039,
	[144]=	1106,
	[145]=	8216,
	[146]=	8217,
	[147]=	8220,
	[148]=	8221,
	[149]=	8226,
	[150]=	8211,
	[151]=	8212,
	[152]=	8481,
	[153]=	8482,
	[154]=	1113,
	[155]=	8250,
	[156]=	1114,
	[157]=	1116,
	[158]=	1115,
	[159]=	1119,
	[160]=	160	,
	[161]=	1038,
	[162]=	1118,
	[163]=	1032,
	[164]=	164	,
	[165]=	1168,
	[166]=	166	,
	[167]=	167	,
	[168]=	1025,
	[169]=	169	,
	[170]=	1028,
	[171]=	171	,
	[172]=	172	,
	[173]=	173	,
	[174]=	174	,
	[175]=	1031,
	[176]=	176	,
	[177]=	177	,
	[178]=	1030,
	[179]=	1110,
	[180]=	1169,
	[181]=	181	,
	[182]=	182	,
	[183]=	183	,
	[184]=	1105,
	[185]=	8470,
	[186]=	1108,
	[187]=	187	,
	[188]=	1112,
	[189]=	1029,
	[190]=	1109,
	[191]=	1111,
	-- ugly hack  
	[219]=	1102,
	[241]=	1103
}

local IndicationTexturesPath = LockOn_Options.script_path.."../Resources/IndicationTextures/"
local IndicationResourcesPath = LockOn_Options.script_path.."../IndicationResources/"

fontdescription = {}

CMS_xsize = 50
CMS_ysize = 65
fontdescription["font_CMS"] = {
	texture    = IndicationTexturesPath.."font_CMS.tga",
	size      = {8, 8},
	resolution = {512, 512},	
	default    = {CMS_xsize, CMS_ysize}	,
	chars	   = {
		 [1]   = {4,  CMS_xsize, CMS_ysize}, -- ¦ == \4
		 [2]   = {32, CMS_xsize, CMS_ysize}, -- [space]
		 [3]   = {33, CMS_xsize, CMS_ysize}, -- !
		 [4]   = {35, CMS_xsize, CMS_ysize}, -- #
		 [5]   = {40, CMS_xsize, CMS_ysize}, -- (
		 [6]   = {41, CMS_xsize, CMS_ysize}, -- )
		 [7]   = {42, CMS_xsize, CMS_ysize}, -- *
		 [8]   = {45, CMS_xsize, CMS_ysize}, -- -
		 [9]   = {47, CMS_xsize, CMS_ysize}, -- /
		 [10]  = {48, CMS_xsize, CMS_ysize}, -- 0
		 [11]  = {49, CMS_xsize, CMS_ysize}, -- 1
		 [12]  = {50, CMS_xsize, CMS_ysize}, -- 2
		 [13]  = {51, CMS_xsize, CMS_ysize},-- 3
		 [14]  = {52, CMS_xsize, CMS_ysize}, -- 4
		 [15]  = {53, CMS_xsize, CMS_ysize}, -- 5
		 [16]  = {54, CMS_xsize, CMS_ysize}, -- 6
		 [17]  = {55, CMS_xsize, CMS_ysize}, -- 7
		 [18]  = {56, CMS_xsize, CMS_ysize}, -- 8
		 [19]  = {57, CMS_xsize, CMS_ysize}, -- 9
		 [20]  = {58, CMS_xsize, CMS_ysize}, -- :
		 [21]  = {63, CMS_xsize, CMS_ysize}, -- ?
		 [22]  = {65, CMS_xsize, CMS_ysize}, -- A
		 [23]  = {66, CMS_xsize, CMS_ysize}, -- B
		 [24]  = {67, CMS_xsize, CMS_ysize}, -- C
		 [25]  = {68, CMS_xsize, CMS_ysize}, -- D
		 [26]  = {69, CMS_xsize, CMS_ysize}, -- E
		 [27]  = {70, CMS_xsize, CMS_ysize}, -- F
		 [28]  = {71, CMS_xsize, CMS_ysize}, -- G
		 [29]  = {72, CMS_xsize, CMS_ysize}, -- H
		 [30]  = {73, CMS_xsize, CMS_ysize}, -- I
		 [31]  = {74, CMS_xsize, CMS_ysize}, -- J
		 [32]  = {75, CMS_xsize, CMS_ysize}, -- K
		 [33]  = {76, CMS_xsize, CMS_ysize}, -- L
		 [34]  = {77, CMS_xsize, CMS_ysize}, -- M
		 [35]  = {78, CMS_xsize, CMS_ysize}, -- N
		 [36]  = {79, CMS_xsize, CMS_ysize}, -- O
		 [37]  = {80, CMS_xsize, CMS_ysize}, -- P
		 [38]  = {81, CMS_xsize, CMS_ysize}, -- Q
		 [39]  = {82, CMS_xsize, CMS_ysize}, -- R
		 [40]  = {83, CMS_xsize, CMS_ysize}, -- S
		 [41]  = {84, CMS_xsize, CMS_ysize}, -- T
		 [42]  = {85, CMS_xsize, CMS_ysize}, -- U
		 [43]  = {86, CMS_xsize, CMS_ysize}, -- V
		 [44]  = {87, CMS_xsize, CMS_ysize}, -- W
		 [45]  = {88, CMS_xsize, CMS_ysize}, -- X
		 [46]  = {89, CMS_xsize, CMS_ysize}, -- Y
		 [47]  = {90, CMS_xsize, CMS_ysize}, -- Z
		 [48]  = {97, CMS_xsize, CMS_ysize}, -- a
		 [49]  = {109,CMS_xsize, CMS_ysize}, -- m
		 [50]  = {115,CMS_xsize, CMS_ysize}, -- s
		 [51]  = {120,CMS_xsize, CMS_ysize}, -- x
		 [52]  = { 46,CMS_xsize, CMS_ysize}} -- .		 
}

MFCD_size_mult = 2
MFCD_xsize = 29 * MFCD_size_mult
MFCD_ysize = 64 * MFCD_size_mult
fontdescription["font_MFCD"] = {
		 texture    = IndicationTexturesPath.."font_MFCD_A10C.tga",
		 size      = {8, 8},
		 resolution = {1024, 1024},
		 default    = {MFCD_xsize, MFCD_ysize},
		 chars	    = {
			  [1]   = {CP1251_toUTF8[169],MFCD_xsize, MFCD_ysize}, -- 0 == ©
			  [2]   = {18, MFCD_xsize, MFCD_ysize}, -- ¦ == \18
			  [3]   = {20, MFCD_xsize, MFCD_ysize}, -- ¶ == [] = \20
			  [4]   = {26, MFCD_xsize, MFCD_ysize}, -- -> == \26
			  [5]   = {27, MFCD_xsize, MFCD_ysize}, -- <- == \27
			  [6]   = {31, MFCD_xsize, MFCD_ysize}, -- SPARE
			  [7]   = {126,MFCD_xsize, MFCD_ysize}, -- ~
			  [8]   = {32, MFCD_xsize, MFCD_ysize}, -- [space]
			  [9]   = {33, MFCD_xsize, MFCD_ysize}, -- !
			  [10]  = {35, MFCD_xsize, MFCD_ysize}, -- #
			  [11]  = {40, MFCD_xsize, MFCD_ysize}, -- (
			  [12]  = {41, MFCD_xsize, MFCD_ysize}, -- )
			  [13]  = {42, MFCD_xsize, MFCD_ysize}, -- *
			  [14]  = {43, MFCD_xsize, MFCD_ysize}, -- +
			  [15]  = {45, MFCD_xsize, MFCD_ysize}, -- -
			  [16]  = {46, MFCD_xsize, MFCD_ysize}, -- .
			  [17]  = {47, MFCD_xsize, MFCD_ysize}, -- /
			  [18]  = {48, MFCD_xsize, MFCD_ysize}, -- 0
			  [19]  = {49, MFCD_xsize, MFCD_ysize}, -- 1
			  [20]  = {50, MFCD_xsize, MFCD_ysize}, -- 2
			  [21]  = {51, MFCD_xsize, MFCD_ysize}, -- 3
			  [22]  = {52, MFCD_xsize, MFCD_ysize}, -- 4
			  [23]  = {53, MFCD_xsize, MFCD_ysize}, -- 5
			  [24]  = {54, MFCD_xsize, MFCD_ysize}, -- 6
			  [25]  = {55, MFCD_xsize, MFCD_ysize}, -- 7
			  [26]  = {56, MFCD_xsize, MFCD_ysize}, -- 8
			  [27]  = {57, MFCD_xsize, MFCD_ysize}, -- 9
			  [28]  = {58, MFCD_xsize, MFCD_ysize}, -- :
			  [29]  = {61, MFCD_xsize, MFCD_ysize}, -- =
			  [30]  = {63, MFCD_xsize, MFCD_ysize}, -- ?
			  [31]  = {65, MFCD_xsize, MFCD_ysize}, -- A
			  [32]  = {66, MFCD_xsize, MFCD_ysize}, -- B
			  [33]  = {67, MFCD_xsize, MFCD_ysize}, -- C
			  [34]  = {68, MFCD_xsize, MFCD_ysize}, -- D
			  [35]  = {69, MFCD_xsize, MFCD_ysize}, -- E
			  [36]  = {70, MFCD_xsize, MFCD_ysize}, -- F
			  [37]  = {71, MFCD_xsize, MFCD_ysize}, -- G
			  [38]  = {72, MFCD_xsize, MFCD_ysize}, -- H
			  [39]  = {73, MFCD_xsize, MFCD_ysize}, -- I
			  [40]  = {74, MFCD_xsize, MFCD_ysize}, -- J
			  [41]  = {75, MFCD_xsize, MFCD_ysize}, -- K
			  [42]  = {76, MFCD_xsize, MFCD_ysize}, -- L
			  [43]  = {77, MFCD_xsize, MFCD_ysize}, -- M
			  [44]  = {78, MFCD_xsize, MFCD_ysize}, -- N
			  [45]  = {79, MFCD_xsize, MFCD_ysize}, -- O
			  [46]  = {80, MFCD_xsize, MFCD_ysize}, -- P
			  [47]  = {81, MFCD_xsize, MFCD_ysize}, -- Q
			  [48]  = {82, MFCD_xsize, MFCD_ysize}, -- R
			  [49]  = {83, MFCD_xsize, MFCD_ysize}, -- S
			  [50]  = {84, MFCD_xsize, MFCD_ysize}, -- T
			  [51]  = {85, MFCD_xsize, MFCD_ysize}, -- U
			  [52]  = {86, MFCD_xsize, MFCD_ysize}, -- V
			  [53]  = {87, MFCD_xsize, MFCD_ysize}, -- W
			  [54]  = {88, MFCD_xsize, MFCD_ysize}, -- X
			  [55]  = {89, MFCD_xsize, MFCD_ysize}, -- Y
			  [56]  = {90, MFCD_xsize, MFCD_ysize}, -- Z
			  [57]  = {91, MFCD_xsize, MFCD_ysize}, -- [
			  [58]  = {93, MFCD_xsize, MFCD_ysize}, -- ]
			  [59]  = {CP1251_toUTF8[219],30 * MFCD_size_mult, MFCD_ysize}, -- - 
			  [60]  = {CP1251_toUTF8[241],MFCD_xsize, MFCD_ysize}, -- +- 
			  [61]  = {CP1251_toUTF8[176],MFCD_xsize, MFCD_ysize}, -- ° 
			  [62]  = {95, MFCD_xsize, MFCD_ysize}, -- _
			  [63]  = {37, MFCD_xsize, MFCD_ysize}}-- %
}

DC_xsize = 38
DC_ysize = 65
fontdescription["font_DIGIT_CLK"] = {
	texture    = IndicationTexturesPath.."font_DigitClock.tga",
	size      = {4, 4},
	resolution = {256, 256},
	default    = {DC_xsize, DC_ysize},
	chars	     = {
	   [1]   = {32, DC_xsize, DC_ysize}, -- [space]
	   [2]   = {48, DC_xsize, DC_ysize}, -- 0
	   [3]   = {49, DC_xsize, DC_ysize}, -- 1
	   [4]   = {50, DC_xsize, DC_ysize}, -- 2
	   [5]   = {51, DC_xsize, DC_ysize}, -- 3
	   [6]   = {52, DC_xsize, DC_ysize}, -- 4
	   [7]   = {53, DC_xsize, DC_ysize}, -- 5
	   [8]   = {54, DC_xsize, DC_ysize}, -- 6
	   [9]   = {55, DC_xsize, DC_ysize}, -- 7
	   [10]  = {56, DC_xsize, DC_ysize}, -- 8
	   [11]  = {57, DC_xsize, DC_ysize}, -- 9
	   [12]  = {58, 15, DC_ysize}, -- :
	   [13]  = {67, DC_xsize, DC_ysize}, -- C
	   [14]  = {69, DC_xsize, DC_ysize}, -- E
	   [15]  = {84, DC_xsize, DC_ysize}} -- T
}
--[[
RWR_xsize = 50
RWR_ysize = 65
fontdescription["font_RWR"] = {
	texture    = IndicationTexturesPath.."font_RWR.tga",
	size      = {7, 7},
	resolution = {512, 512},
	default    = {RWR_xsize, RWR_ysize},
	chars      = {
		 [1]   = {32, RWR_xsize, RWR_ysize}, -- [space]
		 [2]   = {45, RWR_xsize, RWR_ysize}, -- -
		 [3]   = {47, RWR_xsize, RWR_ysize}, -- /
		 [4]  = {48, RWR_xsize, RWR_ysize}, -- 0
		 [5]  = {49, RWR_xsize, RWR_ysize}, -- 1
		 [6]  = {50, RWR_xsize, RWR_ysize}, -- 2
		 [7]  = {51, RWR_xsize, RWR_ysize}, -- 3
		 [8]  = {52, RWR_xsize, RWR_ysize}, -- 4
		 [9]  = {53, RWR_xsize, RWR_ysize}, -- 5
		 [10]  = {54, RWR_xsize, RWR_ysize}, -- 6
		 [11]  = {55, RWR_xsize, RWR_ysize}, -- 7
		 [12]  = {56, RWR_xsize, RWR_ysize}, -- 8
		 [13]  = {57, RWR_xsize, RWR_ysize}, -- 9
		 [14]  = {58, RWR_xsize, RWR_ysize}, -- :
		 [15]  = {65, RWR_xsize, RWR_ysize}, -- A
		 [16]  = {66, RWR_xsize, RWR_ysize}, -- B
		 [17]  = {67, RWR_xsize, RWR_ysize}, -- C
		 [18]  = {68, RWR_xsize, RWR_ysize}, -- D
		 [19]  = {69, RWR_xsize, RWR_ysize}, -- E
		 [20]  = {70, RWR_xsize, RWR_ysize}, -- F
		 [21]  = {71, RWR_xsize, RWR_ysize}, -- G
		 [22]  = {72, RWR_xsize, RWR_ysize}, -- H
		 [23]  = {73, RWR_xsize, RWR_ysize}, -- I
		 [24]  = {74, RWR_xsize, RWR_ysize}, -- J
		 [25]  = {75, RWR_xsize, RWR_ysize}, -- K
		 [26]  = {76, RWR_xsize, RWR_ysize}, -- L
		 [27]  = {77, RWR_xsize, RWR_ysize}, -- M
		 [28]  = {78, RWR_xsize, RWR_ysize}, -- N
		 [29]  = {79, RWR_xsize, RWR_ysize}, -- O
		 [30]  = {80, RWR_xsize, RWR_ysize}, -- P
		 [31]  = {81, RWR_xsize, RWR_ysize}, -- Q
		 [32]  = {82, RWR_xsize, RWR_ysize}, -- R
		 [33]  = {83, RWR_xsize, RWR_ysize}, -- S
		 [34]  = {84, RWR_xsize, RWR_ysize}, -- T
		 [35]  = {85, RWR_xsize, RWR_ysize}, -- U
		 [36]  = {86, RWR_xsize, RWR_ysize}, -- V
		 [37]  = {87, RWR_xsize, RWR_ysize}, -- W
		 [38]  = {88, RWR_xsize, RWR_ysize}, -- X
		 [39]  = {89, RWR_xsize, RWR_ysize}, -- Y
		 [40]  = {90, RWR_xsize, RWR_ysize}, -- Z
		 [41]  = {46, RWR_xsize, RWR_ysize}} -- .
}
--]]

CDU_xsize = 55
CDU_ysize = 61
fontdescription["font_CDU"] = {
	texture    = IndicationTexturesPath.."font_A-10_CDU.tga",
	size      = {8, 8},
	resolution = {512, 512},
	default    = {CDU_xsize, CDU_ysize},
	chars	   = {
		 [1]   = {CP1251_toUTF8[169],CDU_xsize, CDU_ysize}, -- 0 == ©
		 [2]   = {18, CDU_xsize, CDU_ysize}, -- ¦ == \18
		 [3]   = {20, CDU_xsize, CDU_ysize}, -- ¶ == [] = \20
		 [4]   = {26, CDU_xsize, CDU_ysize}, -- -> == \26
		 [5]   = {27, CDU_xsize, CDU_ysize}, -- <- == \27
		 [6]   = {32, CDU_xsize, CDU_ysize}, -- [space]
		 [7]   = {33, CDU_xsize, CDU_ysize}, -- !
		 [8]   = {35, CDU_xsize, CDU_ysize}, -- #
		 [9]   = {40, CDU_xsize, CDU_ysize}, -- (
		 [10]  = {41, CDU_xsize, CDU_ysize}, -- )
		 [11]  = {42, CDU_xsize, CDU_ysize}, -- *
		 [12]  = {43, CDU_xsize, CDU_ysize}, -- +
		 [13]  = {45, CDU_xsize, CDU_ysize}, -- -
		 [14]  = {46, CDU_xsize, CDU_ysize}, -- .
		 [15]  = {47, CDU_xsize, CDU_ysize}, -- /
		 [16]  = {48, CDU_xsize, CDU_ysize}, -- 0
		 [17]  = {49, CDU_xsize, CDU_ysize}, -- 1
		 [18]  = {50, CDU_xsize, CDU_ysize}, -- 2
		 [19]  = {51, CDU_xsize, CDU_ysize}, -- 3
		 [20]  = {52, CDU_xsize, CDU_ysize}, -- 4
		 [21]  = {53, CDU_xsize, CDU_ysize}, -- 5
		 [22]  = {54, CDU_xsize, CDU_ysize}, -- 6
		 [23]  = {55, CDU_xsize, CDU_ysize}, -- 7
		 [24]  = {56, CDU_xsize, CDU_ysize}, -- 8
		 [25]  = {57, CDU_xsize, CDU_ysize}, -- 9
		 [26]  = {58, CDU_xsize, CDU_ysize}, -- :
		 [27]  = {61, CDU_xsize, CDU_ysize}, -- =
		 [28]  = {63, CDU_xsize, CDU_ysize}, -- ?
		 [29]  = {65, CDU_xsize, CDU_ysize}, -- A
		 [30]  = {66, CDU_xsize, CDU_ysize}, -- B
		 [31]  = {67, CDU_xsize, CDU_ysize}, -- C
		 [32]  = {68, CDU_xsize, CDU_ysize}, -- D
		 [33]  = {69, CDU_xsize, CDU_ysize}, -- E
		 [34]  = {70, CDU_xsize, CDU_ysize}, -- F
		 [35]  = {71, CDU_xsize, CDU_ysize}, -- G
		 [36]  = {72, CDU_xsize, CDU_ysize}, -- H
		 [37]  = {73, CDU_xsize, CDU_ysize}, -- I
		 [38]  = {74, CDU_xsize, CDU_ysize}, -- J
		 [39]  = {75, CDU_xsize, CDU_ysize}, -- K
		 [40]  = {76, CDU_xsize, CDU_ysize}, -- L
		 [41]  = {77, CDU_xsize, CDU_ysize}, -- M
		 [42]  = {78, CDU_xsize, CDU_ysize}, -- N
		 [43]  = {79, CDU_xsize, CDU_ysize}, -- O
		 [44]  = {80, CDU_xsize, CDU_ysize}, -- P
		 [45]  = {81, CDU_xsize, CDU_ysize}, -- Q
		 [46]  = {82, CDU_xsize, CDU_ysize}, -- R
		 [47]  = {83, CDU_xsize, CDU_ysize}, -- S
		 [48]  = {84, CDU_xsize, CDU_ysize}, -- T
		 [49]  = {85, CDU_xsize, CDU_ysize}, -- U
		 [50]  = {86, CDU_xsize, CDU_ysize}, -- V
		 [51]  = {87, CDU_xsize, CDU_ysize}, -- W
		 [52]  = {88, CDU_xsize, CDU_ysize}, -- X
		 [53]  = {89, CDU_xsize, CDU_ysize}, -- Y
		 [54]  = {90, CDU_xsize, CDU_ysize}, -- Z
		 [55]  = {91, CDU_xsize, CDU_ysize}, -- [
		 [56]  = {93, CDU_xsize, CDU_ysize}, -- ]
		 [57]  = {CP1251_toUTF8[219],CDU_xsize, CDU_ysize}, -- -
		 [58]  = {CP1251_toUTF8[241],CDU_xsize, CDU_ysize}, -- +- 
		 [59]  = {CP1251_toUTF8[176],CDU_xsize, CDU_xsize}} -- ° 
}

HUD_xsize = 44 * 2
HUD_ysize = 72.0 * 2 --73.143 * 2
fontdescription["font_HUD"] = {
	texture    = IndicationTexturesPath.."font_HUD_A10.tga",
	size      = {7, 7},
	resolution = {1024, 1024},
	default    = {HUD_xsize, HUD_ysize},
	chars	    = {
		 [1]   = {32, HUD_xsize, HUD_ysize}, -- [space]
		 [2]   = {42, HUD_xsize, HUD_ysize}, -- *
		 [3]   = {43, HUD_xsize, HUD_ysize}, -- +
		 [4]   = {45, HUD_xsize, HUD_ysize}, -- -
		 [5]   = {46, HUD_xsize, HUD_ysize}, -- .
		 [6]   = {47, HUD_xsize, HUD_ysize}, -- /
		 [7]   = {48, HUD_xsize, HUD_ysize}, -- 0
		 [8]   = {49, HUD_xsize, HUD_ysize}, -- 1
		 [9]   = {50, HUD_xsize, HUD_ysize}, -- 2
		 [10]  = {51, HUD_xsize, HUD_ysize}, -- 3
		 [11]  = {52, HUD_xsize, HUD_ysize}, -- 4
		 [12]  = {53, HUD_xsize, HUD_ysize}, -- 5
		 [13]  = {54, HUD_xsize, HUD_ysize}, -- 6
		 [14]  = {55, HUD_xsize, HUD_ysize}, -- 7
		 [15]  = {56, HUD_xsize, HUD_ysize}, -- 8
		 [16]  = {57, HUD_xsize, HUD_ysize}, -- 9
		 [17]  = {58, HUD_xsize, HUD_ysize}, -- :
		 [18]  = {65, HUD_xsize, HUD_ysize}, -- A
		 [19]  = {66, HUD_xsize, HUD_ysize}, -- B
		 [20]  = {67, HUD_xsize, HUD_ysize}, -- C
		 [21]  = {68, HUD_xsize, HUD_ysize}, -- D
		 [22]  = {69, HUD_xsize, HUD_ysize}, -- E
		 [23]  = {70, HUD_xsize, HUD_ysize}, -- F
		 [24]  = {71, HUD_xsize, HUD_ysize}, -- G
		 [25]  = {72, HUD_xsize, HUD_ysize}, -- H
		 [26]  = {73, HUD_xsize, HUD_ysize}, -- I
		 [27]  = {74, HUD_xsize, HUD_ysize}, -- J
		 [28]  = {75, HUD_xsize, HUD_ysize}, -- K
		 [29]  = {76, HUD_xsize, HUD_ysize}, -- L
		 [30]  = {77, HUD_xsize, HUD_ysize}, -- M
		 [31]  = {78, HUD_xsize, HUD_ysize}, -- N
		 [32]  = {79, HUD_xsize, HUD_ysize}, -- O
		 [33]  = {80, HUD_xsize, HUD_ysize}, -- P
		 [34]  = {81, HUD_xsize, HUD_ysize}, -- Q
		 [35]  = {82, HUD_xsize, HUD_ysize}, -- R
		 [36]  = {83, HUD_xsize, HUD_ysize}, -- S
		 [37]  = {84, HUD_xsize, HUD_ysize}, -- T
		 [38]  = {85, HUD_xsize, HUD_ysize}, -- U
		 [39]  = {86, HUD_xsize, HUD_ysize}, -- V
		 [40]  = {87, HUD_xsize, HUD_ysize}, -- W
		 [41]  = {88, HUD_xsize, HUD_ysize}, -- X
		 [42]  = {89, HUD_xsize, HUD_ysize}, -- Y
		 [43]  = {90, HUD_xsize, HUD_ysize}, -- Z
		 [44]  = {91, HUD_xsize, HUD_ysize}, -- [
		 [45]  = {93, HUD_xsize, HUD_ysize}, -- ]
		 [46]  = {62, HUD_xsize, HUD_ysize}, -- >
		 [47]  = {111, HUD_xsize, HUD_ysize}, -- o
		 [48]  = {94, HUD_xsize, HUD_ysize}} -- ^
}
TGP_xsize = 50
TGP_ysize = 70
fontdescription["font_TGP"] = {
	texture    = IndicationTexturesPath.."font_TGP_LITENING_AT.tga",
	size      = {7, 7},
	resolution = {512, 512},
	default    = {TGP_xsize, TGP_ysize},
	chars	    = {
		 [1]  = {32, TGP_xsize, TGP_ysize}, -- [space]
		 [2]  = {42, TGP_xsize, TGP_ysize}, -- *
		 [3]  = {45, TGP_xsize, TGP_ysize}, -- -
		 [4]  = {47, TGP_xsize, TGP_ysize}, -- /
		 [5]  = {48, TGP_xsize, TGP_ysize}, -- 0
		 [6]  = {49, TGP_xsize, TGP_ysize}, -- 1
		 [7]  = {50, TGP_xsize, TGP_ysize}, -- 2
		 [8]  = {51, TGP_xsize, TGP_ysize}, -- 3
		 [9]  = {52, TGP_xsize, TGP_ysize}, -- 4
		 [10]  = {53, TGP_xsize, TGP_ysize}, -- 5
		 [11]  = {54, TGP_xsize, TGP_ysize}, -- 6
		 [12]  = {55, TGP_xsize, TGP_ysize}, -- 7
		 [13]  = {56, TGP_xsize, TGP_ysize}, -- 8
		 [14]  = {57, TGP_xsize, TGP_ysize}, -- 9
		 [15]  = {58, TGP_xsize, TGP_ysize}, -- :
		 [16]  = {60, TGP_xsize, TGP_ysize}, -- <
		 [17]  = {62, TGP_xsize, TGP_ysize}, -- >
		 [18]  = {65, TGP_xsize, TGP_ysize}, -- A
		 [19]  = {66, TGP_xsize, TGP_ysize}, -- B
		 [20]  = {67, TGP_xsize, TGP_ysize}, -- C
		 [21]  = {68, TGP_xsize, TGP_ysize}, -- D
		 [22]  = {69, TGP_xsize, TGP_ysize}, -- E
		 [23]  = {70, TGP_xsize, TGP_ysize}, -- F
		 [24]  = {71, TGP_xsize, TGP_ysize}, -- G
		 [25]  = {72, TGP_xsize, TGP_ysize}, -- H
		 [26]  = {73, TGP_xsize, TGP_ysize}, -- I
		 [27]  = {74, TGP_xsize, TGP_ysize}, -- J
		 [28]  = {75, TGP_xsize, TGP_ysize}, -- K
		 [29]  = {76, TGP_xsize, TGP_ysize}, -- L
		 [30]  = {77, TGP_xsize, TGP_ysize}, -- M
		 [31]  = {78, TGP_xsize, TGP_ysize}, -- N
		 [32]  = {79, TGP_xsize, TGP_ysize}, -- O
		 [33]  = {80, TGP_xsize, TGP_ysize}, -- P
		 [34]  = {81, TGP_xsize, TGP_ysize}, -- Q
		 [35]  = {82, TGP_xsize, TGP_ysize}, -- R
		 [36]  = {83, TGP_xsize, TGP_ysize}, -- S
		 [37]  = {84, TGP_xsize, TGP_ysize}, -- T
		 [38]  = {85, TGP_xsize, TGP_ysize}, -- U
		 [39]  = {86, TGP_xsize, TGP_ysize}, -- V
		 [40]  = {87, TGP_xsize, TGP_ysize}, -- W
		 [41]  = {88, TGP_xsize, TGP_ysize}, -- X
		 [42]  = {89, TGP_xsize, TGP_ysize}, -- Y
		 [43]  = {90, TGP_xsize, TGP_ysize}, -- Z
		 [44]  = {37, TGP_xsize, TGP_ysize}, -- %
		 [45]  = {46, TGP_xsize, TGP_ysize}} -- .
}

RWR_xsize = 68
RWR_ysize = 73
fontdescription["font_RWR"] = {
	texture    = IndicationTexturesPath.."font_RWR.tga",
	size      = {7, 7},
	resolution = {512, 512},
	default    = {RWR_xsize, RWR_ysize},
	chars	    = {
		 [1]  = {32, RWR_xsize, RWR_ysize}, -- [space]
		 [2]  = {45, RWR_xsize, RWR_ysize}, -- -
		 [3]  = {47, RWR_xsize, RWR_ysize}, -- /
		 [4]  = {48, RWR_xsize, RWR_ysize}, -- 0
		 [5]  = {49, RWR_xsize, RWR_ysize}, -- 1
		 [6]  = {50, RWR_xsize, RWR_ysize}, -- 2
		 [7]  = {51, RWR_xsize, RWR_ysize}, -- 3
		 [8]  = {52, RWR_xsize, RWR_ysize}, -- 4
		 [9]  = {53, RWR_xsize, RWR_ysize}, -- 5
		 [10]  = {54, RWR_xsize, RWR_ysize}, -- 6
		 [11]  = {55, RWR_xsize, RWR_ysize}, -- 7
		 [12]  = {56, RWR_xsize, RWR_ysize}, -- 8
		 [13]  = {57, RWR_xsize, RWR_ysize}, -- 9
		 [14]  = {58, RWR_xsize, RWR_ysize}, -- :
		 [15]  = {65, RWR_xsize, RWR_ysize}, -- A
		 [16]  = {66, RWR_xsize, RWR_ysize}, -- B
		 [17]  = {67, RWR_xsize, RWR_ysize}, -- C
		 [18]  = {68, RWR_xsize, RWR_ysize}, -- D
		 [19]  = {69, RWR_xsize, RWR_ysize}, -- E
		 [20]  = {70, RWR_xsize, RWR_ysize}, -- F
		 [21]  = {71, RWR_xsize, RWR_ysize}, -- G
		 [22]  = {72, RWR_xsize, RWR_ysize}, -- H
		 [23]  = {73, RWR_xsize, RWR_ysize}, -- I
		 [24]  = {74, RWR_xsize, RWR_ysize}, -- J
		 [25]  = {75, RWR_xsize, RWR_ysize}, -- K
		 [26]  = {76, RWR_xsize, RWR_ysize}, -- L
		 [27]  = {77, RWR_xsize, RWR_ysize}, -- M
		 [28]  = {78, RWR_xsize, RWR_ysize}, -- N
		 [29]  = {79, RWR_xsize, RWR_ysize}, -- O
		 [30]  = {80, RWR_xsize, RWR_ysize}, -- P
		 [31]  = {81, RWR_xsize, RWR_ysize}, -- Q
		 [32]  = {82, RWR_xsize, RWR_ysize}, -- R
		 [33]  = {83, RWR_xsize, RWR_ysize}, -- S
		 [34]  = {84, RWR_xsize, RWR_ysize}, -- T
		 [35]  = {85, RWR_xsize, RWR_ysize}, -- U
		 [36]  = {86, RWR_xsize, RWR_ysize}, -- V
		 [37]  = {87, RWR_xsize, RWR_ysize}, -- W
		 [38]  = {88, RWR_xsize, RWR_ysize}, -- X
		 [39]  = {89, RWR_xsize, RWR_ysize}, -- Y
		 [40]  = {90, RWR_xsize, RWR_ysize}, -- Z
		} 
}


agm_65e_x = 30
agm_65e_y = 50
fontdescription["font_AGM_65E"] = 
{
	texture    = IndicationTexturesPath.."font_AGM_65E.tga",
	size      = {5, 5},
	resolution = {256, 256}	,
	default    = {agm_65e_x, agm_65e_y}	,
	chars	   = {{48, agm_65e_x, agm_65e_y}, -- 0
				  {49, agm_65e_x, agm_65e_y}, -- 1
				  {50, agm_65e_x, agm_65e_y}, -- 2
				  {51, agm_65e_x, agm_65e_y}, -- 3
				  {52, agm_65e_x, agm_65e_y}, -- 4
				  {53, agm_65e_x, agm_65e_y}, -- 5
				  {54, agm_65e_x, agm_65e_y}, -- 6
				  {55, agm_65e_x, agm_65e_y}, -- 7
				  {56, agm_65e_x, agm_65e_y}, -- 8
                  {67, agm_65e_x, agm_65e_y}, -- C 
                  {83, agm_65e_x, agm_65e_y}} -- S
}

UHF_xsize = 48
UHF_ysize = 65
fontdescription["font_UHF_RADIO"] = {
	texture    = IndicationTexturesPath.."font_UHF_Radio.tga",
	size      = {4, 4},
	resolution = {256, 256},
	default    = {UHF_xsize, UHF_ysize},
	chars	     = {
	   [1]   = {32, UHF_xsize, UHF_ysize}, -- [space]
	   [2]   = {48, UHF_xsize, UHF_ysize}, -- 0
	   [3]   = {49, UHF_xsize, UHF_ysize}, -- 1
	   [4]   = {50, UHF_xsize, UHF_ysize}, -- 2
	   [5]   = {51, UHF_xsize, UHF_ysize}, -- 3
	   [6]   = {52, UHF_xsize, UHF_ysize}, -- 4
	   [7]   = {53, UHF_xsize, UHF_ysize}, -- 5
	   [8]   = {54, UHF_xsize, UHF_ysize}, -- 6
	   [9]   = {55, UHF_xsize, UHF_ysize}, -- 7
	   [10]  = {56, UHF_xsize, UHF_ysize}, -- 8
	   [11]  = {57, UHF_xsize, UHF_ysize}, -- 9
	   [12]  = {42, UHF_xsize, UHF_ysize}, -- 0*
	   [13]  = {46, 28, UHF_ysize}, -- .
	   [14]  = {65, UHF_xsize, UHF_ysize}, -- A
	}
}

UHF_xsize = 43
UHF_ysize = 65
fontdescription["font_UHF_Repeater"] = {
	texture    = IndicationTexturesPath.."font_UHF_Repeater.tga",
	size      = {4, 4},
	resolution = {256, 256},
	default    = {UHF_xsize, UHF_ysize},
	chars	     = {
	   [1]   = {32, UHF_xsize, UHF_ysize}, -- [space]
	   [2]   = {48, UHF_xsize, UHF_ysize}, -- 0
	   [3]   = {49, UHF_xsize, UHF_ysize}, -- 1
	   [4]   = {50, UHF_xsize, UHF_ysize}, -- 2
	   [5]   = {51, UHF_xsize, UHF_ysize}, -- 3
	   [6]   = {52, UHF_xsize, UHF_ysize}, -- 4
	   [7]   = {53, UHF_xsize, UHF_ysize}, -- 5
	   [8]   = {54, UHF_xsize, UHF_ysize}, -- 6
	   [9]   = {55, UHF_xsize, UHF_ysize}, -- 7
	   [10]  = {56, UHF_xsize, UHF_ysize}, -- 8
	   [11]  = {57, UHF_xsize, UHF_ysize}, -- 9
	   [12]  = {42, UHF_xsize, UHF_ysize}, -- 0*
	   [13]  = {46, 10, UHF_ysize}, -- .
	   [14]  = {65, UHF_xsize, UHF_ysize}, -- A
	}
}

STB_xsize = 38
STB_ysize = 65
fontdescription["font_HUD_STANDBY"] = {
	texture    = IndicationTexturesPath.."font_HUD_A10C_standby.tga",
	size      = {4, 4},
	resolution = {256, 256},
	default    = {STB_xsize, DC_ysize},
	chars	     = {
	   [1]   = {32, STB_xsize, STB_ysize}, -- [space]
	   [2]   = {48, STB_xsize, STB_ysize}, -- 0
	   [3]   = {49, STB_xsize, STB_ysize}, -- 1
	   [4]   = {50, STB_xsize, STB_ysize}, -- 2
	   [5]   = {51, STB_xsize, STB_ysize}, -- 3
	   [6]   = {52, STB_xsize, STB_ysize}, -- 4
	   [7]   = {53, STB_xsize, STB_ysize}, -- 5
	   [8]   = {54, STB_xsize, STB_ysize}, -- 6
	   [9]   = {55, STB_xsize, STB_ysize}, -- 7
	   [10]  = {56, STB_xsize, STB_ysize}, -- 8
	   [11]  = {57, STB_xsize, STB_ysize}, -- 9
	}
}

-- font_radio_label_xsize = 70
-- font_radio_label_ysize = 146

-- fontdescription["font_arc51_labels"] = {
-- 	texture = "Fonts/font_general_EN.dds",
-- 	size = {7, 7},
-- 	resolution = {1024, 1024},
-- 	default = {font_radio_label_xsize, font_radio_label_ysize},
-- 	chars = {
-- 		[1]   = {symbol[' '],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[2]   = {symbol['*'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[3]   = {symbol['+'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[4]   = {symbol['-'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[5]   = {symbol['.'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[6]   = {symbol['/'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[7]   = {symbol['0'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[8]   = {symbol['1'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[9]   = {symbol['2'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[10]  = {symbol['3'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[11]  = {symbol['4'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[12]  = {symbol['5'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[13]  = {symbol['6'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[14]  = {symbol['7'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[15]  = {symbol['8'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[16]  = {symbol['9'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[17]  = {symbol[':'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[18]  = {latin['A'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[19]  = {latin['B'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[20]  = {latin['C'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[21]  = {latin['D'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[22]  = {latin['E'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[23]  = {latin['F'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[24]  = {latin['G'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[25]  = {latin['H'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[26]  = {latin['I'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[27]  = {latin['J'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[28]  = {latin['K'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[29]  = {latin['L'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[30]  = {latin['M'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[31]  = {latin['N'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[32]  = {latin['O'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[33]  = {latin['P'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[34]  = {latin['Q'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[35]  = {latin['R'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[36]  = {latin['S'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[37]  = {latin['T'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[38]  = {latin['U'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[39]  = {latin['V'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[40]  = {latin['W'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[41]  = {latin['X'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[42]  = {latin['Y'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[43]  = {latin['Z'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[44]  = {symbol['['],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[45]  = {symbol[']'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[46]  = {symbol['>'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[47]  = {latin['o'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[48]  = {symbol['^'],	font_radio_label_xsize, font_radio_label_ysize},
-- 		[49]  = {symbol['%'],	font_radio_label_xsize, font_radio_label_ysize},
-- 	}
-- }


font_handwritten_label_xsize = (2048/6) - 70
font_handwritten_label_ysize = 2048/6

fontdescription["font_handwritten"] = {
	texture = IndicationResourcesPath.."font_heclak_handwritten.dds",
	size = {6, 6},
	resolution = {2048, 2048},
	default = {font_handwritten_label_xsize, font_handwritten_label_ysize},
	chars = {
		[1]   = {symbol['1'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[2]   = {symbol['2'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[3]   = {symbol['3'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[4]   = {symbol['4'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[5]   = {symbol['5'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[6]   = {symbol['6'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[7]   = {symbol['7'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[8]   = {symbol['8'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[9]   = {symbol['9'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[10]  = {symbol['0'],	font_handwritten_label_xsize, font_handwritten_label_ysize},
		[11]  = {symbol['.'],	font_handwritten_label_xsize - 150, font_handwritten_label_ysize},
	}
}