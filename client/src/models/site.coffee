BaseModel = require('./_base')
ClaimCollection = require('./claim_collection')
RoleCollection = require('./role_collection')

# ----------------------------------

class Site extends BaseModel
  service: 'accounts'
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
    options.blacklist = ["accountId"]
    @pickUrl()
    super(attrs, options)

  destroy: (options)->
    @pickUrl(true)
    super(options)

  fetch: (options)->
    @pickUrl()
    super(options)
    
  persist: ()=>
    @attributes["claims"] = @claims.toJSON()
    @attributes["roles"] = @roles.toJSON()

  pickUrl:(destroy)->
    if !@isNew() && !destroy
      @urlRoot = '/sites'
    else
      @urlRoot = "/accounts/#{@accountId}/sites"
    @setUrl(@urlRoot)
    
  constructor: (config, opts)->
    if config? && config.accountId
      @accountId = config.accountId
      @setUrl(@accountId)
    super(config, opts)
    @claims = new ClaimCollection(@get('claims'))
    @claims.on "update", @persist
    @claims.on "change", @persist
      
    @roles = new RoleCollection(@get('roles'))
    @roles.on "update", @persist
    @roles.on "change", @persist


# ----------------------------------

module.exports = Site
