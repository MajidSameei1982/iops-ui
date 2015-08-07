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
    @

  @clear: ()->
    if App.session? then App.session.off "change"
    SessionModel.set_token()
    App.store.remove('session')
    App.session = null
    null

  @auth: ({email, password, success, error})->
    SessionModel.clear()
    App.session = new SessionModel
      email:email
      password:password

    if success?
      os = success
      success = ()=>
        SessionModel.set_token(App.session)
        os()
    else
      success = ()=>
        SessionModel.set_token(App.session)

    if error?
      oe = error
      error = ()=>
        SessionModel.clear()
        oe()
    else
      error = ()=>
        SessionModel.clear()

    App.session.save null,
      success: success
      error: error

  # validate: ()->
  #   # ? run validation against claim to ensure the session is still valid and not timed out ?
  #   true

  @set_token: (session)->
    if session?
      tk = session.get("token")
      $.ajaxSetup
        headers:
          'token': tk
    else
      if $.ajaxSettings.headers? then delete $.ajaxSettings.headers["token"];
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
