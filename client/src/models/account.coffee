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

	persist: ()=>
    @attributes["sites"] = @sites.toJSON()
          
	constructor: (data, opts) ->
		super(data, opts)
		@sites = new SiteCollection(@get('sites'))
		@sites.on "update", @persist
		@sites.on "change", @persist

# ----------------------------------

module.exports = Account
