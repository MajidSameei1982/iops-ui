Marionette = require('marionette')
DashboardHeaderView = require('./headerview')
DashboardSideView = require('./sideview')
DashboardToolView = require('./toolview')
DashboardFooterView = require('./footerview')
DashboardContentView = require('./contentview')

# ----------------------------------

class DashboardLayout extends Marionette.LayoutView
  template: "dashboard/layout"
  regions:
    header: "#header-region"
    side: "#side-region"
    tool: "#tool-region"
    footer: "#footer-region"
    content: "#content-region"

  onShow: () ->
    headerview = new DashboardHeaderView()
    @header.show(headerview)

    sideview = new DashboardSideView()
    @side.show(sideview)

    toolview = new DashboardToolView()
    @tool.show(toolview)

    footerview = new DashboardFooterView()
    @footer.show(footerview)

    # pick a dashboard here?
    contentview = new DashboardContentView()
    contentview.title = "Main Dashboard"
    contentview.subtitle = "This is an example dashboard"
    @content.show(contentview)

    App.AdminLTE_lib.reset()

# ----------------------------------

module.exports = DashboardLayout
    