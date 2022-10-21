function m3_f80(tbl)--12.7mm M3 Browning

	tbl.category = CAT_GUN_MOUNT 
	tbl.name 	 = "m3_f80c"
	tbl.supply 	 = 
	{
		shells = {"M2_50_aero_AP","M20_50_aero_APIT"},
		mixes  = {{1,2,2,1,2,2}}, --  
		count  = 300,
	}
	if tbl.mixes then 
	   tbl.supply.mixes =  tbl.mixes
	   tbl.mixes	    = nil
	end
	tbl.gun = 
	{
		max_burst_length = 300,
		rates 			 = {1200},
		recoil_coeff 	 = 1,
		barrels_count 	 = 1,
	}
	if tbl.rates then 
	   tbl.gun.rates    =  tbl.rates
	   tbl.rates	    = nil
	end	
	tbl.ejector_pos 			= tbl.ejector_pos or {-0.4, -1.2, 0.18}
	tbl.ejector_dir 			= {0,-1,0}
	tbl.supply_position  		= tbl.supply_position   or {0,  0.3, -0.3}
	tbl.aft_gun_mount 			= false
	tbl.effective_fire_distance = 1000
	tbl.drop_cartridge 			= 0
	tbl.muzzle_pos				= tbl.muzzle_pos 		 or  {0,0,0} -- all position from connector
	tbl.muzzle_pos_connector	= tbl.muzzle_pos_connector 		 or  "Gun_point" -- all position from connector
	tbl.azimuth_initial 		= tbl.azimuth_initial    or 0   
	tbl.elevation_initial 		= tbl.elevation_initial  or 0   
	if  tbl.effects == nil then
		tbl.effects = {{ name = "FireEffect"     , arg 		 = tbl.effect_arg_number or 436 },
					   { name = "HeatEffectExt"  , shot_heat = 7.823, barrel_k = 0.462 * 2.7, body_k = 0.462 * 14.3 },
					   { name = "SmokeEffect"}}
	end
	return declare_weapon(tbl)
end

local tips 		= {
	--
}

--[[
local outboard 	= {
	{ CLSID = "{PTB_Misawa_F80C}"	,arg_increment = 0.0},--Zusatztank 980 Liter
	{ CLSID = "{PTB_Standart_F80C}"	,arg_increment = 0.0},--Zusatztank 980 Liter
	{ CLSID = "{PTB_tip_l_F80C}"	,arg_increment = 0.0,	required = {{station = 10,loadout = {"{PTB_tip_r_F80C}" ,arg_increment = 0.0}}} },
	{ CLSID = "{PTB_tip_r_F80C}"	,arg_increment = 0.0,	required = {{station =  2,loadout = {"{PTB_tip_l_F80C}" ,arg_increment = 0.0}}} },
	--{ CLSID = "<CLEAN>"								    ,arg_increment = 1.0},
}
--]]

