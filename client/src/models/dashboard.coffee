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

# ----------------------------------

module.exports = Dashboard
