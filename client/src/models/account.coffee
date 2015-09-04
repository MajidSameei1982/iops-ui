BaseModel = require('./_base')
SiteCollection = require('./site_collection')

# ----------------------------------

class Account extends BaseModel
	service: 'accounts'
	urlRoot: '/accounts'
	defaults:
		name:			null
		isActive:	true
		sites:		[]

# ----------------------------------

module.exports = Account
