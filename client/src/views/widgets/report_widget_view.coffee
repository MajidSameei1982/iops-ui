Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------

class ReportWidgetView extends IOPSWidgetView
  template:   "widgets/report_widget"
  className: 'widget-outer box box-primary'
  ui:
    site: 'select#site'
    wtitle: '.box-title'
    display: '.display'
    content: '.content'

  @layout:
    sx: 10
    sy: 6

  update: ()->
    s = @model.get("settings")
    @site_code = null
    @site = OPCManager.get_site(s.site)
    if @site?
      @site_code = @site.get('code')
    code = if @site_code? then @site_code else '...'
    @ui.wtitle.html("Reports for #{code}")
    #
    # CALL TO REPORT SERVER FOR LINKS
    #

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    @model.set("settings", s)

  onShow: ()->
    @ui.site.on 'change', ()=>
      @set_model()
    if !@ui.site.val()? || @ui.site.val() == ''
      @toggle_settings()

  start:()->
    @update()
    
# ----------------------------------

window.ReportWidgetView = ReportWidgetView
module.exports = ReportWidgetView
