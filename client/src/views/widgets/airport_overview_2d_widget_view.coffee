Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class Airportoverview2dWidgetView extends IOPSWidgetView
  template:   "widgets/airport_overview_2d_widget"
  classID: 'airport_overview_2d_widget'
  className: 'widget-outer box box-primary airport_overview_2d_widget'
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
      lbl = "#{@site_code}: Airport Overview - 2D"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      #@kill_updates(@site_code)

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
              Tag_gate_autolevel: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.AUTOLEVELMODEFLAG"
              Tag_gate_docked: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.AIRCRAFTDOCKEDCALCULATION"
              Tag_gate_critical: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.Alarm._HasCriticalAlarms"
              Tag_gate_perfect_hookup: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.System.Perfect_Hookup"
              Tag_system_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.System._OUT_OF_SERVICE"
              Tag_gpu_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.GPU._OUT_OF_SERVICE"
              Tag_pbb_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB._OUT_OF_SERVICE"
              Tag_pca_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PCA._OUT_OF_SERVICE"
              Tag_pbb_quality: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB._QUALITY"
              
            @gateData.push gate
            # add tags to monitor
            tags.push "#{gate.Tag_gate_alarm}.Value"
            tags.push "#{gate.Tag_gate_autolevel}.Value"
            tags.push "#{gate.Tag_gate_docked}.Value"
            tags.push "#{gate.Tag_gate_critical}.Value"
            tags.push "#{gate.Tag_gate_perfect_hookup}.Value"
            tags.push "#{gate.Tag_system_out_of_service}.Value"
            tags.push "#{gate.Tag_gpu_out_of_service}.Value"
            tags.push "#{gate.Tag_pbb_out_of_service}.Value"
            tags.push "#{gate.Tag_pca_out_of_service}.Value"
            tags.push "#{gate.Tag_pbb_quality}.Value"
 
      # draw layout and gates
      @$("#Airport_Overview").remove()
      @$(".display").append """
        <div id='Airport_Overview' class='#{@site_code}_Term_Overview'>
          <div id='layout_container'>
            <img id='layout' src='img/airport/#{@site_code}-2D/#{@site_code}_Term_Overview.png'></img>
          </div>
        </div>
      """
      for g in @gateData
        @$("#layout_container").append "<div id='Airport_Gate_#{g.Number}_a'><div id='Airport_Gate_#{g.Number}_icon'></div><div id='Airport_Gate_#{g.Number}_status'><div id='Airport_Gate_#{g.Number}_plane'></div>"

      # add tag list to the connection for monitoring
      App.opc.add_tags @site_code, tags
      @opc =  App.opc.connections[@site_code]
      # listen for updates
      if @refId == 0
        @refId = App.opc.add_tags @site_code, tags
        App.vent.on "opc:data:#{@site_code}", @data_update
        @opc =  App.opc.connections[@site_code]
        @start_heartbeat()

  # process data and update the view
  data_update: (data)=>
    s = @model.get("settings")
    @beat_time = new Date().getTime() + @site_refresh

    for g in @gateData
      outOfService = null
      critical = null
      alarm = null
      autolevel = null
      docked = null
      perfectHookup = null
      badQuality = null

      qbq = @opc.tags["#{g.Tag_pbb_quality}"].props.Value.quality
      if qbq? && qbq
        badQuality = @get_bool(@opc.get_value("#{g.Tag_pbb_quality}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
        .toggleClass("bad-data", badQuality ==false && qbq)
      else
        @$("#Airport_Gate_#{g.Number}_icon")
        .toggleClass("bad-data", false)
        qbq = false

      qsysuos = @opc.tags["#{g.Tag_system_out_of_service}"].props.Value.quality
      if (qsysuos? && qsysuos)
        outOfService =  @get_bool(@opc.get_value("#{g.Tag_system_out_of_service}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
          .toggleClass("out-of-service", outOfService==true && qsysuos)
      else
        qsysuos = false

      qgpuos = @opc.tags["#{g.Tag_gpu_out_of_service}"].props.Value.quality
      qpbbos = @opc.tags["#{g.Tag_pbb_out_of_service}"].props.Value.quality
      qpcaos = @opc.tags["#{g.Tag_pca_out_of_service}"].props.Value.quality
      qos = qgpuos || qpbbos || qpcaos
      if (qos? && qos)
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
        .toggleClass("alarm", !critical && alarm ==true && qa)
      else
        qa = false

      qd = @opc.tags["#{g.Tag_gate_docked}"].props.Value.quality
      if qd? && qd
        docked = @get_bool(@opc.get_value("#{g.Tag_gate_docked}.Value"))
        @$("#Airport_Gate_#{g.Number}_a")
          .toggleClass("docked", docked ==true && qd)
      else
        qd = false

      qal = @opc.tags["#{g.Tag_gate_autolevel}"].props.Value.quality
      if qal? && qal
        autolevel = @get_bool(@opc.get_value("#{g.Tag_gate_autolevel}.Value"))
        @$("#Airport_Gate_#{g.Number}_plane")
          .toggleClass("autolevel", autolevel ==true && qal)
      else
        qal = false

      # Status div adds
      qpd = @opc.tags["#{g.Tag_gate_perfect_hookup}"].props.Value.quality
      if qpd? && qpd
        perfectHookup = @get_bool(@opc.get_value("#{g.Tag_gate_perfect_hookup}.Value"))
        @$("#Airport_Gate_#{g.Number}_status")
        .toggleClass("perfect-hookup", perfectHookup ==true && qpd)
      else
        qpd = false

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
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if @settings_visible
      #@kill_updates(@site_code)
      #if @heartbeat_timer? && @heartbeat_timer > 0
      #  window.clearInterval(@heartbeat_timer)
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
      #@watch_updates(@site_code)
    
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

window.Airportoverview2dWidgetView = Airportoverview2dWidgetView
module.exports = Airportoverview2dWidgetView
