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
    sy: 4

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
        pbb_plane_docked : "PBB.PLANE_DOCKED.Value"
        pbb_in_oper_mode : "PBB.PBB_IN_OPER_MODE.Value"
        pbb_maintok : 'PBB.MAINTOK.Value'
        pbb_has_warnings : "PBB.Warning._HasWarnings.Value"
        pbb_autolevelmode : "PBB.AUTOLEVELMODEFLAG.Value"
        gpu_rvoutavg : "GPU.RVOUTAVG.Value"
        pbb_has_alarms : "PBB.Alarm._HasAlarms.Value"
        plb_estop: 'PLB.Alarm.E_STOP.Value'
        pbb_smoke: 'PBB.SMOKEDETECTOR.Value'
      
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}"
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
    return App.opc.connections["CID"].get_value("#{@prefix}#{tag}")

  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])

    green = @get_bool("PBB.PBB_IN_OPER_MODE.Value")
    yellow = @get_bool("PBB.Warning._HasWarnings.Value")
    orange = @get_bool("PBB.AUTOLEVELMODEFLAG.Value")
    red = @get_bool("PBB.Alarm._HasAlarms.Value")
    #avg = @get_value("GPU.RVOUTAVG.Value")
    
    if red
      @ui.content.css
        'background-color' : '#c00'
        'color' : '#fc0'
    else if orange
      @ui.content.css
        'background-color' : '#c90'
        'color' : '#fff'
    else if yellow
      @ui.content.css
        'background-color' : '#fc6'
        'color' : '#000'
    else if green
      @ui.content.css
        'background-color' : '#6c6'
        'color' : '#fff'

    # PBB STATUS
    stat = @get_bool(@vals.pbb_in_oper_mode)
    pbb_status = if stat then "Ready/OK" else "Not Ready"
    @$('#pbb_status').html(pbb_status).toggleClass("ok", stat)

    # PBB MODE
    mode = @get_bool(@vals.pbb_autolevelmode)
    maint = @get_bool(@vals.pbb_maintok)
    txt = "Logged Off"
    if mode
      txt = "Auto Level" 
    else if maint
      txt = "Manual Mode"
    @$('#pbb_mode').html(txt).toggleClass("ok", mode && !maint).toggleClass('blue', maint)

    # E-STOP
    estop = @get_bool(@vals.plb_estop)
    txt = if estop then "Activated" else "Ready/OK"
    @$('#plb_estop').html(txt).toggleClass("err", estop)

    # SMOKE DETECTOR
    smoke = @get_bool(@vals.pbb_smoke)
    txt = if !smoke then "Activated" else "Ready/OK"
    @$('#pbb_smoke').html(txt).toggleClass("err", !smoke)

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
