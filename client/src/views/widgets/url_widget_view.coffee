Marionette = require('marionette')
WidgetView = require('./widget_view')

# ----------------------------------

class UrlWidgetView extends WidgetView
  template:   "widgets/url_widget"
  className: 'widget-outer box box-primary'
  ui:
    header: '.header'
    body: '.body'
    content: '.content'
    settings: '.settings'
    iframe: 'iframe#iframe'
    title: 'input#title'
    url: 'input#url'
    wtitle: "h3.box-title"

  modelEvents:
    "change" : "update"

  update: ()->
    s = @model.get("settings")
    @ui.iframe.attr("src", s.url)
    @ui.wtitle.html("<i class='fa fa-link'></i> #{s.name}")

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    url = @ui.url.val().trim()
    if url.indexOf("http://") == -1 || url.indexOf("https://") == -1
      url = "http://" + url
    s.url = url
    s.name = @ui.title.val()
    @model.set("settings", s)

  onShow: ()->
    @ui.title.on "change", ()=>@set_model()
    @ui.url.on "change", ()=>@set_model()
    url = @model.get("settings").url
    if !url? || url == ''
      @toggle_settings()
    @update()
    
# ----------------------------------

module.exports = UrlWidgetView
