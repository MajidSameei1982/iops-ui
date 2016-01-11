Marionette = require('marionette')
UIUtils = require('../common/uiutils')
Session = require('../models/session')

# ----------------------------------

class ReportsView extends Marionette.ItemView
  template: "reports"

  onShow: ()->
    @$('#reportViewer1').telerik_ReportViewer
      serviceUrl: "http://localhost:9213/api/reports/" # need to define running REST API
      templateUrl: '/ReportViewer/telerikReportViewerTemplate.html'
      reportSource:
        report: "Telerik.Reporting.Examples.CSharp.ProductCatalog, CSharp.ReportLibrary", parameters: { CultureID: "en" }

  onDomRefresh: () ->
    #$('body').addClass('login-page')

# ----------------------------------

module.exports = ReportsView
    