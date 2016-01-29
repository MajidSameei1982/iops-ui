BaseCollection = require('./_base_collection')
Claim = require('./claim')

# ----------------------------------

class ClaimCollection extends BaseCollection
  service: 'accounts'
  url: '/sites/{site}/claims'
  model: Claim

  constructor: (config, opts)->
    if opts? && opts.site
      @url = @url.replace('{site}', opts.site)
    else
      @url = '/claims'
    super(config)

# ----------------------------------

module.exports = ClaimCollection
