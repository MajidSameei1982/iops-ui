BaseModel = require('./_base')

# ----------------------------------

class Site extends BaseModel
	service: 'accounts'
	urlRoot: '/sites'
	defaults:
		name:				null
		isActive:		true
		shortName:	null
		abbrev:			null

# ----------------------------------

module.exports = Site
