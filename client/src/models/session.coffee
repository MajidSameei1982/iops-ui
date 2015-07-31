BaseModel = require('./_base')

# ----------------------------------

class SessionModel extends BaseModel
  idAttribute: '_id'
  urlRoot: '/login'

  initialize: ()->
  	@on "change", @persist
  	@persist()
  	@

  persist: ()->
  	Cookies.set('session',@)
  	s = Cookies.get('session')
  	if !s? && localStorage? then localStorage.setItem("session", JSON.stringify(@))
  	@

  clear: ()->  	
  	@off "change"
  	Cookies.remove('session')
  	if localStorage? then localStorage.removeItem("session")
  	@

  @restore: ()->
  	s = Cookies.get('session')
  	if !s? && localStorage?
  		s = localStorage.getItem('session')
  		if s?
  	     return @create(JSON.parse(s))
  	s

  @create: (config)->
  	return new SessionModel(config)

# ----------------------------------

module.exports = SessionModel
