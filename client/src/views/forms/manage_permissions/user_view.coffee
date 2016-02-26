Marionette = require('marionette')
User = require('../../../models/user')

# ----------------------------------

class UserView extends Marionette.ItemView
  template: "forms/manage_permissions/user"
  className: 'row user_container'

  events:
    'click #edit_user'             : 'show_edit'
    'click #delete_user'           : 'delete'
    'click #user_buttons>#cancel'  : 'cancel_edit'
    'click #user_buttons>#save'    : 'save'

  bindings:
    firstName: '#firstName'
    lastName: '#lastName'
    email: '#email'
    #password: '#password'
    #roles_global: '#roles_global'

  ui:
    firstName: 'input#firstName'
    lastName: 'input#lastName'
    email: 'input#email'
    phone1: 'input#phone1'
    phone2: 'input#phone2'
    pw: 'input#password'
    pwc: 'input#password_confirmation'
    
  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  toggle_edit: (rw)->
    $(@el).toggleClass('rw',rw)
    #@$('#role_claims_container').toggle(rw)
    if rw
      roles = @model.get('roles')
      for acc in App.accounts.models
        for s in acc.sites.models
          @$("select#roles_#{s.id}").val(roles)
      @$('select#roles_global').val(roles)
      @$('select').chosen()

  show_edit: (e)->
    @old_model = $.extend(true, {}, @model.attributes);
    @toggle_edit(true);

  cancel_edit: ()->
    if (!@model.id? || @model.id < 1) 
      App.users.remove(@model)  
      return
    @model = new User(@old_model)
    @render()

  delete: ()->
    if @model.id == App.session.id
      App.uiutils.showModal
        title: 'Cannot Delete Your Account!'
        icon: 'warning'
        type: 'danger'
        body: 'Sorry, you cannot delete your own account. If you still wish to delete your account, please ask another system admin to log in and delete it.'
        show_cancel: false
      return

    App.uiutils.showModal
      title: 'Delete User?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this User? This cannot be undone and all associated data will be lost.'
      on_save: ()=>
        @model.destroy
          success:()=>
            @model.collection.remove(@model)
            App.vent.trigger "app:update"

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
    if pw != '' 
      if pw != pwc
        @ui.pw.closest('.form-group').addClass('has-error')
        @ui.pwc.closest('.form-group').addClass('has-error')
        res = res && false
      else
        @model.set("password",pw)
    res

  save: ()->
    return if !@validate()
    settings = @model.get('settings') || {}
    settings = $.extend(true,{},settings)
    settings.phone1 = @ui.phone1.val()
    settings.phone2 = @ui.phone2.val()
    @model.set('settings', settings)
    roles = []
    @$('select.roleselect').each ()->
      v = $(this).val()
      if v? && v.length > 0 then roles = roles.concat v
    @model.set('roles', roles)
    @model.save null,
      success:()=>
        delete @model.attributes['password']
        @render()
 
  onRender: ()->
    @toggle_edit(false);
    @modelBinder.bind(@model, @el, @bindings)
    
  onShow: ()->
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      settings = @model.get('settings') || {}
      if settings.phone1 then @ui.phone1.val(settings.phone1)
      if settings.phone2 then @ui.phone2.val(settings.phone2)
      @show_edit()
    App.new_user = @model

# ----------------------------------

module.exports = UserView
