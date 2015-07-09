Marionette = require('marionette')

module.exports = ContactDetailsView = Marionette.ItemView.extend
  template: "contact_details"
  events:
    'click a.back': 'goBack'
    'click a.delete': 'deleteContact'
  goBack: (e)->
    e.preventDefault()
    App.controller.home()
  
  deleteContact: (e)->
    debugger
    e.preventDefault()
    console.log('Deleting contact')
    App.data.contacts.remove(@model)

    # this will actually send a DELETE to the server:
    # @model.destroy()

    App.controller.home()

