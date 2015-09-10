Marionette = require('marionette')
BaselineApp = require('./common/baseline_app')
Extensions = require('./common/extensions')
IopsController = require('./iops_controller')
Router = require('./router')
IopsLayout = require('./views/iops_layout')
SessionModel = require('./models/session')
AccountCollection = require('./models/account_collection')
ClaimCollection = require('./models/claim_collection')
AdminLTE_lib = require('./common/adminlte_lib')
UIUtils = require('./common/uiutils')

# ----------------------------------

window.IOPS = do()->
  return window.App if window.App?

  App = window.App = new BaselineApp()
  App.AdminLTE_lib = AdminLTE_lib
  
  Object.defineProperty App, 'current_user',
    get: ()->
      if App.session? and App.session.user? then App.session.user else null

  App.on "before:start", (options)->
    @log('Starting')
    SessionModel.restore()
    @layout = new IopsLayout()
    @uiutils = UIUtils

    # setup dummy AccountCollection
    App.accounts = new AccountCollection()
    # App.accounts = new AccountCollection [
    #   id: 1
    #   name: 'AccountABC'
    #   isActive: true
    #   sites: [{id:1, name:'John F. Kennedy International Airport', abbrev: 'JFK', shortName: "JFK International"}]
    # ,  
    #   id: 2
    #   name: 'XYZCorp'
    #   isActive: false
    # ]
    App.claims = new ClaimCollection [
      id: 1
      name: 'can_admin_users'
      description: 'Can add and modify Users'
    ,  
      id: 2
      name: 'can_admin_accounts'
      description: 'Can add and modify Accounts and associated Sites'
    ,
      id: 3
      name: 'can_admin_permissions'
      description: 'Can add and modify Groups and Permissions'
    ]

  App.on 'start', (options)->
    @log('Started')
    if (Backbone.history) 
      @controller = new IopsController()
      @router = new Router
        controller: @controller
      @log('Backbone.history starting')
      Backbone.history.start()


    # setup app clock
    dtfn = ()->
      App.time = new Date()
      App.vent.trigger 'app:clock', App.time
      App.time

    App.clock = setInterval(dtfn, 5000)
    dtfn()

    # new up and views and render for base app here...
    @log('Done starting and running!')

  App




