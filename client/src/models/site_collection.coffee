BaseCollection = require('./_base_collection')
Site = require('./site')

# ----------------------------------

class SiteCollection extends BaseCollection
  service: 'accounts'
  url: '/accounts/{acct}/sites'
  model: Site

  constructor: (config, opts)->
    if opts? && opts.account
      @url = @url.replace('{acct}', opts.account)
    else
      @url = '/sites'
    super(config)

# ----------------------------------

module.exports = SiteCollection
