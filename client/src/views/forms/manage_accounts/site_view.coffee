Marionette = require('marionette')
Site = require('../../../models/site')

# ----------------------------------

class SiteView extends Marionette.ItemView
  template: "forms/manage_accounts/site"
  tagName: 'div'
  className: ''

  ui:
    container: '.site_container'

  events:
    'click #edit_site'             : 'show_edit'
    'click #delete_site'           : 'delete'
    'click #site_buttons>#cancel'  : 'cancel_edit'
    'click #site_buttons>#save'    : 'save'
    'click #site_active'           : 'toggle_active'

  bindings:
    name      : '#site_name'
    abbrev    : '#site_abbrev'
    shortName : '#site_short'
    isActive:
      selector: 'i#site_active'
      elAttribute: 'class'
      converter: (action, value, field)->
        if value then 'fa-toggle-on' else 'fa-toggle-off'

  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  toggle_active: ()->
    return false if !@ui.container.hasClass('rw')
    @model.set('isActive', !@model.get('isActive'))

  toggle_edit: (rw)->
    @ui.container.toggleClass('rw',rw)

  cancel_edit: ()->
    if (!@model.id? || @model.id < 1)   
      if @model.collection? then @model.collection.remove(@model)
      return
    @toggle_edit(false);
    @model = new Site(@old_model)
    @render()

  show_edit: (e)->
    @old_model = $.extend(true, {}, @model.attributes);
    @toggle_edit(true);

  delete: ()->
    App.uiutils.showModal
      title: 'Delete Site?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this Site? This cannot be undone and all Site data will be lost.'
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

# ----------------------------------

module.exports = SiteView
