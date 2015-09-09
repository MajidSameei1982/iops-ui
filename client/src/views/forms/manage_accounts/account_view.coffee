Marionette = require('marionette')
SiteView = require('./site_view')
Account = require('../../../models/account')

# ----------------------------------

class AccountView extends Marionette.CompositeView
  template: "forms/manage_accounts/account"
  tagName: 'div'
  className: 'row'
  childViewContainer: '.site_list'
  childView: SiteView

  ui:
    container: '.account_container'

  events:
    'click #edit_account'             : 'show_edit'
    'click #add_site'                 : 'add_site'
    'click #delete_account'           : 'delete'
    'click #account_buttons>#cancel'  : 'cancel_edit'
    'click #account_buttons>#save'    : 'save'
    'click #account_active'           : 'toggle_active'

  add_site: ()->
    for site in @collection.models
      if !site.id? || site.id == 0 then return false
    @collection.add {name: '', isActive: false, abbrev:'', shortName: ''}, {at:0}


  bindings:
    name: '#account_name'
    isActive:
      selector: 'i#account_active'
      elAttribute: 'class'
      converter: (action, value, field)->
        if value then 'fa-toggle-on' else 'fa-toggle-off'

  initialize: ()->
    @collection = this.model.sites
    @modelBinder = new Backbone.ModelBinder()

  toggle_active: ()->
    return false if !@ui.container.hasClass('rw')
    @model.set('isActive', !@model.get('isActive'))

  toggle_edit: (rw)->
    @ui.container.toggleClass('rw',rw)

  show_edit: (e)->
    @old_model = $.extend(true, {}, @model.attributes);
    @toggle_edit(true);
    
  cancel_edit: ()->
    if (!@model.id? || @model.id < 1)   
      @model.collection.remove(@model)
      return
    @toggle_edit(false);
    @model = new Account(@old_model)
    @render()

  delete: ()->
    App.uiutils.showModal
      title: 'Delete Account?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this Account? This cannot be undone and all Account and associated Site data will be lost.'
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

module.exports = AccountView
