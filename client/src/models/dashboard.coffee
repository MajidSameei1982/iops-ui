BaseModel = require('./_base')
WidgetCollection = require('./widget_collection')

# ----------------------------------

class Dashboard extends BaseModel
  local: true
  defaults:
    widgets: []
    title: ''

  constructor: (config)->
    if config?
      config._id = if config._id? then config._id else Math.floor(Math.random() * 10000) + 1
    super(config)
    @widgets = new WidgetCollection(@get('widgets'))
    @widgets.on "update", ()=> @set_widgets()
    @widgets.on "change", ()=> @set_widgets()
    
  set_widgets: ()->
    @set("widgets", @widgets.toJSON())
    App.save_user()

# ----------------------------------

module.exports = Dashboard
