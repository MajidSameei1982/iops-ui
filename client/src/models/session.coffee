BaseModel = require('./_base')

# ----------------------------------

class SessionModel extends BaseModel
  idAttribute: '_id'
  urlRoot: '/login'

  initialize: ()->
  	console.log "session:init"
  	@on "change", @persist
  	@persist()
  	@

  persist: ()->
  	#if localStorage? then localStorage.setItem("session", JSON.stringify(@))
  	$.cookie('session',@)
  	@

  clear: ()->  	
  	@off "change"
  	#if localStorage? then localStorage.removeItem("session")
  	$.cookie('session',null)
  	@

  @restore: ()->
  	# if localStorage?
  	# 	s = localStorage.getItem('session')
  	# 	if s?
  	#      return @create(JSON.parse(s))
  	$.cookie('session')

  @create: (config)->
  	s = new SessionModel(config)
  	s

# ----------------------------------

module.exports = SessionModel
