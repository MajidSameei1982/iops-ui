Marionette = require('marionette')
Widget = require('../../models/widget')
WidgetView = require('./widget_view')

# ----------------------------------

class WidgetLayout extends Marionette.LayoutView
  template:		"dashboard/widget_layout"
  className: 'gridster widget-container'
  tagName: 'ul'

  adjust_widgets: (e, ui)=>
  	wid = $(e.target).closest('li.widget').data('id')
  	arr = []
  	@$('li.widget').each ()->
  		arr.push
  			r : $(@).data('row')
  			c : $(@).data('col')
  			sx : $(@).data('sizex')
  			sy : $(@).data('sizey')
  			id : $(@).data('id')
  	console.log arr
  	# serialize positions
		# save locally
		# raise event

  onDomRefresh: ()=>
  	for w, idx in @model.get('widgets')
  		wli = $("<li id='widget_#{w.id}' class='widget'></li>")
  		wli.attr
  			'data-row' : w.r
  			'data-col' : w.c
  			'data-sizex' : w.sx
  			'data-sizey' : w.sy
  			'data-id' : w.id
  		$(@el).append(wli)
  		@addRegion("widget_#{w.id}", "li#widget_#{w.id}")
  		m = new Widget
  			id: w.id
  			title: "Widget #{w.id}"
  		wv = new WidgetView
  			model: m
  		@getRegion("widget_#{w.id}").show(wv);

  	@grid = $(@el).gridster
  		resize:
  			enabled: true
  			stop: @adjust_widgets
  		autogrow_cols: true
  		draggable:
  			handle: '.box-header'
  			stop: @adjust_widgets

  	#App.AdminLTE_lib.reset()
  	
# ----------------------------------

module.exports = WidgetLayout
