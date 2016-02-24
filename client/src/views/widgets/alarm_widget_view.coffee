Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AlarmWidgetView extends IOPSWidgetView
  template:   "widgets/alarm_widget"
  className: 'widget-outer box box-primary'
  ui:
    site: 'select#site'
    wtitle: "h3.box-title"
    display: '.display'
    content: '.content'

  @layout:
    sx: 10
    sy: 10

  update: ()->
    if @site_code? then @kill_updates(@site_code)

    s = @model.get("settings")
   
    if s? && !!s.gate
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

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

      if @site_code?
        App.opc.add_alarm @site_code, @alarm_binding
        @watch_updates(@site_code)


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
    a = @$(".display #alarm_#{@model.id}")
    if !a? || a.length == 0
      a = $("<div id='alarm_#{@model.id}'></div>")
      @$('.display').append(a)

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

window.AlarmWidgetView = AlarmWidgetView
module.exports = AlarmWidgetView
