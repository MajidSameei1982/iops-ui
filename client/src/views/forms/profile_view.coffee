Marionette = require('marionette')
UIUtils = require('../../common/uiutils')

# ----------------------------------

class ProfileView extends Marionette.ItemView
  template: "forms/profile"

  events:
    'click button.save'    : 'save'

  bindings:
    firstName: '#firstName'
    lastName: '#lastName'
    email: '#email'
    password: 'input#password'

  ui:
    alertContainer: '#alertContainer'
    firstName: 'input#firstName'
    lastName: 'input#lastName'
    email: 'input#email'
    phone1: 'input#phone1'
    phone2: 'input#phone2'
    pw: 'input#password'
    pwc: 'input#password_confirmation'

  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  onRender: ()->
    @modelBinder.bind(@model, @el, @bindings)
    
  onShow: ()->
    settings = @model.get('settings') || {}
    if settings.phone1 then @ui.phone1.val(settings.phone1)
    if settings.phone2 then @ui.phone2.val(settings.phone2)


  valid_email: (eml)->
    return false if !eml? || eml.trim() == ''
    e = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
    e.test(eml)

  validate: ()->
    @$('.form-group').removeClass('has-error')
    res = true
    if !@valid_email(@model.get('email'))
      @ui.email.closest('.form-group').addClass('has-error')
      res = res && false
    if !@model.get('lastName')? || @model.get('lastName').trim() == ''
      @ui.lastName.closest('.form-group').addClass('has-error')
      res = res && false
    if !@model.get('firstName')? || @model.get('firstName').trim() == ''
      @ui.firstName.closest('.form-group').addClass('has-error')
      res = res && false
    pw = @ui.pw.val().trim()
    pwc = @ui.pwc.val().trim()
    if pw != '' && pw != pwc
      @ui.pw.closest('.form-group').addClass('has-error')
      @ui.pwc.closest('.form-group').addClass('has-error')
      res = res && false
    res

  save: ()->
    UIUtils.clearAlerts @ui.alertContainer
    return if !@validate()
    settings = @model.get('settings') || {}
    settings = _.extend(settings)
    settings.phone1 = @ui.phone1.val()
    settings.phone2 = @ui.phone2.val()
    @model.set('settings', settings)
    pw = @ui.pw.val()
    if pw.trim() == ''
      delete @model.attributes['password']
    @model.save null,
      success:()=>
        UIUtils.showAlert @ui.alertContainer,
          title: "Profile Saved."
          message: ""
          type: "success"
          icon: "thumbs-up"
        @ui.pw.val('')
        @ui.pwc.val('')
      error: (m, err)=>
        UIUtils.showAlert @ui.alertContainer,
          title: "ERROR!"
          message: if err? && err.responseJSON? then err.responseJSON.message else ''
          type: "error"
          icon: "warning"


# ----------------------------------

module.exports = ProfileView
