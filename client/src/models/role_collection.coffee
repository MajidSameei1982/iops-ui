BaseCollection = require('./_base_collection')
Role = require('./role')

# ----------------------------------

class RoleCollection extends BaseCollection
  service: 'roles'
  url: '/roles'
  model: Role

# ----------------------------------

module.exports = RoleCollection
