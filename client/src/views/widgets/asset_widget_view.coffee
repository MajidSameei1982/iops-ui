Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class AssetWidgetView extends IOPSWidgetView
  template:   "widgets/asset_widget"
  classID: 'asset_widget'
  className: 'widget-outer box box-primary asset_widget'
  ui:
    iframe: 'iframe#iframe'
    title: 'input#title'
    url: 'input#url'
    wtitle: "h3.box-title"

  @layout:
    sx: 10
    sy: 6

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if !@IsUpdatingSettings && !@IsPageLoading
      return null

    @IsPageLoading = false
    @IsUpdatingSettings = false

    lbl = "#{@site_code}: Asset"
    @ui.wtitle.html(lbl)

    # s = @model.get("settings")
    # @ui.iframe.attr("src", s.url)
    #@ui.wtitle.html("<i class='fa fa-link'></i> #{s.name}")

  set_model: ()=>
    @IsUpdatingSettings = true

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

  onGridster: ()->
    m = @$("#map")
    w = m.width()
    h = m.height()
    m.width(w)
    m.height(h)
    map = L.map('map').setView([29.987772,-95.350803], 16)
    L.esri.basemapLayer('Imagery').addTo(map)

  start:()->
    @update()
    
# ----------------------------------

window.AssetWidgetView = AssetWidgetView
module.exports = AssetWidgetView
