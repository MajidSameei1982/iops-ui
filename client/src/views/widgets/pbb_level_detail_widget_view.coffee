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
    ###
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
    ###

    #Processing Tags
    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'
    
  tagData = []
  tagConfig = []

  update: ()->
    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    
    if !@site_code? then return null

    s = @model.get("settings")
   
    if s? && !!s.site
      # stop listening for updates
      @kill_updates(@site_code)

      tags = []
      @tagData = []
      @tagConfig = []
      @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, s)
      @tagData = @tagConfig.TagData

      $(".data td").toggleClass("transparent",true)

      for tag, tagData of @tagData
        tags.push "#{@prefix}#{tagData.Tag}.Value"

      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"

      App.opc.add_tags @site_code, tags

      lbl = "#{@site_code}: PBB #{s.gate} - Details"
      @ui.wtitle.html(lbl)

      @opc =  App.opc.connections[@site_code]
      ref = s.layout

      # listen for updates
      @watch_updates(@site_code)
      @set_descriptions(true)


  # process data and update the view
  data_update: (data)=>
    @refresh_values()

    for tag, tagData of @tagData
      switch tagData.DataType.toLowerCase()
        when 'boolean'
          @render_row("dynamic_#{tag}", tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004, tagData.Parameters.Parm005)
        when 'float'
          @render_value_row("dynamic_#{tag}", tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm00)
        when 'value'
          @render_value_row("dynamic_#{tag}", tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004)
        #when 'byte' null
        #when 'int' null
        #when 'string' null
        #when 'double' null
        else null

    v = @get_bool(@vals.pbb_status)

    sq = @data_q(@tagData.pbb_status.Tag)
    @$("#aircraft_img").toggleClass('docked', v==true && sq)

    # PBB AIRCRAFT
    #@render_row("pbb_status", "Docked", "UnDocked", "ok")

     # Auto Level
    #@render_row("pbb_autolevelmode", "On", "Off", "ok")

    # LIMIT-BYPASSPB
    #@render_row("pbb_limits", "Active","Deactive","ok"," ")

    # SMOKEDETECTOR
    #@render_row("pbb_smokedetector","Off","On","","err")
  
    # CANOPY
    #@render_row("pbb_canopy", "Down", "Up", "ok")

    # LIMITS
    #@render_row("pbb_limits", "Normal", "ByPass", "ok")

    # AUTO-lEVEL KEY
    #@render_row("pbb_autolevelkey", "On", "Off", "ok")

    # AUTOLEVELLING
    #@render_row("pbb_autolevelling", "On", "Off", "ok")

    # CABIN FLOOR DEICER
    #@render_row("pbb_cabinfloordeicer", "On", "Off", "ok")

    # TERMINAL DOOR
    #@render_row("pbb_terminaldoor", "Open", "Close", "ok")

    # AUTOLEVELLING
    #if @vals.pbb_estop? && @vals.pbb_estop != '' 
    #  @render_row("pbb_estop", "On", "Off", "err")
    #else if @vals.pbb_estopRW? && @vals.pbb_estopRW != ''
    #  @render_row("pbb_estopRW", "On", "Off", "err")
    

    #@$("#pbb_statused_lbl").html('PBB Status')
    #@$("#pbb_estoped_lbl").html('E-Stop')


    # DOCKTIME
    #@render_value_row("pbb_docktime", true, 2," mins")


    # UN-DOCKTIME
    #@render_value_row("pbb_undocktime", true, 2," mins")


    # LAST DOCK TIME
    #@render_value_row("pbb_lastdocktime", true, 2," mins")

    # DAILY DOCK TIME
    #@render_value_row("pbb_dailyaircraftcount", false)

    ###
    Tags:{'pbb_status','pbb_autolevel_mode','pbb_canopy','pbb_autolevel_key','pbb_autoleveling','pbb_estop','pbb_limits'
            ,'pbb_dock_time','pbb_undock_time','pbb_smoke_detector','pbb_daily_aircraft_count','pbb_last_dock_time'
            ,'pbb_cabin_floor_deicer','pbb_terminal_door','pbb_cab_angle_disp','pbb_slope_deg','pbb_swing_angle_disp'
            ,'pbb_height_to_disp','pbb_wheel_angle_deg','pbb_tunnel_length'}
    ###
    #WHEEL ANGLE DEG
    if @tagData.pbb_wheel_angle_deg?
      wheelangledeg = if @vals.pbb_wheel_angle_deg? && @vals.pbb_wheel_angle_deg != '' then parseFloat(@vals.pbb_wheel_angle_deg).toFixed(2)  else ' -- ' 
      #wa1 = @$('#pbb_wheel_angle_deg').html("Wheel Bogie Angle : #{wheelangledeg}")
      wa1 = @$('#pbb_wheel_angle_deg').text("Wheel Bogie Angle : #{wheelangledeg}")
      @mark_bad_data @tagData.pbb_wheel_angle_deg.Tag, wa1
    else
      @$('#pbb_wheel_angle_deg').html("")
    
    #SLOPE DEG
    if @tagData.pbb_slope_deg?
      slopedeg = if @vals.pbb_slope_deg? && @vals.pbb_slope_deg != '' then parseFloat(@vals.pbb_slope_deg).toFixed(2)  else ' -- ' 
      s2 = @$('#pbb_slope_deg').html("Slope : #{slopedeg}")
      @mark_bad_data @tagData.pbb_slope_deg.Tag, s2
    else
      @$('#pbb_slope_deg').html("")

    # CAB ANGLE DISP
    if @tagData.pbb_cab_angle_disp?
      cabangledisp = if @vals.pbb_cab_angle_disp? && @vals.pbb_cab_angle_disp != '' then (@vals.pbb_cab_angle_disp)  else ' -- ' 
      ca1 = @$('#pbb_cab_angle_disp').html("Cab Angle : #{cabangledisp}")
      @mark_bad_data @tagData.pbb_cab_angle_disp.Tag, ca1
    else
      @$('#pbb_cab_angle_disp').html("")

    # SWING ANGLE DISP
    if @tagData.pbb_swing_angle_disp?
      swingangledisp = if @vals.pbb_swing_angle_disp? && @vals.pbb_swing_angle_disp != '' then (@vals.pbb_swing_angle_disp)  else ' -- ' 
      swa1 = @$('#pbb_swing_angle_disp').html("Bridge Rotation :#{swingangledisp}")
      @mark_bad_data @tagData.pbb_swing_angle_disp.Tag, swa1
    else
      @$('#pbb_swing_angle_disp').html("")

    # HEIGHT TO DISP
    if @tagData.pbb_height_to_disp?
      heighttodisp = if @vals.pbb_height_to_disp? && @vals.pbb_height_to_disp != '' then (@vals.pbb_height_to_disp)  else ' -- ' 
      hd1 = @$('#pbb_height_to_disp').html("Height : #{heighttodisp}")
      @mark_bad_data @tagData.pbb_height_to_disp.Tag, hd1
    else
      @$('#pbb_height_to_disp').html("")

    # TUNNEL LENGTH
    if @tagData.pbb_tunnel_length?
      tunnellength = if @vals.pbb_tunnel_length? && @vals.pbb_tunnel_length != '' then (@vals.pbb_tunnel_length)  else ' -- ' 
      tl = @$('#pbb_tunnel_length').html("Tunnel Length : #{tunnellength}")
      @mark_bad_data @tagData.pbb_tunnel_length.Tag, tl
    else
      @$('#pbb_tunnel_length').html("")

    
    # ALARMS
    aq = @data_q(@tagData.pbb_has_alarms)
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

    if !@site_code?
      site = OPCManager.get_site(s.site);
      if site?
        @site_code = site.get('code');

    lbl = "PBB ??? - Details"
    if s? && !!s.gate
      lbl = "PBB #{s.gate} - Details"

    @ui.wtitle.html(lbl)

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