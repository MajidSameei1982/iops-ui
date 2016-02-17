BaseModel = require('./_base')
ClaimCollection = require('./claim_collection')

# ----------------------------------

class Role extends BaseModel
  service: 'accounts'
  urlRoot: '/roles'
  defaults:
    name:         null
    description:  null
    isActive:     true
    claims: []

  # persist: ()=>
  #   claims = if !@claims? || @cliams.models.length == 0 then [] else [] 
  #   @attributes["claims"] = claims
    
  #constructor: (data, opts)->
  #  super(data, opts)
  #  #@claims = new ClaimCollection(@get('claims'))
  #  #@claims.on "update", @persist
  #  #@claims.on "change", @persist
      
    
# ----------------------------------

module.exports = Role
