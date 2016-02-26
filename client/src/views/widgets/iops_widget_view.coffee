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
    t.props.Value.quality;

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

    for t of @tags
      tg = @tags[t]
      tds.push "#{@prefix}#{tg}.Description"
    @opc.load_tags tds, (data)=>
      for t in data.tags
        for tt, idx of @tags
          ts = @tags[tt]
          if "#{@prefix}#{ts}" == t.name
            v = t.props[0].val
            @$("##{tt}_lbl").html(v)
            @dcount += 1
            break      

  render_row: (tag, tv, fv, tc, fc)->
    v = @get_bool(@vals[tag])
    #console.log "#{tag} : #{v}"
    txt = if v then tv else fv
    el = @$("##{tag}").html(txt)
    if tc? then el.toggleClass(tc, v)
    if fc? then el.toggleClass(fc, !v)
    @mark_bad_data @tags[tag], el

  render_value_row: (tag, IsNumeric, precision, suffix)->
    if @vals[tag]? && @vals[tag] != '' 
      set_value = if IsNumeric then parseFloat(@vals[tag]).toFixed(precision) else @vals[tag] 
    else
      set_value = ' -- ' 
    suffix = if suffix? then " #{suffix}" else ""
    el = @$("##{tag}").html("#{set_value}#{suffix}")
    @mark_bad_data @tags[tag], el
  
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
      cp = if @site_settings.cloud then cloud_prefix.replace('#{@site_code}', @site_code) else ''
      # @prefix = "#{cloud}Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}."
      @prefix = cp + prefix.replace('#{@site_code}', @site_code).replace('#{s.terminal}', s.terminal).replace('#{s.zone}', s.zone).replace('#{s.gate}', s.gate)

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
  
  # draw gate selector
  draw_gates:(gate)->
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

  # draw all selectors
  draw_selectors:(terminal, zone, gate)=>
    @draw_terminals(terminal)
    @draw_zones(zone)
    @draw_gates(gate)
    @$("select#site").chosen()
    @$("select#terminal").chosen()
    @$("select#zone").chosen()
    @$("select#gate").chosen()
    @
    
# ----------------------------------

window.IOPSWidgetView = IOPSWidgetView
module.exports = IOPSWidgetView
