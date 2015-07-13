Marionette = require('marionette')
IopsLayout = require('./views/iops_layout')
LoginView = require('./views/login')
DashboardView = require('./views/dashboard')

# ----------------------------------

class IopsController extends Marionette.Controller
  initialize: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here
    
  home: ()->
    v = new DashboardView()
    App.layout.center_region.show(v)

  login: ()->
    v = new LoginView()
    App.layout.center_region.show(v)

# ----------------------------------

module.exports = IopsController
