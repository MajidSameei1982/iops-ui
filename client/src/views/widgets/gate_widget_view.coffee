Marionette = require('marionette')
WidgetView = require('./widget_view')

# ----------------------------------

class GateWidgetView extends WidgetView
  template:   "widgets/gate_widget"
  className: 'widget-outer box box-primary'
  ui:
    gate: 'input#gate'
    wtitle: "h3.box-title"
    display: '.display'
    content: '.content'
    docked: '#docked'

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
      @tags = [
        "PBB.PLANE_DOCKED.Value"
        "PBB.PBB_IN_OPER_MODE.Value"
        "PBB.Warning._HasWarnings.Value"
        "PBB.AUTOLEVELMODEFLAG.Value"
        "GPU.RVOUTAVG.Value"
        "PBB.Alarm._HasAlarms.Value"
      ]
      tags = []
      for t in @tags
        tags.push "#{@prefix}#{t}"
      App.opc.add_tags "CID", tags

      # listen for updates
      @watch_updates("CID")
      
      lbl = "Gate C-#{s.gate}"
      @ui.wtitle.html(lbl)
      @$('#gate_label #txt').html(lbl)

  get_bool: (tag)=>
    v = @get_value(tag)
    if v? && v.toUpperCase() == "TRUE"
      return true
    else
      return false

  get_value: (tag)=>
    return App.opc.connections["CID"].get_value("#{@prefix}#{tag}")

  data_update: (data)=>
    docked = @get_bool("PBB.PLANE_DOCKED.Value")
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

    @ui.docked.toggle(docked)

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

module.exports = GateWidgetView
