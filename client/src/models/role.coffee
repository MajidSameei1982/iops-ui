BaseModel = require('./_base')
ClaimCollection = require('./claim_collection')

# ----------------------------------

class Role extends BaseModel
  service: 'roles'
  urlRoot: '/roles'
  defaults:
    name:         null
    description:  null
    isActive:     true

  constructor: (data, opts)->
    super(data, opts)
    @claims = new ClaimCollection(@get('claims'))
    @claims.on "update", ()=>
      @attributes["claims"] = @claims.toJSON()
    
# ----------------------------------

module.exports = Role
