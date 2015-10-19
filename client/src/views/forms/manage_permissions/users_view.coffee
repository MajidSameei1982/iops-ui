Marionette = require('marionette')
UserView = require('./role_view')

# ----------------------------------

class UsersView extends Marionette.CompositeView
  template: "forms/manage_permissions/users"
  childViewContainer: '#users_list'
  childView: UserView

  events:
    'click #add_user' : 'add_user'

  add_user: ()->
    for c in @collection.models
      if !c.id? || c.id == 0 then return false
    @collection.add {}, {at:0}

# ----------------------------------

module.exports = UsersView
