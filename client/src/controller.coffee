Marionette = require('marionette')
ContactsView = require('./views/contacts')
ContactDetailsView = require('./views/contact_details')
AddContactView = require('./views/add')

module.exports = Controller = Marionette.Controller.extend
  initialize: ()->
    App.core.vent.trigger('app:log', 'Controller: Initializing')
    window.App.views.contactsView = new ContactsView
      collection: window.App.data.contacts

  home: ()->
    App.core.vent.trigger('app:log', 'Controller: "Home" route hit.')
    view = window.App.views.contactsView
    @renderView(view)
    window.App.router.navigate('#')

  details: (id)->
    App.core.vent.trigger('app:log', 'Controller: "Contact Details" route hit.')
    view = new ContactDetailsView
      model: window.App.data.contacts.get(id)
    @renderView(view)
    window.App.router.navigate('details/' + id)

  add: ()->
    App.core.vent.trigger('app:log', 'Controller: "Add Contact" route hit.')
    view = new AddContactView()
    @renderView(view)
    window.App.router.navigate('add')

  renderView: (view)->
    @destroyCurrentView(view)
    App.core.vent.trigger('app:log', 'Controller: Rendering new view.')
    $('#js-boilerplate-app').html(view.render().el)

  destroyCurrentView: (view)->
    if (!_.isUndefined(window.App.views.currentView))
      App.core.vent.trigger('app:log', 'Controller: Destroying existing view.')
      window.App.views.currentView.close()
    window.App.views.currentView = view;
