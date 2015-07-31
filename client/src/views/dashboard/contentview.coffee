Marionette = require('marionette')
SortableView = require('./sortable')

# ----------------------------------

class DashboardContentView extends Marionette.LayoutView
  template:		"dashboard/content"
  regions:
  	center: '#center-region'

  onShow: ()->
    sv = new SortableView()
    @center.show(sv)

  onDomRefresh: ()->
  	# set page title/subtitle
  	t = if @title? then @title else 'Foo'
  	st = if @subtitle? then @subtitle else ''
  	t = "#{t} <small>#{st}</small>"
  	$("#title").html(t)

  	
# ----------------------------------

module.exports = DashboardContentView
