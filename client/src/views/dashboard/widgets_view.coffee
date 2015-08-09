Marionette = require('marionette')

# ----------------------------------

class WidgetsView extends Marionette.ItemView
  template:		"dashboard/widgets"
  className: 'gridster'
  ui:
  	container: 'ul#widget-container'

  onDomRefresh: ()->
  	@ui.container.empty()
  	for w in @model.get('widgets')
  		wli = $("<li class='cell' data-row='#{w.r}' data-col='#{w.c}' data-sizex='#{w.sx}' data-sizey='#{w.sy}'></li>")
  		@ui.container.append(wli)
  	@ui.container.gridster()
  	
# ----------------------------------

module.exports = WidgetsView
