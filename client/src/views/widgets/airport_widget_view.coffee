Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')
# OPCManager = require('../../opcmanager')

# ----------------------------------
class AirportWidgetView extends WidgetView
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

  tags:
    #Grid Tags
    test: 'test'
    #Processing Tags
    #pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    #pbb_has_warnings :  'Warning._HasWarnings'
    #pbb_has_alarms :    'Alarm._HasAlarms'
    
  modelEvents:
    "change" : "update"

  tagsA = {}

  watch_updates: (conn)->
    App.vent.on "opc:data:#{conn}", @data_update
  kill_updates: (conn)->
    App.vent.off "opc:data:#{conn}", @data_update

  update: ()->
    s = @model.get("settings")
   
    if s? && !!s.site
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

      # stop listening for updates
      @kill_updates(@site_code)
      OPCManager.rem_ref(@site_code)

      # build settings      
      settings = @site.get('settings')
      settings || settings = {}
      cloud = if settings.cloud then "RemoteSCADAHosting.Airport-#{@site_code}." else ''
      @prefix = "#{cloud}Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}."
      tags = []

      $w = $("div.airport_widget")
      classList = $w.attr('class').split(/\s+/)
      $.each classList, (index, item) ->
        if item.match(/\b\w+(_account\b)/) != null
          $w.removeClass item
        return
      $w.addClass("#{@site_code}_account")

      gate = if s.display_prefix? then "#{s.display_prefix}#{s.gate}" else '#{s.gate}'
      
      console.log("DEBUG | Airport_Widget | Site_Code='#{@site_code}'")

      # Temporary Client Eval until Settings are updated with the IsCloudServer (or equivelent flag)
      NumberOfGates = 0
      gateData = []
      switch @site_code
        when "CID" 
          NumberOfGates = 6
          gateData = 
            Gate10:
              Number: "10"
              Terminal: "1"
              Zone: "1"
            Gate12:
              Number: "12"
              Terminal: "1"
              Zone: "1"
        when "DAL"
          NumberOfGates = 2
          gateData = 
            Gate10:
              Tag_gate_alarm: "Airport.DAL.Term1.Zone1.Gate10.Alarm._HasAlarms"
              Tag_gate_warning: "Airport.DAL.Term1.Zone1.Gate10.Warning._HasWarnings"
              Tag_gate_docked: "Airport.DAL.Term1.Zone1.Gate10.PBB.AIRCRAFTDOCKEDCALCULATION"
              Number: "10"
              Terminal: "1"
              Zone: "1"
            Gate12:
              Tag_gate_alarm: "Airport.DAL.Term1.Zone1.Gate12.Alarm._HasAlarms"
              Tag_gate_warning: "Airport.DAL.Term1.Zone1.Gate12.Warning._HasWarnings"
              Tag_gate_docked: "Airport.DAL.Term1.Zone1.Gate12.PBB.AIRCRAFTDOCKEDCALCULATION"
              Number: "12"
              Terminal: "1"
              Zone: "1"
        when "EWR"
          gateData = 
            GateC90:
              Number: "C90"
              Terminal: "C"
              Zone: "1"
            GateC125:
              Number: "C125"
              Terminal: "C"
              Zone: "3"

      
      if $(".display #Airport_Overview").length == 0
        $(".display").append "<div id='Airport_Overview' class='#{@site_code}_Term_Overview'></div>"

      $.each gateData, (index, item) =>
        if $(".display #Gate_#{item.Number}").length == 0
          tags.push "#{item.Tag_gate_alarm}.Value"
          tags.push "#{item.Tag_gate_warning}.Value"
          tags.push "#{item.Tag_gate_docked}.Value"
          $('.display').append "<div id='Airport_Gate_#{item.Number}a' 
                                  opc-tag-bkg='{
                                    \"type\":\"group\", 
                                    \"all_f\":{\"cls\":\"airport_gate_#{item.Number}_idle\"}, 
                                    \"bad_q\":{\"cls\":\"airport_gate_#{item.Number}_bad_data\"}, 
                                    \"group\":[
                                      {\"tag\":\"#{item.Tag_gate_docked}.Value\",\"config\":{\"cls\":\"airport_gate_#{item.Number}_ac_docked\"}}
                                    ]
                                  }' >
                                </div>"
        if $(".display #Gate_#{item.Number}_Status").length == 0
          $(".display").append "<div id='Airport_Gate_#{item.Number}_Status' 
                                  opc-tag-bkg='{
                                    \"type\":\"group\",
                                    \"all_f\":{\"cls\":\"airport_gate_#{item.Number}_good\"},
                                    \"bad_q\":{\"cls\":\"airport_gate_#{item.Number}_bad_data\"},
                                    \"group\":[
                                      {\"tag\":\"#{item.Tag_gate_alarm}.Value\",\"config\":{\"cls\":\"airport_gate_#{item.Number}_alarm\"}},
                                      {\"tag\":\"#{item.Tag_gate_warning}.Value\",\"config\":{\"cls\":\"airport_gate_#{item.Number}_warning\"}}
                                    ]
                                  }' >
                                </div>"

      App.opc.add_tags @site_code, tags
      tagsA = tags

      # listen for updates
      @watch_updates(@site_code)
      OPCManager.add_ref(@site_code)
      
      lbl = "Airport Overview"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc = App.opc.connections[@site_code]
      @set_descriptions(true)

  get_bool: (v)=>
    if v? && v.toUpperCase() == "TRUE"
      return true
    else if v? && v.toUpperCase() == "FALSE"
      return false
    null

  get_value: (tag)=>
    return @opc.get_value("#{@prefix}#{tag}.Value")

  # get data quality and set view if bad
  mark_bad_data: (tag, el)->
    q = @data_q(tag)
    h = if !q then 'BAD DATA' else $(el).html()
    $(el).html(h).toggleClass("bad_data", !q)

  data_q: (tag)=>
    c = App.opc.connections[@site_code]
    t = c.tags["#{@prefix}#{tag}"]
    t.props.Value.quality

  flash_alarm: (fl)=>
    if @fl_interval? && !fl
      clearInterval(@fl_interval)
      $(@el).removeClass('alarm')
      @fl_interval = null
    if !@fl_interval && fl
      chg = ()=>
        $(@el).toggleClass('alarm')
      @fl_interval = setInterval(chg, 500)

  # load tag descriptions once for labels
  set_descriptions: (force)=>
    tds = []
    
    tlen = Object.keys(@tags).length
    return if !force && @dcount? && @dcount >= tlen

    @dcount = if force then 0 else @dcount
    if !@dcount? then @dcount = 0

    for t of @tags
      tg = @tags[t]
      tds.push "#{@prefix}#{tg}.Description"
    @opc.load_tags tds, (data)=>
      for t in data.tags
        for tt, idx of @tags
          ts = @tags[tt]
          if "#{@prefix}#{ts}" == t.name
            v = t.props[0].val
            @$("##{tt}_lbl").html(v)
            @dcount += 1
            break      

  render_row: (tag, tv, fv, tc, fc)->
    v = @get_bool(@vals[tag])
    txt = if v then tv else fv
    el = @$("##{tag}").html(txt)
    if tc? then el.toggleClass(tc, v)
    if fc? then el.toggleClass(fc, !v)
    @mark_bad_data @tags[tag], el

  render_value_row: (tag, IsNumeric, percision, suffix)->
    if @vals[tag]? && @vals[tag] != '' 
      set_value = if IsNumeric then parseFloat(@vals[tag]).toFixed(percision) else @vals[tag] 
    else
      set_value = ' -- ' 
    suffix = if suffix? then " #{suffix}" else ""
    el = @$("##{tag}").html("#{set_value}#{suffix}")
    @mark_bad_data @tags[tag], el

  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible then @ui.site.chosen()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @$('#site').on 'change', ()=>
      @set_model()    
    site = settings.site
    if !site? || site == ''
      @toggle_settings()
    site_code = OPCManager.get_site_code(settings.site)
    if site_code? then OPCManager.add_ref(site_code)

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    OPCManager.rem_ref(@site_code)
    
# ----------------------------------

window.AirportWidgetView = AirportWidgetView
module.exports = AirportWidgetView
