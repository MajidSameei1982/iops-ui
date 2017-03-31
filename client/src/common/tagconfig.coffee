###
This is the class definitio
###
class TagConfig extends Object
	@tags:
		###**************************************************
		*** SYSTEM Tags
		**************************************************###
		system_out_of_service:Tag:'System._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		system_perfect_hookup:Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		system_quality:Tag:'System._QUALITY',Label:'Comm Error',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:'bad-data',Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}


		###**************************************************
		*** WARNING Tags
		**************************************************###
		gate_has_warnings:Tag:'Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}

		###**************************************************
		*** ALARM Tags
		**************************************************###
		gate_has_alarms:Tag:'Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gate_has_critical_alarms:Tag:'Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}

		###**************************************************
		*** GPU Tags
		**************************************************###
		gpu_has_warnings:Tag:'GPU.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_has_alarms:Tag:'GPU.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_has_critical_alarms:Tag:'GPU.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_out_of_service:Tag:'GPU._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_perfect_hookup:Tag:'GPU.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_quality:Tag:'GPU._QUALITY',Label:'Comm Errors',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}

		gpu_by_pass:Tag:'GPU.ByPass',Label:'ByPass',DataType:'Boolean'
									,Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_status:Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU Status',DataType:'Boolean'
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
		gpu_ra_out_avg:Tag:'GPU.RAOUTAVG',Label:'[*]Avg Output - Amps',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_rv_in_avg:Tag:'GPU.RVINAVG',Label:'Average Input - Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_rv_out_avg:Tag:'GPU.RVOUTAVG',Label:'[*]Avg Output - Volts',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_time:Tag:'GPU.GPUTime',Label:'[*]GPU Run Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_hookup_time:Tag:'GPU.HOOKUPTIME',Label:'[*]GPU Hookup Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}							

		# Hobart SX2400 Dual Unit Tags
		gpu_01_has_warnings:Tag:'GPU01.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_02_has_warnings:Tag:'GPU02.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_01_has_alarms:Tag:'GPU01.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_02_has_alarms:Tag:'GPU01.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_01_has_critical_alarms:Tag:'GPU01.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_02_has_critical_alarms:Tag:'GPU02.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_01_out_of_service:Tag:'GPU01._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_out_of_service:Tag:'GPU02._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_01_perfect_hookup:Tag:'GPU01.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_02_perfect_hookup:Tag:'GPU02.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		gpu_01_quality:Tag:'GPU01._QUALITY',Label:'Comm Errors',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}
		gpu_02_quality:Tag:'GPU02._QUALITY',Label:'Comm Errors',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}

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
		pbb_has_warnings:Tag:'PBB.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		pbb_has_alarms:Tag:'PBB.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		pbb_has_critical_alarms:Tag:'PBB.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		pbb_out_of_service:Tag:'PBB._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_perfect_hookup:Tag:'PBB.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_quality:Tag:'PBB._QUALITY',Label:'Comm Errors',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}

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
		pbb_dock_time:Tag:'PBB.DOCKTIME',Label:'[*]Aircraft Docked Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_estop:Tag:'PBB.E_STOP',Label:'Emergency Stop',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'err',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_height_to_disp:Tag:'PBB.HEIGHTTODISP',Label:'Height',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'Height :#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pbb_hookup_time:Tag:'PBB.HOOKUPTIME',Label:'[*]PBB Hookup Time',DataType:'Float'
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
		pbb_status:Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB Status',DataType:'Boolean'
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
		pca_has_warnings:Tag:'PCA.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		pca_has_alarms:Tag:'PCA.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		pca_has_critical_alarms:Tag:'PCA.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		pca_out_of_service:Tag:'PCA._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_perfect_hookup:Tag:'PCA.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_quality:Tag:'PCA._QUALITY',Label:'Comm Errors',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}

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
		pca_dirty_filter:Tag:'PCA.Warning.DIRTYFILTER',Label:'Dirty Filter',DataType:'Boolean'
									,Parameters:{Parm001:'Yes',Parm002:'No',Parm003:'err',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_discharge_temp:Tag:'PCA.TEMPDISCH',Label:'[*]PCA Discharge Temp',DataType:'Float'
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
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_hot_gas_2:Tag:'PCA.C2_HOTGAS_CONTROL',Label:'Hot Gas Controller,Primary compressor #2',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_mode_cooling:Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_mode_heating:Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_status:Tag:'PCA.PCASTATUS',Label:'[*]PCA status',DataType:'Boolean'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_pump_cond:Tag:'PCA.PUMPCOND',Label:'Condensate pump is running',DataType:'Float'
									,Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Condensate Pump :#{1}'}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_suction_pressure_1:Tag:'PCA.C1_SUCTION_PRESSURE',Label:'Suction pressure,primary compressor #1',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_suction_pressure_2:Tag:'PCA.C2_SUCTION_PRESSURE',Label:'Suction pressure,primary compressor #2',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_time:Tag:'PCA.PCATime',Label:'[*]PCA Run Time',DataType:'Float'
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
		pca_modeofoperation:Tag:'PCA.MODEOFOPERATION',Label:'Mode',DataType:'Float'
									,Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		pca_hookup_time:Tag:'PCA.HOOKUPTIME',Label:'[*]PCA Hookup Time',DataType:'Float'
									,Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}							

		###**************************************************
		*** ELVROT Tags
		**************************************************###
		elvrot_has_warnings:Tag:'ELVROT.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		elvrot_has_alarms:Tag:'ELVROT.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		elvrot_has_critical_alarms:Tag:'ELVROT.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}
		elvrot_out_of_service:Tag:'ELVROT._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		elvrot_perfect_hookup:Tag:'ELVROT.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		elvrot_quality:Tag:'ELVROT._QUALITY',Label:'Comm Errors',DataType:'Boolean'
									,Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}

		elvrot_rotunda_status:Tag:'ELVROT.ROTUNDA_STATUS',Label:'Elevating Rotunda Status',DataType:'Value'
									,Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
		elvrot_rotunda_mode:{Tag:'ELVROT.ROTUNDA_MODE',Label:'Elevating Rotunda Operational Mode',DataType:'Value'
									,Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
		elvrot_rotunda_position_boolean:Tag:'ELVROT.ROTUNDA_POSITION_BOOLEAN',Label:'Elevating Rotunda Position',DataType:'Boolean'
									,Parameters:{Parm001:'Down Position',Parm002:'Up Position',Parm003:'ok',Parm004:null,Parm005:null}
									,Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
				
	###**************************************************
	*** Widget Tag Groups
	**************************************************###
	@widgets:
		configairport_widget: # Airport Config Widget
			Tags:{'pca_cooling_pt','pca_heating_pt','pca_cooling_tm','pca_heating_tm','gpu_perfect_hookup','pbb_perfect_hookup',
					'pca_perfect_hookup'}
			Graphics:{}
		configgate_widget: # Gate Config Widget
			Tags:{'pca_cooling_pt','pca_heating_pt','pca_cooling_tm','pca_heating_tm','gpu_perfect_hookup','pbb_perfect_hookup',
					'pca_perfect_hookup'}
			Graphics:{}
		gpu_summary_widget: # GPU Summary Widget
			Tags:{'gpu_quality','gpu_out_of_service','gpu_has_warnings','gpu_has_alarms','gpu_has_critical_alarms','gpu_status',
					'gpu_time','gpu_ra_out_avg','gpu_rv_out_avg','gpu_ra_in_avg','gpu_rv_in_avg'}
			Graphics:{
				gpu_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background',Object:null}},
			}
		gpu_widget: # GPU Widget
			Tags:{'gpu_quality','gpu_out_of_service','gpu_has_warnings','gpu_has_alarms','gpu_has_critical_alarms',
					'gpu_status','gpu_by_pass','gpu_ra_out_avg','gpu_rv_out_avg','gpu_ra_in_avg','gpu_rv_in_avg',
					'gpu_pm_output_phasea_i','gpu_pm_output_phaseb_i','gpu_pm_output_phasec_i','gpu_pm_output_phasea_v',
					'gpu_pm_output_phaseb_v','gpu_pm_output_phasec_v','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i',
					'gpu_pm_input_phasec_i','gpu_pm_input_phasea_v','gpu_pm_input_phaseb_v','gpu_pm_input_phasec_v',
					'gpu_on_1','gpu_on_2'}
			Graphics:{}
		out_of_service_widget: # Out Of Service Widget
			Tags:{'gpu_quality','gpu_out_of_service',
					'pbb_quality','pbb_out_of_service',
					'pca_quality','pca_out_of_service'}
			Graphics:{}
		pbb_detail_widget: # PBB Overview Widget
			Tags:{'pbb_quality','pbb_out_of_service','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
					'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_dock_time','pbb_undock_time'}
			Graphics:{
				aircraft_img:{ControlTags:{pbb_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'docked',Parm003:null,Parm004:'aircraft-img-bq'},Element:{Type:'div',ParentID:'#aircraft_img_container',Class:'aircraft_img',Object:null}},
				autolevel_img:{ControlTags:{pbb_autolevel_mode:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'autolevel-on',Parm003:null,Parm004:'autolevel-img-bq'},Element:{Type:'div',ParentID:'#autolevel_img_container',Class:'autolevel_img',Object:null}},
				canopy_img:{ControlTags:{pbb_canopy:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'canopy-on',Parm003:null,Parm004:'canopy-img-bq'},Element:{Type:'div',ParentID:'#canopy_img_container',Class:'canopy_img',Object:null}},
			}
		pbb_level_detail_widget: # PBB Bridge Widget
			Tags:{'pbb_quality','pbb_out_of_service','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
					'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_autolevel_key','pbb_autoleveling','pbb_estop',
					'pbb_limits','pbb_dock_time','pbb_undock_time','pbb_smoke_detector','pbb_daily_aircraft_count',
					'pbb_last_dock_time','pbb_cabin_floor_deicer','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg',
					'pbb_swing_angle_disp','pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
			Graphics:{}
		pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
			Tags:{'gpu_quality','gpu_out_of_service','gpu_has_warnings','gpu_has_alarms','gpu_has_critical_alarms',
						'gpu_status','gpu_ra_out_avg','gpu_rv_out_avg','gpu_hookup_time','gpu_time',
					'pbb_quality','pbb_out_of_service','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
						'pbb_status','pbb_hookup_time','pbb_dock_time',
					'pca_quality','pca_out_of_service','pca_has_warnings','pca_has_alarms','pca_has_critical_alarms',
						'pca_status','pca_hookup_time','pca_time','pca_discharge_temp'}
			Graphics:{}
		pbb_pca_gpu_status_widget: # PBB/PCA/GPU System Status Widget
			Tags:{'system_quality','system_out_of_service','system_perfect_hookup','gate_has_warnings','gate_has_alarms','gate_has_critical_alarms',
					'gpu_quality','gpu_out_of_service','gpu_perfect_hookup','gpu_has_warnings','gpu_has_alarms','gpu_has_critical_alarms',
						'gpu_status',
			      	'pbb_quality','pbb_out_of_service','pbb_perfect_hookup','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
			      		'pbb_docked','pbb_status',
			      	'pca_quality','pca_out_of_service','pca_perfect_hookup','pca_has_warnings','pca_has_alarms','pca_has_critical_alarms',
			      		'pca_mode_cooling','pca_mode_heating','pca_status','pca_discharge_temp'}
			Graphics:{}
		pbb_system_status_widget: # PBB System Status Widget
			Tags:{'pbb_quality','pbb_out_of_service','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
					'pbb_status','pca_status','gpu_status','pca_discharge_temp'}
			Graphics:{}
		pbb_widget: # PBB Widget
			Tags:{'pbb_quality','pbb_out_of_service','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
					'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_dock_time','pbb_undock_time'}
			Graphics:{}
		pca_discharge_widget: # PCA Discharge Widget
			Tags:{'pca_quality','pca_out_of_service','pca_has_warnings','pca_has_alarms','pca_has_critical_alarms',
					'pca_discharge_temp','pca_status','pca_mode_cooling','pca_mode_heating','pca_cooling_pt','pca_heating_pt',
					'pca_alarm_cooling_run','pca_alarm_heating_run','pca_cooling_tm','pca_heating_tm'}
			Graphics:{}
		pca_summary_widget: # PCA Summary Widget
			Tags:{'pca_quality','pca_out_of_service','pca_has_warnings','pca_has_alarms','pca_has_critical_alarms',
					'pca_ambient_humidity','pca_ambient_temp','pca_discharge_temp','pca_status','pca_time','pca_blower',
					'pca_heater_1','pca_heater_2','pca_comp_stage_1','pca_comp_stage_2','pca_bridge_damper','pca_bridge_air',
					'pca_pump_cond','pca_coil_dp','pca_vfd_speed','pca_suction_pressure_1','pca_suction_pressure_2',
					'pca_hot_gas_1','pca_hot_gas_2'},
			Graphics:{}
		pca_widget: # PCA Widget
			Tags:{'pca_quality','pca_out_of_service','pca_has_warnings','pca_has_alarms','pca_has_critical_alarms',
					'pca_cabin_temp','pca_ambient_temp','pca_discharge_temp','pca_heater_1','pca_heater_2','pca_comp_stage_1',
					'pca_comp_stage_2','pca_bridge_damper','pca_bridge_air','pca_blower','pca_suction_pressure_1',
					'pca_suction_pressure_2','pca_hot_gas_1','pca_hot_gas_2','pca_status','pca_auto'}
			Graphics:{}

	###**************************************************
	*** Equipment/Modification Tag Groups
	**************************************************###
	@groups:
		gpu_hobart_sx2400_dual_unit: 
			Tags:{'gpu_01_quality','gpu_01_out_of_service','gpu_01_has_warnings','gpu_01_has_alarms','gpu_01_has_critical_alarms',
					'gpu_02_quality','gpu_02_out_of_service','gpu_02_has_warnings','gpu_02_has_alarms','gpu_02_has_critical_alarms',
					'gpu_01_status','gpu_02_status','gpu_01_time','gpu_02_time','gpu_01_rv_out_set','gpu_02_rv_out_set',
					'gpu_01_ra_out_avg','gpu_02_ra_out_avg','gpu_01_rv_out_avg','gpu_02_rv_out_avg','gpu_01_rv_in_avg','gpu_02_rv_in_avg',
					'gpu_01_ra_in_avg','gpu_02_ra_in_avg','gpu_01_ra_out_a','gpu_02_ra_out_a','gpu_01_ra_out_b','gpu_02_ra_out_b',
					'gpu_01_ra_out_c','gpu_02_ra_out_c','gpu_01_rv_out_a','gpu_02_rv_out_a','gpu_01_rv_out_b','gpu_02_rv_out_b',
					'gpu_01_rv_out_c','gpu_02_rv_out_c'}
			Graphics:{}
	
	###**************************************************
	*** Client Tag and Graphics
	**************************************************###
	@clients:
		ATL:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
			gpu_summary_widget: # GPU Summary Widget
				remove_tags: {'gpu_ra_in_avg','gpu_rv_in_avg'}
			gpu_widget: # GPU Widget
				remove_tags: {'gpu_by_pass','gpu_ra_in_avg','gpu_rv_in_avg','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i'
				,'gpu_pm_input_phasea_v','gpu_pm_input_phaseb_v','gpu_pm_input_phasec_v','gpu_on_2'}
				add_tags: {
					gpu_mode:{Tag:'GPU.GPUMODE',Label:'GPU Mode',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				update_tags: {
					gpu_pm_output_phasea_i:{Tag:'GPU.RAOUTA',Label:'Amps Out Phase A',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_i:{Tag:'GPU.RAOUTB',Label:'Amps Out Phase B',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_i:{Tag:'GPU.RAOUTC',Label:'Amps Out Phase C',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasea_v:{Tag:'GPU.RVOUTA',Label:'Volts Out Phase A',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_v:{Tag:'GPU.RVOUTB',Label:'Volts Out Phase B',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_v:{Tag:'GPU.RVOUTC',Label:'Volts Out Phase C',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},

				}
			out_of_service_widget: # Out Of Service Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
			pbb_level_detail_widget: # PBB Bridge Widget
				remove_tags:{'pbb_terminal_door'}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_system_status_widget: # PBB Status Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'DisCharge',Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			#pbb_widget: # PBB Widget
			#pca_discharge_widget: # PCA Discharge Widget
			pca_summary_widget: # PCA Summary Widget
				update_graphics:{
					pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jbt-airhandler',Object:null}},
					blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
					heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
					cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
					cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
					accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
					bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
				}
				add_tags: {
					pca_dirty_filter_img:{Tag:'PCA.Alarm.DIRTY_FILTER',Label:'Dirty Filter',DataType:'Boolean',Parameters:{Parm001:'Yes',Parm002:'No',Parm003:'err',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_cooling_img:{Tag:'PCA.COOLINGTIMERCALC_BOOLEAN',Label:'Cooling Time',DataType:'Boolean',Parameters:{Parm001:'Yes',Parm002:'No',Parm003:'err',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				add_graphics:{
					dirty_filter_img:{ControlTags:{pca_dirty_filter_img:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'dirty-filter-on',Parm003:null,Parm004:'dirty-filter-on-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
					damper_img:{ControlTags:{pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'damper-on',Parm003:null,Parm004:'damper-on-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jbt-airhandler',Object:null}},
				}
			pca_widget: # PCA Widget
				remove_tags:{'pca_comp_stage_1','pca_comp_stage_2','pca_bridge_damper','pca_bridge_air','pca_suction_pressure_1','pca_suction_pressure_2'
					,'pca_hot_gas_1','pca_hot_gas_2'}
				add_tags: {
					pca_egw_inlet_temp:{Tag:'PCA.EGW_INLET_TEMP',Label:'EGW Valve Inlet Temp',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'2',Parm003:'#{1} F',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_egw_outlet_temp:{Tag:'PCA.EGW_OUTLET_TEMP',Label:'EGW Valve Outlet Temp',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'2',Parm003:'#{1} F',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_egw_interstage_temp:{Tag:'PCA.EGW_INTERSTAGE_TEMP',Label:'EGW Valve Interstage Temp',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'2',Parm003:'#{1} F',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_flow_meter_square:{Tag:'PCA.FLOW_METER_SQUARE',Label:'CHW Flow',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_strip_heat_on:{Tag:'PCA.STRIP_HEAT_ON',Label:'Strip Heat On',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_air_filter_dp:{Tag:'PCA.AIR_FILTER_DP',Label:'Air Filter DP',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				
				
		CID:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
			gpu_summary_widget: # GPU Summary Widget
				#remove_tags:{'gpu_ra_in_avg'}
				add_tags:{
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
					1:C3:
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
					1:C3:
						use_tags:{
							gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			out_of_service_widget: # Out Of Service Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
			pbb_level_detail_widget: # PBB Bridge Widget
				remove_tags:{'pbb_terminal_door','pbb_autolevel_key'}
				1:
					1:C3:
						remove_tags:{'pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp','pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
						add_tags:{
							pbb_autolevel_key:{Tag:'PBB.AUTOLEVELKEY',Label:'Auto Level Key',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
				1:
					1:C3:
						remove_tags:{'pca_discharge_temp','gpu_ra_out_avg','gpu_rv_out_avg'}
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_system_status_widget: # PBB Status Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'DisCharge',Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_widget: # PBB Bridge Widget
				remove_tags:{'pbb_autolevel_key','pbb_terminal_door'}
			pca_discharge_widget: # PCA Discharge Widget
				1:
					1:C3:
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
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				add_tags:{
					pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_3:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_fan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				1:
					1:C3:
						use_tags:{
							pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]PCA Discharge Temp',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			pca_widget: # PCA Widget
				remove_tags:{'pca_hot_gas_1','pca_hot_gas_2'}
				update_tags:{
					pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_modeofoperation:{Tag:'PCA.MODEOFOPERATION',Label:'Mode',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_modeovernight:{Tag:'PCA.MODEOVERNIGHT',Label:'Overnight Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				1:
					1:C3:
						use_tags:{
							pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}

		DAL:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
			#gpu_summary_widget: # GPU Summary Widget
			#gpu_widget: # GPU Widget
			out_of_service_widget: # Out Of Service Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
			#pbb_level_detail_widget: # PBB Bridge Widget
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_system_status_widget: # PBB Status Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'DisCharge',Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			#pbb_widget: # PBB Widget
			#pca_discharge_widget: # PCA Discharge Widget
			pca_summary_widget: # PCA Summary Widget
				add_graphics:{	
					pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background',Object:null}},
					blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
					heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
					heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
					cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
					cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
					accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
					bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img',Object:null}},
				}
			#pca_widget: # PCA Widget

		EWR:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
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
			out_of_service_widget: # Out Of Service Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
				C:
					1:C90:
						remove_tags:{'gpu_out_of_service','gpu_quality'}
					3:C125:
						remove_tags:{'gpu_out_of_service','gpu_quality'}
						add_tags: {
							gpu_01_out_of_service:{Tag:'GPU01._OUT_OF_SERVICE',Label:'[*]GPU-01',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							gpu_02_out_of_service:{Tag:'GPU02._OUT_OF_SERVICE',Label:'[*]GPU-02',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							gpu_01_quality:Tag:{'GPU01._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_02_quality:Tag:{'GPU02._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
						}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
			pbb_level_detail_widget: # PBB Bridge Widget
				C:
					3:C125:
						remove_tags:{'pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp'
							    ,'pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				update_tags:{
					pca_time:{Tag:'PCA.PCATime',Label:'[*]PCA Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_time:{Tag:'GPU01.GPUTime',Label:'[*]GPU-1 Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_ra_out_avg:{Tag:'GPU01.RAOUTAVG',Label:'GPU-1 Avg Output - Amps',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_rv_out_avg:{Tag:'GPU01.RVOUTAVG',Label:'GPU-1 Avg Output - Volts',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU01.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},						
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
				C:
					1:C90:
						remove_tags:{'gpu_status','gpu_time','gpu_ra_out_avg','gpu_rv_out_avg'} 
					3:C125:
						add_tags:{
							gpu_02_status:{Tag:'GPU02.GPUSTATUSBOOLEAN',Label:'GPU Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_time:{Tag:'GPU02.GPUTime',Label:'GPU-2 Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_ra_out_avg:{Tag:'GPU02.RAOUTAVG',Label:'GPU-2 Average Output - Amps',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Amps',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_rv_out_avg:{Tag:'GPU02.RVOUTAVG',Label:'GPU-2 Average Output - Volts',DataType:'Float',Parameters:{Parm001:true,Parm002:1,Parm003:'Volts',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}	
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
				C:
					1:C90:
						remove_tags:{'gpu_has_alarms','gpu_has_critical_alarms','gpu_has_warnings','gpu_perfect_hookup','gpu_out_of_service','gpu_quality','gpu_status'}
					3:C125:
						remove_tags:{'gpu_has_alarms','gpu_has_critical_alarms','gpu_has_warnings','gpu_perfect_hookup','gpu_out_of_service','gpu_quality','gpu_status'}
						add_tags: {
							gpu_01_has_warnings:{Tag:'GPU01.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_02_has_warnings:{Tag:'GPU02.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_01_has_alarms:{Tag:'GPU01.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_02_has_alarms:{Tag:'GPU01.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_02_has_critical_alarms:{Tag:'GPU02.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_01_has_critical_alarms:{Tag:'GPU01.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_01_out_of_service:{Tag:'GPU01._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_out_of_service:{Tag:'GPU02._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_01_perfect_hookup:{Tag:'GPU01.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_perfect_hookup:{Tag:'GPU02.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_01_quality:{Tag:'GPU01._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_02_quality:{Tag:'GPU02._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
							gpu_01_status:{Tag:'GPU01.GPUSTATUSBOOLEAN',Label:'GPU-1 Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_status:{Tag:'GPU02.GPUSTATUSBOOLEAN',Label:'GPU-2 Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData2',Class:null,Object:null}},
						}
			pbb_system_status_widget: # PBB Status Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'DisCharge',Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
				C:
					1:C90:
						remove_tags:{'gpu_status'}
					3:C125:
						remove_tags:{'gpu_status'}
						add_tags: {
							gpu_01_status:{Tag:'GPU01.GPUSTATUSBOOLEAN',Label:'GPU-1 Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_02_status:{Tag:'GPU02.GPUSTATUSBOOLEAN',Label:'GPU-2 Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			#pbb_widget: # PBB Widget
			#pca_discharge_widget: # PCA Discharge Widget
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
							pca_modeofoperation:{Tag:'PCA.MODEOFOPERATION',Label:'Mode',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_modeovernight:{Tag:'PCA.MODEOVERNIGHT',Label:'Overnight Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
					3:C125:
						remove_tags:{'pca_bridge_air','pca_dirty_filter','pca_suction_pressure_1','pca_suction_pressure_2'}
						add_tags:{
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}

		'HAS-IAH':
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
			gpu_summary_widget: # GPU Summary Widget
				remove_all: {}
			gpu_widget: # GPU Widget
				remove_all: {}
			out_of_service_widget: # Out Of Service Widget
				remove_tags:{'pca_out_of_service','pca_quality','gpu_out_of_service','gpu_quality'}
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},								pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
			pbb_level_detail_widget: # PBB Bridge Widget
				remove_tags:{'pbb_autoleveling','pbb_estop','pbb_limits','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp','pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}		
				add_tags:{
					pbb_floodlight:{Tag:'PBB.FLOODLIGHTS',Label:'FloodLights',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				'A':
					'SC':
						A25:	
				 			remove_tags:{'pbb_canopy','pbb_autolevel_key','pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_floodlight'}
						A27:	
				 			remove_tags:{'pbb_canopy','pbb_autolevel_key','pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_floodlight'}
						A29:	
				 			remove_tags:{'pbb_canopy','pbb_autolevel_key','pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_floodlight'}
						A30:	
				 			remove_tags:{'pbb_canopy','pbb_autolevel_key','pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_floodlight'}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				remove_tags:{'pca_status','gpu_status','pca_time','pca_hookup_time','pca_discharge_temp','gpu_time','gpu_ra_out_avg','gpu_rv_out_avg'}	
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				remove_tags:{'pca_has_alarms','pca_has_critical_alarms','pca_has_warnings','pca_perfect_hookup','pca_out_of_service','pca_quality','pca_status','pca_discharge_temp','pca_mode_cooling','pca_mode_heating'
							'gpu_has_alarms','gpu_has_critical_alarms','gpu_has_warnings','gpu_perfect_hookup','gpu_out_of_service','gpu_quality','gpu_status'}
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_system_status_widget: # PBB Status Widget
				remove_tags:{'pca_status','pca_discharge_temp','gpu_status'}
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
			#pbb_widget: # PBB Widget
			pca_discharge_widget: # PCA Discharge Widget
				remove_all: {}
			pca_summary_widget: # PCA Summary Widget
				remove_all:{}
			pca_widget: # PCA Widget
				remove_all:{}

		JFK:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
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
			out_of_service_widget: # Out Of Service Widget
				remove_tags:{'pca_out_of_service','pca_quality'}
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
				4:
					B1:B29L2:
						add_tags:{
							elvrot_out_of_service:{Tag:'ELVROT._OUT_OF_SERVICE',Label:'[*]ELVROT',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							elvrot_quality:{Tag:'ELVROT._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
						}
					B2:
						add_tags:{
							pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_quality:{Tag:'PCA._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
						}
					B3:
						add_tags:{
							pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_quality:{Tag:'PCA._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
						}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'PBB Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
				4:
					B1:B29L2:
						add_graphics:{
							elevating_img:{ControlTags:{elvrot_rotunda_position_boolean:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'down-position',Parm003:null,Parm004:'elevating-img-bq'},Element:{Type:'div',ParentID:'#elevating_img_container',Class:'elevating_img',Object:null}},
						}
						add_tags:{
							elvrot_rotunda_position_boolean:{Tag:'ELVROT.ROTUNDA_POSITION_BOOLEAN',Label:'Elevating Rotunda Position',DataType:'Boolean',Parameters:{Parm001:'Down Position',Parm002:'Up Position',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							position_container_tag:{Tag:'ELVROT.ROTUNDA_POSITION',Label:'Elevating Rotunda Position',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'div',ParentID:'#widgetImage2',Class:'val show',Object:null}},
						}
			pbb_level_detail_widget: # PBB Bridge Widget
				4:
					B1:B29L2:
						add_graphics:{
							elevating_img:{ControlTags:{elvrot_rotunda_position_boolean:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'down-position',Parm003:null,Parm004:'elevating-img-bq'},Element:{Type:'div',ParentID:'#elevating_img_container',Class:'elevating_img show',Object:null}},
						}
						add_tags:{
							elvrot_rotunda_status:{Tag:'ELVROT.ROTUNDA_STATUS',Label:'Elevating Rotunda Status',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							elvrot_rotunda_mode:{Tag:'ELVROT.ROTUNDA_MODE',Label:'Elevating Rotunda Operational Mode',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							elvrot_rotunda_position_boolean:{Tag:'ELVROT.ROTUNDA_POSITION_BOOLEAN',Label:'Elevating Rotunda Position',DataType:'Boolean',Parameters:{Parm001:'Down Position',Parm002:'Up Position',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
					B2:
					    remove_tags:{'pbb_terminal_door'}			
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				remove_tags:{'pca_status','pca_time','pca_discharge_temp','pca_hookup_time'}
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
				4:
					B1:B29L2:
						add_tags:{
							elvrot_rotunda_status:{Tag:'ELVROT.ROTUNDA_STATUS',Label:'Elevating Rotunda Status',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
					B2:	
						update_tags:{
							pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]PCA Discharge Temp',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_time:{Tag:'PCA.PCATime',Label:'[*]PCA Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_hookup_time:Tag:'PCA.HOOKUPTIME',Label:'[*]PCA Hookup Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
						}
					B3:	
						update_tags:{
							pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]PCA Discharge Temp',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_time:{Tag:'PCA.PCATime',Label:'[*]PCA Run Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_hookup_time:Tag:'PCA.HOOKUPTIME',Label:'[*]PCA Hookup Time',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}
						}	
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				remove_tags:{'pca_has_alarms','pca_has_critical_alarms','pca_has_warnings','pca_perfect_hookup','pca_out_of_service','pca_quality','pca_status','pca_discharge_temp','pca_mode_cooling','pca_mode_heating'}
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
				4:
					B1:B29L2:
						add_tags:{
							elvrot_has_warnings:{Tag:'ELVROT.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							elvrot_has_alarms:{Tag:'ELVROT.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							elvrot_has_critical_alarms:{Tag:'ELVROT.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							elvrot_out_of_service:{Tag:'ELVROT._OUT_OF_SERVICE',Label:'Out Of Service',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
							elvrot_perfect_hookup:{Tag:'ELVROT.Calc_PerfectHookupTime',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
							elvrot_quality:{Tag:'ELVROT._QUALITY',Label:'Comm Errors',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'no_row',Object:null}},
							elvrot_rotunda_status:{Tag:'ELVROT.ROTUNDA_STATUS',Label:'[*]Elev. Rot.',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:null,ParentID:null,Class:'ElvRot',Object:null}},
						}
					B3:
						add_tags:{
							pca_has_warnings:{Tag:'PCA.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							pca_has_alarms:{Tag:'PCA.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							pca_has_critical_alarms:{Tag:'PCA.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
						}
					B2:	
						add_tags:{
							pca_has_warnings:{Tag:'PCA.Warning._HasWarnings',Label:'Warnings',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							pca_has_alarms:{Tag:'PCA.Alarm._HasAlarms',Label:'Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							pca_has_critical_alarms:{Tag:'PCA.Alarm._HasCriticalAlarms',Label:'Critical Alarms',DataType:'Boolean',Parameters:{Parm001:'True',Parm002:'False',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'Alert',ParentID:'#widgetData',Class:'no_row',Object:null}},
							pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
						}
			pbb_system_status_widget: # PBB Status Widget
				remove_tags:{'pca_status','pca_discharge_temp'}
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},

					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.OPERATEKEY',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
				4:
					B1:B29L2:
						add_tags:{
							elvrot_rotunda_status:{Tag:'ELVROT.ROTUNDA_STATUS',Label:'[*]Elev. Rot.',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'ElvRot',Object:null}},
						}
					B2:
						add_tags:{
							pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
						}	
					B3:	
						add_tags:{
							pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
							pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
							pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
						}
			pbb_widget: # PBB Bridge Widget
				4:
					B1:B29L2:
						add_tags:{
							elvrot_rotunda_position:{Tag:'ELVROT.ROTUNDA_POSITION',Label:'Elevating Rotunda Position',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			#pca_discharge_widget: # PCA Discharge Widget
			pca_summary_widget: # PCA Summary Widget
				4:
					B2:
						update_graphics:{
							pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-100',Object:null}},
							blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_4_img:{ControlTags:{pca_heater_4:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-4-on',Parm003:null,Parm004:'heating-stage-4-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							heating_stage_5_img:{ControlTags:{pca_heater_5:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-5-on',Parm003:null,Parm004:'heating-stage-5-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_1_img:{ControlTags:{pca_comp_stage_2_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_2_img:{ControlTags:{pca_comp_stage_1_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							cooling_stage_4_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-4-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
							bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
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
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							pca_heater_4:{Tag:'PCA.HEAT4',Label:'Heater #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_5:{Tag:'PCA.HEAT5',Label:'Heater #5',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_1:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_2:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_3:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_4:{Tag:'PCA.FANCONDREARSEC',Label:'Fan #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1_sec:{Tag:'PCA.COMPSEC1',Label:'Secondary compressor #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2_sec:{Tag:'PCA.COMPSEC2',Label:'Secondary compressor #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_dirtyfilter:{Tag:'PCA.Alarm.DIRTY_AIR_FILTER',Label:'Dirty Filter',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							pca_bridge_damper:{Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_blower:{Tag:'PCA.BLOWER',Label:'Blower Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						B33:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-twist-75',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								filter_img:{ControlTags:{pca_dirtyfilter:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filter-on',Parm003:null,Parm004:'filter-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							}
							remove_graphics:{'heating_stage_4_img','heating_stage_5_img','cooling_stage_4_img','fan_3_img','fan_4_img'}
							remove_tags:{'pca_heater_4','pca_heater_5','pca_fan_3','pca_fan_4','pca_comp_stage_1_sec','pca_comp_stage_2_sec','pca_ambient_humidity','pca_coil_dp','pca_hot_gas_1','pca_hot_gas_2'}
						B35:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-twist-75',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								filter_img:{ControlTags:{pca_dirtyfilter:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filter-on',Parm003:null,Parm004:'filter-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							}
							remove_graphics:{'heating_stage_4_img','heating_stage_5_img','cooling_stage_4_img','fan_3_img','fan_4_img'}
							remove_tags:{'pca_heater_4','pca_heater_5','pca_fan_3','pca_fan_4','pca_comp_stage_1_sec','pca_comp_stage_2_sec','pca_ambient_humidity','pca_coil_dp','pca_hot_gas_1','pca_hot_gas_2'}
						B36:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-twist-75',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
								filter_img:{ControlTags:{pca_dirtyfilter:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filter-on',Parm003:null,Parm004:'filter-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-twist-75',Object:null}},
							}
							remove_graphics:{'heating_stage_4_img','heating_stage_5_img','cooling_stage_4_img','fan_3_img','fan_4_img'}
							remove_tags:{'pca_heater_4','pca_heater_5','pca_fan_3','pca_fan_4','pca_comp_stage_1_sec','pca_comp_stage_2_sec','pca_ambient_humidity','pca_coil_dp','pca_hot_gas_1','pca_hot_gas_2'}
					B3:
						update_graphics:{
							pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetair-xpc-3013',Object:null}},
							blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							fan_3_img:{ControlTags:{pca_fan_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-3-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
						}
						remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2'}
						update_tags:{
							pca_heater_1:{Tag:'PCA.HEATER1',Label:'Heater #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_2:{Tag:'PCA.HEATER2',Label:'Heater #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							pca_bridge_damper:{Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_blower:{Tag:'PCA.BLOWER',Label:'Blower Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_3:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			pca_widget: # PCA Widget
				remove_tags:{'pca_cabin_temp','pca_ambient_temp','pca_discharge_temp','pca_heater_1','pca_heater_2','pca_comp_stage_1','pca_comp_stage_2'
					,'pca_bridge_damper','pca_bridge_air','pca_dirty_filter','pca_blower','pca_suction_pressure_1','pca_suction_pressure_2'
					,'pca_hot_gas_1','pca_hot_gas_2','pca_status'}
				4:
					B2:
						update_tags:{
							pca_cabin_temp:{Tag:'PCA.TEMPCABIN',Label:'Cabin Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]PCA Discharge Temp',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_4:{Tag:'PCA.HEAT4',Label:'Heater #4 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_5:{Tag:'PCA.HEAT5',Label:'Heater #5 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_pri_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_pri_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_sec_1:{Tag:'PCA.COMPSEC1',Label:'Secondary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_sec_2:{Tag:'PCA.COMPSEC2',Label:'Secondary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_damper:{Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_blower:{Tag:'PCA.BLOWER',Label:'Blower Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_sec_1:{Tag:'PCA.PRESSSUCSEC1',Label:'Suction pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_sec_2:{Tag:'PCA.PRESSSUCSEC2',Label:'Suction pressure,secondary compressor #2',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1:{Tag:'PCA.PRESSHEADPRI1',Label:'Head pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_2:{Tag:'PCA.PRESSHEADPRI2',Label:'Head pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1_sec:{Tag:'PCA.PRESSHEADSEC1',Label:'Head pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_2_sec:{Tag:'PCA.PRESSHEADSEC2',Label:'Head pressure,secondary compressor #2',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_modeofoperation:{Tag:'PCA.MODEOFOPERATION',Label:'Mode',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_modeovernight:{Tag:'PCA.MODEOVERNIGHT',Label:'Overnight Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}	
					B3:
						update_tags:{
							pca_cabin_temp:{Tag:'PCA.TEMPCABIN',Label:'Cabin Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_ambient_temp:{Tag:'PCA.TEMPAMB',Label:'Ambient Air Temperature',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]PCA Discharge Temp',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_1:{Tag:'PCA.HEATER1',Label:'Heater #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_2:{Tag:'PCA.HEATER2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_pri_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_pri_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_sec_1:{Tag:'PCA.COMPSEC1',Label:'Secondary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_sec_2:{Tag:'PCA.COMPSEC2',Label:'Secondary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_damper:{Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_blower:{Tag:'PCA.BLOWER',Label:'Blower Status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_sec_1:{Tag:'PCA.PRESSSUCSEC1',Label:'Suction pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1:{Tag:'PCA.PRESSHEADPRI1',Label:'Head pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_pressure_head_1_sec:{Tag:'PCA.PRESSHEADSEC1',Label:'Head pressure,secondary compressor #1',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_modeofoperation:{Tag:'PCA.MODEOFOPERATION',Label:'Mode',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_modeovernight:{Tag:'PCA.MODEOVERNIGHT',Label:'Overnight Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}		
		
		PHX:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
			#gpu_summary_widget: # GPU Summary Widget
			#gpu_widget: # GPU Widget
			out_of_service_widget: # Out Of Service Widget
				remove_tags:{'pbb_out_of_service','pbb_quality','gpu_out_of_service','gpu_quality'}
				update_tags:{
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			#pbb_detail_widget: # PBB Overview Widget
			#pbb_level_detail_widget: # PBB Bridge Widget
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				remove_tags:{'pbb_status','gpu_status','pbb_hookup_time','gpu_hookup_time','pbb_dock_time','gpu_time','gpu_ra_out_avg','gpu_rv_out_avg'}	
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				remove_tags:{'pbb_has_alarms','pbb_has_critical_alarms','pbb_has_warnings','pbb_perfect_hookup','pbb_out_of_service','pbb_quality','pbb_status','pbb_docked','pca_mode_cooling','pca_mode_heating',
							'gpu_has_alarms','gpu_has_critical_alarms','gpu_has_warnings','gpu_perfect_hookup','gpu_out_of_service','gpu_quality','gpu_status'}
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_system_status_widget: # PBB Status Widget
				remove_tags:{'pbb_status','gpu_status'}
				update_tags:{
					#pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					#gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'DisCharge',Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			#pbb_widget: # PBB Widget
			pca_discharge_widget: # PCA Discharge Widget
				4:
					D:D1:
						use_tags:{
							pca_status:{Tag:'PCA.PCASTATUS',Label:'PCA status',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:'err',Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
			pca_summary_widget: # PCA Summary Widget
				update_graphics:{# TBD: update gfx  Note: !!Controltags Parameter004 .. ending with bq is the bad quality class name .. currently not used!! 
					pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background SJ_90',Object:null}},
					blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:Class:'img SJ_90',Object:null}},
					bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
				}
				add_graphics:{
					heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					filter_img:{ControlTags:{pca_dirtyfilter:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filter-on',Parm003:null,Parm004:'filter-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
					cooling_stage_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'comp-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cond_coil_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cond-coil-1-on',Parm003:null,Parm004:'cond-coil-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cond_coil_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cond-coil-2-on',Parm003:null,Parm004:'cond-coil-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cond_coil_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cond-coil-3-on',Parm003:null,Parm004:'cond-coil-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					evap_coil_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'evap-coil-1-on',Parm003:null,Parm004:'evap-coil-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					evap_coil_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'evap-coil-2-on',Parm003:null,Parm004:'evap-coil-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					evap_coil_3_img:{ControlTags:{pca_comp_stage_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'evap-coil-3-on',Parm003:null,Parm004:'evap-coil-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cfan_1_img:{ControlTags:{pca_cfan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cfan-1-on',Parm003:null,Parm004:'cfan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cfan_2_img:{ControlTags:{pca_cfan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cfan-2-on',Parm003:null,Parm004:'cfan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
					cfan_3_img:{ControlTags:{pca_cfan_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cfan-3-on',Parm003:null,Parm004:'cfan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img SJ_90',Object:null}},
				}
				remove_tags:{'pca_hot_gas_1','pca_hot_gas_2','pca_ambient_humidity','pca_coil_dp','pca_vfd_speed'}
				update_tags:{
					pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_bridge_damper:{Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Cool is on',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Cool is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				add_tags:{
					pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_3:{Tag:'PCA.PRESSSUCPRI3',Label:'Suction pressure,primary compressor #3',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_headpri1:{Tag:'PCA.PRESSHEADPRI1',Label:'Head pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_headpri2:{Tag:'PCA.PRESSHEADPRI2',Label:'Head pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_headpri3:{Tag:'PCA.PRESSHEADPRI3',Label:'Head pressure, secondary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_cfan_3:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_cfan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_cfan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
			pca_widget: # PCA Widget
				remove_tags:{'pca_hot_gas_1','pca_hot_gas_2'}
				update_tags:{
					pca_heater_1:{Tag:'PCA.HEAT1',Label:'Heater #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_2:{Tag:'PCA.HEAT2',Label:'Heater #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_1:{Tag:'PCA.PRESSSUCPRI1',Label:'Suction pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_2:{Tag:'PCA.PRESSSUCPRI2',Label:'Suction pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_bridge_damper:{Tag:'PCA.BRIDGE_DAMPER_POSITION',Label:'Aircraft Cool is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_bridge_air:{Tag:'PCA.BRIDGE_AIR',Label:'Bridge Cool is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				add_tags:{
					pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_suction_pressure_3:{Tag:'PCA.PRESSSUCPRI3',Label:'Suction pressure,primary compressor #3',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_headpri1:{Tag:'PCA.PRESSHEADPRI1',Label:'Head pressure,primary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_headpri2:{Tag:'PCA.PRESSHEADPRI2',Label:'Head pressure,primary compressor #2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_headpri3:{Tag:'PCA.PRESSHEADPRI3',Label:'Head pressure, secondary compressor #1',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_blowercurrent:{Tag:'PCA.BLOWERCURRENT',Label:'Blower Current',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_unitcurrent:{Tag:'PCA.UNITCURRENT',Label:'Unit Current',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_modeofoperation:{Tag:'PCA.MODEOFOPERATION',Label:'Mode',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				4:
					D:D1:
						add_tags:{
							pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_suction_pressure_3:{Tag:'PCA.PRESSSUCPRI3',Label:'Suction pressure,primary compressor #3',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						
						}

		RDU:
			#configairport_widget: # Airport Config Widget
			#configgate_widget: # Gate Config Widget
			gpu_summary_widget: # GPU Summary Widget
				2:
					C: 
						remove_tags:{'gpu_ra_in_avg'}
					D:
						D17:
							add_tags:{
								gpu_amps_out_average_2:{Tag:'GPU.RA2OUTAVG',Label:'Amps Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_average_2:{Tag:'GPU.RV2OUTAVG',Label:'Volts Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						D20:
							add_tags:{
								gpu_amps_out_average_2:{Tag:'GPU.RA2OUTAVG',Label:'Amps Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_average_2:{Tag:'GPU.RV2OUTAVG',Label:'Volts Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			gpu_widget: # GPU Widget
				2:
					C:
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
					D:
						update_tags:{
							gpu_on_1:{Tag:'GPU.ON1',Label:'Contactor 1 ON',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_on_2:{Tag:'GPU.ON2',Label:'Contactor 1 ON',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_output_phasea_i:{Tag:'GPU.RAOUTA',Label:'Amps Out Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Amps',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_output_phaseb_i:{Tag:'GPU.RAOUTB',Label:'Amps Out Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Amps',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_output_phasec_i:{Tag:'GPU.RAOUTC',Label:'Amps Out Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Amps',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_output_phasea_v:{Tag:'GPU.RVOUTA',Label:'Volts Out Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_output_phaseb_v:{Tag:'GPU.RVOUTB',Label:'Volts Out Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_output_phasec_v:{Tag:'GPU.RVOUTC',Label:'Volts Out Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_input_phasea_v:{Tag:'GPU.RVINA',Label:'Volts In Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_input_phaseb_v:{Tag:'GPU.RVINB',Label:'Volts In Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_input_phasec_v:{Tag:'GPU.RVINC',Label:'Volts In Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_input_phasea_i:{Tag:'GPU.RAINA',Label:'Amps In Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_input_phaseb_i:{Tag:'GPU.RAINB',Label:'Amps In Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							gpu_pm_input_phasec_i:{Tag:'GPU.RAINC',Label:'Amps In Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						D17:
							add_tags:{
								gpu_amps_out_phase_A_2:{Tag:'GPU.RA2OUTA',Label:'Amps Out Phase A_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_amps_out_phase_B_2:{Tag:'GPU.RA2OUTB',Label:'Amps Out Phase B_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_amps_out_phase_C_2:{Tag:'GPU.RA2OUTC',Label:'Amps Out Phase C_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_phase_A_2:{Tag:'GPU.RV2OUTA',Label:'Volts Out Phase A_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_phase_B_2:{Tag:'GPU.RV2OUTB',Label:'Volts Out Phase B_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_phase_C_2:{Tag:'GPU.RV2OUTC',Label:'Volts Out Phase C_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_amps_out_average_2:{Tag:'GPU.RA2OUTAVG',Label:'Amps Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_average_2:{Tag:'GPU.RV2OUTAVG',Label:'Volts Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						D20:
							add_tags:{
								gpu_amps_out_phase_A_2:{Tag:'GPU.RA2OUTA',Label:'Amps Out Phase A_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_amps_out_phase_B_2:{Tag:'GPU.RA2OUTB',Label:'Amps Out Phase B_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_amps_out_phase_C_2:{Tag:'GPU.RA2OUTC',Label:'Amps Out Phase C_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_phase_A_2:{Tag:'GPU.RV2OUTA',Label:'Volts Out Phase A_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_phase_B_2:{Tag:'GPU.RV2OUTB',Label:'Volts Out Phase B_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_phase_C_2:{Tag:'GPU.RV2OUTC',Label:'Volts Out Phase C_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_amps_out_average_2:{Tag:'GPU.RA2OUTAVG',Label:'Amps Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_average_2:{Tag:'GPU.RV2OUTAVG',Label:'Volts Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			out_of_service_widget: # Out Of Service Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			pbb_detail_widget: # PBB Overview Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'PBB Status',DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'div',ParentID:'#pbb_status_container',Class:'val transparent',Object:null}},
					pbb_undock_time:{Tag:'PBB.UNDOCKTIME',Label:null,DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:'div',ParentID:'#pbb_undockordocktime_container',Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_dock_time:{Tag:'PBB.DOCKTIME',Label:'Aircraft Docked Time (Minutes)',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'mins',Parm004:null},Element:{Type:null,ParentID:null,Class:'pbb_undockordocktime val transparent',Object:null}},
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'Autolevel',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:'Auto-Level : #{1}'},Element:{Type:'div',ParentID:'#pbb_autolevel_container',Class:'val transparent',Object:null}},
					pbb_canopy:{Tag:'PBB.CANOPYDOWN',Label:'Canopy',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:'Canopy : #{1}'},Element:{Type:'div',ParentID:'#pbb_canopy_container',Class:'val transparent',Object:null}},
				}
			pbb_level_detail_widget: # PBB Bridge Widget
				remove_tags:{'pbb_autolevel_key','pbb_smoke_detector','pbb_cabin_floor_deicer','pbb_terminal_door','pbb_slope_deg','pbb_tunnel_length'}
				update_tags:{
					pbb_autolevel_mode:{Tag:'PBB.AUTOLEVELMODEFLAG',Label:'Auto-Level',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
				2:
					D:
						D17:
							add_tags:{
								gpu_amps_out_average_2:{Tag:'GPU.RA2OUTAVG',Label:'Amps Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_average_2:{Tag:'GPU.RV2OUTAVG',Label:'Volts Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						D20:
							add_tags:{
								gpu_amps_out_average_2:{Tag:'GPU.RA2OUTAVG',Label:'Amps Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								gpu_volts_out_average_2:{Tag:'GPU.RV2OUTAVG',Label:'Volts Out Average_2',DataType:'Float',Parameters:{Parm001:false,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pbb_pca_gpu_status_widget: # PBB/PCA/GPU Widget
				update_tags:{
					system_perfect_hookup:{Tag:'System.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_out_of_service:{Tag:'System._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					system_quality:{Tag:'System._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_perfect_hookup:{Tag:'PBB.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_quality:{Tag:'PBB._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_docked:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]Docked',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'Docked',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'',Parm002:'',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_perfect_hookup:{Tag:'GPU.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_quality:{Tag:'GPU._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_perfect_hookup:{Tag:'PCA.PERFECT_HOOKUP',Label:'Perfect Hookup',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_quality:{Tag:'PCA._QUALITY',Label:'Bad Quality',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			pbb_system_status_widget: # PBB Status Widget
				update_tags:{
					pbb_status:{Tag:'PBB.AIRCRAFTDOCKEDCALCULATION',Label:'[*]PBB',LebelOverride:true,DataType:'Boolean',Parameters:{Parm001:'Docked',Parm002:'UnDocked',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_status:{Tag:'GPU.GPUSTATUSBOOLEAN',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_status:{Tag:'PCA.PCASTATUS',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					pca_discharge_temp:{Tag:'PCA.TEMPDISCH',Label:'[*]DisCharge',DataType:'Float',Parameters:{Parm001:true,Parm002:2,Parm003:'#{1} F',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:'DisCharge',Object:null}},
					pca_mode_cooling:{Tag:'PCA.MODE_COOLING',Label:'Cooling Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					pca_mode_heating:{Tag:'PCA.MODE_HEATING',Label:'Heating Mode',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			#pbb_widget: # PBB Widget
			#pca_discharge_widget: # PCA Discharge Widget
			pca_summary_widget: # PCA Summary Widget
				#D: PDX-15:3,5,6,9-15,18 PDX-10:8,16 PDX-40:17,20 PDX-25:19
				#C: 30-TON:1,3,7-12,15-18,21,22 20-TON:14,20 60-TON:24 100-TON:23,25
				2:
					C:
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
							pca_bridge_damper:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_START',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_bridge_air:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_STOP',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						add_tags:{
							pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_3:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						# 60 TON Graphics for Gate 24	
						C24:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-60',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-60',Object:null}},
							}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_heater_3','pca_comp_stage_3','pca_fan_3','pca_fan_2','pca_fan_1'}
							remove_graphics:{'fan_1_img','fan_2_img','fan_3_img'}

						# 20 TON Graphics for Gate 14,20
						C14:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-20',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
							}
							remove_graphics:{'fan_3_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_hot_gas_1','pca_hot_gas_2','pca_fan_3'}
							update_tags:{
								pca_comp_stage_1:{Tag:'PCA.DO_COMPRESSOR_PRI',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.DO_COMPRESSOR_SEC',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						C20:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-20',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-20',Object:null}},
							}
							remove_graphics:{'fan_3_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_hot_gas_1','pca_hot_gas_2','pca_fan_3'}
							update_tags:{
								pca_comp_stage_1:{Tag:'PCA.DO_COMPRESSOR_PRI',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.DO_COMPRESSOR_SEC',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						# 100 TON Graphics for Gate 23,25
						C23:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-100',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_2_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_1_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								fan_3_img:{ControlTags:{pca_fan_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-3-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},		
							}
							add_graphics:{
								heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_4_img:{ControlTags:{pca_heater_4:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-4-on',Parm003:null,Parm004:'heating-stage-4-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_5_img:{ControlTags:{pca_heater_5:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-5-on',Parm003:null,Parm004:'heating-stage-5-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_4_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-4-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
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
								pca_fan_1:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_fan_2:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_fan_3:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							}
							add_tags:{
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
								pca_fan_4:{Tag:'PCA.FANCONDREARSEC',Label:'Fan #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_dirtyfilter:{Tag:'PCA.Warning.DIRTYFILTER',Label:'Dirty Filter',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							}		
						C25:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background jetway-100',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_2_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_1_sec:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								bccool_img:{ControlTags:{pca_bridge_air:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'bc-cool-on',Parm003:null,Parm004:'bc-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								fan_3_img:{ControlTags:{pca_fan_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-3-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},		
							}
							add_graphics:{
								heating_stage_3_img:{ControlTags:{pca_heater_3:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_4_img:{ControlTags:{pca_heater_4:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-4-on',Parm003:null,Parm004:'heating-stage-4-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								heating_stage_5_img:{ControlTags:{pca_heater_5:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-5-on',Parm003:null,Parm004:'heating-stage-5-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
								cooling_stage_4_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-4-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetway-100',Object:null}},
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
								pca_fan_1:{Tag:'PCA.FANCONDFRONTPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_fan_2:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_fan_3:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_heater_3:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							}
							add_tags:{
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
								pca_fan_4:{Tag:'PCA.FANCONDREARSEC',Label:'Fan #4',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_dirtyfilter:{Tag:'PCA.Warning.DIRTYFILTER',Label:'Dirty Filter',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},	
							}
					D:	
						update_graphics:{
							pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-pdx-15',Object:null}},
							blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-15',Object:null}},
							heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-15',Object:null}},
							heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-15',Object:null}},
							cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-15',Object:null}},
							cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-15',Object:null}},
							accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-15',Object:null}},
						}
						remove_graphics: {'bccool_img'}
						add_graphics:{
							fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-1-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							fan_2_img:{ControlTags:{pca_fan_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fan-2-on',Parm003:null,Parm004:'fan-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							filters_img:{ControlTags:{pca_filters:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filters-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
						}
						remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_bridge_air'}
						add_tags:{
							pca_filters:{Tag:'PCA.FANCONDFRONTPRI',Label:'Filters',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_2:{Tag:'PCA.FANCONDFRONTSEC',Label:'Fan #2',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							pca_fan_1:{Tag:'PCA.FANCONDREARPRI',Label:'Fan #1',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
						# PDX-10 Graphics for Gate 8,16
						D8:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-pdx-10',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								filters_img:{ControlTags:{pca_filters:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filters-on',Parm003:null,Parm004:'fan-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img jetair-xpc-3013',Object:null}},
							}
							add_graphics:{
								evap_coil_img:{ControlTags:{pca_evap_coil:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'evap-coil-on',Parm003:null,Parm004:'evap-coil-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
							}
							remove_graphics: {'bccool_img','fan_1_img','fan_2_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_bridge_air','pca_fan_1','pca_fan_2'}
							update_tags:{
								pca_bridge_damper:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_START',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
							add_tags:{
								pca_evap_coil:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						D16:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-pdx-10',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
								filters_img:{ControlTags:{pca_filters:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filters-on',Parm003:null,Parm004:'filters-on-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
							}
							add_graphics:{
								evap_coil_img:{ControlTags:{pca_evap_coil:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'evap-coil-on',Parm003:null,Parm004:'evap-coil-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-10',Object:null}},
							}
							remove_graphics: {'bccool_img','fan_1_img','fan_2_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_bridge_air','pca_fan_1','pca_fan_2'}
							update_tags:{
								pca_bridge_damper:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_START',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
							add_tags:{
								pca_evap_coil:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						# PDX-25s Graphics for Gate 19
						D19:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-pdx-25',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								filters_img:{ControlTags:{pca_filters:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filters-on',Parm003:null,Parm004:'filters-on-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fans-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
							}
							add_graphics:{
								heating_stage_3_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-25',Object:null}},
							}
							remove_graphics: {'bccool_img','fan_2_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_bridge_air','pca_fan_2'}
							update_tags:{
								pca_bridge_damper:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_START',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
							add_tags:{
								pca_fan_1:{Tag:'PCA.HEAT3',Label:'Heater #3',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_heater_3:{Tag:'PCA.HEATER3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}	
						# PDX-40 Graphics for Gate 17,20
						D17:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-pdx-40',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								filters_img:{ControlTags:{pca_filters:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filters-on',Parm003:null,Parm004:'filters-on-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fans-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
							}
							add_graphics:{
								heating_stage_3_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
							}
							remove_graphics: {'bccool_img','fan_2_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_bridge_air','pca_fan_2'}
							update_tags:{
								pca_bridge_damper:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_START',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
							add_tags:{
								pca_heater_3:{Tag:'PCA.HEATER3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
						D20:
							update_graphics:{
								pca_main_background:{ControlTags:{none:null},Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null},Element:{Type:'div',ParentID:'#graphics_container',Class:'background inet-pdx-40',Object:null}},
								blower_img:{ControlTags:{pca_blower:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'blower-on',Parm003:null,Parm004:'blower-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								heating_stage_1_img:{ControlTags:{pca_heater_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-1-on',Parm003:null,Parm004:'heating-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								heating_stage_2_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-2-on',Parm003:null,Parm004:'heating-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								cooling_stage_1_img:{ControlTags:{pca_comp_stage_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-1-on',Parm003:null,Parm004:'cooling-stage-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								cooling_stage_2_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-2-on',Parm003:null,Parm004:'cooling-stage-2-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								accool_img:{ControlTags:{pca_bridge_damper:'Boolean',pca_status:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'ac-cool-on',Parm003:null,Parm004:'ac-cool-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								filters_img:{ControlTags:{pca_filters:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'filters-on',Parm003:null,Parm004:'filters-on-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								fan_1_img:{ControlTags:{pca_fan_1:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'fans-on',Parm003:null,Parm004:'fan-1-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
							}
							add_graphics:{
								heating_stage_3_img:{ControlTags:{pca_heater_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'heating-stage-3-on',Parm003:null,Parm004:'heating-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
								cooling_stage_3_img:{ControlTags:{pca_comp_stage_2:'Boolean'},Parameters:{Parm001:'ALL_TRUE',Parm002:'cooling-stage-3-on',Parm003:null,Parm004:'cooling-stage-3-bq'},Element:{Type:'div',ParentID:'#dynamic_pca_main_background',Class:'img inet-pdx-40',Object:null}},
							}
							remove_graphics: {'bccool_img','fan_2_img'}
							remove_tags:{'pca_ambient_humidity','pca_coil_dp','pca_vfd_speed','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2','pca_bridge_air','pca_fan_2'}
							update_tags:{
								pca_bridge_damper:{Tag:'PCA.DI_STATUS_BRIDGE_AIR_START',Label:'Bridge Damper',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_1:{Tag:'PCA.COMPPRI1',Label:'Primary compressor #1 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_2:{Tag:'PCA.COMPPRI2',Label:'Primary compressor #2 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
							add_tags:{
								pca_heater_3:{Tag:'PCA.HEATER3',Label:'Heater #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
								pca_comp_stage_3:{Tag:'PCA.COMPPRI3',Label:'Primary compressor #3 is running',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
							}
			pca_widget: # PCA Widget
				2:
					C:
						remove_tags:{'pca_bridge_damper','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2'}
						update_tags:{
							pca_modeovernight:{Tag:'PCA.MODE_OVERNIGHT',Label:'Overnight Mode',DataType:'Boolean',Parameters:{Parm001:'On',Parm002:'Off',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
						}
					D:	
						remove_tags:{'pca_bridge_damper','pca_ambient_humidity','pca_hot_gas_1','pca_hot_gas_2'}
		SNA:
			pbb_pca_gpu_basic_widget: # PBB_PCA_GPU Widget
				remove_tags:{'gpu_ra_out_avg'}
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			#pbb_pca_gpu_status_widget: # PBB/PCA/GPU System Status Widget
				update_tags:{
					pbb_out_of_service:{Tag:'PBB._OUT_OF_SERVICE',Label:'[*]PBB Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA Out of Service',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:'no_row',Object:null}},
				}
			#pbb_system_status_widget: # PBB Status Widget
			#pbb_widget: # PBB Widget
			pca_discharge_widget: # PCA Discharge Widget
				remove_tags: {'pca_mode_cooling','pca_mode_heating','pca_alarm_cooling_run','pca_alarm_heating_run'}	
			#pca_summary_widget: # PCA Summary Widget
			pca_widget: # PCA Widget
				remove_tags:{'pca_cabin_temp','pca_ambient_temp','pca_heater_1','pca_heater_2','pca_bridge_damper','pca_bridge_air'}
			out_of_service_widget: # Out Of Service Widget
				remove_tags:{'pbb_out_of_service','pbb_quality'}
				update_tags:{
					pca_out_of_service:{Tag:'PCA._OUT_OF_SERVICE',Label:'[*]PCA',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
					gpu_out_of_service:{Tag:'GPU._OUT_OF_SERVICE',Label:'[*]GPU',DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null},Element:{Type:null,ParentID:null,Class:null,Object:null}},
				}
			#pbb_detail_widget: # PBB Overview Widget
			pbb_level_detail_widget: # PBB Bridge Widget
				remove_tags: {'pbb_terminal_door','pbb_slope_deg'}
			gpu_summary_widget: # GPU Summary Widget
				remove_tags:{'gpu_ra_out_avg','gpu_rv_in_avg'}
			gpu_widget: # GPU Widget
				remove_tags:{'gpu_ra_out_avg','gpu_ra_in_avg','gpu_rdc_amps','gpu_rdc_volts','gpu_pm_output_phasea_i','gpu_pm_output_phaseb_i','gpu_pm_output_phasec_i','gpu_pm_input_phasea_i','gpu_pm_input_phaseb_i','gpu_pm_input_phasec_i'}
				update_tags:{
					gpu_by_pass:Tag:{'GPU.BYPASs',Label:'ByPass',DataType:'Boolean',Parameters:{Parm001:'Down',Parm002:'Up',Parm003:'ok',Parm004:null,Parm005:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasea_v:{Tag:'GPU.RVOUTA',Label:'Volts Out Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phaseb_v:{Tag:'GPU.RVOUTB',Label:'Volts Out Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_output_phasec_v:{Tag:'GPU.RVOUTC',Label:'Volts Out Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phasea_v:{Tag:'GPU.RVINA',Label:'Volts In Phase A',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phaseb_v:{Tag:'GPU.RVINB',Label:'Volts In Phase B',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
					gpu_pm_input_phasec_v:{Tag:'GPU.RVINC',Label:'Volts In Phase C',DataType:'Float',Parameters:{Parm001:'TRUE',Parm002:'1',Parm003:'Volts',Parm004:''},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
				}
				add_tags:{
					gpu_mode:{Tag:'GPU.GPUMODE',Label:'GPU Mode',DataType:'Value',Parameters:{Parm001:false,Parm002:null,Parm003:'#{1}',Parm004:null},Element:{Type:'TableRow',ParentID:'#widgetData',Class:null,Object:null}},
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
			modList = ["remove_all","remove_tags","add_tags","update_tags","use_tags"]
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
								when "#{modList.slice(4,5)}"
									if !remove_all
										found_use = true
										@TagData = []
										for key,data of property
											@TagData[key] = data
								when "#{modList.slice(2,3)}","#{modList.slice(3,4)}" 
									if !found_use && !remove_all
										for key,data of property
											@TagData[key] = data
								when "#{modList.slice(1,2)}"
									if !found_use && !remove_all
										for key,data of property
											delete @TagData[key]
								when "#{modList.slice(0,1)}"
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
