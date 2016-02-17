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

  # convert string value to boolean
  get_bool: (v)=>
    if v? && v.toUpperCase() == "TRUE"
      return true
    else if v? && v.toUpperCase() == "FALSE"
      return false
    null

  # resolve tag path and get value
  get_value: (tag)=>
    return @opc.get_value("#{@prefix}#{tag}.Value")

  # get data quality and set view if bad
  mark_bad_data: (tag, el)->
    q = @data_q(tag)
    h = if !q then 'BAD DATA' else $(el).html()
    $(el).html(h).toggleClass("bad_data", !q)

  # get data quality of a widget's tag
  data_q: (tag)=>
    c = App.opc.connections[@site_code]
    t = c.tags["#{@prefix}#{tag}"]
    t.props.Value.quality

  # placeholder to override - gets kicked off when widget is shown
  start: ()->
    if @update then @update()
    @
  	
# ----------------------------------

window.WidgetView = WidgetView
module.exports = WidgetView
