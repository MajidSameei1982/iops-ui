BaseModel = require('./_base')

# ----------------------------------

class Accounts extends BaseModel
  idAttribute: '_id'
  urlRoot: '/accounts'

# ----------------------------------

module.exports = Accounts
