BaseModel = require('./_base')
Backbone = require('Backbone')

# ----------------------------------

class SessionModel extends Backbone.Model
  service: 'accounts'
  urlRoot: 'http://accounts.iopsnj.com/v1/sessions'

  initialize: ()->
    @on "change", @persist
    @persist()
    @

  persist: ()->
    App.store.set('session',@)
    #@set_token(@)
    @
  
  clear: ()->
    @off "change"
    #@set_token()
    App.store.remove('session')
    @

  @authenticate: (un, pw)->
    s = @create
      email: un
      password: pw
    s.save
      success: (a, b, c)->
        debugger
      error: (a, b, c)->
        debugger

  validate: ()->
    # ? run validation against claim to ensure the session is still valid and not timed out ?
    true
  
  @restore: ()->
    s = App.store.get('session')
    if s? then s = @create(s)
    s

  @create: (config)->
    debugger
    return new SessionModel(config)


# ----------------------------------

module.exports = SessionModel
