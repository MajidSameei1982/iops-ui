Marionette = require('marionette')
Dashboard = require('../../models/dashboard')

# ----------------------------------

class DashboardContentView extends Marionette.LayoutView
  template:		"dashboard/content"
  regions:
  	center: '#center-region'

  onShow: ()->
    if @center_view?
      @center.show(@center_view)
      App.currentView = @center_view
    else
      App.currentView = null

    App.vent.on 'dashboard:update', (dash)=>
      if @center_view.model instanceof Dashboard
        if dash? && dash.id == @center_view.model.id then @onDomRefresh()

  onDomRefresh: ()=>
    # set page title/subtitle
    t = if @title? then @title else 'Foo'
    if @center_view.model instanceof Dashboard
      t = @center_view.model.get('name')
    st = if @subtitle? then @subtitle else ''
    if @icon? then t = "<i class='fa fa-#{@icon}'></i> #{t}" 
    t = "#{t} <small>#{st}</small>"
    @$("#title").html(t)

  	
# ----------------------------------

module.exports = DashboardContentView
