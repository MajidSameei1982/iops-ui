Marionette = require('marionette')
LoginView = require('./views/login_view')
User = require('./models/user')
ProfileView = require('./views/forms/profile_view')
Dashboard = require('./models/dashboard')
DashboardCollection = require('./models/dashboard_collection')
DashboardLayout = require('./views/dashboard/dashboard_layout')
DashboardContentView = require('./views/dashboard/content_view')

# ----------------------------------

class IopsController extends Object
  constructor: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here
    
  home: ()->
    # TODO: pull dashboards from current user and show first one
    dashes = new DashboardCollection()
    dash = new Dashboard
      id: 1
      title: "Sample Dashboard"
    dashes.add dash

    dl = new DashboardLayout
      collection: dashes
    App.layout.center_region.show(dl)

    @dashboard(dash)

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
    @

  dashboard: (dash)->
    return @ if !dash?

    dl = App.layout.center_region.currentView
    dl.show_widgets(dash)
    @

# ----------------------------------

module.exports = IopsController
