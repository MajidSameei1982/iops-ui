Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

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
    gauge_volts_out:   'div#gauge_volts_out'
    gauge_amps_out:    'div#gauge_amps_out'
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

  initialize: ()->
    
    #*********************************************************************************
    #***** NOTE: This is test data.  Once the live version of loadData(PLOT_TYPE) 
    #*****       is developed this can be deleted.
    #*****
    #*********************************************************************************
    #*****  CSW: 20160213
    #*********************************************************************************
    #Amps Phase A
    @amps1 = [
      [
        1455145200000
        33
      ]
      [
        1455145500000
        33
      ]
      [
        1455145800000
        45
      ]
      [
        1455146100000
        42
      ]
      [
        1455146400000
        38
      ]
      [
        1455146700000
        34
      ]
      [
        1455147000000
        48
      ]
      [
        1455147300000
        43
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        1
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        34
      ]
      [
        1455149400000
        39
      ]
      [
        1455149700000
        32
      ]
    ]
    #Amps Phase B
    @amps2 = [
      [
        1455145200000
        37
      ]
      [
        1455145500000
        34
      ]
      [
        1455145800000
        54
      ]
      [
        1455146100000
        65
      ]
      [
        1455146400000
        56
      ]
      [
        1455146700000
        46
      ]
      [
        1455147000000
        45
      ]
      [
        1455147300000
        65
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        0
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        53
      ]
      [
        1455149400000
        45
      ]
      [
        1455149700000
        53
      ]
    ]
    #Amps Phase C
    @amps3 = [
      [
        1455145200000
        65
      ]
      [
        1455145500000
        45
      ]
      [
        1455145800000
        45
      ]
      [
        1455146100000
        64
      ]
      [
        1455146400000
        65
      ]
      [
        1455146700000
        65
      ]
      [
        1455147000000
        63
      ]
      [
        1455147300000
        54
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        2
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        39
      ]
      [
        1455149400000
        53
      ]
      [
        1455149700000
        65
      ]
    ]
    #Amps Phase Avg
    @amps4 = [
      [
        1455145200000
        45
      ]
      [
        1455145500000
        37
      ]
      [
        1455145800000
        48
      ]
      [
        1455146100000
        57
      ]
      [
        1455146400000
        53
      ]
      [
        1455146700000
        48
      ]
      [
        1455147000000
        52
      ]
      [
        1455147300000
        54
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        1
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        42
      ]
      [
        1455149400000
        46
      ]
      [
        1455149700000
        50
      ]
    ]
    #Volts Phase A
    @volts1 = [
      [
        1455145200000
        112
      ]
      [
        1455145500000
        109
      ]
      [
        1455145800000
        110
      ]
      [
        1455146100000
        111
      ]
      [
        1455146400000
        109
      ]
      [
        1455146700000
        110
      ]
      [
        1455147000000
        111
      ]
      [
        1455147300000
        109
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        2
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        109
      ]
      [
        1455149400000
        110
      ]
      [
        1455149700000
        111
      ]
    ]
    #Volts Phase B
    @volts2 = [
      [
        1455145200000
        110
      ]
      [
        1455145500000
        111
      ]
      [
        1455145800000
        111
      ]
      [
        1455146100000
        111
      ]
      [
        1455146400000
        110
      ]
      [
        1455146700000
        111
      ]
      [
        1455147000000
        111
      ]
      [
        1455147300000
        111
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        0
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        90
      ]
      [
        1455149400000
        111
      ]
      [
        1455149700000
        111
      ]
    ]
    #Volts Phase C
    @volts3 = [
      [
        1455145200000
        112
      ]
      [
        1455145500000
        112
      ]
      [
        1455145800000
        112
      ]
      [
        1455146100000
        113
      ]
      [
        1455146400000
        112
      ]
      [
        1455146700000
        111
      ]
      [
        1455147000000
        112
      ]
      [
        1455147300000
        113
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        3
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        80
      ]
      [
        1455149400000
        112
      ]
      [
        1455149700000
        112
      ]
    ]
    #Volts Phase Avg
    #JOHN: var volts4 = get This should be the call to the database to get all logged data for the day.  
    @volts4 = [
      [
        1455145200000
        111
      ]
      [
        1455145500000
        111
      ]
      [
        1455145800000
        111
      ]
      [
        1455146100000
        112
      ]
      [
        1455146400000
        110
      ]
      [
        1455146700000
        111
      ]
      [
        1455147000000
        111
      ]
      [
        1455147300000
        111
      ]
      [
        1455147600000
        0
      ]
      [
        1455147900000
        0
      ]
      [
        1455148200000
        2
      ]
      [
        1455148500000
        0
      ]
      [
        1455148800000
        0
      ]
      [
        1455149100000
        93
      ]
      [
        1455149400000
        111
      ]
      [
        1455149700000
        111
      ]
    ]

    #************************************************
    #*********** END OF TEST DATA *******************
    #************************************************

    previousPoint = null
    previousLabel = null

    @RVAIN = 
      ID: 'INPUT_VA'
      liveData: false
      timerID: 0
      plot: null
    @RVOUT = 
      ID: 'OUTPUT_V'
      liveData: false
      timerID: 0
      plot: null
    @RAOUT = 
      ID: 'OUTPUT_A'
      liveData: false
      timerID: 0
      plot: null
    @rain1_live = []
    @rain2_live = []
    @rain3_live = []
    @rain4_live = []
    @rvin1_live = []
    @rvin2_live = []
    @rvin3_live = []
    @rvin4_live = []
    @rvout1_live = []
    @rvout2_live = []
    @rvout3_live = []
    @rvout4_live = []
    @raout1_live = []
    @raout2_live = []
    @raout3_live = []
    @raout4_live = []

    #*********************************************************************************
    #***** NOTE: It would be nice if we could locate this into another file and  
    #*****       reference it in case we can reuse it for other plots.
    #*****
    #*********************************************************************************
    #*****  CSW: 20160213
    #*********************************************************************************
    @rvain_options = 
      xaxis:
        mode: 'time'
        timeformat: '%e/%m %I:%M %P'
        timezone: 'Asia/Shanghai'
        tickSize: [
          5
          'minute'
        ]
        axisLabel: ' '
        axisLabelPadding: 25
      yaxes: [
        {
          min: 25
          max: 85
          position: 'left'
          color: 'black'
          axisLabel: 'Amps'
          axisLabelUseCanvas: true
          axisLabelFontSizePixels: 12
          axisLabelFontFamily: 'Verdana, Arial'
          axisLabelPadding: 10
        }
        {
          min: 95
          max: 150
          position: 'right'
          color: 'black'
          axisLabel: 'Volts'
          axisLabelUseCanvas: true
          axisLabelFontSizePixels: 12
          axisLabelFontFamily: 'Verdana, Arial'
          axisLabelPadding: 10
        }
      ]
      legend:
        show: true
        noColumns: 4
        labelFormatter: (label, series) ->
          '<font color="white">' + label + '</font>'
        backgroundColor: '#000'
        backgroundOpacity: 0.9
        labelBoxBorderColor: '#000000'
        position: 'nw'
      grid:
        hoverable: true
        borderWidth: 3
        mouseActiveRadius: 50
        backgroundColor: colors: [
          '#ffffff'
          '#EDF5FF'
        ]
    @rvout_options = 
      xaxis:
        mode: 'time'
        timeformat: '%e/%m %I:%M %P'
        timezone: 'Asia/Shanghai'
        tickSize: [
          5
          'minute'
        ]
        axisLabel: ' '
        axisLabelPadding: 25
      yaxes: [ {
        min: 95
        max: 150
        position: 'left'
        color: 'black'
        axisLabel: 'Volts'
        axisLabelUseCanvas: true
        axisLabelFontSizePixels: 12
        axisLabelFontFamily: 'Verdana, Arial'
        axisLabelPadding: 10
      } ]
      legend:
        show: true
        noColumns: 4
        labelFormatter: (label, series) ->
          '<font color="white">' + label + '</font>'
        backgroundColor: '#000'
        backgroundOpacity: 0.9
        labelBoxBorderColor: '#000000'
        position: 'nw'
      grid:
        hoverable: true
        borderWidth: 3
        mouseActiveRadius: 50
        backgroundColor: colors: [
          '#ffffff'
          '#EDF5FF'
        ]
    @raout_options =  
      xaxis:
        mode: 'time'
        timeformat: '%e/%m %I:%M %P'
        timezone: 'Asia/Shanghai'
        tickSize: [
          5
          'minute'
        ]
        axisLabel: ' '
        axisLabelPadding: 25
      yaxes: [ {
        min: 25
        max: 85
        position: 'left'
        color: 'black'
        axisLabel: 'Amps'
        axisLabelUseCanvas: true
        axisLabelFontSizePixels: 12
        axisLabelFontFamily: 'Verdana, Arial'
        axisLabelPadding: 10
      } ]
      legend:
        show: true
        noColumns: 4
        labelFormatter: (label, series) ->
          '<font color="white">' + label + '</font>'
        backgroundColor: '#000'
        backgroundOpacity: 0.9
        labelBoxBorderColor: '#000000'
        position: 'nw'
      grid:
        hoverable: true
        borderWidth: 3
        mouseActiveRadius: 50
        backgroundColor: colors: [
          '#ffffff'
          '#EDF5FF'
        ]

    $.fn.UseTooltip = ->
      $(this).bind 'plothover', (event, pos, item) ->
        if item
          if previousLabel != item.series.label or previousPoint != item.dataIndex
            now = new Date
            localOffset = now.getTimezoneOffset() * 60000
            previousPoint = item.dataIndex
            previousLabel = item.series.label
            $('#tooltip').remove()
            #x = item.datapoint[0]
            x = new Date(item.datapoint[0] + localOffset).toLocaleString()
            y = item.datapoint[1]
            #c.toLocaleString()
            color = item.series.color
            showTooltip item.pageX, item.pageY, color, '<strong>' + item.series.label + ':</strong> ' + x + ' = ' + y
        else
          $('#tooltip').remove()
          previousPoint = null
        return
      return

    showTooltip = (x, y, color, contents)->
      $('<div id="tooltip">' + contents + '</div>').css(
        position: 'absolute'
        'z-index': 10000
        display: 'none'
        top: y - 40
        left: x - 120
        border: '2px solid ' + color
        padding: '3px'
        'font-size': '9px'
        'border-radius': '5px'
        'background-color': '#fff'
        'font-family': 'Verdana, Arial, Helvetica, Tahoma, sans-serif'
        opacity: 0.9).appendTo('body').fadeIn 200
      return

    return


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
      
      #if $(".display #GPU_image").length == 0
      #  $(".display").append "<div id='GPU_image' 
      #                          style='background:
      #                          url(\"img/airport/Common/GPU-Graphic.png\") no-repeat bottom center; background-size: contain;'>
      #                        </div>"

      $ =>
        $('.toggle_button').each (index)->
          $(@).bind 'click', (event)->
            $('.toggle_button').each (index)->
                $($(@).attr('id').replace('toggle_','#view_')).hide()
                $(@).show()
                $('#toggle_main').hide()
            $(@).toggle()
            $($(@).attr('id').replace('toggle_','#view_')).toggle()
            $('#toggle_main').toggle()
            event.preventDefault()
            return
          return
        $('#rvain-toggle-live').change ()=>
          @clearLiveData(@RVAIN)
          @RVAIN.liveData = $('#rvain-toggle-live').prop('checked')
          @update_plot(@RVAIN)
          return
        $('#rvout-toggle-live').change ()=>
          @clearLiveData(@RVOUT)
          @RVOUT.liveData = $('#rvout-toggle-live').prop('checked')
          @update_plot(@RVOUT)
          return
        $('#raout-toggle-live').change ()=>
          @clearLiveData(@RAOUT)
          @RAOUT.liveData = $('#raout-toggle-live').prop('checked')
          @update_plot(@RAOUT)
          return

      # build settings      
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      
      lbl = "GPU #{s.gate} - Summary"
      @ui.wtitle.html(lbl)
      @$('#gpu_summary_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      @set_descriptions(true)

  update_plot: (PLOT_TYPE)->
    tData = []
    clearTimeout(PLOT_TYPE.timerID)
    tData = @loadData(PLOT_TYPE)
    tData = @getLiveData(PLOT_TYPE, tData)
    switch PLOT_TYPE.ID
      when @RVAIN.ID
        PLOT_TYPE.plot = $.plot($('#rvain-plot'), tData, @rvain_options)
        $('#rvain-plot').UseTooltip()
      when @RVOUT.ID
        PLOT_TYPE.plot = $.plot($('#rvout-plot'), tData, @rvout_options)
        $('#rvout-plot').UseTooltip()
      when @RAOUT.ID
        PLOT_TYPE.plot = $.plot($('#raout-plot'), tData, @raout_options)
        $('#raout-plot').UseTooltip()
    if PLOT_TYPE.liveData
      PLOT_TYPE.timerID = setTimeout(@update_plot, 6000, PLOT_TYPE)
    return

  getRandomInt: (min, max)->
    Math.floor(Math.random() * (max - min + 1)) + min

  clearLiveData: (PLOT_TYPE)->
    switch PLOT_TYPE.ID
      when @RVAIN.ID
        @rain1_live = []
        @rain2_live = []
        @rain3_live = []
        @rain4_live = []
        @rvin1_live = []
        @rvin2_live = []
        @rvin3_live = []
        @rvin4_live = []
      when @RVOUT.ID
        @rvout1_live = []
        @rvout2_live = []
        @rvout3_live = []
        @rvout4_live = []
      when @RAOUT.ID
        @raout1_live = []
        @raout2_live = []
        @raout3_live = []
        @raout4_live = []
      else
        return false
    return true

  getLiveData: (PLOT_TYPE, tData)->
    if !PLOT_TYPE.liveData
      return tData

    dt = @fnUTC()
    #newValTotal = 0
    index = 0
    while index < tData.length
      newVal = @get_value(tData[index].tag)
      #newVal = if index <= 3 then getRandomInt(35, 50) else getRandomInt(108, 116)
      #if index == 3 or index == 7
      #  newVal = Math.round(newValTotal / 3)
      #  newValTotal = 0
      #else
      #  newValTotal += newVal
      tData[index].data.push [
        dt
        newVal
      ]
      ++index
    tData

  #*********************************************************************************
  #***** NOTE: This is test function loadData(PLOT_TYPE) for the plot controls.  
  #*****       The onlything that should have to be modified is the data: clause
  #*****       of each tData.push.  The else clause of each should have the 
  #*****       constant test data replaced with a call to the live data returned 
  #*****       in the format of the test data declared above.  This call should 
  #*****       contain all the logged data for that point from midnight until the 
  #*****       current time.
  #*****
  #*********************************************************************************
  #*****  CSW: 20160213
  #*********************************************************************************
  loadData: (PLOT_TYPE)->
    tData = []

    switch PLOT_TYPE.ID
      when @RVAIN.ID
        tData.push
          label: 'Amps Phase A'
          tag: 'GPU.PM_INPUT_PHASEB_I'
          data: if @RVAIN.liveData then @rain1_live else @amps1  # <-  i.e. Change amps1 to GetLoggedData(gpu_pm_input_phasea_v);
          yaxis: 1
          color: '#cc00cc'
          points:
            symbol: 'diamond'
            fillColor: '#cc00cc'
            show: true
          lines: show: true
        tData.push
          label: 'Amps Phase B'
          tag: 'GPU.PM_INPUT_PHASEB_I'
          data: if @RVAIN.liveData then @rain2_live else @amps2
          yaxis: 1
          color: '#cc00ff'
          points:
            symbol: 'diamond'
            fillColor: '#cc00ff'
            show: true
          lines: show: true
        tData.push
          label: 'Amps Phase C'
          tag: 'GPU.PM_INPUT_PHASEC_I'
          data: if @RVAIN.liveData then @rain3_live else @amps3
          yaxis: 1
          color: '#9933ff'
          points:
            symbol: 'diamond'
            fillColor: '#9933ff'
            show: true
          lines: show: true
        tData.push
          label: 'Amps Phase Avg'
          tag: 'GPU.RAVINAVG'
          data: if @RVAIN.liveData then @rain4_live else @amps4
          yaxis: 1
          color: '#6600ff'
          points:
            symbol: 'triangle'
            fillColor: '#6600ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase A'
          tag: 'GPU.PM_INPUT_PHASEA_V'
          data: if @RVAIN.liveData then @rvin1_live else @volts1
          yaxis: 2
          color: '#66b3ff'
          points:
            symbol: 'cross'
            fillColor: '#66b3ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase B'
          tag: 'GPU.PM_INPUT_PHASEB_V'
          data: if @RVAIN.liveData then @rvin2_live else @volts2
          yaxis: 2
          color: '#3399ff'
          points:
            symbol: 'cross'
            fillColor: '#3399ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase C'
          tag: 'GPU.PM_INPUT_PHASEC_V'
          data: if @RVAIN.liveData then @rvin3_live else @volts3
          yaxis: 2
          color: '#0099ff'
          points:
            symbol: 'cross'
            fillColor: '#0099ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase Avg'
          tag: 'GPU.RVINAVG'
          data: if @RVAIN.liveData then @rvin4_live else @volts4
          yaxis: 2
          color: '#0066cc'
          points:
            symbol: 'square'
            fillColor: '#0066cc'
            show: true
          lines: show: true
      when @RVOUT.ID
        tData.push
          label: 'Volts Phase A'
          tag: 'GPU.PM_OUTPUT_PHASEA_V'
          data: if @RVOUT.liveData then @rvout1_live else @volts1
          yaxis: 2
          color: '#66b3ff'
          points:
            symbol: 'cross'
            fillColor: '#66b3ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase B'
          tag: 'GPU.PM_OUTPUT_PHASEB_V'
          data: if @RVOUT.liveData then @rvout2_live else @volts2
          yaxis: 2
          color: '#3399ff'
          points:
            symbol: 'cross'
            fillColor: '#3399ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase C'
          tag: 'GPU.PM_OUTPUT_PHASEC_V'
          data: if @RVOUT.liveData then @rvout3_live else @volts3
          yaxis: 2
          color: '#0099ff'
          points:
            symbol: 'cross'
            fillColor: '#0099ff'
            show: true
          lines: show: true
        tData.push
          label: 'Volts Phase Avg'
          tag: 'GPU.RVOUTAVG'
          data: if @RVOUT.liveData then @rvout4_live else @volts4
          yaxis: 2
          color: '#0066cc'
          points:
            symbol: 'square'
            fillColor: '#0066cc'
            show: true
          lines: show: true
      when @RAOUT.ID
        tData.push
          label: 'Amps Phase A'
          tag: 'GPU.PM_OUTPUT_PHASEA_I'
          data: if @RAOUT.liveData then @raout1_live else @amps1
          yaxis: 1
          color: '#cc00cc'
          points:
            symbol: 'diamond'
            fillColor: '#cc00cc'
            show: true
          lines: show: true
        tData.push
          label: 'Amps Phase B'
          tag: 'GPU.PM_OUTPUT_PHASEB_I'
          data: if @RAOUT.liveData then @raout2_live else @amps2
          yaxis: 1
          color: '#cc00ff'
          points:
            symbol: 'diamond'
            fillColor: '#cc00ff'
            show: true
          lines: show: true
        tData.push
          label: 'Amps Phase C'
          tag: 'GPU.PM_OUTPUT_PHASEC_I'
          data: if @RAOUT.liveData then @raout3_live else @amps3
          yaxis: 1
          color: '#9933ff'
          points:
            symbol: 'diamond'
            fillColor: '#9933ff'
            show: true
          lines: show: true
        tData.push
          label: 'Amps Phase Avg'
          tag: 'GPU.RAOUTAVG'
          data: if @RAOUT.liveData then @raout4_live else @amps4
          yaxis: 1
          color: '#6600ff'
          points:
            symbol: 'triangle'
            fillColor: '#6600ff'
            show: true
          lines: show: true
    tData

  fnUTC2Date: (d)->
    now = new Date
    localOffset = now.getTimezoneOffset() * 60000
    c = new Date(d + localOffset)
    c.toLocaleString()

  fnUTC: ()->
    now = new Date
    d = Date.UTC(now.getFullYear(), now.getMonth(), now.getDate(), now.getHours(), now.getMinutes(), now.getSeconds(), now.getMilliseconds())
    d

  # process data and update the view
  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])

    if $("#gauge_volts_out").find('svg').length == 0
      @g1 = new JustGage(
        id: 'gauge_volts_out'
        title: ' '
        label: 'Output Voltage'
        value: parseInt(@vals.gpu_rvoutavg)
        parseTime: false
        min: 0
        max: 150
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
          {
            color: '#000000'
            lo: 0
            hi: 2
          }
          {
            color: '#ff3333'
            lo: 3
            hi: 99
          }
          {
            color: '#ffcc66'
            lo: 100
            hi: 102
          }
          {
            color: '#00b300'
            lo: 103
            hi: 116
          }
          {
            color: '#ffcc66'
            lo: 117
            hi: 119
          }
          {
            color: '#ff3333'
            lo: 120
            hi: 150
          }
        ]
        counter: true
        )
    else
      rvout = parseInt(@vals.gpu_rvoutavg)
      @g1.refresh(rvout)

    if $("#gauge_amps_out").find('svg').length == 0
      @g2 = new JustGage(
        id: 'gauge_amps_out'
        title: ' '
        label: 'Output Amperage'
        value: parseFloat(@vals.gpu_raoutavg).toFixed(0)
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
          {
            color: '#000000'
            lo: 0
            hi: 1
          }
          {
            color: '#ff3333'
            lo: 2
            hi: 23
          }
          {
            color: '#ffcc66'
            lo: 24
            hi: 29
          }
          {
            color: '#00b300'
            lo: 30
            hi: 40
          }
          {
            color: '#ffcc66'
            lo: 41
            hi: 46
          }
          {
            color: '#ff3333'
            lo: 47
            hi: 70
          }
        ]
        counter: true
        )
    else
      raout = parseInt(@vals.gpu_raoutavg)
      @g2.refresh(raout)

    @update_plot(@RVAIN)
    @update_plot(@RVOUT)
    @update_plot(@RAOUT)
    return

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

  onDestroy: (arg1, arg2)->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.GpusummaryWidgetView = GpusummaryWidgetView
module.exports = GpusummaryWidgetView
