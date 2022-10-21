

CH_53 =  {
        
	Name 				=   'CH_53',
	DisplayName			= _('Sikorsky CH-53E Super Stallion'),
	--ViewSettings        = ViewSettings,
	
	HumanCockpit 		= true,
	HumanCockpitPath    = current_mod_path..'/Cockpit/',
	
	Picture 		    = current_mod_path.."/Textures/CH_53.png",
	Rate 				= 50, -- RewardPoint in Multiplayer
	Shape 				= "CH_53",
	
	shape_table_data 	= 
	{
		{
			file  	 = 'CH_53';
			life  	 = 18; -- lifebar
			vis   	 = 3; -- visibility gain.
			desrt    = 'CH_53-oblomok'; -- Name of destroyed object file name
			fire  	 = { 300, 2}; -- Fire on the ground after destoyed: 300sec 2m
			username = 'CH_53';
			index    =  WSTYPE_PLACEHOLDER;
                        classname 	= "lLandPlane";
			positioning = "BYNORMAL";
			drawonmap 	= true;
		},
		{
			name  = "CH_53-oblomok";
			file  = "CH_53-oblomok";
			fire  = { 240, 2};
		},

	},
		mapclasskey 		= "P0091000021",
	attribute  			= {wsType_Air, wsType_Helicopter, wsType_Battleplane, WSTYPE_PLACEHOLDER ,"Attack helicopters",},
	Categories 			= {"{828CEADE-3F1D-40aa-93CE-8CDB73FE2710}", "Helicopter",},	
	-------------------------
	--  HelicopterConst.lua  157
		length	=	30.188,
		height	=	8.46,
		rotor_height	=	1.6,
		rotor_diameter	=	22.08,
		blades_number	=	7,
		blade_area	=	380.60,
		rotor_RPM	=	289,
		engines_count	=	3,
		blade_chord	=	0.9,
		rotor_MOI	=	5800,
		rotor_pos = 	{0.123,	1.47,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	7.9,
		fuselage_area	=	8,
		centering	=	-0.22, -- -0.22,
		tail_pos = 	{-9,	1.401,	0},
		tail_fin_area	=	6.45,
		tail_stab_area	=	7.94,
		M_empty	=	10717.0,
		M_nominal	=	15195.0,
		M_max	=	19051.0,
		--MOI = 	{198000,	76162,	80778}, --{6170,	28982,	33441},
		M_fuel_max	=	1157,
		V_max	=	89.99,
		V_max_cruise	=	75,
		Vy_max	=	12.7,
		H_stat_max_L	=	5,600,
		H_stat_max	=	3505,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	413.00,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos =     {-2.381, -0.183, 1.818}, --{-2.371, -0.051, 1.808},
        nose_gear_pos =     {5.312, -0.160, 0}, --{5.312, 0.082,    0},
		
		H_max = 4810, -- vu dans dbmods.lua
		lead_stock_main	=	0.37,
		lead_stock_support	=	0.147,
		stores_number	=	6,
		scheme	=	0,
		fire_rate	=	625,
		
	crew_size	 = 5,
	crew_members = 
	{
		[1] = 
		{
			drop_canopy_name	 = "L-39_C_fonar_1",
			ejection_seat_name	 = "pilot_l39_seat",
			pilot_name		     = "pilot_l39",
			pos 				 = {3.266,	2.329,	0},
			can_be_playable 	 = true,
			canopy_arg           = 38, 
			ejection_order 		 = 1,
			canopy_pos			 = {2.916,0.798,0},
			ejection_added_speed = {-5,15,0},
			role 				 = "pilot",
			role_display_name    = _("Pilot"),
			drop_parachute_name	 = "pilot_l39_parachute",
		},-- end of [1]
		[2] = 
		{
			drop_canopy_name	= "L-39_C_fonar_2",
			ejection_seat_name	= "pilot_l39_seat",
			pilot_name		    = "pilot_l39",
			pos 				= {1.765,	0.549,	0},
			can_be_playable 	= true,
			canopy_arg          = 421, 
			pilot_body_arg		= 472,
			ejection_order 		= 2,
			canopy_pos			=  {1.563,0.895,0},
			ejection_added_speed = {-5,15,0},
			role 				 = "instructor",
			role_display_name    = _("Instructor pilot"),
			drop_parachute_name	 = "pilot_l39_parachute",
		},-- end of [2]
	},-- end of crew_members
		RCS	=	12,
		detection_range_max	=	1000,
		IR_emission_coeff	=	0.3,
		Vy_land_max	=	12.8,
		Ny_max	=	1.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorUH60",
		engine_data = 
		{
			power_take_off	=	2870,
			power_max	=	2618,
			power_WEP	=	2618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	-0.6,	0},
			[2] = 	{0.9,	1.45,	-0.8},
			[3] = 	{0.9,	1.45,	0.8},
			[4] = 	{-11,	1.05,	0},
			[5] = 	{0.9,	-0.82,	1.44},
			[6] = 	{0.9,	-0.82,	-1.44},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	------------------------------------------------- 
		
	----------------------------------------------
 LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of LandRWCategories
        MaxFuelWeight = "1450",
        MaxHeight = "6600",
        MaxSpeed = "87.5",
        MaxTakeOffWeight = "33339",        
        Rate = "50",
        Shape = "CH_53",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories

 Countermeasures,  
        SingleChargeTotal = 692,
        CMDS_Incrementation = 32,
        ChaffDefault = 1, 
        ChaffChargeSize = 1,
        FlareDefault = 192, 
        FlareChargeSize = 1,
        CMDS_Edit = true,

	chaff_flare_dispenser 	= {
		[1] = 
		{
			dir =  {0, 1, -1},
			pos =  {-3, -5, 2},
		}, -- end of [1]
		[2] = 
		{
			dir =  {0, 1, 1},
			pos =  {-3, -5, -2},
		}, -- end of [2]
	}, -- end of chaff_flare_dispenser


        CanopyGeometry = {
            azimuth = {-110.0, 110.0},
            elevation = {-50.0, 70.0}
        },
        Countermeasures = {
            DISPENSER = "UV-26"
        },
		
		
		HumanRadio = {
			frequency = 124.0,
			editable = true,
			minFrequency = 100,
			maxFrequency = 400,
			modulation = MODULATION_AM
		},

				Guns = {			

		},
		
		
	
		
Pylons = {
        pylon(1, 0, 0.0, 0.0, 0.0,	
            {use_full_connector_position = true, connector = "Pylon4", DisplayName = "GunsR",},
            {

				{CLSID = "{AH6_GAU-19}", arg_value = 0.0, attach_point_position =  {-2.0, 1.022, 3.20}},	-- .50 cal gun rightgun
				{CLSID = "{M134 Minigun}", arg_value = 0.0, attach_point_position =  {-1.8, 1.092, 2.9}}, -- .308 cal gun rightgun
				{ CLSID = "BIN_200", arg_value = 0.1, attach_point_position =  {-2.0, 1.022, 3.20}, required = {{station = 1,loadout = {"BIN_200"}}} },	-- BIN-200
            }
        ),
        pylon(2, 0, 0.0, 0.0, 0.0,
            {arg = 501, arg_value = 0.0, use_full_connector_position = true,  connector = "Gun_point_GUNR", DisplayName = "ManR",},
            {
  				{CLSID = "{AH6_GAU-19Door}",  arg_value = 1.0}, 
            }
        ),
		pylon(3, 0, 0.0, 0.0, 0.0,
            {
			arg				= 310,
			arg_value		= 0,
			DisplayName = "Plank",
			},
            {
				{CLSID = "<CLEAN>", arg_value = 1, forbidden = {
				{station = 1, loadout = {"{AH6_GAU-19}"}},
				{station = 1, loadout = {"{M134 Minigun}"}},
				{station = 2, loadout = {"{AH6_GAU-19Door}"}},
				{station = 5, loadout = {"{M134 Minigun}"}},
				{station = 5, loadout = {"{AH6_GAU-19}"}},
				{station = 4, loadout = {"{AH6_GAU-19Door}"}},
				{station = 6, loadout = {"{AH6_GAU-19Door}"}},
				}},
            }
        ),
        pylon(4, 0, 0.0, 0.0, 0.0,
            {arg = 502, arg_value = 0.0,  use_full_connector_position = true, connector = "Gun_point_GUNL", DisplayName = "ManL",},
            {
  				{CLSID = "{AH6_GAU-19Door}", arg_value = 1.0}, 
            }
        ),
        pylon(5, 0, 0.0, 0.0, 0.0,
            {use_full_connector_position = true, connector = "Pylon4",DisplayName = "GunsL",},
            {

				{CLSID = "{AH6_GAU-19}", arg_value = 0.0,	attach_point_position =  {-2.0, 1.022, -3.20}},	-- .50 cal gun leftgun
				{CLSID = "{M134 Minigun}", arg_value = 0.0, attach_point_position =  {-1.8, 1.092, -3.00}}, -- .308 cal gun leftgun
				{CLSID = "BIN_200", arg_value = 0.1, attach_point_position =  {-2.0, 1.022, -3.20}, required = {{station = 5,loadout = {"BIN_200"}}} },	-- BIN-200
            }
        ),
		
		pylon(6, 0, 0.0, 0.0, 0.0,
            {arg = 503, arg_value = 0.0,  use_full_connector_position = true, connector = "Gun_point_Ramp", DisplayName = "ManBk",},
            {
  				{CLSID = "{AH6_GAU-19Door}", arg_value = 1.0}, 
            }
        ),
				pylon(7, 0, 0.0, 0.0, 0.0,
            {use_full_connector_position = true, connector = "Pylon5", DisplayName = "Carg1",},
            {
				{ CLSID = "AMMO_CH53" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },       --Ammunitions 
				{ CLSID = "TANK_AC130" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },         
				{ CLSID = "ab-212_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },       
				{ CLSID = "m117_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },  
				{ CLSID = "barrels_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },  				--
			
			}

        ),
				pylon(8, 0, 0.0, 0.0, 0.0,
            {use_full_connector_position = true, connector = "Pylon3", DisplayName = "Carg2",},
            {
				{ CLSID = "AMMO_CH53" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },       --Ammunitions 
				{ CLSID = "TANK_AC130" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },        
				{ CLSID = "ab-212_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },     
				{ CLSID = "m117_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },  
				{ CLSID = "barrels_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, 0.024000, 0.00000} },  				--
			
			}
        ),
						pylon(9, 0, 0.0, 0.0, 0.0,
            {use_full_connector_position = true, connector = "WINCHHook", DisplayName = "Winch",},
            {
				{ CLSID = "ab-212_cargo" , arg_increment = 1.0, attach_point_position = {0.00000, -2.024000, 0.00000} },   
				{ CLSID = "AMMO_CH53" , arg_increment = 1.0, attach_point_position = {0.00000, -1.024000, 0.00000} }, 
				
            }
        ),
		
					pylon(10, 0, 0.0, 0.0, 0.0,
            {arg = 403, arg_value = 0.0, use_full_connector_position = true,  connector = "Pylon1", DisplayName = "Marines",},
            {
				{CLSID = "MARINES_CH53", arg_value = 1, forbidden = {
				{station = 7, loadout = {"AMMO_CH53"}},
				{station = 7, loadout = {"TANK_AC130"}},
				{station = 7, loadout = {"ab-212_cargo"}},
				{station = 7, loadout = {"m117_cargo"}},
				{station = 7, loadout = {"barrels_cargo"}},
				{station = 8, loadout = {"AMMO_CH53"}},
				{station = 8, loadout = {"TANK_AC130"}},
				{station = 8, loadout = {"ab-212_cargo"}},
				{station = 8, loadout = {"m117_cargo"}},
				{station = 8, loadout = {"barrels_cargo"}},
				}},
            }
        ),
		pylon(11, 0, 0.0, 0.0, 0.0,
            {arg = 404, arg_value = 0.0, use_full_connector_position = true,  connector = "MainHook", DisplayName = "Hook",},
            {
				--{ CLSID = "oiltank_cargo", arg_value = 1, attach_point_position = {0.0, 0.002, 0.0 } },
				{ CLSID = "Container_CH53", arg_value = 1, attach_point_position = {0.0, 0.0, 0.0 } },
				{ CLSID = "bw_container_cargo", arg_value = 1, attach_point_position = {0.0, 0.0, 0.0 } },
				
            }
        ),
    },
	

	
	
	
	Tasks = {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
		aircraft_task(Escort),
        aircraft_task(AFAC),
        aircraft_task(Transport)
    },	
	DefaultTask = aircraft_task(CAS),

	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
				
[3]  = {critical_damage = 7,  args = {296}},
[4]  = {critical_damage = 7,  args = {150}},
[5]  = {critical_damage = 7,  args = {149}},
[7]  = {critical_damage = 4,  args = {249}},
[9]  = {critical_damage = 16, args = {154}},
[10] = {critical_damage = 16, args = {153}},
[11] = {critical_damage = 3,  args = {166}},
[12] = {critical_damage = 3,  args = {160}},
[17] = {critical_damage = 3,  args = {188}},
[18] = {critical_damage = 3,  args = {189}},
[23] = {critical_damage = 7,  args = {225}},
[24] = {critical_damage = 7,  args = {215}}, 
[35] = {critical_damage = 11, args = {158}}, -- задняя часть фюзеляжа (левый борт)
[36] = {critical_damage = 11, args = {157}}, -- (правый борт)
[45] = {critical_damage = 3,  args = {236}},
[46] = {critical_damage = 3,  args = {234}}, 
[54] = {critical_damage = 7,  args = {247}}, --РВ
[55] = {critical_damage = 4,  args = {243}, deps_cells = {54}}, -- киль
[56] = {critical_damage = 14,  args = {156}, deps_cells = {31, 57, 55, 54, 45, 46}},
[57] = {critical_damage = 14,  args = {155}, deps_cells = {31, 56, 55, 54, 45, 46}},
[58] = {critical_damage = 5,  args = {297}}, -- створки грузовой кабины
[59] = {critical_damage = 5,  args = {148}},
[61] = {critical_damage = 9,  args = {147}},
[62] = {critical_damage = 9,  args = {250}},
[63] = {critical_damage = 11, args = {53}, deps_cells = {66, 69, 72, 75, 78}}, -- Rotor
[66] = {critical_damage = 11, args = {115}}, -- blade 1 
[69] = {critical_damage = 11, args = {118}}, -- blade 2 
[72] = {critical_damage = 11, args = {121}}, -- blade 3 
[75] = {critical_damage = 11, args = {124}}, -- blade 4 
[78] = {critical_damage = 11, args = {127}}, -- blade 5 
[83] = {critical_damage = 3, args = {134}}, -- nose wheel
[84] = {critical_damage = 3, args = {136}}, -- left wheel
[85] = {critical_damage = 3, args = {135}}, -- right wheel
[31] = {critical_damage = 1,  args = {81}}, -- фейковый элемент! для 81 аргумента!
				
	},
	
	DamageParts = 
	{  
		[1] = "CH_53-oblomok", -- nose
		[2] = "CH_53-tail", -- tail
		
		
	},
	
	lights_data = {
	typename = "collection",
	lights = {
    [1] = { typename = "collection",
						lights = {-- Left Anticollision Light
								  {typename = "natostrobelight",
								   connector = "WHITE_BEACON L",
								   argument_1 = 195,
								   period = 1.2,
								   phase_shift = 0
								  },
								  -- Right Anticollision Light
								  {typename = "natostrobelight",
								   connector = "WHITE_BEACON R",
								   argument_1 = 196,
								   period = 1.2,
								   phase_shift = 0
								  },
								  -- Tail Anticollision Light
								  {typename = "natostrobelight",
								   connector = "BANO_0_BACK",
								   argument_1 = 192,
								   period = 1.2,
								   phase_shift = 0
								  }
								 }
									  },
	[2] = { typename = "collection",
							lights = {-- Landing light / doesnt work
									  {typename = "spotlight",
									   connector = "RESERV_SPOT_PTR",
									   argument = 209,
									   dir_correction = {elevation = math.rad(-1)}
									  },
									  {-- Landing/Taxi light / no light
									   typename = "spotlight",
									   connector = "MAIN_SPOT_PTR",
									   argument = 208
									   --dir_correction = {elevation = math.rad(3)}
									  }
									 }
						},
    [3]	= {	typename = "collection",
						lights = {-- Left Position Light (red)
								  {typename = "omnilight",
								   connector = "BANO_1",
								   color = {0.99, 0.11, 0.3},
								   pos_correction  = {0, 0, -0.2},
								   argument  = 190
								  },
								  -- Right Position Light (green)
								  {typename = "omnilight",
								   connector = "BANO_2",
								   color = {0, 0.894, 0.6},
								   pos_correction = {0, 0, 0.2},
								   argument  = 191
								  },
								  -- Tail Position Light (white)
								  {typename = "omnilight",
								   connector = "BANO_0_BACK",
								   color = {1, 1, 1},
								   pos_correction  = {0, 0, 0},
								   argument  = 203
								  }}
									},
    [4] = {	typename = "collection",
				lights = {{typename = "collection",
						   lights = {
									 -- Top Formation Light (white)
									 {typename = "omnilight",
									  connector = "BANO_0_TOP",
									  color = {1, 1, 1},
									 },
									 {typename  = "argumentlight", argument = 202},
									 -- Bottom Formation Light (white)
									 {typename = "omnilight",
									  connector = "BANO_0_BOTTOM",
									  color = {1, 1, 1},
									 },
									 {typename  = "argumentlight", argument = 201},
									}
							},
							-- Tail formation lights
							{typename = "collection",
								lights = {{
										-- Right Tail Formation Light
										typename = "spotlight",
										connector = "BANO_W_HR",
										color = {1.0, 1.0, 1.0},
										intensity_max = 6,
										angle_max = 0.65,
										argument = 205,
										dont_change_color = false,
										angle_change_rate = 0,
										pos_correction = {0.0, 0.0, 0.1},
										dir_correction = {azimuth = math.rad(-3), elevation = math.rad(9)},
									   },
									   {
										-- Left Tail Formation Light
										typename = "spotlight",
										connector = "BANO_W_HL",
										color = {1.0, 1.0, 1.0},
										intensity_max = 6,
										angle_max = 0.65,
										argument = 204,
										dont_change_color = false,
										angle_change_rate = 0,
										pos_correction = {0.0, 0.0, -0.1},
										dir_correction = {azimuth = math.rad(-3), elevation = math.rad(-9)},
									   }
									},
							},
							-- Electroluminescent formation lights
							{typename  = "argumentlight", argument = 200},
						 }
									},
	[5]	= {typename = "collection",
			lights = {
						{typename = "collection",
						lights = {{
								-- Right Nacelle Floodlight
								typename = "spotlight",
								position  = {0.5, 1.2, 0},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(150), elevation = math.rad(5)},
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {
								-- Left Nacelle Floodlight
								typename = "spotlight",
								position  = {0.5, 1.2, 0},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(-150), elevation = math.rad(5)},
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {typename  = "argumentlight", argument = 212},
						},
					},
					{typename = "collection",
						lights = {{
								-- Left Nose Floodlight
								typename  = "spotlight",
								position  = {0, -0.3, -5.80},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0, angle_max = 0.45,
								direction = {azimuth = math.rad(45)},
								argument = 211,
								dont_change_color = false,
								angle_change_rate = 0
							   },
							   {
								-- Right Nose Floodlight
								typename = "spotlight",
								position  = {0, -0.3, 5.80},
								color = {1.0, 1.0, 1.0},
								intensity_max = 6.0,
								angle_max = 0.45,
								direction = {azimuth = math.rad(-45)},
								argument = 210,
								dont_change_color = false,
								angle_change_rate = 0
							   }
						}
					},
					-- UARRSI light
					{
						typename = "omnilight", position  = {6.5, 0.4, 0}, color = {1, 1, 1}
					}
				  },
			}
		}
	},
}

add_aircraft(CH_53)
