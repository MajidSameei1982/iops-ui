Marionette = require('marionette')
WidgetView = require('./widget_view')

# ----------------------------------

class GateWidgetView extends WidgetView
  template:   "widgets/gate_widget"
  className: 'widget-outer box box-primary gate_widget'
  ui:
    gate: 'input#gate'
    wtitle: "h3.box-title"
    display: '.display'
    content: '.content'
    docked: '#docked'

  @layout:
    sx: 4
    sy: 7

  modelEvents:
    "change" : "update"

  watch_updates: (conn)->
    App.vent.on "opc:data:#{conn}", @data_update
  kill_updates: (conn)->
    App.vent.off "opc:data:#{conn}", @data_update

  update: ()->
    s = @model.get("settings")
    if s? && s.gate? && s.gate != ''
      # stop listening for updates
      @kill_updates("CID")
      # build settings      
      @prefix = "\\\\opc.iopsnow.com\\RemoteSCADAHosting.Airport-CID.Airport.CID.Term1.Zone1.Gate C-#{s.gate}."
      @tags =
        pbb_plane_docked : 'PBB.PLANE_DOCKED'
        pbb_in_oper_mode : 'PBB.PBB_IN_OPER_MODE'
        pbb_maintok : 'PBB.MAINTOK'
        pbb_has_warnings : 'PBB.Warning._HasWarnings'
        pbb_autolevelmode : 'PBB.AUTOLEVELMODEFLAG'
        gpu_rvoutavg : 'GPU.RVOUTAVG'
        pbb_has_alarms : 'PBB.Alarm._HasAlarms'
        plb_estop: 'PLB.Alarm.E_STOP'
        pbb_smoke: 'PBB.SMOKEDETECTOR'
        pbb_canopy: 'PBB.Warning.CANOPYDOWN'
        gpu_hoist: 'GPU.HZ400CABLEDEPLOYED'
      
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags "CID", tags

      # listen for updates
      @watch_updates("CID")
      
      lbl = "Gate C-#{s.gate}"
      @ui.wtitle.html(lbl)
      @$('#gate_label #txt').html(lbl)

  get_bool: (v)=>
    if v? && v.toUpperCase() == "TRUE"
      return true
    else
      return false

  get_value: (tag)=>
    return App.opc.connections["CID"].get_value("#{@prefix}#{tag}.Value")

  mark_bad_data: (q, el)->
    h = if !q then 'BAD DATA' else $(el).html()
    $(el).html(h).toggleClass("bad_data", !q)

  data_q: (tag)=>
    c = App.opc.connections["CID"]
    t = c.tags["#{@prefix}#{tag}"]
    t.props.Value.quality

  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])

    # PBB STATUS
    q = @data_q(@tags.pbb_in_oper_mode)
    stat = @get_bool(@vals.pbb_in_oper_mode)
    pbb_status = if stat then "Ready/OK" else "Not Ready"
    @mark_bad_data q, @$('#pbb_status').html(pbb_status).toggleClass("ok", stat)
  
    # PBB MODE
    q = @data_q(@tags.pbb_autolevelmode) && @data_q(@tags.pbb_maintok)
    mode = @get_bool(@vals.pbb_autolevelmode)
    maint = @get_bool(@vals.pbb_maintok)
    txt = "Logged Off"
    if mode
      txt = "Auto Level" 
    else if maint
      txt = "Manual Mode"
    @mark_bad_data q, @$('#pbb_mode').html(txt).toggleClass("ok", mode && !maint).toggleClass('blue', maint)
 
    # E-STOP
    q = @data_q(@tags.plb_estop)
    estop = @get_bool(@vals.plb_estop)
    txt = if estop then "Activated" else "Ready/OK"
    @mark_bad_data q, @$('#plb_estop').html(txt).toggleClass("err", estop)
  
    # SMOKE DETECTOR
    q = @data_q(@tags.pbb_smoke)
    smoke = @get_bool(@vals.pbb_smoke)
    txt = if !smoke then "Activated" else "Ready/OK"
    @mark_bad_data q, @$('#pbb_smoke').html(txt).toggleClass("err", !smoke)
  
    # CANOPY
    q = @data_q(@tags.pbb_canopy)
    canopy = @get_bool(@vals.pbb_canopy)
    txt = if canopy then "Extended" else "Retracted"
    @mark_bad_data q, @$('#pbb_canopy').html(txt).toggleClass("ok", canopy)

    # CABLE HOIST
    q = @data_q(@tags.gpu_hoist)
    hoist = @get_bool(@vals.gpu_hoist)
    txt = if hoist then "Deployed" else "Retracted"
    @mark_bad_data q, @$('#gpu_hoist').html(txt).toggleClass("ok", hoist)

    # DOCKED
    @ui.docked.toggle(@get_bool(@vals.pbb_plane_docked))

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    gate = @ui.gate.val().trim()
    s.gate = gate
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    @ui.gate.on "change", ()=>
      v = @ui.gate.val().trim()
      if v != ''
        @set_model()
        @toggle_settings()
    gate = @model.get("settings").gate
    if !gate? || gate == ''
      @toggle_settings()

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates("CID")
    
# ----------------------------------

window.GateWidgetView = GateWidgetView
module.exports = GateWidgetView
