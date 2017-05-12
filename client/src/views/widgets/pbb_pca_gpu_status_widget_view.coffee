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
    widgetData:     ''

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

    # @cktags = []
    if s? && !!s.site   
      lbl = "#{@site_code}: PBB/PCA/GPU Status"
      @ui.wtitle.html(lbl)

      return if !s.gates || s.gates.length == 0   

      ### Initialize Variables ###
      tags = []
      #elementPrefix = "li##{@el.parentNode.id} .#{@classID} "
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
        if @$("#dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}").length == 0
          @$("#widgetData thead tr").append("<th id='dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}' class='header'>#{gp[2]}</th>")
          @$("#widgetData tbody #iconRow").append(
            "<td id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}'>
              <span id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_system_quality' class='alert-icon fa fa-stack' title='System has lost communications'>
                <i class='fa fa-rss fa-stack-1x '></i>
                <i class='fa fa-exclamation fa-stack-1x'></i> 
              </span>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_system_out_of_service' class='alert-icon fa fa-wrench' title='Gate is out of service'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_pbb_docked' class='alert-icon fa fa-plane' title='Plane is DOCKED'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_system_perfect_hookup' class='alert-icon fa fa-check-circle-o' title='Perfect Hookup'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_gate_has_critical_alarms' class='alert-icon fa fa-warning' title='Gate has CRITICAL ALARMS'></i>
              <i id='dynamic_iconRow_#{gp[0]}_#{gp[1]}_#{gp[2]}_gate_has_alarms' class='alert-icon fa fa-bell' title='Gate has ALARMS'></i>
            </td>"
          )
        
        ### Load tagData With config tags ###
        for key, data of @tagConfig.TagData
          tags["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data.Tag
          @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{key}"] = data

        ### Load tagData With Widget defined tags ###
        for btg of @tags
          t = @tags[btg]
          @tagData["#{gp[0]}_#{gp[1]}_#{gp[2]}_#{btg}"] = { Tag: "#{t}",DataType:'Boolean',Parameters:{Parm001:null,Parm002:null,Parm003:null,Parm004:null,Parm005:null}}

      # Tags:{'system_quality','system_out_of_service','system_perfect_hookup','gate_has_warnings','gate_has_alarms','gate_has_critical_alarms',
      #     'gpu_quality','gpu_out_of_service','gpu_perfect_hookup','gpu_has_warnings','gpu_has_alarms','gpu_has_critical_alarms',
      #       'gpu_status',
      #         'pbb_quality','pbb_out_of_service','pbb_perfect_hookup','pbb_has_warnings','pbb_has_alarms','pbb_has_critical_alarms',
      #           'pbb_docked','pbb_status',
      #         'pca_quality','pca_out_of_service','pca_perfect_hookup','pca_has_warnings','pca_has_alarms','pca_has_critical_alarms',
      #           'pca_mode_cooling','pca_mode_heating','pca_status','pca_discharge_temp'}

        ### Loop Through Tags and configure the table cells ###
        for tag, tagData of @tagConfig.TagData
          t = tagData.Tag
          gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
          tags.push "#{@prefix}#{gate}#{tagData.Tag}.Value"
          if tagData.Element.Class != 'no_row'
            ### Create the new tag row if it doesn't already exist ###
            if @$("#dynamic_#{tag}").length == 0
              label = tagData.Label
              if /[*]/.test(label)
                label = label.replace "[*]", ""
              newRow = "<tr id='dynamic_#{tag}'>
                          <td class='lbl' id='dynamic_#{tag}_lbl'>#{label}</td>"
              for col in [1..6]
                newRow += "<td class='val no-show' id='dynamic_#{tag}_default_#{col}'>
                    <i id='dynamic_has_critical_alarms' class='cell-icon fa fa-warning' title='Gate has CRITICAL ALARMS'></i>
                    <i id='dynamic_has_alarms' class='cell-icon fa fa-bell' title='Gate has ALARMS'></i>
                    <i id='dynamic_out_of_service' class='cell-icon fa fa-wrench' title='A system is out of service'></i>
                    <i id='dynamic_perfect_hookup' class='cell-icon fa fa-check-circle-o' title='Perfect Hookup'></i>
                    <span id='dynamic_quality' class='cell-icon fa fa-stack'>
                      <i class='fa fa-rss fa-stack-1x'></i>
                      <i class='fa fa-exclamation fa-stack-1x'></i> 
                    </span>
                  </td>"
              newRow += "</tr>"
              if @$("#widgetData td[id$='_pca_discharge_temp']").length == 1 || @$("#widgetData td[id$='_elvrot_rotunda_status']").length == 1
                if @$("#widgetData td[id$='_elvrot_rotunda_status']").length == 1 && !(tag.indexOf('_discharge_temp') > -1)
                  @$("#widgetData tbody #dynamic_elvrot_rotunda_status").before(newRow)
                else
                  if tag.indexOf('_discharge_temp') > -1
                    @$("#widgetData tbody").append(newRow)
                  else
                    @$("#widgetData tbody").find('tr:last').prev().after(newRow)
              else
                @$("#widgetData tbody").append(newRow)


            ### Set the id for the gate and tag ###


            tp = tag.split('_')
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) #dynamic_has_critical_alarms").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tp[0]}_has_critical_alarms")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) #dynamic_has_alarms").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tp[0]}_has_alarms")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) #dynamic_out_of_service").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tp[0]}_out_of_service")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) #dynamic_perfect_hookup").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tp[0]}_perfect_hookup")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column}) #dynamic_quality").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tp[0]}_quality")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column})").attr('id', "dynamic_#{gp[0]}_#{gp[1]}_#{gp[2]}_#{tag}")
            @$("#widgetData #dynamic_#{tag} td:nth-child(#{column})").toggleClass("no-show", false)
            if @$("#widgetData td[id$='#{gp[0]}_#{gp[1]}_#{gp[2]}_pca_discharge_temp']").length == 1
              @$("#widgetData td[id$='#{gp[0]}_#{gp[1]}_#{gp[2]}_pca_discharge_temp']").html('')
              @$("#widgetData td[id$='#{gp[0]}_#{gp[1]}_#{gp[2]}_pca_discharge_temp']").toggleClass("val", false)
              @$("#widgetData td[id$='#{gp[0]}_#{gp[1]}_#{gp[2]}_pca_discharge_temp']").toggleClass("DisCharge", true)

          ### Ensure we have all the cells properly hidden/shown ###
          for element, index in @$("#dynamic_#{tag}>td")
            if element.id.indexOf("dynamic_#{tag}_default_") > -1
              col = column - 1
              @$("##{element.id}").toggleClass('no-show',(index > col))
              @$("##{element.id}").toggleClass('no-background',(index <= col))

      # for g in s.gates
      #   gp = g.split(':')
      #   gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
      #   for btg of @tags
      #     t = @tags[btg]
      #     tags.push "#{@prefix}#{gate}#{t}"

      # @cktags = tags

      if @refId == 0
        @refId = App.opc.add_tags @site_code, tags
        App.vent.on "opc:data:#{@site_code}", @data_update
        @opc =  App.opc.connections[@site_code]
        @start_heartbeat()

    @ 


  # process data and update the view
  data_update: (data)=>

    # elementPrefix = "li##{@el.parentNode.id} .#{@classID} "
    # s = @model.get("settings")
    # return if !s? || !s.gates? || s.gates.length == 0

    @beat_time = new Date().getTime() + @site_refresh

    # load values for all tags
    @vals = {}
    for tag, data of @tagData
      parsedTagId = tag.split("_")
      tzgPrefix = "#{parsedTagId[0]}_#{parsedTagId[1]}_#{parsedTagId[2]}"
      tzgTag = "Term#{parsedTagId[0]}.Zone#{parsedTagId[1]}.Gate#{parsedTagId[2]}.#{data.Tag}"

      q = @data_q(tzgTag)
      if q
        @vals[tag] = @opc.get_value("#{@prefix}#{tzgTag}.Value")
      # Process the Docked
      setValue = (@vals[tag]? && @vals[tag] == "True")

      if data.DataType.toLowerCase() == 'boolean'
        if tag.indexOf("#{tzgPrefix}_pca_mode_cooling") > -1
          @$("#widgetData #dynamic_#{tzgPrefix}_pca_discharge_temp").toggleClass('Cooling',setValue)
        else if tag.indexOf("#{tzgPrefix}_pca_mode_heating") > -1
          @$("#widgetData #dynamic_#{tzgPrefix}_pca_discharge_temp").toggleClass('Heating',setValue)
        else if tag.indexOf("_quality") > -1
          @$("#widgetData [id$='#{tag}']").toggleClass('Active', !setValue)
        else if @$("#widgetData [id$='#{tag}']").length > 0
          @$("#widgetData [id$='#{tag}']").toggleClass('Active', setValue)
      else
        if @$("#widgetData [id$='#{tag}']").length > 0
          @render_value_row_tzg("dynamic_#{tag}", data.Parameters.Parm001, data.Parameters.Parm002, data.Parameters.Parm003, data.Parameters.Parm004)

      #if /pbb_docked/.test(tag)
      # if tag.indexOf("#{tzgPrefix}_pbb_docked") > -1
      #   @$("#widgetData #dynamic_iconRow_#{tzgPrefix}_docked").toggleClass('docked',setValue)
      # else if tag.indexOf("#{tzgPrefix}_gate_has_critical_alarms") > -1
      #   @$("#widgetData #dynamic_iconRow_#{tzgPrefix}_critical").toggleClass('critical',setValue)
      # else if tag.indexOf("#{tzgPrefix}_gate_has_alarms") > -1
      #   @$("#widgetData #dynamic_iconRow_#{tzgPrefix}_alarm").toggleClass('alarm',setValue)
      # else if tag.indexOf("#{tzgPrefix}_system_quality") > -1
      #   @$("#widgetData #dynamic_iconRow_#{tzgPrefix}_system_quality").toggleClass('bad-data',!setValue)
      # else if tag.indexOf("#{tzgPrefix}_system_out_of_service") > -1
      #   @$("#widgetData #dynamic_iconRow_#{tzgPrefix}_outofservice").toggleClass('out-of-service',setValue)
      # else if tag.indexOf("#{tzgPrefix}_system_perfect_hookup") > -1
      #   @$("#widgetData #dynamic_iconRow_#{tzgPrefix}_perfecthookup").toggleClass('perfect-hookup',setValue)
      # else if tag.indexOf("#{tzgPrefix}_pca_mode_cooling") > -1
      #   @$("#widgetData #dynamic_#{tzgPrefix}_pca_discharge_temp").toggleClass('Cooling',setValue)
      # else if tag.indexOf("#{tzgPrefix}_pca_mode_heating") > -1
      #   @$("#widgetData #dynamic_#{tzgPrefix}_pca_discharge_temp").toggleClass('Heating',setValue)
      # else
      #   switch data.DataType.toLowerCase()
      #     when 'boolean'
      #       @render_row_tzg("dynamic_#{tag}", "", "", data.Parameters.Parm003, data.Parameters.Parm004, data.Parameters.Parm005)
      #     when 'float'
      #       @render_value_row_tzg("dynamic_#{tag}", data.Parameters.Parm001, data.Parameters.Parm002, data.Parameters.Parm003, data.Parameters.Parm004)
      #     when 'value'
      #       @render_value_row_tzg("dynamic_#{tag}", "", "", data.Parameters.Parm003, data.Parameters.Parm004)
      
    @
  
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

window.PbbpcagpustatusWidgetView = PbbpcagpustatusWidgetView
module.exports = PbbpcagpustatusWidgetView
