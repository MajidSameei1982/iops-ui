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

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if !@IsUpdatingSettings && !@IsPageLoading
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
              Tag_gate_critical: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.Alarm._HasCritialAlarms"
              Tag_gate_perfect_dock: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.PerfectDock"
              Tag_gate_out_of_service: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.OutOfService"
            @gateData.push gate
            # add tags to monitor
            tags.push "#{gate.Tag_gate_alarm}.Value"
            tags.push "#{gate.Tag_gate_docked}.Value"
            tags.push "#{gate.Tag_gate_critical}.Value"
            tags.push "#{gate.Tag_gate_perfect_dock}.Value"
            tags.push "#{gate.Tag_gate_out_of_service}.Value"
 
      # draw layout and gates
      @$("#Airport_Overview").remove()
      @$(".display").append """
        <div id='Airport_Overview' class='#{@site_code}_Term_Overview'>
          <div id='layout_container'>
            <img id='layout' src='img/airport/#{@site_code}/#{@site_code}_Term_Overview.png'></img>
          </div>
        </div>
      """
      #@$(".gate_ac").remove()
      for g in @gateData
        @$("#layout_container").append "<div id='Airport_Gate_#{g.Number}_a'><div id='Airport_Gate_#{g.Number}_icon'></div><div id='Airport_Gate_#{g.Number}_status'></div>"
        #$(".display").append "<div id='Airport_Gate_#{g.Number}_Status'></div>"

      # add tag list to the connection for monitoring
      App.opc.add_tags @site_code, tags
      # listen for updates
      @watch_updates(@site_code)

      # make local reference to the opc connection in use
      @opc = App.opc.connections[@site_code]

  data_update: (data)=>
    for g in @gateData
      outOfService = null
      critical = null
      alarm = null
      docked = null
      perfectDock = null

      qd = @opc.tags["#{g.Tag_gate_docked}"].props.Value.quality
      if qd? && qd
        docked = @get_bool(@opc.get_value("#{g.Tag_gate_docked}.Value"))
        @$("#Airport_Gate_#{g.Number}_a")
        .toggleClass("docked", docked ==true && qd)
      else
        qd = false

      qoos = @opc.tags["#{g.Tag_gate_out_of_service}"].props.Value.quality
      if qoos? && goos
        outOfService = @get_bool(@opc.get_value("#{g.Tag_gate_out_of_service}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
        .toggleClass("out-of-service", outOfService ==true && qoos)
      else
        goos = false

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
        outOfService = @get_bool(@opc.get_value("#{g.Tag_gate_out_of_service}.Value"))
        @$("#Airport_Gate_#{g.Number}_icon")
        .toggleClass("alarm", alarm ==true && qa)
      else
        qa = false
      
      qpd = @opc.tags["#{g.Tag_gate_perfect_dock}"].props.Value.quality
      if qpd? && qpd
        perfectDock = @get_bool(@opc.get_value("#{g.Tag_gate_perfect_dock}.Value"))
        @$("#Airport_Gate_#{g.Number}_status")
        .toggleClass("perfect-dock", perfectDock ==true && qpd)
      else
        qpd = false

    @

  set_model: ()=>
    @IsUpdatingSettings = true

    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible then @ui.site.chosen({width:'95%'})

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    site = settings.site
    if !site? || site == ''
      @toggle_settings()
    @draw_selectors(settings.terminal, settings.zone, settings.gate)
    
    @$('#site').on 'change', ()=>
      @set_model()
    @check_init_site()

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.AirportoverviewWidgetView = AirportoverviewWidgetView
module.exports = AirportoverviewWidgetView
