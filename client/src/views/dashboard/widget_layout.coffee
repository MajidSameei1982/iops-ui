Marionette = require('marionette')
Widget = require('../../models/widget')
WidgetView = require('../widgets/widget_view')
GateWidgetView = require('../widgets/gate_widget_view')
AlarmWidgetView = require('../widgets/alarm_widget_view')
WeatherWidgetView = require('../widgets/weather_widget_view')
UrlWidgetView = require('../widgets/url_widget_view')
WidgetModalView = require('./widget_modal')

# ----------------------------------

class WidgetLayout extends Marionette.LayoutView
  template:		"dashboard/widget_layout"
  ui:
    wgrid : "ul.gridster"
  events:
    "click #add_widget" : "show_add"

  add_widget: (type)->
    id = 0
    for m in @model.widgets.models
      if m.id > id then id = m.id
    id = id+1
    lo = 
      r:          1
      c:          1
      sx:         1
      sy:         1
    if type == 'alarm'
      lo.sx = 2
      lo.sy = 2
    w = @model.widgets.add
      id: id
      type: type
      settings:
        layout: lo
      config:     true
    if @grid
      wli = $("<li id='widget_#{id}' class='widget'></li>")
      @$('ul.gridster').append(wli)
      @grid.add_widget(wli, lo.sx, lo.sy, lo.c, lo.r)
      @draw_widget_view(w)
      wli.append('<span class="gs-resize-handle gs-resize-handle-both"></span>')
    
  show_add: (e)->
    e.preventDefault()
    m = new Backbone.Model()
    m.view = @
    @wmv = new WidgetModalView
      model:m
    App.layout.modal_region.show(@wmv)

  # persist widget position and dimensions
  persist_widgets: (e, ui)=>
    App.log "persist_widgets"
    wid = $(e.target).closest('li.widget').data('id')
    for wm, idx in @model.widgets.models
      @$('ul.gridster li').each ()->
        id = $(@).data('id')
        if (id == wm.id)
          s = _.clone(wm.get("settings"))
          layout = 
            r : $(@).attr('data-row')
            c : $(@).attr('data-col')
            sx : $(@).attr('data-sizex')
            sy : $(@).attr('data-sizey')
          s.layout = layout
          wm.set("settings", s)
          #App.log s
    App.vent.trigger("user:update")
 
  set_gridster: ()->
    return @grid if @grid?
    grid = @$('ul.gridster').gridster
      widget_base_dimensions: [200, 120]
      autogrow_cols: true
      resize:
        enabled: true
        stop: @persist_widgets
      draggable:
        handle: '.box-header'
        stop: @persist_widgets
    @grid = grid.data('gridster')
    @

  draw_widget_view: (w)->
    wid = "widget_#{w.id}"
    r = @getRegion(wid)
    if (r?) then return

    wli = $("li##{wid}")
    if !wli? || wli.length == 0
      wli = $("<li id='#{wid}' class='widget'></li>")
      $('ul.gridster').append(wli)
    s = w.get('settings')
    lo = if s? && s.layout? then s.layout else null
    wli.attr
      'data-id' : w.id
      'data-row' : s.layout.r
      'data-col' : s.layout.c
      'data-sizex' : s.layout.sx
      'data-sizey' : s.layout.sy        
    
    tpe = if w.get('type')? then w.get('type') else 'default'
    
    wv = null
    switch tpe
      when 'gate' then wv = new GateWidgetView({model:w})
      when 'url' then wv = new UrlWidgetView({model:w})
      when 'alarm' then wv = new AlarmWidgetView({model:w})
      when 'weather' then wv = new WeatherWidgetView({model:w})
      else wv = new WidgetView({model: w})

    # create the region and show widget
    r = @addRegion(wid, "li##{wid}")
    r.show(wv)
    wv.start()

  onShow: ()->
    for w, idx in @model.widgets.models
      @draw_widget_view(w)
    @set_gridster()
    @model.widgets.on "remove", (w, b)=>
      cid = @.cid
      rg = "widget_#{w.id}"
      App.currentView.grid.remove_widget $("li##{rg}"), ()=>
        App.currentView.removeRegion(rg)
    App.currentView = @
      
  	#App.AdminLTE_lib.reset()
  	
# ----------------------------------

module.exports = WidgetLayout
