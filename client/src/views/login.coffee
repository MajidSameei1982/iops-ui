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
    login:    "button#login"

  set_errors: ()->
    @ui.email.parent().addClass('has-error')
    @ui.password.parent().addClass('has-error')
  clear_errors: ()->
    @ui.email.parent().removeClass('has-error')
    @ui.password.parent().removeClass('has-error')

  login: (e)->
    e.preventDefault();
    #UIUtils.checkFields(@)
    @$("input, button").attr('disabled', 'disabled')
    @ui.login.html('Signing in...')
    @clear_errors()
    SessionModel.auth
      email:@ui.email.val()
      password: @ui.password.val()
      success: (a,b,c)->
        App.router.navigate('',{trigger:true})
      error: ()=>
        @$("input, button").attr('disabled', null)
        @ui.login.html('Sign In...')
        @set_errors()

  onDomRefresh: () ->
    UIUtils.setICheck(@)
    $('body').addClass('login-page')

# ----------------------------------

module.exports = LoginView
    