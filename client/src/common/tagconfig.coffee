###
This is the class definitio
###
class TagConfig extends Object
	@tags:
		###**************************************************
		*** GPU Tags
		**************************************************###
		gpu_by_pass:Tag:'GPU.ByPass',Label:'ByPass',DataType:'Boolean'
									,Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_status:Tag:'GPU.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_on_1:Tag:'GPU.ON 1',Label:'ON 1',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_on_2:Tag:'GPU.ON 2',Label:'ON 2',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_mode:Tag:'GPU.MODE',Label:'GPU Mode',DataType:'String'
									,Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_rdc_amps:Tag:'GPU.RDCAMPS',Label:'DC Output -  Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_rdc_volts:Tag:'GPU.RDCVOLTS',Label:'DC Output -  Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_input_phasea_i:Tag:'GPU.PM_INPUT_PHASEA_I',Label:'Input - Phase A Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_input_phasea_v:Tag:'GPU.PM_INPUT_PHASEA_V',Label:'Input - Phase A Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_input_phaseb_i:Tag:'GPU.PM_INPUT_PHASEB_I',Label:'Input - Phase B Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_input_phaseb_v:Tag:'GPU.PM_INPUT_PHASEB_V',Label:'Input - Phase B Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_input_phasec_i:Tag:'GPU.PM_INPUT_PHASEC_I',Label:'Input - Phase C Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_input_phasec_v:Tag:'GPU.PM_INPUT_PHASEC_V',Label:'Input - Phase C Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_output_phasea_i:Tag:'GPU.PM_OUTPUT_PHASEA_I',Label:'Output - Phase A Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_output_phasea_v:Tag:'GPU.PM_OUTPUT_PHASEA_V',Label:'Output - Phase A Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_output_phaseb_i:Tag:'GPU.PM_OUTPUT_PHASEB_I',Label:'Output - Phase B Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_output_phaseb_v:Tag:'GPU.PM_OUTPUT_PHASEB_V',Label:'Output - Phase B Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_output_phasec_i:Tag:'GPU.PM_OUTPUT_PHASEC_I',Label:'Output - Phase C Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_pm_output_phasec_v:Tag:'GPU.PM_OUTPUT_PHASEC_V',Label:'Output - Phase C Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_ra_in_avg:Tag:'GPU.RAINAVG',Label:'Average Input - Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:'',Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_ra_out_avg:Tag:'GPU.RAOUTAVG',Label:'Average Output - Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_rv_in_avg:Tag:'GPU.RVINAVG',Label:'Average Input - Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_rv_out_avg:Tag:'GPU.RVOUTAVG',Label:'Average Output - Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_time:Tag:'GPU.GPUTime',Label:'GPUTime',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}

		# Hobart SX2400 Dual Unit Tags
		gpu_01_status:Tag:'GPU01.GPUSTATUSBOOLEAN',Label:'GPU-1 Status',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_status:Tag:'GPU02.GPUSTATUSBOOLEAN',Label:'GPU-2 Status',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_time:Tag:'GPU01.GPUTime',Label:'GPU-1 Run Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_time:Tag:'GPU02.GPUTime',Label:'GPU-2 Run Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_rv_out_set:Tag:'GPU01.RVOUTSET',Label:'GPU-1 Voltage Output Setting',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_rv_out_set:Tag:'GPU02.RVOUTSET',Label:'GPU-2 Voltage Output Setting',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_ra_out_avg:Tag:'GPU01.RAOUTAVG',Label:'GPU-1 Average Output -  Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_ra_out_avg:Tag:'GPU02.RAOUTAVG',Label:'GPU-2 Average Output -  Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_rv_out_avg:Tag:'GPU01.RVOUTAVG',Label:'GPU-1 Average Output -  Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_rv_out_avg:Tag:'GPU02.RVOUTAVG',Label:'GPU-2 Average Output -  Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_rv_in_avg:Tag:'GPU01.RVINAVG',Label:'GPU-1 Average Input -  Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_rv_in_avg:Tag:'GPU02.RVINAVG',Label:'GPU-2 Average Input -  Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_ra_in_avg:Tag:'GPU01.RAINAVG',Label:'GPU-1 Average Input -  Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_ra_in_avg:Tag:'GPU02.RAINAVG',Label:'GPU-2 Average Input -  Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_ra_out_a:Tag:'GPU01.RAOUTA',Label:'GPU-1 Output - Phase A Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_ra_out_a:Tag:'GPU02.RAOUTA',Label:'GPU-2 Output - Phase A Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_ra_out_b:Tag:'GPU01.RAOUTB',Label:'GPU-1 Output - Phase B Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_ra_out_b:Tag:'GPU02.RAOUTB',Label:'GPU-2 Output - Phase B Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_ra_out_c:Tag:'GPU01.RAOUTC',Label:'GPU-1 Output - Phase C Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_ra_out_c:Tag:'GPU02.RAOUTC',Label:'GPU-2 Output - Phase C Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_rv_out_a:Tag:'GPU01.RVOUTA',Label:'GPU-1 Output - Phase A Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_rv_out_a:Tag:'GPU02.RVOUTA',Label:'GPU-2 Output - Phase A Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_rv_out_b:Tag:'GPU01.RVOUTB',Label:'GPU-1 Output - Phase B Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_rv_out_b:Tag:'GPU02.RVOUTB',Label:'GPU-2 Output - Phase B Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}
		gpu_01_rv_out_c:Tag:'GPU01.RVOUTC',Label:'GPU-1 Output - Phase C Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_rv_out_c:Tag:'GPU02.RVOUTC',Label:'GPU-2 Output - Phase C Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}

		###**************************************************
		*** PBB Tags
		**************************************************###
		pbb_autolevel_fail:Tag:'PBB.AUTOLEVEL_FAIL_FLAG',Label:'Auto Level Fail Flag',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'err',Parm004:'ok',Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_autolevel_key:Tag:'PBB.AUTOLEVELKEY',Label:'Auto Level Key',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_autoleveling:Tag:'PBB.AUTOLEVELING',Label:'Auto Leveling',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_autolevel_mode:Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_cab_angle_disp:Tag:'PBB.CABANGLEDISP',Label:'Cab Angle',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Cab Angle :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_cabin_floor_deicer:Tag:'PBB.CABFLOORDEICER',Label:'Cabin Floor Deicer',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_cable_hoist:Tag:'PBB.CABHOIST',Label:'Cab Hoist',DataType:'Boolean'
									,Parameters:{Parm001:'Deployed',Parm002:'Retracted',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_canopy:Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean'
									,Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_daily_aircraft_count:Tag:'PBB.DAILYAIRCRAFTDOCKED',Label:'Daily Aircraft Docked Count',DataType:'Float'
									,Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_dock_time:Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_estop:Tag:'PBB.E_STOP',Label:'Emergency Stop',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'err',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_height_to_disp:Tag:'PBB.HEIGHTTODISP',Label:'Height',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Height :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_hookup_time:Tag:'PBB.HOOKUPTIME',Label:'PBB On Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_last_dock_time:Tag:'PBB.LASTDOCKTIME',Label:'Daily Aircraft Docked Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_limits:Tag:'PBB.BYPASSPB',Label:'Limit Bypass PB',DataType:'Boolean'
									,Parameters:{Parm001:'ByPass',Parm002:'Normal',Parm003:null,Parm004:'ok',Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_slope_deg:Tag:'PBB.SLOPEDEG',Label:'Slope',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Slope :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_smoke_detector:Tag:'PBB.SMOKEDETECTOR',Label:'Smoke Detector',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'err',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_status:Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean'
									,Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_swing_angle_disp:Tag:'PBB.SWINGANGLEDISP',Label:'Bridge Rotation',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Bridge Rotation :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_terminal_door:Tag:'PBB.TERMINALDOOR',Label:'Terminal Door',DataType:'Boolean'
									,Parameters:{Parm001:'Open',Parm002:'Close',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_tunnel_length:Tag:'PBB.HORIZTODISP',Label:'Tunnel Length',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Tunnel Length :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_undock_time:Tag:'PBB.UNDOCKTIME',Label:'UN-Dock Time (Minutes)',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_wheel_angle_deg:Tag:'PBB.WHEELANGLEDEG',Label:'Wheel Bogie Angle',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Wheel Bogie Angle :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}

		###**************************************************
		*** PCA Tags
		**************************************************###
		pca_alarm_cooling_run:Tag:'PCA.ALARM_COOLINGRUN_BOOLEAN',Label:'Cooling Run Alarm',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_alarm_heating_run:Tag:'PCA.ALARM_HEATINGRUN_BOOLEAN',Label:'Heating Run Alarm',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_ambient_humidity:Tag:'PCA.AMBHUMIDITY',Label:'Ambient Humidity',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Amb Humidity :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_ambient_temp:Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_blower:Tag:'PCA.BLOWER',Label:'Blower Status',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_bridge_air:Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_bridge_damper:Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Damper',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_cabin_temp:Tag:'PCA.TEMPCABIN',Label:'Cabin Air Temperature',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_coil_dp:Tag:'PCA.COIL_DP',Label:'Coil DP',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'COIL DP :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_comp_stage_1:Tag:'PCA.COMP_STAGE1_STAT',Label:'Primary compressor #1 is running',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_comp_stage_2:Tag:'PCA.COMP_STAGE2_STAT',Label:'Primary compressor #2 is running',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_cooling_pt:Tag:'PCA.SET_COOLINGPOINT',Label:'Cooling Setpoint',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_cooling_tm:Tag:'PCA.SET_COOLINGPOINT_TIMER',Label:'Cooling Timer',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_dirty_filter:Tag:'PCA.DIRTY_FILTER',Label:'Dirty Filter',DataType:'Boolean'
									,Parameters:{Parm001:'Yes',Parm002:'No',Parm003:'err',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_discharge_temp:Tag:'PCA.TEMPDISCH',Label:'Discharge Air Temperature',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_heater_1:Tag:'PCA.HEATER1',Label:'Heater #1 is running',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_heater_2:Tag:'PCA.HEATER2',Label:'Heater #2 is running',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_heating_pt:Tag:'PCA.SET_HEATINGPOINT',Label:'Heating Setpoint',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_heating_tm:Tag:'PCA.SET_HEATINGPOINT_TIMER',Label:'Heating Timer',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_hot_gas_1:Tag:'PCA.C1_HOTGAS_CONTROL',Label:'Hot Gas Controller,Primary compressor #1',DataType:'Float'
									,Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_hot_gas_2:Tag:'PCA.C2_HOTGAS_CONTROL',Label:'Hot Gas Controller,Primary compressor #2',DataType:'Float'
									,Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_mode_cooling:Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_mode_heating:Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_status:Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_pump_cond:Tag:'PCA.PUMPCOND',Label:'Condensate pump is running',DataType:'Float'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Condensate Pump :#{txt}'}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_suction_pressure_1:Tag:'PCA.C1_SUCTION_PRESSURE',Label:'Suction pressure,primary compressor #1',DataType:'Float'
									,Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_suction_pressure_2:Tag:'PCA.C2_SUCTION_PRESSURE',Label:'Suction pressure,primary compressor #2',DataType:'Float'
									,Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_time:Tag:'PCA.PCATime',Label:'PCA Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_vfd_speed:Tag:'PCA.VFD_SPEED',Label:'VFD Speed',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'VFD :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_dischargetemp:Tag:'PCA.INET_TEMPDISCH',Label:'PCA Discharge Temp',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_hookuptime:Tag:'PCA.INET_hookuptime',Label:'PCA hookup time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_ambient_temp:Tag:'PCA.INET_ambient_temp',Label:'PCA ambient_temp',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_blower_01:Tag:'PCA.INET_blower_01',Label:'PCA Discharge Temp',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_blower_02:Tag:'PCA.INET_blower_02',Label:'PCA Discharge Temp',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_blower_03:Tag:'PCA.INET_blower_03',Label:'PCA Discharge Temp',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_inet_blower_04:Tag:'PCA.INET_blower_04',Label:'PCA Discharge Temp',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'F',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}


	###**************************************************
	*** Widget Tag Groups
	**************************************************###
	@widgets:
		config_widget: # config_widget
			Tags:{'pca_cooling_pt','pca_heating_pt','pca_cooling_tm','pca_heating_tm'}
			Graphics:{}
		gpu_summary_widget: # GPU Summary Widget
			Tags:{'gpu_status','gpu_time','gpu_ra_out_avg','gpu_rv_out_avg','gpu_ra_in_avg','gpu_rv_in_avg'}
			Graphics:{
				gpu_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background',Object:null}},
			}
		gpu_widget: # GPU Widget
			Tags:{'gpu_status','gpu_by_pass','gpu_ra_out_avg','gpu_rv_out_avg','gpu_ra_in_avg','gpu_rv_in_avg','gpu_pm_output_phasea_i'
				,'gpu_pm_output_phaseb_i','gpu_pm_output_phasec_i','gpu_pm_output_phasea_v','gpu_pm_output_phaseb_v','gpu_pm_output_phasec_v'
				,'gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i','gpu_pm_input_phasea_v','gpu_pm_input_phaseb_v'
				,'gpu_pm_input_phasec_v','gpu_on_1','gpu_on_2'}
			Graphics:{}
		pca_discharge_widget: # PCA Discharge Widget
			Tags:{'pca_discharge_temp','pca_status','pca_mode_cooling','pca_mode_heating','pca_cooling_pt','pca_heating_pt'
				,'pca_alarm_cooling_run','pca_alarm_heating_run','pca_cooling_tm','pca_heating_tm'}
			Graphics:{}
		pca_summary_widget: # PCA Summary Widget
			Tags:{'pca_ambient_humidity','pca_ambient_temp','pca_discharge_temp','pca_status','pca_time','pca_blower','pca_heater_1'
				,'pca_heater_2','pca_comp_stage_1','pca_comp_stage_2','pca_bridge_damper','pca_bridge_air','pca_pump_cond','pca_coil_dp'
				,'pca_vfd_speed','pca_suction_pressure_1','pca_suction_pressure_2','pca_hot_gas_1','pca_hot_gas_2'},
			Graphics:{
				pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background',Object:null}},
				blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
			}
		pca_widget: # PCA Widget
			Tags:{'pca_cabin_temp','pca_ambient_temp','pca_discharge_temp','pca_heater_1','pca_heater_2','pca_comp_stage_1','pca_comp_stage_2'
				,'pca_bridge_damper','pca_bridge_air','pca_dirty_filter','pca_blower','pca_suction_pressure_1','pca_suction_pressure_2'
				,'pca_hot_gas_1','pca_hot_gas_2','pca_status'}
			Graphics:{}
		pbb_level_detail_widget: # PBB Overview Widget
			Tags:{'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_autolevel_key','pbb_autoleveling','pbb_estop','pbb_limits'
				,'pbb_dock_time','pbb_undock_time','pbb_smoke_detector','pbb_daily_aircraft_count','pbb_last_dock_time'
				,'pbb_cabin_floor_deicer','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp'
				,'pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
			Graphics:{}
		pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
			Tags:{'pbb_status','pca_status','gpu_status','pbb_dock_time','pbb_hookup_time','pca_time','gpu_time','pca_discharge_temp'
				,'gpu_ra_out_avg','gpu_rv_out_avg'}
			Graphics:{}
		pbb_widget: # PBB Bridge Widget
			Tags:{'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_dock_time','pbb_undock_time'}
			Graphics:{}

	###**************************************************
	*** Equipment/Modification Tag Groups
	**************************************************###
	@groups:
		gpu_hobart_sx2400_dual_unit: 
			Tags:{'gpu_01_status','gpu_02_status','gpu_01_time','gpu_02_time','gpu_01_rv_out_set','gpu_02_rv_out_set','gpu_01_ra_out_avg','gpu_02_ra_out_avg','gpu_01_rv_out_avg'
					,'gpu_02_rv_out_avg','gpu_01_rv_in_avg','gpu_02_rv_in_avg','gpu_01_ra_in_avg','gpu_02_ra_in_avg','gpu_01_ra_out_a','gpu_02_ra_out_a'
					,'gpu_01_ra_out_b','gpu_02_ra_out_b','gpu_01_ra_out_c','gpu_02_ra_out_c','gpu_01_rv_out_a','gpu_02_rv_out_a','gpu_01_rv_out_b'
					,'gpu_02_rv_out_b','gpu_01_rv_out_c','gpu_02_rv_out_c'}
			Graphics:{}
	
	###**************************************************
	*** Client Tag and Graphics
	**************************************************###
	@clients:
		CID:
			gpu_summary_widget: # GPU Summary Widget
				remove_tags:{'gpu_ra_in_avg'}
				1:
					1:
						C3:
							use_tags:{
								gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_time:{Tag:'GPU.GPUTime',Label:'GPUTime',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			gpu_widget: # GPU Widget
				remove_tags:{'gpu_by_pass','gpu_ra_in_avg','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i','gpu_on_1','gpu_on_2'}
				add_tags:{
					gpu_mode:{Tag:'GPU.GPUMODE',Label:'GPU Mode',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_rdc_amps:{Tag:'GPU.RDCAMPS',Label:'DC Output -  Amps',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_rdc_volts:{Tag:'GPU.RDCVOLTS',Label:'DC Output -  Volts',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				update_tags:{
					gpu_pm_output_phasea_i:{Tag:'GPU.RAOUTA',Label:'Amps Out Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Amps',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_i:{Tag:'GPU.RAOUTB',Label:'Amps Out Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Amps',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_i:{Tag:'GPU.RAOUTC',Label:'Amps Out Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Amps',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasea_v:{Tag:'GPU.RVOUTA',Label:'Volts Out Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_v:{Tag:'GPU.RVOUTB',Label:'Volts Out Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_v:{Tag:'GPU.RVOUTC',Label:'Volts Out Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phasea_v:{Tag:'GPU.RVINA',Label:'Volts In Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phaseb_v:{Tag:'GPU.RVINB',Label:'Volts In Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phasec_v:{Tag:'GPU.RVINC',Label:'Volts In Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				1:
					1:
						C3:
							use_tags:{
								pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:'err',Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pca_discharge_widget: # PCA Discharge Widget
				1:
					1:
						C3:
							use_tags:{
								pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:'err',Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pca_summary_widget: # PCA Summary Widget
				update_graphics:{
					pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetair-xpc-3013',Object:null}},
					blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
				}
				add_graphics:{
					fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					fan_3_img:{ControlTags:{pca_fan_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-3-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
				}
				remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2'}
				update_tags:{
					pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				add_tags:{
					pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_3:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				1:1:C3:
<<<<<<< .mine
				add_tags:{
					pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_3:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				1:1:C3:
					use_tags:{
						pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'Discharge Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					}
=======
				1:
					1:
						C3:
							use_tags:{
								pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'Discharge Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}





>>>>>>> .theirs
			pca_widget: # PCA Widget
				remove_tags:{'pca_hot_gas_1','pca_hot_gas_2'}
				update_tags:{
					pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				1:
					1:
						C3:
							use_tags:{
								pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pbb_level_detail_widget: # PBB Overview Widget
				remove_tags:{'pbb_terminal_door','pbb_autolevel_key'}
				1:
					1:
						C3:
							remove_tags:{'pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp','pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
							add_tags:{
								pbb_autolevel_key:{Tag:'PBB.AUTOLEVELKEY',Label:'Auto Level Key',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				1:
					1:
						C3:
							remove_tags:{'pca_discharge_temp','gpu_ra_out_avg','gpu_rv_out_avg'}
			pbb_widget: # PBB Bridge Widget
				remove_tags:{'pbb_autolevel_key','pbb_terminal_door'}


		DAL:
			futute:{'future'}
		EWR:
			#C:1:C90
			#C:3:C125
			gpu_summary_widget: # GPU Summary Widget
				C:
					1:C90:
						remove_all: {}
					3:C125:
						use_groups:{'gpu_hobart_sx2400_dual_unit'}
						remove_tags:{'gpu_01_rv_out_set','gpu_02_rv_out_set','gpu_01_rv_in_avg','gpu_02_rv_in_avg','gpu_01_ra_out_a','gpu_02_ra_out_a','gpu_01_ra_out_b','gpu_02_ra_out_b'
								,'gpu_01_ra_out_c','gpu_02_ra_out_c','gpu_01_rv_out_a','gpu_02_rv_out_a','gpu_01_rv_out_b','gpu_02_rv_out_b','gpu_01_rv_out_c','gpu_02_rv_out_c'}
			gpu_widget: # GPU Widget
				C:
					1:C90:
						remove_all: {}
					3:C125:
						use_groups:{'gpu_hobart_sx2400_dual_unit'}
						remove_tags:{'gpu_01_time','gpu_02_time',}				
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				update_tags:{
					pca_time:{Tag:'PCA.PCATime',Label:'PCA Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_time:{Tag:'GPU01.GPUTime',Label:'GPU-1 Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_ra_out_avg:{Tag:'GPU01.RAOUTAVG',Label:'GPU-1 Average Output - Amps',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_rv_out_avg:{Tag:'GPU01.RVOUTAVG',Label:'GPU-1 Average Output - Volts',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU01.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},						
				}
						gpu__02_status:{Tag:'GPU02.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						gpu_02_time:{Tag:'GPU02.GPUTime',Label:'GPU-2 Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
<<<<<<< .mine
				C:
					1:C90:
					 remove_tags:{'gpu_status','gpu_time','gpu_ra_out_avg','gpu_rv_out_avg'} 
					3:C125:
						add_tags:{
=======
				C:
					1:
						C90:
							remove_tags:{'gpu_time','gpu_ra_out_avg','gpu_rv_out_avg'} 
					3:
>>>>>>> .theirs
							gpu__02_status:{Tag:'GPU02.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
<<<<<<< .mine
							gpu_02_time:{Tag:'GPU02.GPUTime',Label:'GPU-2 Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_ra_out_avg:{Tag:'GPU02.RAOUTAVG',Label:'GPU-2 Average Output - Amps',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_rv_out_avg:{Tag:'GPU02.RVOUTAVG',Label:'GPU-2 Average Output - Volts',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
=======
							add_tags:{
								gpu_02_time:{Tag:'GPU02.GPUTime',Label:'GPU-2 Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_02_ra_out_avg:{Tag:'GPU02.RAOUTAVG',Label:'GPU-2 Average Output - Amps',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
>>>>>>> .theirs
						}	
<<<<<<< .mine

=======
							}	
>>>>>>> .theirs
			pbb_level_detail_widget: # PBB Overview Widget
				C:
					3:C125:
						remove_tags:{'pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp'
							    ,'pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
			pca_summary_widget: # PCA Summary Widget
				C:
					1:C90:
						update_graphics:{
							pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-100',Object:null}},
							blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_1_img:{ControlTags:{pca_comp_stage_2_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_2_img:{ControlTags:{pca_comp_stage_1_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
						}
						add_graphics:{
							heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_4_img:{ControlTags:{pca_heater_4:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-4-on',Parm003:null,Parm004:'heating-stage-4-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_5_img:{ControlTags:{pca_heater_5:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-5-on',Parm003:null,Parm004:'heating-stage-5-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_4_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-4-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							fan_3_img:{ControlTags:{pca_fan_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-3-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							fan_4_img:{ControlTags:{pca_fan_4:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-4-on',Parm003:null,Parm004:'fan-4-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},					
							filter_img:{ControlTags:{pca_dirtyfilter:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filter-on',Parm003:null,Parm004:'filter-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
						}
						remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_hot_gas_1','pca_hot_gas_2'}
						update_tags:{
							pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						add_tags:{
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_4:{Tag:'PCA.HEAT4',Label:'Heater #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_5:{Tag:'PCA.HEAT5',Label:'Heater #5',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1_sec:{Tag:'PCA.COMPSEC1',Label:'Secondary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2_sec:{Tag:'PCA.COMPSEC2',Label:'Secondary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_1_sec:{Tag:'PCA.PRESSSUCSEC1',Label:'Suction pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_2_sec:{Tag:'PCA.PRESSSUCSEC2',Label:'Suction pressure,secondary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1:{Tag:'PCA.PRESSHEADPRI1',Label:'Head pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_2:{Tag:'PCA.PRESSHEADPRI2',Label:'Head pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1_sec:{Tag:'PCA.PRESSHEADSEC1',Label:'Head pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_2_sec:{Tag:'PCA.PRESSHEADSEC2',Label:'Head pressure,secondary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_1:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_2:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_3:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_4:{Tag:'PCA.FANCONDREARSEC',Label:'Fan #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_dirtyfilter:{Tag:'PCA.Warning.DIRTYFILTER',Label:'Dirty Filter',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
						}
					3:C125:
						update_graphics:{
							pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-twist-75',Object:null}},
							blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
						}
						add_graphics:{
							heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							cooling_stage_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							filter_img:{ControlTags:{pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filter-on',Parm003:null,Parm004:'filter-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
						}
						remove_tags:{'pca_bridge_air','pca_pump_cond','pca_suction_pressure_1','pca_suction_pressure_2','pca_ambient_humidity','pca_coil_dp','pca_hot_gas_1','pca_hot_gas_2'}
						update_tags:{
							pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						add_tags:{
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_1:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}		
			pca_widget: # PCA Widget
				remove_tags:{'pca_hot_gas_1','pca_hot_gas_2'}
				update_tags:{
					pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				C:
					1:C90:
						remove_tags:{'pca_status'}
						add_tags:{
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_4:{Tag:'PCA.HEAT4',Label:'Heater #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1_sec:{Tag:'PCA.COMPSEC1',Label:'Secondary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2_sec:{Tag:'PCA.COMPSEC2',Label:'Secondary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_1_sec:{Tag:'PCA.PRESSSUCSEC1',Label:'Suction pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_2_sec:{Tag:'PCA.PRESSSUCSEC2',Label:'Suction pressure,secondary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1:{Tag:'PCA.PRESSHEADPRI1',Label:'Head pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_2:{Tag:'PCA.PRESSHEADPRI2',Label:'Head pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1_sec:{Tag:'PCA.PRESSHEADSEC1',Label:'Head pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_2_sec:{Tag:'PCA.PRESSHEADSEC2',Label:'Head pressure,secondary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
					3:C125:
						remove_tags:{'pca_bridge_air','pca_dirty_filter','pca_suction_pressure_1','pca_suction_pressure_2'}
						add_tags:{
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}

		JFK:
			#4:A1:A5:
			#4:B1:B25L1:
			#4:B1:B27:
			#4:B1:B29L1:
			#4:B1:B29L2:
			gpu_summary_widget: # GPU Summary Widget
				remove_tags: {'gpu_ra_in_avg'}
			gpu_widget: # GPU Widget
				remove_tags:{'gpu_ra_in_avg','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i','gpu_on_1','gpu_on_2','gpu_by_pass'}
				update_tags:{
					gpu_pm_output_phasea_i:{Tag:'GPU.RAOUTA',Label:'Amps Out Phase A',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasea_v:{Tag:'GPU.RVOUTA',Label:'Volts Out Phase A',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_i:{Tag:'GPU.RAOUTB',Label:'Amps Out Phase B',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_v:{Tag:'GPU.RVOUTB',Label:'Volts Out Phase B',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_i:{Tag:'GPU.RAOUTC',Label:'Amps Out Phase C',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_v:{Tag:'GPU.RVOUTC',Label:'Volts Out Phase C',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phasea_v:{Tag:'GPU.RVINA',Label:'Volts In Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phaseb_v:{Tag:'GPU.RVINB',Label:'Volts In Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phasec_v:{Tag:'GPU.RVINC',Label:'Volts In Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
			pca_discharge_widget: # PCA Discharge Widget
				remove_all: {}
			pca_summary_widget: # PCA Summary Widget
				remove_all:{}
			pca_widget: # PCA Widget
				remove_all:{}
			pbb_level_detail_widget: # PBB Overview Widget
				4:
					B1:
						B29L2:
							add_tags:{
								elvrot_rotunda_status:{Tag:'ELVROT.ROTUNDA_STATUS',Label:'Elevating Rotunda Status',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								elvrot_rotunda_mode:{Tag:'ELVROT.ROTUNDA_MODE',Label:'Elevating Rotunda Operational Mode',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								elvrot_rotunda_position:{Tag:'ELVROT.ROTUNDA_POSITION',Label:'Elevating Rotunda Position',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				remove_tags:{'pca_status','pca_time','pca_discharge_temp'}
				4:
					B1:
						B29L2:
							add_tags:{
								elvrot_rotunda_status:{Tag:'ELVROT.ROTUNDA_STATUS',Label:'Elevating Rotunda Status',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pbb_widget: # PBB Bridge Widget
				4:
					B1:
						B29L2:
							add_tags:{
								elvrot_rotunda_position:{Tag:'ELVROT.ROTUNDA_POSITION',Label:'Elevating Rotunda Position',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}


	###********************************************************************************
	**  Widget:String
	**  Groups:{ String,String,... }
	**  Tags:{ Tag,Tag,Tag,...}
	**        Tag = tag_name:{Tag:'PATH.NAME',Label:'Label',DataType:'[DataType]',Parameters:{Parm001:[value],Parm002:[value],Parm003:[value]...},Element:{Type:'[HTML Element Type]',ParentID:'#ParentID',Object:[null or <HTML Element definition/>]}},
	**  Site_Code:String
	**  Site: Site Object From Widgets
	***********************************************************************************
	** NOTES:
	***********************************************************************************
	** If Groups OR Tags parameters are set,the Widget.Tags WILL NOT be used.
	** If Group AND Tags parameters are set,the Tags will be apopended to the group 
	**      tags
	** Site_Code AND Site must be set or an error will be thrown
	********************************************************************************###
	constructor:(Widget,Groups,Tags,Site_Code,Site) ->

		@TagData = []
		@Graphics = []

		addGroups = []
		removeGroups = []
		useGroups = []

		addGraphics = []
		removeGraphics = []
		updateGraphics = []
		useGraphics = []

		addTags = []
		removeTags = []
		updateTags = []
		useTags = []

		if Widget?.length = 0
			if Object.keys(@constructor.widgets).indexOf(Widget) < 0
				throw new Error("Class does not contain a configuration for Widget:#{Widget}")

		if Site_Code?.length > 0 && Site?.length = 0
			throw new Error("Class cannot have Site_Code without Site:Widget:#{Widget}")

		if Site_Code?.length = 0 && Site?.length > 0
			throw new Error("Class cannot have Site without Site_Code:Widget:#{Widget}")

		if Widget? && Widget.length > 0
			for graphic,graphicData of @constructor.widgets[Widget].Graphics
				@Graphics[graphic] = graphicData
			for tag of @constructor.widgets[Widget].Tags 
				if Object.keys(@constructor.tags).indexOf(tag) > -1  
					@TagData[tag] = @constructor.tags[tag]

		if Groups? && Object.keys(Groups).length > 0
			for key,group of Groups
				if Object.keys(@constructor.widgets[group].Graphics).indexOf(tag) > -1
					@Graphics = []
					for graphic,graphicData of @constructor.widgets[group].Graphics
						@Graphics[graphic] = graphicData
				@TagData = []
				for tag of @constructor.widgets[Widget].Tags 
					if Object.keys(@constructor.tags).indexOf(tag) > -1  
						@TagData[tag] = @constructor.tags[tag]

		if Tags? && Object.keys(Tags).length > 0
			@TagData = []
			@TagData = Tags

		if Site_Code?.length > 0

			### LOOP:Get Graphics ###
			groupList = []
			groupList["root"] = ''
			groupList[Widget] = Widget
			for key,group of Groups
				groupList[group] = group
			propertyList = [Site.terminal,Site.zone,Site.gate]

			modList = ["use_graphics","add_graphics","update_graphics","remove_graphics","remove_all"]
			found_use =  false
			remove_all = false
			for key,group of groupList
				propCnt = 0
				while propCnt < propertyList.length + 1
					for mod in modList
						lookupProps = propertyList.slice 0 ,propCnt
						lookupProps.unshift group
						lookupProps.push mod
						property = getProperty @constructor.clients[Site_Code],lookupProps
						if property != undefined
							switch mod
								when "#{modList.slice(0,1)}"
									if !remove_all
										found_use = true
										@Graphics = []
										for key,data of property
											@Graphics[key] = data
								when "#{modList.slice(1,2)}","#{modList.slice(2,3)}" 
									if !found_use && !remove_all
										for key,data of property
											@Graphics[key] = data
								when "#{modList.slice(3,4)}"
									if !found_use && !remove_all
										for key,data of property
											delete @Graphics[key]
								when "#{modList.slice(4,5)}"
									remove_all = true
									@Graphics = []

					propCnt++

			### LOOP:Get Groups ###
			modList = ["use_groups","add_groups","remove_groups","remove_all"]
			found_use =  false
			remove_all = false
			for key,group of groupList
				propCnt = 0
				while propCnt < propertyList.length + 1
					for mod in modList
						lookupProps = propertyList.slice 0 ,propCnt
						lookupProps.unshift group
						lookupProps.push mod
						property = getProperty @constructor.clients[Site_Code],lookupProps
						if property != undefined
							switch mod
								when "#{modList.slice(0,1)}"
									if !remove_all
										found_use = true
										addGroups = []
										@TagData = []
										for key,group of property
											addGroups[key] = group
								when "#{modList.slice(1,2)}" 
									if !found_use && !remove_all
										for key,group of property
											if Object.keys(addGroups).indexOf(key) == -1
												addGroups[key] = group
								when "#{modList.slice(2,3)}"
									if !found_use && !remove_all
										for key,group of property
											if Object.keys(addGroups).indexOf(group) > -1
												delete addGroups[key]
								when "#{modList.slice(3,4)}"
									remove_all = true
									addGroups = []

					propCnt++

			# Update addTags with Groups Changes
			if addGroups? && Object.keys(addGroups).length > 0
				for key,group of addGroups
					for tag,data of @constructor.groups[group].Tags
						if Object.keys(@constructor.tags).indexOf(tag) > -1  
							@TagData[tag] = @constructor.tags[tag]

			### LOOP:Get Tags ###
			modList = ["use_tags","add_tags","update_tags","remove_tags","remove_all"]
			found_use =  false
			remove_all = false
			for key,group of groupList
				propCnt = 0
				while propCnt < propertyList.length + 1
					for mod in modList
						lookupProps = propertyList.slice 0 ,propCnt
						lookupProps.unshift group
						lookupProps.push mod
						property = getProperty @constructor.clients[Site_Code],lookupProps
						if property != undefined
							switch mod
								when "#{modList.slice(0,1)}"
									if !remove_all
										found_use = true
										@TagData = []
										for key,data of property
											@TagData[key] = data
								when "#{modList.slice(1,2)}","#{modList.slice(2,3)}" 
									if !found_use && !remove_all
										for key,data of property
											@TagData[key] = data
								when "#{modList.slice(3,4)}"
									if !found_use && !remove_all
										for key,data of property
											delete @TagData[key]
								when "#{modList.slice(4,5)}"
									remove_all = true
									@TagData = []

					propCnt++

	###***********************************************************
	** FUNCTION BLOCK
	***********************************************************###
	addTags:(Tags) ->
		for Tag,Data of Tags
			@TagData[Tag] = Data

	removeTags:(Tags) ->
		for Tag in Tags
			delete @TagData[Tag]

	updateTag:(Tag,Data) ->
		@TagData[Tag] = Data

	addGraphics:(Graphics) ->
		for Widget,Graphic of Graphics
			@Graphics[Widget] = Graphic

	removeGraphics:(Graphics) ->
		for Widget,Graphic of Graphics
			delete @Graphics[Widget][Graphic]

	updateGraphics:(Graphics) ->
		for Widget,Graphic of Graphics
			@Graphics[Widget] = Graphic

	getProperty = (obj,prop) ->
	  i = 0
	  iLen = prop.length - 1
	  while i < iLen
	    if typeof obj[prop[i]] == 'object'
	      obj = obj[prop[i]]
	    else
	      # Property not found,return undefined (or other suitable value)
	      return
	    i++
	  obj[prop[i]]

module.exports = TagConfig
