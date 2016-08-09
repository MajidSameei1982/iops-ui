Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class ReportWidgetView extends IOPSWidgetView
  template:   "widgets/report_widget"
  classID: 'airport_widget'
  className: 'widget-outer box box-primary airport_widget'
  ui:
    site: 'select#site'
    wtitle: '.box-title'
    display: '.display'
    content: '.content'

  @layout:
    sx: 5
    sy: 6

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if !@IsUpdatingSettings && !@IsPageLoading
      return null

    @IsPageLoading = false
    @IsUpdatingSettings = false

    s = @model.get("settings")
    @site_code = null
    @site = OPCManager.get_site(s.site)
    if @site?
      @site_code = @site.get('code')
    code = if @site_code? then @site_code else '...'
    @ui.wtitle.html("#{code}: Reports")

    @ui.display.empty()
    url = "#{@rurl}/api/reports?airport=#{@site_code}"
    if (@site_code?)
      $.ajax
        type: 'GET'
        #dataType: 'json'
        url: url
        success: (data)=>
          for r in data
            @ui.display.append("<div class='rlink'><a href='#{@rurl}#{r.ReportUrl}' target='_new'>#{r.ReportTitle}</a></div>")

  set_model: ()=>
    @IsUpdatingSettings = true

    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    @model.set("settings", s)

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    site = settings.site
    if !site? || site == ''
      @toggle_settings()
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @ui.site.on 'change', ()=>
      @set_model()
    if !@ui.site.val()? || @ui.site.val() == ''
      @toggle_settings()

  start:()->
    @rurl = App.config.report_server
    @update()
    
# ----------------------------------

window.ReportWidgetView = ReportWidgetView
module.exports = ReportWidgetView
