Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PcadischargeWidgetView extends IOPSWidgetView
  template:   "widgets/pca_discharge_widget"
  className: 'widget-outer box box-primary pcad_widget'
  ui:
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    docked:         'i#docked'
    alarms:         'i#alarms'
    warnings:       'i#warnings'
    site:           'select#site'
    gates:          '#gate_cks'

  @layout:
    sx: 8
    sy: 6

  tags:
    temp: 'PCA.TEMPDISCH.Value'
    on: 'PCA.PCASTATUS.Value'
    cooling: 'PCA.MODE_COOLING.Value'
    heating: 'PCA.MODE_COOLING.Value'
    cool_set: "PCA.SET_COOLINGPOINT.Value"
    heat_set: "PCA.SET_HEATINGPOINT.Value"
    # gpu_hookuptime: "GPU.HOOKUPTIME"
    # gpu_hookuptime_b: "GPU.HOOKUPTIME_BOOLEAN"
    # pbb_hookuptime: "PBB.HOOKUPTIME"
    # pbb_hookuptime_b: "PBB.HOOKUPTIME_BOOLEAN"
    # pca_hookuptime: "PCA.HOOKUPTIME"
    # pca_hookuptime_b: "PCA.HOOKUPTIME_BOOLEAN"
    # pca_mode_cooling: "PCA.MODE_COOLING"
    # pca_mode_cooling_timer: "PCA.MODE_COOLING_TIMER"
    # pca_mode_heating: "PCA.MODE_HEATING"
    # pca_mode_heating_timer: "PCA.MODE_HEATING_TIMER"
    # pca_mode_vent: "PCA.MODE_VENT"
    # # Ø  Setpoint.Cooling.Run (Fixed Setpoint Temperature from application)
    # pca_set_cooling: "PCA.SET_COOLINGPOINT"
    # # Ø  Setpoint.Heating.Run (Fixed Setpoint Temperature set from application)
    # pca_set_heating: "PCA.SET_HEATINGPOINT"
    # # Ø  Setpoint.Cooling.Run.Time (Fixed Time set from application)
    # pca_set_cooling_timer: "PCA.SET_COOLINGPOINT_TIMER"
    # # Ø  Setpoint.Heating.Run.Time (Fixed Time set from application)
    # pca_set_heating_timer: "PCA.SET_HEATINGPOINT_TIMER"
    # # Ø  Alarm/Timer.Cooling.Run (PCA.PCA_ON Time >= Setpoint.Cooling.Run.Time  and  Setpoint.Cooling.Run >= PCA.TEMPDISCH )
    # pca_alarm_cooling: "PCA.ALARM_COOLINGRUN"
    # # Ø  Alarm/Timer.Heating.Run (PCA.PCA_ON Time >= Setpoint.Heating.Run.Time  and  Setpoint.Heating.Run <= PCA.TEMPDISCH )
    # pca_alarm_heating: "PCA.ALARM_HEATINGRUN"

  max_gates: 6
    
  update: ()->
    @update_settings
      prefix: 'Airport.#{@site_code}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    if !@site_code? then return null
    @$('h3.box-title').html("PCA Discharge (#{@site_code})")
    s = @model.get("settings")

    @cktags = []
    if s? && !!s.site   
      return if !s.gates || s.gates.length == 0   

      for btg of @tags
        t = @tags[btg]
        for g in s.gates
          gp = g.split(':')
          gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
          @cktags.push "#{@prefix}#{gate}#{t}"

      App.opc.add_tags @site_code, @cktags

      @opc =  App.opc.connections[@site_code]
      # listen for updates
      @watch_updates(@site_code)

  # process data and update the view
  data_update: (data)=>
    s = @model.get("settings")
    return if !s? || !s.gates? || s.gates.length == 0

    # load values for all tags
    @vals = {}
    for tg in @cktags
      @vals[tg] = @opc.get_value(tg)

    cnt = 0
    data = []
    ticks = []
    hot = '#cc0000'   #heating color
    cool = '#0066cc'  #cooling color
    offc = '#cccccc'  #PCA off color
    bad_q = '#ffcc99' #bad quality data

    markings = []
    for g, idx in s.gates
      gp = g.split(':')
      term = gp[0]
      zone = gp[1]
      gate = gp[2]
      pre = "#{@prefix}Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
      temp = @vals["#{pre}#{@tags.temp}"]
      temp = if temp? && temp != '' then parseFloat(temp) else 0

      onv = @vals["#{pre}#{@tags.on}"]
      cooling = @vals["#{pre}#{@tags.cooling}"]
      heating = @vals["#{pre}#{@tags.heating}"]
      cool_set = @vals["#{pre}#{@tags.cool_set}"]
      heat_set = @vals["#{pre}#{@tags.heat_set}"]
      #console.log "#{gate}: c: #{cool_set} h: #{heat_set}"
      if cool_set? && cool_set != ''
        cv = parseFloat(cool_set) 
        markings.push { color: '#6666cc', lineWidth: 1, yaxis: { from: cv-0.25, to: cv } }
      if heat_set? && heat_set != ''
        hv = parseFloat(heat_set) 
        markings.push { color: '#cc6666', lineWidth: 1, yaxis: { from: hv-0.25, to: hv } }

      color = bad_q
      if onv? && onv.toUpperCase() == "FALSE"
        color = offc
      else
        if cooling? && cooling.toUpperCase() == "TRUE" then color = cool
        if heating? && heating.toUpperCase() == "TRUE" then color = hot
      
      ticks.push [idx, "Gate #{gate}"]
      data.push
        data: [[idx, temp]]
        color: color
      cnt++
    
    options =
      series:
        bars:
          show: true
      bars:
        align: "center"
        barWidth: 0.5
      xaxis:
        axisLabel: "Gates"
        axisLabelUseCanvas: true
        axisLabelFontSizePixels: 14
        axisLabelFontFamily: 'Verdana, Arial'
        axisLabelPadding: 10
        ticks: ticks
        autoscaleMargin: .10
      yaxis:
        axisLabel: "Temperature"
        axisLabelUseCanvas: true
        axisLabelFontSizePixels: 12
        axisLabelFontFamily: 'Verdana, Arial'
        axisLabelPadding: 3
      legend: 
        noColumns: 0
        labelBoxBorderColor: "#000000"
        position: "nw"
      grid: 
        hoverable: true
        borderWidth: 1
        markings: markings

    p = $.plot(@$("#chart"), data, options)

    # draw values above bars
    for series in [0..cnt-1]
      $.each p.getData()[series].data, (i, el)->
        o = p.pointOffset({x: el[0], y: el[1]})
        wu = p.getOptions().series.bars.barWidth
        w = wu * p.getXAxes()[0].scale
        $('<div class="data-point-label">' + el[1] + '°</div>').css
          position: 'absolute'
          left: o.left - w/2
          top: o.top - 20
          width: "#{w}px"
          textAlign: "center"
          fontWeight: "bold"
        .appendTo(p.getPlaceholder())
    
  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @gates = []
    @$('.gate_check').each (idx, el)=>
      if $(el).is(":checked") then @gates.push($(el).attr("value"))
    s.gates = @gates
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    if @settings_visible
      @ui.site.chosen()
      @draw_gate_checks()

  draw_gate_checks: ()->
    @ui.gates.empty()
    site = @$('#site').val()
    sh = ''
    s = OPCManager.get_site(site)
    if s?
      settings = s.get('settings') || {}
      terminals = settings.zones || {}
      prev_t = ''
      prev_z = ''
      ms = @model.get("settings")
      gates = if ms? && ms.gates then ms.gates else []
      for t of terminals
        if t != prev_t
          prev_t = t
          sh += "<div class='term_list'><b>Terminal: #{t}</b>"
        term = terminals[t]
        for z of term
          if prev_z != "#{t}:#{z}"
            prev_z = "#{t}:#{z}"
            sh += "<div class='zone_list'><b>Zone: #{z}</b>"
            sh += "  <div class='gate_list'>"
          zn = term[z]
          for g of zn
            checked = ''
            for gate in gates
              if gate == "#{t}:#{z}:#{g}" 
                checked = "checked='checked'"
                break
            sh += "<span class='gate_span'><input type='checkbox' class='gate_check' #{checked} value='#{t}:#{z}:#{g}'> #{g}</span>"
          sh += "</div></div>"
        sh += "</div>"
    @ui.gates.html(sh)
    @$(".gate_check").change ()=>
      @gates = []
      do_set = true
      @$('.gate_check').each (idx, el)=>
        if $(el).is(":checked")
          if @gates.length < @max_gates
            @gates.push($(el).attr("value"))
          else
            do_set = false
            $(el).prop("checked", false)
      if do_set then @set_model()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @$('#site').on 'change', ()=>
      @draw_gate_checks()
      @set_model()
    
    gates = settings.gates
    if !gates? || gates.length == 0
      @toggle_settings()

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code? then @watch_updates(@site_code)


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.PcadischargeWidgetView = PcadischargeWidgetView
module.exports = PcadischargeWidgetView
