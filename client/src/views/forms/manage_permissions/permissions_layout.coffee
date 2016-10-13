Marionette = require('marionette')
PermissionsTopView = require('./permissions_top_view')
RolesTopView = require('./roles_top_view')
UsersLayout = require('./users_layout')

# ----------------------------------

class PermissionsLayout extends Marionette.LayoutView
  template: "forms/manage_permissions/layout"
  regions:
    users_region        : '#users_region'
    roles_region        : '#roles_region'
    permissions_region  : '#permissions_region'

  show_tab: (tab)->
    @permissions_region.empty()
    @roles_region.empty()
    @users_region.empty()

    @$(@regions.permissions_region).hide()
    @$(@regions.roles_region).hide()
    @$(@regions.users_region).hide()
    switch tab
      when 'permissions'
        @pv = new PermissionsTopView
        @permissions_region.show(@pv)
        @$(@regions.permissions_region).show()
      when 'roles'
        @rv = new RolesTopView
        @roles_region.show(@rv)
        @$(@regions.roles_region).show()
      when 'users'
        @uv = new UsersLayout()
        @users_region.show(@uv)
        @$(@regions.users_region).show()

  onShow: ()->
    if !App.session.is_global_admin()
      @$("li.roles").hide()
      @$("li.permissions").hide()
    @$('a[data-toggle="tab"]').on 'shown.bs.tab', (e)=>
      tab = e.target.innerText.toLowerCase()
      @show_tab(tab)
    @show_tab('users')

    
# ----------------------------------

module.exports = PermissionsLayout
