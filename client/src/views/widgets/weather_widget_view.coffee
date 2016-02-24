Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')

# ----------------------------------

class WeatherWidgetView extends WidgetView
  template:   "widgets/weather_widget"
  className: 'widget-outer box box-primary'
  ui:
    display: '#display'
    title: 'input#title'
    zip: 'input#zip'
    wtitle: "h3.box-title"

  @layout:
    sx: 3
    sy: 8

  update: ()->
    s = @model.get("settings")
    state = ""
    if s.name? && s.name != ''
      parts = s.name.split(',')
      if parts? && parts.length > 0
        state = parts[parts.length-1].trim()
        city = parts[0].trim()
    img = """
      <span style="display: block !important; width: 100%; text-align: center; font-family: sans-serif; font-size: 12px;">
        <a href="http://www.wunderground.com/cgi-bin/findweather/getForecast?query=zmw:#{s.zip}.1.99999&bannertypeclick=wu_travel_jet1" target="_blank">
        <img src="http://weathersticker.wunderground.com/weathersticker/cgi-bin/banner/ban/wxBanner?bannertype=wu_travel_jet1&airportcode=CID&ForcedCity=#{city}&ForcedState=#{state}&zip=#{s.zip}&language=EN" 
          alt="Find more about Weather" style='width:100%;' />
        </a>
      </span>
    """
    @ui.display.html(img)
    @ui.wtitle.html("#{s.name}")

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.zip = @ui.zip.val().trim()
    s.name = @ui.title.val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    @ui.title.on "change", ()=>@set_model()
    @ui.zip.on "change", ()=>@set_model()
    zip = @model.get("settings").zip
    if !zip? || zip == ''
      @toggle_settings()

  start:()->
    @update()
    
# ----------------------------------

window.WeatherWidgetView = WeatherWidgetView
module.exports = WeatherWidgetView
