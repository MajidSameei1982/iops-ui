BaseCollection = require('./_base_collection')
Claim = require('./claim')

# ----------------------------------

class ClaimCollection extends BaseCollection
	service: 'accounts'
	url: '/claims'
	model: Claim

# ----------------------------------

module.exports = ClaimCollection
