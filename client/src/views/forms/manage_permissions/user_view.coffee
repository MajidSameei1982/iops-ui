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
    firstname: '#firstname'
    lastname: '#lastname'
    email: '#email'
    phone1: '#phone1'
    phone2: '#phone2'
    roles_global: '#roles_global'

  ui:
    firstname: 'input#firstname'
    lastname: 'input#lastname'
    email: 'input#email'
    pw: 'input#password'
    pwc: 'input#password_confirmation'
    
  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  toggle_edit: (rw)->
    $(@el).toggleClass('rw',rw)
    #@$('#role_claims_container').toggle(rw)
    if rw
      roles_global = @model.get('roles_global')
      @$('select#roles_global').val(roles_global)
      for acc in App.accounts.models
        for s in acc.sites.models
          @$("select#roles_#{s.id}").val(@model.get("roles_#{s.id}"))
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
    App.uiutils.showModal
      title: 'Delete User?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this User? This cannot be undone and all associated data will be lost21.'
      on_save: ()=>
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
    if !@model.get('lastname')? || @model.get('lastname').trim() == ''
      @ui.lastname.closest('.form-group').addClass('has-error')
      res = res && false
    if !@model.get('firstname')? || @model.get('firstname').trim() == ''
      @ui.firstname.closest('.form-group').addClass('has-error')
      res = res && false
    pw = @ui.pw.val().trim()
    pwc = @ui.pwc.val().trim()
    if pw != '' && pw != pwc
      @ui.pw.closest('.form-group').addClass('has-error')
      @ui.pwc.closest('.form-group').addClass('has-error')
      res = res && false
    res

  save: ()->
    # TODO: FIRE MODEL SAVE
    return if !@validate()
    if !@model.id? then @model.set('id', Math.floor(Math.random() * 10000)+1)
    @model.set('roles_global', @$('select#roles_global').val())
    for acc in App.accounts.models
      for s in acc.sites.models
        @model.set("roles_#{s.id}", @$("select#roles_#{s.id}").val())
    App.vent.trigger "app:update"
    @render()
 
  onRender: ()->
    @toggle_edit(false);
    @modelBinder.bind(@model, @el, @bindings)
    
  onShow: ()->
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      @show_edit()
    App.new_user = @model

# ----------------------------------

module.exports = UserView
