Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbleveldetailWidgetView extends IOPSWidgetView
  template:   "widgets/pbbleveldetail_widget"
  className: 'widget-outer box box-primary gate_widget'
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
    sy: 9

  tags:
    #Grid Tags
    pbb_status :          'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_aircraft :        'PBB.AIRCRAFTSTATUS'
    pbb_autolevelmode :   'PBB.AUTOLEVELMODEFLAG'
    pbb_canopy:           'PBB.CANOPYDOWN'
    pbb_autolevelkey :    'PBB.AUTOLEVELKEY'
    pbb_autolevelling:    'PBB.AUTOLEVELING'
    pbb_estop:            'PBB.Alarm.RedWord2[4]'
    pbb_limits:           'PBB.BYPASSPB'
    pbb_docktime:         'PBB.DOCKTIME'
    pbb_undocktime:       'PBB.UNDOCKTIME'
    pbb_smokedetector:    'PBB.SMOKEDETECTOR'
    pbb_dailyaircraftcount:'PBB.DAILYAIRCRAFTDOCKED'
    pbb_lastdocktime:     'PBB.LASTDOCKTIME'
    pbb_cabinfloordeicer: 'PBB.CABFLOORDEICER'
    pbb_terminaldoor:     'PBB.TERMINALDOOR'
    

    #Processing Tags
    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'
    
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
      
      lbl = "PBB #{s.gate} - Details"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)


  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])
    
    v = @get_bool(@vals.pbb_status)

    sq = @data_q(@tags.pbb_status)
    @$("#aircraft_img").toggleClass('docked', v==true && sq)

    # PBB AIRCRAFT
    @render_row("pbb_status", "Docked", "UnDocked", "ok")

     # Auto Level
    @render_row("pbb_autolevelmode", "On", "Off", "ok")

    # LIMIT-BYPASSPB
    @render_row("pbb_limits", "Active","Deactive","ok"," ")

    # SMOKEDETECTOR
    @render_row("pbb_smokedetector","Off","On","","err")
  
    # CANOPY
    @render_row("pbb_canopy", "Down", "Up", "ok")

    # LIMITS
    @render_row("pbb_limits", "Normal", "ByPass", "ok")

    # AUTO-lEVEL KEY
    @render_row("pbb_autolevelkey", "On", "Off", "ok")

    # AUTOLEVELLING
    @render_row("pbb_autolevelling", "On", "Off", "ok")

    # CABIN FLOOR DEICER
    @render_row("pbb_cabinfloordeicer", "On", "Off", "ok")

    # TERMINAL DOOR
    @render_row("pbb_terminaldoor", "Open", "Close", "ok")

    # AUTOLEVELLING
    @render_row("pbb_estop", "On", "Off", "err")

    @$("#pbb_statused_lbl").html('PBB Status')
    @$("#pbb_estoped_lbl").html('E-Stop')


    # DOCKTIME
    docktime = if @vals.pbb_docktime? && @vals.pbb_docktime != '' then parseFloat(@vals.pbb_docktime).toFixed(2)  else ' -- ' 
    l1 = @$('#pbb_docktime').html("#{docktime} mins")
    @mark_bad_data @tags.pbb_docktime, l1

    # UN-DOCKTIME
    undocktime = if @vals.pbb_undocktime? && @vals.pbb_undocktime != '' then parseFloat(@vals.pbb_undocktime).toFixed(2)  else ' -- ' 
    l2 = @$('#pbb_undocktime').html("#{undocktime} mins")
    @mark_bad_data @tags.pbb_undocktime, l2

    # LAST DOCK TIME
    lastdocktime = if @vals.pbb_lastdocktime? && @vals.pbb_lastdocktime != '' then parseFloat(@vals.pbb_lastdocktime).toFixed(2)  else ' -- ' 
    la1 = @$('#pbb_lastdocktime').html("#{lastdocktime} mins")
    @mark_bad_data @tags.pbb_lastdocktime, la1

    # DAILY DOCK TIME
    dailydocktime = if @vals.pbb_dailyaircraftcount? && @vals.pbb_dailyaircraftcount != '' then (@vals.pbb_dailyaircraftcount)  else ' -- ' 
    da1 = @$('#pbb_dailyaircraftcount').html("#{dailydocktime}")
    @mark_bad_data @tags.pbb_dailyaircraftcount, da1

    
    
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

window.PbbleveldetailWidgetView = PbbleveldetailWidgetView
module.exports = PbbleveldetailWidgetView
