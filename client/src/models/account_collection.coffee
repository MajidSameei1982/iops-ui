BaseCollection = require('./_base_collection')
Account = require('./account')

# ----------------------------------

class AccountCollection extends BaseCollection
	service: 'accounts'
	url: '/accounts'
	model: Account

# ----------------------------------

module.exports = AccountCollection
