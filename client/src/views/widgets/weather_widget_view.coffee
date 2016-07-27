Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')

# ----------------------------------
class WeatherWidgetView extends WidgetView
  template:   "widgets/weather_widget"
  classID: 'weather_widget'
  className: 'widget-outer box box-primary weather_widget'
  ui:
    display: '#display'
    title: 'input#title'
    site: '#site'
    wtitle: "h3.box-title"

  @layout:
    sx: 6
    sy: 8

  update: ()=>
    @refresh_data()

  refresh_data: =>
    s = @model.get("settings")
    if s? && s.site?
      @site = OPCManager.get_site(s.site)
      @ui.wtitle.html("Weather for #{@site.get('code')}")
      if site?
        @site.fetch
          success:(data)=>
            ss = @site.get('settings')

            is_stale = false
            if ss.weather_refresh?
              is_stale = ((new Date) - (new Date(ss.weather_refresh))) > @ONE_HOUR

            if !ss.weather_refresh? || is_stale
              $.ajax
                dataType: "jsonp"
                url: "https://api.forecast.io/forecast/#{App.config.weather_api_key}/#{ss.lat},#{ss.lon}"
                success: (data)=>
                  settings = _.clone(@site.get('settings'))
                  settings.weather_refresh = new Date()
                  settings.weather_data = data
                  @site.set('settings', settings)
                  @site.save()
                  @update_weather(settings.weather_data)
            else
              @update_weather(ss.weather_data)
    else
      @site = null

  update_weather:(data)=>
    @skycons.remove(@$('#wicon')[0])
    @skycons.add(@$('#wicon')[0], data.currently.icon)
    @skycons.play()
    temp = Math.round(data.currently.temperature)
    feels = Math.round(data.currently.apparentTemperature)
    @$('#temp').html("#{temp}&deg;<sup>F</sup>")
    summ = data.currently.summary
    @$('#summ').html("#{summ}<br/>Feels like #{feels}&deg;")
    forecast = data.daily.summary
    @$('#forecast').html(forecast)
    precip = Math.round(data.currently.precipProbability * 100)
    @$('#precip .val').html("#{precip}<sup>%</sup>")
    humid = Math.round(data.currently.humidity * 100)
    @$('#humid .val').html("#{humid}<sup>%</sup>")
    cover = Math.round(data.currently.cloudCover * 100)
    @$('#cover .val').html("#{cover}<sup>%</sup>")
    @$('#weather').show()
    @$('#loading').hide()

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    @HOUR = 60 * 60 * 1000
    @timer = setInterval(@refresh_data, @HOUR/4)
    @skycons = new Skycons()
    @$('#site').on 'change', ()=>
      @set_model()
    s = @model.get("settings")
    if !s? || !s.site?
      @toggle_settings()

  onDestroy: ()=>
    if @timer then clearInterval(@timer)
    if @int? then clearInterval(@int)

  start:()->
    @update()
    
# ----------------------------------

window.WeatherWidgetView = WeatherWidgetView
module.exports = WeatherWidgetView
