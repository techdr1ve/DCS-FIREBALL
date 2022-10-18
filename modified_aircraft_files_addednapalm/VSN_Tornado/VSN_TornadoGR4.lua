
VSN_TornadoGR4 =  {
      
		Name 			= 'VSN_TornadoGR4',--AG
		DisplayName		= _('Panavia Tornado GR4'),--AG
        Picture 		= "Tornado_IDS.png",
        Rate 			= "50",
        Shape			= "VSN_TornadoGR4",		
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_TornadoGR4';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'tornado-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_TornadoGR4';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "tornado-oblomok";
			file  		= "tornado-oblomok";
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
	
	mapclasskey 		= "P0091000027",
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

		nose_gear_pos 				                = {3.821,	-2.107,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  0,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  0,   -- down from main_gear_pos
	    nose_gear_wheel_diameter 	                = 0.754, -- in m
	
	    main_gear_pos 						 	    = {-1.323,	-2.107,	1.541}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    = 	0, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   0,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.972, -- in m

		AOA_take_off				=	0.16,	-- AoA in take off (for AI)
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-3,		-- Min G (for AI)
		Ny_max						=	8,		-- Max G (for AI)
		tand_gear_max				=	1.732,	--XX  FA18 3.73, 
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
		tanker_type					=	2,-- F14=2/S33=4/M29=0/S27=0/F15=1/F16=1/To=0/F18=2/A10A=1/M29K=4/M2000=2/F4=0/F5=0/
		wing_span					=	13.05,
		wing_type 					= 	1,-- FIXED_WING = 0/VARIABLE_GEOMETRY = 1/FOLDED_WING = 2/ARIABLE_GEOMETRY_FOLDED = 3
		length						=	19.43,
		height						=	5.63,
		crew_size					=	1,
		engines_count				=	2,
		wing_tip_pos 				= 	{-4.366,	0.45,	6.357},-- wingtip coords for visual effects
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		--launch_bar_connected_arg_value	= 0.815,--0.885,--0.745
		
		mechanimations = "Default",
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.45,	0.099,	-0.483},
				elevation	=	0,
				diameter	=	0.818,
				exhaust_length_ab	=	9,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.45,	0.099,	0.483},
				elevation	=	0,
				diameter	=	0.818,
				exhaust_length_ab	=	9,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				pilot_name          =   19,-- F-15C
				drop_canopy_name	=	39,
				pos = 	{3.34,	1.102,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				pilot_name          =   19,-- F-15C
				drop_canopy_name	=	0,
				pos = 	{1.935,	1.102,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	4,--Mig29=3/Su27=4/Su25t=4
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{6.731,	0.825,	0.492},
		fires_pos = 
		{
			[1] = 	{-0.095,	-0.798,	0},
			[2] = 	{-1.4,	0.721,	0.797},
			[3] = 	{-0.825,	0.738,	-0.683},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.432,	0.099,	0.483},
			[9] = 	{-5.432,	0.099,	-0.483},
			[10] = 	{-0.14,	0.67,	1.45},
			[11] = 	{-0.14,	0.23,	-1.45},
		}, -- end of fires_pos
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_Tornado_overwingVapor.lua"},
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
SingleChargeTotal 	= 180,
chaff 				= {default = 90, increment = 30, chargeSz = 1},
flare 				= {default = 45, increment = 15, chargeSz = 2}
 },
	
    CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),

Sensors = {
RADAR 	= "AN/APG-73",
RWR 	= "Abstract RWR"
},
Countermeasures = {
ECM 			= "AN/ALQ-165"
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
          gun_mount("BK_27", { count = 180 },{muzzle_pos = {5.834, -0.609,  0.646}})
		},  
-- eine (ADV und GR.4) oder zwei (IDS und GR.1(B)) 27-mm-Revolver-Maschinenkanone Mauser BK-27. Die Maschinenkanone des Tornado verfügt über eine umschaltbare Kadenz von 1000 oder 1700 Schuss pro Minute und wird gegen Luft- und Bodenziele eingesetzt. Pro Kanone können 180 Schuss gegurteter Munition unterschiedlicher Wirkungsweise mitgeführt werden

pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

        pylon(1, 0, -3.745000, -0.316000, -3.350000,
            {
				use_full_connector_position=true, connector = "Pylon1",
				FiX = 90,
            },
            {
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },--BOZ-107
                { CLSID = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}" },--Sky-Shadow ECM Pod
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" }, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" }, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" }, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" }, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" }, --Smokewinder - yellow
            }
        ),
        pylon(2, 0, -1.280000, -0.486000, -2.018000,
            {
 				use_full_connector_position=true, connector = "Pylon2",
				FiX = 90,
            },
            {
                { CLSID = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}" },--TORNADO Fuel tank
            }
        ),
        pylon(3, 1, -0.993000, 0.013000, -1.688000,
            {
				use_full_connector_position=true, connector = "Pylon3",
				FiX = 90,
            },
            {
                { CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" },--AIM-9M
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },--ALARM
				{ CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(4, 1, -0.246000, -0.997000, -0.547000,
            {
				use_full_connector_position=true, connector = "Pylon4",
				FiX = 90,
            },
            {
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },--GBU-16"
        	{ CLSID = "{mk77mod0}"},                             -- Mk-77mod0 750 lb petroleum oil bomb
        	{ CLSID = "{mk77mod1}" },                             -- Mk-77mod1 500 lb petroleum oil bomb
       	 	{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 4,loadout = {}}} },	-- BIN-200
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },--ALARM
                { CLSID = "{1461CD18-429A-42A9-A21F-4C621ECD4573}" },--Sea Eagle
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" }, -- GBU-27
			}
        ),
        pylon(5, 1, 1.436000, -0.997000, -0.546000,
            {
				use_full_connector_position=true, connector = "Pylon5",
				FiX = 90,
            },
            {
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12
        	{ CLSID = "{mk77mod0}"},                             -- Mk-77mod0 750 lb petroleum oil bomb
        	{ CLSID = "{mk77mod1}" },                             -- Mk-77mod1 500 lb petroleum oil bomb
       	 	{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 5,loadout = {}}} },	-- BIN-200	
				{ CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}" },  -- Litening
            }
        ),
--[[        pylon(6, 1, -1.100000, -0.997000, -0.546000,
            {
				use_full_connector_position=true, connector = "Pylon6",
				FiX = 90,
            },
            {
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12
        			{ CLSID = "{mk77mod0}"},                             -- Mk-77mod0 750 lb petroleum oil bomb
        			{ CLSID = "{mk77mod1}" },                             -- Mk-77mod1 500 lb petroleum oil bomb
       	 			{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 6,loadout = {}}} },	-- BIN-200		
            }
			),
