Marionette = require('marionette')
UserView = require('./user_view')
UserCollection = require('../../../models/user_collection')

# ----------------------------------

class UsersView extends Marionette.CollectionView
  childView: UserView
  viewComparator: 'lastName'

# ----------------------------------

module.exports = UsersView
