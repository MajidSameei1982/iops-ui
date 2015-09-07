Marionette = require('marionette')

# ----------------------------------

class DashboardToolView extends Marionette.ItemView
  template:		"dashboard/tool"
  tagName:		"aside"
  className:	"control-sidebar control-sidebar-dark"
  ui:
  	accounts_link: "#manage_accounts"
  	users_link: "#manage_users"
  events: 
  	"click #manage_accounts" : "manage_accounts"
  	"click #manage_users" : "manage_users"

  manage_accounts: (e) ->
  	e.preventDefault()
  	App.router.navigate('mgaccounts', {trigger:true})
  manage_users: (e)->
  	e.preventDefault()
  	App.router.navigate('mgusers', {trigger:true})

# ----------------------------------

module.exports = DashboardToolView

