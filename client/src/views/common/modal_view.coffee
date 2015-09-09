Marionette = require('marionette')

# ----------------------------------

class ModalView extends Marionette.ItemView
  template: 'common/modal'
  className: 'modal modal-primary'
  id: 'app_modal'

  ui:
    title   : '.modal-title'
    cancel  : '#modal_cancel'
    save    : '#modal_save'
    body    : '.modal-body'
  events:
    'click #modal_save' : 'do_save'

  onRender: ()->
    return if !@model? || !@model.opts?
    o = @model.opts
    title = if o.title? then o.title else ''
    icon = if o.icon? then "<i class='fa fa-#{o.icon}'></i> " else ''
    @ui.title.html("#{icon}#{title}")
    cancel_txt = if o.cancel_txt? then o.cancel_txt else 'CANCEL'
    @ui.cancel.html(cancel_txt)
    save_txt = if o.save_txt? then o.save_txt else 'OK'
    @ui.save.html(save_txt)
    @model.on_save = o.on_save
    @model.on_cancel = o.on_cancel
    if o.type? then $(@el).removeClass('modal-primary').addClass("modal-#{o.type}")
    if o.body? then @ui.body.html(o.body)

  do_save: ()=>
    if @model.on_save? then @model.on_save()
    $('#app_modal').modal('hide')

  onShow: ()->
    @m = $('#app_modal').modal()
    @m.on "hidden.bs.modal", ()=>
      if @model.on_cancel? then @model.on_cancel()
      App.layout.modal_region.empty()

# ----------------------------------

module.exports = ModalView