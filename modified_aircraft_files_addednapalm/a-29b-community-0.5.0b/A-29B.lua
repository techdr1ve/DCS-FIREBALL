--mounting 3d model paths and texture paths 

mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path	(current_mod_path.."/Cockpit/Textures/")
mount_vfs_model_path	(current_mod_path.."/Cockpit/Shape")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/A-29B.zip")
mount_vfs_texture_path  (current_mod_path.."/Textures/")
mount_vfs_sound_path    (current_mod_path.."/Sounds")

A_29B =  {
	Name 				=   'A-29B',
	DisplayName			= _('A-29B'),
	Cannon 				= "yes",
	HumanCockpit 		= false,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	Picture 			= "A-29B.png",
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "A-29B",
	propellorShapeType  = '3ARG_PROC_BLUR',
	propellorShapeName  = 'a29b_blade.fbx',
	debrisGeneration     = true,
	shape_table_data 	= 
	{
		{
			file  	 	= 'A-29B';
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'Fighter-2-crush'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username	= 'A-29B';
			index    	=  WSTYPE_PLACEHOLDER;---------------------------------------------------------------------------------------
            classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		-- no need for this as we are using a built in destroyed model
		-- {
		-- 	name  = "A-29B-collision";
		-- 	file  = "A-29B-collision";
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
	    M_empty									=	3356,  -- kg
		M_nominal								=	3900,  -- kg  -- kg ~ %50 fuel, combat load
		M_max									=	5400,  -- kg
		M_fuel_max								=   495, -- utilizável 495 --509 + 239 + 249*2 + 231,   -- kg Asas, Fuselage, Subalar, Ventral,
        M_fuel_per_tank 						= 	{245, 250}, -- kg
		H_max									=	10668 , -- m

		average_fuel_consumption 	= 0.302, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s
        defFuelRatio    			= 0.68, -- топливо по умолчанию в долях от полного
		CAS_min 					= 53, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
		V_opt 						= 240/1.944,-- Cruise speed (for AI) –- Assume Mach 0.80 at 20000 ft as optimal. See -- http://www.nasa.gov/centers/dryden/pdf/87789main_H-636.pdf and		–- http://www.hochwarth.com/misc/AviationCalculator.html 		–- Mach 0.8 at 20000 = XXX kts TAS = XXX m / s
		V_take_off 					= 120/1.944, -- Take off speed in m/s (for AI)
		V_land 						= 125/1.944, -- Land speed in m/s (for AI)
		V_max_sea_level 			= 320/1.944, -- Max speed at sea level in m/s (for AI)
		V_max_h 					= 210/1.944, -- Max speed at max altitude in m/s (for AI)
		Vy_max 						= 12, -- Max climb speed in m/s (for AI)
		Mach_max 					= 0.562, -- Max speed in Mach (for AI)
		Ny_min 						= -4, -- Min G (for AI)
		Ny_max 						= 8.0,  -- Max G (for AI)
		Ny_max_e 					= 8.0,  -- Max G (for AI)
		AOA_take_off 				= math.rad(9.0), -- AoA in take off (for AI) -- in radians
		bank_angle_max 				= 60, -- Max bank angle (for AI)
	
		has_afteburner 				= false, -- AFB yes/no
		has_speedbrake 				= true, -- Speedbrake yes/no
		has_differential_stabilizer	= false, -- differential stabilizers

		main_gear_pos 				= 	{-0.66,	-2.13,	1.813}, --{-1,	-2.03,	2.},
		nose_gear_pos 				= 	{2.544, -2.184,  -0.011}, --{2.808,	-2.09,	0},
		tand_gear_max				=	0.363970234, -- tangent of degrees of rotation max of nose wheel steering

		nose_gear_amortizer_direct_stroke        = 0.00,    -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke      = -0.156,   -- up
		nose_gear_amortizer_normal_weight_stroke = -0.056,   
		main_gear_amortizer_direct_stroke        = 0.00,     -- down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke      = -0.156,   -- up
		main_gear_amortizer_normal_weight_stroke = -0.056,   

		nose_gear_wheel_diameter	=	0.433, --in m
		main_gear_wheel_diameter	=	0.563, -- in m
	
	

		wing_area 					= 19.4, -- wing area in m2
		wing_span 					= 11.135, -- wing span in m
		wing_type 					= 0,

		thrust_sum_max 				= 17000, -- thrust in kg (44kN)
		thrust_sum_ab 				= 17000, -- thrust inkg (71kN)
		length 						= 11.332, -- full lenght in m
		height 						= 3.974, -- height in m
		flaps_maneuver 				= 1.0, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)
		range 						= 1568, -- Max range in km (for AI)
		RCS 						= 2.5, -- Radar Cross Section m2
		IR_emission_coeff 			= 0.1, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
		IR_emission_coeff_ab 		= 0.1, -- With afterburner
		wing_tip_pos 				= {-0.39, -0.412,     5.591}, -- wingtip coords for visual effects
		brakeshute_name 			= 0, -- Landing - brake chute visual shape after separation
		flaps_transmission							=	"Electrical",
		undercarriage_transmission					=	"Hydraulic",

		-- The following is used for graphical AB effects
		engines_count				= 1, -- Engines count
		engines_nozzles = 
		{
			[1] = 
			{
				pos 		=  {2.427,-0.565,0.563}, -- nozzle coords
				elevation   =  0, -- AFB cone elevation –- for engines mounted at an angle to fuselage, change elevation
				diameter	 = 0*0.1, -- AFB cone diameter
				exhaust_length_ab   = -3.0, -- lenght in m
				exhaust_length_ab_K = 0.3, -- AB animation
				engine_number  = 1, --both to first engine
				smokiness_level     = 	0.1,  --both to first engine
			},
	
			[2] = 
			{
				pos 		=  {2.427,-0.565,-0.563}, -- nozzle coords
				elevation   =  0, -- AFB cone elevation
				diameter	 = 0*0.1, -- AFB cone diameter
				exhaust_length_ab   = -3.0, -- lenght in m
				exhaust_length_ab_K = 0.3, -- AB animation
				engine_number  = 1, --both to first engine
				smokiness_level     = 	0.1,  --both to first engine
			},
			
		
		}, -- end of engines_nozzles
		crew_size	 = 2,
		crew_members = 
		{
				[1] = 
				{	pilot_name            = "pilot_f86",
					ejection_seat_name	=	17,
					drop_canopy_name	=	'A-29B CANOPY',
					pos = 	{0,	0.3,	0}, -- location of your pilot ejecting,
					can_be_playable 	 = true,
					role 				 = "pilot",
					role_display_name    = _("Pilot"),
					ejection_order      = 0,
				}, -- end of [1]
				
				[2] = 
				{	pilot_name            = "pilot_f86",
					ejection_seat_name	=	17,
					drop_canopy_name	=	0,
					pos = 	{-1.4,	0.5,	0},
					pilot_body_arg      = 472,
					can_be_playable 	 = false,
					role 				 = "instructor",
					role_display_name    = _("Instructor pilot"),
					ejection_order      = 1,
				}, -- end of [2]
		}, -- end of crew_members
	
		fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},
			[2] = 	{0.500,	0.213,	0},
			[3] = 	{0.500,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	2.7274},
			[7] = 	{-0.82,	0.255,	-2.7274},
			[8] = 	{0.5,	-0.5,	2.7578},
			[9] = 	{0.5,	-0.5,	-2.578},
			[10] = 	{0.50,	0.084,	2.754},
			[11] = 	{0.50,	0.084,	-2.7534},
		}, -- end of fires_pos
	
		detection_range_max		 = 0, --is the max range in kilometers that the radar can see something large (e.g. a bomber, tanker, AWACS, etc.).
		radar_can_see_ground 	 = false, -- ground target identification capability, but this has not been verified

		CanopyGeometry = { -- Mk1 eyeball sensor for visual spotting targets
			azimuth = {-160.0, 160.0}, -- pilot view horizontal (AI)
			elevation = {-40.0, 90.0} -- pilot view vertical (AI)
		},

		Sensors = {
		},

		HumanRadio = {
			frequency     = 124.0, -- onboard radio, default DCSW frequency, chnl 0
			editable     = true,
			minFrequency     = 30.000,
			maxFrequency     = 399.975,
			rangeFrequency = {
				{min = 30.0,  max = 87.975},
				{min = 108.0, max = 173.975},
				{min = 225.0, max = 399.975},
			},
		},
		
		panelRadio = {
			[1] = {
				name = _("AN/ARC-150(V)-2"), --UHF
				range = {
					{min = 225.0, max = 399.975}
				},
				channels = {
					[1] = { name = _("Channel 1"), default = 225.0, modulation = _("AM")}, -- default
					[2] = { name = _("Channel 2"), default = 258.0, modulation = _("AM")},
					[3] = { name = _("Channel 3"), default = 260.0, modulation = _("AM")},
					[4] = { name = _("Channel 4"), default = 270.0, modulation = _("AM")},
					[5] = { name = _("Channel 5"), default = 255.0, modulation = _("AM")},
					[6] = { name = _("Channel 6"), default = 259.0, modulation = _("AM")},
					[7] = { name = _("Channel 7"), default = 262.0, modulation = _("AM")},
					[8] = { name = _("Channel 8"), default = 257.0, modulation = _("AM")},
					[9] = { name = _("Channel 9"), default = 253.0, modulation = _("AM")},
					[10] = { name = _("Channel 10"), default = 263.0, modulation = _("AM")},
					[11] = { name = _("Channel 11"), default = 267.0, modulation = _("AM")},
					[12] = { name = _("Channel 12"), default = 254.0, modulation = _("AM")},
					[13] = { name = _("Channel 13"), default = 264.0, modulation = _("AM")},
					[14] = { name = _("Channel 14"), default = 266.0, modulation = _("AM")},
					[15] = { name = _("Channel 15"), default = 265.0, modulation = _("AM")},
					[16] = { name = _("Channel 16"), default = 252.0, modulation = _("AM")},
					[17] = { name = _("Channel 17"), default = 268.0, modulation = _("AM")},
					[18] = { name = _("Channel 18"), default = 269.0, modulation = _("AM")},
					[19] = { name = _("Channel 19"), default = 268.0, modulation = _("AM")},
					[20] = { name = _("Channel 20"), default = 269.0, modulation = _("AM")},
				}
			},
			[2] = {
				name = _("SRT-651/N"), --VHF/UHF
				range = {{min = 30.0, max = 88.0},
						 {min = 108.0, max = 174.0},
						 {min = 225.0, max = 399.975}},
				channels = {
					[1] = { name = _("Channel 1"), default = 225.0, connect = true}, -- default
					[2] = { name = _("Channel 2"), default = 258.0},
					[3] = { name = _("Channel 3"), default = 260.0},
					[4] = { name = _("Channel 4"), default = 270.0},
					[5] = { name = _("Channel 5"), default = 255.0},
					[6] = { name = _("Channel 6"), default = 259.0},
					[7] = { name = _("Channel 7"), default = 262.0},
					[8] = { name = _("Channel 8"), default = 257.0},
					[9] = { name = _("Channel 9"), default = 253.0},
					[10] = { name = _("Channel 10"), default = 263.0},
					[11] = { name = _("Channel 11"), default = 267.0},
					[12] = { name = _("Channel 12"), default = 254.0},
					[13] = { name = _("Channel 13"), default = 264.0},
					[14] = { name = _("Channel 14"), default = 266.0},
					[15] = { name = _("Channel 15"), default = 265.0},
					[16] = { name = _("Channel 16"), default = 252.0},
					[17] = { name = _("Channel 17"), default = 268.0},
					[18] = { name = _("Channel 18"), default = 269.0},
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
		SingleChargeTotal = 60,
		CMDS_Incrementation = 15,
		ChaffDefault = 30,
		ChaffChargeSize = 1,
		FlareDefault = 15,
		FlareChargeSize = 2,
		CMDS_Edit = false,
		chaff_flare_dispenser = {
			[1] =
			{
				dir = {-1, 0, 0}, -- dispenses to rear
				pos = {-6, 0, -0.8}, -- left rear of fuselage
			}, -- end of [1]
		}, -- end of chaff_flare_dispenser

		Pylons =     {
			pylon(1, 0, -0.200, -0.90, -3.273,
				{
					connector = 'pylon1', arg = 308 ,arg_value = 0,
					use_full_connector_position = false,
				},
				{
					{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, -- AIM-9P
								
					{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20 Rockeye
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, -- Mk-81
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
					{ CLSID = "{Mk82SNAKEYE}" }, 						  -- MK82SE
					{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" }, -- M-117
					{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU12
					{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU16
					{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200

					{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, -- LAU68-MK156
					{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, -- LAU-61 - 19
	                { CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151 High Explosive *7

					-- { CLSID = "{CBU_105}" ,arg_increment = 0.0}, 		-- CBU-105	
					-- { CLSID	= "AGM114x2_OH_58" }, 						--"AGM-114K * 2"
					-- { CLSID = "{GBU_49}" ,arg_increment = 0.10 }, 		--FRENCH GBU-49

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			pylon(2, 0, -0.200, -1.0, -2.437,
				{
					connector = 'pylon2', arg = 309 ,arg_value = 0,
					use_full_connector_position = false,
				},
				{
					{ CLSID = "{A-29B TANK}" },

					{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20 Rockeye
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, -- Mk-81
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
					{ CLSID = "{Mk82SNAKEYE}" }, 						  -- MK82SE
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200					
					{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" }, -- M-117
					{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU12
					{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU16
					{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97

					{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, -- LAU68-MK156
					{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, -- LAU-61 - 19
	                { CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151 High Explosive *7

					-- { CLSID = "{CBU_105}" ,arg_increment = 0.0}, 		-- CBU-105	
					-- { CLSID	= "AGM114x2_OH_58" }, 						--"AGM-114K * 2"
					-- { CLSID = "{GBU_49}" ,arg_increment = 0.10 }, 		--FRENCH GBU-49
	
					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			pylon(3, 0, -0.66, -1.236, -0.012,
				{
					connector = 'pylon3', arg = 310 ,arg_value = 0,
					use_full_connector_position = false,
				},
				{
					{ CLSID = "{A-29B TANK}" },

					{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20 Rockeye
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, -- Mk-81
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
					{ CLSID = "{Mk82SNAKEYE}" }, 						  -- MK82SE
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
					{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" }, -- M-117
					{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU12
					{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU16
					{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
	
				}
			),
			pylon(4, 0, -0.200, -1.0, 2.415,
				{
					connector = 'pylon4', arg = 311 ,arg_value = 0,
					use_full_connector_position = false,
				 },
				{
					{ CLSID = "{A-29B TANK}" },
	
					{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20 Rockeye
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, -- Mk-81
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
					{ CLSID = "{Mk82SNAKEYE}" }, 						  -- MK82SE
    					--{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200					
					{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" }, -- M-117
					{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU12
					{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU16
					{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
	
					{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, --LAU68-MK156
					{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, -- LAU-61 - 19
	                { CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151 High Explosive *7

					-- { CLSID = "{CBU_105}" ,arg_increment = 0.0}, 		-- CBU-105	
					-- { CLSID	= "AGM114x2_OH_58" }, 						--"AGM-114K * 2"
					-- { CLSID = "{GBU_49}" ,arg_increment = 0.10 }, 		--FRENCH GBU-49

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			pylon(5, 0, -0.20, -0.9, 3.251,
				{
					connector = 'pylon5', arg = 312 ,arg_value = 0,
					use_full_connector_position = false,
				 },
				{
					{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" }, -- AIM-9P
	
					{ CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20 Rockeye
					{ CLSID = "{90321C8E-7ED1-47D4-A160-E074D5ABD902}" }, -- Mk-81
					{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
					{ CLSID = "{Mk82SNAKEYE}" }, 						  -- MK82SE
    					{ CLSID = "{mk77mod0}",arg_increment = 0.0 },                             -- Mk-77mod0 750 lb petroleum oil bomb
    					{ CLSID = "{mk77mod1}",arg_increment = 0.0 },                             -- Mk-77mod1 500 lb petroleum oil bomb
    					{ CLSID = "BIN_200",arg_increment = 0.1, required = {{station = 1,loadout = {}}} },	-- BIN-200
					{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" }, -- M-117
					{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU12
					{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU16
					{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}" }, -- CBU-97
	
					{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, --LAU68-MK156
					{ CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" }, -- LAU-61 - 19
	                { CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151 High Explosive *7

					-- { CLSID = "{CBU_105}" ,arg_increment = 0.0}, 		-- CBU-105	
					-- { CLSID	= "AGM114x2_OH_58" }, 						--"AGM-114K * 2"
					-- { CLSID = "{GBU_49}" ,arg_increment = 0.10 }, 		--FRENCH GBU-49

					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			pylon(6, 0, 1.0, -1.13, 0.0,
				{
					connector = 'flir',
					use_full_connector_position = false,
				    DisplayName 	= "FLIR",
				},
				{
					{ CLSID = "{FLIR-STAR-SAFIRE}" },
					{ CLSID = "<CLEAN>", arg_value = 1 }, -- CLEAN --
				}
			),
			pylon(7, 0, 1.664, -0.933, 0.715,
				{
					use_full_connector_position = true,
					connector 		= "SmokeWhite",
				    DisplayName 	= "Smoke",
				 },
				{
				    {CLSID = "{SMOKE-WHITE-A29B}",		    arg_value = 0.2}, -- Smoke pod
				    {CLSID = "{SMOKE-RED-A29B}",		    arg_value = 0.2}, -- Smoke pod
				    {CLSID = "{SMOKE-GREEN-A29B}",		    arg_value = 0.2}, -- Smoke pod
				    {CLSID = "{SMOKE-BLACK-A29B}",		    arg_value = 0.2}, -- Smoke pod
				    {CLSID = "{SMOKE-ORANGE-A29B}",		    arg_value = 0.2}, -- Smoke pod
				    {CLSID = "{SMOKE-YELLOW-A29B}",		    arg_value = 0.2}, -- Smoke pod
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

	-- AirframeProperties =
	-- {
	--  foreplane =
	--  {
	--   area = 6.70;          -- in square meters
	--   span = 5.45;                                       -- in meters
	--   mean_chord     = 2.3;                    -- mean aerodynamic chord length
	--   mean_chord_position   = 1.0;                    -- mean aerodynamic chord position
	--   mean_chord_position_y = 1.0;                    -- mean aerodynamic chord position - vertical
	--   sweep_angle     = 59;      -- for leading edge
	--   sweep_angle_25    = 59;                      -- 25 % of the way back from the leading edge
	--   tip_pos      = {1.35,    -0.02, -2.42};  -- for vortex attachment
	--  },
	-- },
   


	SFM_Data = {
		aerodynamics = 
		{
			Cy0	=	0.1933, -- Coefficient of lift at zero angle of attack -- Always 0 for symmetrical airfoil
			Mzalfa	=	4.355, -- Horizontal tail pitch coefficient
			Mzalfadt	=	0.8,  -- Wing pitch coefficient
			kjx = 2.25, -- Roll rate acceleration constant in radians / second  -- Inertia parametre X - Dimension (clean) airframe drag coefficient at X (Top) Simply the wing area in square meters (as that is a major factor in drag calculations) - smaller = massive inertia
			kjz = 0.00125,  -- Unknown pitch constant. All planes use 0.00125 -- -- Inertia parametre Z - Dimension (clean) airframe drag coefficient at Z (Front) Simply the wing area in square meters (as that is a major factor in drag calculations)

			Czbe = -0.056, -- Directional stability coefficient  -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
			
			cx_gear = 0.0277, -- Additional coefficient of drag for gear extended
			cx_flap = 0.095, -- Additional coefficient of drag for flap extended
			cy_flap = 0.18, -- Additional coefficient of lift for flap extended
			cx_brk = 0.065, -- Additional coefficient of drag for air brakes
			

			-- mz_table_data
			-- mz_ige_table_data
			-- mx_table_data


			-- Hi guys. I try to calculate the rollrate, or maxrollrate (omxmax) for a plane and I've got the measurements of the plane, Cl (rolling moment coefficient) and Clp.
			-- I've found a formula for Rollrate which looks like this:
			-- rollrate = -((2 * v) / b) * (Cle / Clp) * ((Eleft - Eright) / 2)
			-- v is (obiously) speed, b is wingspan, Cle coefficient of rolling moment due to aileron deflection, Clp coefficient of rolling dampening, E is the aileron deflection angle
			-- If it Rolls to fast then decrease Omxmax. If The rollaccelleration is to quick, lower kjx.
			table_data = 
			{
			-- M - Mach number
			-- Cx0 - Coefficient of drag for zero lift -- Coefficient, drag, profile, of the airplane
			-- Cya - Coefficient of lift for angle of attack -- Normal force coefficient of the wing and body of the aircraft in the normal direction to that of flight. Inversely proportional to the available G-loading at any Mach value. (lower the Cya value, higher G available) per 1 degree AOA
			-- B - Induced drag factor -- Polar quad coeff
			-- B4 - Viscous drag factor --Polar 4th power coeff
			-- Omxmax - Roll rate - roll rate, rad/s
			-- Aldop - Visual effects settings for stability / controlability -- Alfadop Max AOA at current M - departure threshold
			-- Cymax - Maximum coefficient of lift, corresponding to αstall -- Coefficient, lift, maximum possible (ignores other calculations if current Cy > Cymax)

			-- Cold start sound.
			-- Park breaking lights.
			-- NP 100%
			-- AP entra em R/P
			-- Guns piper baixo 5 mils

			-- The variables "B" and "B4" in the SFM of DCS are "modifiers" of the variable "drag at zero Lift" aka Cx0 to make those values fit the Lift/Drag (or Drag/Lift)-Polars, 
			-- where at the same mach-speed different values of drag (CD) are possible due to different angles of attack "AoA" (see above chart in post at 15h18 07.02.2021). 
			-- This is necessary, since the SFM does not differentiate between different angles of attack, but has to take into account, that a plane at 15° AoA has a lot more drag than 
			-- one at 1°AoA. The basic formula is 
			-- CD = Cx0 + B * CL^2 + B4 * CL^4
			-- CD is the "total" Drag at the given Speed, in NASA-Papers CD. Cx0 is drag at zero lift, in NASA-Papers 
			-- CDmin. CL is Lift at given speeds, in NASA-Papers CL, which is once squared and once put to the 4th power for the formula. B on the other hand is also known as K which is 
			-- 1 / (pi * AR * e). pi needs no explanation, since it is the number pi. AR is the aspect-ratio of the wing which is AR = S^2 / A where S is the Wingspan and A is the wing area. 
			-- So if you have a NASA-Report or something like that, the only unknown might be B4. If you solve the equation for B4 it looks like this:
			-- B4 = (-Cx0 - B * CL^2 + CD) / CL^4
			-- CL = Cy0 + AoA * Cya
			-- When angle-of-attack (a) is below Aldop:
			-- Cy(M,a) = Cy0 + Cya(M)*a
			-- in other words B4 = (-CDmin - (1 / pi * AR * e) * CL^2 + CD) / CL^4
			-- Before I forget it, e is the "Oswald Factor" or "wing-efficiency-factor" which is somewhere between 0.7 and 1.0. If you take 0.7 for landing speeds and take-off speeds, 
			-- where flaps and gear is extended, you will be approx. right, for everything else 0.85 or 0.9 is a good guess.
			-- Just thought about B and B4 a bit more and forgot that you have to add wave-drag for those speeds, where the wing is supersonic. 
			-- Wave-Drag = CDwave = a * ((Mach / Mach-crit) - 1)^b. Now comes the problem what is "a" and "b"? 
			-- From this: https://www.fzt.haw-hamburg.de/pers/Scholz/HOOU/AircraftDesign_13_Drag.pdf you could see, that a and b are given (or already calculated) for a few aircrafts. 
			-- You can calculate it yourself, and have fun with this: https://www.fzt.haw-hamburg.de/pers/Scholz/materialFM1/DragEstimation.pdf or you can go the easy way and "simplify" 
			-- it a bit more by saying that a fighter-jet as an "a" of 0.8 and a "b" of 2.6. A piston-driven aircraft has a = 0.02 and b = 2.20 and a jet driven cargo-plane has a = 1.2 
			-- and b = 3.9. Than you need Mach-crit (Mcrit) which can, again be calculated (see above) or, for simplicity for a fighter-jet Mcrit = 0.9, Piston-plane Mcrit = 0.5 and 
			-- Cargo-Plane Mcrit = 0.625. Now you just have to ad CDwave to the equation for B. It will look like this: B = (CDwave + 1) / (pi * A * e). Of course, you "ad" CDwave 
			-- only at speeds above Mcrit, because at Mcrit it will be 0.
			-- And on another thought, e (the wing-efficiency-factor) is more likely something between 0.75 and 0.85 for fighter Planes, where 0.75 is not so efficient and 0.85 is 
			-- more efficient. The shorter, thicker the wing, the more unefficient (I would say/guess or whatever)...or you can calculate it (see above) which looks like a 
			-- nicely spent weekend to me
			--      M	    Cx0		 Cya		    B		 B4	     Omxmax	    Aldop	    Cymax
		{0  /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.15,	     18,    	1.7771,	},
		{10 /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.20,	     18,    	1.7771,	},
		{30 /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.30,	     18,    	1.7771,	},
		{50 /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.40,	     18,	    1.7771,	},
		{70 /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.50,	     18,	    1.7771,	},
		{80 /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.55,	     18,	    1.7771,	},
		{90 /666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.60,	     18,	    1.7771,	},
		{100/666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.65,	     18,	    1.7771,	},
		{110/666.739,	   0.0708,	0.0880,		  0.0069,	0.1382,	 0.70,	     18,	    1.7771,	},
		{130/666.739,	   0.0708,	0.0807,		  0.0069,	0.1382,	 0.90,	     18,	    1.6462,	},
		{150/666.739,	   0.0708,	0.0770,		  0.0069,	0.1382,	 1.2,	     18,	    1.5798,	},
		{170/666.739,	   0.0708,	0.0759,		  0.0069,	0.1382,	 1.2,	     18,	    1.5596,	},
		{190/666.739,	   0.0708,	0.0761,		  0.0069,	0.1382,	 1.6,	     18,	    1.5629,	},
		{210/666.739,	   0.0708,	0.0756,		  0.0069,	0.1382,	 2.1,	     18,	    1.5542,	},
		{220/666.739,	   0.0708,	0.0798,		  0.0069,	0.1382,	 2.1,	     18,	    1.6250,	},
		{230/666.739,	   0.0708,	0.0841,		  0.0069,	0.1382,	 2.1,	     18,	    1.7063,	},
		{240/666.739,	   0.0708,	0.0853,		  0.0069,	0.1382,	 2.6,	     17,	    1.7250,	},
		{250/666.739,	   0.0708,	0.0866,		  0.0069,	0.1382,	 2.6,	     16,	    1.7514,	},
		{270/666.739,	   0.0708,	0.0864,		  0.0069,	0.1382,	 2.6,	     15,	    1.7476,	},
		{290/666.739,	   0.0708,	0.0964,		  0.0069,	0.1382,	 3.1,	     14,	    1.9293,	},
		{310/666.739,	   0.0708,	0.1054,		  0.0069,	0.1382,	 3.5,	     12, 	    2.0907,	},
		{360/666.739,	   0.0708,	0.1054,		  0.0069,	0.1382,	 3.5,	     7,	 	    2.0907  },
		{600/666.739,	   0.0708,	0.1054,		  0.0069,	0.1382,	 3.5,	     1,	 	    2.0907  },
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
			hMaxEng	=	19.5, -- maximum operating altitude for the engine in km -- typically higher than service ceiling of the aircraft
			dcx_eng	=	0.095, -- drag coefficient for the engine -- no correlation found -- most common values are 0.0085 and 0.0144
			cemax   = 	0.37, -- not used for fuel calculation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			cefor   = 	0.37, -- not used for fuel calculation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			dpdh_m	=	1800, --  altitude coefficient for max thrust -- altitude effects to thrust -- The best recommendation at this point is to start with these values between 2000 and 3000 and adjust as needed after initial flight testing
			dpdh_f	=	1800, --  altitude coefficient for AB thrust ???? or altitude effects to fuel rate -- The best recommendation at this point is to start with these values between 2000 and 3000 and adjust as needed after initial flight testing
			prop_locations = {{3.149, -0.524 , 0.014}, {0.0, 0.0, math.rad(-1.87)},},
			prop_blades_count = 5,
			prop_pitch_min		= 23.0,	-- prop pitch min, degrees 
			prop_pitch_max		= 65.0,	-- prop pitch max, degrees 
			prop_pitch_feather	= 80.0,	-- prop pitch feather position, degrees if feather < prop_pitch_max no feathering available
			Nominal_RPM = 2000,
			Nominal_Fan_RPM = 2000,
			Startup_Prework = 1.0,
			Startup_RPMs = {
				{0.0, 0},
				{1.0, 60},
				{8.0, 60},
				{8.6, 880},
				{13.0, 601},
			},
			Startup_Ignition_Time = 8.3,
			Shutdown_Duration = 9.8,

			table_data = {
			-- Pmax - total thrust in Mil Pwr in Newtons for all engines
			-- Pfor - total thrust in AB in Newtons for all engines
			--   M		Pmax		 Pfor
			{0.0,		16620.0},
			{0.1,		15600.0},
			{0.2,		14340.0},
			{0.3,		13320.0},
			{0.4,		12230.0},
			{0.5,		11300.0},
			{0.6,		10600.0},
			{0.7,		10050.0},
			{0.8,		 9820.0},
			{0.9,		 5902.0},
			{1.0,		 3469.0}
		}, -- end of table_data
			-- M - Mach number
			-- Pmax - Engine thrust at military power
			-- Pfor - Engine thrust at AFB

            extended =
                {
                
						TSFC_max =  -- thrust specific fuel consumption by altitude and Mach number for RPM  100%, 2d table
						{			-- factor = kg/h /2000
                            M 		 = {0/666.739, 140/666.739, 160/666.739, 200/666.739, 220/666.739, 260/666.739, 300/666.739},
							H		 = {0, 1524, 3048, 4572, 6096, 7620, 9144},
							TSFC	 = {-- KT 0      	140     	160			200     	220 		260		300--0.1264
										{   150/1800,  195/1800,  205/1800,    243/1800,  271/1800, 347/1800, 380/1800},--H = 0       -- SL
										{   140/1800,  180/1800,  188/1800,    218/1800,  240/1800, 300/1800, 360/1800},--H = 1524    -- 5000' 
										{   130/1800,  152/1800,  175/1800,    195/1800,  215/1800, 268/1800, 330/1800},--H = 3048    -- 10000'
										{   120/1800,  120/1800,  160/1800,    177/1800,  191/1800, 234/1800, 285/1800},--H = 4572    -- 15000'
										{   115/1800,  115/1800,  135/1800,    165/1800,  175/1800, 210/1800, 250/1800},--H = 6096    -- 20000'
										{   110/1800,  110/1800,  110/1800,    160/1800,  165/1800, 195/1800, 210/1800},--H = 7620    -- 25000'
										{   110/1800,  110/1800,  110/1800,    152/1800,  165/1800, 175/1800, 175/1800},--H = 9144    -- 30000'
							}
						},

						-- TSFC_afterburner =  -- thrust specific fuel consumption by altitude and Mach number for RPM  100%, 2d table
						-- {			-- factor = kg/h /2000
                        --  M 		 = {0/666.739, 140/666.739, 160/666.739, 200/666.739, 220/666.739, 260/666.739, 300/666.739},
						-- 	H		 = {0, 1524, 3048, 4572, 6096, 7620, 9144},
						-- 	TSFC	 = {-- KT 0      	140     	160			200     	220 		260		300--0.1264
						-- 				{   150/1800,  195/1800,  205/1800,    243/1800,  271/1800, 347/1800, 380/1800},--H = 0       -- SL
						-- 				{   140/1800,  180/1800,  188/1800,    218/1800,  240/1800, 300/1800, 360/1800},--H = 1524    -- 5000' 
						-- 				{   130/1800,  152/1800,  175/1800,    195/1800,  215/1800, 268/1800, 330/1800},--H = 3048    -- 10000'
						-- 				{   120/1800,  120/1800,  160/1800,    177/1800,  191/1800, 234/1800, 285/1800},--H = 4572    -- 15000'
						-- 				{   115/1800,  115/1800,  135/1800,    165/1800,  175/1800, 210/1800, 250/1800},--H = 6096    -- 20000'
						-- 				{   110/1800,  110/1800,  110/1800,    160/1800,  165/1800, 195/1800, 210/1800},--H = 7620    -- 25000'
						-- 				{   110/1800,  110/1800,  110/1800,    152/1800,  165/1800, 175/1800, 175/1800},--H = 9144    -- 30000'
						-- 	}
						-- },

						TSFC_throttle_responce =  -- correction to TSFC for different engine RPM, 1d table
						{
							RPM = {0, 70, 80, 90, 100},
							K   = {1,  1,  1,  1,   1},
						},

						thrust_max = -- thrust interpolation table by altitude and mach number, 2d table
                        { -- Minimum thrust 2000 kN, maximum thrust 16700 kN
                            M 		 = {0*666.739,100*666.739,120*666.739,140*666.739,160*666.739,200*666.739,220*666.739,280*666.739,320*666.739,400*666.739},
                            H		 = {0,3048,6096,9144,10500,12192},
                            thrust	 = {--KCAS 0       100      120      140      160     200     220     280      320     400
                                        {    17000,   17000,   17000,   17000,   17000,  17000,  17000,  17000,   16925,  17000 },--H = 0 (sea level)
                                        {    16000,   16000,   16000,   16000,   16000,  16000,  16000,  16000,   16000,  16000 },--H = 3048 (10kft)
                                        {    11500,   11500,   11500,   11500,   11500,  11500,  11500,  11500,   11500,  11500 },--H = 6096 (20kft)
                                        {     7000,    7000,    7000,    7000,    7000,   7000,   7000,   7000,    7000,   7000 },--H = 9144 (30kft)
                                        {     5000,    5000,    5000,    5000,    5000,   5000,   5000,   5000,    5000,   5000 },--H = 10500 (34kft)
										{     5000,    5000,    5000,    5000,    5000,   5000,   5000,   5000,    5000,   5000 },--H = 12192 (40kft)
                                        
                            },
                        },

						-- thrust_afterburner =  -- thrust interpolation table by altitude and mach number, 2d table
                        -- { -- Minimum thrust 2000 kN, maximum thrust 16700 kN
                        --     M 		 = {0*666.739,100*666.739,120*666.739,140*666.739,160*666.739,200*666.739,220*666.739,280*666.739,320*666.739,400*666.739},
                        --     H		 = {0,3048,6096,9144,10500,12192},
                        --     thrust	 = {--KCAS 0       100      120      140      160     200     220     280      320     400
                        --                 {    17000,   17000,   17000,   17000,   17000,  17000,  17000,  17000,   16925,  17000 },--H = 0 (sea level)
                        --                 {    16000,   16000,   16000,   16000,   16000,  16000,  16000,  16000,   16000,  16000 },--H = 3048 (10kft)
                        --                 {    11500,   11500,   11500,   11500,   11500,  11500,  11500,  11500,   11500,  11500 },--H = 6096 (20kft)
                        --                 {     7000,    7000,    7000,    7000,    7000,   7000,   7000,   7000,    7000,   7000 },--H = 9144 (30kft)
                        --                 {     5000,    5000,    5000,    5000,    5000,   5000,   5000,   5000,    5000,   5000 },--H = 10500 (34kft)
						-- 				{     5000,    5000,    5000,    5000,    5000,   5000,   5000,   5000,    5000,   5000 },--H = 12192 (40kft)
                                        
                        --     },
                        -- },

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

                }, -- end of extended data

           
		}, -- end of engine

		-- engine_data = {
		-- 	power_take_off = 1000.0 * algumacoisa,
		-- 	power_max = 1000.0 * algumacoisa,
		-- 	power_WEP = algumacoisa,
		-- 	power_TH_k = algumacoisa,
		-- 	SFC_k = 0,
		-- 	power_RPM_k = 0,
		-- 	power_RPM_min = 0,
		-- 	Nmg_Ready = 0,
		-- },

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
	Damage = {
		[0]		= {critical_damage = 5, args = {146}},
		[3]		= {critical_damage = 20,args = {65}}  ,
		[4]		= {critical_damage = 20, args = {150}},
		[5]		= {critical_damage = 20, args = {147}},
		[7]		= {critical_damage = 4, args = {249}} ,
		[9]		= {critical_damage = 3, args = {154}},
		[10]	= {critical_damage = 3, args = {153}},
		[11]	= {critical_damage = 3, args = {167}},
		[12]	= {critical_damage = 3, args = {161}},
		[15]	= {critical_damage = 5, args = {267}},
		[16]	= {critical_damage = 5, args = {266}},
		[23]	= {critical_damage = 8, args = {223}, deps_cells = {25}},
		[24]	= {critical_damage = 8, args = {213}, deps_cells = {26, 60}},
		[25]	= {critical_damage = 3, args = {226}},
		[26]	= {critical_damage = 3, args = {216}},
		[29]	= {critical_damage = 9, args = {224}, deps_cells = {31, 25, 23}},
		[30]	= {critical_damage = 9, args = {214}, deps_cells = {32, 26, 24, 60}},
		[31]	= {critical_damage = 4, args = {229}},
		[32]	= {critical_damage = 4, args = {219}},
		[35]	= {critical_damage = 10, args = {225}, deps_cells = {29, 31, 25, 23}},
		[36]	= {critical_damage = 10, args = {215}, deps_cells = {30, 32, 26, 24, 60}} ,
		[37]	= {critical_damage = 4, args = {227}},
		[38]	= {critical_damage = 4, args = {217}},
		[39]	= {critical_damage = 7,	args = {244}, deps_cells = {53}},
		[40]	= {critical_damage = 7, args = {241}, deps_cells = {54}},
		[45]	= {critical_damage = 9, args = {235}, deps_cells = {39, 51, 53}},
		[46]	= {critical_damage = 9, args = {233}, deps_cells = {40, 52, 54}},
		[51]	= {critical_damage = 3, args = {239}},
		[52]	= {critical_damage = 3, args = {237}},
		[53]	= {critical_damage = 3, args = {248}},
		[54]	= {critical_damage = 3, args = {247}},
		[55]	= {critical_damage = 20, args = {81}, deps_cells = {39, 40, 45, 46, 51, 52, 53, 54}},
		[59]	= {critical_damage = 5, args = {148}},
		[60]	= {critical_damage = 1, args = {144}},

		[83]	= {critical_damage = 3, args = {134}} ,-- nose wheel
		[84]	= {critical_damage = 3, args = {136}}, -- left wheel
		[85]	= {critical_damage = 3, args = {135}} ,-- right wheel
	},

	DamageParts = 
	{  
		[1] = "A-29B-collision", -- wing R
	},

	Failures = {
		{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		--{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
	},

	lights_data = {
        typename = "collection",
        lights = {
			[WOLALIGHT_STROBES]	= {
				typename	=	"collection",
				lights 		= {
					{ typename = "argnatostrobelight", argument = 83, period = 1.2},		-- beacon lights
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

	stores_number	=	10,

	LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
		MaxFuelWeight = "15245",
        MaxHeight = "20000",
        MaxSpeed = "3000",
        MaxTakeOffWeight = "41200",
        Picture = "A-29B.png",
        Rate = "30",
        Shape = "A-29B",
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
	
	

		Countermeasures = {
			ECM = "AN/ALQ-165"
		},

	passivCounterm = {
		CMDS_Edit = true,
		SingleChargeTotal = 60,
		chaff = {default = 30, increment = 1, chargeSz = 1},
		flare = {default = 30,  increment = 1, chargeSz = 1},
	},

	chaff_flare_dispenser 	= {
			
		{ dir =  {0, -1, 0}, pos =   {-3.027,  0.35, -0.3}, }, -- Chaff L
		{ dir =  {0, -1, 0}, pos =   {-3.727,  0.35, 0.3}, },  -- Chaff R
	    { dir =  {0, -1,  0}, pos =  {-3.032,  0.35, -0.32}, }, -- Flares L	
		{ dir =  {0, -1,  0}, pos =  {-3.732,  0.35,  0.32}, }, -- Flares R
	},
		

	mapclasskey = "P0091000024",

	Guns = {
		MG_20({muzzle_pos = {0.82,-0.705, 2.326},_connector =  "Point_Gun_01_R",rates = {1025},effect_arg_number = 350,mixes = {{1,2,2,3,3}},azimuth_initial = 0.0,elevation_initial = 0,supply_position = {4.5,0.22, 0.3}}),-- MITRAIL AVR 1 
		MG_20({muzzle_pos = {0.82, -0.705, -2.326},_connector =  "Point_Gun_01_L",rates = {1025},effect_arg_number = 436,mixes = {{1,2,2,3,3}},azimuth_initial = 0.0,elevation_initial = 0,supply_position = {2.0, -0.25, 0.8}}),-- MITRAIL AVR 2 B
	}, -- 3dsmax X, Z, -Y
}

add_aircraft(A_29B)
	