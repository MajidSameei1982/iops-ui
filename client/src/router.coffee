Marionette = require('marionette')

# ----------------------------------

class Router extends Marionette.AppRouter
  appRoutes:
    ''  						  : 'home'
    'login' 				  : 'login'
    'logout'				  :	'logout'
    'profile'         : 'profile'
    'mgaccounts'      : 'mgaccounts'
    'mgpermissions'   : 'mgpermissions'
    'dashboard/:id'	  : 'dashboard'

  onRoute: (name, path, args)->
    # always allow login and logout paths
    return true if (path == 'login' || path == 'logout')

    # check for session on all others
    if !App.session || !App.session.get('email')? || !App.current_user?
      App.router.navigate('login', {trigger:true})
      return false
    true

# ----------------------------------

module.exports = Router