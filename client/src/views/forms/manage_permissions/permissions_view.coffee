Marionette = require('marionette')
PermissionView = require('./permission_view')

# ----------------------------------

class PermissionsView extends Marionette.CompositeView
  template: "forms/manage_permissions/permissions"
  childViewContainer: '#permissions_list'
  childView: PermissionView
  viewComparator: 'name'

  events:
    'click #add_claim' : 'add_claim'
    
  add_claim: ()->
    for c in @collection.models
      if !c.id? || c.id == 0 then return false
    claim = 
      name: ''
      description: ''
    if @siteId? && @siteId != 0 then claim.siteId = @siteId
    @collection.add claim, {at:0}

  onShow:()->
    if !@model.get('global') then @collection.site = @model
    window.foo = @collection

# ----------------------------------

module.exports = PermissionsView
