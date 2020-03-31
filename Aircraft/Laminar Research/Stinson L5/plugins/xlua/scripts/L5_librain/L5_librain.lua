
-- IMPLEMENTATION OF LIBRAIN VIA XLUA
--
-- ILIAS TSELIOS - FEB 2020


----------------------------------- LOCATE DATAREFS OR COMMANDS -----------------------------------
rain_verbose                = find_dataref("librain/verbose")
rain_debug_draw             = find_dataref("librain/debug_draw")
rain_wipers                 = find_dataref("librain/wipers_visible")

frontGlass_slant            = find_dataref("librain/glass_0/slant_factor")
frontGlass_tp_x             = find_dataref("librain/glass_0/thrust_point/x")
frontGlass_tp_y             = find_dataref("librain/glass_0/thrust_point/y")
frontGlass_thrust_factor    = find_dataref("librain/glass_0/thrust_factor")
frontGlass_max_thrust       = find_dataref("librain/glass_0/max_thrust")
frontGlass_gp_x             = find_dataref("librain/glass_0/gravity_point/x")
frontGlass_gp_y             = find_dataref("librain/glass_0/gravity_point/y")
frontGlass_gravity_factor   = find_dataref("librain/glass_0/gravity_factor")
frontGlass_wp_x             = find_dataref("librain/glass_0/wind_point/x")
frontGlass_wp_y             = find_dataref("librain/glass_0/wind_point/y")
frontGlass_wind_factor      = find_dataref("librain/glass_0/wind_factor")
frontGlass_max_tas          = find_dataref("librain/glass_0/max_tas")
frontGlass_obj              = find_dataref("librain/glass_0/obj/filename")
frontGlass_obj_offX         = find_dataref("librain/glass_0/obj/pos_offset/x")
frontGlass_obj_offY         = find_dataref("librain/glass_0/obj/pos_offset/y")
frontGlass_obj_offZ         = find_dataref("librain/glass_0/obj/pos_offset/z")
frontGlass_load             = find_dataref("librain/glass_0/obj/load")
frontGlass_loaded           = find_dataref("librain/glass_0/obj/loaded")
frontGlass_wind_normal      = find_dataref("librain/glass_0/wind_normal")

sideGlass_slant            = find_dataref("librain/glass_1/slant_factor")
sideGlass_tp_x             = find_dataref("librain/glass_1/thrust_point/x")
sideGlass_tp_y             = find_dataref("librain/glass_1/thrust_point/y")
sideGlass_thrust_factor    = find_dataref("librain/glass_1/thrust_factor")
sideGlass_max_thrust       = find_dataref("librain/glass_1/max_thrust")
sideGlass_gp_x             = find_dataref("librain/glass_1/gravity_point/x")
sideGlass_gp_y             = find_dataref("librain/glass_1/gravity_point/y")
sideGlass_gravity_factor   = find_dataref("librain/glass_1/gravity_factor")
sideGlass_wp_x             = find_dataref("librain/glass_1/wind_point/x")
sideGlass_wp_y             = find_dataref("librain/glass_1/wind_point/y")
sideGlass_wind_factor      = find_dataref("librain/glass_1/wind_factor")
sideGlass_max_tas          = find_dataref("librain/glass_1/max_tas")
sideGlass_obj              = find_dataref("librain/glass_1/obj/filename")
sideGlass_obj_offX         = find_dataref("librain/glass_1/obj/pos_offset/x")
sideGlass_obj_offY         = find_dataref("librain/glass_1/obj/pos_offset/y")
sideGlass_obj_offZ         = find_dataref("librain/glass_1/obj/pos_offset/z")
sideGlass_load             = find_dataref("librain/glass_1/obj/load")
sideGlass_loaded           = find_dataref("librain/glass_1/obj/loaded")
sideGlass_wind_normal      = find_dataref("librain/glass_1/wind_normal")

