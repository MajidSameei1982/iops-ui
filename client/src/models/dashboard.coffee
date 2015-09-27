BaseModel = require('./_base')
WidgetCollection = require('./widget_collection')

# ----------------------------------

class Dashboard extends BaseModel
  local: true
  defaults:
    widgets: []

  constructor: (config)->
    super(config)
    @widgets = new WidgetCollection(@get('widgets'))
    @widgets.on "update", ()=> @set_widgets()
    @widgets.on "change", ()=> @set_widgets()

  set_widgets: ()->
    @set("widgets", @widgets.toJSON())
    App.vent.trigger("user:update")

# ----------------------------------

module.exports = Dashboard
