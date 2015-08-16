Marionette = require('marionette')
Widget = require('../../models/widget')
WidgetView = require('./widget_view')

# ----------------------------------

class WidgetLayout extends Marionette.LayoutView
  template:		"dashboard/widget_layout"
  className: 'gridster widget-container'
  tagName: 'ul'

  onDomRefresh: ()->
  	for w, idx in @model.get('widgets')
  		wli = $("<li id='widget_#{idx}' class='widget'></li>")
  		wli.attr
  			'data-row' : w.r
  			'data-col' : w.c
  			'data-sizex' : w.sx
  			'data-sizey' : w.sy
  		$(@el).append(wli)
  		@addRegion("widget_#{idx}", "li#widget_#{idx}")
  		m = new Widget
  			id: idx
  			title: "Widget #{idx}"
  		wv = new WidgetView
  			model: m
  		@getRegion("widget_#{idx}").show(wv);

  	$(@el).gridster
  		resize:
  			enabled: true
  		autogrow_cols: true
  		draggable:
  			handle: '.box-header'
  			# start: (e, ui)->
  			# 	console.log "START"
  			# 	console.log e
  			# 	console.log ui
  			# 	console.log @
  			# drag: (e, ui)->
  			# 	console.log "DRAG"
  			# 	console.log e
  			# 	console.log ui
  			# 	console.log @
  			# stop: (e, ui)->
  			# 	console.log "STOP"
  			# 	console.log e
  			# 	console.log ui
  			# 	console.log @

  	#App.AdminLTE_lib.reset()
  	
# ----------------------------------

module.exports = WidgetLayout
