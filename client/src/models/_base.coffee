AppConfig = require('../common/appconfig')
Backbone = require('backbone')

# ----------------------------------

class BaseModel extends Backbone.Model
  idAttribute : '_id'
  
  save:(attrs, options)->
    attrs || (attrs = $.extend(true, {}, this.attributes))
    if (attrs["0"]?) then delete attrs["0"]
    options || (options = {})
    # prevent attribs from being sent up in save operations
    blacklist = ['isActive', 'createdAt', 'updatedAt', 'lastErrorObject', 'ok', 'value']
    if options.blacklist?
      blacklist = blacklist.concat(options.blacklist)
      delete options.blacklist
    for k in blacklist
      delete attrs[k]

    options.data = JSON.stringify(attrs)
    options.contentType = "application/json" # super annoying b/c Backbone changes this on a PUT with altered data
    super(attrs, options)

  setUrl: (root)->
    if @local? and @local == true
      url = ''
    else
      url = if @service? then "#{AppConfig.api_baseurl}".replace('{service}', "#{@service}") else "#{AppConfig.api_baseurl}"
      if root? then @urlRoot = "#{url}#{root}" else url

  constructor: (opts) ->
  	super
  	@setUrl(@urlRoot)
  	@

# ----------------------------------

module.exports = BaseModel
