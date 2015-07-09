Marionette = require('marionette')
ContactAddView = require('./contact_add')

# ----------------------------------

class ContactLayout extends Marionette.LayoutView
  el: '#contact_layout'
  regions:
    add_region:   '#add_region'
    list_region:  '#list_region'
  events:
    'click #add_c' : 'add_contact'
  add_contact: (e)->
    e.preventDefault()
    v = new ContactAddView()
    App.layout.add_region.show(v)

# ----------------------------------

module.exports = ContactLayout