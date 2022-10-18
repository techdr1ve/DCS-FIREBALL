
local tips 		= {
	{ CLSID = "{AIS_ASQ_T50}" ,arg_value = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_value = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_value = 0.0},								 --AIM-9B NEU
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
        { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
        { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0}, --M117 1x
	{ CLSID = "{AGM_45A}"								,arg_value = 0.0},-- AGM 45A "Shrike"
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "<CLEAN>"								   ,arg_value = 1},
}

local outboard 	= {
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_value = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_value = 0.0},								 --AIM-9B NEU
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
        { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
        { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 2,loadout = {}}} },	-- BIN-200
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_value = 0.0}, --M117 1x
	{ CLSID = "{AGM_45A}"								,arg_value = 0.0},-- AGM 45A "Shrike"
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{VSN_F1001000_ptb}" ,arg_value = 0.5,attach_point_position = {0.0, 0.0 , 0.0 } },--Tank 1000L
	{ CLSID = "<CLEAN>"								   ,arg_value = 1},
}

local inboard 	= {
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_value = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_value = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_value = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_value = 0.0}, -- Mk83
        { CLSID = "{mk77mod0}", arg_value = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_value = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
        { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 3,loadout = {}}} },	-- BIN-200
	{ CLSID = "{TER_9A_3*MK-82}"					   ,arg_value = 0.0},--Mk82x3
	{ CLSID = "{SB_F105_BRU_41A_M117_6}" 				,arg_value = 0.0},--M117x6
	{ CLSID = "{SB_F105_TER9A_M117_3}"					,arg_value = 0.0},--M117x3
	{ CLSID = "{BRU-42_3*Mk-83}"					   	,arg_value = 0.0},--Mk83x3
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_value = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_value = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{BRU33_2*LAU61_M282}"					,arg_value = 0.0},--Neuer Versuch mit 2xMK282 Hydrasx19
	{ CLSID = "{VSN_F100500_ptb}" ,arg_value = 0.0,attach_point_position = {0.0, 0.0 , 0.0 } },
	{ CLSID = "<CLEAN>"								   	,arg_value = 1},
}

local fuselageRight	= {
	--
}

local centerline 	= {
	--
}

local fuselageLeft	= {
	--
}

