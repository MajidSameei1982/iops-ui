Marionette = require('marionette')
LoginView = require('./views/login_view')
User = require('./models/user')
ProfileView = require('./views/forms/profile_view')
AccountsView = require('./views/forms/manage_accounts/accounts_view')
PermissionsLayout = require('./views/forms/manage_permissions/permissions_layout')
Dashboard = require('./models/dashboard')
DashboardCollection = require('./models/dashboard_collection')
DashboardLayout = require('./views/dashboard/dashboard_layout')
DashboardContentView = require('./views/dashboard/content_view')
WidgetCollection = require('./models/widget_collection')

# ----------------------------------

class IopsController extends Object
  constructor: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here

  set_main_layout: ()->
    cv = App.layout.center_region.currentView
    return cv if cv? and cv instanceof DashboardLayout

    dl = new DashboardLayout
      collection: App.current_user.dashboards
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

  flush: ()->
    App.flush()

  login: ()->
    App.log('route:login')
    v = new LoginView()
    App.layout.center_region.show(v)
    @

  logout: ()->
    App.log('route:logout')
    if App.session? then App.session.clear()
    App.session = null
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
        model : App.current_user
    App.vent.trigger "show:dashboard"
    @

  mgaccounts: ()->
    App.log('route:mgaccounts')
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
    return null if !id?
    id = parseInt(id)
    dl = @set_main_layout()
    dash = null
    for d in dl.collection.models
      if d.id == id
        dash = d
        break
    if dash?
      dl.show_widgets(dash)
      App.vent.trigger "show:dashboard", id
    @

# ----------------------------------

module.exports = IopsController
