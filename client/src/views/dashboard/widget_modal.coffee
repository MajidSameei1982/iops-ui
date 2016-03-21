Marionette = require('marionette')

# ----------------------------------

class WidgetModalView extends Marionette.ItemView
  template: 'dashboard/widget_modal'
  className: 'modal modal-primary'
  id: 'app_modal'
  ui:
    title   : '.modal-title'
    cancel  : '#modal_cancel'
    save    : '#modal_save'
    body    : '.modal-body'

  select: (e)=>
    e.preventDefault()
    sel = $(e.target)
    wid = sel.attr("id")
    if @model? && @model.view? then @model.view.add_widget(wid)
    $('#app_modal').modal('hide')

  onShow: ()->
    @m = $('#app_modal').modal()
    @m.on "hidden.bs.modal", ()=>
      if @model? && @model.on_cancel? then @model.on_cancel()
      App.layout.modal_region.empty()
    for w in App.config.widgets
      continue if w.roles? && !App.session.check_widget_roles(w.roles)
      @$('#widget_selections').append("<a class='widget_select' id='#{w.id}' href='#'><i class='fa fa-#{w.icon}'></i> #{w.name}</a>")

    @$('a.widget_select').click @select

# ----------------------------------

module.exports = WidgetModalView