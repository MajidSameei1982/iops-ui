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

  constructor: (config)->
    super(config)
    @settings_visible = false
    @

  toggle_settings: (e)->
    if e? then e.preventDefault()
    @settings = !@settings_visible
    @ui.iframe.toggle(!@settings_visible)
    @ui.settings.toggle(@settings_visible)

  remove_widget: (e)->
    if e?
      e.preventDefault()
      @model.collection.remove(@model)

  	
# ----------------------------------

module.exports = WidgetView
