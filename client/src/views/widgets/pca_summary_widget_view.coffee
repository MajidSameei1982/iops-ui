Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')
UIUtils = require('../../common/uiutils')

# ----------------------------------
class PcasummaryWidgetView extends IOPSWidgetView
  template:   "widgets/pca_summary_widget"
  classID: 'pca_summary_widget'
  widgetID: '.widget_1 .pca_summary_widget'
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
    GraphicsContainer: 'div#graphics_container'

  @layout:
    sx: 9
    sy: 7

  tags = []
  tagData = []
  tagConfig = []
  site_refresh: 50000
  refId: 0

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    if s? && !!s.site      
      lbl = "#{@site_code}: Gate #{s.gate} PCA - Summary"
      @ui.wtitle.html(lbl)

      @opc =  App.opc.connections[@site_code]

      show_opts = s? && !!s.gate
      @$('#mode').toggle(show_opts)

      # stop listening for updates
      #@kill_updates(@site_code)

      tags = []
      @tagData = []
      @tagConfig = []
      @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, s)
      @tagData = @tagConfig.TagData

      for t, tData of @tagData
        tags.push "#{@prefix}#{tData.Tag}.Value"

      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"

      #App.opc.add_tags @site_code, tags

 
      # listen for updates
      #@watch_updates(@site_code)
      #@start_heartbeat()
      if @refId == 0
        @refId = App.opc.add_tags @site_code, tags
        App.vent.on "opc:data:#{@site_code}", @data_update
        @opc =  App.opc.connections[@site_code]
        @start_heartbeat()

      @set_descriptions(true)
    @ 

  # process data and update the view
  data_update: (data)=>
    # refresh gauges
    @refresh_values()
    @beat_time = new Date().getTime() + @site_refresh
    
    #for img, imgdata of @graphicsData
    #  switch imgData.ControlTags
    #  imgQuality = @data_q(imgData.Con.Tag)

    if @tagData.pca_discharge_temp?
      vq = @data_q(@tagData.pca_discharge_temp.Tag)
      @$("#gauge_volts_out_#{@model.id} .bad_data").toggle(!vq)
      v = @vals.pca_discharge_temp
      if vq && !isNaN(v) && v != ''
        @g1.refresh(parseInt(v))

    if @tagData.pca_ambient_temp?
      aq = @data_q(@tagData.pca_ambient_temp.Tag)
      @$("#amps_out_#{@model.id} .bad_data").toggle(!aq)
      v = @vals.pca_ambient_temp
      if aq && !isNaN(v) && v != ''
        v = parseInt(parseInt(v))
        @g2.refresh(v)

    if @tagData.pca_status?
      # refresh status
      sq = @data_q(@tagData.pca_status.Tag)
      stat = @get_bool(@vals.pca_status)
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
    
    #pca_status
    if @tagData.pca_status?
      v = @get_bool(@vals.pca_status)
      sq = @data_q(@tagData.pca_status.Tag)

    #pca_coil_dp
    if @tagData.pca_coil_dp?
      coildp = if @vals.pca_coil_dp? && @vals.pca_coil_dp != '' then parseFloat(@vals.pca_coil_dp).toFixed(2)  else ' -- ' 
      cd = if v==true && sq then @$('#pca_coil_dp').html("COIL DP : #{coildp}") else @$('#pca_coil_dp').html(" ")
      @mark_bad_data @tagData.pca_coil_dp.Tag, cd
    else
      @$('#pca_coil_dp').html(" ")
    
    #pca_vfd_speed
    if @tagData.pca_vfd_speed?
      vfdspeed = if @vals.pca_vfd_speed? && @vals.pca_vfd_speed != '' then parseFloat(@vals.pca_vfd_speed).toFixed(2)  else ' -- ' 
      vfd = if v==true && sq then @$('#pca_vfd_speed').html("VFD : #{vfdspeed}") else @$('#pca_vfd_speed').html(" ")
      @mark_bad_data @tagData.pca_vfd_speed.Tag, vfd
    else
      @$('#pca_vfd_speed').html(" ")

    #pca_ambient_humidity
    if @tagData.pca_ambient_humidity?
      ambhumidity = if @vals.pca_ambient_humidity? && @vals.pca_ambient_humidity != '' then parseFloat(@vals.pca_ambient_humidity).toFixed(2)  else ' -- ' 
      ambd = if v==true && sq then @$('#pca_ambient_humidity').html("Amb Humidity : #{ambhumidity}") else @$('#pca_ambient_humidity').html(" ")
      @mark_bad_data @tagData.pca_ambient_humidity.Tag, ambd
    else
      @$('#pca_ambient_humidity').html(" ")

    #pca_suction_pressure_1
    if @tagData.pca_suction_pressure_1?
      sucpressure1 = if @vals.pca_suction_pressure_1? && @vals.pca_suction_pressure_1 != '' then parseFloat(@vals.pca_suction_pressure_1).toFixed(2)  else ' -- ' 
      suc1d = if v==true && sq then @$('#pca_suction_pressure_1').html("SP1 : #{sucpressure1}") else @$('#pca_suction_pressure_1').html(" ")
      @mark_bad_data @tagData.pca_suction_pressure_1.Tag, suc1d
    else
      @$('#pca_suction_pressure_1').html(" ")

    #pca_suction_pressure_2
    if @tagData.pca_suction_pressure_2?
      sucpressure2 = if @vals.pca_suction_pressure_2? && @vals.pca_suction_pressure_2 != '' then parseFloat(@vals.pca_suction_pressure_2).toFixed(2)  else ' -- ' 
      suc2d = if v==true && sq then @$('#pca_suction_pressure_2').html("SP2 : #{sucpressure2}") else @$('#pca_suction_pressure_2').html(" ")
      @mark_bad_data @tagData.pca_suction_pressure_2.Tag, suc2d
    else
      @$('#pca_suction_pressure_2').html(" ")

    #pca_suction_pressure_3
    if @tagData.pca_suction_pressure_3?
      sucpressure3 = if @vals.pca_suction_pressure_3? && @vals.pca_suction_pressure_3 != '' then parseFloat(@vals.pca_suction_pressure_3).toFixed(2)  else ' -- ' 
      suc3d = if v==true && sq then @$('#pca_suction_pressure_3').html("SP3 : #{sucpressure3}") else @$('#pca_suction_pressure_3').html(" ")
      @mark_bad_data @tagData.pca_suction_pressure_3.Tag, suc3d
    else
      @$('#pca_suction_pressure_3').html(" ")

    #pca_headpri1
    if @tagData.pca_headpri1?
      pcaheadpri1 = if @vals.pca_headpri1? && @vals.pca_headpri1 != '' then parseFloat(@vals.pca_headpri1).toFixed(2)  else ' -- ' 
      hpp1d = if v==true && sq then @$('#pca_headpri1').html("HP1 : #{pcaheadpri1}") else @$('#pca_headpri1').html(" ")
      @mark_bad_data @tagData.pca_headpri1.Tag, hpp1d
    else
      @$('#pca_headpri1').html(" ")

    #pca_headpri2
    if @tagData.pca_headpri2?
      pcaheadpri2 = if @vals.pca_headpri2? && @vals.pca_headpri2 != '' then parseFloat(@vals.pca_headpri2).toFixed(2)  else ' -- ' 
      hpp2d = if v==true && sq then @$('#pca_headpri2').html("HP2 : #{pcaheadpri2}") else @$('#pca_headpri2').html(" ")
      @mark_bad_data @tagData.pca_headpri2.Tag, hpp2d
    else
      @$('#pca_headpri2').html(" ")

    #pca_headpri3
    if @tagData.pca_headpri3?
      pcaheadpri3 = if @vals.pca_headpri3? && @vals.pca_headpri3 != '' then parseFloat(@vals.pca_headpri3).toFixed(2)  else ' -- ' 
      hpp3d = if v==true && sq then @$('#pca_headpri3').html("HP3 : #{pcaheadpri3}") else @$('#pca_headpri3').html(" ")
      @mark_bad_data @tagData.pca_headpri3.Tag, hpp3d
    else
      @$('#pca_headpri3').html(" ")

    #pca_hot_gas_1
    if @tagData.pca_hot_gas_1?
      hotgas1 = if @vals.pca_hot_gas_1? && @vals.pca_hot_gas_1 != '' then parseFloat(@vals.pca_hot_gas_1).toFixed(2)  else ' -- ' 
      hot1d = if v==true && sq then @$('#pca_hot_gas_1').html("HG1 : #{hotgas1}") else @$('#pca_hot_gas_1').html(" ")
      @mark_bad_data @tagData.pca_hot_gas_1.Tag, hot1d
    else
      @$('#pca_hot_gas_1').html(" ")

    #pca_hot_gas_2
    if @tagData.pca_hot_gas_2?
      hotgas2 = if @vals.pca_hot_gas_2? && @vals.pca_hot_gas_2 != '' then parseFloat(@vals.pca_hot_gas_2).toFixed(2)  else ' -- ' 
      hot2d = if v==true && sq then @$('#pca_hot_gas_2').html("HG2 : #{hotgas2}") else @$('#pca_hot_gas_2').html(" ")
      @mark_bad_data @tagData.pca_hot_gas_2.Tag, hot2d
    else
      @$('#pca_hot_gas_2').html(" ")

    #pca_bridge_damper
    if @tagData.pca_coil_dp?
      ad = @get_bool(@vals.pca_bridge_damper)
      txta = if ad then 'Open' else 'Close'
      add = if v==true && sq then @$('#pca_bridge_damper').html("Aircraft Damper : #{txta}") else @$('#pca_bridge_damper').html(" ")
      @mark_bad_data @tagData.pca_bridge_damper.Tag, add
    else
      @$('#pca_bridge_damper').html(" ")
    
    #pca_bridge_air
    if @tagData.pca_bridge_air?
      bd = @get_bool(@vals.pca_bridge_air)
      txtb = if bd then 'Open' else 'Close'
      bdd = if v==true && sq then @$('#pca_bridge_air').html("Bridge Damper : #{txtb}") else @$('#pca_bridge_air').html(" ")
      @mark_bad_data @tagData.pca_bridge_air.Tag, bdd
    else
      @$('#pca_bridge_air').html(" ")

    #pca_pump_cond
    if @tagData.pca_pump_cond?
      pc = @get_bool(@vals.pca_pump_cond)
      txt = if pc then 'On' else 'Off'
      pcd = if v==true && sq then @$('#pca_pump_cond').html("Condensate Pump : #{txt}") else @$('#pca_pump_cond').html(" ")
      @mark_bad_data @tagData.pca_pump_cond.Tag, pcd
    else
      @$('#pca_pump_cond').html(" ")

    if @tagData.pca_status?
      @render_row("pca_status", "On", "Off", "ok"," ")

    s = @model.get("settings")
    
    if s? && !!s.site      
      #tagConfig = new App.tagconfig 'pca_summary_widget', null, null, @site_code, s
      for img, imgData of @tagConfig.Graphics
        true_val = false      
        good_quality = true
        if !!imgData.Parameters['Parm001']?
          for tag, type of imgData.ControlTags
            if @tagData[tag]?
              switch type.toLowerCase()
                when 'boolean'
                  tagQuality = @data_q(@tagData[tag].Tag)
                  good_quality = if good_quality && tagQuality then true else false
                  tagVal = @get_bool(@vals[tag])
                  if tagVal
                    true_val = true
                  switch imgData.Parameters['Parm001'].toUpperCase()
                    when 'ALL_TRUE'
                      true_val = if true_val && tagVal then true else false    
                    when 'ANY_TRUE'
                      true_val = if true_val || tagVal then true else false
                    else null
                else null
            else
              true_val = false

        if !good_quality
          if !!imgData.Parameters['Parm002']?
            @$("#dynamic_#{img}").toggleClass(imgData.Parameters['Parm002'], false)
          if !!imgData.Parameters['Parm004']?
            @$("#dynamic_#{img}").toggleClass(imgData.Parameters['Parm004'], true)  
        else 
          if !!imgData.Parameters['Parm002']?
            @$("#dynamic_#{img}").toggleClass(imgData.Parameters['Parm002'], (true_val && good_quality))

    ###
    c = if @tagData.pca_blower? then @get_bool(@vals.pca_blower) else false
    p = if @tagData.pca_status? then @get_bool(@vals.pca_status) else false
    h1 = if @tagData.pca_heater_1? then @get_bool(@vals.pca_heater_1) else false
    h2 = if @tagData.pca_heater_2? then @get_bool(@vals.pca_heater_2) else false
    co1 = if @tagData.pca_comp_stage_1? then @get_bool(@vals.pca_comp_stage_1) else false
    co2 = if @tagData.pca_comp_stage_2? then @get_bool(@vals.pca_comp_stage_2) else false
    b = if @tagData.pca_bridge_damper? then @get_bool(@vals.pca_bridge_damper) else false
    bd = if @tagData.pca_bridge_air? then @get_bool(@vals.pca_bridge_air) else false
    f1 = if @tagData.pca_fan_1? then @get_bool(@vals.pca_fan_1) else false
    f2 = if @tagData.pca_fan_2? then @get_bool(@vals.pca_fan_2) else false
    f3 = if @tagData.pca_fan_3? then @get_bool(@vals.pca_fan_3) else false

    if @tagData.pca_blower?
      sq = @data_q(@tagData.pca_blower.Tag)
      @$("#blower_img").toggleClass('blower-on', c==true && sq)
    else
      @$("#blower_img").toggleClass('blower-on', false)

    if @tagData.pca_heater_1?
      h1q = @data_q(@tagData.pca_heater_1.Tag)
      @$("#heatingstage1_img").toggleClass('heating-stage-1-on', h1==true && h1q)
    else
      @$("#heatingstage1_img").toggleClass('heating-stage-1-on', false)

    if @tagData.pca_heater_2?
      h2q = @data_q(@tagData.pca_heater_2.Tag)
      @$("#heatingstage2_img").toggleClass('heating-stage-2-on', h2==true && h2q)
    else
      @$("#heatingstage2_img").toggleClass('heating-stage-2-on', false)

    if @tagData.pca_comp_stage_1?
      co1q = @data_q(@tagData.pca_comp_stage_1.Tag)
      @$("#coolingstage1_img").toggleClass('cooling-stage-1-on', co1==true && co1q)
    else
      @$("#coolingstage1_img").toggleClass('cooling-stage-1-on', false)

    if @tagData.pca_comp_stage_2?
      co2q = @data_q(@tagData.pca_comp_stage_2.Tag)
      @$("#coolingstage2_img").toggleClass('cooling-stage-2-on', co2==true && co2q)
    else
      @$("#coolingstage2_img").toggleClass('cooling-stage-2-on', false)

    if @tagData.pca_bridge_damper? && @tagData.pca_status?
      bq = @data_q(@tagData.pca_bridge_damper.Tag)
      pq = @data_q(@tagData.pca_status.Tag)
      @$("#accool_img").toggleClass('ac-cool-on', p==true && b==true && pq && bq)
    else
      @$("#accool_img").toggleClass('ac-cool-on', false)

    if @tagData.pca_bridge_air?
      bdq = @data_q(@tagData.pca_bridge_air.Tag)
      @$("#bccool_img").toggleClass('bc-cool-on', bd==true && bdq)
    else
      @$("#bccool_img").toggleClass('bc-cool-on', false)

    if @tagData.pca_fan_1?
      bdq = @data_q(@tagData.pca_fan_1.Tag)
      @$("#fan1_img").toggleClass('fan-1-on', f1==true && bdq)
    else
      @$("#fan1_img").toggleClass('fan-1-on', false)

    if @tagData.pca_fan_2?
      bdq = @data_q(@tagData.pca_fan_2.Tag)
      @$("#fan2_img").toggleClass('fan-2-on', f2==true && bdq)
    else
      @$("#fan2_img").toggleClass('fan-2-on', false)

    if @tagData.pca_fan_3?
      bdq = @data_q(@tagData.pca_fan_3.Tag)
      @$("#fan3_img").toggleClass('fan-3-on', f3==true && bdq)
    else
      @$("#fan3_img").toggleClass('fan-3-on', false)
    ###

    # ALARMS
    aq = @data_q(@tags.pca_has_alarms)
    @ui.alarms.toggle(@get_bool(@vals.pca_has_alarms)==true && aq)
    # WARNINGS
    wq = @data_q(@tags.pca_has_warnings)
    @ui.warnings.toggle(@get_bool(@vals.pca_has_warnings)==true && wq)

    @set_descriptions()

  set_model: ()=>
    if @refId > 0
      @kill_updates(@site_code)
      if @heartbeat_timer? && @heartbeat_timer > 0
        window.clearInterval(@heartbeat_timer)
      @refId = 0

    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @site_code = OPCManager.get_site_code(s.site)
    s.terminal = @$('#terminal').val()
    s.zone = @$('#zone').val()
    s.gate = @$('#gate').val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if @settings_visible
      #@kill_updates(@site_code)
      #if @heartbeat_timer? && @heartbeat_timer > 0
      #  window.clearInterval(@heartbeat_timer)
    else
      @IsPageLoading = false
      @update()

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
    else
      @IsPageLoading = false

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code?
      @site_refresh = ((OPCManager.get_site(settings.site).get("refreshRate") * 1000) * 3)
      #@watch_updates(@site_code)

    @configure_buttons()
    @render_gauges()
    @check_init_site()

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
    #@kill_updates(@site_code)
    # set buttons
    @$("#plots").toggle(p?)
    @$("#summary").toggle(!p?)
    @$("#graphics_container").toggle(!p?)

    
    show_hist = p? && !live
    plot_color = "#80C3FF"
    plot2_color = "#ff8c1a"

    switch p
      when 'ambient'
        lbl = 'Ambient Temp'
        tags = [{tag: "#{@prefix}#{@tagData.pca_ambient_temp.Tag}.Value", fill: true, color: plot_color}]
      when 'discharge'
        lbl = "Discharge Temp"
        tags = [{tag: "#{@prefix}#{@tagData.pca_discharge_temp.Tag}.Value", fill: true, color: plot_color}]
      when 'plots'
        lbl = 'Ambient/Discharge Temps'
        tags = [
          {tag: "#{@prefix}#{@tagData.pca_ambient_temp.Tag}.Value", fill: true, color: plot_color}
          {tag: "#{@prefix}#{@tagData.pca_discharge_temp.Tag}.Value", fill: true, color: plot2_color}
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

    #@watch_updates(@site_code)

  trend_callback: (data)=>
    @$('#plot-placeholder').remove()

    #skip plotting if in history mode in case data comes back
    #return if !@initializing && !@$("#live_data").is(":checked")
    
    @tb = OPC.Trend.getTrendBinding(data)
    #return null if !@tb.mode?

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
    @GraphicsContainer = "<div id='graphics_container'></div>"
    @ui.display.append(@GraphicsContainer)
    @update()

  start_heartbeat: ()=>
    @beat_time = new Date().getTime() + @site_refresh
    $("##{@el.parentNode.id} .widget-outer").toggleClass("no-heartbeat", false)
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @heartbeat_timer = window.setInterval((=>
      @check_heartbeat @el.parentNode.id
      return
    ), @site_refresh) 

  check_heartbeat: (widget_id)=>
    @curTime = new Date().getTime()
    $("##{widget_id} .widget-outer").toggleClass("no-heartbeat", (@curTime > @beat_time))

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)
    
# ----------------------------------

window.PcasummaryWidgetView = PcasummaryWidgetView
module.exports = PcasummaryWidgetView
