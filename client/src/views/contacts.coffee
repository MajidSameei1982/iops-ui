Marionette = require('marionette')

itemView = Marionette.ItemView.extend
  template: "contact_small"
  initialize: ()->
    @listenTo(@model, 'change', @render)
  events:
    'click a.delete': 'deleteContact'
  deleteContact: (e)->
    e.preventDefault()
    console.log('Deleting contact')
    App.data.contacts.remove(@model)

    # this will actually send a DELETE to the server:
    # @model.destroy()

module.exports = CollectionView = Marionette.CollectionView.extend
  initialize: ()->
    @listenTo(@collection, 'change', @render)
  childView: itemView
