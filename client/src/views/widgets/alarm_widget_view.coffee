Marionette = require('marionette')
WidgetView = require('./widget_view')

# ----------------------------------

class AlarmWidgetView extends WidgetView
  template:   "widgets/alarm_widget"
  className: 'widget-outer box box-primary'
  ui:
    gate: 'select#site'
    wtitle: "h3.box-title"
    display: '.display'
    content: '.content'

  @layout:
    sx: 4
    sy: 10

  # modelEvents:
  #   "change" : "update"

  # watch_updates: (conn)->
  #   App.vent.on "opc:data:#{conn}", @data_update
  # kill_updates: (conn)->
  #   App.vent.off "opc:data:#{conn}", @data_update

  update: ()->
    s = @model.get("settings")
    #if s? && s.gate? && s.gate != ''
      # stop listening for updates
      #@kill_updates("CID")
      # build settings      
      #@prefix = "\\\\opc.iopsnow.com\\RemoteSCADAHosting.Airport-CID.Airport.CID.Term1.Zone1.Gate C-#{s.gate}."
    @alarm_binding =
      alarmid: "alarm_#{@model.id}"
      #height:100
      showSearch:false
      showHistory:false
      filter:
        alarmtypes:[
          "Digital"
          "High"
          "High High"
          "Low"
          "Low Low"
        ]
      columns: [
        { name: "AlarmDateTime", text: "Alarm Date/Time", type: "datetime", visible: true, sort: 'desc', width: '130px', searchable: false }
        { name: "Active", text: "Active", type: "boolean", visible: true, width: '50px', align: 'center' }
        { name: "AlarmValue", text: "Alarm Value", type: "string", visible: false, align: 'right' }
        { name: "Text", text: "Text", type: "string", visible: true }
        { name: "AlarmType", text: "Alarm Type", type: "string", visible: true }
        { name: "Acked", text: "Acked", type: "boolean", visible: false }
      ]

    App.opc.add_alarm "OAS", @alarm_binding

      # listen for updates
      #@watch_updates("CID")
      
      #lbl = "Gate C-#{s.gate}"
      #@ui.wtitle.html(lbl)
      #@$('#gate_label #txt').html(lbl)

  data_update: (data)=>
    #@ui.docked.toggle(docked)

  set_model: ()=>
    #s = _.clone(@model.get("settings"))
    #gate = @ui.gate.val().trim()
    #s.gate = gate
    #@model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    #@ui.display.toggle(!@settings_visible)

  onShow: ()->
    a = @$(".display #alarm_#{@model.id}")
    if !a? || a.length == 0
      a = $("<div id='alarm_#{@model.id}'></div>")
      @$('.display').append(a)
    #@ui.gate.on "change", ()=>@set_model()
    #gate = @model.get("settings").gate
    # if !gate? || gate == ''
    #   @toggle_settings()


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    #@kill_updates("CID")
    
# ----------------------------------

window.AlarmWidgetView = AlarmWidgetView
module.exports = AlarmWidgetView
