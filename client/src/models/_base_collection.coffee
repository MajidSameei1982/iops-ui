AppConfig = require('../common/appconfig')
Backbone = require('backbone')

# ----------------------------------

class BaseCollection extends Backbone.Collection
  constructor: (opts) ->
  	super
  	if @local? and @local == true
  		url = ''
  	else
	  	url = if @service? then "#{AppConfig.api_baseurl}".replace('{service}', "#{@service}") else "#{AppConfig.api_baseurl}"
	  	if @url? then @url = "#{url}#{@url}" else url
  	@

  moveup: (model)->
    debugger
    index = @indexOf(model)
    if (index > 0) 
      @remove model, {silent: true}
      @add model, {at: index-1}
      model.save()

  movedn: (model)->
    debugger
    index = @indexOf(model)
    if (index < @models.length)
      @remove model, {silent: true}
      @add model, {at: index+1}
      model.save()
      
# ----------------------------------

module.exports = BaseCollection
