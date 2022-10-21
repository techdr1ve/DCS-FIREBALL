dofile(current_mod_path..'/Weapons.lua')

local tips 		= {
	{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = 0.0}, --aim 9M
    { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" ,arg_increment = 0.0}, --aim 9p
	{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = 0.0}, --AIM_120B
	--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = 0.0}, --AIM_120C
	{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = 0.0}, -- smoke gen blue
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = 0.0}, -- smoke gen green
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = 0.0}, -- smoke gen orange
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = 0.0}, -- smoke gen red
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = 0.0}, -- smoke gen white
    { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}" ,arg_increment = 0.0}, -- smoke gen yellow
	{ CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" ,arg_increment = 0.0}, -- Magic R.550
	{ CLSID = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}" ,arg_increment = 0.0}, -- SUPER 530F
	{ CLSID = "<CLEAN>"								   ,arg_increment = 1},
}

local outboard 	= {
	--{ CLSID = "LAU-115_2*LAU-127_AIM-9M"				,arg_increment = 0.0},	-- 2xAIM-9M
	--{ CLSID = "LAU-115_2*LAU-127_CATM-9M"				,arg_increment = 0.0},	-- 2xCATM-9M
	--{ CLSID = "LAU-115_2*LAU-127_AIM-9L"				,arg_increment = 0.0},	-- 2xAIM-9L
	--{ CLSID = "LAU-115_2*LAU-127_AIM-9X"				,arg_increment = 0.0},	-- 2xAIM-9X
	--{ CLSID = "LAU-115_LAU-127_AIM-9X"					,arg_increment = 0.0},	-- AIM-9X
	{ CLSID = "LAU-115_LAU-127_CATM-9M"					,arg_increment = 0.0},	-- CATM-9M
	{ CLSID = "LAU-115_LAU-127_AIM-9L"					,arg_increment = 0.0},	-- AIM-9L
	{ CLSID = "LAU-115_LAU-127_AIM-9M"					,arg_increment = 0.0},	-- AIM-9M
	{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = 0.0},--AIM-120B
	--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = 0.0},--AIM-120C
	{ CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}" ,arg_increment = 0.0}, -- Kh-29T aka RBS-15
	--{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" ,arg_increment = 0.0}, -- agm-65d
	--{ CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" ,arg_increment = 0.0}, -- gbu-10 (KAB-1500)
	--{ CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" ,arg_increment = 0.0}, -- gbu-12 (KAB-500kr)
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_increment = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_increment = 0.0}, -- 2*Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_increment = 0.0}, -- Mk83
        { CLSID = "{mk77mod0}", arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
        { CLSID = "BIN_200", arg_increment = 0.1, required = {{station = 2,loadout = {}}} },	-- BIN-200
	{ CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" ,arg_increment = 0.0},
	{ CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" ,arg_increment = 0.0},
	{ CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" ,arg_increment = 0.0},
	{ CLSID = "{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}" ,arg_increment = 0.0},
	{ CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" ,arg_increment = 0.0}, -- Magic R.550
	{ CLSID = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}" ,arg_increment = 0.0}, -- SUPER 530F
	{ CLSID = "{VSN_M3C1_PTB}" ,arg_increment = 0.0},--Zusatztank
	--{ CLSID = "{VSN_M3C2_PTB}" ,arg_increment = 0.0},--Zusatztank
	--{ CLSID = "<CLEAN>"									,arg_increment = 1},
}

local inboard 	= {
	--{ CLSID = "LAU-115_2*LAU-127_AIM-9M"				,arg_increment = 0.0},	-- 2xAIM-9M
	--{ CLSID = "LAU-115_2*LAU-127_CATM-9M"				,arg_increment = 0.0},	-- 2xCATM-9M
	--{ CLSID = "LAU-115_2*LAU-127_AIM-9L"				,arg_increment = 0.0},	-- 2xAIM-9L
	--{ CLSID = "LAU-115_2*LAU-127_AIM-9X"				,arg_increment = 0.0},	-- 2xAIM-9X
	--{ CLSID = "LAU-115_LAU-127_AIM-9X"					,arg_increment = 0.0},	-- AIM-9X
	{ CLSID = "LAU-115_LAU-127_CATM-9M"					,arg_increment = 0.0},	-- CATM-9M
	{ CLSID = "LAU-115_LAU-127_AIM-9L"					,arg_increment = 0.0},	-- AIM-9L
	{ CLSID = "LAU-115_LAU-127_AIM-9M"					,arg_increment = 0.0},	-- AIM-9M
	{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = 0.0},--AIM-120B
	--{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = 0.0},--AIM-120C
	--{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" ,arg_increment = 0.0}, -- agm-65d
	--{ CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" ,arg_increment = 0.0}, -- gbu-10 (KAB-1500)
	--{ CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" ,arg_increment = 0.0}, -- gbu-12 (KAB-500kr)
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_increment = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_increment = 0.0}, -- 2*Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_increment = 0.0}, -- Mk83
        { CLSID = "{mk77mod0}", arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}", arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
        { CLSID = "BIN_200", arg_increment = 0.1, required = {{station = 2,loadout = {}}} },	-- BIN-200 
	{ CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" ,arg_increment = 0.0}, -- Magic R.550
	{ CLSID = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}" ,arg_increment = 0.0}, -- SUPER 530F
	{ CLSID = "{Kh-58U}"								,arg_increment = 0.0},
	--{ CLSID = "<CLEAN>"									,arg_increment = 1},
}

local fuselageLeft	= {
	--
}

local fuselageRight	= {
	--
}

local centerline 	= {
	--{ CLSID = "{VSN_M3C2_PTB}" ,arg_increment = 0.0},--Zusatztank
	{ CLSID = "{VSN_M3C3_PTB}" ,arg_increment = 0.0},--Zusatztank
	--{ CLSID = "<CLEAN>"									,arg_increment = 1},
}


local ECM_ELINT 	= {
	{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" }, --L005 Sorbtsiya ECM pod (left)
	{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0 ,0 } },-- ELINT
	{ CLSID = "{INV-SMOKE-RED}" ,attach_point_position = {-2, 0 ,0 }},		--Smoke Generator - red
	{ CLSID = "{INV-SMOKE-GREEN}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - green
	{ CLSID = "{INV-SMOKE-BLUE}" ,attach_point_position = {-2, 0 ,0 }},		--Smoke Generator - blue
	{ CLSID = "{INV-SMOKE-WHITE}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - white
	{ CLSID = "{INV-SMOKE-YELLOW}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - yellow
	{ CLSID = "{INV-SMOKE-ORANGE}" ,attach_point_position = {-2, 0 ,0 }},	--Smoke Generator - orange
}

local SENSOR_RADAR = {
	
	["CYRANO_2B"] = 
		{
			type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 20.0
            },
            max_measuring_distance = 100000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 65000.0,
                    [ASPECT_TAIL_ON] = 45000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 50500.0,
                    [ASPECT_TAIL_ON] = 40500.0
                }
            },			
            lock_on_distance_coeff = 0.85,
			TWS_max_targets = 2,
            velocity_limits =
            {
                radial_velocity_min = 100.0 / 3.6,
                relative_radial_velocity_min = 100.0 / 3.6,
            },
            scan_period = 5.0,
        },
}

VSN_MirageIIIS =  {
      
		Name 			= 'VSN_MirageIIIS',--AG
		DisplayName		= _('Mirage IIIS'),--AG
        Picture 		= "VSN_MirageIII.png",
        Rate 			= "50",
        Shape			= "VSN_MirageIIIS",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_MirageIIIS';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_MirageIII-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_MirageIIIS';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_MirageIII-oblomok";
			file  		= "VSN_MirageIII-oblomok";
			fire  		= { 240, 2};
		},
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
	
		M_empty						=	6949,	-- kg  MIIID/E_with pilot and nose load
		M_nominal					=	9099,	-- kg MIIID/E (Empty Plus Full Internal Fuel)
		M_max						=	13700,	-- kg MIIID/E (Maximum Take Off Weight)
		M_fuel_max					=	2150,	-- kg (Internal Fuel Only)
		H_max						=	21945,	-- m  MIIID/E (Maximum Operational Ceiling)
		average_fuel_consumption	=	0.245,  -- geändert von 0.271
		CAS_min						=	58,		-- Minimum CAS speed (m/s) (for AI)
		V_opt						=	230,	-- MIIID/E Cruise speed (m/s) (for AI)
		V_take_off					=	90,		-- MIIID/E Take off speed in m/s (for AI)
		V_land						=	85,		-- MIIID/E Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {3.490,	-2.280,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.43,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.215,   -- up 
	    nose_gear_wheel_diameter 	                =  0.544, -- in m
	
	    main_gear_pos 						 	    = {-0.800,	-2.100,	1.52}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.228, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.114,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.66, -- in m

		AOA_take_off				=	0.17,	-- AoA in take off (for AI)
		stores_number				=	5,		-- MIIID/E 
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8,		-- Max G (for AI)
		V_max_sea_level				=	385.83,	-- MIIID/E Max speed at sea level in m/s (for AI)
		V_max_h						=	680.58,	-- MIIID/E Max speed at max altitude in m/s (for AI)
		wing_area					=	34.79,	-- MIIID/E wing area in m2
		thrust_sum_max				=	4279,	-- MIIID/E thrust in kgf (41,970 kN)
		thrust_sum_ab				=	6199,	-- MIIID/E thrust in kgf (60,8 kN)
		Vy_max						=	180,	-- MIIID/E (estimate) Max climb speed in m/s (for AI)
		flaps_maneuver				=	1,
		Mach_max					=	2.2,	-- MIIID/E Max speed in Mach (for AI)
		range						=	3335,	-- MIIIID/E Max range in km (for AI)
		RCS							=	3,		-- MIIID/E (estimate) Radar Cross Section m2
		Ny_max_e					=	8,		-- Max G (for AI)
		detection_range_max			=	100,	-- MIIID/E (Cyrano_2B Radar)
		IR_emission_coeff			=	0.71,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	2,		-- With afterburner
		tand_gear_max				=	3.73,	--XX  1.732 FA18 3.73, 
		tanker_type					=	0,		--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	8.22,	-- MIIID/E wing spain in m
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	15.03,  -- MIIID/E 
		height						=	4.50,   -- MIIID/E 
		crew_size					=	1, 		--XX
		engines_count				=	1, 		--XX
		wing_tip_pos 				= 	{-3.404,	-0.164,	4.05},
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.743},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            CrewLadder = {
                {Transition = {"Dismantle", "Erect"}, Sequence = {{C = {{"Arg", 91, "to", -0.9, "in", 1.5}}}, {C = {{"Sleep", "for", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Erect", "Dismantle"}, Sequence = {{C = {{"Arg", 91, "to", 0.0, "in", 2.7}}}, {C = {{"Sleep", "for", 0.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
        },
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.231,	0.268,	0},-- Tribwerke   -5.231,	-0.468,	0
				elevation	=	0,-- AFB cone elevation  winkel nach oben unten
				diameter	=	1.0,-- AFB cone diameter   Kreis Ø
				exhaust_length_ab	=	9.0,--lenght in m  Kreis Ø kegel efekt
				exhaust_length_ab_K	=	0.707,--animation geschwindigkeit
				smokiness_level     = 	0.01, --0.05
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	"VSN_MirageIII-fonar";
				pos = 	{3.9,	1.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	3,--Mig29=3/Su27=4/
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_MirageIII_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},--0,	1,	0  vorne
				pos = 	{-2.776,	-1.0,	-0.422},---5.776,	1.4,	-0.422
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},--0,	1,	0
     			pos = 	{-2.776,	-1.0,	0.422},---5.776,	1.4,	0.422
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser

        -- Countermeasures
passivCounterm 		= {
CMDS_Edit 			= true,
SingleChargeTotal 	= 180,
chaff 				= {default = 90, increment = 45, chargeSz = 1},
flare 				= {default = 45, increment = 45, chargeSz = 2}
 },
	
        CanopyGeometry 	= {
            azimuth 	= {-145.0, 145.0},-- pilot view horizontal (AI)
            elevation 	= {-50.0, 90.0}-- pilot view vertical (AI)
        },

Sensors = {
RADAR 			= "CYRANO_2B",--MIIID/E
RWR 			= "Abstract RWR"--F15
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

Guns =  {
          gun_mount("BK_27", { count = 125 },{muzzle_pos = {5.834, -0.609, -0.646}}), 
          gun_mount("BK_27", { count = 125 },{muzzle_pos = {5.834, -0.609,  0.646}})
		}, -- 2 × 30-mm-Revolverkanone GIAT DEFA 552 mit je 125 Schuss

--pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

        pylon(1, 0, 0, 0, 0,
			{
				arg = 308,
				arg_value = 0,
				DisplayName = "1",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			tips
		),
        pylon(2, 0, 0, 0, 0,
			{
				arg = 309,
				arg_value = 1,
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			outboard
		),
        pylon(3, 0, 0, 0, 0,
			{
				arg = 310,
				arg_value = 1,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon3",
			},
			inboard
		),
        pylon(4, 0, 0, 0, 0,
            {
				arg = 311,
				arg_value = 1,
				DisplayName = " ",--4
            	use_full_connector_position = true,
				connector = "Pylon4",
			},
			fuselageLeft
		),
        pylon(5, 2, 0, 0, 0,--26
			{
				arg = 312,
				arg_value = 1,
				DisplayName = "ELINT",
				use_full_connector_position = true,
				connector = "Pylon5",
			},
			ECM_ELINT
		),
        pylon(6, 0, 0, 0, 0,
			{
				arg = 313,
				arg_value = 1,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			centerline
		),
		pylon(7, 2, 0, 0, 0,--26
			{
				arg = 314,
				arg_value = 1,
				DisplayName = "ECM",
				use_full_connector_position = true,
				connector = "Pylon7",
			},
			ECM_ELINT
		),
        pylon(8, 0, 0, 0, 0,
            {
				arg = 315,
				arg_value = 1,
				DisplayName = " ",--6
            	use_full_connector_position = true,
				connector = "Pylon8",
			},
			fuselageRight
		),
        pylon(9, 0, 0, 0, 0,
			{
				arg = 316,
				arg_value = 1,
				DisplayName = "5",
				use_full_connector_position = true,
				connector = "Pylon9",
			},
			inboard
		),
        pylon(10, 0, 0, 0, 0,
			{
				arg = 317,
				arg_value = 1,
				DisplayName = "6",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			outboard
		),
		pylon(11, 0, 0, 0, 0,
			{
				arg = 318,
				arg_value = 0,
				DisplayName = "7",
				use_full_connector_position = true,
				connector = "Pylon11",
			},
			tips
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
--    	aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(FighterSweep),

	SFM_Data = {
	aerodynamics = --F15
		{
			Cy0				=	0,
			Mzalfa			=	6,
			Mzalfadt		=	1,
			kjx 			= 2.91,	 -- MIID/E (EB)
			kjz 			= 0.00125,
			Czbe 			= -0.009,
			cx_gear 		= 0.023, -- MIIID/E (EB)
			cx_flap 		= 0.04,	 -- MIIID/E (EB)
			cy_flap 		= 0.34,  -- MIIID/E (EB)
			cx_brk 			= 0.055, -- MIIID/E (EB)
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	   Omxmax	Aldop	Cymax
				{0.0,	0.020,		0.0095,		0.203,	 0,		0.30,	21.0,	0.013 },
				{0.2,	0.020,		0.0195,		0.203,	 0,		1.12,	22.0,	0.95 },
				{0.4,	0.020,		0.0312,		0.203,	 0,		1.95,	27.0,	1.15 },
				{0.6,	0.020,		0.0440,		0.203,	 0,		2.35,	29.0,	1.25 },
				{0.7,	0.020,		0.0383,		0.203,	 0,		2.71,	30.0,	1.15 },
				{0.8,	0.020,		0.0373,		0.203,	 0,		2.99,	31.0,	1.05 },
				{0.9,	0.024,		0.0440,		0.203,	 0,		3.10,	32.0,	1.009 },
				{1.0,	0.030,		0.0520,		0.203,	 0,		2.95,	30.0,	1.02 },
				{1.05,  0.034,      0.0560,     0.204,   0,     2.90,   28.0,   1.01 },
				{1.1,	0.034,		0.0535,	   	0.206,	 0,		2.80,	27.0,	0.99 },
				{1.2,	0.034,		0.0486,	   	0.212,	 0,		2.80,	21.0,	0.98 },		
				{1.3,	0.034,		0.0450,	   	0.222,	 0,		2.70,	19.0,	0.91 },				
				{1.4,	0.033,		0.0380,	   	0.259,	 0,		2.10,	17.0,	0.80 },					
				{1.6,	0.033,		0.0351,	   	0.322,	 0,		1.80,	15.0,	0.61 },					
				{1.8,	0.032,		0.0271,	   	0.365,	 0,		1.40,	12.0,	0.50 },		
				{2.0,   0.032,      0.0230,     0.476,   0,     1.25,   12.0,   0.42 },
				{2.1,   0.031,      0.0220,     0.545,   0,     1.10,   10.0,   0.39 },
				{2.2,	0.031,		0.0190,	   	0.624,	 0,		0.90,	10.0,	0.39 },					
				{2.3,   0.031,      0.0150,     0.714,   0,     0.90,    9.0,   0.39 },
				{2.5,	0.031,		0.0130,		0.926,	 0,		0.90,	 9.0,	0.39 },		
				{3.9,	0.030,		0.0130,		3.911,	 0,		0.90,	 7.0,	0.29 },
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0090,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	3000,
			dpdh_f	=	5000.0,
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	41979,		60800},
				{0.2,	45002,		62500},
				{0.4,	47125,		65200},
				{0.6,	49778,		66200},
				{0.7,	50112,		68100},
				{0.8,	51220,		70700},
				{0.9,	52001,		75400},
				{1.0,	50112,		81200},
				{1.1,	48112,		83000},
				{1.2,	45100,		87000},
				{1.3,	44500,		95000},
				{1.4,	42500,	   101000},
				{1.6,	41250,	   111000},
				{1.8,	39000,	   125000},
				{2.2,	37500,	   122000},
				{2.5,	36420,	   115000},
				{3.9,	32521,	    85000},
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
		[1] = "VSN_MirageIII-oblomok-wing-r", -- wing R
		[2] = "VSN_MirageIII-oblomok-wing-l", -- wing L
	},
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

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
                            typename = "argnatostrobelight", argument = 193,
                            controller = "Strobe", mode = 1, power_up_t = 0.0, cool_down_t = 0.0, period = 1.3, reduced_flash_time = 0.45, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 194,
                            controller = "Strobe", mode = 1, power_up_t = 0.0, cool_down_t = 0.0, period = 1.3, reduced_flash_time = 0.45, phase_shift = 0.5,
                        },
						
						{
                            typename = "argnatostrobelight", argument = 190,
                            controller = "Strobe", mode = 1, power_up_t = 0.5, cool_down_t = 0.5, period = 1.2, reduced_flash_time = 0.45, phase_shift = 0.0,
                        },
						{
                            typename = "argnatostrobelight", argument = 191,
                            controller = "Strobe", mode = 1, power_up_t = 0.5, cool_down_t = 0.5, period = 1.2, reduced_flash_time = 0.45, phase_shift = 0.0,
                        },--Mode 0 ?
					}
			},
			-- SPOTS
			[WOLALIGHT_LANDING_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 208,},
					},
			},
			[WOLALIGHT_TAXI_LIGHTS] = { 
					typename = "collection",
					lights = {
						{ typename  = "argumentlight",	argument  = 209,},
					},
			},
			-- NAVLIGHTS
			[WOLALIGHT_NAVLIGHTS]	= {	
					typename = "collection", -- nav_lights_default
					lights = {
						{typename = "argumentlight",argument = 190}, -- Left Position(red)
						{typename = "argumentlight",argument = 191}, -- Right Position(green)
						{typename = "argumentlight",argument = 193}, -- Tail Position white)
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

add_aircraft(VSN_MirageIIIS) --AG
