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
    allgates: '#allgates'

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

      terminals = {"#{s.terminal}" : {"#{s.zone}": {"#{s.gate}": {}}}}

      if s.allgates then terminals = @site.get('settings').zones

      for term of terminals
        zones = terminals[term]
        for zone of zones
          gates = zones[zone]
          for gate of gates
            pre = "Airport_#{@site_code}_Term#{term}_Zone#{zone}_Gate#{gate}_"
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
        alarmid: "#{@alarmid}"
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

        tzg = if s.allgates then "<b>All Gates</b>" else "Terminal #{s.terminal} Zone #{s.zone} <b>Gate #{s.gate}</b>"

        @$("#alarm_lbl").html("<b>#{@site_code}</b> #{tzg} | <b>#{t}</b> | <b>#{p}</b>")
        App.opc.add_alarm @site_code, @alarm_binding
        @watch_updates(@site_code)

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    s.terminal = @$("select#terminal").val()
    s.zone = @$("select#zone").val()
    s.gate = @$("select#gate").val()
    s.type = @ui.type.val()
    s.priority = @$("[name=priority_#{@cid}]:checked").val()
    s.allgates = @$("#allgates").is(':checked')
    console.log s.allgates
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible
      @ui.type.chosen()
    checked = @$("#allgates").is(':checked')
    @$(".gates").toggle(!checked)

  onShow: ()->
    @alarmid = "alarm_#{@model.id}_#{@cid}"
    a = @$(".display ##{@alarmid}")
    if !a? || a.length == 0
      a = $("<div id='#{@alarmid}'></div>")
      @$('.display').append(a)

    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @ui.site.on 'change', ()=>
      @draw_selectors()
      @set_model()

    @ui.type.val(settings.type)
    @ui.type.on 'change', ()=>
      @set_model()

    p = settings.priority
    if p? && p=='alarms' then $("#p_alarms").prop("checked", true)
    if p? && p=='notifications' then $("#p_notifications").prop("checked", true)
    if !p? || p=='all' then $("#p_all").prop("checked", true)
    @$("[name=priority]").attr('name', "priority_#{@cid}")
    @$("[name=priority_#{@cid}]").on 'change', ()=>
      @set_model()

    ag = settings.allgates
    $("#allgates").prop("checked", ag)
    @ui.allgates.on 'change', ()=>
      @set_model()
      checked = @$("#allgates").is(':checked')
      @$(".gates").toggle(!checked)

    
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code? then @watch_updates(@site_code)


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    if @alarm_binding? then App.opc.rem_alarm @site_code, @alarm_binding
    @kill_updates(@site_code)


# ----------------------------------

window.AlarmWidgetView = AlarmWidgetView
module.exports = AlarmWidgetView
