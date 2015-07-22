Marionette = require('marionette')

# ----------------------------------

class DashboardSideView extends Marionette.ItemView
  template: "dashboard/side"
  tagName: "aside"
  className: "main-sidebar"

# ----------------------------------

module.exports = DashboardSideView

