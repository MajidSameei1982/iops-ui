Marionette = require('marionette')
Widget = require('../../models/widget')
WidgetView = require('./widget_view')
GateWidgetView = require('../widgets/gate_widget_view')

# ----------------------------------

class WidgetLayout extends Marionette.LayoutView
  template:		"dashboard/widget_layout"
  className: 'gridster widget-container'
  tagName: 'ul'

  initialize: (a, b, c)=>
    @model.widgets.on "update", (coll, delta)=>
      @draw_widgets()

  adjust_widgets: (e, ui)=>
    wid = $(e.target).closest('li.widget').data('id')
    arr = []
    for wm, idx in @model.widgets.models
      @$('li.widget').each ()->
        id = $(@).data('id')
        w =
          r : $(@).data('row')
          c : $(@).data('col')
          sx : $(@).data('sizex')
          sy : $(@).data('sizey')
        if (id == wm.id)
          s = wm.get("settings")
          s.layout = w
          wm.set("settings", s)
          
        
    # serialize positions
    # save locally
    # raise event

  set_gridster: ()->
    @grid = $(@el).gridster
      resize:
        enabled: true
        stop: @adjust_widgets
      autogrow_cols: true
      draggable:
        handle: '.box-header'
        stop: @adjust_widgets
    @grid = @grid.data('gridster')
    @

  draw_widgets: ()=>
    if !@grid? then @set_gridster()
    for w, idx in @model.widgets.models
      region = "widget_#{w.id}"
      r = @getRegion(region)
      if (!r? || !r.currentView?)
        # create the region if it's a new widget
        new_region = @addRegion(region, "li##{region}")

        wli = $("<li id='#{region}' class='widget'></li>")
        s = w.get('settings')
        lo = if s? && s.layout? then s.layout else null
        wli.attr
          'data-id' : w.id
        $(@el).append(wli)
        
        if (w.get('type')? && w.get('type')=='gate')
          wv = new GateWidgetView({model:w})
        else
          wv = new WidgetView({model: w})
        
        # show the widget view
        new_region.show(wv);
        # add it to gridster
        @grid.add_widget(wli, lo.sx, lo.sy, lo.c, lo.r)

    #@set_gridster()
    
  onShow: ()=>
    @draw_widgets()

  	#App.AdminLTE_lib.reset()
  	
# ----------------------------------

module.exports = WidgetLayout
