Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AirportWidgetView extends IOPSWidgetView
  template:   "widgets/airport_widget"
  className: 'widget-outer box box-primary airport_widget'
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

  update: ()->
    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    s = @model.get("settings")
    if s? && !!s.site
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
              #Tag_gate_warning: "Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.Warning._HasWarnings"
              Tag_gate_docked: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.AIRCRAFTDOCKEDCALCULATION"
              Tag_gate_critical: "#{@cloud_prefix}Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.AUTOLEVEL_FAIL_FLAG"
              #Tag_gate_docked: "Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}.PBB.AUTOLEVELING"
            @gateData.push gate
            # add tags to monitor
            tags.push "#{gate.Tag_gate_alarm}.Value"
            tags.push "#{gate.Tag_gate_warning}.Value"
            tags.push "#{gate.Tag_gate_docked}.Value"
 
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
        @$("#layout_container").append "<div id='Airport_Gate_#{g.Number}_a'><div class='icon'></div></div>"
        #$(".display").append "<div id='Airport_Gate_#{g.Number}_Status'></div>"

      # add tag list to the connection for monitoring
      App.opc.add_tags @site_code, tags
      # listen for updates
      @watch_updates(@site_code)

      # make local reference to the opc connection in use
      @opc = App.opc.connections[@site_code]

      # set labels
      lbl = "#{@site_code} Airport Overview"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)


  data_update: (data)=>
    for g in @gateData
      docked = @get_bool(@opc.get_value("#{g.Tag_gate_docked}.Value"))
      # alarm = @get_bool(@opc.get_value("#{g.Tag_gate_alarm}.Value"))
      # warning = @get_bool(@opc.get_value("#{g.Tag_gate_warning}.Value"))
      warning = @get_bool(@opc.get_value("#{g.Tag_gate_alarm}.Value"))
      alarm = @get_bool(@opc.get_value("#{g.Tag_gate_critical}.Value"))
      qd = @opc.tags["#{g.Tag_gate_docked}"].props.Value.quality
      qa = @opc.tags["#{g.Tag_gate_alarm}"].props.Value.quality
      qw = @opc.tags["#{g.Tag_gate_warning}"].props.Value.quality
      bad_q = !qa || !qw

      @$("#Airport_Gate_#{g.Number}_a")
      .toggleClass("docked", docked==true && qd)
      .toggleClass("bad_data", !qd)

      # aq = @opc.tags["#{g.Tag_gate_alarm}"]
      # console.log aq
      if alarm == true 
        a = @$("#Airport_Gate_#{g.Number}_a .icon #alarm")
        if !a? || a.length == 0 then @$("#Airport_Gate_#{g.Number}_a .icon").append("<i id='alarm' class='fa fa-warning alarm blink'></i>")
      else
        @$("#Airport_Gate_#{g.Number}_a .icon #alarm").remove()

      if warning == true && alarm == false
        a = @$("#Airport_Gate_#{g.Number}_a .icon #warning")
        if !a? || a.length == 0 then @$("#Airport_Gate_#{g.Number}_a .icon").append("<i id='warning' class='fa fa-warning warning'></i>")
      else
        @$("#Airport_Gate_#{g.Number}_a .icon #warning").remove()

    @


  set_model: ()=>
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
    @$('#site').on 'change', ()=>
      @set_model()    
    site = settings.site
    if !site? || site == ''
      @toggle_settings()

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.AirportWidgetView = AirportWidgetView
module.exports = AirportWidgetView
