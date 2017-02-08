Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')
UIUtils = require('../../common/uiutils')

# ----------------------------------
class GpusummaryWidgetView extends IOPSWidgetView
  template:   "widgets/gpu_summary_widget"
  classID: 'gpu_summary_widget'
  className: 'widget-outer box box-primary gpu_summary_widget'
  ui:
    terminal:          'input#terminal'
    zone:              'input#zone'
    display_prefix:    'input#display_prefix'
    gate:              'input#gate'
    site:              'select#site'
    wtitle:            'h3.box-title'
    display:           '.display'
    content:           '.content'
    docked:            'i#docked'
    alarms:            'i#alarms'
    warnings:          'i#warnings'
    main_view:         'div#gpu_main_view'
    gpu_image:         'div#gpu_image'
    power_indicator:   'span#power_indicator'
    view_volts_in:     'div#view_volts_in'
    plot_volts_in:     'div#plot_volts_in'
    view_volts_out:    'div#view_volts_out'
    plot_volts_out:    'div#plot_volts_out'
    view_amps_out:     'div#view_amps_out'
    plot_amps_out:     'div#plot_amps_out'
    toggle_volts_in:   'a#toggle_volts_in'
    toggle_volts_out:  'a#toggle_volts_out'
    toggle_amps_out:   'a#toggle_amps_out'

  @layout:
    sx: 8
    sy: 9

  tags = []
  ###*********************************************************
  tags:
    #Grid Tags
    gpu_time:                       'GPU.GPUTime'
    gpu_gpustatusb:                 'GPU.GPUSTATUSBOOLEAN'
    gpu_raoutavg:                   'GPU.RAOUTAVG'
    gpu_rv_out_avg:                   'GPU.RVOUTAVG'
    gpu_ravinavg:                   'GPU.RAVINAVG'
    gpu_rvinavg:                    'GPU.RVINAVG'
  *********************************************************###

  tagData = []
  tagConfig = []
  site_refresh: 50000

  IsUpdatingSettings: false
  IsPageLoading: true

  initialize: ()->
    #

  render_gauges: ()->
    vid = "gauge_volts_out_#{@model.id}"
    @$('#view_main').append("<div id='#{vid}'><div class='bad_data' style='display:none;'>BAD DATA</div></div>")
    @g1 = new JustGage
      id: vid
      title: ' '
      label: 'Output Voltage'
      value: 0
      parseTime: false
      min: 0
      max: 125
      symbol: ' V'
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
        {color: '#000000',lo: 0,hi: 2}
        {color: '#ff3333',lo: 3,hi: 99}
        {color: '#ffcc66',lo: 100,hi: 102}
        {color: '#00b300',lo: 103,hi: 116}
        {color: '#ffcc66',lo: 117,hi: 119}
        {color: '#ff3333',lo: 120,hi: 150}
      ]
      counter: true

      aid = "gauge_amps_out_#{@model.id}"
      @$('#view_main').append("<div id='#{aid}'><div class='bad_data' style='display:none;'>BAD DATA</div></div>")
      @g2 = new JustGage
        id: aid
        title: ' '
        label: 'Output Amperage'
        value: 0
        parseTime: false
        min: 0
        max: 70
        symbol: ' A'
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
          {color: '#ff3333',lo: 2,hi: 23}
          {color: '#ffcc66',lo: 24,hi: 29}
          {color: '#00b300',lo: 30,hi: 40}
          {color: '#ffcc66',lo: 41,hi: 46}
          {color: '#ff3333',lo: 47,hi: 70}
        ]
        counter: true

    v28id = "gauge_28volts_out_#{@model.id}"
    @$('#view_main').append("<div id='#{vid}'><div class='bad_data' style='display:none;'>BAD DATA</div></div>")
    @g3 = new JustGage
      id: v28id
      title: ' '
      label: '28V Output Voltage'
      value: 0
      parseTime: false
      min: 0
      max: 35
      symbol: ' V'
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
        {color: '#000000',lo: 0,hi: 2}
        {color: '#ff3333',lo: 3,hi: 23}
        {color: '#ffcc66',lo: 24,hi: 25}
        {color: '#00b300',lo: 26,hi: 30}
        {color: '#ffcc66',lo: 31,hi: 32}
        {color: '#ff3333',lo: 33,hi: 35}
      ]
      counter: true

      a28id = "gauge_28amps_out_#{@model.id}"
      @$('#view_main').append("<div id='#{aid}'><div class='bad_data' style='display:none;'>BAD DATA</div></div>")
      @g4 = new JustGage
        id: a28id
        title: ' '
        label: '28V Output Amperage'
        value: 0
        parseTime: false
        min: 0
        max: 70
        symbol: ' A'
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
          {color: '#ff3333',lo: 2,hi: 23}
          {color: '#ffcc66',lo: 24,hi: 29}
          {color: '#00b300',lo: 30,hi: 40}
          {color: '#ffcc66',lo: 41,hi: 46}
          {color: '#ff3333',lo: 47,hi: 70}
        ]
        counter: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    show_opts = s? && !!s.gate
    @$('#mode').toggle(show_opts)

    if show_opts
      lbl = "#{@site_code}: Gate #{s.gate} - GPU Summary"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      @kill_updates(@site_code)

      tags = []
      @tagData = []
      @tagConfig = []
      @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, s)
      @tagData = @tagConfig.TagData

      for tag, tagData of @tagData
        tags.push "#{@prefix}#{tagData.Tag}.Value"

      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"

      App.opc.add_tags @site_code, tags
      
      #@$('#gpu_summary_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]

      # listen for updates
      @watch_updates(@site_code)
      @start_heartbeat()
    
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

  # process data and update the view
  data_update: (data)=>
    # refresh gauges
    @refresh_values()
    @beat_time = new Date().getTime() + @site_refresh

    
    if @tagData.gpu_rv_out_avg?
      vq = @data_q(@tagData.gpu_rv_out_avg.Tag)
      @$("#gauge_volts_out_#{@model.id} .bad_data").toggle(!vq)
      v = @vals.gpu_rv_out_avg
      if vq && !isNaN(v) && v != ''
        @g1.refresh(parseInt(v))

    if @tagData.gpu_ra_out_avg?
      aq = @data_q(@tagData.gpu_ra_out_avg.Tag)
      @$("#gauge_amps_out_#{@model.id} .bad_data").toggle(!aq)
      v = @vals.gpu_ra_out_avg
      if aq && !isNaN(v) && v != ''
        v = parseInt(parseInt(v))
        @g2.refresh(v)

    if @tagData.gpu_rdc_volts?
      rvq = @data_q(@tagData.gpu_rdc_volts.Tag)
      @$("#gauge_32volts_out_#{@model.id} .bad_data").toggle(!rvq)
      rv = @vals.gpu_rdc_volts
      if rvq && !isNaN(rv) && rv != ''
        @g1.refresh(parseInt(rv))

    if @tagData.gpu_rdc_amps?
      raq = @data_q(@tagData.gpu_rdc_amps.Tag)
      @$("#gauge_32amps_out_#{@model.id} .bad_data").toggle(!raq)
      rv = @vals.gpu_rdc_amps
      if raq && !isNaN(rv) && rv != ''
        rv = parseInt(parseInt(rv))
        @g2.refresh(rv)

    if v > 0
      @$("#gauge_amps_out_#{@model.id}").toggleClass("NoShow",false)
      @$("#gauge_amps_out_#{@model.id}").toggleClass("NoShow",false)
      @$("#gauge_32amps_out_#{@model.id}").toggleClass("NoShow",true)
      @$("#gauge_32amps_out_#{@model.id}").toggleClass("NoShow",true)

    if rv > 0
      @$("#gauge_amps_out_#{@model.id}").toggleClass("NoShow",true)
      @$("#gauge_amps_out_#{@model.id}").toggleClass("NoShow",true)
      @$("#gauge_32amps_out_#{@model.id}").toggleClass("NoShow",false)
      @$("#gauge_32amps_out_#{@model.id}").toggleClass("NoShow",false)

    # refresh status
    if @tagData.gpu_status?
      sq = @data_q(@tagData.gpu_status.Tag)
      stat = @get_bool(@vals.gpu_status)
      th = ""
      icn = 'ban'
      cls = 'inactive'
      txt = 'BAD DATA'
      if stat == true
        cls = 'active'
        txt = 'ON'
        icn = 'circle'
        t = parseFloat(@vals.gpu_time)
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
    @

  show_plot: (p, live)=>
    @initializing = true
    @kill_updates(@site_code)
    # set buttons
    @$("#plots").toggle(p?)
    @$("#view_main").toggle(!p?)

    ph = ''
    if p?
      parts = p.split('_')
      ph = if parts.length>1 then parts[1].toUpperCase() else ''
      ptype = parts[0]

    show_hist = p? && !live
    plot_color = "#80C3FF"
    switch p
      when 'vin'
        lbl = 'Input Voltage'
        if @tagData.gpu_rv_in_avg.Tag?
          tags = [{tag: "#{@prefix}#{@tagData.gpu_rv_in_avg.Tag}.Value", fill: true, color: plot_color}]
      when 'vin_a', 'vin_b', 'vin_c'
        lbl = "Input Voltage Phase #{ph}"
        switch ph
          when 'A'
            if @tagData.gpu_pm_input_phasea_v.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_input_phasea_v.Tag}.Value", fill: true, color: plot_color}]
          when 'B'
            if @tagData.gpu_pm_input_phaseb_v.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_input_phaseb_v.Tag}.Value", fill: true, color: plot_color}]
          when 'C'
            if @tagData.gpu_pm_input_phasec_v.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_input_phasec_v.Tag}.Value", fill: true, color: plot_color}]
      when 'vout'
        lbl = 'Output Voltage'
        if @tagData.gpu_rv_out_avg.Tag?
          tags = [{tag: "#{@prefix}#{@tagData.gpu_rv_out_avg.Tag}.Value", fill: true, color: plot_color}]
      when 'vout_a', 'vout_b', 'vout_c'
        lbl = "Output Voltage Phase #{ph}"
        switch ph
          when 'A'
            if @tagData.gpu_pm_output_phasea_v.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_output_phasea_v.Tag}.Value", fill: true, color: plot_color}]
          when 'B'
            if @tagData.gpu_pm_output_phaseb_v.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_output_phaseb_v.Tag}.Value", fill: true, color: plot_color}]
          when 'C'
            if @tagData.gpu_pm_output_phasec_v.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_output_phasec_v.Tag}.Value", fill: true, color: plot_color}]
      when 'aout'
        lbl = 'Output Amperage'
        if @tagData.gpu_ra_out_avg.Tag?
          tags = [{tag: "#{@prefix}#{@tagData.gpu_ra_out_avg.Tag}.Value", fill: true, color: plot_color}]
      when 'aout_a', 'aout_b', 'aout_c'
        lbl = "Output Amperage Phase #{ph}"
        switch ph
          when 'A'
            if @tagData.gpu_pm_output_phasea_i.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_output_phasea_i.Tag}.Value", fill: true, color: plot_color}]
          when 'B'
            if @tagData.gpu_pm_output_phaseb_i.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_output_phaseb_i.Tag}.Value", fill: true, color: plot_color}]
          when 'C'
            if @tagData.gpu_pm_output_phasec_i.Tag?
              tags = [{tag: "#{@prefix}#{@tagData.gpu_pm_output_phasec_i.Tag}.Value", fill: true, color: plot_color}]

    @$('#ptype_lbl').html(lbl)
    @$('#toggle_volts_in').toggle(ptype!='vin')
    @$('#toggle_volts_out').toggle(ptype!='vout')
    @$('#toggle_amps_out').toggle(ptype!='aout')
    @$('#toggle_main').toggle(p?)
    
    @$('#plot-placeholder').remove()
    @$("#plot_data").append """
      <div id='plot-placeholder' style='background-color:#eee;position:absolute;top:0;left:0;width:100%;'>
        <div style='text-align:center;color:#666;font-size:18px;margin-top:20%;'><i class="fa fa-spinner fa-pulse"></i> LOADING DATA...</div>
      </div>
    """
    #h = @$(".display").height()-90 # with bottom buttons
    h = @$(".display").height()
    @$("#plot-placeholder").css
      "max-height": "#{h}px"
      "height": "#{h}px"
  
    
    # clear out previous plots
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

  configure_buttons: ()=>
    @$('#mode').change (e)=>
      sel = @$('#mode').val()
      sel = if sel=='' then null else sel
      @show_plot(sel)

  set_model: ()=>

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
      if @heartbeat_timer? && @heartbeat_timer > 0
        window.clearInterval(@heartbeat_timer)
    else
      @IsPageLoading = false
      @update()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)
    
    @$('#site').on 'change', ()=>
      @draw_selectors()
      @set_model()
    
    gate = settings.gate
    if !gate? || gate.length == 0
      @toggle_settings()
    else
      @IsPageLoading = false

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code?
      @site_refresh = ((OPCManager.get_site(settings.site).get("refreshRate") * 1000) * 3)
      @watch_updates(@site_code)

    @$("#view_main .trend").remove()
    @$('#live_data').bootstrapToggle
      width:50
      height:25
    @$("a.plot_type").click (e)=>
      e.preventDefault()
      id = $(e.target).attr('id')
      tpe = id.split('_')[1]
      cp = @current_plot.split('_')[0]

      @show_plot("#{cp}_#{tpe}", @$("#live_data").is(":checked"))
    
    @configure_buttons()
    @render_gauges()
    @check_init_site()


  start: ()->
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

  onDestroy: (arg1, arg2)->
    # be sure to remove listener
    if @tbinding then OPCManager.rem_trend(@site_code, @tbinding)
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)
    
# ----------------------------------

window.GpusummaryWidgetView = GpusummaryWidgetView
module.exports = GpusummaryWidgetView
