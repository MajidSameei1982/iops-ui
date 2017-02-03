Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AlarmWidgetView extends IOPSWidgetView
  template:   "widgets/alarm_widget"
  classID: 'alarm_widget'
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

  TestMe: 0
  site_refresh: 50000

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}_'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    if s? && !!s.gate
      lbl = "#{@site_code}: Alarm window"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      @kill_updates(@site_code)

      groups = []

      terminals = {"#{s.terminal}" : {"#{s.zone}": {"#{s.gate}": {}}}}

      @site = OPCManager.get_site(s.site)
      if s.allgates then terminals = @site.get('settings').zones
      # net_node = @site.get('settings').cloud? && @site.get('settings').cloud == true
      # if net_node
      #   net_node = ["RemoteSCADAHosting.localhost.RemoteSCADAHost.Airport-#{@site_code}"]

      for term of terminals
        zones = terminals[term]
        for zone of zones
          gates = zones[zone]
          for gate of gates
            # pre = "Airport_#{@site_code}_Term#{term}_Zone#{zone}_Gate#{gate}_"
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
        callback: @alarm_update
        showSearch:false
        showHistory:false
        filter:
          alarmtypes:["Digital"]
          alarmgroups: groups
        columns: [
          { name: "AlarmDateTime", text: "Alarm Date/Time", type: "datetime", visible: true, sort: 'desc', width: '130px', searchable: false }
          { name: "AlarmValue", text: "Alarm Value", type: "string", visible: false, align: 'right' }
          { name: "Text", text: "Text", type: "string", visible: true }
          { name: "Group", text: "Text", type: "string", visible: false }
          { name: "Acked", text: "Acked", type: "boolean", visible: false }
          { name: "Priority", text: "Priority", type: "integer", visible: true }
        ]
      if net_node then @alarm_binding.networkNodes = net_node

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
        @start_heartbeat()
 
  alarm_update: (ab, data)=>
      @beat_time = new Date().getTime() + @site_refresh

      # If your table has header(th), use this:
      $('table.opc-alarm > tbody > tr> td:nth-child(3)').hide()
      $('table.opc-alarm > thead > tr> th:nth-child(3)').hide()
      $("table.opc-alarm > tbody > tr").each (idx, element) =>
        if $("td:eq(2)", element).text() == "0"
          $("td:eq(2)", element).closest("tr").toggleClass("notification",true)
        if $("td:eq(2)", element).text() == "100"
          $("td:eq(2)", element).closest("tr").toggleClass("alarm",true)
        if $("td:eq(2)", element).text() == "200"
          $("td:eq(2)", element).closest("tr").toggleClass("critical",true)
        if $("td:eq(2)", element).text() == "999"
          $("td:eq(2)", element).closest("tr").toggleClass("bad-quality",true)

  set_model: ()=>

    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    @site_code = OPCManager.get_site_code(s.site)
    s.terminal = @$("select#terminal").val()
    s.zone = @$("select#zone").val()
    s.gate = @$("select#gate").val()
    s.type = @ui.type.val()
    s.priority = @$("[name=priority_#{@cid}]:checked").val()
    s.allgates = @$("#allgates").is(':checked')
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if @settings_visible
      @ui.type.chosen()
      checked = @$("#allgates").is(':checked')
      @$(".gates").toggle(!checked)
    else
      @IsPageLoading = false
      @update() 

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
    $("#p_alarms").prop("checked", !p? || p=='alarms')
    $("#p_notifications").prop("checked", p? && p=='notifications')
    $("#p_all").prop("checked", p? && p=='all')
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
    else
      @IsPageLoading = false

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code?
      @site_refresh = ((OPCManager.get_site(settings.site).get("refreshRate") * 1000) * 3)
      @watch_updates(@site_code)

    @check_init_site()

  start: ()->
    @update()

  start_heartbeat: ()=>
    @beat_time = new Date().getTime() + @site_refresh
    $("##{@el.parentNode.id} .widget-outer").toggleClass("no-heartbeat", false)
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @heartbeat_timer = window.setInterval((=>
      @check_heartbeat @el.parentNode.id
      return
    ), @site_refresh) 

  check_heartbeat: (widget_id)=>
    @curTime = new Date().getTime()
    $("##{widget_id} .widget-outer").toggleClass("no-heartbeat", (@curTime > @beat_time))

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    if @alarm_binding? then App.opc.rem_alarm @site_code, @alarm_binding
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)

# ----------------------------------

window.AlarmWidgetView = AlarmWidgetView
module.exports = AlarmWidgetView
