Marionette = require('marionette')
BaselineApp = require('./common/baseline_app')
Extensions = require('./common/extensions')
IopsController = require('./iops_controller')
Router = require('./router')
LoginModel = require('./models/login')
IopsLayout = require('./views/iops_layout')

# ----------------------------------

window.IOPS = do()->

  return window.App if window.App?

  App = window.App = new BaselineApp()

  App.on "before:start", (options)->
    @log('Starting')

    @views = {}
    @data = {}

    @layout = new IopsLayout();

  App.on 'start', (options)->
    @log('Started')
    if (Backbone.history) 
      @controller = new IopsController()
      @router = new Router
        controller: @controller
      @log('Backbone.history starting')
      Backbone.history.start()

      # force for now
      App.router.navigate('login', {trigger:true})

    # new up and views and render for base app here...
    @log('Done starting and running!')

  App




