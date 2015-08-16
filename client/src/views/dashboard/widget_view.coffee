Marionette = require('marionette')

# ----------------------------------

class WidgetView extends Marionette.ItemView
  template:		"dashboard/widget"
  className: 'widget-outer box box-primary'
  ui:
    header: '.header'
    body: '.body'
  	
# ----------------------------------

module.exports = WidgetView
