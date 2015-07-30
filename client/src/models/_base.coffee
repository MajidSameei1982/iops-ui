AppConfig = require('../common/appconfig')
Backbone = require('backbone')

# ----------------------------------

class BaseModel extends Backbone.Model
  constructor: (opts) ->
  	super
  	if @urlRoot? then @urlRoot = "#{AppConfig.api_baseurl}#{@urlRoot}"
  	@

# ----------------------------------

module.exports = BaseModel
