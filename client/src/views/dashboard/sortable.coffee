Marionette = require('marionette')

# ----------------------------------

class SortableView extends Marionette.ItemView
  template:		"dashboard/sortable"
  onDomRefresh: ()->
  	$(".gridster ul.container").gridster()
  	
# ----------------------------------

module.exports = SortableView
