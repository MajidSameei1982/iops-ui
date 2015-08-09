BaseCollection = require('./_base_collection')
Claim = require('./claim')

# ----------------------------------

class ClaimCollection extends BaseCollection
	url: '/claims'
	model: Claim

# ----------------------------------

module.exports = ClaimCollection
