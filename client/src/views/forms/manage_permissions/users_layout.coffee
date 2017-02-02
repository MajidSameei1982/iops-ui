Marionette = require('marionette')
UsersView = require('./users_view')
UserCollection = require('../../../models/user_collection')
RoleCollection = require('../../../models/role_collection')
User = require('../../../models/user')

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
        rg = new RegExp(search,'i')
        return child.get('firstName').match(rg) || child.get('lastName').match(rg)
    else
      @usersview.filter = null
    @usersview.render()

  add_user: ()->
    return if !@users? || !@users.models?
    for c in @users.models
      if !c.id? || c.id == 0 then return false
    u = new User()
    @users.add u, {at:0}
    u.collection = @users


  onShow: ()=>
    App.roles = new RoleCollection()
    App.roles.fetch
      success: ()=>
        @rebuild_view()

  rebuild_view: ()=>
    @$('.loading').show()
    @$('.preamble').hide()
    @tempusers = new UserCollection()
    @tempusers.fetch
      success: ()=>
        @$('.loading').hide()
        @$('.preamble').show()
        @users = new UserCollection()
        global_admin = App.session.is_global_admin()
        for u in @tempusers.models
          console.log u.sites()
          site_admin = u.sites().length == 1 && App.session.is_site_admin(u.sites()[0])
          # for s in u.sites()
          #   site_admin = site_admin || App.session.is_site_admin(s)
          if global_admin || site_admin
            @users.add(u)
        @usersview = new UsersView
          collection: @users
        @users_region.show(@usersview)
        
      error: ()=>
        App.log('error loading Users')

# ----------------------------------

module.exports = UsersLayout
