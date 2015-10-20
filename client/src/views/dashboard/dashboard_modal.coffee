Marionette = require('marionette')

# ----------------------------------

class DashboardModalView extends Marionette.ItemView
  template: 'dashboard/dashboard_modal'
  className: 'modal modal-primary'
  id: 'app_modal'
  ui:
    modal_title   : '.modal-title'
    modal_sub   : '.modal-subtitle'
    title : 'input#title'
    cancel  : '#modal_cancel'
    save    : '#modal_save'
    body    : '.modal-body'
  
  onShow: ()->
    if @action == 'add'
      @ui.modal_title.html('Add Dashboard')
      @ui.modal_sub.html('Add a new Dashboard to your account to hold one or more Widgets')
    if @action == 'edit'
      @ui.modal_title.html('Edit Dashboard')
      @ui.modal_sub.html('')
    @m = $('#app_modal').modal()
    @m.on "hidden.bs.modal", ()=>
      App.layout.modal_region.empty()
    @ui.title.change ()=>
      @model.set('title', @ui.title.val())
      App.vent.trigger 'user:update'
      App.vent.trigger 'dashboard:update', @model
    @ui.save.click (e)=>
      e.preventDefault()
      t = @ui.title.val().trim()
      return false if t == ''
      if @action == 'add'
        @dashboards.add @model, {at:0}
        App.vent.trigger 'user:update'
        App.router.navigate("dashboard/#{@model.id}", {trigger:true})

# ----------------------------------

module.exports = DashboardModalView