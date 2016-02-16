BaseModel = require('./_base')
WidgetCollection = require('./widget_collection')

# ----------------------------------

class Dashboard extends BaseModel
  #local: true
  service: 'accounts'
  urlRoot: '/dashboards'
  defaults:
    widgets: []
    name: ''

  pickUrl:(destroy)->
    if @isNew()
      @urlRoot = "/users/#{App.session.id}/dashboards"
    else
       @urlRoot = '/dashboards'
    @setUrl(@urlRoot)

  save:(attrs, options)->
    options || (options = {})
    options.blacklist = ["userId"]
    @pickUrl()
    super(attrs, options)

  destroy: (options)->
    @pickUrl(true)
    super(options)

  fetch: (options)->
    @pickUrl()
    super(options)

  constructor: (config)->
    # if config?
    #   config._id = if config._id? then config._id else Math.floor(Math.random() * 10000) + 1
    super(config)
    @widgets = new WidgetCollection(@get('widgets'))
    @widgets.on "update", ()=> @set_widgets()
    @widgets.on "change", ()=> @set_widgets()
    
  set_widgets: ()->
    @set("widgets", @widgets.toJSON())
    @save()
    #App.save_user()

# ----------------------------------

module.exports = Dashboard
