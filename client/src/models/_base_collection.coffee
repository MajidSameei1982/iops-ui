AppConfig = require('../common/appconfig')
Backbone = require('backbone')

# ----------------------------------

class BaseCollection extends Backbone.Collection
  constructor: (opts) ->
  	super
  	url = if @service? then "#{AppConfig.api_baseurl}".replace('{service}', "#{@service}.") else "#{AppConfig.api_baseurl}"
  	if @url? then @url = "#{url}#{@url}" else url
  	@

# ----------------------------------

module.exports = BaseCollection
