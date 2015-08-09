Marionette = require('marionette')

# ----------------------------------

class Router extends Marionette.AppRouter
  appRoutes:
    ''  		: 'home'
    'login' : 'login'
    'logout':	'logout'

  onRoute: (name, path, args)->
  	if (path != 'login' || path == 'logout') && (!App.session || !App.session.get('email')? || !App.current_user?)
  		App.router.navigate('login', {trigger:true})
  		return false
  	true

# ----------------------------------

module.exports = Router