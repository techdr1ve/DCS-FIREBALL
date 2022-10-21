--mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/")
mount_vfs_sound_path    (current_mod_path.."/Sounds")

PUCARA =  {
	Name 				=   'PUCARA',
	DisplayName			= _('PUCARA'),
	Cannon 				= "yes",
	HumanCockpit 		= false,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	Picture 			= "PUCARA.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "PUCARA",
	propellorShapeType  = '3ARG_PROC_BLUR',
	propellorShapeName  = 'aspa_puca.fbx',
	debrisGeneration     = true,

	shape_table_data 	= 
	{
		{
			file  	 	= 'PUCARA';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'Fighter-2-crush'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'PUCARA';
			index    	=  WSTYPE_PLACEHOLDER;---------------------------------------------------------------------------------------
            classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		-- no need for this as we are using a built in destroyed model
		-- {
		-- 	name  = "PUCARA-collision";
		-- 	file  = "PUCARA-collision";
		-- 	fire  = { 240, 2};
		-- },

	},
	    -------------------------
    -- add model draw args for network transmitting to this draw_args table (32 limit)
    net_animation ={
        0, -- front gear
        -- 1, -- front gear suspension
		2, -- nose wheel steering
		3, -- main gear
        -- 4, -- main gear suspension
		5, -- main gear
		-- 6, -- main gear suspension
        9, -- right flap
        10, -- left flap
        11, -- right aileron
        12, -- left aileron
        15, -- right elevator
        16, -- left elevator
        17, -- rudder
		21, -- speadbreak
        38, -- canopy
		-- 39, -- pilots heads
		-- 49, -- nav lights
		50, -- pilots fron eject
		-- 51, -- landing lights
		-- 77, -- wheel rollAngle
		83, -- formation lights
		-- 99, -- front pilot up down
		101, -- wheel rolling
		102, -- wheel rolling
		103, -- wheel rolling
		-- 114, -- canopy
		190, -- nav light
		191, -- nav light
		192, -- strobe light
		193, -- landing light
		-- 198, -- beacon light
		200, -- beacon light
		201, -- beacon rotation
		208, -- taxi light
		209, -- search light
		308, -- pylons
		309, -- pylons
		310, -- pylons
		311, -- pylons
		312, -- pylons
		-- 337, -- back pilot head left right
		-- 399, -- back pilot head up down
		407, -- propellerer
		472, -- back pilot disapear
    },

	mapclasskey 		= "P0091000024",
	
--WorldID      = 54,
--index          =  A_29B;
--attribute     = {wsType_Air, wsType_Airplane, wsType_Fighter, A_29B, Su_25T, "Fighters", "Refuelable",},
--Categories= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},


		
    index       =  WSTYPE_PLACEHOLDER;
	attribute  	= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,A_29B,"Fighters", "Refuelable",},
	Categories	= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	    M_empty									=	4020,  -- kg
		M_nominal								=	5500,  -- kg  -- kg ~ %50 fuel, combat load
		M_max									=	6800,  -- kg
		M_fuel_max								=   1645, -- utilizável 495 --509 + 239 + 249*2 + 231,   -- kg Asas, Fuselage, Subalar, Ventral,
        M_fuel_per_tank 						= 	{245, 250}, -- kg
		H_max									=	10000 , -- m

		average_fuel_consumption 	= 0.052, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
        defFuelRatio    			= 0.68, -- топливо по умолчанию в долях от полного
		CAS_min 					= 50, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
		V_opt 						= 260,-- Cruise speed (for AI) –- Assume Mach 0.80 at 20000 ft as optimal. See -- http://www.nasa.gov/centers/dryden/pdf/87789main_H-636.pdf and		–- http://www.hochwarth.com/misc/AviationCalculator.html 		–- Mach 0.8 at 20000 = XXX kts TAS = XXX m / s
		V_take_off 					= 34, -- Take off speed in m/s (for AI)
		V_land 						= 34, -- Land speed in m/s (for AI)
		V_max_sea_level 			= 147, -- Max speed at sea level in m/s (for AI)
		V_max_h 					= 160, -- Max speed at max altitude in m/s (for AI)
		Vy_max 						= 18, -- Max climb speed in m/s (for AI)
		Mach_max 					= 0.47, -- Max speed in Mach (for AI)
		Ny_min 						= -4, -- Min G (for AI)
		Ny_max 						= 6.0,  -- Max G (for AI)
		Ny_max_e 					= 6.0,  -- Max G (for AI)
		AOA_take_off 				= math.rad(9.0), -- AoA in take off (for AI) -- in radians
		bank_angle_max 				= 60, -- Max bank angle (for AI)
	
		has_afteburner 				= false, -- AFB yes/no
		has_speedbrake 				= true, -- Speedbrake yes/no
		has_differential_stabilizer	= false, -- differential stabilizers
 
		nose_gear_pos 				= 	{2.8,	-1.851,	0}, --{-1,	-2.03,	2.}, Y Z X  X Z Y
		main_gear_pos  				= 	{-0.98, -1.846,  2.39}, --{2.808,	-2.09,	0},Y Z X
		tand_gear_max				=	0.5, -- tangent of degrees of rotation max of nose wheel steering

		nose_gear_amortizer_direct_stroke        = 0.00,    -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke      = -0.088,   -- up
		nose_gear_amortizer_normal_weight_stroke = 0.0,   
		main_gear_amortizer_direct_stroke        = 0.00,     -- down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke      = -0.0022,   -- up
		main_gear_amortizer_normal_weight_stroke = 0.0,   

		nose_gear_wheel_diameter	=	0.5, --in m
		main_gear_wheel_diameter	=	0.5, -- in m
	
	

		wing_area 					= 30.3, -- wing area in m2
		wing_span 					= 14.5, -- wing span in m
		wing_type 					= FIXED_WING,

		thrust_sum_max 				= 9000, -- thrust in kg (44kN)
		thrust_sum_ab 				= 9000, -- thrust inkg (71kN)
		length 						= 14.25, -- full lenght in m
		height 						= 5.4, -- height in m
		flaps_maneuver 				= 1.0, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
		range 						= 3700, -- Max range in km (for AI)
		RCS 						= 6, -- Radar Cross Section m2
		IR_emission_coeff 			= 0.62, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab 		= 0.1, -- With afterburner
		wing_tip_pos 				= {-0.122, 0.408,     7.45}, -- wingtip coords for visual effects  X Z Y
		brakeshute_name 			= 0, -- Landing - brake chute visual shape after separation
		
		-- The following is used for graphical AB effects
		engines_count				= 2, -- Engines count
		engines_nozzles = 
		{
			[1] = 
			{
				pos 		=  {1.322,0.21,2.377}, -- nozzle coords
				elevation   =  0, -- AFB cone elevation –- for engines mounted at an angle to fuselage, change elevation
				diameter	 = 0.132, -- AFB cone diameter
				exhaust_length_ab   = 0.2, -- lenght in m
				exhaust_length_ab_K = 0.7, -- AB animation
				engine_number  = 1, --both to first engine
				smokiness_level     = 	0.2,  --both to first engine
			},
	
			[2] = 
			{
				pos 		=  {-1.322,0.21,-2.377}, -- nozzle coords
				elevation   =  0, -- AFB cone elevation
				diameter	 = 0.132, -- AFB cone diameter
				exhaust_length_ab   = 0.2, -- lenght in m
				exhaust_length_ab_K = 0.7, -- AB animation
				engine_number  = 2, --both to first engine
				smokiness_level     = 	0.2,  --both to first engine
			},
			
		
		}, -- end of engines_nozzles
		crew_size	 = 2,
		crew_members = 
		{
				[1] = 
				{	pilot_name            = "PILOTO_PUCARA",
					ejection_seat_name	=	17,
					drop_canopy_name	=	'CANOPY_PUCA',
					pos = 	{0,	0.3,	0}, -- location of your pilot ejecting,
					can_be_playable 	 = true,
					role 				 = "pilot",
					role_display_name    = _("Pilot"),
					ejection_order      = 0,
				}, -- end of [1]
				
				[2] = 
				{	pilot_name            = "COPILOTO_PUCARA",
					ejection_seat_name	=	17,
					drop_canopy_name	=	0,
					pos = 	{-1.63,	0.27,	0},
					pilot_body_arg      = 472,
					can_be_playable 	 = false,
					role 				 = "instructor",
					role_display_name    = _("Instructor pilot"),
					ejection_order      = 1,
				}, -- end of [2]
		}, -- end of crew_members
	
   fires_pos =
    {
        [1] =     {0,    0.66,    0}, 	-- Fuselage
        [2] =     {-0.452,    0.013,    0.72}, 		-- wing (inner?) right, WING_R_IN
        [3] =     {-0.452,    0.013,    -0.72}, 		-- wing (inner?) left, WING_L_IN
        [4] =     {-0.452,    0.013,    3.45},  -- Wing center Right? {-0.82,    0.265,    2.774},
        [5] =     {-0.452,    0.013,    -3.45}, -- Wing center Left?  {-0.82,    0.265,    -2.774},
        [6] =     {-0.07,    -0.794,    7.31},  -- Wing outer Right? {-0.82,    0.255,    4.274}, probably WING_R_OUT
        [7] =     {-0.07,    -0.794,    -7.31}, -- Wing outer Left?  {-0.82,    0.255,    -4.274}, probably WING_L_OUT
        [8] =     {1,    0.145,    2.42},       -- High Altitude Contrails
        [9] =     {1,    0.145,    -2.42},    		-- left engine
        [10] =     {-1,    0.145,    2.42},  -- Right Engine? {0.304,    -0.748,    0.442},
        [11] =     {-7.728,    0.039,    -0.5}, -- ?
    }, -- end of fires_pos
	
		detection_range_max		 = 0, --is the max range in kilometers that the radar can see something large (e.g. a bomber, tanker, AWACS, etc.).
		radar_can_see_ground 	 = false, -- ground target identification capability, but this has not been verified

		CanopyGeometry = { -- Mk1 eyeball sensor for visual spotting targets
			azimuth = {-160.0, 160.0}, -- pilot view horizontal (AI)
			elevation = {-50.0, 90.0} -- pilot view vertical (AI)
		},

		Sensors = {
		},

		HumanRadio 	={
        frequency     = 305.0,
        editable     = true,
        minFrequency     = 30.000,
        maxFrequency     = 399.975,
		rangeFrequency = {
			{min = 30.0,  max = 87.975},
			{min = 108.0, max = 173.975},
			{min = 225.0, max = 399.975},
		},
        modulation     = MODULATION_AM
	},
	
	panelRadio = {
			[1] = {  
				name = _("VHF/UHF AN/ARC-182"),
				range = {{min = 30.0, max = 87.975},
					 {min = 108.0, max = 173.975},
					 {min = 225.0, max = 399.975}},
				channels = {
                [1] = { name = _("Channel 1"), default = 225.0, connect = true}, -- default
                [2] = { name = _("Channel 2"), default = 258.0},
                [3] = { name = _("Channel 3"), default = 260.0},-- batumi : 131.0, 260.0
                [4] = { name = _("Channel 4"), default = 270.0},-- beslan : 141.0, 270.0
                [5] = { name = _("Channel 5"), default = 255.0},-- gelenjik : 126.0, 255.0
                [6] = { name = _("Channel 6"), default = 259.0},-- gudauta : 130.0, 259.0
                [7] = { name = _("Channel 7"), default = 262.0},-- kabuleti : 133.0, 262.0
                [8] = { name = _("Channel 8"), default = 257.0},-- krasnodar-pashk. : 128.0, 257.0
                [9] = { name = _("Channel 9"), default = 253.0},-- krymsk : 124.0, 253.0
                [10] = { name = _("Channel 10"), default = 263.0},-- kutaisi : 134.0, 263.0
                [11] = { name = _("Channel 11"), default = 267.0},	-- lochini : 138.0, 267.0
                [12] = { name = _("Channel 12"), default = 254.0},-- maykop : 125.0, 254.0
                [13] = { name = _("Channel 13"), default = 264.0},-- min. water : 135.0, 264.0
                [14] = { name = _("Channel 14"), default = 266.0},-- mozdok : 137.0, 266.0
                [15] = { name = _("Channel 15"), default = 265.0},-- nalchik : 136.0, 265.0
                [16] = { name = _("Channel 16"), default = 252.0},
                [17] = { name = _("Channel 17"), default = 268.0},-- soginlug : 139.0, 268.0
                [18] = { name = _("Channel 18"), default = 269.0},-- vaziani : 140.0, 269.0
                [19] = { name = _("Channel 19"), default = 268.0},
                [20] = { name = _("Channel 20"), default = 269.0},
                [21] = { name = _("Channel 21"), default = 225.0},
                [22] = { name = _("Channel 22"), default = 258.0},
                [23] = { name = _("Channel 23"), default = 260.0},
                [24] = { name = _("Channel 24"), default = 270.0},
                [25] = { name = _("Channel 25"), default = 255.0},
                [26] = { name = _("Channel 26"), default = 259.0},
                [27] = { name = _("Channel 27"), default = 262.0},
                [28] = { name = _("Channel 28"), default = 257.0},
                [29] = { name = _("Channel 29"), default = 253.0},
                [30] = { name = _("Channel 30"), default = 263.0},
				
				}
			},
		},
	
		-- HumanRadio = {
		-- 	frequency = 254.0, -- Maykop (Caucasus) or Nellis (NTTR)
		-- 	editable = true,
		-- 	minFrequency = 225.000,
		-- 	maxFrequency = 399.900,
		-- 	modulation = MODULATION_AM
		-- },

		-- panelRadio = {
		-- 	[1] = {
		-- 		name = _("AN/ARC-51A"),
		-- 		range = {
		-- 			{min = 225.0, max = 399.9}
		-- 		},
		-- 		channels = {  -- matches L-39C except for channel 8, which was changed to a Georgian airport and #20 which is NTTR only (for now).  This radio goes 1-20 not 0-19.
		-- 			[1] = { name = _("Channel 1"),		default = 264.0, modulation = _("AM"), connect = true}, -- mineralnye-vody (URMM) : 264.0
		-- 			[2] = { name = _("Channel 2"),		default = 265.0, modulation = _("AM")},	-- nalchik (URMN) : 265.0
		-- 			[3] = { name = _("Channel 3"),		default = 256.0, modulation = _("AM")},	-- sochi-adler (URSS) : 256.0
		-- 			[4] = { name = _("Channel 4"),		default = 254.0, modulation = _("AM")},	-- maykop-khanskaya (URKH), nellis (KLSV) : 254.0
		-- 			[5] = { name = _("Channel 5"),		default = 250.0, modulation = _("AM")},	-- anapa (URKA) : 250.0
		-- 			[6] = { name = _("Channel 6"),		default = 270.0, modulation = _("AM")},	-- beslan (URMO) : 270.0
		-- 			[7] = { name = _("Channel 7"),		default = 257.0, modulation = _("AM")},	-- krasnodar-pashkovsky (URKK) : 257.0
		-- 			[8] = { name = _("Channel 8"),		default = 258.0, modulation = _("AM")},	-- sukhumi-babushara (UGSS) : 255.0
		-- 			[9] = { name = _("Channel 9"),		default = 262.0, modulation = _("AM")},	-- kobuleti (UG5X) : 262.0
		-- 			[10] = { name = _("Channel 10"),	default = 259.0, modulation = _("AM")},	-- gudauta (UG23) : 259.0
		-- 			[11] = { name = _("Channel 11"),	default = 268.0, modulation = _("AM")},	-- tbilisi-soganlug (UG24) : 268.0
		-- 			[12] = { name = _("Channel 12"),	default = 269.0, modulation = _("AM")},	-- tbilisi-vaziani (UG27) : 269.0
		-- 			[13] = { name = _("Channel 13"),	default = 260.0, modulation = _("AM")},	-- batumi (UGSB) : 260.0
		-- 			[14] = { name = _("Channel 14"),	default = 263.0, modulation = _("AM")},	-- kutaisi-kopitnari (UGKO) : 263.0
		-- 			[15] = { name = _("Channel 15"),	default = 261.0, modulation = _("AM")},	-- senaki-kolkhi (UGKS) :  261.0
		-- 			[16] = { name = _("Channel 16"),	default = 267.0, modulation = _("AM")},	-- tbilisi-lochini (UGTB) : 267.0
		-- 			[17] = { name = _("Channel 17"),	default = 251.0, modulation = _("AM")},	-- krasnodar-center (URKI), creech (KINS) : 251.0
		-- 			[18] = { name = _("Channel 18"),	default = 253.0, modulation = _("AM")},	-- krymsk (URKW), mccarran (KLAS) : 253.0
		-- 			[19] = { name = _("Channel 19"),	default = 266.0, modulation = _("AM")},	-- mozdok (XRMF) : 266.0
		-- 			[20] = { name = _("Channel 20"),	default = 252.0, modulation = _("AM")}, -- N/A, groom lake/homey (KXTA) : 252.0
		-- 		}
		-- 	},
		-- },
	
		
		-- Countermeasures
		-- SingleChargeTotal = 60,
		-- CMDS_Incrementation = 15,
		-- ChaffDefault = 30,
		-- ChaffChargeSize = 1,
		-- FlareDefault = 15,
		-- FlareChargeSize = 2,
		-- CMDS_Edit = false,
		-- chaff_flare_dispenser = {
			--[1] =
			--{
				-- dir = {-1, 0, 0}, -- dispenses to rear
				-- pos = {-6, 0, -0.8}, -- left rear of fuselage
			--}, -- end of [1]
		--}, -- end of chaff_flare_dispenser

		Pylons =     {
			pylon(1, 0, -0.200, -1.08, -3.273,
				{
					connector = 'pylon1', arg = 308 ,arg_value = 0,
					use_full_connector_position = false,
				},
				{
				    --BOMBAS
					{ CLSID = "{Mk82SNAKEYE}"	},  -- 1 MK81 snake eye	
					{ CLSID = "{BRU-42_2*Mk-82SNAKEYE_LEFT}"	},  -- 2 MK81 snake	
					{ CLSID = "{BRU-42_3*Mk-82SNAKEYE}"	},  -- 3 MK81 SNAKE	
					
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}"	},  -- 1 MK81 SIN RACK	
					{ CLSID = "{BRU42_2*MK81 LS}"	},                      -- 2 MK81 EN RACK CORTO	
                    { CLSID = "{7B34E0BB-E427-4C2A-A61A-8407CE18B54D}"	},  -- 3 MK81 EN RACK CORTO	
					
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"	},  -- 1 Mk-82 SIN RACK
					{ CLSID = "{BRU-42_2*Mk-82_LEFT}"	},                  -- 2 MK82 EN RACK CORTO
					{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}"	},  -- 3 Mk-82 EN RACK CORTO
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200					
					
					--ROCKET				
					
	
					{ CLSID = "{BRU33_LAU10}" }, --1 LAU10
					{ CLSID = "{BRU42_2*LAU10 L}" },--2 LAU10--
					
					{ CLSID = "{BRU33_LAU68}" }, --1 LAU68
					{ CLSID = "{BRU33_LAU68_MK5}" }, --1 LAU68 HEAT
					{ CLSID = "{DIS_LAU68_MK5_DUAL_GDJ_II19_R}" },  --2 LAU 68
					{ CLSID = "{64329ED9-B14C-4c0b-A923-A3C911DA1527}" }, -- 3 LAU68 HE
					{ CLSID = "{C2593383-3CA8-4b18-B73D-0E750BCA1C85}" }, -- 3 LAU68 PHOS
					{ CLSID = "{E6966004-A525-4f47-AF94-BCFEDF8FDBDA}" }, -- 3 LAU68 ILUM
					{ CLSID = "{9BC82B3D-FE70-4910-B2B7-3E54EFE73262}" }, -- 3 LAU68 HEAT
					
					{ CLSID = "{BRU33_LAU61}" }, -- 1 LAU61
					{ CLSID = "{BRU33_2*LAU61}" }, -- 2 LAU61
					{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, -- 3 LAU61
                    { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" }, -- 3 LAU61
					--TANQUE ALAR		
					{ CLSID = "{PUCARA TANK}" },
										
					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			
			pylon(2, 0, -0.84, -1.236, 0,
				{
					connector = 'pylon2', arg = 310 ,arg_value = 0,
					use_full_connector_position = false,
				},
				{
					{ CLSID = "{PUCARA TANK}" },
					
					{ CLSID = "{Mk82SNAKEYE}"	},  -- 1 MK81 snake eye	
					--FALTA 2 EYE
					{ CLSID = "{BRU-42_3*Mk-82SNAKEYE}"	},  -- 3 MK81 SNAKE	
					
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}"	},  -- 1 MK81 SIN RACK	
					--FALTA 2 MK81
                    { CLSID = "{7B34E0BB-E427-4C2A-A61A-8407CE18B54D}"	},  -- 3 MK81 EN RACK CORTO	
					
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"	},  -- 1 Mk-82 SIN RACK
					   -- FALTA 2 MK82
					{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}"	},  -- 3 Mk-82 EN RACK CORTO					
					{ CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}"	},  -- 3 Mk-82 EN RACK CORTO
					{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" }, -- MK83 1000LB
    					{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
					
					---ROCKET
					{ CLSID = "{DIS_LAU68_MK5_DUAL_GDJ_II19_R}" },  --2 LAU 68
					
					
					
					
					

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
	
				}
			),
			
			pylon(3, 0, -0.20, -1.08, 3.251,
				{
					connector = 'pylon3', arg = 312 ,arg_value = 0,
					use_full_connector_position = false,
				 },
				{
				    --BOMBAS
					{ CLSID = "{Mk82SNAKEYE}"	},  -- 1 MK81 snake eye	
					{ CLSID = "{BRU-42_2*Mk-82SNAKEYE_RIGHT}"	},  -- 2 MK81 snake	
					{ CLSID = "{BRU-42_3*Mk-82SNAKEYE}"	},  -- 3 MK81 SNAKE	
					
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}"	},  -- 1 MK81 SIN RACK	
					{ CLSID = "{BRU42_2*MK81 RS}"	},                      -- 2 MK81 EN RACK CORTO	
                    { CLSID = "{7B34E0BB-E427-4C2A-A61A-8407CE18B54D}"	},  -- 3 MK81 EN RACK CORTO	
					
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}"	},  -- 1 Mk-82 SIN RACK
					{ CLSID = "{BRU-42_2*Mk-82_RIGHT}"	},                  -- 2 MK81 EN RACK CORTO
					{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}"	},  -- 3 Mk-82 EN RACK CORTO
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200	
					
					--ROCKET				
					
	
					{ CLSID = "{BRU33_LAU10}" }, --1 LAU10
					{ CLSID = "{BRU3242_2*LAU10 R}" },--2 LAU10--
					
					{ CLSID = "{BRU33_LAU68}" }, --1 LAU68
					{ CLSID = "{BRU33_LAU68_MK5}" }, --1 LAU68 HEAT
					{ CLSID = "{DIS_LAU68_MK5_DUAL_GDJ_II19_R}" },  --2 LAU 68
					{ CLSID = "{64329ED9-B14C-4c0b-A923-A3C911DA1527}" }, -- 3 LAU68 HE
					{ CLSID = "{C2593383-3CA8-4b18-B73D-0E750BCA1C85}" }, -- 3 LAU68 PHOS
					{ CLSID = "{E6966004-A525-4f47-AF94-BCFEDF8FDBDA}" }, -- 3 LAU68 ILUM
					{ CLSID = "{9BC82B3D-FE70-4910-B2B7-3E54EFE73262}" }, -- 3 LAU68 HEAT
					
					{ CLSID = "{BRU33_LAU61}" }, -- 1 LAU61
					{ CLSID = "{BRU33_2*LAU61}" }, -- 2 LAU61
					{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, -- 3 LAU61
                    { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" }, -- 3 LAU61					
					
					--TANQUE ALAR		
					{ CLSID = "{PUCARA TANK}" },
					

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			pylon(4, 0, 2.86, -0.326, 0.396,
				{
					connector = 'pylon4', arg = 311 ,arg_value = 0,
					use_full_connector_position = false, 
				 },
				{
						
					{CLSID = "{CANON PUCA RIGHT}"},--CAÑON PUCARA 

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				} 
			),
			pylon(5, 0, 2.86, -0.326, -0.396,
				{
					connector = 'pylon5', arg = 309 ,arg_value = 0,
					use_full_connector_position = false, 
				 },
				{
						
					{CLSID = "{CANON PUCA LEFT}"}, -- CAÑON PUCARA 20 

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				} 
			),
	},
	
	Tasks = {
        aircraft_task(CAP),
		aircraft_task(Escort),
      	aircraft_task(FighterSweep),
		aircraft_task(GroundAttack),
		aircraft_task(PinpointStrike),
      	aircraft_task(CAS),
       	aircraft_task(AFAC),
		aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
		aircraft_task(Intercept),
   	},	
	DefaultTask = aircraft_task(CAS),

   

	SFM_Data = {
            aerodynamics = { -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
                Cy0	=	0.1, -- Coefficient of lift at zero angle of attack -- Always 0 for symmetrical airfoil
			Mzalfa	=	4.4, -- Horizontal tail pitch coefficient
			Mzalfadt	=	0.8,  -- Wing pitch coefficient
			kjx = 2.25, -- Roll rate acceleration constant in radians / second  -- Inertia parametre X - Dimension (clean) airframe drag coefficient at X (Top) Simply the wing area in square meters (as that is a major factor in drag calculations) - smaller = massive inertia
			kjz = 0.00125,  -- Unknown pitch constant. All planes use 0.00125 -- -- Inertia parametre Z - Dimension (clean) airframe drag coefficient at Z (Front) Simply the wing area in square meters (as that is a major factor in drag calculations)

			Czbe = -0.056, -- Directional stability coefficient  -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
			
			cx_gear = 0.1, -- Additional coefficient of drag for gear extended
			cx_flap = 0.095, -- Additional coefficient of drag for flap extended
			cy_flap = 0.18, -- Additional coefficient of lift for flap extended
			cx_brk = 0.065,-- coefficient, drag, breaks
			table_data  = {
			
		{0  /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.15,	     22,    	1.45,	},
		{10 /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.15,	     22,    	1.45,	},
		{30 /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.15,	     22,    	1.45,	},
		{50 /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.15,	     22,	    1.45,	},
		{70 /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.15,	     22,	    1.45,	},
		{80 /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{90 /666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{100/666.739,	   0.028,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{110/666.739,	   0.038,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{130/666.739,	   0.038,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{150/666.739,	   0.038,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{170/666.739,	   0.038,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{190/666.739,	   0.038,	0.074,		  0.052,	0.012,	 0.9,	     22,	    1.45,	},
		{210/666.739,	   0.038,	0.072,		  0.045,	0.025,	 1.24,	     22,	    1.45,	},   --1 0.3
		{220/666.739,	   0.048,	0.072,		  0.045,	0.025,	 1.24,	     19,	    1.2,	},
		{230/666.739,	   0.048,	0.072,		  0.045,	0.025,	 1.24,	     19,	    1.2,	},
		{240/666.739,	   0.048,	0.072,		  0.045,	0.025,	 1.24,	     19,	    1.2,	},
		{250/666.739,	   0.048,	0.072,		  0.045,	0.025,	 1.24,	     19,	    1.2,	},
		{270/666.739,	   0.048,	0.072,		  0.047,	0.025,	 1.24,	     19,	    1.2,	},
		{290/666.739,	   0.048,	0.072,		  0.047,	0.025,	 1.24,	     19,	    1.8,	},
		{310/666.739,	   0.057,	0.072,		  0.047,	0.025,	 1.24,	     19, 	    1.8,	},
		{360/666.739,	   0.057,	0.079,		  0.1,	    0.36,	 1.32,	     19,	    1.08,    },
		{600/666.739,	   0.057,	0.079,		  0.2,	    0.36,	 1.32,	     10,	    1.07,    },
		}
			
			
		}, -- end of aerodynamics
		engine = 
		{
			Nmg		=	64.6, -- % RPM at idle
			MinRUD	=	0, -- always 0 in current modeled aircraft -- Min state of the throttle
			MaxRUD	=	1, -- always 1 in current modeled aircraft -- Max state of the throttle
			MaksRUD	=	1, -- .85 for afterburning, 1 for non-afterburning engine. -- Military power state of the throttle
			ForsRUD	=	1, -- .91 for afterburning, 1 for non-afterburning -- Afterburner state of the throttle
			typeng	=	3, -- E_TURBOJET = 0, E_TURBOJET_AB = 1, E_PISTON = 2, E_TURBOPROP = 3,	E_TURBOFAN    = 4,	E_TURBOSHAFT = 5
			hMaxEng	=	15, -- maximum operating altitude for the engine in km -- typically higher than service ceiling of the aircraft
			dcx_eng	=	0.015, -- drag coefficient for the engine -- no correlation found -- most common values are 0.0085 and 0.0144
			cemax   = 	0.37, -- not used for fuel calculation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			cefor   = 	0.37, -- not used for fuel calculation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			dpdh_m	=	1800, --  altitude coefficient for max thrust -- altitude effects to thrust -- The best recommendation at this point is to start with these values between 2000 and 3000 and adjust as needed after initial flight testing
			dpdh_f	=	1800, --  altitude coefficient for AB thrust ???? or altitude effects to fuel rate -- The best recommendation at this point is to start with these values between 2000 and 3000 and adjust as needed after initial flight testing
			prop_locations = {{2.13, 0.239 , -2.375}, {0.0, 0.0, math.rad(-1.97)},{2.134, 0.239 , 2.361}, {0.0, 0.0, math.rad(1.97)},},
			prop_blades_count = 3,
			prop_pitch_min		= 23.0,	-- prop pitch min, degrees 
			prop_pitch_max		= 65.0,	-- prop pitch max, degrees 
			prop_pitch_feather	= 80.0,	-- prop pitch feather position, degrees if feather < prop_pitch_max no feathering available
			Nominal_RPM = 2000,
			Startup_Prework = 1.0,
			Startup_RPMs = {
				{0.0, 0},
				{1.0, 60},
				{8.0, 60},
				{8.6, 880},
				{13.0, 601},
			},
			Startup_Ignition_Time = 18.3,
			Shutdown_Duration = 19.8,

			table_data =
            {
            --   M          Pmax
                {0.0,       0.0,0.0}, -- dummy table, required for 2.0+ engine module load
                {2.0,       0.0,0.0},
            }, -- end of table_data
            -- M - Mach number
            -- Pmax - Engine thrust at military power - kilo Newton
            -- Pfor - Engine thrust at AFB
			extended = -- added new abilities for engine performance setup. thrust data now can be specified as 2d table by Mach number and altitude. thrust specific fuel consumption tuning added as well
			{
                -- matching TSFC to mil thrust consumption at altitude at mach per NATOPS navy trials
				TSFC_max =  -- thrust specific fuel consumption by altitude and Mach number for RPM  100%, 2d table
				{
					M 		 = {0, 0.5, 0.8, 0.9, 1.0},
					H		 = {0, 3048, 6096, 9144, 12192},
					TSFC	 = {-- M 0      0.5     0.8       0.9     1.0
								{   0.86,  0.92,  1.012,    1.012,  1.003},--H = 0       -- SL
								{   0.86,  0.99,  1.025,    1.025,  1.016},--H = 3048    -- 10000'
								{   0.86,  0.96,  1.008,    1.008,  0.999},--H = 6096    -- 20000'
								{   0.86,  0.95,  0.984,    0.984,  0.974},--H = 9144    -- 30000'
                                {   0.86,  0.94,  0.976,    0.976,  0.967},--H = 12192   -- 40000'
					}
				},

				 TSFC_afterburner =  -- afterburning thrust specific fuel consumption by altitude and Mach number RPM  100%, 2d table
				 {
					 M 		 = {0,0.3,0.5,0.7,1.0},
					 H		 = {0,1000,3000,10000},
					 TSFC	 = {-- M 0  0.3 0.5  0.7  1.0
								 {   1,   1,  1,   1,   1},--H = 0
								 {   1,   1,  1,   1,   1},--H = 1000
								 {   1,   1,  1,   1,   1},--H = 3000
								 {   1,   1,  1,   1,   1},--H = 10000
					 }
				 },

                -- per ADA057325:
                -- SFC = 0.836 (0% bleed) to 1.415 (15.44% bleed) at low throttle
                -- SFC = 0.777 (0% bleed) to 0.964 (16.84% bleed) at MIL throttle
                -- modeling as 5% bleed, so low power loses 22% efficiency:
				TSFC_throttle_responce =  -- correction to TSFC for different engine RPM, 1d table
				{
					RPM = {0, 50, 55, 75, 100},
					K   = {1, 1.05, 1.22, 1.05, 1.00},   -- Static SL TSFC now part of table above
                    --K   = {1, 1, 1, 1, 1},
				},


                --[[
                thrust_max = -- thrust interpolation table by altitude and mach number, 2d table
				 {
					 M 		 = {0,.1,0.3,0.5,0.7,0.8,0.9,1.1},
					 H		 = {0,250,4572,7620,10668,13716,16764,19812},
					 thrust	 = {-- M   0         0.1       0.3       0.5       0.7      0.8     0.9       1.1
								 {   61370,  59460,  57023, 36653,  36996,  37112,  36813,  34073 },--H = 0 (sea level)
								 {   41370,  39460,  37023, 36653,  36996,  37112,  36813,  34073 },--H = 250 (sea level)
								 {   27254,  25799,  24203, 24599,  26227,  27254,  28353,  29785 },--H = 4572 (15kft)
								 {   20818,  19203,  17548, 17473,  18638,  19608,  20684,  22873 },--H = 7620 (25kft)
								 {   10876,  11076,  11556, 12193,  13024,  13674,  14434,  16098 },--H = 10668 (35kft)
								 {   6025,   6379,   6837,  7433,   8194,   8603,   9101,   10075 },--H = 13716 (45kft)
								 {   3336,   3554,   3990,  4484,   5000,   5307,   5596,   6232  },--H = 16764 (55kft)
								 {   1904,   2042,   2433,  2798,   3212,   3483,   3639,   4097  },--H = 19812 (65kft)

					 },
				 },]]--


                thrust_max = -- thrust interpolation table by altitude and mach number, 2d table
                        { -- Minimum thrust 2000 kN, maximum thrust 16700 kN
                            M 		 = {0*666.739,100*666.739,120*666.739,140*666.739,160*666.739,200*666.739,220*666.739,280*666.739,320*666.739,400*666.739},
                            H		 = {0,3048,6096,9144,10500,12192,13500, 14500, 15000,15500,17000},
                            thrust	 = {--KCAS 0       100      120      140      160     200     220     280      320     400
                                        {    20226,   17226,   16226,   15226,   14226,  13226,  12226,  11226,  10680,  9226 },--H = 0 (sea level)
										{    18226,   15226,   14226,   14226,   12226,  11226,  10226,  9226,   8680,   8026 },--H = 0 (sea level
                                        {    18226,   15226,   14226,   13226,   12226,  11226,  10226,  9226,   7680,   8226 },--H = 3048 (10kft)
										{    18226,   15226,   14226,   13226,   12226,  11226,  10226,  9226,   7680,   8226 },--H = 3048 (10kft)
                                        {    18226,   14226,   13000,   12000,   11000,  10000,   9000,   8000,   7000,  7000 },--H = 6096 (20kft)
										{    17226,   14226,   13000,   12000,   11000,  10000,   9000,   8000,   7000,  7000 },--H = 6096 (20kft)
                                        {    17226,   14226,   13000,   12000,   11000,  10000,   9000,   8000,   7000,  7000 },--H = 9144 (30kft)
                                        {    17226,   14226,   13000,   12000,   11000,  10000,   9000,   8000,   7000,  7000 },--H = 10500 (34kft)
										{    17000,   14000,   12000,   11000,   10000,   9000,   9000,   8000,   7000,  7000 },--H = 10500 (34kft)
										{    16000,   14000,   12000,   11000,   10000,   9000,   9000,   8000,   7000,  7000 },--H = 12192 (40kft)
                                        
                            },
                        },



				 

				--rpm_acceleration_time_factor = -- time factor for engine governor  ie RPM += (desired_RPM - RPM ) * t(RPM) * dt
				--{
				--	RPM  = {0, 50, 100},
				--	t    = {0.3,0.3,0.3}
				--},
				--rpm_deceleration_time_factor = -- time factor for engine governor
				--{
				--	RPM  = {0, 50, 100},
				--	t    = {0.3,0.3,0.3}
				--},
				rpm_throttle_responce = -- required RPM according to throttle position
						{
							throttle = {0, 0.1, 0.55,  1.0},
							RPM      = {64.6, 84, 92, 100},
						},
						thrust_rpm_responce = -- thrust = K(RPM) * thrust_max(M,H)
						{
							RPM = {0, 64.6, 84,   100},
							K   = {0, 0.00, 0.1,  1},
						},
			},
        }, -- end of engine
    },

    AddPropAircraft = {
        {
            id = "SoloFlight",
            control = 'checkbox',
            label = _('Solo Flight'),
            defValue = false,
            weightWhenOn = -80,
            wCtrl = 150,
		},
		{ id = "NetCrewControlPriority" , control = 'comboList', label = _('Aircraft Control Priority'), playerOnly = true,
			values = {{id =  0, dispName = _("Pilot")},
					 {id =  1, dispName = _("Instructor")},
					 {id = -1, dispName = _("Ask Always")},
					 {id = -2, dispName = _("Equally Responsible")}},
			defValue  = 1,
			wCtrl     = 150
		},

		{ id = "LGB1000", control = 'spinbox',  label = _('Laser Code 1st Digit'), defValue = 1, min = 1, max = 1, dimension = ' ', playerOnly = true}, -- only for completeness
        { id = "LGB100", control = 'spinbox',  label = _('Laser Code 2nd Digit'), defValue = 6, min = 5, max = 7, dimension = ' ', playerOnly = true},
        { id = "LGB10", control = 'spinbox',  label = _('Laser Code 3rd Digit'), defValue = 8, min = 1, max = 8, dimension = ' ', playerOnly = true},
        { id = "LGB1", control = 'spinbox',  label = _('Laser Code 4th Digit'), defValue = 8, min = 1, max = 8, dimension = ' ', playerOnly = true},

    },
	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
		Damage = verbose_to_dmg_properties({
---------------------------------------------------------Collision lines
		["Line_NOSE"] =
		{
			args = {146},--, 81, 224, 214,223, 213
			critical_damage	= 15,
			-- deps_cells = {55, 47, 51, 52, 48, 40, 53},
		},
		
		["Line_MAIN"] =
		{
			args = {153},
			critical_damage	= 10,
		},
		
	
		
---------------------------------------------------------Engines
		["ENGINE_L"] = --(Engine 1)
		{
			args = {167},
			critical_damage	= 5,
		},


		["ENGINE_R"] = --(Engine 2)
		{
			args = {161},
			critical_damage	= 5,
		},
---------------------------------------------------------Fuselage
	
		["COCKPIT"] =
		{
			args = {65},
			critical_damage	= 12,
		},
		["FUSELAGE_LEFT_SIDE"] =
		{
			args = {154},
			critical_damage	= 6,
		},
		["FUSELAGE_RIGHT_SIDE"] =
		{
			args = {153},
			critical_damage	= 6,
		},
	
---------------------------------------------------------Left Wing
		["WING_L_OUT"] =
		{
			args = {223},
			critical_damage	= 6,
			deps_cells = {"AILERON_L"},
		},
		["AILERON_L"] =
		{
			args = {226},
			critical_damage	= 6,
		},
		["WING_L_CENTER"] =
		{
			args = {224},
			critical_damage	= 6,
			deps_cells = {"WING_L_OUT", "AILERON_L", "FLAP_L_OUT", "ENGINE_L"},--(Engine 1)
			droppable = true,
			droppable_shape = "Pucara_leftWing",
		},
		["FLAP_L_OUT"] =
		{
			args = {227},
			critical_damage	= 5,
		},
		
	---------------------------------------------------------Right Wing
		["WING_R_OUT"] =
		{
			args = {213},
			critical_damage	= 6,
			deps_cells = {"AILERON_R"},
		},
		["AILERON_R"] =
		{
			args = {216},
			critical_damage	= 6,
		},
		["WING_R_CENTER"] =
		{
			args = {214},
			critical_damage	= 6,--50
			deps_cells = {"WING_R_OUT", "AILERON_R", "FLAP_R_OUT", "ENGINE_R"},--(Engine 4)
			droppable = true,
			droppable_shape = "Pucara_RightWing",
		},
		["FLAP_R_OUT"] =
		{
			args = {217},
			critical_damage	= 5,
		},
	
		
---------------------------------------------------------Tail
		-- ["TAIL"] =
		-- {
			-- args = {81},
			-- critical_damage	= 50,
			-- deps_cells = {"STABILIZER_R_OUT", "ELEVATOR_R", "STABILIZER_L_OUT", "ELEVATOR_L", "RUDDER_R", "RUDDER"},
			-- droppable = true,
			-- droppable_shape = "Hercules_TailSection",
		-- },
		["TAIL_LEFT_SIDE"] =
		{
			args = {158},
			critical_damage	= 6,
		},
		["TAIL_RIGHT_SIDE"] =
		{
			args = {157},
			critical_damage	= 6,
		},
		["RUDDER_R"] = --Vert stabilizer
		{
			args = {247},--241, 146, 81
			critical_damage	= 9,
			deps_cells = {"RUDDER"},
		},
		["RUDDER"] =
		{
			args = {248},
			critical_damage	= 9,
		},
		["STABILIZER_L_OUT"] =
		{
			args = {235},
			critical_damage	= 6,
			deps_cells = {"ELEVATOR_L"},
			droppable = true,
			droppable_shape = "Pucara_LeftStabilizer",
		},
		["ELEVATOR_L"] =
		{
			args = {240},
			critical_damage	= 6,
		},
		["STABILIZER_R_OUT"] =
		{
			args = {233},
			critical_damage	= 6,
			deps_cells = {"ELEVATOR_R"},
			droppable = true,
			droppable_shape = "Pucara_RightStabilizer",
		},
		["ELEVATOR_R"] =
		{
			args = {238},
			critical_damage	= 6,
		},
	
---------------------------------------------------------Wheels
		["WHEEL_F"] =
		{
			args = {134},
			critical_damage	= 15,
		},
		["WHEEL_L"] =
		{
			args = {136},
			critical_damage	= 15,
		},
		["WHEEL_R"] =
		{
			args = {135},
			critical_damage	= 15,
		},
	}),-- end of Damage

	DamageParts = 
	{  
		[1] = "PUCARA-collision", -- wing R
	},

	Failures = {
		--{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},

	lights_data = {
        typename = "collection",
        lights = {
			[WOLALIGHT_STROBES]	= {
				typename	=	"collection",
				lights 		= {
					{ typename = "argnatostrobelight", argument = 204, period = 1.2, phase_shift = 0},		-- beacon lights
				},
			},--must be collection
			[WOLALIGHT_LANDING_LIGHTS]	= {
				typename	= 	"collection",
				lights		= {
					{ typename  = "argumentlight",	argument  = 51, },
				},
			},--must be collection
			[WOLALIGHT_TAXI_LIGHTS]	= {
				typename	= 	"collection",
				lights		= {
					{ typename  = "argumentlight",	argument  = 208, },
				},
			},--must be collection
			[WOLALIGHT_NAVLIGHTS]	= {
				typename 	= "collection",
				lights 		= {
					{ typename  = "argumentlight", argument  = 49, },				-- red
				},
			},--must be collection
			[WOLALIGHT_FORMATION_LIGHTS] = {
				typename	= "collection",
				lights		= {
					{ typename  = "argumentlight",	argument  = 88, },
				},		-- green bars
			},--must be collection

			-- STROBE / ANTI-COLLISION
			[WOLALIGHT_BEACONS] = {
				typename = "collection",
				lights = {
					-- 0 -- Anti-collision strobe
					{ typename = "argnatostrobelight", argument = 200, period = 0.4, flash_time = 0.1, },
				},
			},
        }
    },

	stores_number	=	5,

	LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
		--MaxFuelWeight = "15245",
        --MaxHeight = "20000",
        --MaxSpeed = "3000",
        --MaxTakeOffWeight = "41200",
        --Picture = "PUCARA.png",
        --Rate = "30",
        --Shape = "PUCARA",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
			[2] = 
            {
				Name = "AircraftCarrier With Tramplin",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
	
	

	--	Countermeasures = {
	--		ECM = "AN/ALQ-165"
	--	},

	--passivCounterm = {
	--	CMDS_Edit = true,
	--	SingleChargeTotal = 60,
	--	chaff = {default = 30, increment = 1, chargeSz = 1},
	--	flare = {default = 30,  increment = 1, chargeSz = 1},
	--},

	--chaff_flare_dispenser 	= {
			
	--	{ dir =  {0, -1, 0}, pos =   {-3.027,  0.35, -0.3}, }, -- Chaff L
	--	{ dir =  {0, -1, 0}, pos =   {-3.727,  0.35, 0.3}, },  -- Chaff R
	-- --   { dir =  {0, -1,  0}, pos =  {-3.032,  0.35, -0.32}, }, -- Flares L	
	--	{ dir =  {0, -1,  0}, pos =  {-3.732,  0.35,  0.32}, }, -- Flares R
	--},
		

	mapclasskey = "P0091000024",

	Guns = {
		nr23({muzzle_pos = {1.742, 0.43, 0.6},_connector =  "Point_Gun_01_R",rates = {1025},effect_arg_number = 350,mixes = {{1,2,2,3,3}}, count = 900, azimuth_initial = -0.06,elevation_initial = 0.05,supply_position = {4.5,0.22, 0.3}}),-- MITRAIL AVR 1
        nr23({muzzle_pos = {1.742, 0.21, 0.61},_connector =  "Point_Gun_01_R",rates = {1025},effect_arg_number = 350,mixes = {{1,2,2,3,3}},count = 900,azimuth_initial = -0.06,elevation_initial = 0.05,supply_position = {4.5,0.22, 0.3}}),-- MITRAIL AVR 1		
		nr232({muzzle_pos = {1.742, 0.43, -0.6},_connector =  "Point_Gun_01_L",rates = {1025},effect_arg_number = 436,mixes = {{1,2,2,3,3}},count = 900,azimuth_initial = -0.06,elevation_initial = 0.05,supply_position = {2.0, -0.25, 0.8}}),-- MITRAIL AVR 2 B
		nr232({muzzle_pos = {1.742, 0.21, -0.61},_connector =  "Point_Gun_01_L",rates = {1025},effect_arg_number = 436,mixes = {{1,2,2,3,3}},count = 900,azimuth_initial = -0.06,elevation_initial = 0.05,supply_position = {2.0, -0.25, 0.8}}),-- MITRAIL AVR 2 B
		
	--	n37({muzzle_pos = {2.86, -0.151, -0.396},_connector =  "Point_Gun_02_L",rates = {1025},effect_arg_number = 433,mixes = {{1,2,2,3,3}},count = 270,azimuth_initial = -0.10,elevation_initial = -9,supply_position = {2.0, -0.25, 0.8}}),-- MITRAIL AVR 2 B
	--	n37({muzzle_pos = {2.86, -0.151, 0.396},_connector =  "Point_Gun_02_R",rates = {1025},effect_arg_number = 432,mixes = {{1,2,2,3,3}},count = 270,azimuth_initial = -0.10,elevation_initial = -9,supply_position = {2.0, -0.25, 0.8}}),-- MITRAIL AVR 2 B
	}, -- 3dsmax X, Z, -Y
}

add_aircraft(PUCARA)
