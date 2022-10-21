--------------------------------------------M60 Gun----------------------------------------------------------------------------
local function M60(tbl)

    tbl.category = CAT_GUN_MOUNT
    tbl.name     = "M_60"
    tbl.supply 	 =
    {
        shells = {"7.62x51mm"},
        mixes  = 
		{
            {1},
        }, 
        count  = 600,
    }
    tbl.gun =
    {
        max_burst_length    = 100000,
        rates               = {1000},
        recoil_coeff        = 0.7*1.3,
        barrels_count       = 1,
    }
    if tbl.rates then
       tbl.gun.rates        =  tbl.rates
       tbl.rates            = nil
    end
    tbl.ejector_pos             = tbl.ejector_pos or {0, 0, 0}
    tbl.ejector_pos_connector   = tbl.ejector_pos_connector     or  "Gun_point"
    tbl.ejector_dir             = {-1, -6, 0}
    tbl.supply_position         = tbl.supply_position   or {0,  0.3, -0.3}
    tbl.aft_gun_mount           = false
    tbl.effective_fire_distance = 1500
    tbl.drop_cartridge          = 204
    tbl.muzzle_pos              = tbl.muzzle_pos            or  {0,0,0}     -- all position from connector
    tbl.muzzle_pos_connector    = tbl.muzzle_pos_connector  or  "Gun_point" -- all position from connector
    tbl.azimuth_initial         = tbl.azimuth_initial       or  0
    tbl.elevation_initial       = tbl.elevation_initial     or  0
    if  tbl.effects == nil then
        tbl.effects = {{ name = "FireEffect"     , arg = tbl.effect_arg_number or 436 },
                       { name = "HeatEffectExt"  , shot_heat = 7.823, barrel_k = 0.462 * 2.7, body_k = 0.462 * 14.3 },
                       { name = "SmokeEffect"}
					}
    end
    return declare_weapon(tbl)
end
---------------------------------------------------------------------------------------------------------------------------------------------

