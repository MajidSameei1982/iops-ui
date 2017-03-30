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
    index = App.session.attributes["dashboards"].indexOf(model.id)
    if (index > 0) 
      App.session.attributes["dashboards"].splice(index-1,0,App.session.attributes["dashboards"].splice(index,1)[0]);
      @remove model, {silent: true}
      @add model, {at: index-1}
      model.save()

  movedn: (model)->
    index = App.session.attributes["dashboards"].indexOf(model.id)
    if (index < @models.length)
      App.session.attributes["dashboards"].splice(index+1,0,App.session.attributes["dashboards"].splice(index,1)[0]);
      @remove model, {silent: true}
      @add model, {at: index+1}
      model.save()
      
# ----------------------------------

module.exports = BaseCollection
