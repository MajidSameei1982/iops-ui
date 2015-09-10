Marionette = require('marionette')
Claim = require('../../../models/claim')

# ----------------------------------

class PermissionView extends Marionette.ItemView
  template: "forms/manage_permissions/permission"
  className: 'row permission_container'

  events:
    'click #edit_permission'             : 'show_edit'
    'click #delete_permission'           : 'delete'
    'click #permission_buttons>#cancel'  : 'cancel_edit'
    'click #permission_buttons>#save'    : 'save'

  bindings:
    name: '#permission_name'
    description: '#permission_desc'

  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  toggle_edit: (rw)->
    $(@el).toggleClass('rw',rw)

  show_edit: (e)->
    @old_model = $.extend(true, {}, @model.attributes);
    @toggle_edit(true);
    
  cancel_edit: ()->
    if (!@model.id? || @model.id < 1)   
      @model.collection.remove(@model)
      return
    @toggle_edit(false);
    @model = new Claim(@old_model)
    @render()

  delete: ()->
    App.uiutils.showModal
      title: 'Delete Permission?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this Permission? This cannot be undone and all associated Users and Roles will lose this Permission'
      on_save: ()=>
        @model.collection.remove(@model)

  save: ()->
    # TODO: FIRE MODEL SAVE
    name = @model.get('name')
    return if !name? || name.trim() == ''
    @model.id = 99
    # TODO:
    @render()
 
  onRender: ()->
    @modelBinder.bind(@model, @el, @bindings)
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      @show_edit()
    else
      @toggle_edit(false)

# ----------------------------------

module.exports = PermissionView
