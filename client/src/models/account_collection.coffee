BaseCollection = require('./_base_collection')
Account = require('./account')

# ----------------------------------

class AccountCollection extends BaseCollection
	url: '/accounts'
	model: Account

# ----------------------------------

module.exports = AccountCollection
