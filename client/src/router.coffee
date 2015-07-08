Marionette = require('marionette')

module.exports = Router = Marionette.AppRouter.extend
  appRoutes:
    ''  : 'home',
    'details/:id' : 'details',
    'add' : 'add'
