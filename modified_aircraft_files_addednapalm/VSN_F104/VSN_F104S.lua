
VSN_F104S =  {
      
		Name 			= 'VSN_F104S',--AG
		DisplayName		= _('F-104S Starfighter'),--AG
        Picture 		= "VSN_F104S.png",
        Rate 			= "50",
        Shape			= "VSN_F104S",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
		input_profile_entry = 	"VSN_F104G",
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_F104S';--AG
			life  	 	= 18; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_F104G-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_F104S';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_F104G-oblomok";
			file  		= "VSN_F104G-oblomok";
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
	
		M_empty						=	6350,	-- kg  with pilot and nose load, F104 changed
		M_nominal					=	7393,	-- kg (Empty Plus Full Internal Fuel) F104 changed
		M_max						=	13170,	-- kg (Maximum Take Off Weight) F104 changed
		M_fuel_max					=	2641,	-- kg (Internal Fuel Only) F104 changed
		H_max						=	15000,	-- m  (Maximum Operational Ceiling) F104 changed
		average_fuel_consumption	=	0.41,   -- just speculation, and a good guess F104 changed
		CAS_min						=	50,		-- Minimum CAS speed (m/s) (for AI) F104 changed
		V_opt						=	253,	-- Cruise speed (m/s) (for AI) F104 changed
		V_take_off					=	104,	-- Take off speed in m/s (for AI) F104 changed
		V_land						=	113,	-- Land speed in m/s (for AI) F104 changed
		has_afteburner				=	true,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {3.672, -1.790, 0},   -- position of gear
	    nose_gear_amortizer_direct_stroke   		=  0.12,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.12,  -- up
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.08,   -- up
	    nose_gear_wheel_diameter 	                =  0.44, -- 3D Modell
	
	    main_gear_pos 						 	    = {-0.8, -1.773, 1.270}, -- changed back
	    main_gear_amortizer_direct_stroke	 	    =  0.1, -- 01 down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =  -0.1, -- 01 up
	    main_gear_amortizer_normal_weight_stroke    =  -0.03,-- 08 down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.694, -- 3D Modell

		AOA_take_off				=	0.17,	-- AoA in take off (for AI) changed F104
		stores_number				=	12,
		bank_angle_max				=	60,		-- Max bank angle (for AI)
		Ny_min						=	-2.8,	-- Min G (for AI) changed F104
		Ny_max						=	7.33,	-- Max G (for AI) changed F104
		V_max_sea_level				=	408,	-- Max speed at sea level in m/s (for AI) changed F104
		V_max_h						=	649,	-- Max speed at max altitude in m/s (for AI) changed F104
		wing_area					=	18.22,	-- wing area in m2 changed F104
		thrust_sum_max				=	5394,	-- thrust in kgf (52.9 kN) changed F104 (52.9 kN ist -17A Phantom 2) (46.5 kN ist -J1K Stafighter G)
		thrust_sum_ab				=	8086,	-- thrust in kgf (79.3 kN) changed F104 (79.3 kN ist -17A Phantom II) (70.9 kN ist -J1K Strafighter G)
		Vy_max						=	206,	-- Max climb speed in m/s (for AI) changed F104
		flaps_maneuver				=	0.5,	-- 0.5 stage 1 1 stage 2 flaps changed F104
		Mach_max					=	2.35,	-- Max speed in Mach (for AI) changed F104
		range						=	2623,	-- Max range in km (for AI) changed F104
		RCS							=	3.38,	-- Radar Cross Section m2 changed F104
		Ny_max_e					=	7.33,	-- Max G (for AI) changed F104
		detection_range_max			=	150,		-- changed F104 and changed to max AN/APQ-159
		IR_emission_coeff			=	0.5,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference. changed F104
		IR_emission_coeff_ab		=	2,		-- With afterburner changed F104
		tand_gear_max				=	2.747,	--XX  1.732 FA18 3.73, changed F104
		tanker_type					=	0,		--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		wing_span					=	6.36,	--XX  wing spain in m changed F104
		wing_type 					= 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						=	16.66, -- changed ti f104
		height						=	4.09, -- changed to f104
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
				drop_canopy_name	=	"vsn_f104g_fonar";
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
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F104G_overwingVapor.lua"},
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
RADAR 			= "AN/APQ-159",-- angepasst F104G und verändert auf F-5E adv.
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
		frequency 		= 251.0,  -- Radio Freq angepasst F104
		editable 		= true,
		minFrequency	= 225.000, -- angepasst F104
		maxFrequency 	= 399.979, -- angepasst F104
		modulation 		= MODULATION_AM
	},

