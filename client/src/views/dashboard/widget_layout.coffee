Marionette = require('marionette')
Widget = require('../../models/widget')
WidgetView = require('./widget_view')
GateWidgetView = require('../widgets/gate_widget_view')

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
    # serialize positions
    # save locally
    # raise event
  
  onDomRefresh: ()=>
    for w, idx in @model.get('widgets')
      wli = $("<li id='widget_#{w.id}' class='widget'></li>")
      lo = if w.settings? && w.settings.layout then w.settings.layout else null
      wli.attr
        'data-row' : lo.r
        'data-col' : lo.c
        'data-sizex' : lo.sx
        'data-sizey' : lo.sy
        'data-id' : w.id
      $(@el).append(wli)
      @addRegion("widget_#{w.id}", "li#widget_#{w.id}")

      m = new Widget
        id: w.id
        title: if w.title? then w.title else "Widget #{w.id}"

      if (w.type? && w.type=='gate')
        wv = new GateWidgetView({model:m})
      else
        wv = new WidgetView({model: m})
      
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
