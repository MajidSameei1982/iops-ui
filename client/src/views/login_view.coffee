Marionette = require('marionette')
UIUtils = require('../common/uiutils')
Session = require('../models/session')

# ----------------------------------

class LoginView extends Marionette.ItemView
  template: "login"
  events:
    'submit form'     : 'login'
    'click #iforgot'  : 'iforgot'
    'click #reset'    : 'reset'
  ui:
    email       : "input#email"
    password    : "input#password"
    remember    : "input#remember"
    login       :"button#login"
    acontainer  : "#alert-container"
    loginform   : "#loginform"
    forgotform  : "#forgotform"
    forgotemail : "#forgotemail"
    iforgot     : "#iforgot"
    reset       : '#reset'

  reset: (e)=>
    e.preventDefault()
    
  iforgot: (e)=>
    e.preventDefault()
    @ui.loginform.hide()
    @ui.forgotform.show()

  set_errors: ()->
    @ui.email.parent().addClass('has-error')
    @ui.password.parent().addClass('has-error')
    @
  clear_errors: ()->
    UIUtils.clearAlerts(@ui.acontainer)
    @ui.email.parent().removeClass('has-error')
    @ui.password.parent().removeClass('has-error')
    @
  show_login_error: ()->
    UIUtils.showAlert @ui.acontainer,
      title: "LOGIN FAILED!"
      message: "Check the email address and password, then try again."
      type: "danger"
      icon: "warning"
    @set_errors()
    @
  disable_ui: (disable)->
    d = if disable then 'disabled' else null
    @$("input, button").attr('disabled', d)
    b = if disable then '<i class="fa fa-spinner fa-pulse"></i>' else 'Log In'
    @ui.login.html(b)
    @    

  login: (e)->
    e.preventDefault();
    @clear_errors()
    @disable_ui(true)
    Session.auth
      email:@ui.email.val()
      password: @ui.password.val()
      success: (a,b,c)->
        App.refresh_accounts ()->
          App.router.navigate('',{trigger:true})
      error: ()=>
        @show_login_error()
        @disable_ui(false)
    @

  onDomRefresh: () ->
    # render custom checkbox
    UIUtils.setICheck(@)
    # set body class for login layout
    $('body').addClass('login-page')

# ----------------------------------

module.exports = LoginView
    