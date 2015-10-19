BaseModel = require('./_base')
ClaimCollection = require('./claim_collection')
RoleCollection = require('./role_collection')

# ----------------------------------

class Site extends BaseModel
	service: 'accounts'
	urlRoot: '/sites'
	defaults:
    name:				null
    isActive:		true
    shortName:	null
    abbrev:			null
    opc:        null

  constructor: (data, opts)->
    super(data, opts)
    @claims = new ClaimCollection(@get('claims'))
    @claims.on "update", ()=>
      @attributes["claims"] = @claims.toJSON()

    @roles = new RoleCollection(@get('roles'))
    @roles.on "update", ()=>
      @attributes["roles"] = @roles.toJSON()

# ----------------------------------

module.exports = Site
