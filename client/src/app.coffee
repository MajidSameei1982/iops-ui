Marionette = require('marionette')
BaselineApp = require('./common/baseline_app')
Extensions = require('./common/extensions')
IopsController = require('./iops_controller')
Router = require('./router')
IopsLayout = require('./views/iops_layout')
SessionModel = require('./models/session')
AdminLTE_lib = require('./common/adminlte_lib')

# ----------------------------------

window.IOPS = do()->
  return window.App if window.App?

  App = window.App = new BaselineApp()
  App.AdminLTE_lib = AdminLTE_lib
  App.SessionModel = SessionModel
  
  App.on "before:start", (options)->
    @log('Starting')
    SessionModel.restore()
    @layout = new IopsLayout();

  App.on 'start', (options)->
    @log('Started')
    if (Backbone.history) 
      @controller = new IopsController()
      @router = new Router
        controller: @controller
      @log('Backbone.history starting')
      Backbone.history.start()

    # new up and views and render for base app here...
    @log('Done starting and running!')

  App




