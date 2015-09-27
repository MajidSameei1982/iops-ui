Marionette = require('marionette')

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

  onDomRefresh: ()->
    # set page title/subtitle
    t = if @title? then @title else 'Foo'
    st = if @subtitle? then @subtitle else ''
    if @icon? then t = "<i class='fa fa-#{@icon}'></i> #{t}" 
    t = "#{t} <small>#{st}</small>"
    $("#title").html(t)

  	
# ----------------------------------

module.exports = DashboardContentView
