Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbdetailWidgetView extends IOPSWidgetView
  template:   "widgets/pbbdetail_widget"
  className: 'widget-outer box box-primary pbbdetail_widget'
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
    sx: 11
    sy: 8

  tags:
    #Grid Tags
    pbb_status :          'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_aircraft :        'PBB.AIRCRAFTSTATUS'
    pbb_autolevel :       'PBB.AUTOLEVELMODEFLAG'
    pbb_canopy:           'PBB.Warning.CANOPYDOWN'
    pbb_acffloor:         'PBB.ACFFLOOR'
    pbb_cablehoist:       'PBB.HZ400CABLEDEPLOYED'
    pbb_estop:            'PBB.Alarm.E_STOP'
    pbb_limits:           'PBB.400HZ Pit'
    pbb_docktime:         'PBB.DOCKTIME'
    pbb_undocktime:       'PBB.UNDOCKTIME'
    pbb_smokedetector:    'PBB.SMOKEDETECTOR'
    pbb_heighttodisp:     'PBB.HEIGHTTODISP'
    gpu_gpuoutputamps:    'GPU.RAOUTAVG'
    gpu_gpuoutputvolts:   'GPU.RVOUTAVG'
    pca_pcadischargetemp: 'PCA.TEMPDISCH'
    gpu_gpustatuson:      'GPU.GPUSTATUS'
    pca_pcastatuson:      'PCA.PCAON'
    gpu_gpustatusoff:     'GPU.GPUSTATUS'
    pca_pcastatusoff:     'PCA.PCAON'

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
      
      lbl = "Gate #{s.gate}"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)


  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])
    
    # PBB AIRCRAFT
    @render_row("pbb_status", "", "", "ok")
    aircraftstatus = @vals['pbb_aircraft']
    @$('#pbb_status').html(aircraftstatus)
    @render_row("gpu_gpuoutputvolts", "", "", "ok")
    gpuoutputvoltsstatus = @vals['gpu_gpuoutputvolts']
    @$('#gpu_gpuoutputvolts').html(gpuoutputvoltsstatus)

    # PBB STATUS
    v = @get_bool(@vals.pbb_status)
    a = @get_bool(@vals.pbb_autolevel)
    c = @get_bool(@vals.pbb_canopy)

    txt = if v then "Docked" else "Undocked"
    el = @$("#pbb_dockedunlbl").html(txt).toggleClass('ok', v)  

    txta = if a then "Auto-Level : On" else "Auto-Level : Off"
    el = @$("#pbb_autolevelstatusok").html(txta).toggleClass('ok', a) 
    txta1 = if c then "Canopy : Down" else "Canopy : Up "
    el = @$("#pbb_canopystatusok").html(txta1).toggleClass('ok', c)

    # Auto Level
    @render_row("pbb_autolevel", "On", "Off", "ok")

    # CANOPY
    @render_row("pbb_canopy", "Down", "Up", "ok")

    # ACFFLOOR
    @render_row("pbb_acffloor", "On", "Off", "ok")
    
    # SMOKEDETECTOR
    @render_row("pbb_smokedetector", "Ready/OK", "Activated", " ","err")

    # E-STOP
    @render_row("pbb_estop", "Activated", "Ready/OK", "err")
  
    # CABLE HOIST
    @render_row("pbb_cablehoist", "Deployed", "Retracted", "ok")
 
    # LIMITS
    @render_row("pbb_limits", "OK", "Active", "ok", "err")

    # STATUS
    @render_row("pca_pcastatuson", "On", "On", "ok"," ")
    @render_row("gpu_gpustatuson", "On", "On", "ok"," ") 
    @render_row("pca_pcastatusoff", "Off", "Off"," ","err")
    @render_row("gpu_gpustatusoff", "Off", "Off"," ","err") 

    # ALARMS
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms))
    # WARNINGS
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings))
    # DOCKED
    @ui.docked.toggle(@get_bool(@vals.pbb_status))
    
    # AUTOLEVELFAIL
    @flash_alarm(@get_bool(@vals.pbb_autolevelfail))

    # DOCKTIME
    docktime = if @vals.pbb_docktime? && @vals.pbb_docktime != '' then parseFloat(@vals.pbb_docktime).toFixed(2) else ' -- ' 
    el = @$('#pbb_docktime').html("#{docktime} mins")
    @mark_bad_data @tags.pbb_docktime, el

    undocktime = if @vals.pbb_undocktime? && @vals.pbb_undocktime != '' then parseFloat(@vals.pbb_undocktime).toFixed(2) else ' -- ' 
    el = @$('#pbb_undockordocktimeun').html("#{undocktime} mins")
    @mark_bad_data @tags.pbb_undocktime, el

    heighttodisp = if @vals.pbb_heighttodisp? && @vals.pbb_heighttodisp != '' then @vals.pbb_heighttodisp else ' -- ' 
    el =@$('#pbb_heighttodisp').html("#{heighttodisp}")
    @mark_bad_data @tags.pbb_heighttodisp, el

    pcadischargetemp = if @vals.pca_pcadischargetemp? && @vals.pca_pcadischargetemp != '' then parseFloat(@vals.pca_pcadischargetemp).toFixed(2)  else ' --'
    el =@$('#pca_pcadischargetemp').html("#{pcadischargetemp}")
    @mark_bad_data @tags.pca_pcadischargetemp, el

    gpuoutputamps = if @vals.gpu_gpuoutputamps? && @vals.gpu_gpuoutputamps != '' then parseFloat(@vals.gpu_gpuoutputamps).toFixed(2)  else ' --'
    el =@$('#gpu_gpuoutputamps').html("#{gpuoutputamps}")
    @mark_bad_data @tags.gpu_gpuoutputamps, el

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

window.PbbdetailWidgetView = PbbdetailWidgetView
module.exports = PbbdetailWidgetView