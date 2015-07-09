Marionette = require('marionette')
ContactCollectionView = require('./views/contact_collection')
ContactAddView = require('./views/contact_add')

class ContactController extends Marionette.Controller
  initialize: ()->
    App.log('Initializing', 'Controller')
    App.views.contactsView = new ContactCollectionView
      collection: App.data.contacts

  home: ()->
    App.log('"Home" route hit.', 'Controller')
    view = App.views.contactsView
    @renderView(view)
    App.router.navigate('#')

  add: ()->
    App.log( '"Add Contact" route hit.', 'Controller')
    view = new ContactAddView()
    @renderView(view)
    App.router.navigate('add')

  renderView: (view)->
    @destroyCurrentView(view)
    App.log( 'Rendering new view.', 'Controller')
    $('#js-boilerplate-app').html(view.render().el)

  destroyCurrentView: (view)->
    if (!_.isUndefined(App.views.currentView))
      App.log( 'Destroying existing view.', 'Controller')
      App.views.currentView.close()
    App.views.currentView = view

module.exports = ContactController
