Marionette = require('marionette')
ContactsView = require('./views/contacts')
ContactDetailsView = require('./views/contact_details')
AddContactView = require('./views/add')

module.exports = Controller = Marionette.Controller.extend
  initialize: ()->
    DemoApp.core.vent.trigger('app:log', 'Controller: Initializing')
    DemoApp.views.contactsView = new ContactsView
      collection: DemoApp.data.contacts

  home: ()->
    DemoApp.core.vent.trigger('app:log', 'Controller: "Home" route hit.')
    view = DemoApp.views.contactsView
    @renderView(view)
    DemoApp.router.navigate('#')

  details: (id)->
    DemoApp.core.vent.trigger('app:log', 'Controller: "Contact Details" route hit.')
    view = new ContactDetailsView
      model: DemoApp.data.contacts.get(id)
    @renderView(view)
    DemoApp.router.navigate('details/' + id)

  add: ()->
    DemoApp.core.vent.trigger('app:log', 'Controller: "Add Contact" route hit.')
    view = new AddContactView()
    @renderView(view)
    DemoApp.router.navigate('add')

  renderView: (view)->
    @destroyCurrentView(view)
    DemoApp.core.vent.trigger('app:log', 'Controller: Rendering new view.')
    $('#js-boilerplate-app').html(view.render().el)

  destroyCurrentView: (view)->
    if (!_.isUndefined(DemoApp.views.currentView))
      DemoApp.core.vent.trigger('app:log', 'Controller: Destroying existing view.')
      DemoApp.views.currentView.close()
    DemoApp.views.currentView = view
