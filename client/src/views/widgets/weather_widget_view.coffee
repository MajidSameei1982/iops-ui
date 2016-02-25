Marionette = require('marionette')
WidgetView = require('../dashboard/widget_view')

# ----------------------------------

class WeatherWidgetView extends WidgetView
  template:   "widgets/weather_widget"
  className: 'widget-outer box box-primary weather'
  ui:
    display: '#display'
    title: 'input#title'
    location: 'input#location'
    wtitle: "h3.box-title"

  @layout:
    sx: 4
    sy: 6

  update: ()=>
    s = @model.get("settings")
    if s? && s.location? && s.location.trim() != ''
      loc = s.location.trim()
      $.simpleWeather
        location: loc
        woeid: ''
        unit: 'f'
        success: (w)=>
          html = """
            <h1><i class='weather icon-#{w.code}'></i> #{w.temp}&deg; #{w.units.temp}</h1>
            <div class='details'>
              <span class='location'><i class='fa fa-map-marker'></i> #{w.city}, #{w.region}</span>
              <span class='currently'>#{w.currently}</span>
              <span class='wind'><i class='fa fa-flag-o'></i> #{w.wind.direction} #{w.wind.speed} #{w.units.speed}</span>
            </div>
          """
          @ui.display.html(html)
          @ui.wtitle.html("Weather: #{w.city}, #{w.region}")

          if !@int
            @int = setInterval(@update,600000)

        error: (error)=>
          @ui.display.html("<p>#{error}</p>")
          @ui.wtitle.html("ERROR")
          if @int? then clearInterval(@int)


  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.location = @ui.location.val().trim()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    @ui.location.on "change", ()=>@set_model()
    location = @model.get("settings").location
    if !location? || location == ''
      @toggle_settings()

  onDestroy: ()=>
    if @int? then clearInterval(@int)

  start:()->
    @update()
    
# ----------------------------------

window.WeatherWidgetView = WeatherWidgetView
module.exports = WeatherWidgetView
