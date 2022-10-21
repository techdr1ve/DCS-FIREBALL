
local tips 		= {
	--
}

local outboard 	= {
	{ CLSID = "{AIS_ASQ_T50}" ,arg_increment = 0.0, attach_point_position = {0.30,  0.0,  0.0}},-- ACMI pod
--	{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = 0.0},--AIM-9M
--	{ CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_increment = 0.0},--LAU-105  AIM-9M x2
--	{ CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" ,arg_increment = 0.0},--LAU-7 - 2*AIM-9M  Altes LAU Modell
--	{ CLSID = "LAU-115_2*LAU-127_AIM-9M"				,arg_increment = 0.0},-- LAU-115 2xAIM-9M	
--	{ CLSID = "LAU-115_2*LAU-127_AIM-9L"				,arg_increment = 0.0},-- LAU-115 2xAIM-9L
	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_increment = 0.0},--Aim-9P
	{ CLSID = "{AIM-9L}"								,arg_increment = 0.0},-- AIM-9L
	{ CLSID = "{AIM-9B}", arg_increment = 0.0},								 --AIM-9B NEU
	{ CLSID = "{VSN_F105_LAU105_AIM9L}"	,arg_increment = 0.0}, --LAU-105 2*AIM-9L
	{ CLSID = "{VSN_F105_LAU105_AIM9P}"	,arg_increment = 0.5}, --LAU-105 2*AIM-9P
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_increment = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_increment = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_increment = 0.0}, -- Mk83
    	{ CLSID = "{mk77mod0}",arg_increment  = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    	{ CLSID = "{mk77mod1}",arg_increment  = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    	{ CLSID = "BIN_200",arg_increment  = 0.1, required = {{station = 4,loadout = {}}} },	-- BIN-200
--	{ CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" ,arg_increment = 0.0},
--	{ CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" ,arg_increment = 0.0}, --GBU-15/komische_fehlende Textur
--	{ CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" ,arg_increment = 0.0}, --Kh-59M
--	{ CLSID = "{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}" ,arg_increment = 0.0}, -- ?
	{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}", arg_increment = 0.0}, --M117 1x
	{ CLSID = "{AGM_45A}"								,arg_increment = 0.0},-- AGM 45A "Shrike"
--	{ CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515404}", arg_increment = 0.0},-- AGM 45B "Shrike"
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_increment = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_increment = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "<CLEAN>"								   ,arg_increment = 1},
}

local inboard 	= {
--	{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" ,arg_increment = 0.0},--AIM-9M
--	{ CLSID = "{DB434044-F5D0-4F1F-9BA9-B73027E18DD3}", arg_increment = 0.0},--LAU-105  AIM-9M x2
--	{ CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" ,arg_increment = 0.0},--LAU-7 - 2*AIM-9M  Altes LAU Modell
--	{ CLSID = "LAU-115_2*LAU-127_AIM-9M"				,arg_increment = 0.0},-- LAU-115 2xAIM-9M	
--  { CLSID = "{AIM-9L}"								,arg_increment = 0.0},-- AIM-9L
--	{ CLSID = "LAU-115_2*LAU-127_AIM-9L"				,arg_increment = 0.0},-- LAU-115 2xAIM-9L
--	{ CLSID = "{VSN_F105_LAU105_AIM9P}"	,arg_increment = 0.5}, --LAU-105 2*AIM-9P
--	{ CLSID = "{VSN_F105_LAU105_AIM9L}"	,arg_increment = 0.0}, --LAU-105 2*AIM-9L
--	{ CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_increment = 0.0},--Aim-9P
--	{ CLSID = "{AIM-9B}", arg_increment = 0.0},								 --AIM-9B NEU
--	{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}"  ,arg_increment = 0.0}, --AGM-88C Rack
--	{ CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C9C}" 	,arg_increment = 0.0}, -- AGM88C HARM ?
--	{ CLSID = "{AGM_45A}" 								,arg_increment = 0.0},-- AGM 45A "Shrike"
--	{ CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515404}" ,arg_increment = 0.0},-- AGM 45B "Shrike"
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_increment = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_increment = 0.0}, -- 2*Mk82
	{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" ,arg_increment = 0.0}, -- Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_increment = 0.0}, -- Mk83
    	{ CLSID = "{mk77mod0}",arg_increment  = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    	{ CLSID = "{mk77mod1}",arg_increment  = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    	{ CLSID = "BIN_200",arg_increment  = 0.1, required = {{station = 4,loadout = {}}} },	-- BIN-200
--	{ CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" ,arg_increment = 0.0},
--	{ CLSID  = "{MAK79_MK82SE 4}"					   ,arg_increment = 0.0},--4xMk82SE/fehlendes Rack
--	{ CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" ,arg_increment = 0.0}, --GBU-15 komische Textur
--	{ CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" ,arg_increment = 0.0}, --Kh-59M
--	{ CLSID = "{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}" ,arg_increment = 0.0}, -- ?
	{ CLSID = "{VSN_F105_MK82_6}" 					   ,arg_increment = 0.0},--6xMk82
	{ CLSID = "{VSN_F105G_PTB}" 					   ,arg_increment = 0.0},--Zusatztank
	{ CLSID = "{TER_9A_3*MK-82}"					   ,arg_increment = 0.0},--Mk82x3
	
	{ CLSID = "{SB_F105_BRU_41A_M117_6}" 				,arg_increment = 0.0},--M117x6
	{ CLSID = "{SB_F105_TER9A_M117_3}"					,arg_increment = 0.0},--M117x3
	
	
	{ CLSID = "{BRU-42_3*Mk-83}"					   	,arg_increment = 0.0},--Mk83x3
--	{ CLSID = "{82F90BEC-0E2E-4CE5-A66E-1E4ADA2B5D1E}" 	,arg_increment = 0.0},--M117ABx3/ ganz merkwuerdig
	{ CLSID = "{LAU3_FFAR_MK1HE}"					   	,arg_increment = 0.0},--19xFFAR Mk1-HE Rockets
	{ CLSID = "{LAU3_FFAR_MK5HEAT}"					   	,arg_increment = 0.0},--19xFFAR Mk1-HEAT Rockets
	{ CLSID = "{BRU33_2*LAU61_M282}"					,arg_increment = 0.0},--Neuer Versuch mit 2xMK282 Hydrasx19
	{ CLSID = "<CLEAN>"								   	,arg_increment = 1},
}

local fuselageRight	= {
	--
}

local centerline 	= {
	--{ CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}" ,arg_increment = 0.0}, -- Kh-29T aka RBS-15
	{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" ,arg_increment = 0.0}, -- mk-84
	{ CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" ,arg_increment = 0.0}, -- 2*Mk82
	{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" ,arg_increment = 0.0}, -- Mk83
    	{ CLSID = "{mk77mod0}",arg_increment  = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    	{ CLSID = "{mk77mod1}",arg_increment  = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    	{ CLSID = "BIN_200",arg_increment  = 0.1, required = {{station = 4,loadout = {}}} },	-- BIN-200
	--{ CLSID = "{752B9781-F962-11d5-9190-00A0249B6F00}" ,arg_increment = 0.0},
	--{ CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" ,arg_increment = 0.0},
	--{ CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}" ,arg_increment = 0.0},
	--{ CLSID = "{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}" ,arg_increment = 0.0},
	{ CLSID = "{VSN_F105_MK82_6}" 					   	,arg_increment = 0.0},--6xMk82
	
	{ CLSID = "{SB_F105_BRU_41A_M117_6}" 				,arg_increment = 0.0},--M117x6
	{ CLSID = "{SB_F105_TER9A_M117_3}"					,arg_increment = 0.0},--M117x3
	
	
	
	{ CLSID = "{BRU-42_3*Mk-83}"					   	,arg_increment = 0.0},--Mk83x3
	--{ CLSID = "{VSN_F105G_PTB}" 						,arg_increment = 0.0},--Zusatztank
	{ CLSID = "{VSN_F105G_Center_PTB}" 					,arg_increment = 0.6},--Zusatztank
	{ CLSID = "<CLEAN>"									,arg_increment = 1},
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
--	{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" ,arg_increment = 0.0}, --L005 Sorbtsiya ECM pod (left)
	{ CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}" ,arg_increment = 0.0},-- ELINT
}

local nichts	= {
	--
}

VSN_F105D =  {
      
		Name 			= 'VSN_F105D',--AG
		DisplayName		= _('F-105D Thunderchief'),-- Republic F-105 Thunderchief
        Picture 		= "VSN_F105G.png",
        Rate 			= "50",
        Shape			= "VSN_F105D",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
	--	input_profile_entry = 	"VSN_F105",
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'VSN_F105D';--AG
			life  	 	= 22; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'VSN_F105G-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'VSN_F105D';--AG
			index       =  WSTYPE_PLACEHOLDER;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "VSN_F105G-oblomok";
			file  		= "VSN_F105G-oblomok";
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
	
		M_empty						        =	12470,	-- kg  with pilot and nose load, F105 changed
		M_nominal					        =	17456,	-- kg (Empty Plus Full Internal Fuel) F105 changed
		M_max						        =	23834,	-- kg (Maximum Take Off Weight) F105 changed
		M_fuel_max					        =	4986,	-- kg (Internal Fuel Only) F105 changed
		H_max						        =	14800,	-- m  (Maximum Operational Ceiling) F105 changed
		average_fuel_consumption	        =	0.541,   -- just speculation, and a good guess F105 changed
		CAS_min						        =	55,		-- Minimum CAS speed (m/s) (for AI) F105 changed
		V_opt						        =	266,	-- Cruise speed (m/s) (for AI) F105 changed
		V_take_off					        =	93,		-- Take off speed in m/s (for AI) F105 changed
		V_land						        =	98,	-- Land speed in m/s (for AI) F105 changed
		has_afteburner				        =	true,
		has_speedbrake				        =	true,
		radar_can_see_ground		        =	true,

		nose_gear_pos 				                = {6.189, -2.31, 0},   -- position of gear and hight airplane of the ground (Y +for,-aft/ Z +up, -down / x #left, -right)changed back
	    nose_gear_amortizer_direct_stroke   		=  0,  -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		=  -0.15,  -- up 
	    nose_gear_amortizer_normal_weight_stroke 	=  -0.07,   -- up 
	    nose_gear_wheel_diameter 	                =  0.600, -- in m changed back
	
	    main_gear_pos 						 	    = {-0.8, -2.40, 2.699}, -- changed back
	    main_gear_amortizer_direct_stroke	 	    =   0, --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =   -0.216, --  up 
	    main_gear_amortizer_normal_weight_stroke    =   -0.110,-- down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.920, -- in m changed back

		AOA_take_off				      =	0.17,	-- AoA in take off (for AI) //überprüfen
		stores_number				      =	12,		-- F105 changed 2x per Wing 1x Fuselage 
		bank_angle_max				   	  =	60,		-- Max bank angle (for AI)
		Ny_min						      =	-2,		-- Min G (for AI) changed F105
		Ny_max						      =	7.33,	-- Max G (for AI) 7.3 G loaded 8.67 G empty F105
		V_max_sea_level				      =	350.4,	-- Max speed at sea level in m/s (for AI) changed F105 // 681 kt at SL
		V_max_h						      =	622.48,	-- Max speed at max altitude in m/s (for AI) changed F105 // 1210 kt at 35kft/10.668m
		wing_area					      =	35.76,	-- wing area in m2 changed F105 //385 sqft / 10,764 = m²
		thrust_sum_max				      =	7302,	-- thrust in kgf // 16.100 lbf umgerechnet in kgf
		thrust_sum_ab				      =	12020,	-- thrust in kgf // 26.500 lbf umgerechnet in kgf
		Vy_max						        =	196,	-- Max climb speed in m/s (for AI) changed F105 // 196m/s = 38.500 ft/min
		flaps_maneuver				    =	1,	-- 0.5 stage 1 1 stage 2 flaps changed F105
		Mach_max					        =	2.10,	-- Max speed in Mach (for AI) changed F105
		range						          =	3005,	-- Max range in km (for AI) changed F105 // 1623 nm
		RCS							          =	3.18,	-- Radar Cross Section m2 changed F105
		Ny_max_e					        =	7.33,	-- Max G (for AI) changed F105
		detection_range_max			  =	150,		-- changed F104 and changed to max AN/APQ-159 // überprüfen für NASARR R-14A
		IR_emission_coeff			    =	0.5,	-- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference. changed F105
		IR_emission_coeff_ab		  =	2,		-- With afterburner changed F105
		tand_gear_max				      =	2.747,	--XX  1.732 FA18 3.73, changed F104 //überprüfen
		tanker_type					      =	2,		--F14=2/S33=4/ M29=0/S27=0/F15=1/ F16=1/To=0/F18=2/A10A=1/ M29K=4/F4=0/ //basket
		wing_span					      =	10.63,	--XX  wing spain in m changed F105//34,9ft / 3,196 = m
		wing_type 					      = 	0,		-- 0=FIXED_WING/ 1=VARIABLE_GEOMETRY/ 2=FOLDED_WING/ 3=ARIABLE_GEOMETRY_FOLDED
		length						      =	20.04, -- changed to f105 // 67ft / 3,281 = m
		height						      =	6.157, -- changed to f105 //20,2 ft / 3,281 = m
		crew_size					=	1, --XX
		engines_count				      =	1, --XX
		wing_tip_pos 				      = 	{-1.268,	-0.69, 4.014}, -- Ã¼berprÃ¼fen
		
		--EPLRS 						= true,--?
		TACAN_AA					= true,--?
		
		mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.2},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Open", "Taxi"},   Sequence = {{C = {{"Arg", 38, "to", 0.4, "in", 2.2},},},},},
				{Transition = {"Taxi", "Open"},   Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.2},},},},},
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
					pos = 	{-6.40,	0.75,	0},
				elevation	=	0,
				diameter	=	1.00,
				exhaust_length_ab	=	7.0,
				exhaust_length_ab_K	=	0.60,
				smokiness_level     = 	0.6, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				pilot_name			= 	19,
				drop_canopy_name	=	"VSN_F105G_fonar1";
				pos = 	{5.520,	1.145,	0},
			}, -- end of [1]
		}, -- end of crew_members
		
		brakeshute_name	=	4,--Mig29=3/Su27=4/
		is_tanker	=	false,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,		0.265,	2.774},
			[5] = 	{-0.82,		0.265,	-2.774},
			[6] = 	{-0.82,		0.255,	4.274},
			[7] = 	{-0.82,		0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
			
		effects_presets = {
			{effect = "OVERWING_VAPOR", file = current_mod_path.."/Effects/VSN_F105G_overwingVapor.lua"},
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
RADAR 			= "AN/APQ-159",-- angepasst F104G und verändert auf F-5E adv. //ÃœberprÃ¼fen bzgl. NASARR Radar R-14
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

Guns = {gun_mount("M_61", { count = 1028 },{muzzle_pos = {7.95000, -0.2530000, -0.381000}})},--  X, Z, Y
--1 × sechsläufige 20-mm-Gatling-Maschinenkanone General Electric T171 (M61) Vulcan mit 725 Schuss Munition


	Pylons =     {

        pylon(1, 2, 0, 0, 0,
			{
				arg = 308,
				arg_value = 0,
				DisplayName = " ",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			nichts
		),
        pylon(2, 2, 0, 0, 0,
			{
				arg = 311,
				arg_value = 0,
				DisplayName = " ",
            	use_full_connector_position = true,
				connector = "Pylon4",
			},
			nichts
		),
        pylon(3, 2, 0, 0, 0,
			{
				arg = 311,
				arg_value = 0,
				DisplayName = "Smoke",
            	use_full_connector_position = true,
				connector = "Pylon4",
			},
			Smoke
		),
        pylon(4, 0, 0, 0, 0,
            {
				arg = 308,
				arg_value = 0,
				DisplayName = "1",
  				use_full_connector_position = true,
				connector = "Pylon1",
			},
			outboard
		),
        pylon(5, 0, 0, 0, 0,--26
			{
				arg = 309,
				arg_value = 0,
				DisplayName = "2",
				use_full_connector_position = true,
				connector = "Pylon2",
			},
			inboard
		),
        pylon(6, 0, 0, 0, 0,
			{
				arg = 313,
				arg_value = 0,
				DisplayName = "3",
				use_full_connector_position = true,
				connector = "Pylon6",
			},
			centerline
		),
		pylon(7, 0, 0, 0, 0,--26
			{
				arg = 317,
				arg_value = 0,
				DisplayName = "4",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			inboard
		),
        pylon(8, 0, 0, 0, 0,
            {
				arg = 318,
				arg_value = 0,
				DisplayName = "5",
				use_full_connector_position = true,
				connector = "Pylon11",
			},
			outboard
		),
        pylon(9, 2, 0, 0, 0,
			{
				arg = 312,
				arg_value = 0,
				DisplayName = "ELINT",
				use_full_connector_position = true,
				connector = "Pylon5",
			},
			ECM_ELINT
		),
        pylon(10, 2, 0, 0, 0,
			{
				arg = 317,
				arg_value = 0,
				DisplayName = " ",
				use_full_connector_position = true,
				connector = "Pylon10",
			},
			nichts
		),
		pylon(11, 2, 0, 0, 0,
			{
				arg = 318,
				arg_value = 0,
				DisplayName = " ",
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
--hier kommt entweder die Funktion rein, die die Höhe/AoA oder was ich gerne haben möchte, abgreift, oder es wird die Datei hier gerufen, in der die Funktion drin ist, die die Höhe oder was auch immer abgreift.

	SFM_Data = { -- PeeJottPaul
	aerodynamics = --changed to F104T Data via BGDam_Sample SFM
		{
			Cy0			  =	0, --bleibt bei symetrischen FlÃ¼geln 0//iO F105
			Mzalfa		  =	6, -- changed to 6 from 5// F105
			Mzalfadt	  =	1.8, -- changed from 1 to 1.2 and to 1.8 // F105
			kjx 		  = 2.050, -- changed from F104 2.150 zu 2.050 due to more weight and more wingspan// F105
			kjz 		  = 0.0011, -- 0.0011 F104 kept// F105
			Czbe 		  = -0.04, -- changed from - 0,34 to -0,14 to -0.04
			cx_gear 	  = 0.021, -- F105 geprÃ¼ft
			cx_flap 	  = 0.184, -- changed noch nicht angepasst auf F105
			cy_flap 	  = 0.55, -- changed von 0.37 auf F105 EB			
			cx_brk 		  = 0.14, -- F 105 geprÃ¼ft
			table_data  = 
			{--       F105/EB  F105/EB   F105/EB   F105/EB   F105    F105/EB  F105/EB
			--  M	      Cx0		  Cya		     B		 	   B4	     Omxmax		Aldop		 Cymax
				{0,	 	  0.021,		0.009,		0.011,		0.100,		0.154,		15,			0.22}, -- B smoothed down// B4 smoothed up// Aldop from 25 to 15
				{0.1,	  0.021,		0.014,		0.014,		0.092,		0.267,		17,			0.55}, -- B smoothed down // B4 smoothed up// Cya from 0.022 to 0.014// Omxmax 1.250 to 0.985// Aldop from 25 to 17 
				{0.2,	  0.021,		0.036,		0.021,		0.085,		1.550,		25,			1.22}, -- B smoothed down// B4 smoothed up// Cya from 0.051 to 0.36/ Omxmax from 2.050 to 1.750
				{0.4,	  0.021,		0.069,		0.062,		0.065,		1.890,		25,			1.02}, -- Omxmax from 2.750 to 2.250//
				{0.6,	  0.021,		0.070,		0.105,		0.045,		2.050,		25,			0.950}, -- Omxmax from 2.890 to 2.650//
				{0.7,	  0.021,		0.073,		0.153,		0.035,		2.037,		24,			0.890}, -- 
				{0.8,	  0.021,		0.075,		0.215,		0.035,		2.035,		23.75,	0.850}, -- 
				{0.9,	  0.022,		0.080,		0.245,		0.041,		2.340,		23.75,	0.865}, -- 
				{1	,	  0.034,		0.091,		0.268,		0.048,		2.539,		22.50,	0.965}, -- 
				{1.05,	0.038,		0.089,		0.270,		0.087,		1.971,		22.12,	0.945}, -- Omxmax from 3.010 to 2.950//
				{1.1,	  0.039,		0.086,		0.315,		0.105,		2.159,		21.20,	0.921}, -- 
				{1.2,	  0.039,		0.081,		0.322,		0.116,		1.879,		20,			0.895}, -- Omxmax from 2.950 to 2.550// 
				{1.3,	  0.040,		0.076,		0.330,		0.198,		2.044,		15,			0.874}, -- 
				{1.5,	  0.041,		0.065,		0.380,		0.285,		2.264,		14,5,		0.874}, -- 
				{1.7,	  0.039,	  0.052,		0.401,		0.345,		2.294,		13.1,		0.854}, -- B 0.460
				{1.8,	  0.032,		0.047,		0.415,		0.455,		1.803,		10.5,		0.798}, --von B4 v0.525/B 0.480 /B 0.465
				{2,	    0.027,		0.038,		0.421,		0.544,		1.564,		10.1,		0.651}, --von B4 v0.664/B 0.590/B 0.485
				{2.1,	  0.029,		0.033,		0.505,		3.225,		1.446,		 9.6,		0.602}, -- B 0.610
				{2.2,	  0.031,		0.029,		0.550,		3.765,		1.326,		 9.1,		0.581}, -- B 0.550
				{2.5,	  0.039,		0.027,		0.750,		5.851,		1.257,		 8.2,		0.491},-- 	
				{3.9,	  0.058,		0.026,		0.800,		6.134,		0.854,		 7.8,		0.455}, -- 
			}, -- end of table_data
			-- M - Mach number
			-- Cx0 - Coefficient, drag, profile, of the airplane
			-- Cya - Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
			-- B - Polar quad coeff
			-- B4 - Polar 4th power coeff
			-- Omxmax - roll rate, rad/s conversion from Degree/s is multiplied by  0,0174533
			-- Aldop - Alfadop Max AOA at current M - departure threshold
			-- Cymax - Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)
			-- B4 is Cdi (coefficient of induced drag, with Cl^4 instead of Cl^2; beginning at M 1,05 + supersonic LE) to be approved by flight-testing oder induced Drag/G-Turn
		-- die obige Tabelle wird ersetzt durch die erste Tabelle für SeaLevel, dann kommt die Tabelle für 15kft, dann für 35kft, dann für 45kft und dann die für 55kft
		
		--[[extended = 
    {
      Cx0 = -- Interpolierung von Cx0 bei Geschwindikeit M und HÃ¶he H
      {-- minimum Cx0 ist xxx maximum Cx0 ist yyy
        M       = {0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1, 1.05, 1.1, 1.2, 1.3, 1.5, 1.7, 1.8, 2, 2.1, 2.2, 3.9},--Machnumber as above
        H       = {0, 4572, 10668, 13716, 16764}, --HÃ¶he = SeaLevel, 15kft, 35kft, 45kft, 55kft
        Cdmin   = {--M    0     0.2     0.4     0.6     0.7     0.8     0.9     1       1.05    1.1     1.2     1.3     1.5     1.7     1.8       2      2.1     2.2     3.9
                   {    0.015,  0.5,    0.04,   0.019, 0.018,  0.015,  0.018,  0.045,   0.048,  0.05,   0.048,  0.047,  0.046,  0.046,  0.046,   0.046,  0.046,  0.046,  0.046,}, --SeaLevel 0
                   {    0.015,  0.015,  0.1,    0.027, 0.02,   0.019,  0.02,   0.045,   0.048,  0.05,   0.048,  0.047,  0.046,  0.046,  0.046,   0.046,  0.046,  0.046,  0.046,},-- 15kft
                   {    0.015,  0.015,  0.015,  0.12,  0.08,   0.04,   0.035,  0.05,    0.055,  0.06,   0.065,  0.06,   0.05,   0.04,   0.035,   0.025,  0.02,   0.015,  0.015,},-- 35kft
                   {    0.015,  0.015,  0.015,  0.015, 0.12,   0.1,    0.07,   0.075,   0.077,  0.08,   0.075,  0.07,   0.055,  0.05,   0.049,   0.0475, 0.045,  0.035,  0.031,},-- 45kft
                   {    0.015,  0.015,  0.015,  0.015, 0.05,   0.09,   0.11,   0.14,    0.13,   0.12,   0.1,    0.09,   0.07,   0.06,   0.055,   0.05,   0.0475, 0.042,  0.035,},-- 55kft
                  },
      },
    }, -- end of Cx0
    
    { 
      Cya = -- Interpolierung des Lift-Coeffizient Ã¼ber Geschwindigkeit M und bei HÃ¶he H
      {
        M       = {0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1, 1.05, 1.1, 1.2, 1.3, 1.5, 1.7, 1.8, 2, 2.1, 2.2, 3.9},--Machnumber as above
        H       = {0, 4572, 10668, 13716, 16764}, --HÃ¶he = SeaLevel, 15kft, 35kft, 45kft, 55kft
        Cla     = {--M    0     0.2     0.4     0.6     0.7     0.8     0.9     1       1.05    1.1     1.2     1.3     1.5     1.7     1.8       2     2.1     2.2     3.9
                   {    0.009, 0.044,   0.068,  0.073,  0.073, 0.070,  0.070,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.031,  0.023,  0.019,}, --SeaLevel 0
                   {    0.007, 0.039,   0.059,  0.073,  0.073, 0.070,  0.077,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.031,  0.023,  0.019,},-- 15kft
                   {    0.004, 0.029,   0.038,  0.049,  0.066, 0.077,  0.087,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.029,  0.023,  0.019,},-- 35kft
                   {    0.002, 0.019,   0.032,  0.042,  0.066, 0.077,  0.087,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.029,  0.023,  0.019,},-- 45kft
                   {    0.002, 0.019,   0.032,  0.042,  0.066, 0.077,  0.087,  0.089,  0.087,  0.086,  0.080,  0.074,  0.063,  0.051,  0.046,   0.034, 0.029,  0.023,  0.019,},-- 55kft
                  }, 
      },
    }, --end of Cya
    
    {-- Omxmax extended
      Omxmax = --Interpolierung wie zuvor
        {
        M        = {0, 0.2, 0.4, 0.6, 0.7, 0.8, 0.9, 1, 1.05, 1.1, 1.2, 1.3, 1.5, 1.7, 1.8, 2, 2.1, 2.2, 3.9},--Machnumber as above
        H        = {0, 4572, 10668, 13716, 16764}, --HÃ¶he = SeaLevel, 15kft, 35kft, 45kft, 55kft
        Rollrate = {--M    0     0.2     0.4     0.6     0.7     0.8     0.9     1     1.05    1.1     1.2     1.3     1.5     1.7     1.8     2     2.1     2.2     3.9
                    {     0.5,  2.087,  1.865,  2.648,  3.289,  3.759,  3.972, 4.020, 3.910,  3.805,  3.800,  3.750,  3.750, 3.750,  3.750,  3.750, 3.750,  3.750,  3.750,},--SeaLevel
                    {     0.5,  1.8,    3.014,  1.911,  2.243,  2.580,  2.923, 3.161, 3.050,  2.938,  3.210,  3.210,  3.210, 3.210,  3.210,  3.210, 3.210,  3.210,  3.210,},--15kft
                    {     0.5,  1.8,    2.323,  4.383,  2.155,  1.663,  1.708, 1.925, 1.970,  1.994,  2.025,  2.056,  2.180, 2.113,  2.219,  2.400, 2.471,  2.525,  3.010,},--35kft
                    {     0.5,  1.8,    2.323,  3.462,  1.705,  1.318,  1.357, 1.533, 1.553,  1.593,  1.623,  1.654,  1.768, 1.731,  1.826,  1.996, 2.067,  2.124,  3.005,},--45kft
                    {     0.5,  1.8,    2.323,  2.729,  1.346,  1.042,  1.074, 1.215, 1.246,  1.265,  1.292,  1.320,  1.420, 1.401,  1.485,  1.638, 1.704,  1.760,  2.548,},--55kft
                  }
        }
    }]]-- end of Omxmayx
    
    }, -- end of aerodynamics
		engine = -- PeeJottPaul
		{
			Nmg		=	67.5, --rpm at idle
			MinRUD	=	0,    -- min state of throttle
			MaxRUD	=	1,    -- max state of throttle
			MaksRUD	=	0.85, -- mil power state of throttle
			ForsRUD	=	0.91, -- AB state of throttle
			type	=	"TurboJet",
			hMaxEng	=	22.52, -- F105 EB/überprüfen/geändert von 19.22
			dcx_eng	=	0.0085, -- changed to F104G specs//
			cemax	=	1.344, -- F105 (64 kN * 0,021 Kg/kN-s)
			cefor	=	2.475, -- F105 (117,88 kN * 0,021 Kg/kN-s)
			dpdh_m	=	2000, -- (Coeffizient für MAX-Thust (Dry) in Bezug auf Höhe(hohe Werte=starker Leistungsverlust)v2250/
			dpdh_f	=	3500, -- (coeffizient für AB-Thrust in Bezug auf Höhe (hohe Werte=starker Leistungsverlust)1500
			table_data = {--first try avarage net+gross/2
			--   M		Pmax		 Pfor
				{0,	    70441,		106545}, -- 
				{0.2,	66504,		106802}, -- 
				{0.4,	64871,		107521}, -- 
				{0.6,	62704,		109214}, -- 
				{0.7,	60953,		110215}, -- 
				{0.8,	59538,		116231}, -- 
				{0.9,	59168,		121521}, --von  
				{1,	    58913,		135214}, --von 
				{1.05,	58585,		136125},--neu
				{1.1,	58306,		145123}, --von 
				{1.2,	57356,		151231}, --von  
				{1.3,	56379,		158258}, --von 
				{1.4,	56216,		167451},--neu 
				{1.5,	56106,		175458}, --von  
				{1.6,	56069,		189521},--neu
				{1.8,	55657,		248456}, --von 
				{1.9,   55356,		269871},--neu 
				{2,		55169,		275040}, --von
				{2.1,	38751,		268144}, --von
				{2.2,	34124,		256206},--neu
				{2.5,	30358,		239031}, -- 
				{3,		21469,		120523}, -- 
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
		[1] = "VSN_F105G-oblomok-wing-r", -- wing R
		[2] = "VSN_F105G-oblomok-wing-l", -- wing L
	},
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

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

add_aircraft(VSN_F105D) --AG

