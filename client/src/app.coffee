Marionette = require('marionette')
BaselineApp = require('./common/baseline_app')
Extensions = require('./common/extensions')
ContactController = require('./contact_controller')
Router = require('./router')
ContactModel = require('./models/contact')
ContactCollection = require('./models/contact_collection')
ContactLayout = require('./views/contact_layout')

# ----------------------------------

window.Demo = do()->

  return window.App if window.App?

  App = window.App = new BaselineApp()

  App.on "before:start", (options)->
    @log('Starting')

    @views = {}
    @data = {}

    # load up some initial data:
    contacts = new ContactCollection([])
    # contacts.fetch
    #   success: ()=>
    #     @data.contacts = contacts
    #     @core.vent.trigger('app:start')

    @data.contacts = contacts

    @layout = new ContactLayout();

  App.on 'start', (options)->
    @log('Started')
    if (Backbone.history) 
      @controller = new ContactController()
      @router = new Router
        controller: @controller
      @log('Backbone.history starting')
      Backbone.history.start()


    # new up and views and render for base app here...
    @log('Done starting and running!')

  App




