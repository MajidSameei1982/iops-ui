Backbone = require('backbone')
ContactModel = require('./contact')

# ----------------------------------

class ContactCollection extends Backbone.Collection
  model:  ContactModel
  url: '/api/contacts'

# ----------------------------------

module.exports = ContactCollection
