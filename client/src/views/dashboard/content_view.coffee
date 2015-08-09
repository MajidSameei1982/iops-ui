Marionette = require('marionette')

# ----------------------------------

class DashboardContentView extends Marionette.LayoutView
  template:		"dashboard/content"
  regions:
  	center: '#center-region'

  onShow: ()->
    if @center_view? then @center.show(@center_view)    

  onDomRefresh: ()->
  	# set page title/subtitle
  	t = if @title? then @title else 'Foo'
  	st = if @subtitle? then @subtitle else ''
  	t = "#{t} <small>#{st}</small>"
  	$("#title").html(t)

  	
# ----------------------------------

module.exports = DashboardContentView
