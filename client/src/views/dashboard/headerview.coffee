Marionette = require('marionette')

# ----------------------------------

class DashboardHeaderView extends Marionette.ItemView
  template: "dashboard/header"
  tagName: "header"
  className: "main-header"

# ----------------------------------

module.exports = DashboardHeaderView
    