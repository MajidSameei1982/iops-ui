Marionette = require('marionette')

# ----------------------------------

class DashboardToolView extends Marionette.ItemView
  template:		"dashboard/tool"
  tagName:		"aside"
  className:	"control-sidebar control-sidebar-dark"

# ----------------------------------

module.exports = DashboardToolView

