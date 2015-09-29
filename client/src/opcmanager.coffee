
# ----------------------------------

class OPCManager
  @connections = {}
  @refs = {}

  @create: (conn, config)->
    c = new OPC(config)
    @connections[conn] = c
    c

  @get_conn: (conn)->
    @connections[conn]

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
      if added then c.init() else c.toggle_refresh(true)

  @add_ref: (conn)->
    c = @refs[conn]
    c = if c? then c+1 else 1
    if c >= 1
      @connections[conn].toggle_refresh(true)
    @refs[conn] = c
    c

  @rem_ref: (conn)->
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
        opc_addr = site.get("opc")
        abbrev = site.get("abbrev")
        OPCManager.create abbrev,
          token:'7e61b230-481d-4551-b24b-ba9046e3d8f2'
          interval:5000
          refresh_callback: (data)->
            OPCManager.notify abbrev, data
          serverURL : opc_addr
      
# ----------------------------------

module.exports = OPCManager
