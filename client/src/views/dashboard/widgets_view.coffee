Marionette = require('marionette')

# ----------------------------------

class WidgetsView extends Marionette.ItemView
  template:		"dashboard/widgets"
  onDomRefresh: ()->
  	$(".gridster ul.container").gridster()
  	
# ----------------------------------

module.exports = WidgetsView