backGlass_slant            = find_dataref("librain/glass_2/slant_factor")
backGlass_tp_x             = find_dataref("librain/glass_2/thrust_point/x")
backGlass_tp_y             = find_dataref("librain/glass_2/thrust_point/y")
backGlass_thrust_factor    = find_dataref("librain/glass_2/thrust_factor")
backGlass_max_thrust       = find_dataref("librain/glass_2/max_thrust")
backGlass_gp_x             = find_dataref("librain/glass_2/gravity_point/x")
backGlass_gp_y             = find_dataref("librain/glass_2/gravity_point/y")
backGlass_gravity_factor   = find_dataref("librain/glass_2/gravity_factor")
backGlass_wp_x             = find_dataref("librain/glass_2/wind_point/x")
backGlass_wp_y             = find_dataref("librain/glass_2/wind_point/y")
backGlass_wind_factor      = find_dataref("librain/glass_2/wind_factor")
backGlass_max_tas          = find_dataref("librain/glass_2/max_tas")
backGlass_obj              = find_dataref("librain/glass_2/obj/filename")
backGlass_obj_offX         = find_dataref("librain/glass_2/obj/pos_offset/x")
backGlass_obj_offY         = find_dataref("librain/glass_2/obj/pos_offset/y")
backGlass_obj_offZ         = find_dataref("librain/glass_2/obj/pos_offset/z")
backGlass_load             = find_dataref("librain/glass_2/obj/load")
backGlass_loaded           = find_dataref("librain/glass_2/obj/loaded")
backGlass_wind_normal      = find_dataref("librain/glass_2/wind_normal")

topGlass_slant            = find_dataref("librain/glass_3/slant_factor")
topGlass_tp_x             = find_dataref("librain/glass_3/thrust_point/x")
topGlass_tp_y             = find_dataref("librain/glass_3/thrust_point/y")
topGlass_thrust_factor    = find_dataref("librain/glass_3/thrust_factor")
topGlass_max_thrust       = find_dataref("librain/glass_3/max_thrust")
topGlass_gp_x             = find_dataref("librain/glass_3/gravity_point/x")
topGlass_gp_y             = find_dataref("librain/glass_3/gravity_point/y")
topGlass_gravity_factor   = find_dataref("librain/glass_3/gravity_factor")
topGlass_wp_x             = find_dataref("librain/glass_3/wind_point/x")
topGlass_wp_y             = find_dataref("librain/glass_3/wind_point/y")
topGlass_wind_factor      = find_dataref("librain/glass_3/wind_factor")
topGlass_max_tas          = find_dataref("librain/glass_3/max_tas")
topGlass_obj              = find_dataref("librain/glass_3/obj/filename")
topGlass_obj_offX         = find_dataref("librain/glass_3/obj/pos_offset/x")
topGlass_obj_offY         = find_dataref("librain/glass_3/obj/pos_offset/y")
topGlass_obj_offZ         = find_dataref("librain/glass_3/obj/pos_offset/z")
topGlass_load             = find_dataref("librain/glass_3/obj/load")
topGlass_loaded           = find_dataref("librain/glass_3/obj/loaded")
topGlass_wind_normal      = find_dataref("librain/glass_3/wind_normal")

z_obj_obj0_name             = find_dataref("librain/z_depth_obj_0/filename")
z_obj_obj0_load             = find_dataref("librain/z_depth_obj_0/load")
z_obj_obj0_loaded           = find_dataref("librain/z_depth_obj_0/loaded")
Z_obj_obj0_offX             = find_dataref("librain/z_depth_obj_0/pos_offset/x")
Z_obj_obj0_offY             = find_dataref("librain/z_depth_obj_0/pos_offset/y")
Z_obj_obj0_offZ             = find_dataref("librain/z_depth_obj_0/pos_offset/z")

z_obj_obj1_name             = find_dataref("librain/z_depth_obj_1/filename")
z_obj_obj1_load             = find_dataref("librain/z_depth_obj_1/load")
z_obj_obj1_loaded           = find_dataref("librain/z_depth_obj_1/loaded")
z_obj_obj1_offX             = find_dataref("librain/z_depth_obj_1/pos_offset/x")
z_obj_obj1_offY             = find_dataref("librain/z_depth_obj_1/pos_offset/y")
z_obj_obj1_offZ             = find_dataref("librain/z_depth_obj_1/pos_offset/z")

