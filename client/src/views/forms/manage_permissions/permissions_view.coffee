Marionette = require('marionette')
PermissionView = require('./permission_view')

# ----------------------------------

class PermissionsView extends Marionette.CompositeView
  template: "forms/manage_permissions/permissions"
  childViewContainer: '#permissions_list'
  childView: PermissionView

  events:
    'click #add_claim' : 'add_claim'

  add_claim: ()->
    for c in @collection.models
      if !c.id? || c.id == 0 then return false
    @collection.add {name: '', description: ''}, {at:0}

# ----------------------------------

module.exports = PermissionsView
