Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AlarmWidgetView extends IOPSWidgetView
  template:   "widgets/alarm_widget"
  className: 'widget-outer box box-primary alarm_widget'
  ui:
    site: 'select#site'
    type: 'select#type'
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
      groups = []
      pre = "Airport_#{@site_code}_Term#{s.terminal}_Zone#{s.zone}_Gate#{s.gate}_"
      p = if !s.priority? then 'all' else s.priority
      t = if !s.type? then 'all' else s.type
      alarms = (p=='all' || p=='alarms')
      notifications = (p=='all' || p=='notifications')
      pbb = (t=='all' || t=='PBB')
      pca = (t=='all' || t=='PCA')
      gpu = (t=='all' || t=='GPU')
      if alarms
        if pbb then groups.push("#{pre}PBB_Alarms")
        if pca then groups.push("#{pre}PCA_Alarms")
        if gpu then groups.push("#{pre}GPU_Alarms")
      if notifications
        if pbb then groups.push("#{pre}PBB_Warnings")
        if pca then groups.push("#{pre}PCA_Warnings")
        if gpu then groups.push("#{pre}GPU_Warnings")

      @alarm_binding =
        alarmid: "alarm_#{@model.id}"
        showSearch:false
        showHistory:false
        filter:
          alarmtypes:["Digital"]
          alarmgroups: groups
        columns: [
          { name: "AlarmDateTime", text: "Alarm Date/Time", type: "datetime", visible: true, sort: 'desc', width: '130px', searchable: false }
          { name: "AlarmValue", text: "Alarm Value", type: "string", visible: false, align: 'right' }
          { name: "Text", text: "Text", type: "string", visible: true }
          { name: "Acked", text: "Acked", type: "boolean", visible: false }
        ]
      if @site_code?
        p = if alarms then "Alarms" else ''
        if notifications
          if p != '' then p += ' &amp; '
          p += "Notifications"

        t = if pbb then "PBB" else ''
        if pca
          if t != '' then t+= ', '
          t += 'PCA'
        if gpu
          if t != '' then t+= ', '
          t += 'GPU'

        $("#alarm_lbl").html("#{@site_code} Terminal #{s.terminal} Zone #{s.zone} <b>Gate #{s.gate}</b> | <b>#{t}</b> | <b>#{p}</b>")
        App.opc.add_alarm @site_code, @alarm_binding
        @watch_updates(@site_code)

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    s.terminal = @$("select#terminal").val()
    s.zone = @$("select#zone").val()
    s.gate = @$("select#gate").val()
    s.type = @ui.type.val()
    s.priority = @$("[name=priority]:checked").val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible
      @ui.site.chosen()
      @ui.type.chosen()

  onShow: ()->
    a = @$(".display #alarm_#{@model.id}")
    if !a? || a.length == 0
      a = $("<div id='alarm_#{@model.id}'></div>")
      @$('.display').append(a)

    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @ui.site.on 'change', ()=>
      @draw_selectors()
      @set_model()

    @ui.type.on 'change', ()=>
      @set_model()
    @ui.type.val(settings.type)

    @$("[name=priority]").on 'change', ()=>
      @set_model()
    p = settings.priority
    if p? && p=='alarms' then $("#p_alarms").prop("checked", true)
    if p? && p=='notifications' then $("#p_notifications").prop("checked", true)
    if !p? || p=='all' then $("#p_all").prop("checked", true)
    
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
