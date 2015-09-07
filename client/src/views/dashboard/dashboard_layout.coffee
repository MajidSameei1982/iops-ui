Marionette = require('marionette')
DashboardHeaderView = require('./header_view')
DashboardSideView = require('./side_view')
DashboardToolView = require('./tool_view')
DashboardFooterView = require('./footer_view')
DashboardContentView = require('./content_view')
WidgetLayout = require('./widget_layout')

# ----------------------------------

class DashboardLayout extends Marionette.LayoutView
  template: "dashboard/dashboard_layout"
  regions:
    header: "#header-region"
    side: "#side-region"
    tool: "#tool-region"
    footer: "#footer-region"
    content: "#content-region"

  show_content: ({title, subtitle, view, icon})->
    contentview = new DashboardContentView()
    contentview.title = title
    contentview.subtitle = subtitle
    contentview.center_view = view
    contentview.icon = icon
    @content.show(contentview)
    #App.AdminLTE_lib.reset()
    @

  show_widgets: (dash)->
    @show_content
      title: dash.get('title')
      subtitle: ''
      view: new WidgetLayout
        model: dash

  onShow: () ->
    headerview = new DashboardHeaderView
      model: App.current_user
    @header.show(headerview)

    sideview = new DashboardSideView
      collection: @collection
    @side.show(sideview)

    toolview = new DashboardToolView()
    @tool.show(toolview)

    footerview = new DashboardFooterView()
    @footer.show(footerview)

    App.AdminLTE_lib.reset()

# ----------------------------------

module.exports = DashboardLayout
    