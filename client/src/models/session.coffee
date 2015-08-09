BaseModel = require('./_base')
User = require('./user')

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

  ## DISABLED UNTIL SESSION SERVICE IS WORKING
  # @auth: ({email, password, success, error})->
  #   SessionModel.clear()
  #   App.session = new SessionModel
  #     email:email
  #     password:password

  #   s = (data, status, xhr)=>
  #     SessionModel.set_token(App.session)
  #   e = (xhr, status, error)=>
  #     SessionModel.clear()

  #   if success?
  #     os = success
  #     s = (data, status, xhr)=>
  #       SessionModel.set_token(App.session)
  #       os(data, status, xhr)

  #   if error?
  #     oe = error
  #     e = (xhr, status, error)=>
  #       SessionModel.clear()
  #       oe(xhr, status, error)

  #   App.session.save null,
  #     success: s
  #     error: e
  #     timeout:3000

  
  ## DUMMY AUTH
  @auth: ({email, password, success, error})->
    SessionModel.clear()
    if !email? or email.trim() == '' or !password? or password.trim() == ''
      error()
    else
      App.session = new SessionModel
        email:email
        password:password
        token: 'foo'
        user:
          id: 1
          firstname: 'John'
          lastname: 'Talarico'
          fullname: 'John Talarico'
          email: 'john@opcsystems.com'
          avatar: null
      SessionModel.set_token(App.session)
      App.session.attributes['password'] = null
      success()

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
