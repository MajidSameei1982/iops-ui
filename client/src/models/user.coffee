BaseModel = require('./_base')
DashboardCollection = require('./dashboard_collection')
ClaimCollection = require('./claim_collection')
RoleCollection = require('./role_collection')

# ----------------------------------

class User extends BaseModel
  service: 'accounts'
  urlRoot: '/users'
  defaults:
    email:          null
    firstName:      null
    lastName:       null
    settings:       {}
    claims:            []
    # dashboards: []
    roles: []

  save:(attrs, options)->
    options || (options = {})
    options.blacklist = ["isActive", "passwordHash", "iss", "iat", "exp"]
    @persist()
    super(attrs, options)

  persist: ()=>
    # # dashes = []
    # # for d in @dashboards.models
    # #   dashes.push(d.id)
    # @attributes["dashboards"] = dashes
    roles = []
    for r in @roles.models
      roles.push(r.id)
    @attributes["roles"] = roles
    claims = []
    for c in @claims.models
      claims.push(c.id)
    @attributes["claims"] = claims
    @

  set_properties: ()->
    # dashboards = []
    # @dashboards = new DashboardCollection(@get('dashboards'))
    # @dashboards.on "update", @persist
    # @dashboards.on "change", @persist
    claims = []
    for c in @get('claims')
      claims.push {_id:c}
    @claims = new ClaimCollection(claims)
    @claims.on "update", @persist
    @claims.on "change", @persist
    roles = []
    for r in @get('roles')
      roles.push {_id:r}
    @roles = new RoleCollection(roles)
    @roles.on "update", @persist
    @roles.on "change", @persist

  constructor: (config)->
    #typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'
    super(config)
    @set_properties()
    @on "change:claims", @set_properties 
    @on "change:roles", @set_properties 
    @on "change:dashboards", @set_properties 
    @

  has_role: (roleid)->
    for r in @roles.models
      if r.id == roleid then return true
    false

  is_global_admin: ()->
    # check global admin
    for ar in App.roles.models
      if !ar.get("siteId") && ar.get("name") == "admin" && @has_role(ar.id)
        return true
        break
    false

  is_site_admin: (sid)->
    # check global admin
    if @is_global_admin() then return true
    for ar in App.roles.models
      tsid = ar.get("siteId")
      continue if !tsid? or tsid == ''
      if tsid==sid && ar.get("name") == "admin" && @has_role(ar.id)
        return true
        break
    false

  has_site: (sid)->
    for s in @sites()
      if s == sid then return true
    false
    
  sites: ()->
    sites = []
    for acc in App.accounts.models
      for s in acc.sites.models
        for ur in @roles.models
          for ar in App.roles.models
            if ar.id == ur.id
              sid = ar.get('siteId')
              if sid? && s.id == sid
                sites.push(s.id)
                break          
    sites

  # check widget roles against user's roles for access to widgets
  check_widget_roles:(sroles)->
    for r in sroles
      rp = r.split(':')
      type = rp[0]
      role = rp[1]
      app_role = null
      for ar in App.roles.models
        if ar.get('name') == role
          if (type == 'global' && !ar.get('siteId')?) || (type == 'site' && ar.get('siteId'))
            app_role = ar
            break
      if app_role
        for ur in @roles.models
          if ur.id == app_role.id
            return true
    false

  # check a specific claim against user's claims
  check_claim: (claim, site)->
    s = if site? then OPCManager.get_site(site) else null
    sid = if s? then s.id else null
    return false if !App.claims?
    for ac in App.claims.models
      if (claim == ac.get('name') || claim == ac.id) && (site == ac.get('siteId'))
        for uc in @claims.models
          if ac.id == uc.id then return true
        break
    false

  # check a specific role against user's roles
  check_role: (role, site)->
    s = if site? then OPCManager.get_site(site) else null
    sid = if s? then s.id else null
    return false if !App.roles?
    for ar in App.roles.models
      if (role == ar.get('name') || role == ar.id) && (site == ar.get('siteId'))
        for ur in @roles.models
          if ar.id == ur.id then return true
        break
    false

# ----------------------------------

module.exports = User
