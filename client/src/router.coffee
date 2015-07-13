Marionette = require('marionette')

# ----------------------------------

class Router extends Marionette.AppRouter
  appRoutes:
    ''  		: 'home'
    'login' : 'login'

# ----------------------------------

module.exports = Router