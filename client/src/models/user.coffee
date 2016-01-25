BaseModel = require('./_base')
DashboardCollection = require('./dashboard_collection')

# ----------------------------------

class User extends BaseModel
	service: 'accounts'
	urlRoot: '/users'
	defaults:
    email: 			null
    firstName: 	    null
    lastName:		null
    settings:       {}
    #claims:			[]
    #roles_global: []
    dashboards: []

  save:(attrs, options)->
    options || (options = {})
    options.blacklist = ["isActive", "dashboards"]
    super(attrs, options)

  persist: ()=>
    @attributes["dashboards"] = @dashboards.toJSON()

  constructor: (config)->
    super(config)
    @dashboards = new DashboardCollection(@get('dashboards'))
    @dashboards.on "update", @persist
    @dashboards.on "change", @persist

# ----------------------------------

module.exports = User
