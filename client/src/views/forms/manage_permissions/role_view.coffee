Marionette = require('marionette')
Role = require('../../../models/role')

# ----------------------------------

class RoleView extends Marionette.ItemView
  template: "forms/manage_permissions/role"
  className: 'row role_container'

  events:
    'click #edit_role'             : 'show_edit'
    'click #delete_role'           : 'delete'
    'click #role_buttons>#cancel'  : 'cancel_edit'
    'click #role_buttons>#save'    : 'save'

  bindings:
    name: '#role_name'
    description: '#role_desc'

  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  toggle_edit: (rw)->
    $(@el).toggleClass('rw',rw)
    @$('#role_claims_container').toggle(rw)
    if rw
      claims = @model.get('claims')
      @$('select#role_claims').val(claims)
      @$('select#role_claims').chosen()

  show_edit: (e)->
    @old_model = $.extend(true, {}, @model.attributes);
    @toggle_edit(true);

  cancel_edit: ()->
    if (!@model.id? || @model.id < 1)   
      @model.collection.remove(@model)
      return
    @model = new Role(@old_model)
    @render()

  delete: ()->
    App.uiutils.showModal
      title: 'Delete Role?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this Role? This cannot be undone and all associated Sites will lose this Role.'
      on_save: ()=>
        @model.collection.remove(@model)
        App.vent.trigger "app:update"

  save: ()->
    # TODO: FIRE MODEL SAVE
    name = @model.get('name')
    return if !name? || name.trim() == ''
    if !@model.id? then @model.set('id', Math.floor(Math.random() * 10000)+1)
    @model.set('claims', @$('select#role_claims').val())
    App.vent.trigger "app:update"
    @render()
 
  onRender: ()->
    @toggle_edit(false);
    @modelBinder.bind(@model, @el, @bindings)
    
  onShow: ()->
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      @show_edit()
    
# ----------------------------------

module.exports = RoleView
