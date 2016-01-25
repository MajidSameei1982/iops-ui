AppConfig = require('../common/appconfig')
Backbone = require('backbone')

# ----------------------------------

class BaseModel extends Backbone.Model
  idAttribute : '_id'
  
  save:(attrs, options)->
    attrs || (attrs = _.extend(this.attributes))
    options || (options = {})
    if options.blacklist?
      for k in options.blacklist
        delete attrs[k]
      delete options.blacklist
    #delete attrs._id
    delete attrs.createdAt
    delete attrs.updatedAt
    options.data = JSON.stringify(attrs)
    options.contentType = "application/json" # super annoying b/c Backbone changes this on a PUT with altered data
    super(attrs, options)
    
  constructor: (opts) ->
  	super
  	if @local? and @local == true
  		url = ''
  	else
	  	url = if @service? then "#{AppConfig.api_baseurl}".replace('{service}', "#{@service}") else "#{AppConfig.api_baseurl}"
	  	if @urlRoot? then @urlRoot = "#{url}#{@urlRoot}" else url
  	@

# ----------------------------------

module.exports = BaseModel
