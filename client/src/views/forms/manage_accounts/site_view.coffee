Marionette = require('marionette')
Site = require('../../../models/site')

# ----------------------------------

class SiteView extends Marionette.ItemView
  template: "forms/manage_accounts/site"
  tagName: 'div'
  className: ''

  ui:
    container   : '.site_container'
    cloud       : 'i#site_cloud'
    name        : '#site_name'
    code        : '#site_code'
    shortName   : '#site_short'
    serverUrl   : '#site_url'
    refreshRate : '#site_refresh_rate'

  events:
    'click #edit_site'             : 'show_edit'
    'click #delete_site'           : 'delete'
    'click #site_buttons>#cancel'  : 'cancel_edit'
    'click #site_buttons>#save'    : 'save'
    'click #site_active'           : 'toggle_active'
    'click #site_cloud'            : 'toggle_cloud'

  bindings:
    name        : '#site_name'
    code        : '#site_code'
    shortName   : '#site_short'
    serverUrl   : '#site_url'
    refreshRate : '#site_refresh_rate'
    isActive    :
      selector: 'i#site_active'
      elAttribute: 'class'
      converter: (action, value, field)->
        if value then 'fa-toggle-on' else 'fa-toggle-off'

  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  toggle_active: ()->
    return false if !@ui.container.hasClass('rw')
    @model.set('isActive', !@model.get('isActive'))

  set_cloud: ()->
    settings = _.clone(@model.get('settings'))
    c = if settings.cloud? then settings.cloud else true
    @ui.cloud.toggleClass('fa-toggle-on',c)
    @ui.cloud.toggleClass('fa-toggle-off',!c)

  toggle_cloud: ()->
    return false if !@ui.container.hasClass('rw')
    settings = _.clone(@model.get('settings'))
    c = if settings.cloud? then !settings.cloud else true
    settings.cloud = c
    @model.set('settings', settings)
    @set_cloud()

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

  delete: ()=>
    App.uiutils.showModal
      title: 'Delete Site?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this Site? This cannot be undone and all Site data will be lost.'
      on_save: ()=>
        @model.destroy
          success: ()=>
            #@model.collection.remove(@model)
            App.vent.trigger "app:update"

  clear_errors: ()->
    for k of @ui
      @$(@ui[k]).removeClass('error')

  save: ()->
    @clear_errors()
    name = @model.get('name')
    return if !name? || name.trim() == ''
    @model.save null,
      success: ()=>
        @render()
        App.vent.trigger "app:update"
      error: (site, err)=>
        if err.responseJSON?
          for k in err.responseJSON.validation.keys
            @ui[k].addClass('error')
    
  onRender: ()->
    @modelBinder.bind(@model, @el, @bindings)
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      @show_edit()
    @set_cloud()


# ----------------------------------

module.exports = SiteView
