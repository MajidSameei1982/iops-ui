Marionette = require('marionette')
LoginView = require('./views/login')
DashboardLayout = require('./views/dashboard/layout')

# ----------------------------------

class IopsController extends Marionette.Controller
  initialize: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here
    
  home: ()->
    v = new DashboardLayout()
    App.layout.center_region.show(v)

  login: ()->
    v = new LoginView()
    App.layout.center_region.show(v)

  logout: ()->
    if App.session? then App.session.clear()
    App.session = null
    App.router.navigate('login', {trigger:true})

# ----------------------------------

module.exports = IopsController
