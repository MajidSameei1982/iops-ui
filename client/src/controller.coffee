Marionette = require('marionette')
ContactsView = require('./views/contacts')
ContactDetailsView = require('./views/contact_details')
AddContactView = require('./views/add')

module.exports = Controller = Marionette.Controller.extend
  initialize: ()->
    App.log('Controller: Initializing')
    App.views.contactsView = new ContactsView
      collection: App.data.contacts

  home: ()->
    App.log('Controller: "Home" route hit.')
    view = App.views.contactsView
    @renderView(view)
    App.router.navigate('#')

  details: (id)->
    App.log('Controller: "Contact Details" route hit.')
    view = new ContactDetailsView
      model: App.data.contacts.get(id)
    @renderView(view)
    App.router.navigate('details/' + id)

  add: ()->
    App.log( 'Controller: "Add Contact" route hit.')
    view = new AddContactView()
    @renderView(view)
    App.router.navigate('add')

  renderView: (view)->
    @destroyCurrentView(view)
    App.log( 'Controller: Rendering new view.')
    $('#js-boilerplate-app').html(view.render().el)

  destroyCurrentView: (view)->
    if (!_.isUndefined(App.views.currentView))
      App.log( 'Controller: Destroying existing view.')
      App.views.currentView.close()
    App.views.currentView = view
