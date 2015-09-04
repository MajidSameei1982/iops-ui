BaseModel = require('./_base')

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

# ----------------------------------

module.exports = User
