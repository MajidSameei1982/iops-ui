Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AirportoverviewWidgetView extends IOPSWidgetView
  template:   "widgets/airport_overview_widget"
  classID: 'airport_overview_widget'
  className: 'widget-outer box box-primary airport_overview_widget'
  ui:
    terminal:       'input#terminal'
    zone:           'input#zone'
    display_prefix: 'input#display_prefix'
    gate:           'input#gate'
    site:           'select#site'
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    docked:         'i#docked'
    alarms:         'i#alarms'
    warnings:       'i#warnings'

  @layout:
    sx: 9
    sy: 9

  tags:{}
  site_refresh: 50000

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    @IsPageLoading = false
    @IsUpdatingSettings = false

    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    s = @model.get("settings")

    if s? && !!s.site
      lbl = "#{@site_code}: Airport Overview"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      @kill_updates(@site_code)

      # clear out lingering top-level <code>_account classes
      classList = $(@el).attr('class').split(/\s+/)
      for c in classList
        if c.endsWith('_account') then $(@el).removeClass(c)
      $(@el).addClass("#{@site_code}_account")

      # generate list of gates
      @gateData = []
      tags = []
      terminals = @site_settings.zones
      for t of terminals
        term = terminals[t]
        for z of term
          zone = term[z]
          for g of zone
            gate = 
              Number: "#{g}"
              Terminal: "#{t}"
              Zone: "#{z}"
              Tag_gate_alarm: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.Alarm._HasAlarms"
              Tag_gate_docked: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.AIRCRAFTDOCKEDCALCULATION"
              Tag_gate_critical: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.Alarm._HasCriticalAlarms"
              Tag_gate_perfect_hookup: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.System.PERFECT_HOOKUP"
              Tag_system_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.System._OUT_OF_SERVICE"
              Tag_gpu_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.GPU._OUT_OF_SERVICE"
              Tag_pbb_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB._OUT_OF_SERVICE"
              Tag_pca_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PCA._OUT_OF_SERVICE"
            @gateData.push gate
            # add tags to monitor
            tags.push "#{gate.Tag_gate_alarm}.Value"
            tags.push "#{gate.Tag_gate_docked}.Value"
            tags.push "#{gate.Tag_gate_critical}.Value"
            tags.push "#{gate.Tag_gate_perfect_hookup}.Value"
            tags.push "#{gate.Tag_system_out_of_service}.Value"
            tags.push "#{gate.Tag_gpu_out_of_service}.Value"
            tags.push "#{gate.Tag_pbb_out_of_service}.Value"
            tags.push "#{gate.Tag_pca_out_of_service}.Value"
 
      # draw layout and gates
      @$("#Airport_Overview").remove()
      @$(".display").append """
        <div id='Airport_Overview' class='#{@site_code}_Term_Overview'>
          <div id='layout_container'>
            <img id='layout' src='img/airport/#{@site_code}/#{@site_code}_Term_Overview.png'></img>
          </div>
        </div>
      """
      for g in @gateData
        @$("#layout_container").append "<div id='Airport_Gate_#{g.Number}_a'><div id='Airport_Gate_#{g.Number}_icon'></div><div id='Airport_Gate_#{g.Number}_status'></div>"

      # add tag list to the connection for monitoring
      App.opc.add_tags @site_code, tags
      @opc =  App.opc.connections[@site_code]
      # listen for updates
      @watch_updates(@site_code)
      @start_heartbeat()

  # process data and update the view
  data_update: (data)=>
    s = @model.get("settings")
    @beat_time = new Date().getTime() + @site_refresh

    for g in @gateData
      outOfService = null
      critical = null
      alarm = null
      docked = null
      perfectHookup = null

      qd = @opc.tags["#{g.Tag_gate_docked}"].props.Value.quality
      if qd? && qd
        docked = @get_bool(@opc.get_value("#{g.Tag_gate_docked}.Value"))
        @$("#Airport_Gate_#{g.Number}_a")
        .toggleClass("docked", docked ==true && qd)
      else
        qd = false

      qsysuos = @opc.tags["#{g.Tag_system_out_of_service}"].props.Value.quality
      if (qsysuos? && qsysuos)
        qsysos =  @get_bool(@opc.get_value("#{g.Tag_gpu_out_of_service}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
          .toggleClass("out-of-service", qsysos==true && qsysuos)
      else
        qsysuos = false

      qgpuos = @opc.tags["#{g.Tag_gpu_out_of_service}"].props.Value.quality
      qpbbos = @opc.tags["#{g.Tag_pbb_out_of_service}"].props.Value.quality
      qpcaos = @opc.tags["#{g.Tag_pca_out_of_service}"].props.Value.quality
      qos = false
      if (qgpuos? && qgpuos) || (qpbbos? && qpbbos) || (qpcaos? && qpcaos)
        qos = true
        oosGPU = false
        oosPBB = false
        oosPCA = false
        if (qgpuos? && qgpuos)
          oosGPU = @get_bool(@opc.get_value("#{g.Tag_gpu_out_of_service}.Value"))
        if (qpbbos? && qpbbos)
          oosPBB = @get_bool(@opc.get_value("#{g.Tag_pbb_out_of_service}.Value"))
        if (qpcaos? && qpcaos)
          oosPCA = @get_bool(@opc.get_value("#{g.Tag_pca_out_of_service}.Value"))
        outOfService = oosGPU || oosPBB || oosPCA
        @$("#Airport_Gate_#{g.Number}_icon")
          .toggleClass("out-of-service", outOfService==true && qos)
      else
        qos = false

      qc = @opc.tags["#{g.Tag_gate_critical}"].props.Value.quality
      if qc? && qc
        critical = @get_bool(@opc.get_value("#{g.Tag_gate_critical}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
        .toggleClass("critical", critical ==true && qc)
      else
        qc = false

      qa = @opc.tags["#{g.Tag_gate_alarm}"].props.Value.quality
      if qa? && qa
        alarm = @get_bool(@opc.get_value("#{g.Tag_gate_alarm}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
        .toggleClass("alarm", alarm ==true && qa)
      else
        qa = false
      
      qpd = @opc.tags["#{g.Tag_gate_perfect_hookup}"].props.Value.quality
      if qpd? && qpd
        perfectHookup = @get_bool(@opc.get_value("#{g.Tag_gate_perfect_hookup}.Value"))
        @$("#Airport_Gate_#{g.Number}_status")
        .toggleClass("perfect-hookup", perfectHookup ==true && qpd)
      else
        qpd = false

    @

  set_model: ()=>

    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @site_code = OPCManager.get_site_code(s.site)
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if @settings_visible
      @kill_updates(@site_code)
      if @heartbeat_timer? && @heartbeat_timer > 0
        window.clearInterval(@heartbeat_timer)
      @ui.site.chosen({width:'95%'})
    else
      @IsPageLoading = false
      @update()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @$('#site').on 'change', ()=>
      @set_model()

    site = settings.site
    if !site? || site == ''
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

window.AirportoverviewWidgetView = AirportoverviewWidgetView
module.exports = AirportoverviewWidgetView
