Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PcadischargeWidgetView extends IOPSWidgetView
  template:   "widgets/pca_discharge_widget"
  classID: 'pca_discharge_widget'
  className: 'widget-outer box box-primary pca_discharge_widget'
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

  tags = []

  tagData = []
  tagConfig = []   
 
  max_gates: 6
 
  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if !@IsUpdatingSettings && !@IsPageLoading
      return null

    @IsPageLoading = false
    @IsUpdatingSettings = false

    @update_settings
      prefix: 'Airport.#{@site_code}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    s = @model.get("settings")

    @cktags = []
    if s? && !!s.site   
      lbl = "#{@site_code}: PCA Discharge"
      @ui.wtitle.html(lbl)

      return if !s.gates || s.gates.length == 0   

      # stop listening for updates
      @kill_updates(@site_code)

      tags = []
      @tagData = []
      @tagConfig = []
      @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, s)
      @tagData = @tagConfig.TagData

      for tag, tagData of @tagData
        t = tagData.Tag
        for g in s.gates
          gp = g.split(':')
          gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
          @cktags.push "#{@prefix}#{gate}#{tagData.Tag}.Value"

      for btg of @tags
        t = @tags[btg]
        for g in s.gates
          gp = g.split(':')
          gate = "Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}.Value"
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
    timers = []
    max = 0
    for g, idx in s.gates
      gp = g.split(':')
      term = gp[0]
      zone = gp[1]
      gate = gp[2]
      pre = "#{@prefix}Term#{gp[0]}.Zone#{gp[1]}.Gate#{gp[2]}."
      temp = @vals["#{pre}#{@tagData.pca_discharge_temp.Tag}.Value"]
      temp = if temp? && temp != '' then parseFloat(temp) else 0
      max = if temp > max then temp else max

      onv = @vals["#{pre}#{@tagData.pca_status.Tag}.Value"]
      cooling = @vals["#{pre}#{@tagData.pca_mode_cooling.Tag}.Value"]
      heating = @vals["#{pre}#{@tagData.pca_mode_heating.Tag}.Value"]
      cool_set = @vals["#{pre}#{@tagData.pca_cooling_pt.Tag}.Value"]
      heat_set = @vals["#{pre}#{@tagData.pca_heating_pt.Tag}.Value"]
      alarm_heat = @vals["#{pre}#{@tagData.pca_alarm_heating_run.Tag}.Value"]
      alarm_cool = @vals["#{pre}#{@tagData.pca_alarm_cooling_run.Tag}.Value"]
      alarm_heat_timer = 0 #@vals["#{pre}#{@tagData.alarm_heat_timer.Tag}.Value"]
      alarm_cool_timer = 0 #@vals["#{pre}#{@tagData.alarm_cool_timer.Tag}.Value"]
      timer_heat = @vals["#{pre}#{@tagData.pca_heating_tm.Tag}.Value"]
      timer_cool = @vals["#{pre}#{@tagData.pca_cooling_tm.Tag}.Value"]
      timers.push [alarm_heat, timer_heat, alarm_cool, timer_cool,alarm_heat_timer,alarm_cool_timer]
      if cool_set? && cool_set != ''
        cv = parseFloat(cool_set) 
        markings.push { color: '#6666cc', lineWidth: 2, yaxis: { from: cv, to: cv } }
        if cv > max then max = cv
      if heat_set? && heat_set != ''
        hv = parseFloat(heat_set) 
        markings.push { color: '#cc6666', lineWidth: 2, yaxis: { from: hv, to: hv } }
        if hv > max then max = hv

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
        max: max + 5
      legend: 
        noColumns: 0
        labelBoxBorderColor: "#000000"
        position: "nw"
      grid: 
        hoverable: true
        borderWidth: 1
        markings: markings

    p = $.plot(@$("#chart"), data, options)

    # draw values above bars and timer on bars
    index = 0
    for series in [0..cnt-1]
      $.each p.getData()[series].data, (i, el)->
        o = p.pointOffset({x: el[0], y: el[1]})
        wu = p.getOptions().series.bars.barWidth
        w = wu * p.getXAxes()[0].scale
        $('<div class="data-point-label"><span style="background-color:rgba(255,255,255,0.8);padding:0px 5px;">' + el[1] + '°</span></div>').css
          position: 'absolute'
          left: o.left - w/2
          top: o.top - 20
          width: "#{w}px"
          textAlign: "center"
          fontWeight: "bold"
        .appendTo(p.getPlaceholder())

        timer = timers[index]
        ht = if timer[5]? && timer[5] != '0' then parseFloat(timer[5]) else 0
        ct = if timer[6]? && timer[6] != '0' then parseFloat(timer[6]) else 0
        if ht > 0 || ct > 0
          v = if ht>0 then ht else ct
          v = v.toFixed(2)
          showTimer = (timer[0]? && timer[0].toUpperCase() == "TRUE") || (timer[2]? && timer[2].toUpperCase() == "TRUE")
          blink = if showTimer then "blink" else ""
          if showTimer
            $("<div class='timer-label #{blink}' style='padding:5px;'>#{v} min.</div>").css
              position: 'absolute'
              left: o.left - w/2
              top: o.top + 20
              width: "#{w}px"
              textAlign: "center"
              fontWeight: "bold"
              backgroundColor: "#FC0"
              color: "#C00"
            .appendTo(p.getPlaceholder())
      index++
    
  set_model: ()=>
    @IsUpdatingSettings = true

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
