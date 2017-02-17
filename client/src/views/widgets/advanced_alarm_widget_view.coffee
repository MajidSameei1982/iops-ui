Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AdvancedalarmWidgetView extends IOPSWidgetView
  template:   "widgets/advanced_alarm_widget"
  classID: 'advanced_alarm_widget'
  className: 'widget-outer box box-primary advanced_alarm_widget'
  ui:
    site: 'select#site'
    type: 'select#type'
    wtitle: "h3.box-title"
    display: '.display'
    content: '.content'
    allgates: '#allgates'
    alarmGrid: '#alarmGrid'

  @layout:
    sx: 10
    sy: 10

  site_refresh: 50000

  IsUpdatingSettings: false
  IsPageLoading: true
  searchOperators = ["eq", "ne", "lt", "le", "gt", "ge", "bw", "bn", "in", "ni", "ew", "en", "cn", "nc"]
  titleHtml = ''

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    if s? && !!s.gate
      lbl = "#{@site_code}: Advanced Alarm window"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      @kill_updates(@site_code)

      groups = []

      terminals = {"#{s.terminal}" : {"#{s.zone}": {"#{s.gate}": {}}}}

      @site = OPCManager.get_site(s.site)
      if s.allgates then terminals = @site.get('settings').zones
      net_node = @site.get('settings').cloud? && @site.get('settings').cloud == true
      if net_node
        net_node = ["RemoteSCADAHosting.localhost.RemoteSCADAHost.Airport-#{@site_code}"]

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
        callback: @advanced_alarm_update
        showSearch:false
        showHistory:false
        filter:
          alarmtypes:["Digital"]
          alarmgroups: groups
        columns: [
          { name: "AlarmDateTime", text: "Alarm DateTime", type: "datetime", visible: true, sort: 'desc', width: '140px', searchable: false }
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

        @titleHtml = "<b>#{@site_code}</b> #{tzg} | <b>#{t}</b> | <b>#{p}</b>"
        #@$("#alarm_lbl").html("#{@titleHtml}")
        App.opc.add_alarm @site_code, @alarm_binding
        @watch_updates(@site_code)
        @start_heartbeat()
        #tableToGrid 'table.opc-alarm'
        @create_alarm_grid()

  create_alarm_grid: ()=>
    defaultData = [{
      acked:         null,
      alarmDateTime: null,
      alarmValue:    null,
      group:         null,
      priority:      null,
      text:          "No data available in table"
    }]

    gridWidth = 1000
    @ui.alarmGrid.jqGrid(
      {
        datatype: "local",
        data: defaultData,
        colNames:['Acked','Alarm DateTime','Alarm Value','Group','Priority','Text'],
        colModel:[
          {
            name:'Acked',
            index:'Acked',
            key: true,
            sorttype: "int",
            width: 10,
            hidden: true,
          },
          {
            name: "Alarm DateTime",
            index:"Alarm DateTime",
            width: 140,
            align: "center",
            sorttype: "date",
            formatter: "date", 
            formatoptions: { srcformat: "m/d/Y g:i A", newformat: "m/d/Y g:i A" },
            #editable: editableInAddForm,
            #searchoptions: { sopt: ["eq", "ne", "lt", "le", "gt", "ge"], 
            #dataInit: initDateSearch}
          },
          {
            name:'Alarm Value',
            index:'Alarm Value',
            sorttype: "int",
            width: 10,
            hidden: true,
          },
          {
            name:'Group',
            index:'Group',
            width: 10,
            hidden: true,
          },
          {
            name:'Priority',
            index:'Priority',
            sorttype: "int",
            width: 10,
            hidden: true,
          },
          {
            name:'Text',
            index:'Text',
            width: gridWidth-140,
          }
        ],
        search: true,
        pager: '#pager',
        jsonReader: { cell: "" },
        rowNum: 10,
        rowList: [5,10,20,50],
        sortname: 'Alarm DateTime',
        sortorder: 'asc',
        viewrecords: true,
        height: "100%",
        autowidth: true,
        ajaxGridOptions: {cache: false},
        cmTemplate: { title: false },
        #shrinkToFit: false,
        caption: "#{@titleHtml}",
        loadComplete: () =>
          @ui.alarmGrid.find("tbody > tr").each (idx, element) =>
            if $("td:eq(4)", element).text() == "0"
              $("td:eq(4)", element).closest("tr").toggleClass("notification",true)
            if $("td:eq(4)", element).text() == "100"
              $("td:eq(4)", element).closest("tr").toggleClass("alarm",true)
            if $("td:eq(4)", element).text() == "200"
              $("td:eq(4)", element).closest("tr").toggleClass("critical",true)
            if $("td:eq(4)", element).text() == "999"
              $("td:eq(4)", element).closest("tr").toggleClass("bad-quality",true)
      }
    )
  
    @ui.alarmGrid.jqGrid('navGrid', '#pager', {
        add: false,
        edit: false,
        del: false,
        search: true,
        refresh: true
    }, {}, {}, {}, {
        multipleSearch: true,
        multipleGroup: true,
        showQuery: true
    })

    @ui.alarmGrid.setGridWidth(gridWidth)

    #@ui.alarmGrid.jqGrid('filterToolbar')

    return

  advanced_alarm_update: (ab, data)=>
      @beat_time = new Date().getTime() + @site_refresh
      # If your table has header(th), use this:
      alarmJson = @$("table.opc-alarm").tableToJSON()
      for idx, data of alarmJson
        data['Alarm DateTime'] = data['Alarm DateTime'].substr 13

      gridWidth = @$('table.opc-alarm').width() - 5
      #@ui.alarmGrid.jqGrid('setGridParam', { data: {} })
      #@ui.alarmGrid[0].refreshIndex()
      #@ui.alarmGrid.trigger("reloadGrid")
      @ui.alarmGrid.setGridWidth(gridWidth)
      @ui.alarmGrid.jqGrid('setGridParam', { data: alarmJson })
      @ui.alarmGrid.jqGrid('setColProp','Alarm DateTime',{width:140 })
      @ui.alarmGrid.jqGrid('setColProp','Text',{width: (gridWidth-140) })
      @ui.alarmGrid[0].refreshIndex()
      @ui.alarmGrid.trigger("reloadGrid")

      # If your table has header(th), use this:
      @$('table.opc-alarm > tbody > tr> td:nth-child(3)').hide()
      @$('table.opc-alarm > thead > tr> th:nth-child(3)').hide()
      @$("table.opc-alarm > tbody > tr").each (idx, element) =>
        if $("td:eq(2)", element).text() == "0"
          $("td:eq(2)", element).closest("tr").toggleClass("notification",true)
        if $("td:eq(2)", element).text() == "100"
          $("td:eq(2)", element).closest("tr").toggleClass("alarm",true)
        if $("td:eq(2)", element).text() == "200"
          $("td:eq(2)", element).closest("tr").toggleClass("critical",true)
        if $("td:eq(2)", element).text() == "999"
          $("td:eq(2)", element).closest("tr").toggleClass("bad-quality",true)

      # $('table.opc-alarm > tbody > tr').each (idx, element) =>
      #   $(element).hide()

      return
      #tableToGrid "##{@alarmid}_tbl"
      #$('table.opc-alarm').trigger("reloadGrid")
      

  initDateSearch = (elem) ->
    setTimeout (->
      $(elem).datepicker
        dateFormat: 'dd-M-yy'
        autoSize: true
        changeYear: true
        changeMonth: true
        showWeek: true
        showButtonPanel: true
      return
    ), 100
    return

  editableInAddForm = (options) ->
    if options.mode == 'addForm'
      return true
    if options.mode == 'editForm'
      return 'disabled'
    false

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
    if p? && p=='alarms' then @$("#p_alarms").prop("checked", true)
    if p? && p=='notifications' then @$("#p_notifications").prop("checked", true)
    if !p? || p=='all' then @$("#p_all").prop("checked", true)
    @$("[name=priority]").attr('name', "priority_#{@cid}")
    @$("[name=priority_#{@cid}]").on 'change', ()=>
      @set_model()

    ag = settings.allgates
    @$("#allgates").prop("checked", ag)
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
    @$(".widget-outer").toggleClass("no-heartbeat", false)
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @heartbeat_timer = window.setInterval((=>
      @check_heartbeat @el.parentNode.id
      return
    ), @site_refresh) 

  check_heartbeat: (widget_id)=>
    @curTime = new Date().getTime()
    @$(".widget-outer").toggleClass("no-heartbeat", (@curTime > @beat_time))

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    if @alarm_binding? then App.opc.rem_alarm @site_code, @alarm_binding
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)

# ----------------------------------

window.AdvancedalarmWidgetView = AdvancedalarmWidgetView
module.exports = AdvancedalarmWidgetView
