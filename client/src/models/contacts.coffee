Backbone = require('backbone')
ContactModel = require('./contact')

module.exports = ContactsCollection = Backbone.Collection.extend
  model:  ContactModel
  url: '/api/contacts'
