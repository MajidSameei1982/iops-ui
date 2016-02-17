BaseCollection = require('./_base_collection')
Role = require('./role')

# ----------------------------------

class RoleCollection extends BaseCollection
  service: 'accounts'
  url: '/sites/{site}/roles'
  model: Role

  constructor: (config, opts)->
    if opts? && opts.site
      @url = @url.replace('{site}', opts.site)
    else
      @url = '/roles'
    super(config)

# ----------------------------------

module.exports = RoleCollection
