Marionette = require('marionette')
LoginView = require('./views/login_view')
ReportsView = require('./views/reports_view')
User = require('./models/user')
Session = require('./models/session')
ProfileView = require('./views/forms/profile_view')
AccountsView = require('./views/forms/manage_accounts/accounts_view')
PermissionsLayout = require('./views/forms/manage_permissions/permissions_layout')
Dashboard = require('./models/dashboard')
DashboardCollection = require('./models/dashboard_collection')
DashboardLayout = require('./views/dashboard/dashboard_layout')
DashboardContentView = require('./views/dashboard/content_view')
WidgetCollection = require('./models/widget_collection')

# ----------------------------------

class AppController extends Object
  constructor: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here

  set_main_layout: ()->
    cv = App.layout.center_region.currentView
    return cv if cv? and cv instanceof DashboardLayout
    if !App.session?
      @logout() # fource logout in case we fall into here
      return null
    dl = new DashboardLayout
      collection: App.dashboards
    App.layout.center_region.show(dl)
    dl

  home: ()->
    App.log('route:home')
    return @ if !App.router.onRoute('home', '', null)
    dl = @set_main_layout()
    # default to first dashboard
    d = if dl? and dl.collection? and dl.collection.models.length > 0 then 1 else 0
    @dashboard(d)
    @

  reports: ()->
    App.log('route:reports')
    v = new ReportsView()
    App.layout.center_region.show(v)
    @

  flush: ()->
    App.flush()

  login: ()->
    App.log('route:login')
    v = new LoginView()
    App.layout.center_region.show(v)
    @

  logout: ()->
    App.log('route:logout')
    if App.session? then Session.clear()
    App.router.navigate('login', {trigger:true})
    @

  profile: ()->
    App.log('route:profile')
    dl = @set_main_layout()
    dl.show_content
      title: 'Your Profile'
      subtitle: "Edit your user account profile below"
      icon: "user"
      view: new ProfileView
        model : App.session
    App.vent.trigger "show:dashboard"
    @

  mgaccounts: ()->
    App.log('route:mgaccounts')
    if !App.session.check_role('admin')
      App.router.navigate('', {trigger:true})
      return
    dl = @set_main_layout()
    dl.show_content
      title: 'Manage Accounts'
      subtitle: "Manage account details and associated Sites"
      icon: "building-o"
      view: new AccountsView
        collection: App.accounts
    App.vent.trigger "show:dashboard"
    @

  mgpermissions: ()->
    App.log('route:mgpermissions')
    global_admin = App.session.is_global_admin()
    site_admin = false
    for s in App.accounts.models[0].sites.models
      site_admin = site_admin || App.session.is_site_admin(s.id)
    if !global_admin && !site_admin
      App.router.navigate('', {trigger:true})
      return
    dl = @set_main_layout()
    dl.show_content
      title: 'Manage Permissions'
      subtitle: "Manage Users, Roles, and Permissions applied to each"
      icon: "users"
      view: new PermissionsLayout()
    App.vent.trigger "show:dashboard"
    @

  dashboard: (id)->
    App.log('route:dashboard')
    debugger
    id = if id? then id else null
    show_dash = ()=>
      OPCManager.drop_connections() # force clean when switching
      dl = @set_main_layout()
      if dl.collection?
        first = dl.collection.first()
        if id?
          dash = dl.collection.where({_id:id})
          dash = if dash.length > 0 then dash[0] else null
      dash = if !dash? then first else dash
      did = if dash? then dash.id else null
      App.router.navigate("dashboard#{if did? then '/'+did else ''}", {trigger:false})
      if dash? 
        dl.show_widgets(dash)
      else
        dl.empty()
      App.current_dash = did
      App.vent.trigger "show:dashboard", did

    if !App.dashboards?
      Session.load_dashboards ()=>
        show_dash()
    else
      show_dash()
    @

# ----------------------------------

module.exports = AppController
