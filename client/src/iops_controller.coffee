Marionette = require('marionette')
LoginView = require('./views/login_view')
User = require('./models/user')
ProfileView = require('./views/forms/profile_view')
ManageAccountsView = require('./views/forms/manage_accounts_view')
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

    # TODO: pull dashboards from current user and show first one
    dashes = new DashboardCollection()
    dashes.add new Dashboard
      id: 1
      title: "Sample Dashboard"
      widgets : [
        {id:1 ,sx: 1, sy: 1, r: 1, c: 1}
        {id:2 ,sx: 1, sy: 1, r: 2, c: 1}
        {id:3 ,sx: 1, sy: 1, r: 3, c: 1}
        {id:4 ,sx: 2, sy: 1, r: 1, c: 2}
        {id:5 ,sx: 2, sy: 2, r: 2, c: 2}
      ]

    dashes.add new Dashboard
      id: 2
      title: "Another Dashboard"
      widgets : [
        {id:1 ,sx: 1, sy: 1, r: 1, c: 2}
        {id:2 ,sx: 1, sy: 1, r: 2, c: 2}
        {id:3 ,sx: 1, sy: 1, r: 3, c: 2}
        {id:4 ,sx: 2, sy: 1, r: 2, c: 1}
        {id:5 ,sx: 2, sy: 2, r: 1, c: 1}
      ]

    dl = new DashboardLayout
      collection: dashes
    App.layout.center_region.show(dl)
    dl

  home: ()->
    return @ if !App.router.onRoute('home', '', null)
    dl = @set_main_layout()
    # default to first dashboard
    d = if dl? and dl.collection? and dl.collection.models.length > 0 then 1 else 0
    @dashboard(d)
    @

  login: ()->
    v = new LoginView()
    App.layout.center_region.show(v)
    @

  logout: ()->
    if App.session? then App.session.clear()
    App.session = null
    App.router.navigate('login', {trigger:true})
    @

  profile: ()->
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
    dl = @set_main_layout()
    dl.show_content
      title: 'Manage Accounts'
      subtitle: "Manage account details and associated Sites"
      icon: "building-o"
      view: new ManageAccountsView
        collection: App.accounts
    App.vent.trigger "show:dashboard"
    @

  mgusers: ()->
    # dl = @set_main_layout()
    # dl.show_content
    #   title: 'Manage Accounts'
    #   subtitle: "Manage accounts and Sites associated with each"
    #   view: new ManageAccountsView
    # App.vent.trigger "show:dashboard"
    @

  dashboard: (id)->
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
