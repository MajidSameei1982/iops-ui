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
  	App.store.set('session',@)
  	@

  clear: ()->  	
  	@off "change"
  	App.store.remove('session')
  	@

  @restore: ()->
  	s = App.store.get('session')
  	if s? then s = @create(s)
  	s

  @create: (config)->
  	return new SessionModel(config)

# ----------------------------------

module.exports = SessionModel
