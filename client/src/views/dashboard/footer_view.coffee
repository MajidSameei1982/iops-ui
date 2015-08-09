Marionette = require('marionette')

# ----------------------------------

class DashboardFooterView extends Marionette.ItemView
  template:		"dashboard/footer"
  tagName:		"footer"
  className:	"main-footer"
  	
# ----------------------------------

module.exports = DashboardFooterView
