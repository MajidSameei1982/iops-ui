BaseCollection = require('./_base_collection')
Site = require('./site')

# ----------------------------------

class SiteCollection extends BaseCollection
	service: 'accounts'
	url: '/sites'
	model: Site

# ----------------------------------

module.exports = SiteCollection
