Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class OutofserviceWidgetView extends IOPSWidgetView
  template:   "widgets/out_of_service_widget"
  classID: 'out_of_service_widget'
  className: 'widget-outer box box-primary out_of_service_widget'
  ui:
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    docked:         'i#docked'
    alarms:         'i#alarms'
    warnings:       'i#warnings'
    site:           'select#site'
    gates:          '#gate_cks'

  @layout:
    sx: 8
    sy: 6

  tags = []
  tagData = []
  tagConfig = []
 
  max_gates: 6
  site_refresh: 50000
  refId: 0

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    if s? && !!s.site   
      lbl = "#{@site_code}: Out Of Service"
      @ui.wtitle.html(lbl)

      return if !s.gates || s.gates.length == 0   

      ### Initialize Variables ###
      tags = []
      @$("[id^='dynamic_']").remove()
      column = 1
      @tagData = []
      
      ### Process Gates ###
      for g in s.gates
        ### Initialize Loop Variables ###
        column = column + 1
        gp = g.split(':')
        gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."

        ### Call Tagconfig ###
        @tagConfig = []
        @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, {site: @site_code, terminal: gp[0], zone: gp[1], gate: gp[2], RetainDynamic: true})
        
        ### Create Gate Header and Alert Icons ###
        if(@$("#dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}").length == 0)
          @$("#widgetData thead tr").append("<th id='dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}' class='header'>#{gp[2]}</th>")
          # @$("#widgetData tbody #iconRow").append(
          #   "<td id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}'>
          #     <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_docked' class='fa fa-plane' title='Plane is DOCKED' style='display:none;'></i>
          #     <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_alarms' class='fa fa-bell-o' title='Gate has ALARMS' style='display:none;'></i>
          #     <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_warnings' class='fa fa-warning' title='Gate has WARNINGS' style='display:none;'></i>
          #   </td>"
          # )

        ### Load tagData With config tags ###
        for key, data of @tagConfig.TagData
          tags["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data.Tag
          @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data

        ### Load tagData With Widget defined tags ###
        for btg of @tags
          t = @tags[btg]
          @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{btg}"] = { Tag: "#{t}",DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null}}

        for tag, tagData of @tagConfig.TagData
          t = tagData.Tag
          gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
          tags.push "#{@prefix}#{gate}#{tagData.Tag}.Value"
          if(tagData.Element.Class != 'no_row')
            if(@$("#dynamic_#{tag}").length == 0)
              label = tagData.Label
              if /[*]/.test(label)
                label = label.replace "[*]", ""
              @$("#widgetData tbody").append(
                "<tr id='dynamic_#{tag}'>
                  <td class='lbl' id='dynamic_#{tag}_lbl'>#{label}</td>
                  <td class='val no-show' id='dynamic_#{tag}_default_1'><input id='dynamic_#{tag}_checkbox_1' type='checkbox' ></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_2'><input id='dynamic_#{tag}_checkbox_2' type='checkbox' ></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_3'><input id='dynamic_#{tag}_checkbox_3' type='checkbox' ></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_4'><input id='dynamic_#{tag}_checkbox_4' type='checkbox' ></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_5'><input id='dynamic_#{tag}_checkbox_5' type='checkbox' ></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_6'><input id='dynamic_#{tag}_checkbox_6' type='checkbox' ></td>
                </th>"
              )

            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column})").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) input").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}_checkbox")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) input").bind 'click', (event) =>
              @setOutOfService(event.target)
              return 
          
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("no-show", false)
            if "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}".indexOf("_discharge_") > -1
              @$("#widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("val", false)
              @$("#widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("DisCharge", true)


            for element, index in @$("#dynamic_#{tag}>td")
              if element.id.indexOf("dynamic_#{tag}_default_") > -1
                col = column - 1
                @$("##{element.id}").toggleClass('no-show',(index > col))

          # for element, index in $("#widgetData tbody>tr")
          #   indexR = 0
          #   for elementR, indexR in $("##{element.id}>td")
          #     if /dynamic_#{tag}_default_/.test(elementR.id)
          #       @$(##{elementR.id}").toggleClass('no-show',(indexR > column))

        ### Ensure we have all the cells properly hidden/shown ###
        col = column - 1
        for index in [1..6]
          if index <= col
            @$("td[id^='dynamic_'][id*='_default_#{index}']").toggleClass('no-background', true)
            @$("td[id^='dynamic_'][id*='_default_#{index}']").toggleClass('no-show', false)
          else
            @$("td[id^='dynamic_'][id*='_default_#{index}']").toggleClass('no-background', false)
            @$("td[id^='dynamic_'][id*='_default_#{index}']").toggleClass('no-show', true)

      for g in s.gates
        gp = g.split(':')
        gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
        for btg of @tags
          t = @tags[btg]
          tags.push "#{@prefix}#{gate}#{t}"

      if @refId == 0
        @refId = App.opc.add_tags @site_code, tags
        App.vent.on "opc:data:#{@site_code}", @data_update
        @opc =  App.opc.connections[@site_code]
        @start_heartbeat()

    @ 

  setOutOfService: (el) =>
    tag = el.id
    if /dynamic_/.test(tag)
      tag = tag.replace 'dynamic_', ""

    if /_checkbox/.test(tag)
      tag = tag.replace '_checkbox', ""

    parsedTagId = tag.split("_")
    gate = "Term#{parsedTagId[0]}.Zone#{parsedTagId[1]}.Gate#{parsedTagId[2]}."

    tagValue = null
    if @tags? && @tags[tag]?
      tagValue = gate + @tags[tag]
    else if @tagData? && @tagData[tag]?
      tagValue = gate + @tagData[tag].Tag
    q = @data_q(tagValue)

    if !q 
      return


    App.opc.connections[@site_code].set_value("#{@prefix}#{tagValue}",'Value',el.checked)
    return

  # process data and update the view
  data_update: (data)=>
    @beat_time = new Date().getTime() + @site_refresh

    # load values for all tags
    @vals = {}
    for tag, data of @tagData
      parsedTagId = tag.split("_")
      gate = "Term#{parsedTagId[0]}.Zone#{parsedTagId[1]}.Gate#{parsedTagId[2]}."
      @vals[tag] = @opc.get_value("#{@prefix}#{gate}#{data.Tag}.Value")

      switch data.DataType.toLowerCase()
        when 'boolean'
          @render_row_chk("dynamic_#{tag}_checkbox", "", "", data.Parameters.Parm003, data.Parameters.Parm004)
        when 'float'
          @render_value_row_tzg("dynamic_#{tag}", data.Parameters.Parm001, data.Parameters.Parm002, data.Parameters.Parm003, data.Parameters.Parm004)
        when 'value'
          @render_value_row_tzg("dynamic_#{tag}", "", "", data.Parameters.Parm003, data.Parameters.Parm004)

    
  set_model: ()=>
    if @refId > 0
      @kill_updates(@site_code)
      if @heartbeat_timer? && @heartbeat_timer > 0
        window.clearInterval(@heartbeat_timer)
      @refId = 0

    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @site_code = OPCManager.get_site_code(s.site)
    @gates = []
    @$('.gate_check').each (idx, el)=>
      if $(el).is(":checked") then @gates.push($(el).attr("value"))
    s.gates = @gates
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if @settings_visible
      @draw_gate_checks()
    else
      @IsPageLoading = false
      @update()

  draw_gate_checks: ()->
    @ui.gates.empty()
    site = @$('#site').val()
    sh = ''
    s = OPCManager.get_site(site)
    if s?
      settings = s.get('settings') || {}
      terminals = settings.zones || {}
      prev_t = ''
      prev_z = ''
      ms = @model.get("settings")
      gates = if ms? && ms.gates then ms.gates else []
      for t of terminals
        if t != prev_t
          prev_t = t
          sh += "<div class='term_list'><b>Terminal: #{t}</b>"
        term = terminals[t]
        for z of term
          if prev_z != "#{t}:#{z}"
            prev_z = "#{t}:#{z}"
            sh += "<div class='zone_list'><b>Zone: #{z}</b>"
            sh += "  <div class='gate_list'>"
          zn = term[z]
          for g of zn
            checked = ''
            for gate in gates
              if gate == "#{t}:#{z}:#{g}" 
                checked = "checked='checked'"
                break
            sh += "<span class='gate_span'><input type='checkbox' class='gate_check' #{checked} value='#{t}:#{z}:#{g}'> #{g}</span>"
          sh += "</div></div>"
        sh += "</div>"
    @ui.gates.html(sh)
    @$(".gate_check").change ()=>
      @gates = []
      do_set = true
      @$('.gate_check').each (idx, el)=>
        if $(el).is(":checked")
          if @gates.length < @max_gates
            @gates.push($(el).attr("value"))
          else
            do_set = false
            $(el).prop("checked", false)
      if do_set then @set_model()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @$('#site').on 'change', ()=>
      @draw_gate_checks()
      @set_model()
    
    gates = settings.gates
    if !gates? || gates.length == 0
      @toggle_settings()
    else
      @IsPageLoading = false

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code?
      @site_refresh = ((OPCManager.get_site(settings.site).get("refreshRate") * 1000) * 3)

    @check_init_site()

  start: ()->
    @update()

  start_heartbeat: ()=>
    @beat_time = new Date().getTime() + @site_refresh
    @$(".widget-outer").toggleClass("no-heartbeat", false)
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    console.log "#{@el.parentNode.id}_#{@classID}::#{@site_code} - Heartbeat Started: #{@site_refresh}"
    @heartbeat_timer = window.setInterval((=>
      @check_heartbeat @el.parentNode.id
      return
    ), @site_refresh) 

  check_heartbeat: (widget_id)=>
    @curTime = new Date().getTime()
    @$(".widget-outer").toggleClass("no-heartbeat", (@curTime > @beat_time))

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)
    
# ----------------------------------

window.OutofserviceWidgetView = OutofserviceWidgetView
module.exports = OutofserviceWidgetView
