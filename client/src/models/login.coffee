Backbone = require('backbone')

# ----------------------------------

class LoginModel extends Backbone.Model
  idAttribute: '_id'
  urlRoot: 'api/login'

# ----------------------------------

module.exports = LoginModel
