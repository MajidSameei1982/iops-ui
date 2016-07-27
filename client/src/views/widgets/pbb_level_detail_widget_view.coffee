Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbleveldetailWidgetView extends IOPSWidgetView
  template:   "widgets/pbb_level_detail_widget"
  classID: 'pbb_level_detail_widget'
  className: 'widget-outer box box-primary pbb_level_detail_widget'
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
    sx: 12
    sy: 9

  tags:
    #Grid Tags
    pbb_status :           'PBB.AIRCRAFTDOCKEDCALCULATION'
    #pbb_aircraft :         'PBB.AIRCRAFTSTATUS'
    pbb_autolevelmode :    'PBB.AUTOLEVELMODEFLAG'
    pbb_canopy:            'PBB.CANOPYDOWN'
    pbb_autolevelkey :     'PBB.AUTOLEVELKEY'
    pbb_autolevelling:     'PBB.AUTOLEVELING'
    pbb_estop:             'PBB.Alarm.E_STOP'  
    pbb_estopRW:           'PBB.Alarm.RedWord2[4]'
    pbb_limits:            'PBB.BYPASSPB'
    pbb_docktime:          'PBB.DOCKTIME'
    pbb_undocktime:        'PBB.UNDOCKTIME'
    pbb_smokedetector:     'PBB.SMOKEDETECTOR'
    pbb_dailyaircraftcount:'PBB.DAILYAIRCRAFTDOCKED'
    pbb_lastdocktime:      'PBB.LASTDOCKTIME'
    pbb_cabinfloordeicer:  'PBB.CABFLOORDEICER'
    pbb_terminaldoor:      'PBB.TERMINALDOOR'
    pbb_cabangledisp:      'PBB.CABANGLEDISP'
    pbb_slopedeg:          'PBB.SLOPEDEG'
    pbb_swingangledisp:    'PBB.SWINGANGLEDISP'
    pbb_heighttodisp:      'PBB.HEIGHTTODISP'
    pbb_wheelangledeg:     'PBB.WHEELANGLEDEG'
    pbb_tunnellength:      'PBB.HORIZTODISP'
    

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
    if @vals.pbb_estop? && @vals.pbb_estop != '' 
      @render_row("pbb_estop", "On", "Off", "err")
    else if @vals.pbb_estopRW? && @vals.pbb_estopRW != ''
      @render_row("pbb_estopRW", "On", "Off", "err")
    

    @$("#pbb_statused_lbl").html('PBB Status')
    @$("#pbb_estoped_lbl").html('E-Stop')


    # DOCKTIME
    @render_value_row("pbb_docktime", true, 2," mins")


    # UN-DOCKTIME
    @render_value_row("pbb_undocktime", true, 2," mins")


    # LAST DOCK TIME
    @render_value_row("pbb_lastdocktime", true, 2," mins")

    # DAILY DOCK TIME
    @render_value_row("pbb_dailyaircraftcount", false)

    #WHEEL ANGLE DEG
    wheelangledeg = if @vals.pbb_wheelangledeg? && @vals.pbb_wheelangledeg != '' then parseFloat(@vals.pbb_wheelangledeg).toFixed(2)  else ' -- ' 
    wa1 = @$('#pbb_wheelangledeg').html("Wheel Bogie Angle : #{wheelangledeg}")
    @mark_bad_data @tags.pbb_wheelangledeg, wa1

    #SLOPE DEG
    slopedeg = if @vals.pbb_slopedeg? && @vals.pbb_slopedeg != '' then parseFloat(@vals.pbb_slopedeg).toFixed(2)  else ' -- ' 
    s2 = @$('#pbb_slopedeg').html("Slope : #{slopedeg}")
    @mark_bad_data @tags.pbb_slopedeg, s2

    # CAB ANGLE DISP
    cabangledisp = if @vals.pbb_cabangledisp? && @vals.pbb_cabangledisp != '' then (@vals.pbb_cabangledisp)  else ' -- ' 
    ca1 = @$('#pbb_cabangledisp').html("Cab Angle : #{cabangledisp}")
    @mark_bad_data @tags.pbb_cabangledisp, ca1

    # SWING ANGLE DISP
    swingangledisp = if @vals.pbb_swingangledisp? && @vals.pbb_swingangledisp != '' then (@vals.pbb_swingangledisp)  else ' -- ' 
    swa1 = @$('#pbb_swingangledisp').html("Bridge Rotation :#{swingangledisp}")
    @mark_bad_data @tags.pbb_swingangledisp, swa1

    # HEIGHT TO DISP
    heighttodisp = if @vals.pbb_heighttodisp? && @vals.pbb_heighttodisp != '' then (@vals.pbb_heighttodisp)  else ' -- ' 
    hd1 = @$('#pbb_heighttodisp').html("Height : #{heighttodisp}")
    @mark_bad_data @tags.pbb_heighttodisp, hd1

    # TUNNEL LENGTH
    tunnellength = if @vals.pbb_tunnellength? && @vals.pbb_tunnellength != '' then (@vals.pbb_tunnellength)  else ' -- ' 
    tl = @$('#pbb_tunnellength').html("Tunnel Length : #{tunnellength}")
    @mark_bad_data @tags.pbb_tunnellength, tl

    
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
