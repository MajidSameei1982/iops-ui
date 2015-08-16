AppConfig = require('../common/appconfig')
Backbone = require('backbone')

# ----------------------------------

class BaseModel extends Backbone.Model
  constructor: (opts) ->
  	super
  	if @local? and @local == true
  		url = ''
  	else
	  	url = if @service? then "#{AppConfig.api_baseurl}".replace('{service}', "#{@service}.") else "#{AppConfig.api_baseurl}"
	  	if @urlRoot? then @urlRoot = "#{url}#{@urlRoot}" else url
  	@

# ----------------------------------

module.exports = BaseModel
