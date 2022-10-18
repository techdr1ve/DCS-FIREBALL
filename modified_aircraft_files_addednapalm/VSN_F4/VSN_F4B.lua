
local tips 		= {
	--
}

local outboardleft 	= {
	{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" ,arg_value = 0.0},--GBU-10
    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" ,arg_value = 0.0},--GBU-12
    { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" ,arg_value = 0.0},--3 Mk-20 Rockeye
    --{ CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" ,arg_value = 0.0},--MER*6 Mk-82
    { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0},--Mk-84
    { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 10,loadout = {"BIN_200"}}} },	-- BIN-200
    { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_value = 0.0},--LAU-10 1x4xMk71 ZUNI
    { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" ,arg_value = 0.0},--LAU-61 1x19xHydra
    { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" ,arg_value = 0.0},--LAU-61*3 - 57 2.75' rockets MK151 (HE)
    { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" ,arg_value = 0.0},--LAU-61 - 19 2.75' rockets MK156 WP
    { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" ,arg_value = 0.0},--AGM-45B
	--{ CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}" ,arg_value = 0.0},	-- AIM-9M x2 keine AtoA Raketen auf dem Outboard-Pylon
	--{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_value = 0.0},	-- AIM-120B
    --{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_value = 0.0},	-- AIM-120C
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_value = 0.0}, --Smokewinder - red
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_value = 0.0}, --Smokewinder - green
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_value = 0.0}, --Smokewinder - blue
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_value = 0.0}, --Smokewinder - white
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_value = 0.0}, --Smokewinder - yellow
	{ CLSID = "{BRU33_2*LAU10}" ,arg_value = 0.0}, --BRU33 mit 2xLAU-10 je 4xMk71 ZUNI
	{ CLSID = "{BRU33_2*LAU61}" ,arg_value = 0.0}, --BRU33 mit 2xLau-61 je 19Hydras
	{ CLSID = "{BRU41_6X_MK-82}" ,arg_value = 0.0},
	{ CLSID = "{BRU33_2X_GBU-12}" ,arg_value = 0.0},
	--{ CLSID = "{BRU33_2X_MK-82"},
	--{ CLSID = "{BRU33_2X_MK-82_Snakeye"},
	--{ CLSID = "{BRU33_2X_MK-82_ROCKEYE"},
	{ CLSID = "VSN_F4EL_PTB", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
	--{ CLSID = "<CLEAN>"
}

local outboardright 	= {
	{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" ,arg_value = 0.0},--GBU-10
    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" ,arg_value = 0.0},--GBU-12
    { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" ,arg_value = 0.0},--3 Mk-20 Rockeye
    --{ CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" ,arg_value = 0.0},--MER*6 Mk-82
    { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0},--Mk-84
    { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 2,loadout = {"BIN_200"}}} },	-- BIN-200
    { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_value = 0.0},--LAU-10 1x4xMk71 ZUNI
    { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" ,arg_value = 0.0},--LAU-61 1x19xHydra
    { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" ,arg_value = 0.0},--LAU-61*3 - 57 2.75' rockets MK151 (HE)
    { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" ,arg_value = 0.0},--LAU-61 - 19 2.75' rockets MK156 WP
    { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" ,arg_value = 0.0},--AGM-45B
	--{ CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}" ,arg_value = 0.0},	-- AIM-9M x2 keine AtoA Raketen auf dem Outboard-Pylon
	--{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_value = 0.0},	-- AIM-120B
    --{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_value = 0.0},	-- AIM-120C
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_value = 0.0}, --Smokewinder - red
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_value = 0.0}, --Smokewinder - green
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_value = 0.0}, --Smokewinder - blue
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_value = 0.0}, --Smokewinder - white
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_value = 0.0}, --Smokewinder - yellow
	{ CLSID = "{BRU33_2*LAU10}" ,arg_value = 0.0}, --BRU33 mit 2xLAU-10 je 4xMk71 ZUNI
	{ CLSID = "{BRU33_2*LAU61}" ,arg_value = 0.0}, --BRU33 mit 2xLau-61 je 19Hydras
	{ CLSID = "{BRU41_6X_MK-82}" ,arg_value = 0.0},
	{ CLSID = "{BRU33_2X_GBU-12}" ,arg_value = 0.0},
	--{ CLSID = "{BRU33_2X_MK-82"},
	--{ CLSID = "{BRU33_2X_MK-82_Snakeye"},
	--{ CLSID = "{BRU33_2X_MK-82_ROCKEYE"},
	{ CLSID = "VSN_F4ER_PTB", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
	--{ CLSID = "<CLEAN>"
}

local inboard 	= {
	--{ CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" ,arg_value = 0.0},-- nicht in der Datenbank
    --{ CLSID = "{773675AB-7C29-422f-AFD8-32844A7B7F17}" ,arg_value = 0.0},-- nicht in der Datenbank
    { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" ,arg_value = 0.0},--GBU-10
    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" ,arg_value = 0.0},--GBU-12
    { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" ,arg_value = 0.0},--3 Mk-20 Rockeye
    { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" ,arg_value = 0.0},--3 Mk-82
    { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0},--Mk-84
    --{ CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" ,arg_value = 0.0},--AGM-65K
    --{ CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" ,arg_value = 0.0},--AGM-65D
	{ CLSID = "LAU_117_AGM_65A", arg_value = 0.0}, -- 1xAGM-65A
	{ CLSID = "LAU_117_AGM_65B", arg_value = 0.0}, -- 1xAGM-65B
	--{ CLSID = "{71AAB9B8-81C1-4925-BE50-1EF8E9899271}", arg_value = 0.0}, -- AGM-65E x3
    { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" ,arg_value = 0.0},--AGM-45B
    { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" ,arg_value = 0.0},--LAU-10 - 4 ZUNI MK 71
    { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" ,arg_value = 0.0},--LAU-61*3 - 57 2.75' rockets MK151 (HE)
    { CLSID = "{BRU33_2*LAU10}" ,arg_value = 0.0}, --BRU33 mit 2xLAU-10 je 4xMk71 ZUNI
    { CLSID = "{BRU33_2*LAU61}" ,arg_value = 0.0}, --BRU33 mit 2xLau-61 je 19Hydras
    --{ CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" ,arg_value = 0.0}, -- LAU-88 AGM-65D*2
    { CLSID = "{DAC53A2F-79CA-42FF-A77A-F5649B601308}" ,arg_value = 0.0},  -- LAU-88 AGM-65D*3
    { CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}" ,arg_value = 0.0},	-- AIM-9M x2
    --{ CLSID = "{LAU-115_2*LAU-127_AIM-9L}", arg_value = 0.0}, --Aim-9L x2--geht glaube ich nicht
	{ CLSID = "LAU-105_2*AIM-9L", arg_value = 0.0}, --Aim-9L x2 //die Drei sind sehr spannend, da man einfach die {} weglassen muss und dann gehen sie...verrückt
	{ CLSID = "LAU-105_2*AIM-9P5", arg_value = 0.0}, --Aim-9P5 x2
        { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
	{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 3,loadout = {"BIN_200"}}} },	-- BIN-200
    { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_value = 0.0},	-- AIM-120B
    { CLSID = "{AIM-7F}", arg_value = 0.0},--Aim-7F auf LAU 115
    { CLSID = "{AIM-7E}", arg_value = 0.0},--Aim-7E auf LAU 115
    --{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_value = 0.0},	-- AIM-120C
    { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_value = 0.0},	--MK-20
    { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0},	--MK-82
    --{ CLSID = "{TER_9A_3*MK-82}" ,arg_value = 0.0},
    { CLSID = "{TER_9A_3*MK-82_Snakeye}" ,arg_value = 0.0},
    { CLSID = "{BRU33_2X_MK-83}" ,arg_value = 0.0},
	--{ CLSID = "<CLEAN>"									,arg_value = 1},
}

local fuselageRear	= {
	{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" ,arg_value = 0.5},--AIM-7M
	{ CLSID = "{AIM-7F}", arg_value = 0.5},--Aim-7F auf LAU 115
	{ CLSID = "{AIM-7E}", arg_value = 0.5},--Aim-7E auf LAU 115
    --{ CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" ,arg_value = 0.0},--ALQ-131
	{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_value = 0.5},	-- AIM-120B
    --{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_value = 0.5},	-- AIM-120C
	--{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_value = 0.0},	--MK-20
	--{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0},	--MK-82
	--{ CLSID = "<CLEAN>"
}

local fuselageFront	= {
	{ CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" ,arg_value = 0.5},--AIM-7M
	{ CLSID = "{AIM-7F}", arg_value = 0.5},--Aim-7F auf LAU 115
	{ CLSID = "{AIM-7E}", arg_value = 0.5},--Aim-7E auf LAU 115
    --{ CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" ,arg_value = 0.0},--ALQ-131
	{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_value = 0.5},	-- AIM-120B
 	--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_value = 0.5},	-- AIM-120C
	--{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" ,arg_value = 0.0},	--MK-20
	--{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0},	--MK-82
	--{ CLSID = "<CLEAN>"
}

local centerline 	= {
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_value = 0.0}, --Smokewinder - red
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_value = 0.0}, --Smokewinder - green
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_value = 0.0}, --Smokewinder - blue
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_value = 0.0}, --Smokewinder - white
	{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_value = 0.0}, --Smokewinder - yellow
	{ CLSID = "{BRU41_6X_MK-82}" ,arg_value = 0.0},
	{ CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" ,arg_value = 0.0},--LAU-61*3 - 57 2.75' rockets MK151 (HE)
	{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" ,arg_value = 0.0},--3 Mk-82
        { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
        { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 6,loadout = {"BIN_200"}}} },	-- BIN-200
	{ CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" ,arg_value = 0.0},--ALQ-131
	{ CLSID = "{VSN_F4B_Gunpod}" ,arg_value = 0.5},--F4B_Gunpod
	{ CLSID = "VSN_F4EC_PTB", arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
	--{ CLSID = "<CLEAN>"
}

local ECM_ELINT 	= {
	{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" ,arg_value = 0.0}, --L005 Sorbtsiya ECM pod (left)
	{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0 ,0 } },-- ELINT
}

local Smoke			= {
	{ CLSID = "{INV-SMOKE-RED}"		,attach_point_position = {0, 0 ,0 }},--Smoke Generator - red
	{ CLSID = "{INV-SMOKE-GREEN}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - green
	{ CLSID = "{INV-SMOKE-BLUE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - blue
	{ CLSID = "{INV-SMOKE-WHITE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - white
	{ CLSID = "{INV-SMOKE-YELLOW}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - yellow
	{ CLSID = "{INV-SMOKE-ORANGE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - orange
}

local launch_bar_connected_arg_value_	= 1.00
--0.815 / 0.175

VSN_F4B =  {
      
		Name 			= 'VSN_F4B',--AG
		DisplayName		= _('F-4B Phantom'),--AG
        Picture 		= "VSN_F4B.png",
        Rate 			= "50",
        Shape			= "VSN_F4B",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
		input_profile_entry = 	"VSN_F4",
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_F4B';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_F4B-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_F4B';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_F4B-oblomok";
			file  		= "VSN_F4B-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	net_animation ={--Beschreibung der externen Animation 32 Animationen begrenzen
        --0, -- front gear
		2,  -- nose wheel steering
        --3, -- right gear
        --5, -- left gear
        --9, -- right flap
        --10, -- left flap
        --11, -- right aileron
        --12, -- left aileron
		--13, -- right slat
		--14, -- left slat
        --15, -- right elevator
        --16, -- left elevator
        --17, -- rudder
        --21, -- SFM air brake
        --25, -- tail hook
		28, -- nachbrenner
		35, --	brakeshute
		36, --	brakeshute
		37, --	brakeshute
        --38, -- canopy
		89, -- Triebwerk
		--182, -- air brake
        --190, -- left (red) navigation wing-tip light
        --191, -- right (green) navigation wing-tip light
        --192, -- tail (white) light
        --198, -- anticollision (flashing red) top light
        --199, -- anticollision (flashing red) bottom light
        --208, -- taxi light (white) right main gear door
		--209, -- taxi light (white) right main gear door
		--403,
		--404,
    },	
	
	
	LandRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of LandRWCategories
        TakeOffRWCategories = 
        {
        [1] = 
        {
			Name = "AircraftCarrier",
        },
        [2] = 
        {
            Name = "AircraftCarrier With Catapult",
        }, 
        [3] = 
        {
            Name = "AircraftCarrier With Tramplin",
        }, 
    }, -- end of TakeOffRWCategories
	
	mapclasskey 		= "P0091000024",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Fighters", "Refuelable", "Datalink", "Link16"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty						=	13757,	-- kg  with pilot and nose load, F4E
		M_nominal					=	18825,	-- kg (Empty Plus Full Internal Fuel) F4E
		M_max						=	28030,	-- kg (Maximum Take Off Weight) F4E
		M_fuel_max					=	6416,	-- kg (Internal Fuel Only) 7549 L * 0,85
		H_max						=	20500,	-- m  (Maximum Operational Ceiling) F4E
		average_fuel_consumption	=	0.271,
		CAS_min						=	60,		-- Minimum CAS speed (m/s) (for AI) F4E
		V_opt						=	261,	-- Cruise speed (m/s) (for AI) F4E
		V_take_off					=	71,		-- Take off speed in m/s (for AI) F4E
		V_land						=	75,		-- Land speed in m/s (for AI) F4E
		has_afteburner				=	true,	--F4E
		has_speedbrake				=	true,	--F4E
		radar_can_see_ground		=	true,	--F4E

		nose_gear_pos 				                = {6.642,	-1.771,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0.405,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.105,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  0.0,   -- 
	    nose_gear_wheel_diameter 	                =  0.51, -- in m
	
	    main_gear_pos 						 	    = {-0.80,	-1.865,	2.690}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0.443, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.143, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   0.0,-- 
	    main_gear_wheel_diameter 				    =   0.76, -- in m

		AOA_take_off				=	0.18,	-- AoA in take off (for AI) ?? 0,18 Radians = 10,3°
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8.5,		-- Max G (for AI)
		V_max_sea_level				=	385,	-- Max speed at sea level in m/s (for AI) F4E 750 Knoten
		V_max_h						=	707,	-- Max speed at max altitude in m/s (for AI) Mach 2.4 @ 50k Ft in m/s F4E
		wing_area					=	49.24,	-- wing area in m2 F4E
		thrust_sum_max				=	10564,	-- thrust in kgf (2x51,8 kn) F4E
		thrust_sum_ab				=	16244,	-- thrust in kgf (2x79,65 kN) F4E
		Vy_max						=	250,	-- Max climb speed in m/s (for AI) F4E geraten
		flaps_maneuver				=	1,
		Mach_max					=	2.4,	-- Max speed in Mach (for AI) F4E
		range						=	2817,	-- Max range in km (for AI) F4E
		RCS							=	6,		-- Radar Cross Section m2 F4E
		Ny_max_e					=	8.5,		-- Max G (for AI) F4E
		detection_range_max			=	150,	--F4E
		IR_emission_coeff			=	0.93,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference. F4E
		IR_emission_coeff_ab		=	4.2,		-- With afterburner F4E
		tand_gear_max				=	3.73,--XX  1.732 FA18 3.73, 
		tanker_type					=	2,--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	11.71,--XX  wing spain in m F4E
		wing_type 					= 	0,-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	19.20, --F4E
		height						=	5.02, --F4E
		crew_size					=	2, --XX
		engines_count				=	2, --XX
		wing_tip_pos 				= 	{-4.207,	-0.086,	5.782},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?

		launch_bar_connected_arg_value	= launch_bar_connected_arg_value_,
		
		mechanimations = {
        Door0 = {
            {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
            {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
		},	
		Door1 = {DuplicateOf = "Door0"},
        FoldableWings = {
            {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 401, "to", 0.0, "in", 5.0}}}}, Flags = {"Reversible"}},
			{Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 401, "to", 1.0, "in", 15.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
        },
		ServiceHatches = {--Parkposition
            {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 30.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},
            {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 6}, {"Sleep", "for", 5.0}}}, {C = {{"Arg", 24, "set", 0.0}}}}},
        },
		CrewLadder = {
			{Transition = {"Dismantle", "Erect"}, Sequence = {
				{C = {{"Arg", 805, "to", 1.0, "in", 3.0}}},
			}},
			{Transition = {"Erect", "Dismantle"}, Sequence = {
				{C = {{"Arg", 805, "to", 0.0, "in", 3.0}}},
			}},
		},
        LaunchBar = {
            {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 3}, {"Arg", 85, "to", 1.00, "in", 0.4}}}}},
			{Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 3}, {"Arg", 85, "to", 0.93, "in", 4.4}}}}},
			{Transition = {"Any", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 0.02}}}}},--4.5 LaunchBar Hoch
            {Transition = {"Extend", "Stage"},   Sequence = {
					{C = {{"ChangeDriveTo", "Mechanical"}, {"Sleep", "for", 0.000}}},
					{C = {{"Arg", 85, "from", 1.00, "to", 0.92, "in", 0.600}}},
					{C = {{"Arg", 85, "from", 0.92, "to", 0.93, "in", 0.200}}},
					{C = {{"Sleep", "for", 0.15}}},
					{C = {{"Arg", 85, "from", 0.93, "to", 0.95, "in", 0.1, "sign", 2}}},
					{C = {{"Arg", 85, "from", 0.95, "to", 1.00, "in", 0.1}}},
				},
			},
			{Transition = {"Stage", "Pull"},  Sequence = {
					{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 2}, {"Arg", 85,"from", 1.00, "to", launch_bar_connected_arg_value_, "in", 0.15}}},
					{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 2}, {"Arg", 85, "to", 1.00, "speed", 0.1}}},
					{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 2}, {"Arg", 85, "to", 1.00, "speed", 0.02}}},
					}
			},
			{Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 3}, {"Arg", 85, "from", 1.00, "to", 1.00, "in", 0.2}}}}},
        },
    }, -- end of mechanimations
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.194,	-0.2,	-0.611},
				elevation	=	-2.8,--3.7
				diameter	=	0.965,--0.965
				exhaust_length_ab	=	5.5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-5.194,	-0.2,	0.611},
				elevation	=	-2.8,--3.7
				diameter	=	0.965,--0.965
				exhaust_length_ab	=	5.5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				pilot_name			= 	19,
				drop_canopy_name	=	"VSN_F4B_fonar1";
				pos = 	{5.605,	0.787,	0},
				ejection_order    = 2,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	17,
				pilot_name			= 	19,
				drop_canopy_name	=	"VSN_F4B_fonar2";
				pos = 	{4.159,	1.09,	0},
				ejection_order    = 1,
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	3,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{5.917,	-1.468,	1.505},
		fires_pos = 
		{
			[1] = 	{-0.664,	-0.496,	0},
			[2] = 	{0.173,	-0.307,	1.511},
			[3] = 	{0.173,	-0.307,	-1.511},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.899,	-0.212,	0.611},
			[9] = 	{-4.899,	-0.212,	-0.611},
			[10] = 	{-0.896,	1.118,	0},
			[11] = 	{0.445,	-0.436,	0},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F4B_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	-0.422},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	0.422},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 96,
