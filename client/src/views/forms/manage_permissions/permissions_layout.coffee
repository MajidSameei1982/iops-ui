Marionette = require('marionette')
PermissionsTopView = require('./permissions_top_view')
RolesTopView = require('./roles_top_view')
#UsersView = require('./users_view')

# ----------------------------------

class PermissionsLayout extends Marionette.LayoutView
  template: "forms/manage_permissions/layout"
  regions:
    users_region        : '#users_region'
    roles_region        : '#roles_region'
    permissions_region  : '#permissions_region'

  onShow: ()->
    @pv = new PermissionsTopView
    @permissions_region.show(@pv)

    @rv = new RolesTopView
    @roles_region.show(@rv)

    # @uv = new UsersView
    #   collection: App.users
    # @users_region.show(@uv)

    
# ----------------------------------

module.exports = PermissionsLayout
