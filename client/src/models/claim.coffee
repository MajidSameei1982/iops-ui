BaseModel = require('./_base')

# ----------------------------------

class Claim extends BaseModel
	service: 'accounts'
	urlRoot: '/claim'

# ----------------------------------

module.exports = Claim
