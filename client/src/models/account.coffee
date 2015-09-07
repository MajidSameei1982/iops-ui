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

	constructor: (data, opts) ->
		super(data, opts)
		@sites = new SiteCollection(@get('sites'))
		@sites.on "update", ()=>
			@attributes["sites"] = @sites.toJSON()

# ----------------------------------

module.exports = Account
