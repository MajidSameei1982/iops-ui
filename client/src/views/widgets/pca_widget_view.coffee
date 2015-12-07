Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')
# OPCManager = require('../../opcmanager')

# ----------------------------------

class PcaWidgetView extends WidgetView
  template:   "widgets/pca_widget"
  className: 'widget-outer box box-primary gate_widget'
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
    sx: 4
    sy: 9

    # <table class='data'>
    #   <tr><td class='lbl' id='pbb_status_lbl'>&nbsp;</td><td id='pbb_status' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='pca_status_lbl'>&nbsp;</td><td id='pca_status' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='gpu_status_lbl'>&nbsp;</td><td id='gpu_status' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='pbb_docktime_lbl'>ACF Floor</td><td id='pbb_docktime' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='pbb_ontime_lbl'>&nbsp;</td><td id='pbb_ontime' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='pca_ontime_lbl'>&nbsp;</td><td id='pca_ontime' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='gpu_ontime_lbl'>Limits</td><td id='gpu_ontime' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='pca_dischargetemp_lbl'>&nbsp;</td><td id='pca_dischargetemp' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='gpu_outputamps_lbl'>&nbsp;</td><td id='gpu_outputamps' class='val'>LOADING...</td></tr>
    #   <tr><td class='lbl' id='gpu_outputvolts_lbl'>&nbsp;</td><td id='gpu_outputvolts' class='val'>LOADING...</td></tr>
    # </table>

  tags:
    #Grid Tags
    pbb_status :        'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_aircraft :      'PBB.AIRCRAFTSTATUS'
    pca_status :        'PCA.PCAON'
    gpu_status :        'GPU.GPUSTATUS'
    pbb_docktime:       'PBB.DOCKTIME'
    pbb_ontime:         'PBB.PBBTIMER'
    pca_ontime:         'PCA.PCATIMER'
    gpu_ontime:         'GPU.GPUTIMER'
    pca_dischargetemp:  'PCA.TEMPDISCH'
    gpu_outputamps:     'GPU.RAOUTAVG'
    gpu_outputvolts:    'GPU.RVOUTAVG'
    
    #Processing Tags
    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'
    
  modelEvents:
    "change" : "update"

  watch_updates: (conn)->
    App.vent.on "opc:data:#{conn}", @data_update
  kill_updates: (conn)->
    App.vent.off "opc:data:#{conn}", @data_update

  update: ()->
    s = @model.get("settings")
   
    if s? && !!s.gate
      @site_code = OPCManager.get_site_code(s.site)
      if !@site_code? then return null

      # stop listening for updates
      @kill_updates(@site_code)
      OPCManager.rem_ref(@site_code)

      gate = if s.display_prefix? then "#{s.display_prefix}#{s.gate}" else '#{s.gate}'
      
      # build settings      
      @prefix = "RemoteSCADAHosting.Airport-#{@site_code}.Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{gate}."
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      OPCManager.add_ref(@site_code)
      
      lbl = "Gate #{gate}"
      @ui.wtitle.html(lbl)
      @$('#gate_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
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

    # DOCKED
    v = @get_bool(@vals.pbb_status)
    txt = if v then "Docked" else "Undocked"
    @$("#pbb_docked_lbl").html('PBB Status')
    el = @$("#pbb_docked").html(txt).toggleClass('ok', v)
    @mark_bad_data @tags.pbb_status, el
    
    # PBB STATUS
    @render_row("pbb_status", "", "", "ok")

    # PBB AIRCRAFT
    aircraftstatus = @vals['pbb_aircraft']
    @$('#pbb_status').html(aircraftstatus)

    # PCA Status
    @render_row("pca_status", "On", "Off", "ok", "err")

    # GPU Status
    @render_row("gpu_status", "On", "Off", "ok", "err")

    # PBB DOCK TIME
    @render_value_row("pbb_docktime", true, 4)
    # set_value = if @vals.pbb_docktime? && @vals.pbb_docktime != '' then parseFloat(@vals.pbb_docktime).toFixed(4) else ' -- ' 
    # el = @$('#pbb_docktime').html("#{set_value}")
    # @mark_bad_data @tags.pbb_docktime, el

    # PBB ON TIME
    @render_value_row("pbb_ontime", true, 1, "min")
    # set_value = if @vals.pbb_ontime? && @vals.pbb_ontime != '' then parseFloat(@vals.pbb_docktime).toFixed(4) else ' -- ' 
    # el = @$('#pbb_ontime').html("#{set_value}")
    # @mark_bad_data @tags.pbb_ontime, el

    # PCA ON TIME
    @render_value_row("pca_ontime", true, 1, "min")
    # set_value = if @vals.pca_ontime? && @vals.pca_ontime != '' then parseFloat(@vals.pbb_docktime).toFixed(4) else ' -- ' 
    # el = @$('#pca_ontime').html("#{set_value} Min")
    # @mark_bad_data @tags.pca_ontime, el
        
    # GPU ON TIME
    @render_value_row("gpu_ontime", true, 1, "min")
    # set_value = if @vals.gpu_ontime? && @vals.gpu_ontime != '' then parseFloat(@vals.pbb_docktime).toFixed(4) else ' -- ' 
    # el = @$('#gpu_ontime').html("#{set_value}")
    # @mark_bad_data @tags.gpu_ontime, el

    # PCA Discharge Time
    @render_value_row("pca_dischargetemp", true, 0, "Deg")
    # set_value = if @vals.pca_dischargetemp? && @vals.pca_dischargetemp != '' then parseFloat(@vals.pbb_docktime).toFixed(4) else ' -- ' 
    # el = @$('#pca_dischargetemp').html("#{set_value}")
    # @mark_bad_data @tags.pca_dischargetemp, el

    # GPU Output Amps
    @render_value_row("gpu_outputamps", true, 0, "Amps")
    # set_value = if @vals.gpu_outputamps? && @vals.gpu_outputamps != '' then parseFloat(@vals.gpu_outputamps).toFixed(4) else ' -- ' 
    # el = @$('#gpu_outputamps').html("#{set_value}")
    # @mark_bad_data @tags.gpu_outputamps, el

    # GPU Output Volts
    @render_value_row("gpu_outputvolts", true, 0, "Volts")
    # set_value = if @vals.gpu_outputvolts? && @vals.gpu_outputvolts != '' then parseFloat(@vals.gpu_outputvolts).toFixed(4) else ' -- ' 
    # el = @$('#gpu_outputvolts').html("#{set_value}")
    # @mark_bad_data @tags.gpu_outputvolts, el


    # ALARMS
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms))
    # WARNINGS
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings))
    # DOCKED
    @ui.docked.toggle(@get_bool(@vals.pbb_status))
    
    # AUTOLEVELFAIL
    @flash_alarm(@get_bool(@vals.pbb_autolevelfail))

    @set_descriptions()

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.gate = @ui.gate.val().trim()
    s.site = @ui.site.val().trim()
    s.terminal = @ui.terminal.val().trim()
    s.zone = @ui.zone.val().trim()
    s.display_prefix = @ui.display_prefix.val().trim()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible then @ui.site.chosen()

  onShow: ()->
    @ui.gate.on "change", @set_model
    @ui.site.on "change", @set_model
    @ui.terminal.on "change", @set_model
    @ui.zone.on "change", @set_model
    @ui.display_prefix.on "change", @set_model

    settings = @model.get('settings')
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()
    site = settings.site
    site_code = OPCManager.get_site_code(site)
    if site_code? then OPCManager.add_ref(site_code)

    ms = @model.get('settings')
    if ms? && ms.site? then @ui.site.val(ms.site)


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    OPCManager.rem_ref(@site_code)
    
# ----------------------------------

window.PcaWidgetView = PcaWidgetView
module.exports = PcaWidgetView
