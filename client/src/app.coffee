Marionette = require('marionette')
Extensions = require('./base/extensions')
Controller = require('./controller')
Router = require('./router')
ContactModel = require('./models/contact')
ContactsCollection = require('./collections/contacts')

module.exports = window.App = ->
  start: ->
    App.core = new Mn.Application()

    App.core.on "before:start", (options)->
      debugger
      App.core.vent.trigger('app:log', 'App: Starting')

      App.views = {}
      App.data = {}

      # load up some initial data:
      contacts = new ContactsCollection([])
      # contacts.fetch
      #   success: ()=>
      #     @data.contacts = contacts
      #     @core.vent.trigger('app:start')

      App.data.contacts = contacts
          
    App.core.on 'start', (options)->
      debugger
      App.core.vent.trigger('app:log', 'App: Started')
      if (Backbone.history) 
        App.controller = new Controller()
        App.router = new Router
          controller: App.controller
        App.core.vent.trigger('app:log', 'App: Backbone.history starting')
        Backbone.history.start()

      # new up and views and render for base app here...
      App.core.vent.trigger('app:log', 'App: Done starting and running!')


    App.core.vent.bind 'app:log', (msg)->
      console.log(msg)

    App.core.start();

