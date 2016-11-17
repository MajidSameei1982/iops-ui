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
  mark_bad_data: (tag, el, blank)->
    q = @data_q(tag)

    h = if !q then '***' else $(el).html()
    if blank? && blank
      h = ""
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

  # set initial site when widget is created
  check_init_site: ()->
    return null if @$('#site').length == 0
    settings = @model.get('settings')
    settings || settings = {}
    site = settings.site
    return null if site? && site != ''
    sv = @$('#site').val()
    if sv? && sv != ''
      @set_model()
    @

  # load tag descriptions once for labels
  set_descriptions: (force)=>
    tds = []
    tdLen = 0
    if !!@tagData?
      tdLen =  Object.keys(@tagData).length

    tlen = Object.keys(@tags).length + tdLen
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
            if /[*]/.test(idx.Label)
              v = idx.Label.replace "[*]", ""
            else
              if t.props? && t.props[0].val != ""
                v = t.props[0].val
              else
                v = idx.Label

            if @$("##{tt}_lbl").length > 0
              @$("##{tt}_lbl").html(v)
            else if @$("#dynamic_#{tt}_lbl").length > 0
              @$("#dynamic_#{tt}_lbl").html(v)

            @dcount += 1
            break      

  render_row: (tag, tv, fv, tc, fc, format)->
    dynamicTag = false
    elName = "#{tag}"
    if /dynamic_/.test(tag)
      dynamicTag = true
      tag = tag.replace 'dynamic_', ""

    v = @get_bool(@vals[tag])
    #console.log "#{tag} : #{v}"
    txt = if v then tv else fv
    if format?
      txt = format.replace '#{1}', "#{txt}".replace /^\s+|\s+$/g, ""
    el = @$("##{elName}").html(txt)
    if tc? then el.toggleClass(tc, v)
    if fc? then el.toggleClass(fc, !v)
    tagValue = null
    if @tags[tag]?
      tagValue = @tags[tag]
    else if @tagData[tag]?
      tagValue = @tagData[tag].Tag
    @mark_bad_data tagValue, el

  render_row_tzg: (tag, tv, fv, tc, fc, format)->
    dynamicTag = false
    elName = "#{tag}"
    if /dynamic_/.test(tag)
      dynamicTag = true
      tag = tag.replace 'dynamic_', ""

    parsedTagId = tag.split("_")
    gate = "Term#{parsedTagId[0]}.Zone#{parsedTagId[1]}.Gate#{parsedTagId[2]}."
    v = @get_bool(@vals[tag])
    #console.log "#{tag} : #{v}"
    txt = if v then tv else fv
    if format?
      txt = format.replace '#{1}', "#{txt}".replace /^\s+|\s+$/g, ""
    el = @$("##{elName}").html(txt)
    if tc? then el.toggleClass(tc, v)
    if fc? then el.toggleClass(fc, !v)
    tagValue = null
    if @tags[tag]?
      tagValue = gate + @tags[tag]
    else if @tagData[tag]?
      tagValue = gate + @tagData[tag].Tag
    @mark_bad_data tagValue, el, true

  render_tagvalue: (tag)->
    dynamicTag = false
    elName = "#{tag}"
    if /dynamic_/.test(tag)
      dynamicTag = true
      tag = tag.replace 'dynamic_', ""

    a = if (@vals[tag])? && (@vals[tag]) != '' then parseFloat(@vals[tag]).toFixed(2)  else ' --'
    el1 =  @$("##{elName}").html("#{a}")
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
    dynamicTag = false
    elName = "#{tag}"
    if /dynamic_/.test(tag)
      dynamicTag = true
      tag = tag.replace 'dynamic_', ""

    if @vals[tag]? && @vals[tag] != '' 
      set_value = if IsNumeric then parseFloat(@vals[tag]).toFixed(precision) else @vals[tag] 
    else
      set_value = ' -- ' 
    
    displayValue = "#{set_value}".replace /^\s+|\s+$/g, ""
    if format?
      displayValue = ''
      if format.search(/#{1}/) > -1
        displayValue = format.replace '#{1}', "#{set_value}".replace /^\s+|\s+$/g, ""
      else
        displayValue = "#{set_value} #{format}".replace /^\s+|\s+$/g, ""

    el = @$("##{elName}").html(displayValue)
    tagValue = null
    if @tags[tag]?
      tagValue = @tags[tag]
    else if @tagData[tag]?
      tagValue = @tagData[tag].Tag
    @mark_bad_data tagValue, el

  render_value_row_tzg: (tag, IsNumeric, precision, format)->
    ###********************************************************
    ** format: If no #{1} is found in string treat as suffix
    **         otherwise replace #{1} with the #{set_value} 
    ********************************************************###
    dynamicTag = false
    elName = "#{tag}"
    if /dynamic_/.test(tag)
      dynamicTag = true
      tag = tag.replace 'dynamic_', ""

    parsedTagId = tag.split("_")
    gate = "Term#{parsedTagId[0]}.Zone#{parsedTagId[1]}.Gate#{parsedTagId[2]}."
    if @vals[tag]? && @vals[tag] != '' 
      set_value = if IsNumeric then parseFloat(@vals[tag]).toFixed(precision) else @vals[tag] 
    else
      set_value = ' -- ' 
    
    displayValue = "#{set_value}".replace /^\s+|\s+$/g, ""
    if format?
      displayValue = ''
      if format.search(/#{1}/) > -1
        displayValue = format.replace '#{1}', "#{set_value}".replace /^\s+|\s+$/g, ""
      else
        displayValue = "#{set_value} #{format}".replace /^\s+|\s+$/g, ""

    el = @$("##{elName}").html(displayValue)
    tagValue = null
    if @tags[tag]?
      tagValue = gate + @tags[tag]
    else if @tagData[tag]?
      tagValue = gate + @tagData[tag].Tag
    @mark_bad_data tagValue, el

  create_dynamic_elements: (WidgetID, ClassID, Groups, Tags, Site_Code, Site)->
    
    # Load Tag configurations
    tagConfig = null
    tagConfig = new App.tagconfig ClassID, Groups, Tags, Site_Code, Site

    if(!Site.RetainDynamic?)
      $("li##{WidgetID} .#{ClassID} [id^='dynamic_']").remove()

    # Create tag elements
    for tag, tagData of tagConfig.TagData
      $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID}").toggleClass("no-show", false)
      if tagData.Element.Type?
        elType = tagData.Element.Type.toLowerCase()
        switch elType
          when 'tablerow'
            elType = 'td'
            if $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID} #{elType}[id*='dynamic_#{tag}']").length == 0
              $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID}").find("tbody:last").append("'<tr id='dynamic_#{tag}_row'><td class='lbl' id='dynamic_#{tag}_lbl'>&nbsp;</td><td id='dynamic_#{tag}' class='val'>Loading...</td></tr>'")
          else 
            elType = tagData.Element.Type.toLowerCase()
            if $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID} #{elType}[id*='dynamic_#{tag}']").length == 0
              $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID}").append("<#{elType} id='dynamic_#{tag}' class='{tagData.Element.Class}'>Loading...</#{elType}>")
      
      if tagData.Element.Class?.length > 0
        $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID} #{elType}[id*='dynamic_#{tag}']").removeClass()
        $("li##{WidgetID} .#{ClassID} #{tagData.Element.ParentID} #{elType}[id*='dynamic_#{tag}']").addClass(tagData.Element.Class)

    # Create graphics elements
    for img, imgData of tagConfig.Graphics
      elType = imgData.Element.Type.toLowerCase()
      if $("li##{WidgetID} .#{ClassID} #{imgData.Element.ParentID} #{elType}[id*='dynamic_#{img}']").length == 0
        $("li##{WidgetID} .#{ClassID} #{imgData.Element.ParentID}").append("<#{elType} id='dynamic_#{img}'></#{elType}>")

      if imgData.Element.Class?.length > 0
        $("li##{WidgetID} .#{ClassID} #{imgData.Element.ParentID} #{elType}[id*='dynamic_#{img}']").removeClass()
        $("li##{WidgetID} .#{ClassID} #{imgData.Element.ParentID} #{elType}[id*='dynamic_#{img}']").addClass(imgData.Element.Class)

    return tagConfig

  render_image: (Image)->
    ###********************************************************
    ** format: If no #{1} is found in string treat as suffix
    **         otherwise replace #{1} with the #{set_value} 
    ********************************************************###
    debugger

    img = Iamge[0]
    #vq = @data_q(@tagData.pca_discharge_temp.Tag)
    #@$("#gauge_volts_out_#{@model.id} .bad_data").toggle(!vq)
    #v = @vals.pca_discharge_temp
    #if vq && !isNaN(v) && v != ''
    #  @g1.refresh(parseInt(v))    

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
    return s

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

    @$("select#terminal").chosen
      disable_search:true
      width:'auto'
      #width:'50px'
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

    @$("select#zone").chosen
      disable_search:true
      width:'auto'
      #width:'50px'
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

    @$("select#gate").chosen
      disable_search:true
      width:'auto'
      #width:'50px'
    @

  # draw all selectors
  draw_selectors:(terminal, zone, gate)=>
    @draw_terminals(terminal)
    @draw_zones(zone)
    @draw_gates(gate)
    @$("select#site").chosen
      disable_search:true
      width:'auto'
      #width:'150px'
    @

# ----------------------------------

window.IOPSWidgetView = IOPSWidgetView
module.exports = IOPSWidgetView
