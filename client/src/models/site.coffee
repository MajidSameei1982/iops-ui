BaseModel = require('./_base')
ClaimCollection = require('./claim_collection')
RoleCollection = require('./role_collection')

# ----------------------------------

class Site extends BaseModel
	service: 'accounts'
	urlRoot: '/accounts/{acct}/sites'
	defaults:
    accountId:    null
    name:         null
    isActive:     true
    shortName:    null
    code:         null
    serverUrl:    null
    refreshRate:  5
    settings:
      cloud: false

  save:(attrs, options)->
    options || (options = {})
    options.blacklist = ["isActive"]
    super(attrs, options)

  persist: ()=>
    @attributes["claims"] = @claims.toJSON()
    @attributes["roles"] = @roles.toJSON()
    
  constructor: (config, opts)->
    if config? && config.accountId
      @urlRoot = @urlRoot.replace('{acct}', config.accountId)
    super(config, opts)
    @claims = new ClaimCollection(@get('claims'))
    @claims.on "update", @persist
    @claims.on "change", @persist
      
    @roles = new RoleCollection(@get('roles'))
    @roles.on "update", @persist
    @roles.on "change", @persist

# ----------------------------------

module.exports = Site
