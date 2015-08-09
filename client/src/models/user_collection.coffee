BaseCollection = require('./_base_collection')
User = require('./user')

# ----------------------------------

class UserCollection extends BaseCollection
	url: '/users'
	model: User

# ----------------------------------

module.exports = UserCollection
