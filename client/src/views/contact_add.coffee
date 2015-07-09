Marionette = require('marionette')

# ----------------------------------

class ContactAddView extends Marionette.ItemView
  template: "contact_add"
  events:
    'click a#contact_save': 'save'
  ui:
    name:   "input#name"
    street: "input#street"
    city:   "input#city"
    state:  "input#state"
    zip:    "input#zip"
    phone:  "input#phone"

  save: (e)=>
    e.preventDefault()
    newContact =
      name: @ui.name.val()
      street: @ui.street.val()
      city: @ui.city.val()
      state: @ui.state.val()
      postal_code: @ui.zip.val()
      phone: @ui.phone.val()

    App.data.contacts.create(newContact)
    App.log( 'Saved new contact!', "AddView")
    App.vent.trigger('contact:added')

# ----------------------------------

module.exports = ContactAddView
    