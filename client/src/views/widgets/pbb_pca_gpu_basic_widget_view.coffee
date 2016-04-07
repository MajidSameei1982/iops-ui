Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbpcagpuWidgetView extends IOPSWidgetView
  template:   "widgets/pbb_pca_gpu_basic_widget"
  className: 'widget-outer box box-primary gate_widget'
  ui:
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    docked:         'i#docked'
    alarms:         'i#alarms'
    warnings:       'i#warnings'
    site:           'select#site'

  @layout:
    sx: 5
    sy: 8

  tags:
    #Grid Tags
    pbb_status :         'PBB.AIRCRAFTDOCKEDCALCULATION'
    pca_pcastatus:       'PCA.PCASTATUS'
    gpu_gpustatus:       'GPU.GPUSTATUSBOOLEAN'
    pbb_docktime:        'PBB.DOCKTIME'
    pbb_hookup:          'PBB.HOOKUPTIME'
    pca_hookup:          'PCA.PCATime'
    gpu_hookup:          'GPU.GPUTime'
    pca_pcadischargetemp:'PCA.TEMPDISCH' 
    gpu_raoutavg:        'GPU.RAOUTAVG'
    gpu_rvoutavg:        'GPU.RVOUTAVG'

    
    #Processing Tags
    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'
    
  update: ()->
    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    if !@site_code? then return null

    s = @model.get("settings")
   
    if s? && !!s.site      
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      lbl = "PBB/PCA/GPU #{s.gate}"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      # listen for updates
      @watch_updates(@site_code)
      @set_descriptions(true)

  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])
    
    # PBB AIRCRAFT
    @render_row("pbb_status", "Docked", "UnDocked", "ok","err")

    # PCA STATUS
    @render_row("pca_pcastatus", "On", "Off", "ok","err")

    # GPU STATUS
    @render_row("gpu_gpustatus", "On", "Off", "ok","err")

    # DOCKTIME
    @render_value_row("pbb_docktime", true, 2," mins")
    
    # PBB ON TIME
    @render_value_row("pbb_hookup", true, 2," mins")

    # PCA ON TIME
    @render_value_row("pca_hookup", true, 2," mins")

    # GPU ON TIME
    @render_value_row("gpu_hookup", true, 2," mins")

    # PCA DISCHARGE TEMP
    @render_value_row("pca_pcadischargetemp", true, 2," F")

    # GPU RAOUTAVG                    
    @render_value_row("gpu_raoutavg", true, 1,"Amps")

    # GPU RVOUTAVG                    
    @render_value_row("gpu_rvoutavg", true, 1,"Volts")

    @$("#pbb_statused_lbl").html('PBB Status')
    @$("#pbb_dockedtime_lbl").html('PBB Dock Time')
    @$("#pca_discharge_lbl").html('PCA Discharge Temp')
    @$("#gpu_raout_lbl").html('GPU Output Amps')
    @$("#gpu_rvout_lbl").html('GPU Output Volts')
    
    # ALARMS
    aq = @data_q(@tags.pbb_has_alarms)
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms)==true && aq)
    # WARNINGS
    wq = @data_q(@tags.pbb_has_warnings)
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings)==true && wq)
 


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

window.PbbpcagpuWidgetView = PbbpcagpuWidgetView
module.exports = PbbpcagpuWidgetView
