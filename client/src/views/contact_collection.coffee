Marionette = require('marionette')

class ContactItemView extends Marionette.ItemView
  template: "contact"
  initialize: ()->
    @listenTo(@model, 'change', @render)
  events:
    'click a.delete': 'deleteContact'
  deleteContact: (e)->
    e.preventDefault()
    App.log('Deleting contact', 'ContactItemView')
    App.data.contacts.remove(@model)

    # this will actually send a DELETE to the server:
    # @model.destroy()

class ContactCollectionView extends Marionette.CollectionView
  initialize: ()->
    @listenTo(@collection, 'change', @render)
  childView: ContactItemView

module.exports = ContactCollectionView

