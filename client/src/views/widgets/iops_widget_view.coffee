Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')

# ----------------------------------
class IOPSWidgetView extends WidgetView

  # convert string value to boolean
  get_bool: (v)=>
    if v? && v.toUpperCase() == "TRUE"
      return true
    else if v? && v.toUpperCase() == "FALSE"
      return false
    null

  # resolve tag path and get value
  get_value: (tag)=>
    return @opc.get_value("#{@prefix}#{tag}.Value")

  # get data quality and set view if bad
  mark_bad_data: (tag, el)->
    q = @data_q(tag)
    h = if !q then 'BAD DATA' else $(el).html()
    $(el).html(h).toggleClass("bad_data", !q)

  # get data quality of a widget's tag
  data_q: (tag)=>
    c = App.opc.connections[@site_code]
    t = c.tags["#{@prefix}#{tag}"]
    return if t? then t.props.Value.quality else false

  data_update: (data)=>
    # override me

  # listen for updates on a connection
  watch_updates: (conn)->
    console.log "watch : #{conn}"
    App.vent.on "opc:data:#{conn}", @data_update
    OPCManager.add_ref(conn)
  # kill listener
  kill_updates: (conn)->
    console.log "kill : #{conn}"
    App.vent.off "opc:data:#{conn}", @data_update
    OPCManager.rem_ref(conn)

  # load tag descriptions once for labels
  set_descriptions: (force)=>
    tds = []
    
    tlen = Object.keys(@tags).length
    return if !force && @dcount? && @dcount >= tlen

    @dcount = if force then 0 else @dcount
    if !@dcount? then @dcount = 0

    for t, d of @tags
      tg = @tags[t]
      tds.push "#{@prefix}#{d}.Description"

    for t, d of @tagData
      tds.push "#{@prefix}#{d.Tag}.Description"

    @opc.load_tags tds, (data)=>
      vals = []
      for t, d of @tags
        tg = @tags[t]
        vals[t] = {"Tag":"#{tg}", "Label":null} 

      for t, d of @tagData
        vals[t] = {"Tag":"#{d.Tag}", "Label":"#{d.Label}"} 

      for t in data.tags
        for tt, idx of vals
          if "#{@prefix}#{idx.Tag}" == t.name
            if t.props? && t.props[0].val != ""
              v = t.props[0].val
            else
              v = idx.Label
            @$("##{tt}_lbl").html(v)
            @dcount += 1
            break      

  render_row: (tag, tv, fv, tc, fc, format)->
    v = @get_bool(@vals[tag])
    #console.log "#{tag} : #{v}"
    txt = if v then tv else fv
    if format?
      txt = format.replace /#{1}/, "#{txt}".replace /^\s+|\s+$/g, ""
    el = @$("##{tag}").html(txt)
    if tc? then el.toggleClass(tc, v)
    if fc? then el.toggleClass(fc, !v)
    tagValue = null
    if @tags[tag]?
      tagValue = @tags[tag]
    else if @tagData[tag]?
      tagValue = @tagData[tag].Tag
    @mark_bad_data tagValue, el

  render_tagvalue: (tag)->
    a = if (@vals[tag])? && (@vals[tag]) != '' then parseFloat(@vals[tag]).toFixed(2)  else ' --'
    el1 =  @$("##{tag}").html("#{a}")
    tagValue = null
    if @tags[tag]?
      tagValue = @tags[tag]
    else if @tagData[tag]?
      tagValue = @tagData[tag].Tag
    @mark_bad_data tagValue, el1
    
  render_value_row: (tag, IsNumeric, precision, format)->
    ###********************************************************
    ** format: If no #{1} is found in string treat as suffix
    **         otherwise replace #{1} with the #{set_value} 
    ********************************************************###
    if @vals[tag]? && @vals[tag] != '' 
      set_value = if IsNumeric then parseFloat(@vals[tag]).toFixed(precision) else @vals[tag] 
    else
      set_value = ' -- ' 
    
    displayValue = "#{set_value}".replace /^\s+|\s+$/g, ""
    if format?
      displayValue = ''
      if format.search(/#{1}/) > -1
        displayValue = format.replace /#{1}/, "#{set_value}".replace /^\s+|\s+$/g, ""
      else
        displayValue = "#{set_value} #{format}".replace /^\s+|\s+$/g, ""

    el = @$("##{tag}").html(displayValue)
    tagValue = null
    if @tags[tag]?
      tagValue = @tags[tag]
    else if @tagData[tag]?
      tagValue = @tagData[tag].Tag
    @mark_bad_data tagValue, el
  
  # grab widget settings, update prefix, set up listener, etc.
  update_settings:({prefix, cloud_prefix})->
    s = @model.get("settings")
   
    if s? && !!s.site
      if @site_code? then @kill_updates(@site_code)
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')

      if !@site_code? then return null

      # build settings      
      @site_settings = @site.get('settings')
      @site_settings || @site_settings = {}
      # cloud = if settings.cloud then "RemoteSCADAHosting.Airport-#{@site_code}." else ''
      @cloud_prefix = if @site_settings.cloud then cloud_prefix.replace('#{@site_code}', @site_code) else ''
      # @prefix = "#{cloud}Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}."
      @prefix = @cloud_prefix + prefix.replace('#{@site_code}', @site_code).replace('#{s.terminal}', s.terminal).replace('#{s.zone}', s.zone).replace('#{s.gate}', s.gate)
    @
  
  refresh_values: ()->
    @vals = {}
    for t, d of @tags
      @vals[t] = @get_value(d) 

    for t, d of @tagData
      @vals[t] = @get_value(d.Tag) 
    @

  # draw terminal selector
  draw_terminals:(terminal)->
    site = @$('#site').val()
    @$('#terminal').off "change"
    @$('#terminal').remove()
    ts = $ @templateHelpers().terminalSelector
      id: 'terminal'
      label: 'Terminal'
      site: site
      terminal: terminal
    @$('#terminals').empty().append(ts)
    ts.on 'change', ()=>
      @draw_zones(null)
      @draw_gates(null)
      @set_model()
    @

  # draw zone selector
  draw_zones:(zone)->
    site = @$('#site').val()
    terminal = @$('#terminal').val()    
    @$('#zone').off "change"
    @$('#zone').remove()
    zs = $ @templateHelpers().zoneSelector
      id: 'zone'
      label: 'Zone'
      site: site
      terminal: terminal
      zone: zone
    @$('#zones').empty().append(zs)
    zs.on 'change', ()=>
      @draw_gates(null)
      @set_model()
    @
  
  # draw gate selector
  draw_gates:(gate, all)->
    site = @$('#site').val()
    terminal = @$('#terminal').val()
    zone = @$('#zone').val()
    @$('#gate').off "change"
    @$('#gate').remove()
    gs = $ @templateHelpers().gateSelector
      id: 'gate'
      label: 'Gate'
      site: site
      terminal: terminal
      zone: zone
      gate: gate

    @$('#gates').empty().append(gs)
    gs.on 'change', ()=>
      @set_model()
    @

  # draw all selectors
  draw_selectors:(terminal, zone, gate)=>
    @draw_terminals(terminal)
    @draw_zones(zone)
    @draw_gates(gate)
    @$("select#site").chosen
      disable_search:true
      width:'150px'
    @$("select#terminal").chosen
      disable_search:true
      width:'50px'
    @$("select#zone").chosen
      disable_search:true
      width:'50px'
    @$("select#gate").chosen
      disable_search:true
      width:'50px'
    @
    
# ----------------------------------

window.IOPSWidgetView = IOPSWidgetView
module.exports = IOPSWidgetView
