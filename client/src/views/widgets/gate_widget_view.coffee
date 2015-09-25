Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')

# ----------------------------------

class GateWidgetView extends WidgetView
  template:   "widgets/gate_widget"
  className: 'widget-outer box box-primary'
  ui:
    header: '.header'
    body: '.body'
    
# ----------------------------------

module.exports = GateWidgetView
