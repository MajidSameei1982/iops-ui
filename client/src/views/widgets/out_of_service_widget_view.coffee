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

  tags:
    #Processing Tags
    pca_mode_cooling:   'PCA.MODE_COOLING'
    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'

  tagData = []
  tagConfig = []   
 
  max_gates: 6
  site_refresh: 50000

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    @update_settings
      prefix: 'Airport.#{@site_code}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    s = @model.get("settings")

    @cktags = []
    if s? && !!s.site   
      lbl = "#{@site_code}: Out Of Service"
      @ui.wtitle.html(lbl)

      return if !s.gates || s.gates.length == 0   

      # stop listening for updates
      @kill_updates(@site_code)

      tags = []
      elementPrefix = "li##{@el.parentNode.id} .#{@classID} "
      $("#{elementPrefix} [id^='dynamic_']").remove()
      column = 1
      @tagData = []
      for g in s.gates
        column = column + 1
        gp = g.split(':')
        gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
        @tagConfig = []
        @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, {site: @site_code, terminal: gp[0], zone: gp[1], gate: gp[2], RetainDynamic: true})
        for key, data of @tagConfig.TagData
          #tags["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data.Tag
          #data.Tag = "#{@prefix}#{gate}#{data.Tag}"
          @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data
          for btg of @tags
            t = @tags[btg]
            @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{btg}"] = { Tag: "#{t}",DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null}}
          data = []

        if($("#{elementPrefix} #dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}").length == 0)
          $("#{elementPrefix} #widgetData thead tr").append("<th id='dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}' class='header'>#{gp[2]}</th>")
          # $("#{elementPrefix} #widgetData tbody #iconRow").append(
          #   "<td id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}'>
          #     <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_docked' class='fa fa-plane' title='Plane is DOCKED' style='display:none;'></i>
          #     <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_alarms' class='fa fa-bell-o' title='Gate has ALARMS' style='display:none;'></i>
          #     <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_warnings' class='fa fa-warning' title='Gate has WARNINGS' style='display:none;'></i>
          #   </td>"
          # )
          
        for tag, tagData of @tagConfig.TagData
          if(tagData.Element.Class != 'no_row')
            t = tagData.Tag
            gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
            tags.push "#{@prefix}#{gate}#{tagData.Tag}.Value"
            if($("#{elementPrefix} #dynamic_#{tag}").length == 0)
              label = tagData.Label
              if /[*]/.test(label)
                label = label.replace "[*]", ""
              $("#{elementPrefix} #widgetData tbody").append(
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

          $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}")
          $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column}) input").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}_checkbox")
          $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column}) input").bind 'click', (event) =>
              @setOutOfService(event.target)
              return 
          
          $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("no-show", false)
          if "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}".indexOf("_discharge_") > -1
            $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("val", false)
            $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("DisCharge", true)


          for element, index in $("#{elementPrefix} #dynamic_#{tag}>td")
            if element.id.indexOf("#{elementPrefix} dynamic_#{tag}_default_") > -1
              col = column - 1
              $("#{elementPrefix} ##{element.id}").toggleClass('no-show',(index > col))

          # for element, index in $("#widgetData tbody>tr")
          #   indexR = 0
          #   for elementR, indexR in $("##{element.id}>td")
          #     if /dynamic_#{tag}_default_/.test(elementR.id)
          #       $(#{elementPrefix} ##{elementR.id}").toggleClass('no-show',(indexR > column))

      for g in s.gates
        gp = g.split(':')
        gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
        for btg of @tags
          t = @tags[btg]
          tags.push "#{@prefix}#{gate}#{t}"

      @cktags = tags
      App.opc.add_tags @site_code, tags
      @opc =  App.opc.connections[@site_code]
      # listen for updates
      @watch_updates(@site_code)
      @start_heartbeat()

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

    s = @model.get("settings")
    return if !s? || !s.gates? || s.gates.length == 0
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
      @kill_updates(@site_code)
      if @heartbeat_timer? && @heartbeat_timer > 0
        window.clearInterval(@heartbeat_timer)
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
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)
    
# ----------------------------------

window.OutofserviceWidgetView = OutofserviceWidgetView
module.exports = OutofserviceWidgetView
