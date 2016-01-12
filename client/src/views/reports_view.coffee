Marionette = require('marionette')
UIUtils = require('../common/uiutils')
Session = require('../models/session')

# ----------------------------------

class ReportsView extends Marionette.ItemView
  template: "reports"

  onShow: ()->
    @$('#reportViewer1').telerik_ReportViewer
      serviceUrl: "http://testtelerik.iopsnow.com/api/reports/" # need to define running REST API
      templateUrl: '/ReportViewer/telerikReportViewerTemplate.html'
      reportSource:
        #report: "reportx.trdx", parameters: { CultureID: "en" }
        report: "TelerikReportingREST.MyReportBook, TelerikReportingREST, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" 

  onDomRefresh: () ->
    #$('body').addClass('login-page')

# ----------------------------------

module.exports = ReportsView
    