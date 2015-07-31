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
    App.session = SessionModel.create({un:'',pw:''})
    App.router.navigate('',{trigger:true})

  onDomRefresh: () ->
    UIUtils.setICheck(@)
    $('body').addClass('login-page')

# ----------------------------------

module.exports = LoginView
    