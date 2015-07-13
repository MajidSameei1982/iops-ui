Marionette = require('marionette')

# ----------------------------------

class DashboardView extends Marionette.ItemView
  template: "dashboard"

  onDomRefresh: () ->
  	# spin up AdminLTE layout
    $.AdminLTE.layout.activate()

# ----------------------------------

module.exports = DashboardView
    