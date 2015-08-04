BaseModel = require('./_base')

# ----------------------------------

class User extends BaseModel
	service: 'accounts'
	urlRoot: '/user'

# ----------------------------------

module.exports = User
