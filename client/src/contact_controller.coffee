Marionette = require('marionette')
ContactCollectionView = require('./views/contact_collection')
ContactAddView = require('./views/contact_add')
ContactLayout = require('./views/contact_layout')

# ----------------------------------

class ContactController extends Marionette.Controller
  initialize: ()->
    App.log('Initializing', 'Controller')
    # add more controller initialization code here
    
  home: ()->
    App.log('"Home" route hit.', 'Controller')
    v = new ContactCollectionView
      collection: App.data.contacts
    App.layout.list_region.show(v)
    App.router.navigate('#')
    App.vent.bind 'contact:added', ()->
      App.layout.add_region.empty()

  add: ()->
    v = new ContactAddView()
    App.layout.add_region.show(v)
    
  # renderView: (view)->
  #   @destroyCurrentView(view)
  #   App.log( 'Rendering new view.', 'Controller')
  #   $('#js-boilerplate-app').html(view.render().el)

  # destroyCurrentView: (view)->
  #   if (!_.isUndefined(App.views.currentView))
  #     App.log( 'Destroying existing view.', 'Controller')
  #     App.views.currentView.close()
  #   App.views.currentView = view

# ----------------------------------

module.exports = ContactController
