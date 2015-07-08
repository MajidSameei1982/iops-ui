Marionette = require('marionette')

itemView = Marionette.ItemView.extend
  template: "contact_small"
  initialize: ()->
    @listenTo(@model, 'change', @render)
  events:
    'click': 'showDetails'
  showDetails: ()->
    window.App.core.vent.trigger('app:log', 'Contacts View: showDetails hit.')
    window.App.controller.details(@model.id)

module.exports = CollectionView = Marionette.CollectionView.extend
  initialize: ()->
    @listenTo(@collection, 'change', @render)
  childView: itemView
