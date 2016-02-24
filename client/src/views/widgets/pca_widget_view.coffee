Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------

class PcaWidgetView extends IOPSWidgetView
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
    sx: 5
    sy: 10

  tags:
    #Grid Tags
    pca_pcacabintemp:       'PCA.TEMPCABIN'
    pca_pcaambienttemp:     'PCA.TEMPAMB'
    pca_pcadischargetemp:   'PCA.TEMPDISCH' 
    pca_pcapressureheadpr1: 'PCA.PRESSHEADPRI1'
    pca_pcapressureheadpr2: 'PCA.PRESSHEADPRI2'
    pca_pcapressureheadsec1:'PCA.PRESSHEADSEC1'
    pca_pcapressureheadsec2:'PCA.PRESSHEADSEC2'
    pca_pcapressuresucpr1:  'PCA.PRESSSUCPRI1'
    pca_pcapressuresucpr2:  'PCA.PRESSSUCPRI2'
    pca_pcapressuresucsec1: 'PCA.PRESSSUCSEC1'
    pca_pcapressuresucsec2: 'PCA.PRESSSUCSEC2'
    pca_pcastatuson:        'PCA.PCAON'
    
    #Processing Tags
    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'
    
  update: ()->
    s = @model.get("settings")
   
    if s? && !!s.gate
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

      # stop listening for updates
      @kill_updates(@site_code)
      
      # Temporary Client Eval until Settings are updated with the IsCloudServer (or equivelent flag)
      switch @site_code
        when "CID" then IsCloudServer = true
        else IsCloudServer = false

      # build settings      
      settings = @site.get('settings')
      settings || settings = {}
      cloud = if settings.cloud then "RemoteSCADAHosting.Airport-#{@site_code}." else ''
      @prefix = "#{cloud}Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}."
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      
      lbl = "PCA #{s.gate}"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)


  render_value_row: (tag, IsNumeric, precision, suffix)->
    if @vals[tag]? && @vals[tag] != '' 
      set_value = if IsNumeric then parseFloat(@vals[tag]).toFixed(precision) else @vals[tag] 
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

    # STATUS
    @render_row("pca_pcastatuson", "On", "Off", "ok"," ")
    @$("#pca_pcastatuson_lbl").html('PCA Status')
    

    pcacabintemp = if @vals.pca_pcacabintemp? && @vals.pca_pcacabintemp != '' then parseFloat(@vals.pca_pcacabintemp).toFixed(2)  else ' --'
    el =@$('#pca_pcacabintemp').html("#{pcacabintemp} F")
    @mark_bad_data @tags.pca_pcacabintemp, el

    pcaambienttemp = if @vals.pca_pcaambienttemp? && @vals.pca_pcaambienttemp != '' then parseFloat(@vals.pca_pcaambienttemp).toFixed(2)  else ' --'
    el =@$('#pca_pcaambienttemp').html("#{pcaambienttemp} F")
    @mark_bad_data @tags.pca_pcaambienttemp, el

    pcadischargetemp = if @vals.pca_pcadischargetemp? && @vals.pca_pcadischargetemp != '' then parseFloat(@vals.pca_pcadischargetemp).toFixed(2)  else ' --'
    el =@$('#pca_pcadischargetemp').html("#{pcadischargetemp} F")
    @mark_bad_data @tags.pca_pcadischargetemp, el

    pcapressureheadpr1 = if @vals.pca_pcapressureheadpr1? && @vals.pca_pcapressureheadpr1 != '' then parseFloat(@vals.pca_pcapressureheadpr1).toFixed(2)  else ' --'
    el =@$('#pca_pcapressureheadpr1').html("#{pcapressureheadpr1} F")
    @mark_bad_data @tags.pca_pcapressureheadpr1, el

    pcapressureheadpr2 = if @vals.pca_pcapressureheadpr2? && @vals.pca_pcapressureheadpr2 != '' then parseFloat(@vals.pca_pcapressureheadpr2).toFixed(2)  else ' --'
    el =@$('#pca_pcapressureheadpr2').html("#{pcapressureheadpr2} F")
    @mark_bad_data @tags.pca_pcapressureheadpr2, el

    pcapressureheadsec1 = if @vals.pca_pcapressureheadsec1? && @vals.pca_pcapressureheadsec1 != '' then parseFloat(@vals.pca_pcapressureheadsec1).toFixed(2)  else ' --'
    el =@$('#pca_pcapressureheadsec1').html("#{pcapressureheadsec1} F")
    @mark_bad_data @tags.pca_pcapressureheadsec1, el

    pcapressureheadsec2 = if @vals.pca_pcapressureheadsec2? && @vals.pca_pcapressureheadsec2 != '' then parseFloat(@vals.pca_pcapressureheadsec2).toFixed(2)  else ' --'
    el =@$('#pca_pcapressureheadsec2').html("#{pcapressureheadsec2} F")
    @mark_bad_data @tags.pca_pcapressureheadsec2, el

    pcapressuresucpr1 = if @vals.pca_pcapressuresucpr1? && @vals.pca_pcapressuresucpr1 != '' then parseFloat(@vals.pca_pcapressuresucpr1).toFixed(2)  else ' --'
    el =@$('#pca_pcapressuresucpr1').html("#{pcapressuresucpr1} F")
    @mark_bad_data @tags.pca_pcapressuresucpr1, el

    pcapressuresucpr2 = if @vals.pca_pcapressuresucpr2? && @vals.pca_pcapressuresucpr2 != '' then parseFloat(@vals.pca_pcapressuresucpr2).toFixed(2)  else ' --'
    el =@$('#pca_pcapressuresucpr2').html("#{pcapressuresucpr2} F")
    @mark_bad_data @tags.pca_pcapressuresucpr2, el

    pcapressuresucsec1 = if @vals.pca_pcapressuresucsec1? && @vals.pca_pcapressuresucsec1 != '' then parseFloat(@vals.pca_pcapressuresucsec1).toFixed(2)  else ' --'
    el =@$('#pca_pcapressuresucsec1').html("#{pcapressuresucsec1} F")
    @mark_bad_data @tags.pca_pcapressuresucsec1, el

    pcapressuresucsec2 = if @vals.pca_pcapressuresucsec2? && @vals.pca_pcapressuresucsec2 != '' then parseFloat(@vals.pca_pcapressuresucsec2).toFixed(2)  else ' --'
    el =@$('#pca_pcapressuresucsec2').html("#{pcapressuresucsec2} F")
    @mark_bad_data @tags.pca_pcapressuresucsec2, el

    gpuoutputamps = if @vals.gpu_gpuoutputamps? && @vals.gpu_gpuoutputamps != '' then parseFloat(@vals.gpu_gpuoutputamps).toFixed(2)  else ' --'
    el =@$('#gpu_gpuoutputamps').html("#{gpuoutputamps}")
    @mark_bad_data @tags.gpu_gpuoutputamps, el

    @set_descriptions()

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
    s.site = @$('#site').val()
    s.terminal = @$('#terminal').val()
    s.zone = @$('#zone').val()
    s.gate = @$('#gate').val()
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
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @$('#site').on 'change', ()=>
      @draw_selectors()
      @set_model()
    
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()
    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code? then @watch_updates(@site_code)


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.PcaWidgetView = PcaWidgetView
module.exports = PcaWidgetView