z_obj_obj2_name             = find_dataref("librain/z_depth_obj_2/filename")
z_obj_obj2_load             = find_dataref("librain/z_depth_obj_2/load")
z_obj_obj2_loaded           = find_dataref("librain/z_depth_obj_2/loaded")
z_obj_obj2_offX             = find_dataref("librain/z_depth_obj_2/pos_offset/x")
z_obj_obj2_offY             = find_dataref("librain/z_depth_obj_2/pos_offset/y")
z_obj_obj2_offZ             = find_dataref("librain/z_depth_obj_2/pos_offset/z")

z_obj_obj3_name             = find_dataref("librain/z_depth_obj_3/filename")
z_obj_obj3_load             = find_dataref("librain/z_depth_obj_3/load")
z_obj_obj3_loaded           = find_dataref("librain/z_depth_obj_3/loaded")
z_obj_obj3_offX             = find_dataref("librain/z_depth_obj_3/pos_offset/x")
z_obj_obj3_offY             = find_dataref("librain/z_depth_obj_3/pos_offset/y")
z_obj_obj3_offZ             = find_dataref("librain/z_depth_obj_3/pos_offset/z")

z_obj_obj4_name             = find_dataref("librain/z_depth_obj_4/filename")
z_obj_obj4_load             = find_dataref("librain/z_depth_obj_4/load")
z_obj_obj4_loaded           = find_dataref("librain/z_depth_obj_4/loaded")
z_obj_obj4_offX             = find_dataref("librain/z_depth_obj_4/pos_offset/x")
z_obj_obj4_offY             = find_dataref("librain/z_depth_obj_4/pos_offset/y")
z_obj_obj4_offZ             = find_dataref("librain/z_depth_obj_4/pos_offset/z")

z_obj_obj5_name             = find_dataref("librain/z_depth_obj_5/filename")
z_obj_obj5_load             = find_dataref("librain/z_depth_obj_5/load")
z_obj_obj5_loaded           = find_dataref("librain/z_depth_obj_5/loaded")
z_obj_obj5_offX             = find_dataref("librain/z_depth_obj_5/pos_offset/x")
z_obj_obj5_offY             = find_dataref("librain/z_depth_obj_5/pos_offset/y")
z_obj_obj5_offZ             = find_dataref("librain/z_depth_obj_5/pos_offset/z")
--
z_obj_obj6_name             = find_dataref("librain/z_depth_obj_6/filename")
z_obj_obj6_load             = find_dataref("librain/z_depth_obj_6/load")
z_obj_obj6_loaded           = find_dataref("librain/z_depth_obj_6/loaded")
z_obj_obj6_offX             = find_dataref("librain/z_depth_obj_6/pos_offset/x")
z_obj_obj6_offY             = find_dataref("librain/z_depth_obj_6/pos_offset/y")
z_obj_obj6_offZ             = find_dataref("librain/z_depth_obj_6/pos_offset/z")

z_obj_obj7_name             = find_dataref("librain/z_depth_obj_7/filename")
z_obj_obj7_load             = find_dataref("librain/z_depth_obj_7/load")
z_obj_obj7_loaded           = find_dataref("librain/z_depth_obj_7/loaded")
z_obj_obj7_offX             = find_dataref("librain/z_depth_obj_7/pos_offset/x")
z_obj_obj7_offY             = find_dataref("librain/z_depth_obj_7/pos_offset/y")
z_obj_obj7_offZ             = find_dataref("librain/z_depth_obj_7/pos_offset/z")

z_obj_obj8_name             = find_dataref("librain/z_depth_obj_8/filename")
z_obj_obj8_load             = find_dataref("librain/z_depth_obj_8/load")
z_obj_obj8_loaded           = find_dataref("librain/z_depth_obj_8/loaded")
z_obj_obj8_offX             = find_dataref("librain/z_depth_obj_8/pos_offset/x")
z_obj_obj8_offY             = find_dataref("librain/z_depth_obj_8/pos_offset/y")
z_obj_obj8_offZ             = find_dataref("librain/z_depth_obj_8/pos_offset/z")

