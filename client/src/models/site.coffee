BaseModel = require('./_base')
ClaimCollection = require('./claim_collection')
RoleCollection = require('./role_collection')

# ----------------------------------

class Site extends BaseModel
	service: 'accounts'
	urlRoot: '/sites'
	defaults:
    name:         null
    isActive:     true
    shortName:    null
    abbrev:       null
    url:          null
    refreshRate:  5

  persist: ()=>
    @attributes["claims"] = @claims.toJSON()
    @attributes["roles"] = @roles.toJSON()
    
  constructor: (data, opts)->
    super(data, opts)
    @claims = new ClaimCollection(@get('claims'))
    @claims.on "update", @persist
    @claims.on "change", @persist
      
    @roles = new RoleCollection(@get('roles'))
    @roles.on "update", @persist
    @roles.on "change", @persist

# ----------------------------------

module.exports = Site
