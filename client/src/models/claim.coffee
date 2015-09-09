BaseModel = require('./_base')

# ----------------------------------

class Claim extends BaseModel
  service: 'accounts'
  urlRoot: '/claim'
  defaults:
    name: ''
    description: ''

# ----------------------------------

module.exports = Claim
