Marionette = require('marionette')
User = require('../../../models/user')

# ----------------------------------

class UserView extends Marionette.ItemView
  template: "forms/manage_permissions/user"
  className: 'row user_container'

  # events:
  #   'click #edit_role'             : 'show_edit'
  #   'click #delete_role'           : 'delete'
  #   'click #role_buttons>#cancel'  : 'cancel_edit'
  #   'click #role_buttons>#save'    : 'save'

  # bindings:
  #   name: '#role_name'
  #   description: '#role_desc'

  # initialize: ()->
  #   @modelBinder = new Backbone.ModelBinder()

  # toggle_edit: (rw)->
  #   $(@el).toggleClass('rw',rw)

  # show_edit: (e)->
  #   @old_model = $.extend(true, {}, @model.attributes);
  #   @toggle_edit(true);
    
  # cancel_edit: ()->
  #   if (!@model.id? || @model.id < 1)   
  #     @model.collection.remove(@model)
  #     return
  #   @toggle_edit(false);
  #   @model = new Role(@old_model)
  #   @render()

  # delete: ()->
  #   App.uiutils.showModal
  #     title: 'Delete Role?'
  #     icon: 'warning'
  #     type: 'warning'
  #     body: 'Are you sure you want to delete this Role? This cannot be undone and all associated Sites will lose this Role.'
  #     on_save: ()=>
  #       @model.collection.remove(@model)

  # save: ()->
  #   # TODO: FIRE MODEL SAVE
  #   name = @model.get('name')
  #   return if !name? || name.trim() == ''
  #   @model.id = 99
  #   # TODO:
  #   @render()
 
  # onRender: ()->
  #   @modelBinder.bind(@model, @el, @bindings)
  #   if (!@model.id? || @model.id < 1)
  #     @$("#delete").hide()
  #     @show_edit()
  #   else
  #     @toggle_edit(false)

# ----------------------------------

module.exports = UserView
