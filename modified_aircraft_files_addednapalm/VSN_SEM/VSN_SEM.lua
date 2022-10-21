
VSN_SEM =  {
      
		Name 			= 'VSN_SEM',--AG
		DisplayName		= _('VSN SEM'),--AG
        Picture 		= "VSN_SEM.png",
        Rate 			= "50",
        Shape			= "VSN_SEM",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_SEM';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_SEM-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_SEM';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_SEM-oblomok";
			file  		= "VSN_SEM-oblomok";
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
	
		M_empty						=	13380,	-- kg  with pilot and nose load, F15
		M_nominal					=	19000,	-- kg (Empty Plus Full Internal Fuel)
		M_max						=	30845,	-- kg (Maximum Take Off Weight)
		M_fuel_max					=	6103,	-- kg (Internal Fuel Only)
		H_max						=	18300,	-- m  (Maximum Operational Ceiling)
		average_fuel_consumption	=	0.271,
		CAS_min						=	58,		-- Minimum CAS speed (m/s) (for AI)
		V_opt						=	220,	-- Cruise speed (m/s) (for AI)
		V_take_off					=	61,		-- Take off speed in m/s (for AI)
		V_land						=	71,		-- Land speed in m/s (for AI)
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = { 4.21, -2.31,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.43,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.215,   -- up 
	    nose_gear_wheel_diameter 	                =  0.754,--0.566, -- in m
	
	    main_gear_pos 						 	    = {-0.80  ,-1.93 , 1.79}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.228, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.114,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.972,--0.778, -- in m

		AOA_take_off				=	0.16,	-- AoA in take off (for AI)
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8,		-- Max G (for AI)
		V_max_sea_level				=	403,	-- Max speed at sea level in m/s (for AI)
		V_max_h						=	736.11,	-- Max speed at max altitude in m/s (for AI)
		wing_area					=	56.5,	-- wing area in m2
		thrust_sum_max				=	13347,	-- thrust in kgf (64.3 kN)
		thrust_sum_ab				=	21952,	-- thrust in kgf (95.1 kN)
		Vy_max						=	275,	-- Max climb speed in m/s (for AI)
		flaps_maneuver				=	1,
		Mach_max					=	2.5,	-- Max speed in Mach (for AI)
		range						=	2540,	-- Max range in km (for AI)
		RCS							=	5,		-- Radar Cross Section m2
		Ny_max_e					=	8,		-- Max G (for AI)
		detection_range_max			=	250,
		IR_emission_coeff			=	0.91,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab		=	4,		-- With afterburner
		tand_gear_max				=	3.73,--XX  1.732 FA18 3.73, 
		tanker_type					=	2,--XX F14=2/S33=4/M29=0/S27=0/F15=1/F16=1/To=0/F18=2/A10A=1/M29K=4/M2000=2/F4=0/F5=0/
		wing_span					=	13.05,--XX   wing spain in m
		wing_type 					= 	1,--XX 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	18,32,--XX
		height						=	4,88,--XX
		crew_size					=	1, --XX
		engines_count				=	1, --XX
		wing_tip_pos 				= 	{-4.23,	0.05,	4.65},-- wingtip coords for visual effects
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		launch_bar_connected_arg_value	= 0.815,--0.885,--0.745
		
		mechanimations = {
        Door0 = {
            {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
            {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
        },
        FoldableWings = {
            {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 5.0}}}}, Flags = {"Reversible"}},
            {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 5.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
        },
		ServiceHatches = {--Parkposition
            {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 30.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},
            {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 6}, {"Sleep", "for", 5.0}}}, {C = {{"Arg", 24, "set", 0.0}}}}},
        },
        LaunchBar = {
            {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 3}, {"Arg", 85, "to", 0.881, "in", 4.4}}}}},
            {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 3}, {"Arg", 85, "to", 0.815, "in", 4.4}}}}},
			{Transition = {"Any", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 4.5}}}}},
            {Transition = {"Extend", "Stage"},   Sequence = {
                    {C = {{"ChangeDriveTo", "Mechanical"}, {"Sleep", "for", 0.000}}},
                    {C = {{"Arg", 85, "from", 0.881, "to", 0.766, "in", 0.600}}},
                    {C = {{"Arg", 85, "from", 0.766, "to", 0.753, "in", 0.300}}},
                    {C = {{"Sleep", "for", 0.45}}},
                    {C = {{"Arg", 85, "from", 0.753, "to", 0.784, "in", 0.1, "sign", 2}}},
                    {C = {{"Arg", 85, "from", 0.784, "to", 0.881, "in", 1.0}}},
                },
            },
			{Transition = {"Stage", "Pull"},  Sequence = {
					{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 2}, {"Arg", 85,"from", 0.881, "to", launch_bar_connected_arg_value_, "in", 0.15}}},
					{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 2}, {"Arg", 85, "to", 0.78, "speed", 0.1}}},
					{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 2}, {"Arg", 85, "to", 0.7792, "speed", 0.02}}},
					}
			},
            {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 3}, {"Arg", 85, "from", 0.815, "to", 0.881, "in", 0.2}}}}},
        },
    }, -- end of mechanimations
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.90,	-0.41,	0},
				elevation	=	0,
				diameter	=	0.01,--0.8,
				exhaust_length_ab	=	0.01,--4.8,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.10, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	"VSN_SEM-Fonar";--40 Glas
				pos = 	{3.369,	-0.146,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{7.05,	0.59,	0.0},
		fires_pos = 
		{
			[1] = 	{-1.606,	-0.489,	0},
			[2] = 	{-2.455,	-0.079,	1.466},
			[3] = 	{-2.521,	-0.136,	-2.015},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.63,	0.401,	0},
			[9] = 	{-5.63,	0.401,	0},
			[10] = 	{-2.346,	-0.448,	0},
			[11] = 	{2.346,	-0.448,	0},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_SEM_overwingVapor.lua"},
		},
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},--0,	1,	0  vorne
				pos = 	{-0.776,	-1.0,	-1.62},---5.776,	1.4,	-0.422
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},--0,	1,	0
     			pos = 	{-0.776,	-1.0,	1.62},---5.776,	1.4,	0.422
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
RADAR 	= "AN/APG-68",--F15
RWR 	= "Abstract RWR"--F15
},
Countermeasures = {
ECM 			= "AN/ALQ-165"--F15
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
         gun_mount("DEFA_554", { count = 125 },{muzzle_pos = {1.519, -0.463,-0.31}}),
         gun_mount("DEFA_554", { count = 125 },{muzzle_pos = {1.519, -0.463, 0.31}})
        },		 
