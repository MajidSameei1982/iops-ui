Marionette = require('marionette')
UserView = require('./user_view')
UserCollection = require('../../../models/user_collection')

# ----------------------------------

class UsersView extends Marionette.CompositeView
  template: "forms/manage_permissions/users"
  childViewContainer: '#users_list'
  childView: UserView

  events:
    'click #add_user' : 'add_user'

  # initialize: ()->
  #   @flush_users

  # flush_users: ()->
  #   # make sure no temporary entry remains - remove when hooked up to a db
  #   nuc = new UserCollection()
  #   for u in App.users.models
  #     if u.id? && u.id > 0 then nuc.add(u)
  #   App.users = nuc
  #   App.store.set("users", App.users)

  add_user: ()->
    for c in @collection.models
      if !c.id? || c.id == 0 then return false
    @collection.add {}, {at:0}

  onShow: ()->
    @$('.loading').show()
    @$('.preamble').hide()
    @collection.fetch
      success: ()=>
        @$('.loading').hide()
        @$('.preamble').show()
      error: ()=>
        debugger
  # onDestroy: ()->
  #   @flush_users()

# ----------------------------------

module.exports = UsersView
