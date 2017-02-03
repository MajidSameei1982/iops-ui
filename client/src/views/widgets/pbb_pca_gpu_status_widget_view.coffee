Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbpcagpustatusWidgetView extends IOPSWidgetView
  template:   "widgets/pbb_pca_gpu_status_widget"
  classID: 'pbb_pca_gpu_status_widget'
  className: 'widget-outer box box-primary pbb_pca_gpu_status_widget'
  ui:
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
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
    has_alarms :    'Alarm._HasAlarms'
    has_critical_alarms : 'Alarm._HasCriticalAlarms'

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
      lbl = "#{@site_code}: PBB/PCA/GPU Status"
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
          tags["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data.Tag
          #data.Tag = "#{@prefix}#{gate}#{data.Tag}"
          @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data
          for btg of @tags
            t = @tags[btg]
            @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{btg}"] = { Tag: "#{t}",DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null}}
          data = []

        if($("#{elementPrefix} #dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}").length == 0)
          $("#{elementPrefix} #widgetData thead tr").append("<th id='dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}' class='header'>#{gp[2]}</th>")
          $("#{elementPrefix} #widgetData tbody #iconRow").append(
            "<td id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}'>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_critical' class='fa fa-warning' title='Gate has CRITICAL ALARMS'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_alarm' class='fa fa-bell' title='Gate has ALARMS'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_docked' class='fa fa-plane' title='Plane is DOCKED'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_outofservice' class='fa fa-wrench' title='A system is out of service'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_perfecthookup' class='fa fa-check-circle-o' title='Perfect Hookup'></i>
            </td>"
          )
          
        for tag, tagData of @tagConfig.TagData
          t = tagData.Tag
          gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
          tags.push "#{@prefix}#{gate}#{tagData.Tag}.Value"
          if(tagData.Element.Class != 'no_row')
            if($("#{elementPrefix} #dynamic_#{tag}").length == 0)
              label = tagData.Label
              if /[*]/.test(label)
                label = label.replace "[*]", ""
              $("#{elementPrefix} #widgetData tbody").append(
                "<tr id='dynamic_#{tag}'>
                  <td class='lbl' id='dynamic_#{tag}_lbl'>#{label}</td>
                  <td class='val no-show' id='dynamic_#{tag}_default_1'></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_2'></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_3'></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_4'></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_5'></td>
                  <td class='val no-show' id='dynamic_#{tag}_default_6'></td>
                </th>"
              )

          $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}")
          $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("no-show", false)
          if "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}".indexOf("_discharge_") > -1
            $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("val", false)
            $("#{elementPrefix} #widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("DisCharge", true)


          for element, index in $("#{elementPrefix} #dynamic_#{tag}>td")
            if element.id.indexOf("dynamic_#{tag}_default_") > -1
              col = column - 1
              $("#{elementPrefix} ##{element.id}").toggleClass('no-show',(index > col))
              $("#{elementPrefix} ##{element.id}").toggleClass('show-no-status',(index <= col))


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


  # process data and update the view
  data_update: (data)=>
    elementPrefix = "li##{@el.parentNode.id} .#{@classID} "
    s = @model.get("settings")
    return if !s? || !s.gates? || s.gates.length == 0
    @beat_time = new Date().getTime() + @site_refresh

    # load values for all tags
    @vals = {}
    for tag, data of @tagData
      parsedTagId = tag.split("_")
      tzgPrefix = "#{parsedTagId[0]}_#{parsedTagId[1]}_#{parsedTagId[2]}"
      gate = "Term#{parsedTagId[0]}.Zone#{parsedTagId[1]}.Gate#{parsedTagId[2]}."
      @vals[tag] = @opc.get_value("#{@prefix}#{gate}#{data.Tag}.Value")
      # Process the Docked
      setValue = (@vals[tag]? && @vals[tag] == "True")

      if /pbb_docked/.test(tag)
        $("#{elementPrefix} #widgetData #dynamic_iconRow_#{tzgPrefix}_docked").toggleClass('docked',setValue)
      else if tag.indexOf("#{tzgPrefix}_has_critical_alarms") > -1
        $("#{elementPrefix} #widgetData #dynamic_iconRow_#{tzgPrefix}_critical").toggleClass('critical',setValue)
      else if tag.indexOf("#{tzgPrefix}_has_alarms") > -1
        $("#{elementPrefix} #widgetData #dynamic_iconRow_#{tzgPrefix}_alarm").toggleClass('alarm',setValue)
      else if tag.indexOf("#{tzgPrefix}_system_quality") > -1
        $("#{elementPrefix} #widgetData #dynamic_iconRow_#{tzgPrefix}_bad_quality").toggleClass('bad-data',setValue)
      else if tag.indexOf("#{tzgPrefix}_system_out_of_service") > -1
        $("#{elementPrefix} #widgetData #dynamic_iconRow_#{tzgPrefix}_outofservice").toggleClass('out-of-service',setValue)
      else if tag.indexOf("#{tzgPrefix}_system_perfect_hookup") > -1
        $("#{elementPrefix} #widgetData #dynamic_iconRow_#{tzgPrefix}_perfecthookup").toggleClass('perfect-hookup',setValue)
      else if tag.indexOf("#{tzgPrefix}_pca_mode_cooling") > -1
        $("#{elementPrefix} #widgetData #dynamic_#{tzgPrefix}_pca_discharge_temp").toggleClass('Cooling',setValue)
      else if tag.indexOf("#{tzgPrefix}_pca_mode_heating") > -1
        $("#{elementPrefix} #widgetData #dynamic_#{tzgPrefix}_pca_discharge_temp").toggleClass('Heating',setValue)
      else
        switch data.DataType.toLowerCase()
          when 'boolean'
            @render_row_tzg("dynamic_#{tag}", "", "", data.Parameters.Parm003, data.Parameters.Parm004, data.Parameters.Parm005)
          when 'float'
            @render_value_row_tzg("dynamic_#{tag}", data.Parameters.Parm001, data.Parameters.Parm002, data.Parameters.Parm003, data.Parameters.Parm004)
          when 'value'
            @render_value_row_tzg("dynamic_#{tag}", "", "", data.Parameters.Parm003, data.Parameters.Parm004)
      
      @
  
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
      #@kill_updates(@site_code)
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

window.PbbpcagpustatusWidgetView = PbbpcagpustatusWidgetView
module.exports = PbbpcagpustatusWidgetView