local Smoke	= {
	{ CLSID = "{INV-SMOKE-RED}"		,attach_point_position = {0, 0 ,0 }},--Smoke Generator - red
	{ CLSID = "{INV-SMOKE-GREEN}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - green
	{ CLSID = "{INV-SMOKE-BLUE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - blue
	{ CLSID = "{INV-SMOKE-WHITE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - white
	{ CLSID = "{INV-SMOKE-YELLOW}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - yellow
	{ CLSID = "{INV-SMOKE-ORANGE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - orange
}

local ECM_ELINT 	= {
--	{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" ,arg_value = 0.0}, --L005 Sorbtsiya ECM pod (left)
	{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}" ,arg_value = 0.0},-- ELINT
}

local nichts	= {
	--
}


VSN_F100 =  {
      
		Name 			= 'VSN_F100',--AG
		DisplayName		= _('F-100 Super Sabre'),--AG
        Picture 		= "VSN_F100.png",
        Rate 			= "50",
        Shape			= "VSN_F100",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
		--input_profile_entry = 	"VSN_F100",
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_F100';--AG
			life  	 	= 18; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_F100-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_F100';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_F100-oblomok";
			file  		= "VSN_F100-oblomok";
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
	
		M_empty						=	9526,	--F-100	-- kg  with pilot and nose load, 
		M_nominal					=	13085,	--F-100,	-- kg (Empty Plus Full Internal Fuel) 
		M_max						=	15800,	--F-100 kg (Maximum Take Off Weight) 
		M_fuel_max					=	3397,	--F-100,	-- kg (Internal Fuel Only) 
		H_max						=	15100,	--F-100 m  (Maximum Operational Ceiling) 
		average_fuel_consumption	=	0.39,   -- just speculation, and a good guess 
		CAS_min						=	65,		--F-100 Minimum CAS speed (m/s) (for AI) 
		V_opt						=	205,	-- F-100 Cruise speed (m/s) (for AI) 
		V_take_off					=	87,		-- F-100 Take off speed in m/s (for AI) 
		V_land						=	93,		-- F-100 Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	false,

		nose_gear_pos 				                = {3.688, -2.420, 0},   -- position of gear
	    nose_gear_amortizer_direct_stroke   		=  0.15,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.15,  -- up
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.08,   -- up
	    nose_gear_wheel_diameter 	                =  0.48, -- 3D Modell
	
	    main_gear_pos 						 	    = {-0.8, -2.190, 1.71}, -- changed back
	    main_gear_amortizer_direct_stroke	 	    =  0.26, -- 01 down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =  -0.26, -- 01 up
	    main_gear_amortizer_normal_weight_stroke    =  -0.13,-- 08 down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.85, -- 3D Modell

		AOA_take_off				=	0.17,	-- AoA in take off (for AI) changed F104
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-2.5,	-- F-100 Min G (for AI) changed
		Ny_max						=	7.00,	-- F-100 Max G (for AI) changed 
		V_max_sea_level				=	342,	-- F-100 Max speed at sea level in m/s (for AI) changed
		V_max_h						=	473,	-- F-100 Max speed at max altitude in m/s (for AI) changed
		wing_area					=	37.0,	-- F-100 wing area in m2 changed 
		thrust_sum_max				=	4588,	-- thrust in kgf (45 kN) changed F100 
		thrust_sum_ab				=	87239,	-- thrust in kgf (71 kN) changed F100 
		Vy_max						=	114,	-- Max climb speed in m/s (for AI) changed F100
		flaps_maneuver				=	0.5,	-- 0.5 stage 1 1 stage 2 flaps changed F100
		Mach_max					=	1.40,	-- Max speed in Mach (for AI) changed F100
		range						=	3211,	-- Max range in km (for AI) changed F100
		RCS							=	3.55,	-- Radar Cross Section m2 changed F100
		Ny_max_e					=	7.11,	-- Max G (for AI) changed F100
		detection_range_max			=	40,		-- changed to very short range
		IR_emission_coeff			=	0.65,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference. changed F100
		IR_emission_coeff_ab		=	2.15,	-- With afterburner changed F100
		tand_gear_max				=	2.747,	--XX  1.732 FA18 3.73, changed F104
		tanker_type					=	2,		--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	11.81,	--XX  wing spain in m changed F100
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	15.0, -- changed to f100
		height						=	4.95, -- changed to f100
		crew_size					=	1, --XX
		engines_count				=	1, --XX
		wing_tip_pos 				= 	{-1.268,	-0.69, 4.014}, -- changed F104
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		
		--mechanimations = "Default",
		
		mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.2},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Open", "Taxi"},   Sequence = {{C = {{"Arg", 38, "to", 0.1, "in", 2.2},},},},},
				{Transition = {"Taxi", "Open"},   Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},},},},},
				{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            ServiceHatches = {
				{Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 30.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},-- Abdeckungen
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
        }, -- end of mechanimations


		engines_nozzles = 
		{
			[1] = 
			{
				pos 				= 	{-5.23,	0,	0},
				elevation			=	0,
				diameter			=	0.9,
				exhaust_length_ab	=	8.4,
				exhaust_length_ab_K	=	0.60,
				smokiness_level     = 	0.6, 
				afterburner_circles_count 	= 0,
				afterburner_circles_pos 	= {0.2, 0.8}, -- ?
				afterburner_circles_scale 	= 0.7, -- Kreisgrösse
				--afterburner_effect_texture = "afterburner_F104G",
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				pilot_name			= 	19,
				drop_canopy_name	=	"VSN_F100_fonar";
				pos = 	{5.050,	0.52,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	3,--Mig29=3/Su27=4/
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{6.923,	0.355,	-0.793},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},	-- After maingear, fuselage bottom
			[2] = 	{-0.037,	0.285,	1.391},		-- Wing inner Left top **
			[3] = 	{-0.037,	0.285,	-1.391},	-- Wing inner Right bottom **
			[4] = 	{-0.82,	0.265,	2.774},			-- Wing middle Left bottom **
			[5] = 	{-0.82,	0.265,	-2.774},		-- Wing middle Right top **
			[6] = 	{-0.82,	0.255,	4.274},			-- Wing outer Left **
			[7] = 	{-0.82,	0.255,	-4.274},		-- Wing outer Right
			[8] = 	{-5.003,	0.261,	0},			-- Engine damage big
			[9] = 	{-5.003,	0.261,	0},			-- Engine damage small
			[10] = 	{-0.707,	0.453,	1.036},		-- Air intake bottom L
			[11] = 	{-0.707,	0.453,	-1.036},	-- Air intake bottom R
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F100_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 60,
chaff 				= {default = 30, increment = 30, chargeSz = 1},
flare 				= {default = 15, increment = 15, chargeSz = 2}
 },
	
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },

Sensors = {
--RADAR 			= -- angepasst F-100 kein RADAR auskommentiert zum Testen
RADAR			= "AN/APQ-120", --testweise
RWR 			= "Abstract RWR"--F15
},

--[[Countermeasures = {
ECM 			= -- no ECM
},]]

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
		frequency 		= 251.0,  -- Radio Freq angepasst F104
		editable 		= true,
		minFrequency	= 225.000, -- angepasst F104
		maxFrequency 	= 399.979, -- angepasst F104
		modulation 		= MODULATION_AM
	},
	
	Guns =  {
        gun_mount("M_61", { count = 200 },{muzzle_pos_connector = "Gun_point_0"}),
		gun_mount("M_61", { count = 200 },{muzzle_pos_connector = "Gun_point_1"}),
		gun_mount("M_61", { count = 200 },{muzzle_pos_connector = "Gun_point_2"}),
        gun_mount("M_61", { count = 200 },{muzzle_pos_connector = "Gun_point_3"}),
	}, 
		  --4 × 20-mm-Revolver-Maschinenkanonen Pontiac M39A1 (T-160) mit je 200 Schuss



	Pylons =     {

        pylon(1, 2, 0, 0, 0,
			{
				arg = 308,
				arg_value = 0,
				DisplayName = "",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			nichts
		),
        pylon(2, 2, 0, 0, 0,
			{
				arg = 309,
				arg_value = 0,
				DisplayName = "ELINT",
            	use_full_connector_position = true,
				connector = "Pylon2",
			},
			ECM_ELINT
		),
        pylon(3, 0, 0, 0, 0,
			{
				arg = 310,
				arg_value = 0,
				DisplayName = "1",
            	use_full_connector_position = true,
				connector = "Pylon3",
			},
			tips
		),
        pylon(4, 0, 0, 0, 0,
            {
				arg = 311,
				arg_value = 0,
				DisplayName = "2",
  				use_full_connector_position = true,
				connector = "Pylon4",
			},
			outboard
		),
        pylon(5, 0, 0, 0, 0,
			{
				arg = 312,
				arg_value = 0,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon5",
			},
			inboard
		),
        pylon(6, 2, 0, 0, 0,
			{
				arg = 313,
				arg_value = 0,
				DisplayName = "Smoke",
				use_full_connector_position = true,
				connector = "AFTERBURN_001",
			},
			Smoke
		),
		pylon(7, 0, 0, 0, 0,--
			{
				arg = 314,
				arg_value = 0,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon7",
			},
			inboard
		),
        pylon(8, 0, 0, 0, 0,
            {
				arg = 315,
				arg_value = 0,
				DisplayName = "5",
				use_full_connector_position = true,
				connector = "Pylon8",
			},
			outboard
		),
        pylon(9, 0, 0, 0, 0,
			{
				arg = 316,
				arg_value = 0,
				DisplayName = "6",
				use_full_connector_position = true,
				connector = "Pylon9",
			},
			tips
		),
        pylon(10, 2, 0, 0, 0,
			{
				arg = 317,
				arg_value = 0,
				DisplayName = "",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			nichts
		),
		pylon(11, 2, 0, 0, 0,
			{
				arg = 318,
				arg_value = 0,
				DisplayName = "",
				use_full_connector_position = true,
				connector = "Pylon11",
			},
			nichts
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
        --aircraft_task(AFAC),
          aircraft_task(RunwayAttack),
          aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(FighterSweep),

	SFM_Data = {
	aerodynamics = --changed to F-100/F-104 Data 
		{
			Cy0			    =	0,
			Mzalfa		  	=	5, -- changed to 1.8 / rechanged due to strange elevator behavior to 5
			Mzalfadt	  	=	1.2, -- changed to 1.2 / rechanged due to strange elevator behavior to 1 and changed back to 1.2
			kjx 		  	= 2.150, -- changed and corrected
			kjz 		  	= 0.0011, -- changed
			Czbe 		  	= -0.06, -- changed
			cx_gear 	  	= 0.0285, -- F-100
			cx_flap 	  	= 0.175, -- changed F-100
			cy_flap 	  	= 0.39, -- changed F-100
			cx_brk 		  	= 0.019, -- changed was 0.014 F-100
			table_data  	= 
			{--			F-100		F-100							  F-100			F-100				
			--      M	 Cx0		 Cya		 B		 	B4	      Omxmax		Aldop		Cymax
				{0,	    0.0085,		0.012,		0.010,		0.057,		0.5,		12,			0.1}, -- changed + B4 added + Cya from 0.009 to 0.025 + Cymax from 1.17 to 0.1 + Aldop from 15 
				{0.1,	0.0089,		0.029,		0.015,		0.037,		1.011,		14,			0.45}, -- added (eyeballed) + B4 added + Cya from 0.015 to 0.038 + Omxmax from 1.511 to 1.011 + Cymax from 1.17 to 0.45 + Aldop from 15
				{0.2,	0.0092,		0.038,		0.025,		0.025,		2.511,		18,			0.88}, -- changed + B4 added + Cya from 0.043 to 0.051 + Omxmax from 3.197 to 2.511 + Cymax from 1.17 to 0.88+ Aldop was 15
				{0.4,	0.0097,		0.044,		0.055,		0.025,		3.014,		21,			0.932}, -- changed + B4 added + Aldop was 15
				{0.6,	0.0099,		0.049,		0.175,		0.025,		2.687,		22,			0.901}, -- changed and corrected and recorrected + Cymax from 0.854 to 0.901 + Aldop was 15
				{0.7,	0.0101,		0.050,		0.175,		0.025,		2.242,		25,			0.714}, -- changed + B4 added + Cymax from 0.845 to 0.714
				{0.8,	0.0106,		0.053,		0.175,		0.025,		2.580,		27,			0.732}, -- changed + B4 added + Cymax from 0.865 to 0,732
				{0.9,	0.0115,		0.067,		0.175,		0.025,		2.923,		27,			0.807}, -- changed + B4 added + Cymax from 0.985 to 0.807
				{1	,	0.0265,		0.064,		0.175,		0.025,		3.161,		23,			1.028}, -- changed + B4 added + Cymax 1.185 to 1.028
				{1.05,	0.0328,		0.060,		0.189,		0.077,		3.049,		22,			1.185}, -- changed + B4 added
				{1.1,	0.0324,		0.058,		0.204,		0.138,		2.937,		22,			1.185}, -- changed + B4 added
				{1.2,	0.0321,		0.052,		0.218,		0.196,		3.209,		22,			1}, -- changed + B4 added
				{1.3,	0.0317,		0.047,		0.235,		0.250,		2.055,		21,			1}, -- changed + B4 added
				{1.5,	0.0320,		0.043,		0.278,		0.336,		2.179,		20,			1}, -- changed + B4 added
				{1.7,	0.0312,	  	0.041,		0.339,		0.414,		2.113,		19,			0.8}, -- changed + B4 added
				{1.8,	0.0310,		0.040,		0.381,		2.051,		2.218,		18,			0.7}, -- changed + B4 added + B4eyeball
				{2,	    0.0302,		0.039,		0.506,		3.855,		2.399,		17,			0.6}, -- changed + B4 added + B4eyeball
				{2.1,	0.03018,	0.039,		0.606,		4.010,		2.47,		16,			0.6}, -- changed + B4 added + B4eyeball
				{2.2,	0.03017,	0.038,		0.755,		5.551,		2.136,		11,			0.6}, -- changed + B4 added + B4eyeball
				{2.5,	0.03009,	0.028,		0.885,		6.055,		1.572,		10,			0.6},-- added with approx. values see below 	
				
			}, -- end of table_data
    }, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5, --rpm at idle
			MinRUD	=	0,    -- min state of throttle
			MaxRUD	=	1,    -- max state of throttle
			MaksRUD	=	0.85, -- mil power state of throttle
			ForsRUD	=	0.91, -- AB state of throttle
			type	=	"TurboJet",
			hMaxEng	=	22.86, -- changed to F104G specs
			dcx_eng	=	0.0085, -- changed to F104G specs
			cemax	=	0.85, -- changed to F-104G specs
			cefor	=	1.112, -- changed to F-104G specs
			dpdh_m	=	2250, -- changed to F-104G specs
			dpdh_f	=	7000, -- changed to F-104G specs and corrected to 7000
			table_data = {
			--   M		Pmax		 Pfor
				{0,	    55227,		85976},	-- changed and corrected +49/25%
				{0.2,	50227,		84720}, -- changed and corrected +49/25%
				{0.4,	46919,		86763},	-- changed and corrected +49/25%
				{0.6,	48412,		93186},	-- changed and corrected +49/25%
				{0.7,	46745,		98684},	-- changed and corrected +49/25%
				{0.8,	47610,		110545},	-- changed and corrected +49/25%// von 105345 zu 110545
				{0.9,	48699,		125441},	-- changed and corrected +49/25%//von 106441 zu 125441
				{1,	    47711,		123384},	-- changed and corrected +49/25%//von 109384 zu 123384
				{1.1,	44357,		129721}, -- changed and corrected +49/25%//von 109721 zu 129721
				{1.2,	44305,		123014}, -- changed and corrected +49/25%//von 115514 zu 123014
				{1.3,	44490,		138879}, -- changed and corrected +49/25%// von 121879 zu 138879
				{1.5,	44571,		144333}, -- changed and corrected +49/25%//von 136444 zu 144333
				{1.8,	43834,		145223}, -- changed and corrected +49/25%//von 136823 zu 145223
				{2,	    42010,		136524}, -- changed and corrected +49/25% 
				{2.1,	17688,		136524}, -- changed and corrected +49/25%
				{2.5,	17068,		34750}, -- changed and corrected +49/25%
				{3,	    15517,		34750}, -- changed and corrected +49/25%
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
	},
	
	DamageParts = 
	{  
		[1] = "VSN_F100-oblomok-wing-r", -- wing R
		[2] = "VSN_F100-oblomok-wing-l", -- wing L
	},


	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
					--	{typename = "argnatostrobelight",  argument = 193, period = 2.2,  phase_shift = 0.0}, -- Strobe - BANO_0/BANO_00
					--	{typename = "argnatostrobelight",  argument = 194, period = 2.2,  phase_shift = 0.5}, -- Strobe - BANO_1/BANO_11
					--	{typename = "argnatostrobelight",  argument = 190, period = 2.2,  phase_shift = 0.0}, -- Strobe 
					--	{typename = "argnatostrobelight",  argument = 191, period = 2.2,  phase_shift = 0.0}, -- Strobe 
						{
                            typename = "argnatostrobelight", argument = 194,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.5,
                        },
						{
                            typename = "argnatostrobelight", argument = 190,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 191,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 193,
                            controller = "Strobe", mode = 1, power_up_t = 0.1, cool_down_t = 0.0, 
							period = 2.0, reduced_flash_time = 0.5, phase_shift = 0.0,
                        },--Mode 0 ?
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
						{typename = "argumentlight",argument = 192}, -- Position (white)
						{typename = "argumentlight",argument = 193}, -- Tail links rechts (white)
					},
			},
			-- FORMATION
			[WOLALIGHT_FORMATION_LIGHTS] = { 
					typename = "collection",
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						--{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
					},
			},
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
}

add_aircraft(VSN_F100) --AG
