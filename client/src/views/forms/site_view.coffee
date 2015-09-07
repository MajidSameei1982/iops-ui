Marionette = require('marionette')

# ----------------------------------

class SiteView extends Marionette.ItemView
  template: "forms/site"
  tagName: 'div'
  className: 'row'

  bindings:
    name: '#site_name'
    isActive:
      selector: 'i#site_active'
      elAttribute: 'class'
      converter: (action, value, field)->
        if value then 'fa-toggle-on' else 'fa-toggle-off'

  initialize: ()->
    @modelBinder = new Backbone.ModelBinder()

  onRender: ()->
    @modelBinder.bind(@model, @el, @bindings)
    if (!@model.id? || @model.id < 1)
      @$("#delete").hide()
      @show_edit()

# ----------------------------------

module.exports = SiteView
