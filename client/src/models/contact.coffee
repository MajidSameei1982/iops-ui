Backbone = require('backbone')

# ----------------------------------

class ContactModel extends Backbone.Model
  idAttribute: '_id'
  urlRoot: 'api/contacts'

# ----------------------------------

module.exports = ContactModel
