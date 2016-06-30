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
    sx: 9
    sy: 7

  tags:
    #Grid Tags
    pca_pcaambhumidity:     'PCA.AMBHUMIDITY'
    pca_pcaambienttemp:     'PCA.TEMPAMB'
    pca_pcadischargetemp:   'PCA.TEMPDISCH' 
    pca_pcastatus:          'PCA.PCASTATUS'
    pca_time:               'PCA.PCATime'
    pca_blower:             'PCA.BLOWER'
    pca_heat1:              'PCA.HEATER1'
    pca_heat2:              'PCA.HEATER2'
    pca_compstage1:         'PCA.COMP_STAGE1_STAT'
    pca_compstage2:         'PCA.COMP_STAGE2_STAT'
    pca_aircraftdamper:     'PCA.BRIDGE_DAMPER_POSITION'
    pca_bridgedamper:       'PCA.BRIDGE_AIR'
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

    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

   
    if s? && !!s.gate
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

      show_opts = s? && !!s.gate
      @$('#mode').toggle(show_opts)

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
      
      lbl = "PCA #{s.gate} - Overview"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)


  # process data and update the view
  data_update: (data)=>
    # refresh gauges
    @refresh_values()
    vq = @data_q(@tags.pca_pcadischargetemp)
    @$("#gauge_volts_out_#{@model.id} .bad_data").toggle(!vq)
    v = @vals.pca_pcadischargetemp
    if vq && !isNaN(v) && v != ''
      @g1.refresh(parseInt(v))

    aq = @data_q(@tags.pca_pcaambienttemp)
    @$("#amps_out_#{@model.id} .bad_data").toggle(!aq)
    v = @vals.pca_pcaambienttemp
    if aq && !isNaN(v) && v != ''
      v = parseInt(parseInt(v))
      @g2.refresh(v)


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
    v = @get_bool(@vals.pca_pcastatus)
    sq = @data_q(@tags.pca_pcastatus)

    coildp = if @vals.pca_coildp? && @vals.pca_coildp != '' then parseFloat(@vals.pca_coildp).toFixed(2)  else ' -- ' 
    cd = if v==true && sq then @$('#pca_coildp').html("COIL DP : #{coildp}") else @$('#pca_coildp').html(" ")
    @mark_bad_data @tags.pca_coildp, cd

    vfdspeed = if @vals.pca_vfdspeed? && @vals.pca_vfdspeed != '' then parseFloat(@vals.pca_vfdspeed).toFixed(2)  else ' -- ' 
    vfd = if v==true && sq then @$('#pca_vfdspeed').html("VFD : #{vfdspeed}") else @$('#pca_vfdspeed').html(" ")
    @mark_bad_data @tags.pca_vfdspeed, vfd

    ambhumidity = if @vals.pca_pcaambhumidity? && @vals.pca_pcaambhumidity != '' then parseFloat(@vals.pca_pcaambhumidity).toFixed(2)  else ' -- ' 
    ambd = if v==true && sq then @$('#pca_pcaambhumidity').html("Amb Humidity : #{ambhumidity}") else @$('#pca_pcaambhumidity').html(" ")
    @mark_bad_data @tags.pca_pcaambhumidity, ambd

    sucpressure1 = if @vals.pca_sucpressure1? && @vals.pca_sucpressure1 != '' then parseFloat(@vals.pca_sucpressure1).toFixed(2)  else ' -- ' 
    suc1d = if v==true && sq then @$('#pca_sucpressure1').html("SP1 : #{sucpressure1}") else @$('#pca_sucpressure1').html(" ")
    @mark_bad_data @tags.pca_sucpressure1, suc1d

    sucpressure2 = if @vals.pca_sucpressure2? && @vals.pca_sucpressure2 != '' then parseFloat(@vals.pca_sucpressure2).toFixed(2)  else ' -- ' 
    suc2d = if v==true && sq then @$('#pca_sucpressure2').html("SP2 : #{sucpressure2}") else @$('#pca_sucpressure2').html(" ")
    @mark_bad_data @tags.pca_sucpressure2, suc2d

    hotgas1 = if @vals.pca_hotgas1? && @vals.pca_hotgas1 != '' then parseFloat(@vals.pca_hotgas1).toFixed(2)  else ' -- ' 
    hot1d = if v==true && sq then @$('#pca_hotgas1').html("HP1 : #{hotgas1}") else @$('#pca_hotgas1').html(" ")
    @mark_bad_data @tags.pca_hotgas1, hot1d

    hotgas2 = if @vals.pca_hotgas2? && @vals.pca_hotgas2 != '' then parseFloat(@vals.pca_hotgas2).toFixed(2)  else ' -- ' 
    hot2d = if v==true && sq then @$('#pca_hotgas2').html("HP2 : #{hotgas2}") else @$('#pca_hotgas2').html(" ")
    @mark_bad_data @tags.pca_hotgas2, hot2d

    ad = @get_bool(@vals.pca_aircraftdamper)
    txta = if ad then 'Open' else 'Close'
    add = if v==true && sq then @$('#pca_aircraftdamper').html("Aircraft Damper : #{txta}") else @$('#pca_aircraftdamper').html(" ")
    @mark_bad_data @tags.pca_aircraftdamper, add
    
    bd = @get_bool(@vals.pca_bridgedamper)
    txtb = if bd then 'Open' else 'Close'
    bdd = if v==true && sq then @$('#pca_bridgedamper').html("Bridge Damper : #{txtb}") else @$('#pca_bridgedamper').html(" ")
    @mark_bad_data @tags.pca_pumpcond, bdd

    pc = @get_bool(@vals.pca_pumpcond)
    txt = if pc then 'On' else 'Off'
    pcd = if v==true && sq then @$('#pca_pumpcond').html("Condensate Pump : #{txt}") else @$('#pca_pumpcond').html(" ")
    @mark_bad_data @tags.pca_pumpcond, pcd
    @render_row("pca_pcastatus", "On", "Off", "ok"," ")

    #@render_tagvalue("pca_pcadischargetemp")
    #@render_tagvalue("pca_pcaambienttemp")


    c = @get_bool(@vals.pca_blower)
    p = @get_bool(@vals.pca_pcastatus)
    h1 = @get_bool(@vals.pca_heat1)
    h2 = @get_bool(@vals.pca_heat2)
    co1 = @get_bool(@vals.pca_compstage1)
    co2 = @get_bool(@vals.pca_compstage2)
    b = @get_bool(@vals.pca_aircraftdamper)
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

    bq = @data_q(@tags.pca_aircraftdamper)
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


  render_gauges: ()->
    vid = "gauge_volts_out_#{@model.id}"
    @$('#view_main').append("<div id='#{vid}'><div class='bad_data' style='display:none;'>BAD DATA</div></div>")
    @g1 = new JustGage
      id: vid
      title: ' '
      label: 'Discharge Temperature'
      value: 0
      parseTime: false
      min: 0
      max: 125
      symbol: ' F'
      relativeGaugeSize: true
      shadowOpacity: 1
      shadowSize: 5
      shadowVerticalOffset: 10
      pointer: true
      pointerOptions: 
        toplength: -5
        bottomlength: 20
        bottomwidth: 3
        color: '#000'
        stroke: '#ffffff'
        stroke_width: 1
        stroke_linecap: 'round'
      gaugeWidthScale: 0.6
      customSectors: [
          {color: '#000000',lo: 0,hi: 1}
          {color: '#ffcc66',lo: 2,hi: 49}
          {color: '#00b300',lo: 50,hi: 99}
          {color: '#ff3333',lo: 100,hi: 125}
      ]
      counter: true

      aid = "amps_out_#{@model.id}"
      @$('#view_main').append("<div id='#{aid}'><div class='bad_data' style='display:none;'>BAD DATA</div></div>")
      @g2 = new JustGage
        id: aid
        title: ' '
        label: 'Ambient Temperature'
        value: 0
        parseTime: false
        min: 0
        max: 150
        symbol: ' F'
        relativeGaugeSize: true
        shadowOpacity: 1
        shadowSize: 5
        shadowVerticalOffset: 10
        pointer: true
        pointerOptions: 
          toplength: -5
          bottomlength: 20
          bottomwidth: 3
          color: '#000'
          stroke: '#ffffff'
          stroke_width: 1
          stroke_linecap: 'round'
        gaugeWidthScale: 0.6
        customSectors: [
          {color: '#000000',lo: 0,hi: 1}
          {color: '#00b300',lo: 2,hi: 99}
          {color: '#ff3333',lo: 100,hi: 150}
        ]
        counter: true
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

    @configure_buttons()
    @render_gauges()

  configure_buttons: ()=>
    @$('#mode').change (e)=>
      sel = @$('#mode').val()
      sel = if sel=='' then null else sel
      @show_plot(sel)

    @$('#live_data').bootstrapToggle
      width:50
      height:25

  show_plot: (p, live)=>
    @initializing = true
    @kill_updates(@site_code)
    # set buttons
    @$("#plots").toggle(p?)
    @$("#summary").toggle(!p?)

    
    show_hist = p? && !live
    plot_color = "#80C3FF"
    plot2_color = "#ff8c1a"

    switch p
      when 'ambient'
        lbl = 'Ambient Temp'
        tags = [{tag: "#{@prefix}PCA.TEMPAMB.Value", fill: true, color: plot_color}]
      when 'discharge'
        lbl = "Discharge Temp"
        tags = [{tag: "#{@prefix}PCA.TEMPDISCH.Value", fill: true, color: plot_color}]
      when 'plots'
        lbl = 'Ambient/Discharge Temps'
        tags = [
          {tag: "#{@prefix}PCA.TEMPAMB.Value", fill: true, color: plot_color}
          {tag: "#{@prefix}PCA.TEMPDISCH.Value", fill: true, color: plot2_color}
        ]

    #@$('#ptype_lbl').html(lbl)
    @$('#toggle_main').toggle(p?)
    
    @$('#plot-placeholder').remove()
    @$("#plot_data").append """
      <div id='plot-placeholder' style='background-color:#eee;position:absolute;top:0;left:0;width:100%;'>
        <div style='text-align:center;color:#666;font-size:18px;margin-top:20%;'><i class="fa fa-spinner fa-pulse"></i> LOADING DATA...</div>
      </div>
    """
    h = @$(".display").height()
    @$("#plot-placeholder").css
      "max-height": "#{h}px"
      "height": "#{h}px"
  
    
    # # clear out previous plots
    if @tbinding
      OPCManager.rem_trend(@site_code, @tbinding)
      @$("##{@tbinding.chartid}").remove()

    if p?
      #build trend
      pid = "#{p}_#{@model.id}"
      @$("#plot_data").append("<div id='#{pid}' style='width:100%;height:100%;position:absolute;top:0;left:0;z-index:999;'></div>")
      @tbinding = 
        chartid:"#{pid}"
        samplerate: 1
        timeframe: 50
        tags:tags
        retain: 50
        callback:@trend_callback
      @$(".display").resize ()=>
        @$("#plot_container").width('100%').height(@$(".display").height()-20)
      @$("#plot_container").width('100%').height(@$(".display").height()-20)
      
      App.opc.add_trend @site_code, @tbinding

      if show_hist
        dtm = new Date()
        sd = OPC.Util.formatDate(dtm,"mm/dd/yyyy 00:00:00")
        now = new Date()
        ed = OPC.Util.formatDate(dtm,"mm/dd/yyyy #{now.getHours()}:#{now.getMinutes()}:#{now.getSeconds()}")
        OPC.Trend.getHistoryData("#{pid}", sd, ed)
        @$("#live_data").off('change')
        @$("#live_data").bootstrapToggle('off')
        @$("#live_data").on 'change', (e)=>
          lv = @$("#live_data").is(':checked')
          @show_plot(@current_plot, lv)

    @current_plot = p

    @watch_updates(@site_code)

  trend_callback: (data)=>
    @$('#plot-placeholder').remove()

    #skip plotting if in history mode in case data comes back
    #return if !@initializing && !@$("#live_data").is(":checked")
    
    @tb = OPC.Trend.getTrendBinding(data)
    #return null if !@tb.mode?

    console.log data

    if @tb?
      max = 0
      if data.penvalues? && data.penvalues.length>0
        for p in data.penvalues[0]
          if p != '' && parseFloat(p) > max then max = parseFloat(p)
      max = max * 1.25
      # console.log max
      markings = []
      fd = OPC.Flot.buildTrendData(data)
      
      tm1 = fd[0].data[0][0].getTime()
      tm2 = fd[0].data[fd[0].data.length-1][0].getTime()
      span = Math.floor((tm2-tm1)/24)
      
      for y in [0..Math.floor(max)+100] by 25
        markings.push { yaxis: { from: y, to: y }, color:"#eee", lineWidth:1 }
      for x in [tm1..tm2] by span
        markings.push { xaxis: { from: x, to: x }, color:"#eee", lineWidth:1 }

      opts =
        series: { shadowSize: 0}
        lines:  { show: true, fill: true }
        grid:
          hoverable: true 
          clickable: true
          autoHighlight: false
          color:"transparent"
          borderColor: "#666"
          borderWidth: 1
          markings: markings
        crosshair: { mode: "x"}
        legend: { backgroundOpacity: 0.3}
        xaxis:
          mode: "time"
          font: { size: 10, lineHeight: 10, family: "sans-serif", color:"#000000" }
          tickSize: [2, "second"]
          tickFormatter: (v, axis)=>
            dt = new Date(v)
            if (@tb.mode != "history" && dt.getSeconds() % 30 == 0)
              return OPC.Util.formatDate(dt,"mm/dd hh:MM:ss")
            return ""
        yaxes:[
          { position: 'left', min:0, max:max }
        ]

      # = OPC.Flot.buildTrendData(data)
      $.plot("##{@tb.chartid}", fd, opts)
      if @initializing
        tt = @$("#plot_tooltip")
        if !tt? || tt.length == 0
          tt = $("<div id='plot_tooltip'></div>")
          tt.css
            position: "absolute"
            # display: "none"
            border: "1px solid #666"
            padding: "2px"
            "background-color": "#fff"
            "border-radius": "5px"
            "box-shadow": "3px 3px 3px 0 rgba(0,0,0,0.1)"
            "z-index": 9999
            opacity: 0.90
          .appendTo("#plot_data")
        @$("##{@tb.chartid}").bind "plothover", (e, pos, item)=>
          if !item?
            @$("#plot_tooltip").hide()
          else
            x = item.datapoint[0]
            y = item.datapoint[1].toFixed(2)
            dt =  new Date(x)
            ofs = @$("#plot_data").offset()
            hours = UIUtils.lpad(dt.getHours(),2,'0')
            minutes = UIUtils.lpad(dt.getMinutes(),2,'0')
            seconds = UIUtils.lpad(dt.getSeconds(),2,'0')
            dts = "#{dt.getMonth()+1}/#{dt.getDate()}/#{dt.getFullYear()}<br/>#{hours}:#{minutes}:#{seconds}"
            @$("#plot_tooltip").html("#{dts}<br/><b>#{y}</b>")
            @$("#plot_tooltip").css({top: item.pageY-64-ofs.top, left: item.pageX-60-ofs.left})
            @$("#plot_tooltip").show()
          
      @initializing = false


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.PcasummaryWidgetView = PcasummaryWidgetView
module.exports = PcasummaryWidgetView
