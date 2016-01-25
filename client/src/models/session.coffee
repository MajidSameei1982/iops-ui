BaseModel = require('./_base')
User = require('./user')

# ----------------------------------

class Session extends BaseModel
  service: 'accounts'
  urlRoot: '/login'

  # constructor:(config)->
  #   super config
  #   @user = new User(@get('user'))

  initialize: ()->
    @on "change", @persist
    @persist()
    @

  persist: ()->
    App.store.set('session',@)
    @

  @save_session: ()->
    App.store.set("user_ts", new Date())
    App.store.set("session", App.session)
    App.session.save()

  @clear: ()->
    if App.session? then App.session.off "change"
    Session.set_session() # forces clearing of token
    null

  # perform authorization and set session token
  @auth: ({email, password, success, error})->
    Session.clear()
    App.session = new Session
      email:email
      password:password

    s = (data, status, xhr)=>
      Session.set_session(App.session)
    e = (xhr, status, error)=>
      Session.clear()

    # chain any existing success/failure callbacks
    if success?
      os = success
      s = (data, status, xhr)=>
        Session.set_session(App.session)
        os(data, status, xhr)

    if error?
      oe = error
      e = (xhr, status, error)=>
        Session.clear()
        oe(xhr, status, error)

    # execute actual call
    App.session.save null,
      success: s
      error: e
      timeout:3000
  
  # validate: ()->
  #   # ? run validation against claim to ensure the session is still valid and not timed out ?
  #   true

  # apply session token to header for all subsequent requests
  @set_header_token:(token)->
    $.ajaxSetup
        headers:
          'Authorization': "Bearer #{token}"
    App.store.set("token", token)
    token

  @set_session: (session)->
    if session?
      tk = session.get("token")
      @set_header_token(tk)
      tk = tk.split('.')[1]
      ctk = CryptoJS.enc.Base64.parse(tk)
      user = ctk.toString(CryptoJS.enc.Utf8)
      user = JSON.parse(user)
      # clean out unused token fields
      delete user.createdAt
      delete user.updatedAt
      delete user.passwordHash
      delete user.iss
      delete user.iat
      delete user.exp
      # TODO: need server fix to list dashboards
      user.dashboards = [] 
      # remove user-typed password
      delete App.session.attributes["password"]
      # convert to a User
      App.session = new User(user)
      App.save_user()
    else
      if $.ajaxSettings.headers? then delete $.ajaxSettings.headers["Authorization"]
      App.store.remove('session')
      App.store.remove('token')
      App.store.remove('user_ts')
      App.session = null
    App.session
  
  # pull a session from local storage
  @restore: ()->
    s = App.store.get('session')
    tk = App.store.get('token')
    if s?
      if App.session? then App.session.clear()
      App.session = new User(s)
    if tk?
      @set_header_token(tk)
    true

# ----------------------------------

module.exports = Session
