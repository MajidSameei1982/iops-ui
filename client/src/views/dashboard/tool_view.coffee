Marionette = require('marionette')

# ----------------------------------

class DashboardToolView extends Marionette.ItemView
  template:		"dashboard/tool"
  tagName:		"aside"
  className:	"control-sidebar control-sidebar-dark"
  ui:
  	accounts_link: "#manage_accounts"
  	users_link: "#manage_permissions"
  events: 
  	"click #manage_accounts" : "manage_accounts"
  	"click #manage_permissions" : "manage_permissions"

  manage_accounts: (e) ->
  	e.preventDefault()
  	App.router.navigate('mgaccounts', {trigger:true})
  manage_permissions: (e)->
  	e.preventDefault()
  	App.router.navigate('mgpermissions', {trigger:true})

  onShow: ()->
    $(@el).attr('tabindex', '-1')

# ----------------------------------

module.exports = DashboardToolView