-- 2 × 30-mm-Revolver-Maschinenkanonen GIAT DEFA 553 mit je 125 Schuss

pylons_enumeration = {1, 11, 10, 2, 3, 9, 8, 4, 5, 7, 6},

	Pylons =     {

        pylon(1, 0, 0, 0, 0,
            {
				use_full_connector_position = true,
				connector = "Pylon1",
				arg 	  	  = 308,
				arg_increment = 1,
				DisplayName = "1",
            },
            {
                { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = 0.8}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = 0.8}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = 0.8}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = 0.8}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = 0.8}, --Smokewinder - yellow
				{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.8, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
		        { CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" ,arg_increment = 0.0}, -- Mk-81 125kg
		        { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82 250kg
    			--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    			{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    			{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
		        { CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" ,arg_increment = 0.8}, -- R.550 Magic 2
		        { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" ,arg_increment = 0.0}, -- LAU-61\Roquette 18*68mm
		        { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" ,arg_increment = 0.0}, -- ALQ-131 ECM
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = 0.8}, --aim 9M
                { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" ,arg_increment = 0.8}, --aim 9p
            }
        ),
        pylon(2, 0, 0, 0, 0,
            {
				use_full_connector_position = true,
				connector = "Pylon2",
				arg 	  	  = 309,
				arg_increment = 1,
				DisplayName = "2",
            },
            {
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_increment = 0.6}, -- AGM-65K
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" ,arg_increment = 0.0}, -- GBU-12
    		--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    		{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    		{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" ,arg_increment = 0.0}, -- LAU-61\LRF4 lance Roquette 18*68mm
                { CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" ,arg_increment = 0.0}, -- Mk-81 125kg
		        { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82 250kg
				{ CLSID = "{SEM1100_PTB}" ,arg_increment = 0.4}, --Etendard PTB 1100L
				{ CLSID = "{SEM625_PTB}" ,arg_increment = 0.2}, --Etendard PTB 625L
            }
        ),
		pylon(3, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "Pylon3",
				arg 	  	  = 310,
				arg_increment = 0,
				DisplayName = "Flares",
			},
            {
				{ CLSID = "<CLEAN>", arg_increment = 1.0}, --REMOVE Flares PYLON
            }
        ),
		pylon(4, 0, 0, 0, 0, 
			{
				use_full_connector_position=true, 
				connector = "Pylon4",
				DisplayName = " ",
			},
            {
				--
            }
        ),
		pylon(5, 2, 0.000, 0.000, 0.000,
            {
				connector = "disable",
				--use_full_connector_position = true,
				DisplayName = "ELINT",
            },
            {
            { CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0 ,0 } },-- ELINT
            }
        ),
        pylon(6, 0, 0, 0, 0,
            {
				use_full_connector_position = true,
				connector = "Pylon6",
				arg 	  	  = 313,
				arg_increment = 1,
				DisplayName = "4",
            },
            {
				        --{ CLSID = "{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}" ,arg_increment = 0.0}, -- AN/AAS-38 FLIR
				        { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_increment = 0.0}, -- MER*2 MK-82
						{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_increment = 0.0}, -- AGM-65K
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
						--{ CLSID = "{SEM625_PTB}" ,arg_increment = 0.0}, --Etendard PTB 625L
            }
        ),
		pylon(7, 0, 0, 0, 0, 
			{
				use_full_connector_position=true, 
				connector = "Pylon7",
				DisplayName = " ",
			},
            {
				--
            }
        ),
		pylon(8, 0, 0, 0, 0, 
			{
				use_full_connector_position=true, 
				connector = "Pylon8",
				DisplayName = " ",
			},
            {
				--
            }
        ),
        pylon(9, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "Pylon9",
				arg 	  	  = 316,
				arg_increment = 0,
				DisplayName = "Flares",
			},
            {
				{ CLSID = "<CLEAN>", arg_increment = 1.0}, --REMOVE Flares PYLON
            }
        ),
        pylon(10, 0, 0, 0, 0,           
			{
				use_full_connector_position = true,
				connector = "Pylon10",
				arg 	  	  = 317,
				arg_increment = 1,
				DisplayName = "6",
            },
            {
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}" ,arg_increment = 0.6}, -- AGM-65K
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" ,arg_increment = 0.0}, -- GBU-12
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" ,arg_increment = 0.0}, -- LAU-61\LRF4 lance Roquette 18*68mm
                { CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" ,arg_increment = 0.0}, -- Mk-81 125kg
    		--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    		{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    		{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
		        { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82 250kg
				{ CLSID = "{SEM1100_PTB}" ,arg_increment = 0.4}, --Etendard PTB 1100L
				{ CLSID = "{SEM625_PTB}" ,arg_increment = 0.2}, --Etendard PTB 625L
            }
        ),
        pylon(11, 0, 0, 0, 0,
            {
				use_full_connector_position = true,
				connector = "Pylon11",
				arg 	  	  = 318,
				arg_increment = 1,
				DisplayName = "7",
            },
            {
                { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = 0.8}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = 0.8}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = 0.8}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = 0.8}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = 0.8}, --Smokewinder - yellow
				{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.8, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
		        { CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" ,arg_increment = 0.0}, -- Mk-81 125kg
		        { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk-82 250kg
    			{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    			{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    			{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
		        { CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" ,arg_increment = 0.8}, -- R.550 Magic 2
		        { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" ,arg_increment = 0.0}, -- LAU-61\Roquette 18*68mm
		        { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" ,arg_increment = 0.0}, -- ALQ-131 ECM
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = 0.8}, --aim 9M
                { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" ,arg_increment = 0.8}, --aim 9p
            }
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
	DefaultTask = aircraft_task(FighterSweep),

	SFM_Data = {
	aerodynamics = --F15
		{
			Cy0	=	0,
			Mzalfa	=	6,
			Mzalfadt	=	1,
			kjx = 2.95,
			kjz = 0.00125,
			Czbe = -0.016,
			cx_gear = 0.0268,
			cx_flap = 0.06,
			cy_flap = 0.4,
			cx_brk = 0.06,
			table_data = 
			{
			--      M	 Cx0		 Cya		 B		 B4	      Omxmax	Aldop	Cymax
				{0.0,	0.0215,		0.055,		0.08,		0.22,	0.65,	25.0,	1.2 	},
				{0.2,	0.0215,		0.055,		0.08,		0.22,	1.80,	25.0,	1.2     },
				{0.4,	0.0215,		0.055,		0.08,	   	0.22,	3.00,	25.0,	1.2     },
				{0.6,	0.0215,		0.055,		0.05,		0.28,	4.20,	25.0,	1.2     },
				{0.7,	0.0215,		0.055,		0.05,		0.28,	4.20,	23.0,	1.15    },
				{0.8,	0.0215,		0.055,		0.05,		0.28,	4.20,	21.7,	1.1     },
				{0.9,	0.0230,		0.058,		0.09,		0.20,	4.20,	20.1,	1.07    },
				{1.0,	0.0320,		0.062,		0.17,		0.15,	4.20,	18.9,	1.04    },
				{1.1,	0.0430,		0.062,	   	0.235,		0.09,	3.78,	17.4,	1.02    },
				{1.2,	0.0460,		0.062,	   	0.285,		0.08,	2.94,	17.0,	1.00 	},		
				{1.3,	0.0470,		0.06,	   	0.29,		0.10,	2.10,	16.0,	0.92 	},				
				{1.4,	0.0470,		0.056,	   	0.3,		0.136,	1.80,	15.0,	0.80 	},					
				{1.6,	0.0470,		0.052,	   	0.34,		0.21,	1.08,	13.0,	0.7 	},					
				{1.8,	0.0460,		0.042,	   	0.34,		2.43,	0.96,	12.0,	0.55 	},		
				{2.2,	0.0420,		0.037,	   	0.49,		3.5,	0.84,	 10.0,	0.37 	},					
				{2.5,	0.0420,		0.033,		0.6,		4.7,	0.84,	 9.0,	0.3 	},		
				{3.9,	0.0400,		0.023,		0.9,		6.0,	0.84,	 7.0,	0.2		},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	0.85,
			ForsRUD	=	0.91,
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0114,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	6000,
			dpdh_f	=	14000.0,
			table_data = {
			--   M		Pmax		 Pfor
				{0.0,	115000,		940000},--0.0,115000,212000
				{0.2,	 94000,		200000},
				{0.4,	 92000,		205000},
				{0.6,	103000,		207000},
				{0.7,	105000,		210000},
				{0.8,	105000,		220000},
				{0.9,	105000,		235000},
				{1.0,	107000,		250000},
				{1.1,	103000,		258000},
				{1.2,	 94000,		268000},
				{1.3,	 84000,		285000},
				{1.4,	 71000,		300000},
				{1.6,	 34000,		318000},
				{1.8,	 19000,		337000},
				{2.2,	 17000,		370000},
				{2.5,	 19000,		390000},
				{3.9,	 82000,		310000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "VSN_SEM-oblomok-wing-r", -- wing R
		[2] = "VSN_SEM-oblomok-wing-l", -- wing L
--		[3] = "VSN_SEM-oblomok-noise", -- nose
--		[4] = "VSN_SEM-oblomok-tail-r", -- tail
--		[5] = "VSN_SEM-oblomok-tail-l", -- tail
	},
	
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = { typename = "collection", lights = {
	
    [1] = { typename = "collection", -- WOLALIGHT_STROBES
					lights = {	
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV_BANO_1"},--R
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV1_BANO_1"},--L
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV2_BANO_1"},--H
						{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON L"},--195
						{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON R"},--196
						--{typename  = "natostrobelight",	argument_1  = 192, period = 1.2, color = {0.8,0,0}, connector = "BANO_0_BACK"},
						{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON L"},
						{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON R"},
						--{typename = "argnatostrobelight", argument = 195, period = 1.2, phase_shift = 0},-- beacon lights
						--{typename = "argnatostrobelight", argument = 196, period = 1.2, phase_shift = 0},-- beacon lights
							}
			},
	[2] = { typename = "collection",
					lights = {-- 1=Landing light -- 2=Landing/Taxi light
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 209, dir_correction = {elevation = math.rad(-1)}},--"MAIN_SPOT_PTR_02","RESERV_SPOT_PTR"
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 208, dir_correction = {elevation = math.rad(3)}},--"MAIN_SPOT_PTR_01","RESERV_SPOT_PTR","MAIN_SPOT_PTL",
							}
			},
    [3]	= {	typename = "collection", -- nav_lights_default
					lights = {
						{typename  = "omnilight",connector =  "BANO_1"  ,argument  =  190,color = {0.99, 0.11, 0.3}},-- Left Position(red)
						{typename  = "omnilight",connector =  "BANO_2"  ,argument  =  191,color = {0, 0.894, 0.6}},-- Right Position(green)
						{typename  = "omnilight",connector =  "BANO_0"  ,argument  =  192,color = {1, 1, 1}},-- Tail Position white)
							}
			},
	[4] = { typename = "collection", -- formation_lights_default
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						{typename  = "argumentlight" ,argument  = 201,},--formation_lights_tail_2 = 201;
						{typename  = "argumentlight" ,argument  = 202,},--formation_lights_left   = 202;
						{typename  = "argumentlight" ,argument  = 203,},--formation_lights_right  = 203;
						{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
						--{typename = "argnatostrobelight",connector = "RED_BEACON L",argument = 195,period = 1.5,color = {1.0, 0.0, 0.0},phase_shift = 0.0},
						--{typename = "argnatostrobelight",connector = "RED_BEACON R",argument = 196,period = 1.6,color = {1.0, 0.0, 0.0},phase_shift = 0.0},
							}
			},
--[[			
	[5] = { typename = "collection", -- strobe_lights_default
					lights = {
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument = 193, color = {0.8,0,0}},-- Arg 193, 83,
						{typename  = "strobelight",connector =  "RED_BEACON_2",argument = 194, color = {0.8,0,0}},-- (-1"RESERV_RED_BEACON")
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument =  83, color = {0.8,0,0}},-- Arg 193, 83,
							}
			},
--]]			
	}},
}

add_aircraft(VSN_SEM) --AG


local function SEM1100_PTB(clsid, center)
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Fuel Tank 1100 Liter"),
		Weight_Empty	= 132,
		Weight			= 132 + 1018,	-- 330 gallons, 6.8 lb/gal 
		Cx_pil		= 0.00141885432,		--1.2*0.001313754,			-- TODO
		shape_table_data = 
		{
			{
				name	= "VSN_SEM11-PTB";
				file	= "VSN_SEM11-PTB";
				life	= 1;
				fire	= { 0, 1};
				username	= "VSN_SEM11-PTB";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "VSN_SEM11-PTB",
			}, 
		}, 
	}
	declare_loadout(data)
end

SEM1100_PTB("{SEM1100_PTB}")

local function SEM625_PTB(clsid, center)
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Fuel Tank 625 Liter"),
		Weight_Empty	= 132,
		Weight			= 132 + 1018,	-- 330 gallons, 6.8 lb/gal 
		Cx_pil		= 0.00141885432,		--1.2*0.001313754,			-- TODO
		shape_table_data = 
		{
			{
				name	= "VSN_SEM62-PTB";
				file	= "VSN_SEM62-PTB";
				life	= 1;
				fire	= { 0, 1};
				username	= "VSN_SEM62-PTB";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "VSN_SEM62-PTB",
			}, 
		}, 
	}
	declare_loadout(data)
end

SEM625_PTB("{SEM625_PTB}")