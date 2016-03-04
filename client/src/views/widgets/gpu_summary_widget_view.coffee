Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')
UIUtils = require('../../common/uiutils')

# ----------------------------------
class GpusummaryWidgetView extends IOPSWidgetView
  template:   "widgets/gpu_summary_widget"
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
    # gauge_volts_out:   'div#gauge_volts_out'
    # gauge_amps_out:    'div#gauge_amps_out'
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

  tags:
    #Grid Tags
    gpu_time:                       'GPU.GPUTime'
    #gpu_gpustatus:                  'GPU.GPUSTATUS'
    gpu_gpustatusb:                 'GPU.GPUSTATUSBOOLEAN'
    #gpu_contstatus:                 'GPU.CONTSTATUS'
    #gpu_bypass:                     'GPU.ByPass'
    gpu_raoutavg:                   'GPU.RAOUTAVG'
    gpu_rvoutavg:                   'GPU.RVOUTAVG'
    gpu_ravinavg:                   'GPU.RAVINAVG'
    gpu_rvinavg:                    'GPU.RVINAVG'
    #gpu_frequency:                  'GPU.Frequency'
    #gpu_pm_output_phasea_i:         'GPU.PM_OUTPUT_PHASEA_I'
    #gpu_pm_output_phaseb_i:         'GPU.PM_OUTPUT_PHASEB_I'
    #gpu_pm_output_phasec_i:         'GPU.PM_OUTPUT_PHASEC_I'
    #gpu_pm_output_phasea_v:         'GPU.PM_OUTPUT_PHASEA_V'
    #gpu_pm_output_phaseb_v:         'GPU.PM_OUTPUT_PHASEB_V'
    #gpu_pm_output_phasec_v:         'GPU.PM_OUTPUT_PHASEC_V'
    #gpu_pm_input_phasea_i:          'GPU.PM_INPUT_PHASEA_I'
    #gpu_pm_input_phaseb_i:          'GPU.PM_INPUT_PHASEB_I'
    #gpu_pm_input_phasec_i:          'GPU.PM_INPUT_PHASEC_I'
    #gpu_pm_input_phasea_v:          'GPU.PM_INPUT_PHASEA_V'
    #gpu_pm_input_phaseb_v:          'GPU.PM_INPUT_PHASEB_V'
    #gpu_pm_input_phasec_v:          'GPU.PM_INPUT_PHASEC_V'
    #gpu_gpustatus_triger_data_log:  'GPU.GPUSTATUS_TRIGER_DATA_LOG'
    #gpu_on_1:                       'GPU.ON 1'
    #gpu_on_2:                       'GPU.ON 2'

  initialize: ()->

  # fnUTC2Date: (d)->
  #   now = new Date
  #   localOffset = now.getTimezoneOffset() * 60000
  #   c = new Date(d + localOffset)
  #   c.toLocaleString()

  # fnUTC: ()->
  #   now = new Date
  #   d = Date.UTC(now.getFullYear(), now.getMonth(), now.getDate(), now.getHours(), now.getMinutes(), now.getSeconds(), now.getMilliseconds())
  #   d

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
        max: 150
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
    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    s = @model.get("settings")
   
    if s? && !!s.gate
      # build settings      
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags
      
      lbl = "GPU #{s.gate} - Summary"
      @ui.wtitle.html(lbl)
      @$('#gpu_summary_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]

      # listen for updates
      @watch_updates(@site_code)

  trend_callback: (data)=>
    @$('#plot-placeholder').remove()

    #skip plotting if in history mode in case data comes back
    #return if !@initializing && !@$("#live_data").is(":checked")
    
    @tb = OPC.Trend.getTrendBinding(data)
    #return null if !@tb.mode?

    if @tb?
      max = 150.0
      if data.penvalues? && data.penvalues.length>0
        for p in data.penvalues[0]
          if p != '' && parseFloat(p) > max then max = parseFloat(p)
      console.log max
      @initializing = false
      opts =
        series: { shadowSize: 0}
        lines:  { show: true, fill: true }
        grid: {  hoverable: true, clickable:true, autoHighlight: false }
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

      fd = OPC.Flot.buildTrendData(data)
      $.plot("##{@tb.chartid}", fd, opts)


  # process data and update the view
  data_update: (data)=>
    # refresh gauges
    @refresh_values()
    vq = @data_q(@tags.gpu_rvoutavg)
    @$("#gauge_volts_out_#{@model.id} .bad_data").toggle(!vq)
    v = @vals.gpu_rvoutavg
    if vq && !isNaN(v) && v != ''
      @g1.refresh(parseInt(v))

    aq = @data_q(@tags.gpu_raoutavg)
    @$("#gauge_amps_out_#{@model.id} .bad_data").toggle(!aq)
    v = @vals.gpu_raoutavg
    if aq && !isNaN(v) && v != ''
      v = parseInt(parseInt(v))
      @g2.refresh(v)

    # refresh status
    sq = @data_q(@tags.gpu_gpustatusb)
    stat = @get_bool(@vals.gpu_gpustatusb)
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
    switch p
      when 'vin'
        lbl = 'Input Voltage'
        tags = [{tag: "#{@prefix}GPU.RVINAVG.Value", fill: true, color: "#0c0"}]
      when 'vin_a', 'vin_b', 'vin_c'
        lbl = "Input Voltage Phase #{ph}"
        tags = [{tag: "#{@prefix}GPU.PM_INPUT_PHASE#{ph}_V.Value", fill: true, color: "#0c0"}]
      when 'vout'
        lbl = 'Output Voltage'
        tags = [{tag: "#{@prefix}GPU.RVOUTAVG.Value", fill: true, color: "#00c"}]
      when 'vout_a', 'vout_b', 'vout_c'
        lbl = "Output Voltage Phase #{ph}"
        tags = [{tag: "#{@prefix}GPU.PM_OUTPUT_PHASE#{ph}_V.Value", fill: true, color: "#00c"}]
      when 'aout'
        lbl = 'Output Amperage'
        tags = [{tag: "#{@prefix}GPU.RAOUTAVG.Value", fill: true, color: "#909"}]
      when 'aout_a', 'bout_b', 'cout_c'
        lbl = "Output Amperage Phase #{ph}"
        tags = [{tag: "#{@prefix}GPU.PM_OUTPUT_PHASE#{ph}_I.Value", fill: true, color: "#909"}]

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
    h = @$(".display").height()-90
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
        @$("#plot_container").width('100%').height(@$(".display").height()-70)
      @$("#plot_container").width('100%').height(@$(".display").height()-70)
     
      App.opc.add_trend @site_code, @tbinding

      if show_hist
        dtm = new Date()
        sd = OPC.Util.formatDate(dtm,"mm/dd/yyyy 00:00:00")
        ed = OPC.Util.formatDate(dtm,"mm/dd/yyyy 23:59:59")
        OPC.Trend.getHistoryData("#{pid}", sd, ed)
        @$("#live_data").off('change')
        @$("#live_data").bootstrapToggle('off')
        @$("#live_data").on 'change', (e)=>
          lv = @$("#live_data").is(':checked')
          @show_plot(@current_plot, lv)

    @current_plot = p

    @watch_updates(@site_code)

  configure_buttons: ()=>
    @$("#toggle_volts_in").click (e)=>
      e.preventDefault()
      @show_plot('vin')
    @$("#toggle_volts_out").click (e)=>
      e.preventDefault()
      @show_plot('vout')
    @$("#toggle_amps_out").click (e)=>
      e.preventDefault()
      @show_plot('aout')
    @$("#toggle_main").click (e)=>
      e.preventDefault()
      @show_plot()


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

    @$("#view_main .trend").remove()
    @$('#live_data').bootstrapToggle
      width:70
      height:30
    @$("a.plot_type").click (e)=>
      e.preventDefault()
      id = $(e.target).attr('id')
      tpe = id.split('_')[1]
      cp = @current_plot.split('_')[0]

      @show_plot("#{cp}_#{tpe}", @$("#live_data").is(":checked"))
    
    @configure_buttons()
    @render_gauges()


  start: ()->
    @update()

  onDestroy: (arg1, arg2)->
    # be sure to remove listener
    if @tbinding then OPCManager.rem_trend(@site_code, @tbinding)
    @kill_updates(@site_code)
    
# ----------------------------------

window.GpusummaryWidgetView = GpusummaryWidgetView
module.exports = GpusummaryWidgetView
