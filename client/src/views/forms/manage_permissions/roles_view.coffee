Marionette = require('marionette')
RoleView = require('./role_view')

# ----------------------------------

class RolesView extends Marionette.CompositeView
  template: "forms/manage_permissions/roles"
  childViewContainer: '#roles_list'
  childView: RoleView

  events:
    'click #add_role' : 'add_role'

  add_role: ()->
    for c in @collection.models
      if !c.id? || c.id == 0 then return false
    @collection.add {name: '', description: ''}, {at:0}

# ----------------------------------

module.exports = RolesView
