
# ----------------------------------

class OPCManager
  @connections = {}
  @refs = {}

  @create: (conn, config)->
    c = new OPC(config)
    c.code = conn
    @connections[conn] = c
    c

  @get_conn: (conn)->
    @connections[conn]

  @drop_connections: ()->
    # clear out all tags for all connections
    for c of @connections
      @refs[c] = 0
      oc = @connections[c]
      oc.config.watch_tags = []
      oc.config.tags = []
      oc.init()
    true

  @get_site: (id)->
    if App.accounts? && App.accounts.models.length > 0
      for acc in App.accounts.models
        if acc.sites? && acc.sites.models.length > 0
          for st in acc.sites.models
            if "#{st.id}" == "#{id}" then return st
    null

  @get_site_code: (id)->
    site = @get_site(id)
    if site? then return site.get('code')
    null

  @add_tags: (conn, tags)->
    c = @connections[conn]
    if c?
      added = false
      c.toggle_refresh(false)
      for nt in tags
        exists = false
        if !c.config.watch_tags? then c.config.watch_tags = []
        for t in c.config.watch_tags
          if t == nt
            exists = true
            break
        if !exists
          c.config.watch_tags.push(nt)
          added = true
      r = @add_ref(conn)
      if added
        c.config.tags = []
        c.init()

      c.toggle_refresh(true)
      r

  @add_alarm: (conn, binding)->
    c = @connections[conn]
    if c?
      c.toggle_refresh(false)
      exists = false 
      if !c.config.alarm_bindings? then c.config.alarm_bindings = []
      for ab, index in c.config.alarm_bindings
        if ab.alarmid == binding.alarmid
          exists = true
          c.config.alarm_bindings[index] = binding
          break
      if !exists
        c.config.alarm_bindings.push(binding)
      c.init()
    @

  @rem_alarm: (conn, binding)->
    c = @connections[conn]
    if c?
      c.toggle_refresh(false)
      exists = false 
      idx = -1
      if !c.config.alarm_bindings? then c.config.alarm_bindings = []
      for ab, index in c.config.alarm_bindings
        if ab.alarmid == binding.alarmid
          exists = true
          idx = index
          break
      if idx != -1
        c.config.alarm_bindings.splice(idx,1)
        c.init()

  @add_trend: (conn, binding)->
    c = @connections[conn]
    if c?
      c.toggle_refresh(false)
      exists = false 
      if !c.config.trend_bindings? then c.config.trend_bindings = []
      for tb, index in c.config.trend_bindings
        if tb.chartid == binding.chartid
          exists = true
          c.config.trend_bindings[index] = binding
          break
      if !exists
        c.config.trend_bindings.push(binding)
      c.init()
    @

  @rem_trend: (conn, binding)->
    c = @connections[conn]
    if c?
      c.toggle_refresh(false)
      exists = false 
      idx = -1
      if !c.config.trend_bindings? then c.config.trend_bindings = []
      for tb, index in c.config.trend_bindings
        if tb.chartid == binding.chartid
          exists = true
          idx = index
          break
      if idx != -1
        c.config.trend_bindings.splice(idx,1)
        c.init()

  @add_ref: (conn)=>
    c = @refs[conn]
    c = if c? && c > 0 then c+1 else 1
    if c >= 1
      t = Object.keys(@connections[conn].tags).length
      callBacks = Math.ceil(t / @connections[conn].config.max_tags_per_msg) + 10 + (5 * @connections[conn].alarm_bindings.length)
      @connections[conn].config.max_callbacks = callBacks
      #@connections[conn].config.callback_timeout = Math.ceil(callBacks * 7500)
      @connections[conn].config.callback_timeout = Math.ceil(Math.sqrt(callBacks) * 7500)
      @connections[conn].init
      #@connections[conn].toggle_refresh(true)
      console.log "tags: " + t + " max_callbacks: " + @connections[conn].config.max_callbacks + " callback_timeout: " + @connections[conn].config.callback_timeout

    @refs[conn] = c
    c

  @rem_ref: (conn)=>
    return 0 if !conn?

    c = @refs[conn]
    c = if c? && c > 0 then c-1 else 0
    if c <= 0
      c = 0
      @connections[conn].toggle_refresh(false)

    @refs[conn] = c
    c

  @notify: (conn, data)->
    App.vent.trigger "opc:data:#{conn}", data

  @init: (app)->
    for account in app.accounts.models
      for site in account.sites.models
        siteUrl = site.get("serverUrl")
        refreshRate = site.get("refreshRate")
        if !refreshRate? then refreshRate = 5
        refreshRate = parseInt(refreshRate) * 1000
        code = site.get("code")
        OPCManager.create code,
          token:'7e61b230-481d-4551-b24b-ba9046e3d8f2'
          #interval:5000
          max_tags_per_msg: 50
          max_callbacks: 25
          callback_timeout: 10000
          refresh_callback: ((c)->
            (data)->
              OPCManager.notify c, data
            )(code)
          serverURL : siteUrl
          interval: refreshRate
          auto_start : false
      
# ----------------------------------
window.OPCManager = OPCManager
module.exports = OPCManager