OV10A =  {

	Name 				=   'Bronco-OV-10A',
	DisplayName			= _('Bronco-OV-10A'),

	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',

	Picture 			= current_mod_path..'/ImagesGui/OV-10A.png',
	Rate 				= 40, -- RewardPoint in Multiplayer
	Shape 				= "OV-10A",

	propellorShapeType  = "3ARG_PROC_BLUR",
	propellorShapeName  = "OV10_blade.FBX",

	shape_table_data 	= 
	{
		{
			file  	 = 'OV-10A';
			life  	 = 18; -- lifebar
			vis   	 = 3; -- visibility gain.
			desrt    = 'ov10-oblomok'; -- Name of destroyed object file name
			fire  	 = { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username = 'OV-10A';
			index    =  WSTYPE_PLACEHOLDER;
		},
		{
			name  = "ov10-oblomok";
			file  = "ov10-oblomok";
			fire  = { 240, 2};
		},

	},
------------------------------------------------------------------------
	net_animation = {
						551,552,553,554,200,201,202,203,204,205,206,207,208,209,140,141,142,900,901,99,400,401,402,
					},
-----------------------------------------
	mapclasskey 		= "P0091000025",
	attribute  			= {wsType_Air, wsType_Airplane, wsType_Fighter, WSTYPE_PLACEHOLDER ,"Battleplanes",},
	Categories 			= {"{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor",},	
	-------------------------
	M_empty 					= 3461, -- kg
	M_nominal 					= 4000, -- kg
	M_max 						= 6552, -- kg
	M_fuel_max 					= 940, -- kg --2225

	H_max 					 	= 15240, -- m

	average_fuel_consumption 	= 0.245, -- this is highly relative, but good estimates are 36-40l/min = 28-31kg/min = 0.47-0.52kg/s -- 45l/min = 35kg/min = 0.583kg/s

	CAS_min 					= 60, -- if this is not OVERAL FLIGHT TIME, but jus LOITER TIME, than it sholud be 10-15 minutes.....CAS capability in minute (for AI)
	V_opt 						= 110,-- Cruise speed (for AI)
	V_take_off 					= 61, -- Take off speed in m/s (for AI)
	V_land 						= 61, -- Land speed in m/s (for AI)
	V_max_sea_level 			= 190, -- Max speed at sea level in m/s (for AI)
	V_max_h 					= 190, -- Max speed at max altitude in m/s (for AI)
	Vy_max 						= 300, -- Max climb speed in m/s (for AI)
	Mach_max 					= 0.55, -- Max speed in Mach (for AI)
	Ny_min 						= -3, -- Min G (for AI)
	Ny_max 						= 8.0,  -- Max G (for AI)
	Ny_max_e 					= 8.0,  -- Max G (for AI)
	AOA_take_off 				= 0.16, -- AoA in take off (for AI)
	bank_angle_max 				= 80, -- Max bank angle (for AI)

	has_afteburner 				= false, -- AFB yes/no
	has_speedbrake 				= false, -- Speedbrake yes/no

	nose_gear_pos 				= {2.28,	-1.45,	0}, --F-16 New Model	{2.954,	-2.0,	0}, --	{2.954,	-1.881,	0},
	main_gear_pos 				= {-1.03,	-1.47,	2.33}, --F-16 New Model {-1.041,	-2.0,	1.207}, --	{-1.041,	-1.869,	1.207},
	tand_gear_max 				= 4.6,
	nose_gear_wheel_diameter	= 0.56,
	main_gear_wheel_diameter	= 0.66,

	tanker_type 				= 1, -- Tanker type if the plane is airrefuel capable

	wing_area 					= 27.03, -- wing area in m2
	wing_span 					= 12.9, -- wing spain in m
	wing_type 					= 0,
	height 						= 4.62, -- height in m	
	length 						= 12.76, -- full lenght in m
	wing_tip_pos 				= {-1.917,	0.8451,	6.102},--{1.004,	0.707,	1.249},

	thrust_sum_max 				= 8054, -- thrust in kg (44kN)
	thrust_sum_ab 				= 13160, -- thrust inkg (71kN)

	range 						= 1500, -- Max range in km (for AI)

	flaps_maneuver 				= 0.5, -- Max flaps in take-off and maneuver (0.5 = 1st stage; 1.0 = 2nd stage) (for AI)

	RCS 						= 4, -- Radar Cross Section m2
	IR_emission_coeff 			= 0.1, -- Normal engine -- IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.
	IR_emission_coeff_ab 		= 0.0, -- With afterburner

	brakeshute_name 			= 0, -- Landing - brake chute visual shape after separation
	is_tanker 					= false, -- Tanker yes/no
	air_refuel_receptacle_pos 	= {0.0,	0.0, 0.0},

	engines_count				= 2, -- Engines count
	engines_nozzles = 
	{
		[1] = 
		{
			pos = 	{-1.094, 0.4811,	2.626},
			elevation	=	0,
			diameter	=	0.3,
			exhaust_length_ab	=	0.1,
			exhaust_length_ab_K	=	0.1,
		}, -- end of [1]
		[2] = 
		{
			pos = 	{-1.094, 0.4811,    -2.626},
			elevation	=	0,
			diameter	=	0.3,
			exhaust_length_ab	=	0.1,
			exhaust_length_ab_K	=	0.1,
		}, -- end of [2]
	}, -- end of engines_nozzles

	crew_members = 
	{
		[1] = 
		{
			drop_canopy_name	 = "L-39_C_fonar_1",
			ejection_seat_name	 = "pilot_l39_seat",
			pilot_name		     = "pilot_l39",
			pos 				 = {2.0365, 0.2111,	0.0},
			can_be_playable 	 = true,
			canopy_arg           = 38, 
			ejection_order 		 = 1,
			canopy_pos			 = {0.0, 0.0, 0.0},
			ejection_added_speed = {0.0, 0.0, 0.0},
			role 				 = "pilot",
			role_display_name    = _("Pilot"),
			drop_parachute_name	 = "pilot_l39_parachute",
		},-- end of [1]
		--[[
		[2] = 
		{
			drop_canopy_name	= "L-39_C_fonar_2",
			ejection_seat_name	= "pilot_l39_seat",
			pilot_name		    = "pilot_l39",
			pos 				={0.0, 0.0, 0.0},
			can_be_playable 	= true,
			canopy_arg          = 421, 
			pilot_body_arg		= 472,
			ejection_order 		= 2,
			canopy_pos			=  {0.0, 0.0, 0.0},
			ejection_added_speed = {0.0, 0.0, 0.0},
			role 				 = "instructor",
			role_display_name    = _("Instructor pilot"),
			drop_parachute_name	 = "pilot_l39_parachute",
		},-- end of [2]
		]]
	},-- end of crew_members	

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
	
	-- Countermeasures
        SingleChargeTotal = 180,
        CMDS_Incrementation = 30,
        ChaffDefault = 90, -- RR-170
        ChaffChargeSize = 1,
        FlareDefault = 45, -- MJU-7
        FlareChargeSize = 2,
        CMDS_Edit = true,
		
	chaff_flare_dispenser 	= 
	{
		[1] = 
		{
			dir =  {0, -1, -1},
			pos =  {-3, -1, 2},
		}, -- end of [1]
		[2] = 
		{
			dir =  {0, -1, 1},
			pos =  {-3, -1, -2},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser

	--sensors
	
	detection_range_max		 = 160,
	radar_can_see_ground 	 = true, -- this should be examined (what is this exactly?)
	CanopyGeometry = 
	{
        azimuth = {-160.0, 160.0},
        elevation = {-60.0, 80.0}
	},
	
	Sensors = 
	{
        RADAR = "AN/APG-68",
        RWR = "Abstract RWR"
    },

	HumanRadio = 
	{
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},

	panelRadio = 
	{		
		[1] = {
				name = _("FM Radio"),		   
				range = {{min = 30, max = 87.975}},
				channels = {
							[1] = { name = _("Channel 1"),		default = 30.0, modulation = _("FM")},
							[2] = { name = _("Channel 2"),		default = 31.0, modulation = _("FM")},
							[3] = { name = _("Channel 3"),		default = 32.0, modulation = _("FM")},
							[4] = { name = _("Channel 4"),		default = 33.0, modulation = _("FM")},
							[5] = { name = _("Channel 5"),		default = 40.0, modulation = _("FM")},
							[6] = { name = _("Channel 6"),		default = 41.0, modulation = _("FM")},
							[7] = { name = _("Channel 0"),		default = 42.0, modulation = _("FM")},
							[8] = { name = _("Channel RG"),		default = 50.0, modulation = _("FM")},
							}
				},
	},
	
	EPLRS = true,
	
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Pylons =  
	{  
			pylon(1, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "USMC_1",
				arg = 300, 
				arg_value = 1,
			},
			{
				{ CLSID = "{AIM-9P-ON-ADAPTER}", arg_value = 0},			--aim9 
			}
			),
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			pylon(2, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "STA_1",
			},
			{
				--Bomb
				{ CLSID	= "{MK-81}"},									-- MK-81

				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },   -- MK-82
				{ CLSID = "{Mk82SNAKEYE}" },                            -- MK-82 Snakeye

				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },   -- MK-83

				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   -- MK-117
				

				{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 6,loadout = {"BIN_200"}}} },	-- BIN-200

				--Rocket
				{ CLSID = "LAU3_WP156"	},   -- LAU-3 - 19 MK156 WP
				{ CLSID = "LAU3_WP1B" 	},   -- LAU-3 - 19 WTU-1/B WP
				{ CLSID = "LAU3_WP61"	},   -- LAU-3 - 19 MK61 WP
				{ CLSID = "LAU3_HE5"	},   -- LAU-3 - 19 MK5 HEAT
				{ CLSID = "LAU3_HE151"	},   -- LAU-3 - 19 MK151 HE

				{ CLSID = "M260_HYDRA"	},   -- M260

				{ CLSID = "{LAU_10R}"},   								-- LAU-10
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}"}, 	-- LAU-10 
			}
			),
			pylon(3, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "STA_2",
			},
			{
				--Bomb
				{ CLSID	= "{MK-81}"},									-- MK-81

				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },   -- MK-82
				{ CLSID = "{Mk82SNAKEYE}" },                            -- MK-82 Snakeye

				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },   -- MK-83

				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   -- MK-117

				{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 5,loadout = {"BIN_200"}}} },	-- BIN-200
								
				--Rocket
				{ CLSID = "LAU3_WP156"	},   -- LAU-3 - 19 MK156 WP
				{ CLSID = "LAU3_WP1B" 	},   -- LAU-3 - 19 WTU-1/B WP
				{ CLSID = "LAU3_WP61"	},   -- LAU-3 - 19 MK61 WP
				{ CLSID = "LAU3_HE5"	},   -- LAU-3 - 19 MK5 HEAT
				{ CLSID = "LAU3_HE151"	},   -- LAU-3 - 19 MK151 HE

				{ CLSID = "M260_HYDRA"	},   -- M260

				{ CLSID = "{LAU_10R}"},   								-- LAU-10
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}"}, 	-- LAU-10 
			}
			),
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			pylon(4, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "STA_3",
			},
			{
				--Bidon
				{ CLSID = "{150gal}"},									--bidon
				--Bomb
				{ CLSID	= "{MK-81}"},									-- MK-81

				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },   -- MK-82
				{ CLSID = "{Mk82SNAKEYE}" },                            -- MK-82 Snakeye

				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },   -- MK-83

				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   -- MK-117


				{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 4,loadout = {"BIN_200"}}} },	-- BIN-200

			}
			),
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			pylon(5, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "STA_4",
			},
			{
				--Bomb
				{ CLSID	= "{MK-81}"},									-- MK-81

				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },   -- MK-82
				{ CLSID = "{Mk82SNAKEYE}" },                            -- MK-82 Snakeye

				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },   -- MK-83

				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   -- MK-117


				{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 3,loadout = {"BIN_200"}}} },	-- BIN-200

				--Rocket
				{ CLSID = "LAU3_WP156"	},   -- LAU-3 - 19 MK156 WP
				{ CLSID = "LAU3_WP1B" 	},   -- LAU-3 - 19 WTU-1/B WP
				{ CLSID = "LAU3_WP61"	},   -- LAU-3 - 19 MK61 WP
				{ CLSID = "LAU3_HE5"	},   -- LAU-3 - 19 MK5 HEAT
				{ CLSID = "LAU3_HE151"	},   -- LAU-3 - 19 MK151 HE

				{ CLSID = "M260_HYDRA"	},   -- M260

				{ CLSID = "{LAU_10R}"},   								-- LAU-10
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}"}, 	-- LAU-10 
			}
			),
			pylon(6, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "STA_5",
			},
			{
				--Bomb
				{ CLSID	= "{MK-81}"},									-- MK-81

				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },   -- MK-82
				{ CLSID = "{Mk82SNAKEYE}" },                            -- MK-82 Snakeye

				{ CLSID = "{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}" },   -- MK-83

				{ CLSID = "{00F5DAC4-0466-4122-998F-B1A298E34113}" },   -- MK-117


				{ CLSID = "BIN_200", arg_value = 0.1, required = {{station = 2,loadout = {"BIN_200"}}} },	-- BIN-200

				--Rocket
				{ CLSID = "LAU3_WP156"	},   -- LAU-3 - 19 MK156 WP
				{ CLSID = "LAU3_WP1B" 	},   -- LAU-3 - 19 WTU-1/B WP
				{ CLSID = "LAU3_WP61"	},   -- LAU-3 - 19 MK61 WP
				{ CLSID = "LAU3_HE5"	},   -- LAU-3 - 19 MK5 HEAT
				{ CLSID = "LAU3_HE151"	},   -- LAU-3 - 19 MK151 HE

				{ CLSID = "M260_HYDRA"	},   -- M260

				{ CLSID = "{LAU_10R}"},   								-- LAU-10
				{ CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}"}, 	-- LAU-10 
			}
			),
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			pylon(7, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "USMC_2",
				arg = 301, 
				arg_value = 1,
			},
			{
				{ CLSID = "{AIM-9P-ON-ADAPTER}" , arg_value = 0},			--aim9 
			}
			),
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			pylon(8, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "Soute",
				arg = 302, 
				arg_value = 0,
			},
			{
				{ CLSID = "{PARA}", arg_value = 1},			--PARA
			}
			),
			pylon(9, 0, 0, 0, 0, 
			{
				use_full_connector_position = true,
				connector = "SMOKE_OV10",
			},
			{
				{ CLSID = "{OV10_SMOKE}"},					--SMOKE
			}
			),
	},
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	Guns = {
		M60(
			{
				muzzle_pos_connector = "GUN_POINT1",
				rates = {800},
				effect_arg_number = 434,
				supply_position = {2, -0.3, -0.4},
			}
		),
		M60(
			{
				muzzle_pos_connector = "GUN_POINT2",
				rates = {800},
				effect_arg_number = 434,
				supply_position = {2, -0.3, -0.4},
			}
		),
		M60(
			{
				muzzle_pos_connector = "GUN_POINT3",
				rates = {800},
				effect_arg_number = 434,
				supply_position = {2, -0.3, -0.4},
			}
		),
		M60(
			{
				muzzle_pos_connector = "GUN_POINT4",
				rates = {800},
				effect_arg_number = 434,
				supply_position = {2, -0.3, -0.4},
			}
		),
	},



	Tasks = 
	{
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(AFAC),
		aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
    },	
	DefaultTask = aircraft_task(CAS),
	
	SFM_Data = 
	{
		aerodynamics = -- Cx = Cx_0 + Cy^2*B2 +Cy^4*B4
		{
			Cy0			=	0.05,      -- zero AoA lift coefficient
			Mzalfa		=	4.355,  -- coefficients for pitch agility
			Mzalfadt	=	0.8,    -- coefficients for pitch agility
			kjx			=	2.3,    
			kjz			=	0.0011, 
			Czbe		=	-0.014, -- coefficient, along Z axis (perpendicular), affects yaw, negative value means force orientation in FC coordinate system
			cx_gear		=	0.05,    -- coefficient, drag, gear
			cx_flap		=	0.08,   -- coefficient, drag, full flaps
			cy_flap		=	0.2,    -- coefficient, normal force, lift, flaps
			cx_brk		=	0.0,   -- coefficient, drag, breaks

			table_data  = 
			{	--      M		Cx0		 	Cya			B		 	B4	    	Omxmax		Aldop		Cymax
				[1] = 	{0,		0.024,		0.10,		0.075,		0.12,		0.5,		30,			1.2},
				[2] = 	{0.2,	0.024,		0.10,		0.075,		0.12,		1.5,		30,			1.2},
				[3] = 	{0.4,	0.024,		0.10,		0.075,		0.12,		2.5,		30,			1.2},
				[4] = 	{0.6,	0.0239,		0.10,		0.075,		0.12,		3.5,		30,			1.2},
				[5] = 	{0.7,	0.024,		0.10,		0.075,		0.12,		3.5,		28,			1.18},
				[6] = 	{0.8,	0.0235,		0.10,		0.075,		0.12,		3.5,		27,			1.16},
				[7] = 	{0.9,	0.025,		0.10,		0.075,		0.125,		3.5,		26,			1.14},
				[8] = 	{1	,	0.044,		0.10,		0.14,		0.1,		3.5,		24,			1.12},
				[9] = 	{1.05,	0.0465,		0.10,		0.1775,		0.125,		3.5,		24,			1.11},
				[10] = 	{1.1,	0.049,		0.10,		0.215,		0.15,		3.15,		18,			1.1},
				[11] = 	{1.2,	0.049,		0.10,		0.228,		0.17,		2.45,		17,			1.05},
				[12] = 	{1.3,	0.049,		0.10,		0.237,		0.2,		1.75,		16,			1},
				[13] = 	{1.5,	0.0475,		0.10,		0.251,		0.2,		1.5,		13,			0.9},
				[14] = 	{1.7,	0.0451,		0.10,		0.243,		0.32,		0.9,		12,			0.7},
				[15] = 	{1.8,	0.044,		0.10,		0.24,		0.38,		0.86,		11.4,		0.64},
				[16] = 	{2,		0.043,		0.10,		0.222,		2.5,		0.78,		10.2,		0.52},
				[17] = 	{2.2,	0.041,		0.10,		0.227,		3.2,		0.7,		9,			0.4},
				[18] = 	{2.5,	0.04,		0.10,		0.25,		4.5,		0.7,		9,			0.4},
				[19] = 	{3.9,	0.035,		0.10,		0.35,		6,			0.7,		9,			0.4},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			typeng					= 3, --3 turboprop
			Nmg						= 55, -- RPM at idle
			MinRUD					= 0, -- Min state of the throttle
			MaxRUD					= 1, -- Max state of the throttle
			MaksRUD					= 1, -- Military power state of the throttle
			ForsRUD					= 1, -- Afterburner state of the throttle
			hMaxEng					= 7.5, -- Max altitude for safe engine operation in km
			dcx_eng					= 0.015, -- Affects drag of engine when shutdown
			cemax					= 0.37, -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			cefor					= 0.37, -- not used for fuel calulation , only for AI routines to check flight time ( fuel calculation algorithm is built in )
			dpdh_m					= 1800, --  altitude coefficient for max thrust
			dpdh_f					= 1800,  --  altitude coefficient for AB thrust

			D_prop					= 2.5,

            Startup_Ignition_Time 	= 8.0,
            Shutdown_Duration 		= 9.8,
				prop_locations 		= {{0.562437, 0.467880 , 2.155460}, {0.0, 0.0 , 0.0}, {0.562437, 0.467880 , -2.155460}, {0.0, 0.0 , 0.0}},
            	prop_blades_count 	= 3,
            	prop_pitch_min      = 15.0,    -- prop pitch min, degrees
            	prop_pitch_max      = 75.0,    -- prop pitch max, degrees
            	prop_pitch_feather  = 80.0,    -- prop pitch feather position, degrees if feather < prop_pitch_max no feathering available
				Nominal_RPM 		= 2200,

			table_data = 
			{		--   M		Pmax		 Pfor	
				[1] = 	{0,		100000,	100000},
				[9] = 	{1.1,	100000,	100000},
			}, -- end of table_data
		}, -- end of engine
	},

	sounderName         = "Aircraft/Planes/OV-10A",


	fires_pos = 
	{
		[1] = 	{-0.184,  	 2.166,		0.4731},
		[2] = 	{-0.184,  	-2.166,		0.4731},
	}, -- end of fires_pos

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = verbose_to_dmg_properties(
	{	
		["COCKPIT"]            	= {critical_damage = 30.0	, args = {853},},	--3
		["MAIN"]            	= {critical_damage = 20.0	, args = {852},},	--10

		["ENGINE_R"]            = {critical_damage = 1.0	, args = {-1},},	--12
		["ENGINE_L"]            = {critical_damage = 1.0	, args = {-1},},	--11

		["WING_R_OUT"]          = {critical_damage = 10.0	, args = {850},},	--24
		["WING_L_OUT"]          = {critical_damage = 10.0	, args = {851},},	--23

		["STABILIZER_L_OUT"]    = {critical_damage = 10.0	, args = {858},},	--45

		["RUDDER_R"]    		= {critical_damage = 20.0	, args = {856},},	--54
		["RUDDER_L"]    		= {critical_damage = 20.0	, args = {857},},	--53

		["TAIL_RIGHT_SIDE"]    	= {critical_damage = 20.0	, args = {854},},	--57
		["TAIL_LEFT_SIDE"]    	= {critical_damage = 20.0	, args = {855},},	--56
	}),


	lights_data = 
	{
		typename = "collection",
		lights = 
		{
		},	
	},

}

add_aircraft(OV10A)