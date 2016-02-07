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
    options.blacklist = ["isActive", "dashboards"]
    super(attrs, options)

  persist: ()=>
    @attributes["dashboards"] = @dashboards.toJSON()

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

    true

# ----------------------------------

module.exports = User
