BaseModel = require('./_base')
User = require('./user')

# ----------------------------------

class Session extends BaseModel
  service: 'accounts'
  urlRoot: '/sessions'

  constructor:(config)->
    super config
    @user = new User(@get('user'))

  initialize: ()->
    @on "change", @persist
    @persist()
    @

  persist: ()->
    App.store.set('session',@)
    @

  @clear: ()->
    if App.session? then App.session.off "change"
    Session.set_token()
    App.store.remove('session')
    App.session = null
    null

  ## DISABLED UNTIL SESSION SERVICE IS WORKING
  # @auth: ({email, password, success, error})->
  #   Session.clear()
  #   App.session = new Session
  #     email:email
  #     password:password

  #   s = (data, status, xhr)=>
  #     Session.set_token(App.session)
  #   e = (xhr, status, error)=>
  #     Session.clear()

  #   if success?
  #     os = success
  #     s = (data, status, xhr)=>
  #       Session.set_token(App.session)
  #       os(data, status, xhr)

  #   if error?
  #     oe = error
  #     e = (xhr, status, error)=>
  #       Session.clear()
  #       oe(xhr, status, error)

  #   App.session.save null,
  #     success: s
  #     error: e
  #     timeout:3000

  @get_dummy_user: ()->
    user = App.store.get('user')
    if !user?
      user = 
        id: 1
        firstname: 'John'
        lastname: 'Talarico'
        fullname: 'John Talarico'
        email: 'john@opcsystems.com'
        avatar: null
        dashboards: [ 
          id: 1
          title: "Sample Dashboard"
          widgets: []
        ,
          id: 2
          title: "Another Dashboard"
          widgets: []
        ]
      App.store.set('user', user)
    user

  
  ## DUMMY AUTH - need to 
  ##  1. execute auth from server
  ##  2. on success, generate Session 
  @auth: ({email, password, success, error})->
    Session.clear()
    if !email? or email.trim() == '' or !password? or password.trim() == ''
      if error? then error()
    else
      App.session = new Session
        email:email
        password:password
        token: 'foo'
        user: @get_dummy_user()
      Session.set_token(App.session)
      App.session.attributes['password'] = null
      if success? then success()

  # validate: ()->
  #   # ? run validation against claim to ensure the session is still valid and not timed out ?
  #   true

  # apply session token to header for all subsequent requests
  @set_token: (session)->
    if session?
      tk = session.get("token")
      $.ajaxSetup
        headers:
          'token': tk
    else
      if $.ajaxSettings.headers? then delete $.ajaxSettings.headers["token"];
    session
  
  # pull a session from local storage
  @restore: ()->
    s = App.store.get('session')
    u = Session.get_dummy_user()
    if s?
      s.user = u
      @create(s)
    true

  @create: (config)->
    if App.session? then App.session.clear()
    App.session = new Session(config)
    App.session


# ----------------------------------

module.exports = Session
