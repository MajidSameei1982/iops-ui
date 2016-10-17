Marionette = require('marionette')
BaselineApp = require('./common/baseline_app')
Extensions = require('./common/extensions')
AppController = require('./app_controller')
Router = require('./router')
AppLayout = require('./views/app_layout')
Session = require('./models/session')
AdminLTE_lib = require('./common/adminlte_lib')
UIUtils = require('./common/uiutils')
OPCManager = require('./opcmanager')
AccountCollection = require('./models/account_collection')
SiteCollection = require('./models/site_collection')
ClaimCollection = require('./models/claim_collection')
RoleCollection = require('./models/role_collection')
UserCollection = require('./models/user_collection')
AppConfig = require('./common/appconfig')
TagConfig = require('./common/tagconfig')
# forces inclusion of core widget classes
require('./views/widgets/advanced_alarm_widget_view')
require('./views/widgets/airport_overview_widget_view')
require('./views/widgets/alarm_widget_view')
require('./views/widgets/pbb_widget_view')
require('./views/widgets/pbb_detail_widget_view')
require('./views/widgets/pbb_system_status_widget_view')
require('./views/widgets/pbb_level_detail_widget_view')
require('./views/widgets/pca_widget_view')
require('./views/widgets/url_widget_view')
require('./views/widgets/weather_widget_view')
require('./views/widgets/config_widget_view')
require('./views/widgets/gpu_widget_view')
require('./views/widgets/gpu_summary_widget_view')
require('./views/widgets/video_widget_view')
require('./views/widgets/pca_summary_widget_view')
require('./views/widgets/pca_discharge_widget_view')
require('./views/widgets/pbb_pca_gpu_basic_widget_view')
require('./views/widgets/pbb_pca_gpu_status_widget_view')
require('./views/widgets/asset_widget_view')
require('./views/widgets/report_widget_view')
require('./views/widgets/kpi_widget_view')

# ----------------------------------

# IE SUPPORT
String.prototype.endsWith = (suffix)->
  this.indexOf(suffix, this.length - suffix.length) != -1

# ----------------------------------

window.App = do()->
  return window.App if window.App?

  App = window.App = new BaselineApp()
  App.AdminLTE_lib = AdminLTE_lib
  
  
  App.config = AppConfig
  App.tagconfig = TagConfig
  App.loaded = false
  App.accounts_loaded = App.session_loaded = App.dash_loaded = App.roles_loaded = App.claims_loaded = false

  App.check_loaded = ()->
    return if App.loaded
    if App.accounts_loaded && App.session_loaded && App.dash_loaded && App.roles_loaded && App.claims_loaded
      App.loaded = true
      if (Backbone.history) 
        @log('Initializing OPCManager')
        App.opc = OPCManager
        App.opc.init(App)
        # make app available to UI
        $('#loading_cover').fadeOut(100, ()-> $(@).hide())
        # set up routing and controller

        @controller = new AppController()
        @router = new Router
          controller: @controller
        @log('Backbone.history starting')
        Backbone.history.start()

        if !App.session? then App.controller.logout()

  App.on "before:start", (options)->
    @log('Starting')
    $('#loading_cover').fadeTo(0,0.8)
    @layout = new AppLayout()
    @uiutils = UIUtils
    
    # refresh server data
    App.refresh_accounts ()=>
      Session.restore()
    App.refresh_roles()
    App.refresh_claims()

    # listen for changes on the user
    App.vent.on "user:update", ()->
      Session.save_session()

    # listen for changes on the app
    App.vent.on "app:update", ()->
      return null if !App.accounts?
      accounts = App.accounts.toJSON()
      for acc, idx in accounts
        aacc = App.accounts.models[idx]
        acc.sites = aacc.sites.toJSON()
      
    # setup app clock
    @log('Setting system clock')
    dtfn = ()->
      App.time = new Date()
      App.vent.trigger 'app:clock', App.time
      App.vent.trigger 'check:timeout'
      App.time

    App.clock = setInterval(dtfn, 5000)

    # check session_timeout to kick user
    App.vent.on 'check:timeout', App.check_session

  App.on 'start', (options)->
    @log('Started')
    App.check_loaded()

    # new up and views and render for base app here...
    @log('Done starting and running!')
  
  # check user session timestamp for auto purging sessions
  App.check_session = ()->
    sto = App.config.session_timeout
    return true if !App.session? || !sto? || sto <= 0
    timeout = false
    ts = App.store.get('user_ts')
    if !ts? 
      ts = new Date()
      App.store.set('user_ts', ts)
    else
      ts = new Date(ts)
    tsn = new Date()
    if ((tsn - ts)/1000) > (sto * 60)
      App.controller.logout()
      return false
    true

  App.refresh_accounts = (cb)->
    App.accounts = new AccountCollection()
    App.accounts.fetch
      success:((cb) =>
        (data, xhr)=>
          cnt = App.accounts.models.length
          completed = 0
          for acct in App.accounts.models
            acct.sites.fetch
              success:((cb, cnt, completed) =>
                (data, xhr)=>
                  completed++
                  if completed == cnt
                    App.accounts_loaded = true
                    App.check_loaded()
                    #App.vent.trigger "app:update"
                    if cb? then cb()
                )(cb, cnt, completed)
        )(cb)

  App.refresh_dashboards = ()->
    if !App.session? || !App.session.id?
      App.dash_loaded = true
      App.check_loaded()
      Session.restore()
      return
    App.dashboards = new DashboardCollection({userId:App.session.id})
    App.dashboards.fetch
      success: (data, status, xhr)=>
        App.dash_loaded = true
        App.check_loaded()

  App.refresh_roles = (cb)->
    App.roles = new RoleCollection()
    App.roles.fetch
      success: ((cb) =>
        (data, xhr)=>
          App.roles_loaded = true
          App.check_loaded()
          if cb? then cb()
        )(cb)

  App.refresh_claims = (cb)->
    App.claims = new ClaimCollection()
    App.claims.fetch
      success: ((cb) =>
        (data, xhr)=>
          App.claims_loaded = true
          App.check_loaded()
          if cb? then cb()
        )(cb)

  App.save_user = ()->
    App.vent.trigger("user:update")
    
  App.flush = ()->
    App.store.remove("user_ts")
    App.store.remove("session")
    App.session = null
    App.accounts = null
    App.roles = null
    App.claims = null
    App.router.navigate('login', {trigger:true})

  App




