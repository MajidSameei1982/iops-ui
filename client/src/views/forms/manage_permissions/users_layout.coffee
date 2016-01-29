Marionette = require('marionette')
UsersView = require('./users_view')
UserCollection = require('../../../models/user_collection')

# ----------------------------------

class UsersLayout extends Marionette.LayoutView
  template: "forms/manage_permissions/users_layout"
  regions:
    users_region: '#users_region'

  ui:
    filter: 'input#filter'

  events:
    'click #add_user' : 'add_user'
    'keyup input#filter' : 'update_filter'

  update_filter: ()=>
    return if !@usersview?
    search = @ui.filter.val()
    if search? && search != ''
      @usersview.filter = (child, index, collection)->
        rg = new RegExp(search,'i');
        return child.get('firstName').match(rg) || child.get('lastName').match(rg)
    else
      @usersview.filter = null
    @usersview.render()

  add_user: ()->
    return if !@users? || !@users.models?
    for c in @users.models
      if !c.id? || c.id == 0 then return false
    @users.add {}, {at:0}

  onShow: ()->
    @$('.loading').show()
    @$('.preamble').hide()
    @users = new UserCollection()
    @users.fetch
      success: ()=>
        @$('.loading').hide()
        @$('.preamble').show()
        @usersview = new UsersView
          collection: @users
        @users_region.show(@usersview)
        
      error: ()=>
        App.log('error loading Users')

  # onDestroy: ()->
  #   @flush_users()

# ----------------------------------

module.exports = UsersLayout
