Marionette = require('marionette')

# ----------------------------------

class WidgetView extends Marionette.ItemView
  template:		"widgets/widget"
  className: 'widget-outer box box-primary'

  events:
    "click #show_settings" : "toggle_settings"
    "click #remove" : "remove_widget"

  tags: {}

  @layout:
    sx: 4
    sy: 5

  modelEvents:
    "change:settings" : "update"

  constructor: (config)->
    super(config)
    @settings_visible = false
    @

  toggle_settings: (e)->
    if e? then e.preventDefault()
    @settings_visible = !@settings_visible
    if @ui.display?
      @ui.display.toggle(!@settings_visible)
    else
      @$(".display").toggle(!@settings_visible)
    if @ui.settings?
      @ui.settings.toggle(@settings_visible)
    else
      @$(".settings").toggle(@settings_visible)
    @  

  remove_widget: (e)->
    if e?
      e.preventDefault()
      @model.collection.remove(@model)

  # placeholder to override - gets kicked off when widget is shown
  start: ()->
    if @update then @update()
    @
  	
# ----------------------------------

window.WidgetView = WidgetView
module.exports = WidgetView
