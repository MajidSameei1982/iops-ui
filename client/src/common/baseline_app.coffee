Marionette = require('marionette')
AppConfig = require('./appconfig')
TagConfig = require('./tagconfig')
# ----------------------------------

class BaselineApp extends Marionette.Application
	log: (msg, src, lvl) =>
		@vent.trigger("app:log", msg, src, lvl)
		@

	initialize: (options)->
		@silent = false
		@store = new Basil()
		@config = AppConfig
		@tagconfig = TagConfig

		@vent.on 'app:log', (msg, src='App', lvl='DEBUG')=>
	  	if !@silent
	  		msg = "#{lvl} | #{src} | #{msg}"
	  		console?.log?(msg)

		@

# ----------------------------------

module.exports = BaselineApp
