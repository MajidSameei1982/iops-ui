Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')
# OPCManager = require('../../opcmanager')

# ----------------------------------
class GpuWidgetView extends WidgetView
  template:   "widgets/gpu_widget"
  className: 'widget-outer box box-primary gpu_widget'
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

  tags:
    #Grid Tags
    gpu_gpustatus:                  'GPU.GPUSTATUS'
    gpu_contstatus:                 'GPU.CONTSTATUS'
    gpu_bypass:                     'GPU.ByPass'
    gpu_raoutavg:                   'GPU.RAOUTAVG'
    gpu_rvoutavg:                   'GPU.RVOUTAVG'
    gpu_ravinavg:                   'GPU.RAVINAVG'
    gpu_rvinavg:                    'GPU.RVINAVG'
    gpu_frequency:                  'GPU.Frequency'
    gpu_pm_output_phasea_i:         'GPU.PM_OUTPUT_PHASEA_I'
    gpu_pm_output_phaseb_i:         'GPU.PM_OUTPUT_PHASEB_I'
    gpu_pm_output_phasec_i:         'GPU.PM_OUTPUT_PHASEC_I'
    gpu_pm_output_phasea_v:         'GPU.PM_OUTPUT_PHASEA_V'
    gpu_pm_output_phaseb_v:         'GPU.PM_OUTPUT_PHASEB_V'
    gpu_pm_output_phasec_v:         'GPU.PM_OUTPUT_PHASEC_V'
    gpu_pm_input_phasea_i:          'GPU.PM_INPUT_PHASEA_I'
    gpu_pm_input_phaseb_i:          'GPU.PM_INPUT_PHASEB_I'
    gpu_pm_input_phasec_i:          'GPU.PM_INPUT_PHASEC_I'
    gpu_pm_input_phasea_v:          'GPU.PM_INPUT_PHASEA_V'
    gpu_pm_input_phaseb_v:          'GPU.PM_INPUT_PHASEB_V'
    gpu_pm_input_phasec_v:          'GPU.PM_INPUT_PHASEC_V'
    gpu_gpustatus_triger_data_log:  'GPU.GPUSTATUS_TRIGER_DATA_LOG'
    gpu_on_1:                       'GPU.ON 1'
    gpu_on_2:                       'GPU.ON 2'

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
      
      # Temporary Client Eval until Settings are updated with the IsCloudServer (or equivelent flag)
      switch @site_code
        when "CID" then IsCloudServer = true
        else IsCloudServer = false

      # build settings      
      @prefix = if IsCloudServer then "RemoteSCADAHosting.Airport-#{@site_code}." else ""
      @prefix = "#{@prefix}Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{gate}."
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      OPCManager.add_ref(@site_code)
      
      lbl = "GPU #{gate} - Details"
      @ui.wtitle.html(lbl)
      @$('#gpu_label #txt').html(lbl)

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

    # GPU GPUSTATUS                   
    @render_value_row("gpu_gpustatus", true, 1)

    # GPU CONTSTATUS                  
    @render_value_row("gpu_contstatus", true, 1)

    # GPU ByPass                      
    @render_row("gpu_bypass", "Down", "Up", "ok")

    # GPU RAOUTAVG                    
    @render_value_row("gpu_raoutavg", true, 1)

    # GPU RVOUTAVG                    
    @render_value_row("gpu_rvoutavg", true, 1)

    # GPU RAVINAVG
    @render_value_row("gpu_ravinavg", true, 1)

    # GPU RVINAVG                     
    @render_value_row("gpu_rvinavg", true, 1)

    # GPU Frequency                   
    @render_value_row("gpu_frequency", true, 1, "Hz")

    # GPU PM_OUTPUT_PHASEA_I          
    @render_value_row("gpu_pm_output_phasea_i", true, 1, "Amps")

    # GPU PM_OUTPUT_PHASEB_I          
    @render_value_row("gpu_pm_output_phaseb_i", true, 1, "Amps")

    # GPU PM_OUTPUT_PHASEC_I          
    @render_value_row("gpu_pm_output_phasec_i", true, 1, "Amps")

    # GPU PM_OUTPUT_PHASEA_V          
    @render_value_row("gpu_pm_output_phasea_v", true, 1, "Volts")

    # GPU PM_OUTPUT_PHASEB_V          
    @render_value_row("gpu_pm_output_phaseb_v", true, 1, "Volts")

    # GPU PM_OUTPUT_PHASEC_V  
    @render_value_row("gpu_pm_output_phasec_v", true, 1, "Volts")

    # GPU PM_INPUT_PHASEA_I           
    @render_value_row("gpu_pm_input_phasea_i", true, 1, "Amps")

    # GPU PM_INPUT_PHASEB_I           
    @render_value_row("gpu_pm_input_phaseb_i", true, 1, "Amps")

    # GPU PM_INPUT_PHASEC_I           
    @render_value_row("gpu_pm_input_phasec_i", true, 1, "Amps")

    # GPU PM_INPUT_PHASEA_V           
    @render_value_row("gpu_pm_input_phasea_v", true, 1, "Volts")

    # GPU PM_INPUT_PHASEB_V           
    @render_value_row("gpu_pm_input_phaseb_v", true, 1, "Volts")

    # GPU PM_INPUT_PHASEC_V           
    @render_value_row("gpu_pm_input_phasec_v", true, 1, "Volts")

    # GPU GPUSTATUS_TRIGER_DATA_LOG   
    @render_row("gpu_gpustatus_triger_data_log", "Down", "Up", "ok")

    # GPU ON 1                        
    @render_row("gpu_on_1", "Down", "Up", "ok")

    # GPU ON 2                        
    @render_row("gpu_on_2", "Down", "Up", "ok")
        
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

window.GpuWidgetView = GpuWidgetView
module.exports = GpuWidgetView
