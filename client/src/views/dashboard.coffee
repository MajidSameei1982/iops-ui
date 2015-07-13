Marionette = require('marionette')

# ----------------------------------

class DashboardView extends Marionette.ItemView
  template: "dashboard"

  onShow: () ->
  	# spin up AdminLTE layout
    App.AdminLTE_lib.reset()

# ----------------------------------

module.exports = DashboardView
    