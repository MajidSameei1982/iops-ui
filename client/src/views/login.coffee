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
    acontainer: "#alert-container"

  set_errors: ()->
    @ui.email.parent().addClass('has-error')
    @ui.password.parent().addClass('has-error')
  clear_errors: ()->
    @ui.email.parent().removeClass('has-error')
    @ui.password.parent().removeClass('has-error')

  login: (e)->
    e.preventDefault();
    #UIUtils.checkFields(@)
    UIUtils.clearAlerts(@ui.acontainer)
    @$("input, button").attr('disabled', 'disabled')
    @ui.login.html('<i class="fa fa-spinner fa-pulse"></i>')
    @clear_errors()
    SessionModel.auth
      email:@ui.email.val()
      password: @ui.password.val()
      success: (a,b,c)->
        App.router.navigate('',{trigger:true})
      error: ()=>
        UIUtils.showAlert @ui.acontainer,
          title: "LOGIN FAILED!"
          message: "Check the email address and password, then try again."
          type: "danger"
          icon: "warning"
        @$("input, button").attr('disabled', null)
        @ui.login.html('Log In')
        @set_errors()

  onDomRefresh: () ->
    UIUtils.setICheck(@)
    $('body').addClass('login-page')

# ----------------------------------

module.exports = LoginView
    