BaseModel = require('./_base')

# ----------------------------------

class Claim extends BaseModel
  service: 'accounts'
  urlRoot: '/claims'
  defaults:
    name: ''
    description: ''

# ----------------------------------

module.exports = Claim
