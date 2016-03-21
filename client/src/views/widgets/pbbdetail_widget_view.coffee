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
    sx: 8
    sy: 7

  tags:
    #Grid Tags
    pbb_status :          'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_autolevel :       'PBB.AUTOLEVELMODEFLAG'
    pbb_canopy:           'PBB.CANOPYDOWN'
    pbb_docktime:         'PBB.DOCKTIME'
    pbb_undocktime:       'PBB.UNDOCKTIME'
   
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
      
      lbl = "Gate #{s.gate} - Overview"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)


  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])
    
    # PBB STATUS

    v = @get_bool(@vals.pbb_status)
    a = @get_bool(@vals.pbb_autolevel)
    c = @get_bool(@vals.pbb_canopy)

    sq = @data_q(@tags.pbb_status)
    @$("#aircraft_img").toggleClass('docked', v==true && sq)

    auq = @data_q(@tags.pbb_autolevel)
    @$("#autolevel_img").toggleClass('autolevelon', a==true && auq)

    cq = @data_q(@tags.pbb_canopy)
    @$("#canopy_img").toggleClass('canopyon', c==true && cq)
 
    #Aircraft Status
    @render_row("pbb_status", "Docked", "UnDocked", "ok")

    # Auto Level
    @render_row("pbb_autolevel", "Auto-Level : On", "Auto-Level : Off", "ok")

    # CANOPY
    @render_row("pbb_canopy", "Canopy : Down", "Canopy : Up", "ok")

   

    # ALARMS
    aq = @data_q(@tags.pbb_has_alarms)
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms)==true && aq)
    # WARNINGS
    wq = @data_q(@tags.pbb_has_warnings)
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings)==true && wq)
   
    
    # AUTOLEVELFAIL
    fq = @data_q(@tags.pbb_autolevelfail)
    show_alarms = (@get_bool(@vals.pbb_autolevelfail)==true && fq)
    @ui.alarms.toggle(show_alarms).toggleClass("blink",show_alarms)
    
     # DOCKTIME
    undockordocktimeun = if v && @vals.pbb_docktime? && @vals.pbb_docktime != '' then parseFloat(@vals.pbb_docktime).toFixed(2) 
    else if  !v && @vals.pbb_undocktime? && @vals.pbb_undocktime != '' then parseFloat(@vals.pbb_undocktime).toFixed(2) else ' -- ' 
    el = @$('#pbb_undockordocktimeun').html("#{undockordocktimeun} mins")
    @mark_bad_data @tags.pbb_docktime, el


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