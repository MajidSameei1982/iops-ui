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
    opc:        null

# ----------------------------------

module.exports = Site
