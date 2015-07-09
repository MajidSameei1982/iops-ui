Marionette = require('marionette')

module.exports = AddView = Marionette.ItemView.extend
  template: "add"
  events:
    'click a.save-button': 'save'

  save: (e)->
    e.preventDefault()
    newContact =
      name: this.$el.find('#name').val()
      street: this.$el.find('#street').val()
      city: this.$el.find('#city').val()
      state: this.$el.find('#state').val()
      postal_code: this.$el.find('#postal_code').val()
      phone: this.$el.find('#phone').val()

    App.data.contacts.create(newContact)
    App.log( 'Add View: Saved new contact!')
    