BaseModel = require('./_base')

# ----------------------------------

class SessionModel extends BaseModel
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

  validate: ()->
    # ? run some validation to ensure the session is still active ?
    true

  @restore: ()->
  	s = App.store.get('session')
  	if s? then s = @create(s)
  	s

  @create: (config)->
  	return new SessionModel(config)


# ----------------------------------

module.exports = SessionModel
