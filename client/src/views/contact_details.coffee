Marionette = require('marionette')

module.exports = ContactDetailsView = Marionette.ItemView.extend
  template: "contact_details"
  events:
    'click a.back': 'goBack'
    'click a.delete': 'deleteContact'
  goBack: (e)->
    e.preventDefault()
    window.App.controller.home()
  
  deleteContact: (e)->
    e.preventDefault()
    console.log('Deleting contact')
    window.App.data.contacts.remove(@model)

    # this will actually send a DELETE to the server:
    @model.destroy()

    window.App.controller.home()

