Marionette = require('marionette')
Extensions = require('./common/extensions')
Controller = require('./controller')
Router = require('./router')
ContactModel = require('./models/contact')
ContactsCollection = require('./models/contacts')

window.Demo = do()->

  return window.App if window.App?

  window.App = App = new Mn.Application()

  # simple logging via events
  App.vent.bind 'app:log', (msg)->
    console.log(msg)

  App.log = (msg) ->
    @vent.trigger("app:log", msg)

  # initialization
  App.on "before:start", (options)->
    @log('App: Starting')

    @views = {}
    @data = {}

    # load up some initial data:
    contacts = new ContactsCollection([])
    # contacts.fetch
    #   success: ()=>
    #     @data.contacts = contacts
    #     @core.vent.trigger('app:start')

    @data.contacts = contacts
        
  App.on 'start', (options)->
    @log('App: Started')
    if (Backbone.history) 
      @controller = new Controller()
      @router = new Router
        controller: @controller
      @log('App: Backbone.history starting')
      Backbone.history.start()

    # new up and views and render for base app here...
    @log('App: Done starting and running!')

  App




