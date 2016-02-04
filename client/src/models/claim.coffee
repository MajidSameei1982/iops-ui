BaseModel = require('./_base')

# ----------------------------------

class Claim extends BaseModel
  service: 'accounts'
  defaults:
    name: ''
    description: ''

  constructor: (config, opts)->
    if config? && config.accountId?
      @urlRoot = "/sites/#{config.accountId}/claims"
    else
      @urlRoot = '/claims'
    super(config, opts)

# ----------------------------------

module.exports = Claim
