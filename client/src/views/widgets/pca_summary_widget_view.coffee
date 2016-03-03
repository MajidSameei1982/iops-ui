Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')
UIUtils = require('../../common/uiutils')

# ----------------------------------

class PcasummaryWidgetView extends IOPSWidgetView
  template:   "widgets/pca_summary_widget"
  className: 'widget-outer box box-primary pca_summary_widget'
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
    power_indicator:   'span#power_indicator'

  @layout:
    sx: 11
    sy: 8

  tags:
    #Grid Tags
    pca_pcacabintemp:       'PCA.TEMPCABIN'
    pca_pcaambienttemp:     'PCA.TEMPAMB'
    pca_pcadischargetemp:   'PCA.TEMPDISCH' 
    pca_pcastatus:          'PCA.PCA_ON'
    pca_time:               'PCA.PCATime'
    pca_blower:             'PCA.BLOWER'
    pca_heat1:              'PCA.HEATER1'
    pca_heat2:              'PCA.HEATER2'
    pca_compstage1:         'PCA.COMP_STAGE1_STAT'
    pca_compstage2:         'PCA.COMP_STAGE2_STAT'
    pca_bridgeair:          'PCA.BRIDGE_AIR'
    pca_bridgedamper:       'PCA.BRIDGE_DAMPER_POSITION'
    pca_pumpcond:           'PCA.PUMPCOND'
    pca_coildp:             'PCA.COIL_DP'
    pca_vfdspeed:           'PCA.VFD_SPEED'
    pca_ambhumidity:        'PCA.AMBHUMIDITY'
    pca_sucpressure1:       'PCA.C1_SUCTION_PRESSURE'
    pca_sucpressure2:       'PCA.C2_SUCTION_PRESSURE'
    pca_hotgas1:            'PCA.C1_HOTGAS_CONTROL'
    pca_hotgas2:            'PCA.C2_HOTGAS_CONTROL'
    

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
      
      lbl = "PCA #{s.gate} - Overview"
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

    # refresh status
    sq = @data_q(@tags.pca_pcastatus)
    stat = @get_bool(@vals.pca_pcastatus)
    th = ""
    icn = 'ban'
    cls = 'inactive'
    txt = 'BAD DATA'
    if stat == true
      cls = 'active'
      txt = 'ON'
      icn = 'circle'
      t = parseFloat(@vals.pca_time)
      h = 0
      m = Math.floor(t)
      s = Math.floor((t-m)*60)
      if m>59
        h = Math.floor(m/60)
        m = m-(h*60)
      th = "<i class='fa fa-clock-o'></i> #{UIUtils.lpad(h,2,'0')}:#{UIUtils.lpad(m,2,'0')}:#{UIUtils.lpad(s,2,'0')}"
    else if stat == false
      cls = 'inactive'
      icn = 'circle-thin'
      txt = 'OFF'
    @$("#power_indicator").html("<div class='#{cls}'><i class='fa fa-#{icn}'></i> #{txt}</div>")
    @$("#txt_connected_time").html(th)
    # STATUS
 
    coildp = if @vals.pca_coildp? && @vals.pca_coildp != '' then parseFloat(@vals.pca_coildp).toFixed(2)  else ' -- ' 
    cd = @$('#pca_coildp').html("COIL DP : #{coildp}")
    @mark_bad_data @tags.pca_coildp, cd

    vfdspeed = if @vals.pca_vfdspeed? && @vals.pca_vfdspeed != '' then parseFloat(@vals.pca_vfdspeed).toFixed(2)  else ' -- ' 
    vfd = @$('#pca_vfdspeed').html("VFD : #{vfdspeed}")
    @mark_bad_data @tags.pca_vfdspeed, vfd

    ambhumidity = if @vals.pca_ambhumidity? && @vals.pca_ambhumidity != '' then parseFloat(@vals.pca_ambhumidity).toFixed(2)  else ' -- ' 
    ambd = @$('#pca_ambhumidity').html("TEMPAMB : #{ambhumidity}")
    @mark_bad_data @tags.pca_ambhumidity, ambd

    sucpressure1 = if @vals.pca_sucpressure1? && @vals.pca_sucpressure1 != '' then parseFloat(@vals.pca_sucpressure1).toFixed(2)  else ' -- ' 
    suc1d = @$('#pca_sucpressure1').html("SP1 : #{sucpressure1}")
    @mark_bad_data @tags.pca_sucpressure1, suc1d

    sucpressure2 = if @vals.pca_sucpressure2? && @vals.pca_sucpressure2 != '' then parseFloat(@vals.pca_sucpressure2).toFixed(2)  else ' -- ' 
    suc2d = @$('#pca_sucpressure2').html("SP2 : #{sucpressure2}")
    @mark_bad_data @tags.pca_sucpressure2, suc2d

    hotgas1 = if @vals.pca_hotgas1? && @vals.pca_hotgas1 != '' then parseFloat(@vals.pca_hotgas1).toFixed(2)  else ' -- ' 
    hot1d = @$('#pca_hotgas1').html("HP1 : #{hotgas1}")
    @mark_bad_data @tags.pca_hotgas1, hot1d

    hotgas2 = if @vals.pca_hotgas2? && @vals.pca_hotgas2 != '' then parseFloat(@vals.pca_hotgas2).toFixed(2)  else ' -- ' 
    hot2d = @$('#pca_hotgas2').html("HP2 : #{hotgas2}")
    @mark_bad_data @tags.pca_hotgas2, hot2d

    pc = @get_bool(@vals.pca_pumpcond)
    txt = if pc then 'ON' else 'OFF'
    pcd = @$('#pca_pumpcond').html("Condensate Pump : #{txt}")
    @mark_bad_data @tags.pca_pumpcond, pcd
    

    @render_row("pca_pcastatus", "On", "Off", "ok"," ")
    @render_tagvalue("pca_pcadischargetemp")
    @render_tagvalue("pca_pcacabintemp")
    @render_tagvalue("pca_pcaambienttemp")


    c = @get_bool(@vals.pca_blower)
    p = @get_bool(@vals.pca_pcastatus)
    h1 = @get_bool(@vals.pca_heat1)
    h2 = @get_bool(@vals.pca_heat2)
    co1 = @get_bool(@vals.pca_compstage1)
    co2 = @get_bool(@vals.pca_compstage2)
    b = @get_bool(@vals.pca_bridgeair)
    bd = @get_bool(@vals.pca_bridgedamper)

    sq = @data_q(@tags.pca_blower)
    @$("#blower_img").toggleClass('bloweron', c==true && sq)

    h1q = @data_q(@tags.pca_heat1)
    @$("#heatingstage1_img").toggleClass('heatingstage1on', h1==true && h1q)

    h2q = @data_q(@tags.pca_heat2)
    @$("#heatingstage2_img").toggleClass('heatingstage2on', h2==true && h2q)

    co1q = @data_q(@tags.pca_compstage1)
    @$("#coolingstage1_img").toggleClass('coolingstage1on', co1==true && co1q)

    co2q = @data_q(@tags.pca_compstage2)
    @$("#coolingstage2_img").toggleClass('coolingstage2on', co2==true && co2q)

    bq = @data_q(@tags.pca_bridgeair)
    pq = @data_q(@tags.pca_pcastatus)
    @$("#accool_img").toggleClass('accoolon', p==true && b==true && pq && bq)

    bdq = @data_q(@tags.pca_bridgedamper)
    @$("#bccool_img").toggleClass('bccoolon', bd==true && bdq)
    

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

window.PcasummaryWidgetView = PcasummaryWidgetView
module.exports = PcasummaryWidgetView
