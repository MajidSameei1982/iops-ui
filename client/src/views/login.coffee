Marionette = require('marionette')

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
    App.router.navigate('',{trigger:true})

  onDomRefresh: () ->
    $('input', @el).iCheck
      checkboxClass: 'icheckbox_square-blue'
      radioClass: 'iradio_square-blue'
      increaseArea: '20%'
    $('body').addClass('login-page')

# ----------------------------------

module.exports = LoginView
    