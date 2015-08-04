Marionette = require('marionette')
UIUtils = require('../common/uiutils')
SessionModel = require('../models/session')

# ----------------------------------

class LoginView extends Marionette.ItemView
  template: "login"
  events:
    'submit form' : 'login'
  ui:
    email:    "input#email"
    password: "input#password"
    remember: "input#remember"

  login: (e)->
    e.preventDefault();
    UIUtils.checkFields(@)
    SessionModel.create
      email:@ui.email.val()
      password: @ui.password.val()
    App.session.auth
      success: (a,b,c)->
        debugger
        App.router.navigate('',{trigger:true})
      error: (a,b,c)->
        debugger
        App.session.clear()

  onDomRefresh: () ->
    UIUtils.setICheck(@)
    $('body').addClass('login-page')

# ----------------------------------

module.exports = LoginView
    