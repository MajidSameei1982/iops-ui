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

  persist: ()=>
    @attributes["claims"] = @claims.toJSON()
    
  constructor: (data, opts)->
    super(data, opts)
    @claims = new ClaimCollection(@get('claims'))
    @claims.on "update", @persist
    @claims.on "change", @persist
      
    
# ----------------------------------

module.exports = Role
