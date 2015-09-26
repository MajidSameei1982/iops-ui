BaseModel = require('./_base')
DashboardCollection = require('./dashboard_collection')

# ----------------------------------

class User extends BaseModel
	service: 'accounts'
	urlRoot: '/user'
	defaults:
    email: 			null
    firstname: 	null
    lastname:		null
    phone1:			null
    phone2:			null
    claims:			[]
    dashboards: []

  constructor: (config)->
    super(config)
    @dashboards = new DashboardCollection(@get('dashboards'))
# ----------------------------------

module.exports = User