local inboard 	= {
	{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
--	{ CLSID = "LAU-115_LAU-127_AIM-9M"				   ,arg_increment = 0.0}, -- AIM-9M
	{ CLSID = "{AIM-9B}"				   			   ,arg_increment = 0.0}, -- AIM_9B (GAR-8)
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_increment = 0.0}, -- Mk-83
       	--{ CLSID = "{mk77mod0}",arg_increment = 0.0},                             -- Mk-77mod0 750 lb petroleum oil bomb
        { CLSID = "{mk77mod1}",arg_increment = 0.0},                             -- Mk-77mod1 500 lb petroleum oil bomb
       	{ CLSID = "BIN_200", arg_increment = 0.1, required = {{station = 7,loadout = {}}} },	-- BIN-200
	{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}" ,arg_increment = 0.0}, -- LAU-68-MK1
	{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}" ,arg_increment = 0.0}, -- LAU-68-MK5
	{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}" ,arg_increment = 0.0}, -- LAU-68-MK61
	{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" ,arg_increment = 0.0}, -- LAU-68-M151
	{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" ,arg_increment = 0.0}, -- LAU-68-MK156
	{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}" ,arg_increment = 0.0}, -- LAU-68-WTU1B
	{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}" ,arg_increment = 0.0}, -- LAU-68-M257
	{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}" ,arg_increment = 0.0}, -- LAU-68-W274
	{ CLSID = "{D22C2D63-E5C9-4247-94FB-5E8F3DE22B71}" ,arg_increment = 0.0}, -- LAU-131-MK1
	{ CLSID = "{319293F2-392C-4617-8315-7C88C22AF7C4}" ,arg_increment = 0.0}, -- LAU-131-MK5
	{ CLSID = "{1CA5E00B-D545-4ff9-9B53-5970E292F14D}" ,arg_increment = 0.0}, -- LAU-131-MK61
	{ CLSID = "{69926055-0DA8-4530-9F2F-C86B157EA9F6}" ,arg_increment = 0.0}, -- LAU-131-M151
	{ CLSID = "{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}" ,arg_increment = 0.0}, -- LAU-131-MK156
	{ CLSID = "{DDCE7D70-5313-4181-8977-F11018681662}" ,arg_increment = 0.0}, -- LAU-131-WTU1B
	{ CLSID = "{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}" ,arg_increment = 0.0}, -- LAU-131-M257
	{ CLSID = "{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}" ,arg_increment = 0.0}, -- LAU-131-W274
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" ,arg_increment = 0.0}, --F-86
	{ CLSID = "{F86ANM64}"							   ,arg_increment = 0.0}, --F-86
	{ CLSID = "{HVARx2}"							   ,arg_increment = 0.0}, --F-86
	{ CLSID = "<CLEAN>"								   ,arg_increment = 1.0},
	{ CLSID = "{INV-SMOKE-RED}"		,arg_increment = 0.0	,attach_point_position = {0, 0 ,0 }},--Smoke red
	{ CLSID = "{INV-SMOKE-GREEN}"	,arg_increment = 0.0	,attach_point_position = {0, 0 ,0 }},--Smoke green
	{ CLSID = "{INV-SMOKE-BLUE}"	,arg_increment = 0.0	,attach_point_position = {0, 0 ,0 }},--Smoke blue
	{ CLSID = "{INV-SMOKE-WHITE}"	,arg_increment = 0.0	,attach_point_position = {0, 0 ,0 }},--Smoke white
	{ CLSID = "{INV-SMOKE-YELLOW}"	,arg_increment = 0.0	,attach_point_position = {0, 0 ,0 }},--Smoke yellow
	{ CLSID = "{INV-SMOKE-ORANGE}"	,arg_increment = 0.0	,attach_point_position = {0, 0 ,0 }},--Smoke orange
}

local fuselageLeft	= {
	--
}

local fuselageRight	= {
	--
}

local centerline 	= {
	{ CLSID = "{INV-SMOKE-RED}"		,attach_point_position = {0, 0 ,0 }},--Smoke Generator - red
	{ CLSID = "{INV-SMOKE-GREEN}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - green
	{ CLSID = "{INV-SMOKE-BLUE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - blue
	{ CLSID = "{INV-SMOKE-WHITE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - white
	{ CLSID = "{INV-SMOKE-YELLOW}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - yellow
	{ CLSID = "{INV-SMOKE-ORANGE}"	,attach_point_position = {0, 0 ,0 }},--Smoke Generator - orange
--	{ CLSID = "<CLEAN>"									,arg_increment = 1},
}


local ECM_ELINT 	= {
	--
}


VSN_F80C =  {
      
		Name 			= 'VSN_F80C',
		DisplayName		= _('F-80C Shooting Star'),
        Picture 		= "VSN_F80C.png",
        Rate 			= 20, -- RewardPoint in Multiplayer
        Shape			= "VSN_F80C",	
        WorldID			=  WSTYPE_PLACEHOLDER, 
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_F80C';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_F80C-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_F80C';
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_F80C-oblomok";
			file  		= "VSN_F80C-oblomok";
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
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER, "Battleplanes"},
	Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},
	
		M_empty 					= 5046, -- kg			**(11125 lbs - Standard Aircraft Characteristics - SAC)
		M_nominal 					= 7113, -- kg			**(15681 lbs - Combat Weight - SAC)
		M_max 						= 9349, -- kg			**(20611 lbs - Max TO - SAC)
		M_fuel_max 					= 1282, -- kg			**(435 gallons - 1.6467m3 - 779 kg/m3)
		H_max 					 	= 15100, -- m
		average_fuel_consumption 	= 0.5, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
		CAS_min 					= 50, -- minimal indicated airspeed*?
		V_opt 						= 237,-- Cruise speed (for AI)*
		V_take_off 					= 63, -- Take off speed in m/s (for AI)*	(122)
		V_land 						= 78, -- Land speed in m/s (for AI) (152kn - final approach, 126kn - touchdown)
		has_afteburner				=	false,
		has_speedbrake				=	true,
		radar_can_see_ground		=	true,

		nose_gear_pos 				                = {2.591,	-1.770,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.43,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.215,   -- up 
	    nose_gear_wheel_diameter 	                =  0.550, -- in m
	
	    main_gear_pos 						 	    = {-0.800,	-1.570,	1.52}, -- main gear coords 
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.21, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.10,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.61, -- in m

		V_max_sea_level 			= 303, -- Max speed at sea level in m/s (for AI) (589kn)
		V_max_h 					= 268, -- Max speed at max altitude in m/s (for AI)	(522kn)
		Vy_max 						= 45.72, -- Max climb speed in m/s (for AI)	(9000ft/min)
		Mach_max 					= 0.95, -- Max speed in Mach (for AI)	???
		Ny_min 						= -3, -- Min G (for AI)
		Ny_max 						= 8.0,  -- Max G (for AI)
		Ny_max_e 					= 8.0, -- ?? Max G (for AI)
		AOA_take_off 				= 0.17, -- AoA in take off radians (for AI)
		bank_angle_max 				= 85, -- Max bank angle (for AI)
		tand_gear_max 				= 0.554, -- // tangent on maximum yaw angle of front whell
		wing_area 					= 28.173, -- wing area in m2 		**
		wing_span 					= 11.81 , -- wing span in m			**(39'1" - TO 1F-86-1, after F-25)
		wing_type 					= 0,	-- Fixed wing				**
		thrust_sum_max 				= 2680, -- thrust in kg (26.3kN)	**
		thrust_sum_ab 				= 2680, -- thrust inkg (26.3kN)		**
		length 						= 10.49, -- full lenght in m		**(37'6" - TO 1F-86-1)
		height 						= 3.43, -- height in m				**(14'9" - TO 1F-86-1)
		flaps_maneuver 				= 1, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
		detection_range_max		 	= 30,
		range 						= 1210, -- Max range in km (for AI)
		RCS 						= 2, -- Radar Cross Section m2
		IR_emission_coeff 			= 0.76, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab 		= 0.76, -- With afterburner
		wing_tip_pos 				= {-3.214,-0.135, 5.658}, -- wingtip coords for visual effects
		stores_number				=	11,
		tanker_type					=	0,--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/
		crew_size					=	1, --XX
		engines_count				=	1, --XX
		
	--	flaps_transmission          	= "Electrical",
	--	undercarriage_transmission  	= "Hydraulic",
	--	EPLRS 							= true,--?
	--	TACAN_AA						= true,--?
		launch_bar_connected_arg_value	= 0.745,
		
		mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.2},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Open", "Taxi"},   Sequence = {{C = {{"Sleep", "for", 0.0},},},},},
				{Transition = {"Taxi", "Open"},   Sequence = {{C = {{"Sleep", "for", 0.0},},},},},
				{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
	--[[
            CrewLadder = {
			{Transition = {"Dismantle", "Erect"}, Sequence = {
				{C = {{"Arg", 999, "to", 1.0, "in", 3.0}}},
			}},
			{Transition = {"Erect", "Dismantle"}, Sequence = {
				{C = {{"Arg", 999, "to", 0.0, "in", 3.0}}},
			}},
		},
	--]]
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 1.000, "in", 1.0}}}}},                
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 0.866, "in", 1.0}}}}},
                {Transition = {"Any", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 6.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {
                        {C = {{"ChangeDriveTo", "Mechanical"}, {"Sleep", "for", 0.000}}},
                        {C = {{"Arg", 85, "from", 1.000, "to", 0.737, "in", 0.400}}},
                        {C = {{"Arg", 85, "from", 0.737, "to", 0.696, "in", 0.300}}},
                        {C = {{"Sleep", "for", 1.800}}},
                        {C = {{"Sleep", "for", 0.150}}},
                        {C = {{"Arg", 85, "from", 0.696, "to", 1.000, "in", 0.200}}},
                        {C = {{"PosType", 6}, {"Sleep", "for", 2.2}}},
                        {C = {{"Arg", 85, "from", 1.000, "to", 0.866, "in", 2.25}}},
                    },
                },				
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.866, "to", 0.866, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.866, "to", 1.000, "in", 0.1}}}}},
            },
		}, -- end of mechanimations	
			
        
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos					= {-6.25,	0.3,	0}, -- nozzle coords
				elevation			= -0.1, -- AFB cone elevation
				diameter			= 0.75, -- AFB cone diameter
				exhaust_length_ab	= 3, -- lenght in m
				exhaust_length_ab_K = 0.76, -- AB animation
				smokiness_level     = 0.5, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name 	= "pilot_f86_seat",
				drop_canopy_name   	= "VSN_F80C-fonar",
				pilot_name		   	= "pilot_f86",
				drop_parachute_name	= "pilot_f86_parachute",
				pos 	   			=  {1.7, 0.5 ,	0},
				canopy_pos 			= {1.607000 ,1.181,0},
				canopy_ejection_dir = {-1.0,0.2,0},
				g_suit 				= 0.7,
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name 			= 0, -- Landing - brake chute visual shape after separation
		is_tanker					=	false,
		air_refuel_receptacle_pos 	= {-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.40,		-0.46,	 0.0},		-- Fuselage					10 - fuselage right
			[2] = 	{-1.114,	-0.29,	 0.901},	-- Wing inner Right
			[3] = 	{-1.268,	-0.29,	-1.162},	-- Wing inner Left
			[4] = 	{ 0.215,	-0.26,	 1.195},	-- Wing middle Right
			[5] = 	{-1.582,	-0.26,	-1.687},	-- Wing middle Left
			[6] = 	{-0.80,		-0.26,	 2.2},		-- Wing outer Right
			[7] = 	{-1.0,		-0.29,	-0.806},	-- Wing outer Left
			[8] = 	{0.0,		 0.0,	 0.0},		-- Engine (inner Right)
			[9] = 	{-7.75,		 0.3,	 0.0},		-- Engine (inner Left)
		}, -- end of fires_pos
		
		--[[
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F80C_overwingVapor.lua"},
		},
		--]]
		
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
		
	--[[
        -- Countermeasures
		passivCounterm 		= {
			CMDS_Edit 			= true,
			SingleChargeTotal 	= 180,
			chaff 				= {default = 90, increment = 45, chargeSz = 1},
			flare 				= {default = 45, increment = 45, chargeSz = 2}
		},
	--]]
	
        CanopyGeometry 	= {
            azimuth    = {-160.0, 160.0}, -- pilot view horizontal (AI)
			elevation  = {-30.0, 90.0} -- pilot view vertical (AI)
        },
		Sensors = {
			--RWR = "Abstract RWR", -- RWR type
			--RADAR = "N-008", -- Radar type
		},
		Countermeasures = {
			--ECM 			= "AN/ALQ-135"--F15
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

	Guns = {
			m3_f80({
				muzzle_pos_connector = "Gun_point_0",
			--	muzzle_pos 			 = {4.048, -0.145, 0.072},
			--	effect_arg_number	 = 350,
				rates				 = {1249},
				mixes				 = {{2,1,1,1,1,1}},
				azimuth_initial		 = 0,
				elevation_initial	 = 0,
				supply_position		 = {3.0, -0.6, 0.2},
				ejector_pos			 = {3.0, 0.0 ,0.2},
			--	ejector_pos_connector = "ejector_1",
				}),
			m3_f80({
				muzzle_pos_connector = "Gun_point_1",
			--	muzzle_pos 			 = {4.048, -0.145, -0.072},
			--	effect_arg_number	 = 433,
				rates				 = {1190},
				mixes				 = {{1,1,2,1,1,1}},
				azimuth_initial		 = 0,
				elevation_initial	 = 0,
				supply_position		 = {3.0, -0.6, -0.2},
				ejector_pos			 = {3.0, 0.0 ,-0.2},
			--	ejector_pos_connector = "ejector_2",
				}),
			m3_f80({
				muzzle_pos_connector = "Gun_point_2",
			--	muzzle_pos 			 = {3.692, -0.226, 0.183},
			--	effect_arg_number	 = 433,
				rates				 = {1229},
				mixes				 = {{1,1,2,1,1,1}},
				azimuth_initial		 = 0,
				elevation_initial	 = 0,
				supply_position		 = {3.0, -0.6, 0.2},
				ejector_pos			 = {3.0, 0.0 ,0.2},
			--	ejector_pos_connector = "ejector_1",
				}),	-- REAR
			m3_f80({
				muzzle_pos_connector = "Gun_point_3",
			--	muzzle_pos 			 = {3.692, -0.226, -0.183},
			--	effect_arg_number	 = 433,
				rates				 = {1154},
				mixes				 = {{1,1,1,1,2,1}},
				azimuth_initial		 = 0,
				elevation_initial	 = 0,
				supply_position		 = {3.0, -0.6, -0.2},
				ejector_pos			 = {3.0, 0.0 ,-0.2},
			--	ejector_pos_connector = "ejector_2",
				}),
			m3_f80({
				muzzle_pos_connector = "Gun_point_4",
			--	muzzle_pos 			 = {3.415, -0.091, 0.283},
			--	effect_arg_number	 = 433,
				rates				 = {1177},
				mixes				 = {{1,1,1,1,1,2}},
				azimuth_initial		 = 0,
				elevation_initial	 = 0,
				supply_position		 = {3.0, -0.6, 0.2},
				ejector_pos			 = {3.0, 0.0 ,0.2},
			--	ejector_pos_connector = "ejector_1",
				}),
			m3_f80({
				muzzle_pos_connector = "Gun_point_5",
			--	muzzle_pos 			 = {3.415, -0.091, -0.283},
			--	effect_arg_number	 = 433,
				rates				 = {1172},
				mixes				 = {{1,2,1,1,1,1}},
				azimuth_initial		 = 0,
				elevation_initial	 = 0,
				supply_position		 = {3.0, -0.6, -0.2},
				ejector_pos			 = {3.0, 0.0 ,-0.2},
			--	ejector_pos_connector = "ejector_2",
				}),
			},


--pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 8, 5, 7, 6},

	Pylons =     {

        pylon(1, 2, 0, 0, 0,
			{
				arg = 308,
				arg_value = 0,
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon6",
			},
			tips
		),
        pylon(2, 0, 0, 0, 0,
			{
				arg = 309,
				arg_value = 1,
				DisplayName = "1",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			{
				{ CLSID = "{PTB_Misawa_F80CL}"		,arg_increment = 0.0,required = {{station = 10,loadout = {"{PTB_Misawa_F80CR}"	 ,arg_increment = 0.0}}} },
				{ CLSID = "{PTB_Standart_F80CL}"	,arg_increment = 0.0,required = {{station = 10,loadout = {"{PTB_Standart_F80CR}" ,arg_increment = 0.0}}} },
				{ CLSID = "{PTB_Fletcher_F80CL}"	,arg_increment = 0.0,required = {{station = 10,loadout = {"{PTB_Fletcher_F80CR}" ,arg_increment = 0.0}}} },
			}
        ),
        pylon(3, 0, 0, 0, 0,
			{
				arg = 310,
				arg_value = 0,
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon3",
			},
			inboard
		),
        pylon(4, 2, 0, 0, 0,
            {
				arg = 311,
				arg_value = 0,
				DisplayName = " ",
            	use_full_connector_position = true,
				connector = "Pylon6",
			},
			fuselageLeft
		),
        pylon(5, 2, 0, 0, 0,
			{
				arg = 312,
				arg_value = 0,
				DisplayName = " ",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			ECM_ELINT
		),
        pylon(6, 2, 0, 0, 0,
			{
				arg = 313,
				arg_value = 0,
				DisplayName = "Smoke",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			centerline
		),
		pylon(7, 2, 0, 0, 0,
			{
				arg = 314,
				arg_value = 0,
				DisplayName = " ",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			ECM_ELINT
		),
        pylon(8, 2, 0, 0, 0,
            {
				arg = 315,
				arg_value = 0,
				DisplayName = " ",
            	use_full_connector_position = true,
				connector = "Pylon6",
			},
			fuselageRight
		),
        pylon(9, 0, 0, 0, 0,
			{
				arg = 316,
				arg_value = 0,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon9",
			},
			inboard
		),
        pylon(10, 0, 0, 0, 0,
			{
				arg = 317,
				arg_value = 1,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			{
				{ CLSID = "{PTB_Misawa_F80CR}"		,arg_increment = 0.0,required = {{station = 2,loadout = {"{PTB_Misawa_F80CL}"	,arg_increment = 0.0}}} },
				{ CLSID = "{PTB_Standart_F80CR}"	,arg_increment = 0.0,required = {{station = 2,loadout = {"{PTB_Standart_F80CL}"	,arg_increment = 0.0}}} },
				{ CLSID = "{PTB_Fletcher_F80CR}"	,arg_increment = 0.0,required = {{station = 2,loadout = {"{PTB_Fletcher_F80CL}"	,arg_increment = 0.0}}} },
			}
        ),
		pylon(11, 2, 0, 0, 0,
			{
				arg = 318,
				arg_value = 0,
				DisplayName = " ",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			tips
		),
	},
	
	Tasks = {
        aircraft_task(CAP),				-- 11, Combat Air Patrol
        aircraft_task(CAS),				-- 31, Close air support
        aircraft_task(Escort),			-- 18,
        aircraft_task(FighterSweep),	-- 19,
        aircraft_task(GroundAttack),	-- 32,
        aircraft_task(Intercept),		-- 10,
		aircraft_task(AntishipStrike),
    },	
	DefaultTask = aircraft_task(GroundAttack),

	SFM_Data = {
	aerodynamics = --F86
		{
			Cy0			=	0.0668,
			Mzalfa		=	4.355,
			Mzalfadt	=	0.8,
			kjx			=	2,
			kjz			=	0.01,
			Czbe		=	-0.014,
			cx_gear		=	0.008,
			cx_flap		=	0.08,
			cy_flap		=	0.26,
			cx_brk		=	0.08,
			table_data  = 
			{	--      M		Cx0*	 	Cya*		B2		 	B4	 		Omxmax		Aldop*		Cymax*
				[1 ] = { 0,		0.0189	,	0.0669	,	0.0182	,	0.2298	,	0.41	,	16.2	,	1.154},
				[2 ] = { 0.1,	0.0189	,	0.0669	,	0.0182	,	0.2298	,	0.41	,	16.2	,	1.154},
				[3 ] = { 0.2,	0.0186	,	0.0669	,	0.0182	,	0.2296	,	0.81	,	16.2	,	1.154},
				[4 ] = { 0.4,	0.0180	,	0.0669	,	0.0183	,	0.2294	,	1.62	,	16.2	,	1.154},
				[5 ] = { 0.6,	0.0174	,	0.0674	,	0.0194	,	0.2245	,	2.43	,	16.0	,	1.145},
				[6 ] = { 0.65,	0.0183	,	0.0690	,	0.0229	,	0.2113	,	2.63	,	14.9	,	1.096},
				[7 ] = { 0.7,	0.0191	,	0.0722	,	0.0303	,	0.2111	,	2.82	,	11.8	,	0.921},
				[8 ] = { 0.75,	0.0189	,	0.0709	,	0.0424	,	0.3165	,	2.98	,	10.0	,	0.777},
				[9 ] = { 0.8,	0.0189	,	0.0689	,	0.0510	,	0.3826	,	2.47	,	9.9		,	0.749},
				[10] = { 0.9,	0.0270	,	0.0661	,	0.0554	,	0.4359	,	0.60	,	10.1	,	0.731},
				[11] = { 0.95,	0.0510	,	0.0643	,	0.0526	,	0.4836	,	1.31	,	10.2	,	0.717},
				[12] = { 1.0,	0.0682	,	0.0631	,	0.0514	,	0.5218	,	0.42	,	10.2	,	0.707},
				[13] = { 1.1,	0.0718	,	0.0621	,	0.0547	,	0.5431	,	0.71	,	10.3	,	0.701},
				[14] = { 1.2,	0.0718	,	0.0620	,	0.0559	,	0.5453	,	0.73	,	10.3	,	0.701},
				[15] = { 1.3,	0.0718	,	0.0620	,	0.0572	,	0.5447	,	0.78	,	10.3	,	0.701},
				-- Approximately
				[16] = { 2.0,	0.0718	,	0.0620	,	0.0572	,	0.5447	,	0.73	,	10.3	,	0.701},
				[17] = { 2.5,	0.0718	,	0.0620	,	0.0572	  ,	0.5447	,	0.71	,	10.3	,	0.701},
				[18] = { 3.9,	0.0718	,	0.0620	,	0.0572	,	0.5447	,	0.42	,	10.3	,	0.701},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	35, 
			MinRUD	=	0, 
			MaxRUD	=	1, 
			MaksRUD	=	1, 
			ForsRUD	=	1, 
			type	=	"TurboJet",
			hMaxEng	=	19, 
			dcx_eng	=	0.0134,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	1670,
			dpdh_f	=	1670,
			table_data = 
			{		--   M			Pmax		 Pfor	
				[1 ] = { 0		,	26296	,	26296	},
				[2 ] = { 0.2	,	24072	,	24072	},
				[3 ] = { 0.3	,	23441	,	23441	},
				[4 ] = { 0.4	,	23088	,	23088	},
				[5 ] = { 0.5	,	22981	,	22981	},
				[6 ] = { 0.55	,	23011	,	23011	},
				[7 ] = { 0.6	,	23088	,	23088	},
				[8 ] = { 0.65	,	23212	,	23212	},
				[9 ] = { 0.7	,	23377	,	23377	},
				[10] = { 0.75	,	23579	,	23579	},
				[11] = { 0.8	,	23810	,	23810	},
				[12] = { 0.9	,	24350	,	24350	},
				[13] = { 1		,	24953	,	24953	},
				[14] = { 1.1	,	25452	,	25452	},
				[15] = { 1.2	,	25884	,	25884	},
				[16] = { 1.3	,	26084	,	26084	},
				[17] = { 1.4	,	25969	,	25969	},
				-- Approximately
				[18] = { 2.5	,	100		,	100	},		
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
		[1] = "VSN_F80C-oblomok-wing-r", -- wing R
		[2] = "VSN_F80C-oblomok-wing-l", -- wing L
	},
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = {
		typename = "collection",
		lights = {
			-- STROBES
			[WOLALIGHT_STROBES] = { 
					typename = "collection",
					lights = {	
						--{typename = "argnatostrobelight", argument = 195, period = 1.2, phase_shift = 0},-- beacon lights
						--{typename = "argnatostrobelight", argument = 196, period = 1.2, phase_shift = 0},-- beacon lights
						{typename = "natostrobelight", argument = 193, period = 1.2, phase_shift = 0, color = {0.9, 1, 0.7}, connector = "BANO_0",intensity_max = 35},
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
						--{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
					},
			},
	[WOLALIGHT_REFUEL_LIGHTS]	= {},-- REFUEL
	[WOLALIGHT_BEACONS]	= {},-- STROBE / ANTI-COLLISION
	[WOLALIGHT_CABIN_NIGHT]	= {},--
	}},
}

add_aircraft(VSN_F80C) 


local function PTB_Standart_F80CL(clsid, center) --225 US gal, 187 imp gal, 850 liter The original tip tank
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "ptb.png",
		displayName	= _("Standart Tank left"),
		Weight_Empty	= 70,			-- (empty tank)
		Weight			= 70 +  680, 	-- (empty tank + fuel)--Liter*0.8
		Capacity		= 680,			-- (fuel)--Liter*0.8
		Cx_pil			= 0.002,
		shape_table_data = 
		{
			{
				name	= "ptb_f80c_standart_l";
				file	= "ptb_f80c_standart_l";
				life	= 1;
				fire	= { 0, 1};
				username	= "ptb_f80c_standart_l";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "ptb_f80c_standart_l",
			}, 
		}, 
	}
	declare_loadout(data)
end

PTB_Standart_F80CL("{PTB_Standart_F80CL}")

local function PTB_Standart_F80CR(clsid, center) --225 US gal, 187 imp gal, 850 liter The original tip tank
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "ptb.png",
		displayName	= _("Standart Tank right"),
		Weight_Empty	= 70,			-- (empty tank)
		Weight			= 70 +  680, 	-- (empty tank + fuel)--Liter*0.8
		Capacity		= 680,			-- (fuel)--Liter*0.8
		Cx_pil			= 0.002,
		shape_table_data = 
		{
			{
				name	= "ptb_f80c_standart_r";
				file	= "ptb_f80c_standart_r";
				life	= 1;
				fire	= { 0, 1};
				username	= "ptb_f80c_standart_r";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "ptb_f80c_standart_r",
			}, 
		}, 
	}
	declare_loadout(data)
end

PTB_Standart_F80CR("{PTB_Standart_F80CR}")

local function PTB_Misawa_F80CL(clsid, center) --260 US gal, 220 imp gal, 980 Liter Misawa tank
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Misawa Tank left"),
		Weight_Empty	= 70,			-- (empty tank)
		Weight			= 70 +  784, 	-- (empty tank + fuel)--Liter*0.8
		Capacity		= 784,			-- (fuel)--Liter*0.8
		Cx_pil			= 0.002,
		shape_table_data = 
		{
			{
				name	= "ptb_f80c_misawa_l";
				file	= "ptb_f80c_misawa_l";
				life	= 1;
				fire	= { 0, 1};
				username	= "ptb_f80c_misawa_l";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "ptb_f80c_misawa_l",
			}, 
		}, 
	}
	declare_loadout(data)
end

PTB_Misawa_F80CL("{PTB_Misawa_F80CL}")

local function PTB_Misawa_F80CR(clsid, center) --260 US gal, 220 imp gal, 980 Liter Misawa tank
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "PTB.png",
		displayName	= _("Misawa Tank right"),
		Weight_Empty	= 70,			-- (empty tank)
		Weight			= 70 +  784, 	-- (empty tank + fuel)--Liter*0.8
		Capacity		= 784,			-- (fuel)--Liter*0.8
		Cx_pil			= 0.002,
		shape_table_data = 
		{
			{
				name	= "ptb_f80c_misawa_r";
				file	= "ptb_f80c_misawa_r";
				life	= 1;
				fire	= { 0, 1};
				username	= "ptb_f80c_misawa_r";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "ptb_f80c_misawa_r",
			}, 
		}, 
	}
	declare_loadout(data)
end

PTB_Misawa_F80CR("{PTB_Misawa_F80CR}")

local function PTB_Fletcher_F80CL(clsid, center) -- It increased the capacity of the tip tank to 230 gallons. 1050 Liter?
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "ptb.png",
		displayName	= _("Fletcher Tank left"),
		Weight_Empty	= 70,			-- (empty tank)
		Weight			= 70 +  840, 	-- (empty tank + fuel)--Liter*0.8
		Capacity		= 840,			-- (fuel)--Liter*0.8
		Cx_pil			= 0.002,
		shape_table_data = 
		{
			{
				name	= "PTB_F80C_Fletcher_L";
				file	= "PTB_F80C_Fletcher_L";
				life	= 1;
				fire	= { 0, 1};
				username	= "PTB_F80C_Fletcher_L";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "PTB_F80C_Fletcher_L",
			}, 
		}, 
	}
	declare_loadout(data)
end

PTB_Fletcher_F80CL("{PTB_Fletcher_F80CL}")

local function PTB_Fletcher_F80CR(clsid, center)
	local data = {
		category	= CAT_FUEL_TANKS,
		CLSID		= clsid,
		attribute	=  {wsType_Air,wsType_Free_Fall,wsType_FuelTank,WSTYPE_PLACEHOLDER},
		Picture		= "ptb.png",
		displayName	= _("Fletcher Tank right"),
		Weight_Empty	= 70,			-- (empty tank)
		Weight			= 70 +  840, 	-- (empty tank + fuel)--Liter*0.8
		Capacity		= 840,			-- (fuel)--Liter*0.8
		Cx_pil			= 0.002,
		shape_table_data = 
		{
			{
				name	= "PTB_F80C_Fletcher_R";
				file	= "PTB_F80C_Fletcher_R";
				life	= 1;
				fire	= { 0, 1};
				username	= "PTB_F80C_Fletcher_R";
				index	= WSTYPE_PLACEHOLDER;
			},
		},
		Elements	= 
		{
			{
				ShapeName	= "PTB_F80C_Fletcher_R",
			}, 
		}, 
	}
	declare_loadout(data)
end

PTB_Fletcher_F80CR("{PTB_Fletcher_F80CR}")
