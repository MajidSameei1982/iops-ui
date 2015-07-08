Marionette = require('marionette')

module.exports = AddView = Marionette.ItemView.extend
  template: "add"
  events:
    'click a.save-button': 'save'

  save: (e)->
    e.preventDefault()
    newContact =
      name:
        first: this.$el.find('#name_first').val()
        last: this.$el.find('#name_last').val()
      email: this.$el.find('#email').val()
      phone: this.$el.find('#phone').val()

    window.App.data.contacts.create(newContact)
    window.App.core.vent.trigger('app:log', 'Add View: Saved new contact!')
    window.App.controller.home()
