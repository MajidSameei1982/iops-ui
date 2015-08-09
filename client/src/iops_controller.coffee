Marionette = require('marionette')
LoginView = require('./views/login_view')
User = require('./models/user')
ProfileView = require('./views/forms/profile_view')
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
    
  home: ()->
    return @ if !App.router.onRoute('home', '', null)

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

    @dashboard(dashes.models[0])

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
    dl = App.layout.center_region.currentView
    dl.show_content
      title: 'Your Profile'
      subtitle: "Edit your user account profile below"
      view: new ProfileView
        model : new User(App.current_user)
    App.vent.trigger "show:dashboard"
    @

  dashboard: (dash)->
    return @ if !dash?

    dl = App.layout.center_region.currentView
    dl.show_widgets(dash)
    App.vent.trigger "show:dashboard", dash
    @

# ----------------------------------

module.exports = IopsController
