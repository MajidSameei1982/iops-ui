Marionette = require('marionette')

# ----------------------------------

class Router extends Marionette.AppRouter
  appRoutes:
    ''  : 'home'
    #'add' : 'add'

# ----------------------------------

module.exports = Router