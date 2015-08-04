BaseModel = require('./_base')

# ----------------------------------

class Account extends BaseModel
	service: 'accounts'
	urlRoot: '/accounts'

# ----------------------------------

module.exports = Account
