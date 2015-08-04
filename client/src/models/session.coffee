BaseModel = require('./_base')

# ----------------------------------

class SessionModel extends BaseModel
  service: 'accounts'
  urlRoot: '/sessions'

  initialize: ()->
    @on "change", @persist
    @persist()
    @

  persist: ()->
    App.store.set('session',@)
    SessionModel.set_token(@)
    @

  clear: ()->
    @off "change"
    SessionModel.set_token()
    App.store.remove('session')
    App.session = null
    null

  auth: ({success, error})->
    @save null,
      success: success
      error: error

  # validate: ()->
  #   # ? run validation against claim to ensure the session is still valid and not timed out ?
  #   true

  @set_token: (session)->
    tk = if session? then session.get("token") else null
    $.ajaxSetup
      headers:
        'token': tk
    session
  
  @restore: ()->
  	s = App.store.get('session')
  	if s? then @create(s)
  	true

  @create: (config)->
    if App.session? then App.session.clear()
    App.session = new SessionModel(config)
    App.session


# ----------------------------------

module.exports = SessionModel
