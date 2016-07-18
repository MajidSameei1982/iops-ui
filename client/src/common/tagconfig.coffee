###
This is the class definition
###
class TagConfig extends Object
	@tags:
		###**************************************************
		*** GPU Tags
		**************************************************###
		###***************
		Name: Tag:'Tag', Label: '', DataType:''
									, Parameters: {Parm001: '', Parm002: '', Parm003: '', Parm004: '', }
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		***************###

		#@render_row("gpu_bypass", "Down", "Up", "ok")
		gpu_by_pass: Tag: 'GPU.ByPass', Label: 'ByPass', DataType: 'Boolean'
									, Parameters: {Parm001: 'Down', Parm002: 'Up', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("gpu_gpustatus", "On", "Off", "ok","err")
		gpu_status: Tag: 'GPU.GPUSTATUSBOOLEAN', Label: 'GPU Status', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: 'err', Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("gpu_on_1", "On", "Off","ok")
		gpu_on_1: Tag: 'GPU.ON 1', Label: 'ON 1', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("gpu_on_2", "On", "Off", "ok")
		gpu_on_2: Tag: 'GPU.ON 2', Label: 'ON 2', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_input_phasea_i", true, 1, "Amps")
		gpu_pm_input_phasea_i: Tag: 'GPU.PM_INPUT_PHASEA_I', Label: 'Input - Phase A Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_input_phasea_v", true, 1, "Volts")
		gpu_pm_input_phasea_v: Tag: 'GPU.PM_INPUT_PHASEA_V', Label: 'Input - Phase A Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_input_phaseb_i", true, 1, "Amps")
		gpu_pm_input_phaseb_i: Tag: 'GPU.PM_INPUT_PHASEB_I', Label: 'Input - Phase B Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_input_phaseb_v", true, 1, "Volts")
		gpu_pm_input_phaseb_v: Tag: 'GPU.PM_INPUT_PHASEB_V', Label: 'Input - Phase B Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_input_phasec_i", true, 1, "Amps")
		gpu_pm_input_phasec_i: Tag: 'GPU.PM_INPUT_PHASEC_I', Label: 'Input - Phase C Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_input_phasec_v", true, 1, "Volts")
		gpu_pm_input_phasec_v: Tag: 'GPU.PM_INPUT_PHASEC_V', Label: 'Input - Phase C Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_output_phasea_i", true, 1, "Amps")
		gpu_pm_output_phasea_i: Tag: 'GPU.PM_OUTPUT_PHASEA_I', Label: 'Output - Phase A Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_output_phasea_v", true, 1, "Volts")
		gpu_pm_output_phasea_v: Tag: 'GPU.PM_OUTPUT_PHASEA_V', Label: 'Output - Phase A Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_output_phaseb_i", true, 1, "Amps")
		gpu_pm_output_phaseb_i: Tag: 'GPU.PM_OUTPUT_PHASEB_I', Label: 'Output - Phase B Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_output_phaseb_v", true, 1, "Volts")
		gpu_pm_output_phaseb_v: Tag: 'GPU.PM_OUTPUT_PHASEB_V', Label: 'Output - Phase B Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_output_phasec_i", true, 1, "Amps")
		gpu_pm_output_phasec_i: Tag: 'GPU.PM_OUTPUT_PHASEC_I', Label: 'Output - Phase C Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_pm_output_phasec_v", true, 1, "Volts")
		gpu_pm_output_phasec_v: Tag: 'GPU.PM_OUTPUT_PHASEC_V', Label: 'Output - Phase C Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_ravinavg", true, 1,"Amps")
		gpu_ra_in_avg: Tag: 'GPU.RAINAVG', Label: 'Average Input - Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: '', Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_raoutavg", true, 1,"Amps")
		gpu_ra_out_avg: Tag: 'GPU.RAOUTAVG', Label: 'Average Output - Amps', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Amps', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_rvinavg", true, 1,"Volts")
		gpu_rv_in_avg: Tag: 'GPU.RVINAVG', Label: 'Average Input - Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_rvoutavg", true, 1,"Volts")
		gpu_rv_out_avg: Tag: 'GPU.RVOUTAVG', Label: 'Average Output - Volts', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 1, Parm003: 'Volts', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("gpu_hookup", true, 2," mins")
		gpu_time: Tag: 'GPU.GPUTime', Label: 'GPUTime', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'mins', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}

		###**************************************************
		*** PBB Tags
		**************************************************###
		pbb_autolevel_fail: Tag: 'PBB.AUTOLEVEL_FAIL_FLAG', Label: 'Auto Level Fail Flag', DataType: 'Boolean'
									, Parameters: {Parm001: 'True', Parm002: 'False', Parm003: 'err', Parm004: 'ok', Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_autolevelkey", "On", "Off", "ok")
		pbb_autolevel_key: Tag: 'PBB.AUTOLEVELKEY', Label: 'Auto Level Key', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_autoleveling", "On", "Off", "ok")
		pbb_autoleveling: Tag: 'PBB.AUTOLEVELING', Label: 'Auto Leveling', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_autolevelmode", "On", "Off", "ok")
		pbb_autolevel_mode: Tag: 'PBB.AUTOLEVELMODEFLAG', Label: 'PBB Mode', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_cabangledisp", true, 2,"Cab Angle : #{1}")
		pbb_cab_angle_disp: Tag: 'PBB.CABANGLEDISP', Label: 'Cab Angle', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Cab Angle : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_cabinfloordeicer", "On", "Off", "ok")
		pbb_cabin_floor_deicer: Tag: 'PBB.CABFLOORDEICER', Label: 'Cabin Floor Deicer', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_cablehoist", "Deployed", "Retracted", "ok")
		pbb_cable_hoist: Tag: 'PBB.CABHOIST', Label: 'Cab Hoist', DataType: 'Boolean'
									, Parameters: {Parm001: 'Deployed', Parm002: 'Retracted', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_canopy", "Down", "Up", "ok")
		#@render_row("pbb_canopy", "Down", "Up", "ok", "Canopy: #{1}")
		pbb_canopy: Tag: 'PBB.CANOPYDOWN', Label: 'Canopy', DataType: 'Boolean'
									, Parameters: {Parm001: 'Down', Parm002: 'Up', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_dailyaircraftcount", false)
		pbb_daily_aircraft_count: Tag: 'PBB.DAILYAIRCRAFTDOCKED', Label: 'Daily Aircraft Docked Count', DataType: 'Float'
									, Parameters: {Parm001: false, Parm002: null, Parm003: null, Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_docktime", true, 2," mins")
		pbb_dock_time: Tag: 'PBB.DOCKTIME', Label: 'Aircraft Docked Time (Minutes)', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'mins', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_estop", "On", "Off", "err")
		pbb_estop: Tag: 'PBB.Alarm.E_STOP', Label: 'Emergency Stop', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'err', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_estopRW", "On", "Off", "err")
		pbb_estop_rw: Tag: 'PBB.Alarm.RedWord2[4]', Label: 'Emergency Stop', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'err', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_heighttodisp", true, 2,"Height : #{1}")
		pbb_height_to_disp: Tag: 'PBB.HEIGHTTODISP', Label: 'Height', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Height : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_hookup", true, 2," mins")
		pbb_hookup_time: Tag: 'PBB.HOOKUPTIME', Label: 'PBB On Time', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'mins', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_lastdocktime", true, 2," mins")
		pbb_last_dock_time: Tag: 'PBB.LASTDOCKTIME', Label: 'Daily Aircraft Docked Time', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'mins', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_limits", "Normal", "ByPass", "ok")
		#@render_row("pbb_limits", "Active","Deactive","ok"," ")
		pbb_limits: Tag: 'PBB.BYPASSPB', Label: 'Limit Bypass PB', DataType: 'Boolean'
									, Parameters: {Parm001: 'Normal', Parm002: 'ByPass', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_slopedeg", true, 2,"Slope : #{1}")
		pbb_slope_deg: Tag: 'PBB.SLOPEDEG', Label: 'Slope', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Slope : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_smokedetector","Off","On","","err")
		pbb_smoke_detector: Tag: 'PBB.SMOKEDETECTOR', Label: 'Smoke Detector', DataType: 'Boolean'
									, Parameters: {Parm001: 'Off', Parm002: 'On', Parm003: null, Parm004: 'err', Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_status", "Docked", "UnDocked", "ok")
		pbb_status: Tag: 'PBB.AIRCRAFTDOCKEDCALCULATION', Label: 'PBB Status', DataType: 'Boolean'
									, Parameters: {Parm001: 'Docked', Parm002: 'UnDocked', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_swingangledisp", true, 2,"Bridge Rotation :#{1}")
		pbb_swing_angle_disp: Tag: 'PBB.SWINGANGLEDISP', Label: 'Bridge Rotation', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Bridge Rotation :#{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pbb_terminaldoor", "Open", "Close", "ok")
		pbb_terminal_door: Tag: 'PBB.TERMINALDOOR', Label: 'Terminal Door', DataType: 'Boolean'
									, Parameters: {Parm001: 'Open', Parm002: 'Close', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_tunnellength", true, 2,"Tunnel Length : #{1}")
		pbb_tunnel_length: Tag: 'PBB.HORIZTODISP', Label: 'Tunnel Length', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Tunnel Length : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_undocktime", true, 2, "mins")
		pbb_undock_time: Tag: 'PBB.UNDOCKTIME', Label: 'UN-Dock Time (Minutes)', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'mins', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pbb_wheelangledeg", true, 2,"Wheel Bogie Angle : #{1}")
		pbb_wheel_angle_deg: Tag: 'PBB.WHEELANGLEDEG', Label: 'Wheel Bogie Angle', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Wheel Bogie Angle : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}

		#@render_row("pbb_autolevel", "On", "Off", "ok", null, "Auto-Level: #{1}")

		###**************************************************
		*** PCA Tags
		**************************************************###
		pca_alarm_cooling_run: Tag: 'PCA.ALARM_COOLINGRUN_BOOLEAN', Label: 'Cooling Run Alarm', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_alarm_heating_run: Tag: 'PCA.ALARM_HEATINGRUN_BOOLEAN', Label: 'Heating Run Alarm', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pca_pcaambhumidity", true, 2,"Amb Humidity : #{1}")
		pca_ambient_humidity: Tag: 'PCA.AMBHUMIDITY', Label: 'Ambient Humidity', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'Amb Humidity : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pca_pcaambienttemp",false)
		pca_ambient_temp: Tag: 'PCA.TEMPAMB', Label: 'Ambient Air Temperature', DataType: 'Float'
									, Parameters: {Parm001: false, Parm002: null, Parm003: null, Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_blower", "On", "Off", "ok"," ")
		pca_blower: Tag: 'PCA.BLOWER', Label: 'Blower Status', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_bridgeair", "On", "Off", "ok"," ")
		pca_bridge_air: Tag: 'PCA.BRIDGE_AIR', Label: 'Bridge Damper', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_bridgedamper", "On", "Off", "ok"," ")
		#@render_row("pca_bridgedamper", "Open", "Close", "ok", null, "Bridge Damper : #{txtb}")
		pca_bridge_damper: Tag: 'PCA.BRIDGE_DAMPER_POSITION', Label: 'Aircraft Damper', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_cabin_temp: Tag: 'PCA.TEMPCABIN', Label: 'Cabin Air Temperature', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: '#{1} F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pca_coildp", true, 2,"COIL DP : #{1}")
		pca_coil_dp: Tag: 'PCA.COIL_DP', Label: 'Coil DP', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'COIL DP : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_compstage1", "On", "Off", "ok"," ")
		pca_comp_stage_1: Tag: 'PCA.COMP_STAGE1_STAT', Label: 'Primary compressor #1 is running', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_compstage2", "On", "Off", "ok"," ")
		pca_comp_stage_2: Tag: 'PCA.COMP_STAGE2_STAT', Label: 'Primary compressor #2 is running', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_cooling_pt: Tag: 'PCA.SET_COOLINGPOINT', Label: 'Cooling Setpoint', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: '#{1} F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_cooling_tm: Tag: 'PCA.SET_COOLINGPOINT_TIMER', Label: 'Cooling Timer', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: '#{1} F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_dirtyfilter", "Yes", "No", "err"," ")
		pca_dirty_filter: Tag: 'PCA.DIRTY_FILTER', Label: 'Dirty Filter', DataType: 'Boolean'
									, Parameters: {Parm001: 'Yes', Parm002: 'No', Parm003: 'err', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pca_pcadischargetemp", true, 2,"#{1} F")
		#@render_value_row("pca_pcadischargetemp",false)
		pca_discharge_temp: Tag: 'PCA.TEMPDISCH', Label: 'Discharge Air Temperature', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: '#{1} F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_heater1", "On", "Off", "ok"," ")
		pca_heater_1: Tag: 'PCA.HEATER1', Label: 'Heater #1 is running', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_row("pca_heater2", "On", "Off", "ok"," ")
		pca_heater_2: Tag: 'PCA.HEATER2', Label: 'Heater #2 is running', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_heating_pt: Tag: 'PCA.SET_HEATINGPOINT', Label: 'Heating Setpoint', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: '#{1} F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_heating_tm: Tag: 'PCA.SET_HEATINGPOINT_TIMER', Label: 'Heating Timer', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: '#{1} F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pca_hotgas1",false)
		#@render_value_row("pca_hotgas1", true, 2,"HP1 : #{1}")
		pca_hot_gas_1: Tag: 'PCA.C1_HOTGAS_CONTROL', Label: 'Hot Gas Controller, Primary compressor #1', DataType: 'Float'
									, Parameters: {Parm001: false, Parm002: null, Parm003: null, Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		#@render_value_row("pca_hotgas2",false)
		#@render_value_row("pca_hotgas2", true, 2,"HP2 : #{1}")
		pca_hot_gas_2: Tag: 'PCA.C2_HOTGAS_CONTROL', Label: 'Hot Gas Controller, Primary compressor #2', DataType: 'Float'
									, Parameters: {Parm001: false, Parm002: null, Parm003: null, Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_mode_cooling: Tag: 'PCA.MODE_COOLING', Label: 'Cooling Mode', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
		pca_mode_heating: Tag: 'PCA.MODE_HEATING', Label: 'Heating Mode', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
    	#@render_row("pca_pcastatus", "On", "Off", "ok","err")
		pca_status: Tag: 'PCA.PCASTATUS', Label: 'PCA status', DataType: 'Boolean'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: 'err', Parm005: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
    	#@render_row("pca_pumpcond", "On", "Off", "ok", null, "Condensate Pump : #{txt}")
		pca_pump_cond: Tag: 'PCA.PUMPCOND', Label: 'Condensate pump is running', DataType: 'Float'
									, Parameters: {Parm001: 'On', Parm002: 'Off', Parm003: 'ok', Parm004: null, Parm005: 'Condensate Pump : #{txt}'}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
    	#@render_value_row("pca_sucpressure1",false)
    	#@render_value_row("pca_sucpressure1", true, 2,"SP1 : #{1}")
		pca_suction_pressure_1: Tag: 'PCA.C1_SUCTION_PRESSURE', Label: 'Suction pressure, primary compressor #1', DataType: 'Float'
									, Parameters: {Parm001: false, Parm002: null, Parm003: null, Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
    	#@render_value_row("pca_sucpressure2",false)
    	#@render_value_row("pca_sucpressure2", true, 2,"SP2 : #{1}")
		pca_suction_pressure_2: Tag: 'PCA.C2_SUCTION_PRESSURE', Label: 'Suction pressure, primary compressor #2', DataType: 'Float'
									, Parameters: {Parm001: false, Parm002: null, Parm003: null, Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
    	#@render_value_row("pca_hookup", true, 2," mins")
		pca_time: Tag: 'PCA.PCATime', Label: 'PCA Time', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'mins', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}
    	#@render_value_row("pca_vfdspeed", true, 2,"VFD : #{1}")
		pca_vfd_speed: Tag: 'PCA.VFD_SPEED', Label: 'VFD Speed', DataType: 'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'VFD : #{1}', Parm004: null}
									, Element: {Type: 'TableRow', ParentID: '#widgetData', Object: null}


		pca_inet_dischargetemp: Tag: 'PCA.INET_TEMPDISCH', Label:'PCA Discharge Temp', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		pca_inet_hookuptime: Tag: 'PCA.INET_hookuptime', Label:'PCA hookup time', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		pca_inet_ambient_temp: Tag: 'PCA.INET_ambient_temp', Label:'PCA ambient_temp', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		pca_inet_blower_01: Tag: 'PCA.INET_blower_01', Label:'PCA Discharge Temp', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		pca_inet_blower_02: Tag: 'PCA.INET_blower_02', Label:'PCA Discharge Temp', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		pca_inet_blower_03: Tag: 'PCA.INET_blower_03', Label:'PCA Discharge Temp', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		pca_inet_blower_04: Tag: 'PCA.INET_blower_04', Label:'PCA Discharge Temp', DataType:'Float'
									, Parameters: {Parm001: true, Parm002: 2, Parm003: 'F', Parm004: null}
									, Element: {Type: 'TableRow', ParentID:'#widgetData', Object: null}
		
		#@render_row("pca_aircraftdamper", "Open", "Close", "ok", null, "Aircraft Damper : #{1}")


	@groups:
		#[group_name]: {'tag_name','tag_name',...}
		###**************************************************
		*** Widget Tag Groups
		**************************************************###
		config_widget: {'pca_cooling_pt','pca_heating_pt','pca_cooling_tm','pca_heating_tm'}
		gpu_summary_widget: {'gpu_status','gpu_time','gpu_ra_out_avg','gpu_rv_out_avg','gpu_ra_in_avg','gpu_rv_in_avg'}
		gpu_widget: {'gpu_status','gpu_by_pass','gpu_ra_out_avg','gpu_rv_out_avg','gpu_ra_in_avg','gpu_rv_in_avg','gpu_pm_output_phasea_i','gpu_pm_output_phaseb_i','gpu_pm_output_phasec_i','gpu_pm_output_phasea_v','gpu_pm_output_phaseb_v','gpu_pm_output_phasec_v','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i','gpu_pm_input_phasea_v','gpu_pm_input_phaseb_v','gpu_pm_input_phasec_v','gpu_on_1','gpu_on_2'}
		pbb_widget: {'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_dock_time','pbb_undock_time'}
		pbb_pca_gpu_basic_widget: {'pbb_status','pca_status','gpu_status','pbb_dock_time','pbb_hookup_time','pca_time','gpu_time','pca_discharge_temp','gpu_ra_out_avg','gpu_rv_out_avg'}
		pbb_widget: {'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_autolevel_key','pbb_autoleveling','pbb_estop_rw','pbb_limits','pbb_dock_time','pbb_undock_time','pbb_smoke_detector','pbb_daily_aircraft_count','pbb_last_dock_time','pbb_cabin_floor_deicer','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp','pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
		pca_discharge_widget: {'pca_discharge_temp','pca_status','pca_mode_cooling','pca_mode_heating','pca_cooling_pt','pca_heating_pt','pca_alarm_cooling_run','pca_alarm_heating_run','pca_cooling_tm','pca_heating_tm'}
		pca_summary_widget: {'pca_ambient_humidity','pca_ambient_temp','pca_discharge_temp','pca_status','pca_time','pca_blower','pca_heater_1','pca_heater_2','pca_comp_stage_1','pca_comp_stage_2','pca_bridge_damper','pca_bridge_air','pca_pump_cond','pca_coil_dp','pca_vfd_speed','pca_suction_pressure_1','pca_suction_pressure_2','pca_hot_gas_1','pca_hot_gas_2'}
		pca_widget: {'pca_cabin_temp','pca_ambient_temp','pca_discharge_temp','pca_heater_1','pca_heater_2','pca_comp_stage_1','pca_comp_stage_2','pca_bridge_damper','pca_bridge_air','pca_dirty_filter','pca_blower','pca_suction_pressure_1','pca_suction_pressure_2','pca_hot_gas_1','pca_hot_gas_2','pca_status'}


		###**************************************************
		*** Equipment Tag Groups
		**************************************************###



		###**************************************************
		*** Modification Tag Groups
		**************************************************###
		###
		pbb_pca_gpu_basic_widget_10T: {'gpu_10TStatus'}
		pca_jetway10T: {'','',...}
		gpu_basic_widget: {'gpu_gpustatus','gpu_hookup','gpu_ra_out_avg','gpu_rv_out_avg'}
		pbb_basic_widget: {'pbb_status','pbb_docktime','pbb_hookup'}
		pca_basic_widget: {'pca_pcastatus','pca_hookup','pca_pcadischargetemp'}
		gpu_gpustatus: {'gpu_gpustatus'}
		gpu_hookup: {'gpu_hookup'}
		gpu_ra_out_avg: {'gpu_ra_out_avg'}
		gpu_rv_out_avg: {'gpu_rv_out_avg'}
		pbb_status: {'pbb_status'}
		pbb_docktime: {'pbb_docktime'}
		pbb_hookup: {'pbb_hookup'}
		pca_pcastatus: {'pca_pcastatus'}
		pca_hookup: {'pca_hookup'}
		pca_pcadischargetemp: {'pca_pcadischargetemp'}
		pca_inet_rev_1_0_00: {'','','',...}
		pca_jw_50T_rev_1_0_00: {'pca_jw_dischargetemp','pca_jw_hookuptime','pca_jw_ambient_temp'}
		pca_inet_50T_rev_1_0_00: {'pca_inet_dischargetemp','pca_inet_hookuptime','pca_inet_ambient_temp','pca_inet_blower_01','pca_inet_blower_02','pca_inet_blower_03','pca_inet_blower_04',}
		###

	@clients:
		### _CLIENT Example for developers configuration
		[Client Abbreviation]:
			add_tags: 
			remove_tags:
			update_tags:
			use_tags:
			zones:
				add_tags: 
				remove_tags:
				update_tags:
				use_tags:
				[Terminal ID]:
					add_tags: 
					remove_tags:
					update_tags:
					use_tags:
					[Zone ID]:
						add_tags: 
						remove_tags:
						update_tags:
						use_tags:
						[Gate ID]:
							add_tags: 
							remove_tags:
							update_tags

		**********************************************###
		CID:
			pbb_widget:
				remove_tags: {'pbb_autolevel_key','pbb_estop_rw','pbb_terminal_door'}
				add_tags: {
					pbb_estop:{Tag:'PBB.Alarm.E_STOP',Label:'Emergency Stop',DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Object:null}}
				}
			pca_discharge_widget:
				1:
					1:
						C3:
							remove_tags: {'pca_discharge_temp','pca_mode_cooling','pca_mode_heating','pca_cooling_pt','pca_heating_pt','pca_alarm_cooling_run','pca_alarm_heating_run','pca_cooling_tm','pca_heating_tm'}
			pca_summary_widget:
				remove_tags: {'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2'}
				update_tags: {
					pca_heater_1:{Tag:"PCA.HEAT1",Label:"Heater #1is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_heater_2:{Tag:"PCA.HEAT2",Label:"Heater #2 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_stage_1:{Tag:"PCA.COMPPRI1",Label:"Primary compressor #1 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_stage_2:{Tag:"PCA.COMPPRI2",Label:"Primary compressor #2 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_1:{Tag:"PCA.PRESSSUCPRI1",Label:"Suction pressure,primary compressor #1",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_2:{Tag:"PCA.PRESSSUCPRI2",Label:"Suction pressure,primary compressor #2",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
				add_tags: {
					pbb_estop:{Tag:'PBB.Alarm.E_STOP',Label:'Emergency Stop',DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Object:null}}
					pca_heater_3:{Tag:"PCA.HEAT3",Label:"Heater #3 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}}
					pca_heater_4:{Tag:"PCA.HEAT4",Label:"Heater #4 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_heater_5:{Tag:"PCA.HEAT5",Label:"Heater #5 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}}
					pca_comp_sec_Stage_1:{Tag:"PCA.COMPSEC1",Label:"Secondary compressor #1 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_sec_Stage_2:{Tag:"PCA.COMPSEC2",Label:"Secondary compressor #2 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_sec_1:{Tag:"PCA.PRESSSUCPRI1",Label:"Suction pressure,secondary compressor #1",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_sec_2:{Tag:"PCA.PRESSSUCPRI2",Label:"Suction pressure,secondary compressor #2",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
			pca_widget:
				remove_tags: {'pca_hot_gas_1','pca_hot_gas_2'}
				update_tags: {
					pca_heater_1:{Tag:"PCA.HEAT1",Label:"Heater #1 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_heater_2:{Tag:"PCA.HEAT2",Label:"Heater #2 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_stage_1:{Tag:"PCA.COMPPRI1",Label:"Primary compressor #1 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_stage_2:{Tag:"PCA.COMPPRI2",Label:"Primary compressor #2 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_1:{Tag:"PCA.PRESSSUCPRI1",Label:"Suction pressure, primary compressor #1",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_2:{Tag:"PCA.PRESSSUCPRI2",Label:"Suction pressure, primary compressor #2",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
				add_tags: {
					pca_heater_3:{Tag:"PCA.HEAT3",Label:"Heater #3 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_heater_4:{Tag:"PCA.HEAT4",Label:"Heater #4 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_heater_5:{Tag:"PCA.HEAT5",Label:"Heater #5 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_sec_Stage_1:{Tag:"PCA.COMPSEC1",Label:"Secondary compressor #1 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_comp_sec_Stage_2:{Tag:"PCA.COMPSEC2",Label:"Secondary compressor #2 is running",DataType:"Boolean",Parameters:{Parm001:"On",Parm002:"Off",Parm003:"ok",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_sec_1:{Tag:"PCA.PRESSSUCPRI1",Label:"Suction pressure, secondary compressor #1",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					pca_suction_pressure_sec_2:{Tag:"PCA.PRESSSUCPRI1",Label:"Suction pressure, secondary compressor #2",DataType:"Float",Parameters:{Parm001:"",Parm002:"",Parm003:"",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
			gpu_summary_widget:
				remove_tags: {'gpu_ra_in_avg'}
			gpu_widget:
				remove_tags:{'gpu_by_pass','gpu_ra_in_avg','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i','gpu_on_1','gpu_on_2'}
				update_tags:{
					gpu_pm_output_phasea_i:{Tag:"GPU.RAOUTA",Label:"Amps Out Phase A",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Amps",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_output_phaseb_i:{Tag:"GPU.RAOUTA",Label:"Amps Out Phase B",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Amps",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_output_phasec_i:{Tag:"GPU.RAOUTA",Label:"Amps Out Phase C",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Amps",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_output_phasea_v:{Tag:"GPU.RVOUTA",Label:"Volts Out Phase A",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Volts",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_output_phaseb_v:{Tag:"GPU.RVOUTA",Label:"Volts Out Phase B",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Volts",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_output_phasec_v:{Tag:"GPU.RVOUTA",Label:"Volts Out Phase C",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Volts",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_input_phasea_v:{Tag:"GPU.RVINA",Label:"Volts In Phase A",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Volts",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_input_phaseb_v:{Tag:"GPU.RVINA",Label:"Volts In Phase A",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Volts",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					gpu_pm_input_phasec_v:{Tag:"GPU.RVINA",Label:"Volts In Phase A",DataType:"Float",Parameters:{Parm001:"TRUE",Parm002:"1",Parm003:"Volts",Parm004:""},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
			pbb_pca_gpu_basic_widget:
				1:
					1:
						C3:
							remove_tags:{'pca_discharge_temp','gpu_ra_out_avg','gpu_rv_out_avg'}

			###*****************************************************************************************8
			example_widget:
				add_groups: {'gpu_basic_widget','pbb_basic_widget','pca_inet_50T_rev_1_0_00'}
				remove_groups: {'pbb_pca_gpu_basic_widget'}
				use_groups: {'pbb_pca_gpu_basic_widget'}
				add_tags: { 
					csw_tag001:{Tag:"CSW.TAG001",Label:"CSW TAG001 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					csw_tag002:{Tag:"CSW.TAG002",Label:"CSW TAG002 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
				remove_tags:  { 'csw_tag002','gpu_gpustatus','gpu_hookup','gpu_ra_out_avg','gpu_rv_out_avg' }
				update_tags:  { 
					csw_tag001:{Tag:"CSW.TAG001a",Label:"CSW TAG001a Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
				}
				use_tags: {}
				#terminal:
				1: 
					add_groups: {'gpu_hookup','pbb_docktime'}
					remove_groups: {'pbb_docktime', 'gpu_hookup'}
					use_groups: {'pca_hookup'}
					add_tags: { 
						csw_tag003:{Tag:"CSW.TAG003",Label:"CSW TAG003 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
						csw_tag004:{Tag:"CSW.TAG004",Label:"CSW TAG004 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					} 
					remove_tags:  { 'csw_tag004' }
					update_tags:  { 
						csw_tag003:{Tag:"CSW.TAG003a",Label:"CSW TAG003a Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
					}
					use_tags: {}
					#zone:
					1:
						add_groups: {'gpu_ra_out_avg','pbb_hookup'}
						remove_groups: {'pbb_hookup'}
						use_groups: {'gpu_gpustatus'}
						add_tags: { 
							csw_tag005:{Tag:"CSW.TAG005",Label:"CSW TAG005 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
							csw_tag006:{Tag:"CSW.TAG006",Label:"CSW TAG006 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
						} 
						remove_tags:  { 'csw_tag006'}
						update_tags:  { 
							csw_tag005:{Tag:"CSW.TAG005a",Label:"CSW TAG005a Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
						}
						use_tags: {}
						#gate:
						C1:
							add_groups: {'gpu_status','gpu_rv_out_avg','pca_pcastatus'}
							remove_groups: {'pca_pcastatus'}
							use_groups: {'pbb_status'}
							add_tags: { 
								csw_tag007:{Tag:"CSW.TAG007",Label:"CSW TAG007 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
								csw_tag008:{Tag:"CSW.TAG008",Label:"CSW TAG008 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
							} 
							remove_tags:  { 'csw_tag008' }
							update_tags:  {
								csw_tag007:{Tag:"CSW.TAG007a",Label:"CSW TAG007a Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData",Object:null}},
							}
							use_tags: {}
			*************************************************************************************###

		DAL:
			futute: {'future'}
		EWR:
			pbb_pca_gpu_basic_widget:
				add_groups: {'pbb_pca_gpu_basic_widget'}

		JFK:
			pbb_pca_gpu_basic_widget:
				add_groups: {'pbb_pca_gpu_basic_widget'}



	constructor: (Groups, Tags, Site_Code, Site) ->
		@TagData = []

		if Site_Code?.length > 0
			addGroups = []
			addTags = []
			removeTags = []
			useGroups = []
			useTags = []
			if Groups? && Object.keys(Groups).length > 0
				addGroups = Groups
			if Tags? && Object.keys(Tags).length > 0
				addTags = Tags

			for Group, GroupData of @constructor.clients[Site_Code]
				console.log 'Group:' + Group + ' GroupData: ' + GroupData
				if Object.keys(addGroups).indexOf(Group) > -1
					for groupMod, groupData of GroupData
						console.log 'groupMod:' + groupMod + ' groupData: ' + groupData
						switch groupMod
							when 'add_groups' 
								console.log 'groupMod: ' + groupMod + '->add_groups'
								for key, data of groupData
									addGroups[key] = data
							when 'remove_groups' 
								console.log 'groupMod: ' + groupMod + '->remove_groups'
								for key, data of groupData
									delete addGroups[key]
							when 'use_groups' 
								console.log 'groupMod: ' + groupMod + '->use_groups'
								useGroups = groupData
							when 'add_tags' 
								console.log 'groupMod: ' + groupMod + '->add_tags'
								for key, data of groupData
									addTags[key] = data
							when 'remove_tags' 
								console.log 'groupMod: ' + groupMod + '->remove_tags'
								for key, data of groupData
									removeTags[key] = data
							when 'update_tags' 
								console.log 'groupMod: ' + groupMod + '->update_tags'
								for key, data of groupData
									addTags[key] = data
							when 'use_tags' 
								console.log 'groupMod: ' + groupMod + '->use_tags'
								useTags = groupData
							when Site.terminal 
								for termMod, termData of groupData
									console.log 'termMod:' + termMod + ' termData: ' + termData
									switch termMod
										when 'add_groups' 
											console.log 'termMod: ' + termMod + '->add_groups'
											for key, data of termData
												addGroups[key] = data
										when 'remove_groups' 
											console.log 'termMod: ' + termMod + '->remove_groups'
											for key, data of termData
												delete addGroups[key]
										when 'use_groups' 
											console.log 'termMod: ' + termMod + '->use_groups'
											useGroups = termData
										when 'add_tags' 
											console.log 'termMod: ' + termMod + '->add_tags'
											for key, data of termData
												addTags[key] = data
										when 'remove_tags' 
											console.log 'termMod: ' + termMod + '->remove_tags'
											for key, data of termData
												removeTags[key] = data
										when 'update_tags' 
											console.log 'termMod: ' + termMod + '->update_tags'
											for key, data of termData
												addTags[key] = data
										when 'use_tags' 
											console.log 'termMod: ' + termMod + '->use_tags'
											useTags = termData
										when Site.zone
											for zoneMod, zoneData of termData
												console.log 'zoneMod:' + zoneMod + ' zoneData: ' + zoneData
												switch zoneMod
													when 'add_groups' 
														console.log 'zoneMod: ' + zoneMod + '->add_groups'
														for key, data of zoneData
															addGroups[key] = data
													when 'remove_groups' 
														console.log 'zoneMod: ' + zoneMod + '->remove_groups'
														for key, data in zoneData
															delete addGroups[key]
													when 'use_groups' 
														console.log 'zoneMod: ' + zoneMod + '->use_groups'
														useGroups = zoneData
													when 'add_tags' 
														console.log 'zoneMod: ' + zoneMod + '->add_tags'
														for key, data of zoneData
															addTags[key] = data
													when 'remove_tags' 
														console.log 'zoneMod: ' + zoneMod + '->remove_tags'
														for key, data of zoneData
															removeTags[key] = data
													when 'update_tags' 
														console.log 'zoneMod: ' + zoneMod + '->update_tags'
														for key, data of zoneData
															addTags[key] = data
													when 'use_tags' 
														console.log 'zoneMod: ' + zoneMod + '->use_tags'
														useTags = zoneData
													when Site.gate
														for gateMod, gateData of zoneData
															console.log 'gateMod:' + gateMod + ' data: ' + gateData
															switch gateMod
																when 'add_groups' 
																	console.log 'gateMod: ' + gateMod + '->add_groups'
																	for key, data of gateData
																		addGroups[key] = data
																when 'remove_groups' 
																	console.log 'gateMod: ' + gateMod + '->remove_groups'
																	for key, data of gateData
																		delete addGroups[key]
																when 'use_groups' 
																	console.log 'gateMod: ' + gateMod + '->use_groups'
																	useGroups = gateData
																when 'add_tags' 
																	console.log 'gateMod: ' + gateMod + '->add_tags'
																	for key, data of gateData
																		addTags[key] = data
																when 'remove_tags' 
																	console.log 'gateMod: ' + gateMod + '->remove_tags'
																	for key, data of gateData
																		removeTags[key] = data
																when 'update_tags' 
																	console.log 'gateMod: ' + gateMod + '->update_tags'
																	for key, data of gateData
																		addTags[key] = data
																when 'use_tags' 
																	console.log 'gateMod: ' + gateMod + '->use_tags'
																	useTags = gateData

			if Object.keys(addGroups).length > 0
				for key, data of addGroups
					for Tag of @constructor.groups[key]
						@TagData[Tag] = @constructor.tags[Tag]
			
			if Object.keys(addTags).length > 0
				for Tag, Data of addTags
					@TagData[Tag] = Data

			if Object.keys(removeTags).length > 0
				for Tag, Data of removeTags
					delete @TagData[Tag]

		else if Groups?.length > 0
			for Group in Groups
				for Tag of @constructor.groups[Group]
					@TagData[Tag] = @constructor.tags[Tag]
		else
			for Tag, Data of Tags
				@TagData[Tag] = Data

	addTags: (Tags) ->
		for Tag, Data of Tags
			@TagData[Tag] = Data

	removeTags: (Tags) ->
		for Tag in Tags
			delete @TagData[Tag]

	updateTag: (Tag, Data) ->
		@TagData[Tag] = Data

module.exports = TagConfig

###
This is the usage of the above class
###
###
$ ->
  newData = {
	csw_tag001: {Tag: "CSW.TAG001",Label:"CSW TAG001 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
	csw_tag002: {Tag: "CSW.TAG002",Label:"CSW TAG002 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
	csw_tag003: {Tag: "CSW.TAG003",Label:"CSW TAG003 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
	csw_tag004: {Tag: "CSW.TAG004",Label:"CSW TAG004 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} }
	max_tag001: {Tag: "MAX.TAG001",Label:"MAX TAG001 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
	max_tag002: {Tag: "MAX.TAG002",Label:"MAX TAG002 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
  }
  addData = {
	csw_tag005: {Tag: "CSW.TAG005",Label:"CSW TAG005 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
	csw_tag006: {Tag: "CSW.TAG006",Label:"CSW TAG006 Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} } ,
  }

	#loadTags = []
  #['pbb_pca_gpu_basic_widget']
  tagConfig = new TagConfig(null, newData)
  tagConfig.addTags addData
  tagConfig.removeTags ['max_tag001','max_tag002']
  tagConfig.updateTag 'csw_tag005', {Tag: "CSW.TAG005a",Label:"CSW TAG005a Avereage",DataType:"Float",Parameters:{Parm001:true,Parm002:1,Parm003:"Volts"},Element:{Type:"TableRow",ParentID:"#widgetData", Object: null} }
  console.log tagConfig.TagData
  console.log tagConfig.TagData.csw_tag001.Label
###
