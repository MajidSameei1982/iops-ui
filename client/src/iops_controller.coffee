Marionette = require('marionette')
IopsLayout = require('./views/iops_layout')
LoginView = require('./views/login')
DashboardLayout = require('./views/dashboard/layout')

# ----------------------------------

class IopsController extends Marionette.Controller
  initialize: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here

  check_session: ()->
  	# TODO: check for valid user session
  	session = true
  	if !session
	  	App.router.navigate('login', {trigger:true})
  	session
    
  home: ()->
    return if !@check_session()
    v = new DashboardLayout()
    App.layout.center_region.show(v)

  login: ()->
    v = new LoginView()
    App.layout.center_region.show(v)

# ----------------------------------

module.exports = IopsController
