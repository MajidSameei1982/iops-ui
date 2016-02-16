BaseModel = require('./_base')
DashboardCollection = require('./dashboard_collection')
ClaimCollection = require('./claim_collection')

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
    dashboards: []

  save:(attrs, options)->
    options || (options = {})
    options.blacklist = ["isActive"]
    @persist()
    super(attrs, options)

  persist: ()=>
    dashes = []
    for d in @dashboards.models
      dashes.push(d.id)
    @attributes["dashboards"] = dashes

  constructor: (config)->
    typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'
    super(config)
    @dashboards = new DashboardCollection(@get('dashboards'))
    @dashboards.on "update", @persist
    @dashboards.on "change", @persist
    c = @get('claims')
    c = if typeIsArray(c) then c else []
    @claims = new ClaimCollection(c)
    @claims.on "update", @persist
    @claims.on "change", @persist
    @

  check_claim: (claim, site)->
    s = if site? then OPCManager.get_site(site) else null
    sid = if s? then s.id else null

    for c in App.session.claims
      if c.get('name') == claim && ((site? && c.siteId? && sid == c.siteId) || (!site? && !c.siteId?))
        return true
    false

  check_role: (role, site)->
    # check all user roles against requested role
    false

# ----------------------------------

module.exports = User
