Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------

class KpiWidgetView extends IOPSWidgetView
  template:   "widgets/kpi_widget"
  className: 'widget-outer box box-primary'
  ui:
    site: 'select#site'
    wtitle: '.box-title'
    display: '.display'
    content: '.content'

  @layout:
    sx: 10
    sy: 10

  update: ()->
    s = @model.get("settings")
    @site_code = null
    @site = OPCManager.get_site(s.site)
    if @site?
      @site_code = @site.get('code')
    code = if @site_code? then @site_code else '...'
    @ui.wtitle.html("KPI for #{code}")

    @ui.display.empty()
    url = "#{@rurl}/api/KPI"#?airport=#{@site_code}"
    if (@site_code?)
      $.ajax
        type: 'GET'
        #dataType: 'json'
        url: url
        success: (data)=>
          #for r in data
          #  @ui.display.append("<div class='rlink'><a href='#{@rurl}#{r.ReportUrl}' target='_new'>#{r.ReportTitle}</a></div>")
          new (Morris.Line)(
            element: 'lineitemchart'
            data: data
            xkey: 'TimeStamp'
            ykeys: [ 'Value' ]
            labels: [ 'Value' ])

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
    @rurl = App.config.report_server
    @update()
    
# ----------------------------------

window.KpiWidgetView = KpiWidgetView
module.exports = KpiWidgetView
