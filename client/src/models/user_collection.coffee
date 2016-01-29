BaseCollection = require('./_base_collection')
User = require('./user')

# ----------------------------------

class UserCollection extends BaseCollection
	service: 'accounts'
	url: '/users'
	model: User

# ----------------------------------

window.UserCollection = UserCollection
module.exports = UserCollection