z_obj_obj9_name             = find_dataref("librain/z_depth_obj_9/filename")
z_obj_obj9_load             = find_dataref("librain/z_depth_obj_9/load")
z_obj_obj9_loaded           = find_dataref("librain/z_depth_obj_9/loaded")
z_obj_obj9_offX             = find_dataref("librain/z_depth_obj_9/pos_offset/x")
z_obj_obj9_offY             = find_dataref("librain/z_depth_obj_9/pos_offset/y")
z_obj_obj9_offZ             = find_dataref("librain/z_depth_obj_9/pos_offset/z")

z_obj_obj10_name             = find_dataref("librain/z_depth_obj_10/filename")
z_obj_obj10_load             = find_dataref("librain/z_depth_obj_10/load")
z_obj_obj10_loaded           = find_dataref("librain/z_depth_obj_10/loaded")
z_obj_obj10_offX             = find_dataref("librain/z_depth_obj_10/pos_offset/x")
z_obj_obj10_offY             = find_dataref("librain/z_depth_obj_10/pos_offset/y")
z_obj_obj10_offZ             = find_dataref("librain/z_depth_obj_10/pos_offset/z")

z_obj_obj11_name             = find_dataref("librain/z_depth_obj_11/filename")
z_obj_obj11_load             = find_dataref("librain/z_depth_obj_11/load")
z_obj_obj11_loaded           = find_dataref("librain/z_depth_obj_11/loaded")
z_obj_obj11_offX             = find_dataref("librain/z_depth_obj_11/pos_offset/x")
z_obj_obj11_offY             = find_dataref("librain/z_depth_obj_11/pos_offset/y")
z_obj_obj11_offZ             = find_dataref("librain/z_depth_obj_11/pos_offset/z")

z_obj_obj12_name             = find_dataref("librain/z_depth_obj_12/filename")
z_obj_obj12_load             = find_dataref("librain/z_depth_obj_12/load")
z_obj_obj12_loaded           = find_dataref("librain/z_depth_obj_12/loaded")
z_obj_obj12_offX             = find_dataref("librain/z_depth_obj_12/pos_offset/x")
z_obj_obj12_offY             = find_dataref("librain/z_depth_obj_12/pos_offset/y")
z_obj_obj12_offZ             = find_dataref("librain/z_depth_obj_12/pos_offset/z")

z_obj_obj13_name             = find_dataref("librain/z_depth_obj_13/filename")
z_obj_obj13_load             = find_dataref("librain/z_depth_obj_13/load")
z_obj_obj13_loaded           = find_dataref("librain/z_depth_obj_13/loaded")
z_obj_obj13_offX             = find_dataref("librain/z_depth_obj_13/pos_offset/x")
z_obj_obj13_offY             = find_dataref("librain/z_depth_obj_13/pos_offset/y")
z_obj_obj13_offZ             = find_dataref("librain/z_depth_obj_13/pos_offset/z")

rain_numglass               = find_dataref("librain/num_glass_use")
rain_init                   = find_dataref("librain/initialize")

  external_view_dr 		  = find_dataref("sim/graphics/view/view_is_external")
  rain_dr 				  = find_dataref("sim/weather/rain_percent")
--  VR_dr 				  = find_dataref("sim/graphics/VR/enabled")

local rain_inited = 0

