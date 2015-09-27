Marionette = require('marionette')

# ----------------------------------

class WidgetView extends Marionette.ItemView
  template:		"widgets/widget"
  className: 'widget-outer box box-primary'
  ui:
    header: '.header'
    body: '.body'

  events:
    "click #show_settings" : "toggle_settings"
    "click #remove" : "remove_widget"

  remove_widget: (e)->
    if e?
      e.preventDefault()
      @model.collection.remove(@model)

  	
# ----------------------------------

module.exports = WidgetView
