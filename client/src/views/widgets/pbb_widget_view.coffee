Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbWidgetView extends IOPSWidgetView
  template:   "widgets/pbb_widget"
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
    sy: 7

  tags:
    #Grid Tags
    pbb_status :        'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_aircraft :      'PBB.AIRCRAFTSTATUS'
    pbb_autolevel :     'PBB.AUTOLEVELMODEFLAG'
    pbb_canopy:         'PBB.CANOPYDOWN'
    pbb_acffloor:       'PBB.ACFFLOOR'
    pbb_cablehoist:     'PBB.CABHOIST'
    pbb_estop:          'PBB.Alarm.E_STOP'
    pbb_limits:         'PBB.HZ400CABLEDEPLOYED'
    pbb_docktime:       'PBB.DOCKTIME'
    pbb_undocktime:     'PBB.UNDOCKTIME'
    pbb_smokedetector:  'PBB.SMOKEDETECTOR'
    
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

      lbl = "Gate #{s.gate}"
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
    @render_row("pbb_status", "Docked", "UnDocked", "ok")

     # Auto Level
    @render_row("pbb_autolevel", "On", "Off", "ok")

    # E-STOP
    @render_row("pbb_estop", "Activated", "Ready/OK", "err")

    # SMOKEDETECTOR
    @render_row("pbb_smokedetector","Activated","Ready/OK","err")
  
    # CANOPY
    @render_row("pbb_canopy", "Down", "Up", "ok")

    # CABLE HOIST
    @render_row("pbb_cablehoist", "Deployed", "Retracted", "ok")


    @$("#pbb_statused_lbl").html('PBB Status')
    @$("#pbb_estoped_lbl").html('E-Stop')
    
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

window.PbbWidgetView = PbbWidgetView
module.exports = PbbWidgetView
