Marionette = require('marionette')
PermissionsTopView = require('./permissions_top_view')
RolesTopView = require('./roles_top_view')
UsersView = require('./users_view')

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
    switch tab
      when 'permissions'
        @pv = new PermissionsTopView
        @permissions_region.show(@pv)
      when 'roles'
        @rv = new RolesTopView
        @roles_region.show(@rv)
      when 'users'
        @uv = new UsersView
          collection: App.users
        @users_region.show(@uv)

  onShow: ()->
    @$('a[data-toggle="tab"]').on 'shown.bs.tab', (e)=>
      tab = e.target.innerText.toLowerCase()
      @show_tab(tab)

    @show_tab('permissions')

    
# ----------------------------------

module.exports = PermissionsLayout
