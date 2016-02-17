BaseModel = require('./_base')

# ----------------------------------

class Widget extends Backbone.Model
	defaults:
    #title:      null
    type:       "default"
    settings:
      layout:
        r:          1
        c:          1
        sx:         1
        sy:         1
    config:     true

  constructor: (config, opts)->
    super(config, opts)
    id = if config.id? then config.id else null
    id = if !id? && config.settings? && config.settings.id? then config.settings.id else id 
    settings = _.clone(@get('settings'))
    settings.id = id
    @set('settings',settings)
    @set('id', id)
    @set('name', "widget_#{@id}")
    @

  toJSON:(options)->
    j = super(options)
    delete j.id
    delete j._id
    j


# ----------------------------------

module.exports = Widget