chaff 				= {default = 48, increment = 24, chargeSz = 1},
flare 				= {default = 48, increment = 24, chargeSz = 1}
 },
	
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },

Sensors = {
RADAR 	= "AN/APQ-159",--F5
RWR 	= "Abstract RWR"--F15
},
Countermeasures = {
ECM 			= "AN/ALQ-135"--F15
},
	Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		  --{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},
	HumanRadio = {
		frequency 		= 127.5,  -- Radio Freq
		editable 		= true,
		minFrequency	= 100.000,
		maxFrequency 	= 156.000,
		modulation 		= MODULATION_AM
	},

Guns = {gun_mount("M_61", { count = 640 },{muzzle_pos = {8.863, -0.849, 0.0}}),--3.906000, 0.768000, -0.975000
},


	Pylons =     {

        pylon(1, 2, 0, 0, 0,
			{
				arg = 308,
				arg_value = 0,
				DisplayName = "Smoke",
  				use_full_connector_position = true,
				connector = "Pylon12",
			},
			Smoke
		),
        pylon(2, 0, 0, 0, 0,
			{
				arg = 309,
				arg_value = 1,
				DisplayName = "1",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			outboardleft
		),
        pylon(3, 0, 0, 0, 0,
			{
				arg = 310,
				arg_value = 1,
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon3",
			},
			inboard
		),
        pylon(4, 1, 0, 0, 0,
            {
				arg = 311,
				arg_value = 1,
				DisplayName = "3",
            	use_full_connector_position = true,
				connector = "Pylon4",
			},
			fuselageRear
		),
        pylon(5, 1, 0, 0, 0,
			{
				arg = 312,
				arg_value = 1,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon5",
			},
			fuselageFront
		),
        pylon(6, 0, 0, 0, 0,
			{
				arg = 313,
				arg_value = 1,
				DisplayName = "5",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			centerline
		),
		pylon(7, 1, 0, 0, 0,
			{
				arg = 314,
				arg_value = 1,
				DisplayName = "6",
				use_full_connector_position = true,
				connector = "Pylon7",
			},
			fuselageFront
		),
        pylon(8, 1, 0, 0, 0,
            {
				arg = 315,
				arg_value = 1,
				DisplayName = "7",
            	use_full_connector_position = true,
				connector = "Pylon8",
			},
			fuselageRear
		),
        pylon(9, 0, 0, 0, 0,
			{
				arg = 316,
				arg_value = 1,
				DisplayName = "8",
				use_full_connector_position = true,
				connector = "Pylon9",
			},
			inboard
		),
        pylon(10, 0, 0, 0, 0,
			{
				arg = 317,
				arg_value = 1,
				DisplayName = "9",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			outboardright
		),
		pylon(11, 2, 0, 0, 0,
			{
				arg = 318,
				arg_value = 0,
				DisplayName = "ECM",
				use_full_connector_position = true,
				connector = "Pylon12",
			},
			ECM_ELINT
		),
},
	
	Tasks = {
        aircraft_task(CAP),
     	aircraft_task(Escort),
      	aircraft_task(FighterSweep),
		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
    	aircraft_task(GroundAttack),
     	aircraft_task(CAS),
        aircraft_task(AFAC),
	    aircraft_task(RunwayAttack),
--  	aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(CAP),

	SFM_Data = {
	aerodynamics = --F15
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.014,
			cx_flap	=	0.03,
			cy_flap	=	0.15,
			cx_brk	=	0.06,
			table_data = 
			{--			Mach	Cx0			Cya		B 		B4 			Omxmax	Aldop	CyMax
				[1] = 	{0,		0.022,		0.07,	0.1609,	0.0001,		0.5,	  30,	1.1},
				[2] = 	{0.2,	0.022,		0.07,	0.1609,	0.0001,		1.5,	  30,	1.1},
				[3] = 	{0.4,	0.022,		0.07,	0.1609,	0.0001,		2.5,	  30,	1.1},
				[4] = 	{0.6,	0.022,		0.073,	0.1609,	0.0001,		3.5,	  30,	1.1},
				[5] = 	{0.7,	0.022,		0.076,	0.1609,	0.0001,		3.5,	28.66,	1.091},
				[6] = 	{0.8,	0.022,		0.079,	0.1609,	0.0001,		3.5,	27.33,	1.082},
				[7] = 	{0.9,	0.027,		0.083,	0.18,	0.0001,		3.5,	26,		1.0733},
				[8] = 	{1,		0.036,		0.085,	0.2,	0.0001,		3.5,	24.66,	1.0644},
				[9] = 	{1.05,	0.043,		0.0855,	0.21,	0.0001,		3.5,	24,		1.06},
				[10] = 	{1.1,	0.05,		0.086,	0.22,	0.0001,		3.15,	18,		1.04},
				[11] = 	{1.2,	0.048,		0.083,	0.23,	0.0001,		2.45,	17,		1.02},
				[12] = 	{1.3,	0.045,		0.077,	0.25,	0.0001,		1.75,	16,		1},
				[13] = 	{1.5,	0.042,		0.062,	0.3,	0.0001,		1.5,	13,		0.9},
				[14] = 	{1.7,	0.0393,		0.0513,	0.348,	0.0001,		0.9,	12,		0.7},
				[15] = 	{1.8,	0.038,		0.046,	0.372,	0.0001,		0.86,	11.4,	0.64},
				[16] = 	{2,		0.035,		0.039,	0.42,	9.9999999999999e-006,	0.78,	10.2,	0.52},
				[17] = 	{2.2,	0.033,		0.034,	0.458,	1e-005,		0.7,	9,	0.4},
				[18] = 	{2.5,	0.03,		0.033,	0.515,	1e-005,		0.7,	9,	0.4},
				[19] = 	{3,		0.03,		0.033,	0.61,	1e-005,		0.7,	9,	0.4},
				[20] = 	{3.9,	0.03,		0.033,	0.61,	1e-005,		0.7,	9,	0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,--67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19,
			dcx_eng	=	0.0144,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	7000,
			dpdh_f	=	12300,
			table_data = 
			{
				[1] = 	{0,		105840,		158564},
				[2] = 	{0.2,	97000,		163000},
				[3] = 	{0.4,	89000,		168000},
				[4] = 	{0.6,	89000,		176000},
				[5] = 	{0.7,	92000,		181000},
				[6] = 	{0.8,	95000,		186000},
				[7] = 	{0.9,	100000,		193000},
				[8] = 	{1,		105000,		203000},
				[9] = 	{1.1,	105000,		215000},
				[10] = 	{1.2,	107000,		225000},
				[11] = 	{1.3,	104000,		231000},
				[12] = 	{1.5,	102000,		251000},
				[13] = 	{1.8,	99000,		261000},
				[14] = 	{2,		87000,		270000},
				[15] = 	{2.2,	31033.3,	271000},
				[16] = 	{2.5,	29944.4,	221000},
				[17] = 	{3,		27222.2,	55000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},--NOSE_CENTER
	[1]  = {critical_damage = 3,  args = {296}},--NOSE_LEFT_SIDE
	[2]  = {critical_damage = 3,  args = {297}},--NOSE_RIGHT_SIDE
	[3]  = {critical_damage = 8,  args = {65}}, --CABINA
	[4]  = {critical_damage = 2,  args = {298}},--CABIN_LEFT_SIDE
	[5]  = {critical_damage = 2,  args = {301}},--CABIN_RIGHT_SIDE
	[7]  = {critical_damage = 2,  args = {249}},--GUN
	[8]  = {critical_damage = 3,  args = {265}},--FRONT_GEAR_BOX
	[9]  = {critical_damage = 3,  args = {154}},--FUSELAGE_LEFT_SIDE
	[10] = {critical_damage = 3,  args = {153}},--FUSELAGE_RIGHT_SIDE
	[11] = {critical_damage = 1,  args = {167}},--ENGINE_L_IN
	[12] = {critical_damage = 1,  args = {161}},--ENGINE_R_IN
	[13] = {critical_damage = 2,  args = {169}},--MTG_L_BOTTOM
	[14] = {critical_damage = 2,  args = {163}},--MTG_R_BOTTOM
	[15] = {critical_damage = 2,  args = {267}},--LEFT_GEAR_BOX
	[16] = {critical_damage = 2,  args = {266}},--RIGHT_GEAR_BOX
	[17] = {critical_damage = 2,  args = {168}},--MTG_L  (ENGINE)
	[18] = {critical_damage = 2,  args = {162}},--MTG_R  (ENGINE)
	[20] = {critical_damage = 2,  args = {183}},--AIR_BRAKE_R
	[23] = {critical_damage = 5,  args = {223}},--WING_L_OUT
	[24] = {critical_damage = 5,  args = {213}},--WING_R_OUT
	[25] = {critical_damage = 2,  args = {226}},--ELERON_L
	[26] = {critical_damage = 2,  args = {216}},--ELERON_R
	[29] = {critical_damage = 5,  args = {224}, deps_cells = {23, 25}},--WING_L_CENTER
	[30] = {critical_damage = 5,  args = {214}, deps_cells = {24, 26}},--WING_R_CENTER
	[35] = {critical_damage = 6,  args = {225}, deps_cells = {23, 29, 25, 37}},--WING_L_IN
	[36] = {critical_damage = 6,  args = {215}, deps_cells = {24, 30, 26, 38}},--WING_R_IN
	[37] = {critical_damage = 2,  args = {228}},--FLAP_L
	[38] = {critical_damage = 2,  args = {218}},--FLAP_R
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}},--FIN_L_TOP
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}},--FIN_R_TOP
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},--FIN_L_BOTTOM
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}},--FIN_R_BOTTOM
	[51] = {critical_damage = 2,  args = {240}},--ELEVATOR_L
	[52] = {critical_damage = 2,  args = {238}},--ELEVATOR_R
	[53] = {critical_damage = 2,  args = {248}},--RUDDER_L
	[54] = {critical_damage = 2,  args = {247}},--RUDDER_R
	[56] = {critical_damage = 2,  args = {158}},--TAIL_LEFT_SIDE
	[57] = {critical_damage = 2,  args = {157}},--TAIL_RIGHT_SIDE
	[59] = {critical_damage = 3,  args = {148}},--NOSE_BOTTOM
	[61] = {critical_damage = 2,  args = {147}},--FUEL_TANK_F
	[82] = {critical_damage = 2,  args = {152}},--FUSELAGE_BOTTOM

	[83] = {critical_damage = 3,  args = {134}},--WHEEL_F
	[84] = {critical_damage = 3,  args = {136}},--WHEEL_L
	[85] = {critical_damage = 3,  args = {135}},--WHEEL_R
	},
	
	DamageParts = 
	{  
		[1] = "VSN_F4B-oblomok-wing-r", -- wing R
		[2] = "VSN_F4B-oblomok-wing-l", -- wing L
	},
	
	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
						--{typename = "natostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1, 0.7}, connector = "BANO_0",intensity_max = 35},
						{typename = "natostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1.0, 0.7, 0.4}, connector = "BANO_0"},
					}
			},
			-- SPOTS
			[WOLALIGHT_LANDING_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 208, },
					},
			},
			[WOLALIGHT_TAXI_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 209, },
					},
			},
			-- NAVLIGHTS
			[WOLALIGHT_NAVLIGHTS]	= {	
					typename = "collection", -- nav_lights_default
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 192}, -- Tail Position white)
					},
			},
			-- FORMATION
			[WOLALIGHT_FORMATION_LIGHTS] = { 
					typename = "collection",
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
					},
			},
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
}

add_aircraft(VSN_F4B) --AG
