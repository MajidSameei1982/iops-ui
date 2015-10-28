Marionette = require('marionette')
WidgetView = require('./widget_view')
OPCManager = require('../../opcmanager')

# ----------------------------------

class GateWidgetView extends WidgetView
  template:   "widgets/gate_widget"
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
    docked:         '#docked'

  @layout:
    sx: 4
    sy: 7

  tags:
    pbb_plane_docked :  'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_in_oper_mode :  'PBB.PBB_IN_OPER_MODE'
    pbb_maintok :       'PBB.MAINTOK'
    pbb_has_warnings :  'PBB.Warning._HasWarnings'
    pbb_autolevelmode : 'PBB.AUTOLEVELMODEFLAG'
    gpu_rvoutavg :      'GPU.RVOUTAVG'
    pbb_has_alarms :    'PBB.Alarm._HasAlarms'
    pbb_estop:          'PBB.Alarm.E_STOP'
    pbb_smoke:          'PBB.SMOKEDETECTOR'
    pbb_canopy:         'PBB.Warning.CANOPYDOWN'
    pbb_docktime:       'PBB.DOCKTIME'
    pbb_undocktime:     'PBB.UNDOCKTIME'
    gpu_hoist:          'GPU.HZ400CABLEDEPLOYED'

  modelEvents:
    "change" : "update"

  watch_updates: (conn)->
    App.vent.on "opc:data:#{conn}", @data_update
  kill_updates: (conn)->
    App.vent.off "opc:data:#{conn}", @data_update

  update: ()->
    s = @model.get("settings")
   
    if s? && !!s.gate
      @site_code = OPCManager.get_site_code(s.site)
      if !@site_code? then return null

      # stop listening for updates
      @kill_updates(@site_code)
      OPCManager.rem_ref(@site_code)

      gate = if s.display_prefix? then "#{s.display_prefix}#{s.gate}" else '#{s.gate}'
      
      # build settings      
      @prefix = "RemoteSCADAHosting.Airport-#{@site_code}.Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{gate}."
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      OPCManager.add_ref(@site_code)
      
      lbl = "Gate #{gate}"
      @ui.wtitle.html(lbl)
      @$('#gate_label #txt').html(lbl)

  get_bool: (v)=>
    if v? && v.toUpperCase() == "TRUE"
      return true
    else if v? && v.toUpperCase() == "FALSE"
      return false
    null

  get_value: (tag)=>
    return App.opc.connections[@site_code].get_value("#{@prefix}#{tag}.Value")

  # get data quality and set view if bad
  mark_bad_data: (tag, el)->
    q = @data_q(tag)
    h = if !q then 'BAD DATA' else $(el).html()
    $(el).html(h).toggleClass("bad_data", !q)

  data_q: (tag)=>
    c = App.opc.connections[@site_code]
    t = c.tags["#{@prefix}#{tag}"]
    t.props.Value.quality


  flash_alarm: (fl)=>
    if @fl_interval? && !fl
      clearInterval(@fl_interval)
      $(@el).removeClass('alarm')
      @fl_interval = null
    if !@fl_interval && fl
      chg = ()=>
        $(@el).toggleClass('alarm')
      @fl_interval = setInterval(chg, 500)

  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])

    # PBB STATUS
    stat = @get_bool(@vals.pbb_in_oper_mode)
    pbb_status = if stat then "Ready/OK" else "Not Ready"
    el = @$('#pbb_status').html(pbb_status).toggleClass("ok", stat)
    @mark_bad_data @tags.pbb_in_oper_mode, el
  
    # PBB MODE
    mode = @get_bool(@vals.pbb_autolevelmode)
    txt = if mode then "Auto Level" else "Logged Off"
    el = @$('#pbb_mode').html(txt).toggleClass("ok", mode)
    @mark_bad_data @tags.pbb_autolevelmode, el
 
    # E-STOP
    estop = @get_bool(@vals.pbb_estop)
    txt = if estop then "Activated" else "Ready/OK"
    el = @$('#pbb_estop').html(txt).toggleClass("err", estop)
    @mark_bad_data @tags.pbb_estop, el
  
    # SMOKE DETECTOR
    smoke = @get_bool(@vals.pbb_smoke)
    txt = if smoke==false then "Activated" else "Ready/OK"
    el = @$('#pbb_smoke').html(txt).toggleClass("err", (smoke==false && q))
    @mark_bad_data @tags.pbb_smoke, el
  
    # CANOPY
    canopy = @get_bool(@vals.pbb_canopy)
    txt = if canopy then "Extended" else "Retracted"
    el = @$('#pbb_canopy').html(txt).toggleClass("ok", canopy)
    @mark_bad_data @tags.pbb_canopy, el

    # CABLE HOIST
    hoist = @get_bool(@vals.gpu_hoist)
    txt = if hoist then "Deployed" else "Retracted"
    el = @$('#gpu_hoist').html(txt).toggleClass("ok", hoist)
    @mark_bad_data @tags.gpu_hoist, el

    # DOCKED
    @ui.docked.toggle(@get_bool(@vals.pbb_plane_docked))

    # DOCKTIME
    el = @$('#pbb_docktime').html("#{@vals.pbb_docktime} min.")
    @mark_bad_data @tags.pbb_docktime, el
    el = @$('#pbb_undocktime').html("#{@vals.pbb_undocktime} min.")
    @mark_bad_data @tags.pbb_undocktime, el

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.gate = @ui.gate.val().trim()
    s.site = @ui.site.val().trim()
    s.terminal = @ui.terminal.val().trim()
    s.zone = @ui.zone.val().trim()
    s.display_prefix = @ui.display_prefix.val().trim()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible then @ui.site.chosen()

  onShow: ()->
    @ui.gate.on "change", @set_model
    @ui.site.on "change", @set_model
    @ui.terminal.on "change", @set_model
    @ui.zone.on "change", @set_model
    @ui.display_prefix.on "change", @set_model

    settings = @model.get('settings')
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()
    site = settings.site
    site_code = OPCManager.get_site_code(site)
    if site_code? then OPCManager.add_ref(site_code)

    ms = @model.get('settings')
    if ms? && ms.site? then @ui.site.val(ms.site)


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    OPCManager.rem_ref(@site_code)
    
# ----------------------------------

window.GateWidgetView = GateWidgetView
module.exports = GateWidgetView