function init()
rain_init = 0

	log("[L5_DEBUG]: " .. path())   -- write in the log.txt the path for debugging
	
	--obj_path						= "../../../objects/librain/"
	librain_path    				= acfFolder .. "/objects/librain/"	--"Aircraft/Laminar Research/Cessna 172SP/objects/librain/"
	mask_path						= acfFolder .. "/objects/"		--"Aircraft/Laminar Research/Cessna 172SP/objects/"
	
	local frontGlass	             = librain_path .. "frontGlass.obj"
	local sideGlass	            	 = librain_path .. "sideGlass.obj"
	local backGlass		             = librain_path .. "backGlass.obj"
	local topGlass		             = librain_path .. "topGlass.obj"
	local mask0_obj                  = mask_path .. "panel.obj"
	local mask1_obj                  = mask_path .. "inn_1.obj"
	local mask2_obj                  = mask_path .. "inn_2.obj"
	local mask3_obj                  = mask_path .. "seat.obj"
	local mask4_obj                  = mask_path .. "instruments/xPad/xPad_arm.obj"
	local mask5_obj                  = mask_path .. "fuse.obj"
	local mask6_obj                  = mask_path .. "wings.obj"
	local mask7_obj                  = mask_path .. "instruments/compass/compass_mag.obj"
	local mask8_obj                  = mask_path .. "instruments/airspeed/airspeed.obj"
	local mask9_obj                  = mask_path .. "instruments/altimeter/altimeter_ag.obj"	
	local mask10_obj                  = mask_path .. "instruments/engine_RPM/engine_RPM_ag.obj"	
	local mask11_obj                  = mask_path .. "instruments/turn_slip/turn_slip_ga.obj"	
	local mask12_obj                  = mask_path .. "instruments/variometer/variometer_ag.obj"	
	local mask13_obj                  = mask_path .. "instruments/cht_oilt_oilp_amps/cht_oilt_oilp_amps.obj"	

	rain_numglass = 4
	
	rain_verbose = 0
	rain_debug_draw = 0
	rain_wipers = 0
	
	frontGlass_slant = 0.8
	frontGlass_tp_x = 0.5
	frontGlass_tp_y = 0.15
	frontGlass_thrust_factor = 1
	frontGlass_max_thrust = 2500
	frontGlass_gp_x = 0.5
	frontGlass_gp_y = 0.8
	frontGlass_gravity_factor = 0.7
	frontGlass_wp_x = 0.5
	frontGlass_wp_y = 0.32
	frontGlass_wind_factor = 1.0
	frontGlass_wind_normal = 1.0
	frontGlass_max_tas = 60
	frontGlass_obj = frontGlass
	frontGlass_obj_offX = 0.0
	frontGlass_obj_offY = 0.0
	frontGlass_obj_offZ = 0.0
	frontGlass_load = 1
	
	sideGlass_slant = 0.7
	sideGlass_tp_x = -5
	sideGlass_tp_y = 0.5
	sideGlass_thrust_factor = 0.3
	sideGlass_max_thrust = 1800
	sideGlass_gp_x = 0.5
	sideGlass_gp_y = 3
	sideGlass_gravity_factor = 0.8
	sideGlass_wp_x = -5
	sideGlass_wp_y = 0.5
	sideGlass_wind_factor = 1.0
	sideGlass_wind_normal = 0.0
	sideGlass_max_tas = 60
	sideGlass_obj = sideGlass
	sideGlass_obj_offX = 0.0
	sideGlass_obj_offY = 0.0
	sideGlass_obj_offZ = 0.0
	sideGlass_load = 1
	
	backGlass_slant = 0.8
	backGlass_tp_x = 0.5
	backGlass_tp_y = 1.0
	backGlass_thrust_factor = 0.2
	backGlass_max_thrust = 1300
	backGlass_gp_x = 0.5
	backGlass_gp_y = 1
	backGlass_gravity_factor = 0.5
	backGlass_wp_x = 0.5
	backGlass_wp_y = 0.8
	backGlass_wind_factor = 1.0
	backGlass_wind_normal = 0.0
	backGlass_max_tas = 60
	backGlass_obj = backGlass
	backGlass_obj_offX = 0.0
	backGlass_obj_offY = 0.0
	backGlass_obj_offZ = 0.0
	backGlass_load = 1
	
	topGlass_slant = 1
	topGlass_tp_x = 0.5
	topGlass_tp_y = 2
	topGlass_thrust_factor = 0.4
	topGlass_max_thrust = 1600
	topGlass_gp_x = 0.5
	topGlass_gp_y = 0.95
	topGlass_gravity_factor = 0.2
	topGlass_wp_x = 0.5
	topGlass_wp_y = 3
	topGlass_wind_factor = 1.0
	topGlass_wind_normal = 0.0
	topGlass_max_tas = 60
	topGlass_obj = topGlass
	topGlass_obj_offX = 0.0
	topGlass_obj_offY = 0.0
	topGlass_obj_offZ = 0.0
	topGlass_load = 1


	z_obj_obj0_name = mask0_obj
	z_obj_obj0_offX = 0
	z_obj_obj0_offY = 0
	z_obj_obj0_offZ = 0
	z_obj_obj0_load = 1
	
	z_obj_obj1_name = mask1_obj
	z_obj_obj1_offX = 0
	z_obj_obj1_offY = 0
	z_obj_obj1_offZ = 0
	z_obj_obj1_load = 1
	
	z_obj_obj2_name = mask2_obj
	z_obj_obj2_offX = 0
	z_obj_obj2_offY = 0
	z_obj_obj2_offZ = 0
	z_obj_obj2_load = 1
	
	z_obj_obj3_name = mask3_obj
	z_obj_obj3_offX = 0
	z_obj_obj3_offY = 0
	z_obj_obj3_offZ = 0
	z_obj_obj3_load = 1
	
	
	z_obj_obj4_name = mask4_obj
	z_obj_obj4_offX = 0
	z_obj_obj4_offY = 0
	z_obj_obj4_offZ = 0
	z_obj_obj4_load = 1
	
	z_obj_obj5_name = mask5_obj
	z_obj_obj5_offX = 0
	z_obj_obj5_offY = 0
	z_obj_obj5_offZ = 0
	z_obj_obj5_load = 1

	z_obj_obj6_name = mask6_obj
	z_obj_obj6_offX = 0
	z_obj_obj6_offY = 0
	z_obj_obj6_offZ = 0
	z_obj_obj6_load = 1

	z_obj_obj7_name = mask7_obj
	z_obj_obj7_offX = 0
	z_obj_obj7_offY = 0
	z_obj_obj7_offZ = 0
	z_obj_obj7_load = 1

	z_obj_obj8_name = mask8_obj
	z_obj_obj8_offX = 0
	z_obj_obj8_offY = 0
	z_obj_obj8_offZ = 0
	z_obj_obj8_load = 1

	z_obj_obj9_name = mask9_obj
	z_obj_obj9_offX = 0
	z_obj_obj9_offY = 0
	z_obj_obj9_offZ = 0
	z_obj_obj9_load = 1
	
	z_obj_obj10_name = mask10_obj
	z_obj_obj10_offX = 0
	z_obj_obj10_offY = 0
	z_obj_obj10_offZ = 0
	z_obj_obj10_load = 1
	
	z_obj_obj11_name = mask11_obj
	z_obj_obj11_offX = 0
	z_obj_obj11_offY = 0
	z_obj_obj11_offZ = 0
	z_obj_obj11_load = 1	
	
	z_obj_obj12_name = mask12_obj
	z_obj_obj12_offX = 0
	z_obj_obj12_offY = 0
	z_obj_obj12_offZ = 0
	z_obj_obj12_load = 1
	
	z_obj_obj13_name = mask13_obj
	z_obj_obj13_offX = 0
	z_obj_obj13_offY = 0
	z_obj_obj13_offZ = 0
	z_obj_obj13_load = 1	



	--rain_init = 1
	rain_inited = 1

end

--------------------------------- DO THIS EACH FLIGHT START ---------------------------------
function flight_start()
	init()
end



--------------------------------- REGULAR RUNTIME ---------------------------------
function after_physics()
	if rain_inited == 1 and rain_init == 0 and rain_dr > 0  and external_view_dr == 0 then
		rain_init = 1
	elseif rain_init == 1 and (rain_dr == 0 or external_view_dr == 1) then
		rain_init = 0
	end

end


function flight_crash()
	
	rain_init = 0
end



function aircraft_unload()
	
	rain_init = 0
	
end

