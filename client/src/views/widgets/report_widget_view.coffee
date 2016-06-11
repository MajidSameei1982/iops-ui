Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------

class ReportWidgetView extends IOPSWidgetView
  template:   "widgets/report_widget"
  className: 'widget-outer box box-primary'
  ui:
    iframe: 'iframe#iframe'
    title: 'input#title'
    url: 'input#url'
    wtitle: "h3.box-title"

  @layout:
    sx: 10
    sy: 6

  update: ()->
    # s = @model.get("settings")
    # @ui.iframe.attr("src", s.url)
    #@ui.wtitle.html("<i class='fa fa-link'></i> #{s.name}")
    #
    # CALL TO REPORT SERVER FOR LINKS
    #

  set_model: ()=>
    # s = _.clone(@model.get("settings"))
    # url = @ui.url.val().trim()
    # if url.indexOf("http://") == -1 && url.indexOf("https://") == -1
    #   url = "http://#{url}"
    # s.url = url
    # s.name = @ui.title.val()
    # @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.iframe.toggle(!@settings_visible)

  onShow: ()->
    # @ui.title.on "change", ()=>@set_model()
    # @ui.url.on "change", ()=>@set_model()
    # url = @model.get("settings").url
    # if !url? || url == '' then @toggle_settings()

  start:()->
    @update()
    
# ----------------------------------

window.ReportWidgetView = ReportWidgetView
module.exports = ReportWidgetView
