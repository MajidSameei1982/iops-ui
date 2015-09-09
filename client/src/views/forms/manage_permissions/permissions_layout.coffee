Marionette = require('marionette')
PermissionsView = require('./permissions_view')

# ----------------------------------

class PermissionsLayout extends Marionette.LayoutView
  template: "forms/manage_permissions/layout"
  regions:
    users_region        : '#users_region'
    roles_region        : '#roles_region'
    permissions_region  : '#permissions_region'

  onShow: ()->
    @pv = new PermissionsView
      collection: App.claims
    @permissions_region.show(@pv)

    
# ----------------------------------

module.exports = PermissionsLayout
