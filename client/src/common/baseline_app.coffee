Marionette = require('marionette')

# ----------------------------------

class BaselineApp extends Marionette.Application
	log: (msg, src, lvl) =>
		@vent.trigger("app:log", msg, src, lvl)
		@

	initialize: (options)->
		@silent = false

		# simple event-based loging
		@vent.bind 'app:log', (msg, src='App', lvl='DEBUG')->
	  	if !@silent
	  		msg = "#{lvl} | #{src} | #{msg}"
	  		console?.log?(msg)
		@

# ----------------------------------

module.exports = BaselineApp
