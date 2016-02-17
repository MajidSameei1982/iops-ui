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
    zones       : '#site_zones'

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

  set_settings: ()->
    @set_cloud()
    settings = _.clone(@model.get('settings'))
    if settings.zones?
      @ui.zones.val(JSON.stringify(settings.zones, null, 2))

  apply_settings: ()->
    settings = _.clone(@model.get('settings'))
    settings || (settings = {})
    zones = @ui.zones.val()
    if zones? && zones.trim() != ''
      @ui.zones.removeClass('error')      
      try
        settings.zones = JSON.parse(zones)
      catch e
        @ui.zones.addClass('error')
        return false   
    else
      delete settings.zones
    @model.set('settings', settings)
    true

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
            App.vent.trigger "app:update"

  clear_errors: ()->
    for k of @ui
      @$(@ui[k]).removeClass('error')

  save: ()->
    @clear_errors()
    name = @model.get('name')
    return if !name? || name.trim() == ''
    if !@apply_settings() then return false
    @model.save null,
      success: ()=>
        @render()
        App.vent.trigger "app:update"
      error: (site, err)=>
        if err.responseJSON?
          for k in err.responseJSON.validation.keys
            @ui[k].addClass('error')
    true
    
  onRender: ()->
    @modelBinder.bind(@model, @el, @bindings)
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      @show_edit()
    @set_settings()


# ----------------------------------

module.exports = SiteView
