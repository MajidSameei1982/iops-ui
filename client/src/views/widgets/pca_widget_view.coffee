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
    pca_pcastatus:          'PCA.PCAON'
    
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
    @render_row("pca_pcastatus", "On", "Off", "ok"," ")
    @render_tagvalue("pca_pcadischargetemp")
    @render_tagvalue("pca_pcacabintemp")
    @render_tagvalue("pca_pcaambienttemp")
    @render_tagvalue("pca_pcapressureheadpr1")
    @render_tagvalue("pca_pcapressureheadpr2")
    @render_tagvalue("pca_pcapressureheadsec1")
    @render_tagvalue("pca_pcapressureheadsec2")
    @render_tagvalue("pca_pcapressuresucpr1")
    @render_tagvalue("pca_pcapressuresucpr2")
    @render_tagvalue("pca_pcapressuresucsec1")
    @render_tagvalue("pca_pcapressuresucsec2")

    

    # ALARMS
    aq = @data_q(@tags.pbb_has_alarms)
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms)==true && aq)
    # WARNINGS
    wq = @data_q(@tags.pbb_has_warnings)
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings)==true && wq)
    

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
