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
    if @id? && !destroy
      @urlRoot = '/dashboards'
    else
      @urlRoot = "/users/#{App.session.id}/dashboards"
    @setUrl(@urlRoot)

  save:(attrs, options)->
    options || (options = {})
    options.blacklist = ["userId"]
    @pickUrl()
    attrs || (attrs = $.extend(true, {}, this.attributes))
    nums = []
    for k of attrs
      if !isNaN(k) then nums.push(k)
    for k in nums
      delete attrs[k]
    if (attrs.widgets?)
      for w in attrs.widgets
        if w.position? then delete w.position
    super(attrs, options)

  destroy: (options)->
    @pickUrl(true)
    super(options)

  fetch: (options)->
    @urlRoot = '/dashboards'
    @setUrl(@urlRoot)
    #@pickUrl(true)
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
