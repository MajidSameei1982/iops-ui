Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class GpuWidgetView extends IOPSWidgetView
  template:   "widgets/gpu_widget"
  className: 'widget-outer box box-primary gpu_widget'
  ui:
    terminal:       'input#terminal'
    zone:           'input#zone'
    display_prefix: 'input#display_prefix'
    gate:           'input#gate'
    site:           'select#site'
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    docked:         'i#docked'
    alarms:         'i#alarms'
    warnings:       'i#warnings'

  @layout:
    sx: 6
    sy: 10

  tags:
    gpu_gpustatus:                  'GPU.GPUSTATUS'
    gpu_contstatus:                 'GPU.CONTSTATUS'
    gpu_bypass:                     'GPU.ByPass'
    gpu_raoutavg:                   'GPU.RAOUTAVG'
    gpu_rvoutavg:                   'GPU.RVOUTAVG'
    gpu_ravinavg:                   'GPU.RAVINAVG'
    gpu_rvinavg:                    'GPU.RVINAVG'
    gpu_frequency:                  'GPU.Frequency'
    gpu_pm_output_phasea_i:         'GPU.PM_OUTPUT_PHASEA_I'
    gpu_pm_output_phaseb_i:         'GPU.PM_OUTPUT_PHASEB_I'
    gpu_pm_output_phasec_i:         'GPU.PM_OUTPUT_PHASEC_I'
    gpu_pm_output_phasea_v:         'GPU.PM_OUTPUT_PHASEA_V'
    gpu_pm_output_phaseb_v:         'GPU.PM_OUTPUT_PHASEB_V'
    gpu_pm_output_phasec_v:         'GPU.PM_OUTPUT_PHASEC_V'
    gpu_pm_input_phasea_i:          'GPU.PM_INPUT_PHASEA_I'
    gpu_pm_input_phaseb_i:          'GPU.PM_INPUT_PHASEB_I'
    gpu_pm_input_phasec_i:          'GPU.PM_INPUT_PHASEC_I'
    gpu_pm_input_phasea_v:          'GPU.PM_INPUT_PHASEA_V'
    gpu_pm_input_phaseb_v:          'GPU.PM_INPUT_PHASEB_V'
    gpu_pm_input_phasec_v:          'GPU.PM_INPUT_PHASEC_V'
    gpu_gpustatus_triger_data_log:  'GPU.GPUSTATUS_TRIGER_DATA_LOG'
    gpu_on_1:                       'GPU.ON 1'
    gpu_on_2:                       'GPU.ON 2'

  update: ()->
    s = @model.get("settings")
   
    if s? && !!s.gate
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

      # stop listening for updates
      @kill_updates(@site_code)

      # build settings      
      settings = @site.get('settings')
      settings || settings = {}
      cloud = if settings.cloud then "RemoteSCADAHosting.Airport-#{@site_code}." else ''
      @prefix = "#{cloud}Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}."
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      
      lbl = "GPU #{s.gate} - Details"
      @ui.wtitle.html(lbl)
      @$('#gpu_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)


  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])
    
    # PBB AIRCRAFT
    # @render_row("pbb_status", "", "", "ok")
    # aircraftstatus = @vals['pbb_aircraft']
    # @$('#pbb_status').html(aircraftstatus)
    # @render_row("gpu_gpuoutputvolts", "", "", "ok")
    # gpuoutputvoltsstatus = @vals['gpu_gpuoutputvolts']
    # @$('#gpu_gpuoutputvolts').html(gpuoutputvoltsstatus)

    # GPU GPUSTATUS                   
    @render_value_row("gpu_gpustatus", true, 1)

    # GPU CONTSTATUS                  
    @render_value_row("gpu_contstatus", true, 1)

    # GPU ByPass                      
    @render_row("gpu_bypass", "Down", "Up", "ok")

    # GPU RAOUTAVG                    
    @render_value_row("gpu_raoutavg", true, 1)

    # GPU RVOUTAVG                    
    @render_value_row("gpu_rvoutavg", true, 1)

    # GPU RAVINAVG
    @render_value_row("gpu_ravinavg", true, 1)

    # GPU RVINAVG                     
    @render_value_row("gpu_rvinavg", true, 1)

    # GPU Frequency                   
    @render_value_row("gpu_frequency", true, 1, "Hz")

    # GPU PM_OUTPUT_PHASEA_I          
    @render_value_row("gpu_pm_output_phasea_i", true, 1, "Amps")

    # GPU PM_OUTPUT_PHASEB_I          
    @render_value_row("gpu_pm_output_phaseb_i", true, 1, "Amps")

    # GPU PM_OUTPUT_PHASEC_I          
    @render_value_row("gpu_pm_output_phasec_i", true, 1, "Amps")

    # GPU PM_OUTPUT_PHASEA_V          
    @render_value_row("gpu_pm_output_phasea_v", true, 1, "Volts")

    # GPU PM_OUTPUT_PHASEB_V          
    @render_value_row("gpu_pm_output_phaseb_v", true, 1, "Volts")

    # GPU PM_OUTPUT_PHASEC_V  
    @render_value_row("gpu_pm_output_phasec_v", true, 1, "Volts")

    # GPU PM_INPUT_PHASEA_I           
    @render_value_row("gpu_pm_input_phasea_i", true, 1, "Amps")

    # GPU PM_INPUT_PHASEB_I           
    @render_value_row("gpu_pm_input_phaseb_i", true, 1, "Amps")

    # GPU PM_INPUT_PHASEC_I           
    @render_value_row("gpu_pm_input_phasec_i", true, 1, "Amps")

    # GPU PM_INPUT_PHASEA_V           
    @render_value_row("gpu_pm_input_phasea_v", true, 1, "Volts")

    # GPU PM_INPUT_PHASEB_V           
    @render_value_row("gpu_pm_input_phaseb_v", true, 1, "Volts")

    # GPU PM_INPUT_PHASEC_V           
    @render_value_row("gpu_pm_input_phasec_v", true, 1, "Volts")

    # GPU GPUSTATUS_TRIGER_DATA_LOG   
    @render_row("gpu_gpustatus_triger_data_log", "Down", "Up", "ok")

    # GPU ON 1                        
    @render_row("gpu_on_1", "Down", "Up", "ok")

    # GPU ON 2                        
    @render_row("gpu_on_2", "Down", "Up", "ok")
        
    @set_descriptions()


  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    s.terminal = @$('#terminal').val()
    s.zone = @$('#zone').val()
    s.gate = @$('#gate').val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible then @ui.site.chosen()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @$('#site').on 'change', ()=>
      @draw_selectors()
      @set_model()
    
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code? then @watch_updates(@site_code)


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.GpuWidgetView = GpuWidgetView
module.exports = GpuWidgetView