--]]			
        pylon(6, 1, -1.100000, -0.997000, 0.546000,
            {
				use_full_connector_position=true, connector = "Pylon7",
				FiX = 90,
            },
            {
			    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12
        	{ CLSID = "{mk77mod0}"},                             -- Mk-77mod0 750 lb petroleum oil bomb
        	{ CLSID = "{mk77mod1}" },                             -- Mk-77mod1 500 lb petroleum oil bomb
       	 	{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 7,loadout = {}}} },	-- BIN-200	
                { CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0.65 ,0.5 } },-- ELINT				
            }
        ),
        pylon(7, 1, 1.436000, -0.997000, 0.546000,
            {
				use_full_connector_position=true, connector = "Pylon8",
				FiX = 90,
            },
            {
			    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12
        		    { CLSID = "{mk77mod0}"},                             -- Mk-77mod0 750 lb petroleum oil bomb
        		    { CLSID = "{mk77mod1}" },                             -- Mk-77mod1 500 lb petroleum oil bomb
       	 		    { CLSID = "BIN_200", arg_value = 0.1, required = {{station = 7,loadout = {}}} },	-- BIN-200		
            }
        ),
        pylon(8, 1, -0.246000, -0.997000, 0.547000,
            {
				use_full_connector_position=true, connector = "Pylon9",
				FiX = 90,
            },
            {
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },
                { CLSID = "{1461CD18-429A-42A9-A21F-4C621ECD4573}" },
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" }, -- GBU-27
        	{ CLSID = "{mk77mod0}"},                             -- Mk-77mod0 750 lb petroleum oil bomb
        	{ CLSID = "{mk77mod1}" },                             -- Mk-77mod1 500 lb petroleum oil bomb
       	 	{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 9,loadout = {}}} },	-- BIN-200
            }
        ),
        pylon(9, 1, -0.993000, 0.013000, 1.688000,
            {
				use_full_connector_position=true, connector = "Pylon10",
				FiX = 90,
            },
            {
                { CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" },
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },
				{ CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(10, 0, -1.280000, -0.486000, 2.018000,
            {
				use_full_connector_position=true, connector = "Pylon11",
				FiX = 90,
            },
            {
                { CLSID = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}" },
            }
        ),
        pylon(11, 0, -3.745000, -0.316000, 3.350000,
            {
				use_full_connector_position=true, connector = "Pylon12",
				FiX = 90,
            },
            {
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}" },
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" }, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" }, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" }, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" }, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" }, --Smokewinder - yellow
            }
        ),
},
	
	Tasks = {
--      aircraft_task(CAP),
--     	aircraft_task(Escort),
--      aircraft_task(FighterSweep),
--		aircraft_task(Intercept),
		aircraft_task(Reconnaissance),
    	aircraft_task(GroundAttack),
--     	aircraft_task(CAS),
        aircraft_task(AFAC),
--	    aircraft_task(RunwayAttack),
    	aircraft_task(AntishipStrike),
		aircraft_task(PinpointStrike),
		aircraft_task(SEAD),
    },	
	DefaultTask = aircraft_task(GroundAttack),

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
				{0.0,	115000,		212000},
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
		[1] = "VSN_TornadoGR4-oblomok-wing-r", -- wing R
		[2] = "VSN_TornadoGR4-oblomok-wing-l", -- wing L
	},
	

	lights_data ={
    typename = "collection",
    lights = {	
		
	    [WOLALIGHT_NAVLIGHTS] = {
         typename = "argumentlight",
         argument = 49, },
		 
        [WOLALIGHT_STROBES] = {
				typename = "collection",
				lights = {
					-- 0 -- Anti-collision strobe
					{typename = "natostrobelight", argument = 83, period = 2.2, phase_shift = 0, color = {0.8, 0.0, 0.0}, intensity_max = 35},	-- Anti-collision strobe
				},		 
		 },
        [WOLALIGHT_SPOTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", position = {4.02,  -1.291,  0.0}, direction = {azimuth = math.rad(-10.0), elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_600,
                        },
                        {
                            typename = "Spot", position = {0.409, -0.708, 0.864}, direction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_600,
                        },
                        {
                            typename = "Spot", position = {0.409, -0.708, -0.864}, direction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_600,
                        },
                        {
                            typename = "Omni", position = {4.02 + 0.25,  -1.291,  0.0}, direction = {azimuth = math.rad(-10.0), elevation = math.rad(8.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_P_27_600, range = 4.0,
                        },
                        {
                            typename = "Omni", position = {0.409 + 0.25, -0.708, 0.864}, direction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_600, range = 4.0,
                        },
                        {
                            typename = "Omni", position = {0.409 + 0.25, -0.708, -0.864}, direction = {elevation = math.rad(8.0)},
                            proto = lamp_prototypes.LFS_P_27_600, range = 4.0,
                        },						
                    },
                },
            }
        },
		
        [WOLALIGHT_TAXI_LIGHTS] = {
            typename = "Collection",
            lights = {
                [1] = {
                    typename = "Collection",
                    lights = {
                        {
                            typename = "Spot", position = {4.02,  -1.291,  0.0}, direction = {azimuth = math.rad(-10.0), elevation = math.rad(12.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_R_27_180,
                        },
                        {
                            typename = "Spot", position = {0.409, -0.708, 0.864}, direction = {elevation = math.rad(12.0)},
                            proto = lamp_prototypes.LFS_R_27_180,
                        },
                        {
                            typename = "Spot", position = {0.409, -0.708, -0.864}, direction = {elevation = math.rad(12.0)},
                            proto = lamp_prototypes.LFS_R_27_180,
                        },
                        {
                            typename = "Omni", position = {4.02 + 0.25,  -1.291,  0.0}, direction = {azimuth = math.rad(-10.0), elevation = math.rad(12.0)}, argument = 51,
                            proto = lamp_prototypes.LFS_R_27_180, intensity_max = 4.0,
                        },
                        {
                            typename = "Omni", position = {0.409 + 0.25, -0.708, 0.864}, direction = {elevation = math.rad(12.0)},
                            proto = lamp_prototypes.LFS_R_27_180, intensity_max = 4.0,
                        },
                        {
                            typename = "Omni", position = {0.409 + 0.25, -0.708, -0.864}, direction = {elevation = math.rad(12.0)},
                            proto = lamp_prototypes.LFS_R_27_180, intensity_max = 4.0,
                        },							
                    },
                },
            }
        },
		
        [WOLALIGHT_REFUEL_LIGHTS] = {
            typename = "collection",
            lights = {
                {
                    typename = "omnilight", position = {17.555, 1.527, 0.242},
                    color = {1.0, 1.0, 1.0, 0.8}, range = 1.0, 
					},
				},	
			},
		},
	},
}

add_aircraft(VSN_TornadoGR4) --AG
