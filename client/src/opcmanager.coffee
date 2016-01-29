
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

  @get_site_code: (id)->
    site_code = null
    if App.accounts? && App.accounts.models.length > 0
      for acc in App.accounts.models
        if acc.sites? && acc.sites.models.length > 0
          for st in acc.sites.models
            if "#{st.id}" == "#{id}"
              return st.get('code')
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
      if added
        c.config.tags = []
        c.init()
      else 
        c.toggle_refresh(true)

  @add_alarm: (conn, binding)->
    c = @connections[conn]
    if c?
      c.toggle_refresh(false)
      exists = false 
      if !c.config.alarm_bindings? then c.config.alarm_bindings = []
      for ab in c.config.alarm_bindings
        if ab.alarmid == binding.alarmid
          exists = true
          ab = binding
      if !exists then c.config.alarm_bindings.push(binding)
      c.init()

  @add_ref: (conn)=>
    c = @refs[conn]
    c = if c? then c+1 else 1
    if c >= 1
      @connections[conn].toggle_refresh(true)
    @refs[conn] = c
    c

  @rem_ref: (conn)=>
    c = @refs[conn]
    c = if c? then c-1 else 0
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
        siteUrl = site.get("siteUrl")
        refreshRate = site.get("refreshRate")
        if !opc_rate? then opc_rate = 5
        opc_rate = parseInt(opc_rate) * 1000
        code = site.get("code")
        OPCManager.create code,
          token:'7e61b230-481d-4551-b24b-ba9046e3d8f2'
          #interval:5000
          max_tags_per_msg: 50
          max_callbacks: 10
          callback_timeout: 10000
          refresh_callback: (data)->
            OPCManager.notify @code, data
          serverURL : siteUrl
          interval: refreshRate
          auto_start : false
      
# ----------------------------------
window.OPCManager = OPCManager
module.exports = OPCManager