Guns = {gun_mount("M_61", { count = 725 },{muzzle_pos = {7.95000, -0.2530000, -0.381000}})}, --  X, Z, Y
--1 × sechsläufige 20-mm-Gatling-Maschinenkanone General Electric T171 (M61) Vulcan mit 725 Schuss Munition


	Pylons =     {

        pylon(1, 2, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg			= 308,
				arg_value 	= 0,
				DisplayName = "Smoke",
				connector	= "AFTERBURN_001",
            },
            {
				{ CLSID = "{INV-SMOKE-RED}"		,attach_point_position = {0, 0 ,0 }},--Smoke Generator - red
				{ CLSID = "{INV-SMOKE-GREEN}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - green
				{ CLSID = "{INV-SMOKE-BLUE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - blue
				{ CLSID = "{INV-SMOKE-WHITE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - white
				{ CLSID = "{INV-SMOKE-YELLOW}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - yellow
				{ CLSID = "{INV-SMOKE-ORANGE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - orange
            }
        ),
        pylon(2, 0, -1.200, 0.000, -3.47000,
            {
                use_full_connector_position = true,
				arg 	  	= 309,
				arg_value 	= 1,
				DisplayName = "1",
				connector	= "Pylon2",
            },
            {
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID = "{LAU-138 wtip - AIM-9L}", arg_value = 0.5},--AIM-9L WingTip NEU
				{ CLSID = "{AIM-9B}", arg_value = 0.5},--AIM-9B NEU
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.5},--AIM-9P NEU
				{ CLSID = "{AIM-9P5}", arg_value = 0.5},--AIM-9P5 NEU
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}", arg_value = 0.5}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}", arg_value = 0.5}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}", arg_value = 0.5}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}", arg_value = 0.5}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}", arg_value = 0.5}, --Smokewinder - yellow
				--{ CLSID = "{VSN_F104G_L_PTB}",	arg_value = 0.7,required = {{station = 10,loadout = {"{VSN_F104G_R_PTB}",	arg_value = 0.7}}} },
				{ CLSID = "VSN_F104G_L_PTB",	arg_value = 0.7,required = {{station = 10,loadout = {"VSN_F104G_R_PTB",	arg_value = 0.7}}} },
            }
         ),
		 pylon(3, 0, -0.881000, -0.504000, -2.624000,
            {
                use_full_connector_position = true,
				arg 	  	= 310,
				arg_value 	= 1,
				DisplayName = "2",
				connector	= "Pylon3",
            },
            {
					-- F-104S
				{ CLSID = "{AIM-9B}", arg_value = 0.5},--AIM-9B NEU
				{ CLSID = "{AIM-9L}", arg_value = 0.5},--Aim-9L
				{ CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.5},--AIM-9P NEU
				{ CLSID = "{AIM-9P5}", arg_value = 0.5},--AIM-9P5 NEU
				{ CLSID = "{AIM-7E}", arg_value = 0.5},--Aim-7E
				{ CLSID = "{AIM-7F}", arg_value = 0.5},--Aim-7F
            }
        ),
		 pylon(4, 0, -0.800, -0.310, -1.900,
            {
                use_full_connector_position = true,
				arg 	  	= 311,
				arg_value 	= 1,
				DisplayName = "3",
				connector	= "Pylon4",
            },
            {
                		{ CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID = "{AIM-9L}", arg_value = 0.5},--Aim-9L
				{ CLSID = "{AIM-9B}", arg_value = 0.5},--AIM-9B NEU
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.5},--AIM-9P NEU
				{ CLSID = "{AIM-9P5}", arg_value = 0.5},--AIM-9P5 NEU
				--{ CLSID = "{VSN_F104G_PTB}", arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },
				{ CLSID = "VSN_F104G_PTB", arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
         ),
        pylon(5, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	= 312,
				arg_value 	= 1,
				DisplayName = "4",
				connector	= "Pylon5",
            },
            {
			   { CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
			   { CLSID = "{AIM-9L}", arg_value = 0.0}, --AIM-9L NEU
			   { CLSID = "{AIM-9B}", arg_value = 0.0},--AIM-9B NEU
			   { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0}, --AIM-9P
			   { CLSID = "{AIM-9P5}", arg_value = 0.0}, -- Aim-9P5
            }
        ),
		pylon(6, 0, 0, 0, 0,
        {
        use_full_connector_position = true,
				arg 	  	= 313,
				arg_value 	= 1,
				DisplayName = "5",
				connector	= "Pylon6",
			},
			{
				{ CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
				{ CLSID = "{AIM-9L}", arg_value = 0.0}, --AIM-9L NEU
				{ CLSID = "{AIM-9B}", arg_value = 0.0},--AIM-9B NEU
 				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0}, --AIM-9P
				{ CLSID = "{AIM-9P5}", arg_value = 0.0}, -- Aim-9P5
			}
        ),
		pylon(7, 0, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	  = 312,
				arg_value 	= 1,
				DisplayName = "6",
				connector	= "Pylon7",
            },
            {
			   { CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.0}, -- AIM-9M
			   { CLSID = "{AIM-9L}", arg_value = 0.0}, --AIM-9L NEU
			   { CLSID = "{AIM-9B}", arg_value = 0.0},--AIM-9B NEU
			   { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.0}, --AIM-9P
			   { CLSID = "{AIM-9P5}", arg_value = 0.0}, -- Aim-9P5
            }
        ),
		pylon(8, 0, -0.800, -0.310, 1.900,
            {
                use_full_connector_position = true,
				arg 	  	= 315,
				arg_value 	= 1,
				DisplayName = "7",
				connector	= "Pylon8",
            },
            {
                { CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID = "{AIM-9L}", arg_value = 0.5},--Aim-9L
				{ CLSID = "{AIM-9B}", arg_value = 0.5},--AIM-9B NEU
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.5}, --AIM-9P
				{ CLSID = "{AIM-9P5}", arg_value = 0.5}, -- Aim-9P5
				--{ CLSID = "{VSN_F104G_PTB}", arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },
				{ CLSID = "VSN_F104G_PTB", arg_value = 0.7,attach_point_position = {0.0, 0.0 , 0.0 } },
            }
        ),
		pylon(9, 0, -0.918000, -0.498000, 2.663000,
            {
                use_full_connector_position = true,
				arg 	  	= 316,
				arg_value 	= 1,
				DisplayName = "8",
				connector	= "Pylon9",
            },
            {
                -- F-104S
				{ CLSID = "{AIM-9B}", arg_value = 0.5},--AIM-9B NEU
				{ CLSID = "{AIM-9L}", arg_value = 0.5},--Aim-9L
				{ CLSID	= "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.5},--AIM-9P NEU
				{ CLSID = "{AIM-9P5}", arg_value = 0.5},--AIM-9P5 NEU
				{ CLSID = "{AIM-7E}", arg_value = 0.5},--Aim-7E
				{ CLSID = "{AIM-7F}", arg_value = 0.5},--Aim-7F
            }
        ),
		pylon(10, 0, -1.200, 0.00, 3.47000,
            {
                use_full_connector_position = true,
				arg 	  	= 317,
				arg_value 	= 1,
				DisplayName = "9",
				connector	= "Pylon10",
            },
            {
                { CLSID	=	"{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_value = 0.5}, -- AIM-9M
				{ CLSID = "{LAU-138 wtip - AIM-9L}", arg_value = 0.5},--AIM-9L WingTip NEU
				{ CLSID = "{AIM-9B}", arg_value = 0.5},--AIM-9B NEU
				{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_value = 0.5},--AIM-9P NEU
				{ CLSID = "{AIM-9P5}", arg_value = 0.5},--AIM-9P5 NEU
				{ CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}", arg_value = 0.5}, --Smokewinder - red
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}", arg_value = 0.5}, --Smokewinder - green
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}", arg_value = 0.5}, --Smokewinder - blue
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}", arg_value = 0.5}, --Smokewinder - white
			    { CLSID	= "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}", arg_value = 0.5}, --Smokewinder - yellow
				--{ CLSID = "{VSN_F104G_R_PTB}",	arg_value = 0.7,required = {{station = 2,loadout = {"{VSN_F104G_L_PTB}",	arg_value = 0.7}}} },
				{ CLSID = "VSN_F104G_R_PTB",	arg_value = 0.7,required = {{station = 2,loadout = {"VSN_F104G_L_PTB",	arg_value = 0.7}}} },
            }
        ),
		pylon(11, 2, 0, 0, 0,
            {
                use_full_connector_position = true,
				arg 	  	= 318,
				arg_value 	= 1,
				DisplayName = "ELINT",
				--connector	= "Pylon11",
            },
            {
                { CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",attach_point_position = {0, 0.65 ,0 } },-- ELINT
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
        --aircraft_task(AFAC),
          aircraft_task(RunwayAttack),
          aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(FighterSweep),

	SFM_Data = {
	aerodynamics = --changed to F104T Data via BGDam_Sample SFM
		{
			Cy0			    =	0,
			Mzalfa		  =	5, -- changed to 1.8 / rechanged due to strange elevator behavior to 5
			Mzalfadt	  =	1.2, -- changed to 1.2 / rechanged due to strange elevator behavior to 1 and changed back to 1.2
			kjx 		  = 2.150, -- changed and corrected
			kjz 		  = 0.0011, -- changed
			Czbe 		  = -0.06, -- changed
			cx_gear 	  = 0.0268, -- left unchanged
			cx_flap 	  = 0.184, -- changed
			cy_flap 	  = 0.37, -- changed
			cx_brk 		  = 0.026, -- changed was 0.014
			table_data  = 
			{--									changed							   changed
			--      M	 Cx0		 Cya		 B		 	B4	      Omxmax		Aldop		Cymax
				{0,	    0.015,		0.025,		0.010,		0.057,		0.5,		16,			0.1}, -- changed + B4 added + Cya from 0.009 to 0.025 + Cymax from 1.17 to 0.1 + Aldop from 15 
				{0.1,	0.015,		0.038,		0.015,		0.037,		1.011,		16,			0.45}, -- added (eyeballed) + B4 added + Cya from 0.015 to 0.038 + Omxmax from 1.511 to 1.011 + Cymax from 1.17 to 0.45 + Aldop from 15
				{0.2,	0.015,		0.051,		0.025,		0.025,		2.511,		17,			0.88}, -- changed + B4 added + Cya from 0.043 to 0.051 + Omxmax from 3.197 to 2.511 + Cymax from 1.17 to 0.88+ Aldop was 15
				{0.4,	0.015,		0.064,		0.055,		0.025,		3.014,		18,			0.932}, -- changed + B4 added + Aldop was 15
				{0.6,	0.015,		0.065,		0.175,		0.025,		2.687,		18,			0.901}, -- changed and corrected and recorrected + Cymax from 0.854 to 0.901 + Aldop was 15
				{0.7,	0.015,		0.071,		0.175,		0.025,		2.242,		20,			0.714}, -- changed + B4 added + Cymax from 0.845 to 0.714
				{0.8,	0.015,		0.072,		0.175,		0.025,		2.580,		22,			0.732}, -- changed + B4 added + Cymax from 0.865 to 0,732
				{0.9,	0.018,		0.078,		0.175,		0.025,		2.923,		22,			0.807}, -- changed + B4 added + Cymax from 0.985 to 0.807
				{1	,	0.045,		0.089,		0.175,		0.025,		3.161,		22,			1.028}, -- changed + B4 added + Cymax 1.185 to 1.028
				{1.05,	0.046,		0.087,		0.189,		0.077,		3.049,		21,			1.185}, -- changed + B4 added
				{1.1,	0.047,		0.086,		0.204,		0.138,		2.937,		21,			1.185}, -- changed + B4 added
				{1.2,	0.047,		0.080,		0.218,		0.196,		3.209,		21,			1}, -- changed + B4 added
				{1.3,	0.048,		0.074,		0.235,		0.250,		2.055,		21,			1}, -- changed + B4 added
				{1.5,	0.050,		0.063,		0.278,		0.336,		2.179,		20,			1}, -- changed + B4 added
				{1.7,	0.04,	  	0.051,		0.339,		0.414,		2.113,		19,			0.8}, -- changed + B4 added
				{1.8,	0.035,		0.046,		0.381,		2.051,		2.218,		18,			0.7}, -- changed + B4 added + B4eyeball
				{2,	    0.025,		0.034,		0.506,		3.855,		2.399,		17,			0.6}, -- changed + B4 added + B4eyeball
				{2.1,	0.02,		0.029,		0.606,		4.010,		2.47,		16,			0.6}, -- changed + B4 added + B4eyeball
				{2.2,	0.0385,		0.023,		0.755,		5.551,		2.136,		11,			0.6}, -- changed + B4 added + B4eyeball
				{2.5,	0.042,		0.021,		0.885,		6.055,		1.572,		10,			0.6},-- added with approx. values see below 	
				{3.9,	0.065,		0.019,		0.950,		6.555,		0.7,		 9,			0.6}, -- changed + B4 added + B4eyeball
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
		[1] = "VSN_F104G-oblomok-wing-r", -- wing R
		[2] = "VSN_F104G-oblomok-wing-l", -- wing L
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

add_aircraft(VSN_F104S) --AG
