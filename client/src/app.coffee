Marionette = require('marionette')
Extensions = require('./common/extensions')
Controller = require('./controller')
Router = require('./router')
ContactModel = require('./models/contact')
ContactsCollection = require('./models/contacts')

module.exports = window.DemoApp = ->
  start: ->
    DemoApp.core = new Mn.Application()

    DemoApp.core.on "before:start", (options)->
      DemoApp.core.vent.trigger('app:log', 'App: Starting')

      DemoApp.views = {}
      DemoApp.data = {}

      # load up some initial data:
      contacts = new ContactsCollection([])
      # contacts.fetch
      #   success: ()=>
      #     @data.contacts = contacts
      #     @core.vent.trigger('app:start')

      DemoApp.data.contacts = contacts
          
    DemoApp.core.on 'start', (options)->
      DemoApp.core.vent.trigger('app:log', 'App: Started')
      if (Backbone.history) 
        DemoApp.controller = new Controller()
        DemoApp.router = new Router
          controller: DemoApp.controller
        DemoApp.core.vent.trigger('app:log', 'App: Backbone.history starting')
        Backbone.history.start()

      # new up and views and render for base app here...
      DemoApp.core.vent.trigger('app:log', 'App: Done starting and running!')


    DemoApp.core.vent.bind 'app:log', (msg)->
      console.log(msg)

    DemoApp.core.start();

