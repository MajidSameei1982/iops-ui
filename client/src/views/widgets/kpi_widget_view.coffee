Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class KpiWidgetView extends IOPSWidgetView
  template:   "widgets/kpi_widget"
  classID: 'kpi_widget'
  className: 'widget-outer box box-primary kpi_widget'
  ui:   
    site:           'select#site'
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'

  @layout:
    sx: 10
    sy: 10

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Need to redraw plot on all events
    @plotGraph()

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
    lbl = "#{code}: KPI"
    @ui.wtitle.html(lbl)

  plotGraph: ()->
    @ui.display.empty()
    @modelIdVal = "#{@model.id}"
    @plotheader = $("<div id='plotheader_#{@model.id}' style='height:50px;'></div>")
    @plotArea = "<div id='plotplaceholder_#{@model.id}' style='width:100%; height:250px'></div>"
    @plotTooltip = "<div id='flotTip_#{@model.id}' style='position:fixed;'></div>"
    @ui.display.append(@plotheader)
    @ui.display.append(@plotArea)
    @ui.display.append(@plotTooltip)
    chartOptions = 
      series:
        lines: show: true
        points: show: true
      grid: hoverable: true
      tooltip: true
      tooltipOpts:
        content: 'X: %x<br>Y: %y.2'
        dateFormat: '%Y/%m/%d %H:%M:%S'
        shifts:
          x: 10
          y: 20
        defaultTheme: true
      xaxis:
        show: true
        mode: 'time'
        timeformat: '%Y/%m/%d'
        minTickSize: [
          1
          'day'
        ]
    parameters = 'DAL|Term1_Zone1|Gate12|PCA|PCAOnTime'
    url = "#{@rurl}/api/DBKPILiveDateBased?parameters=#{parameters}"
    plotareaid = "#plotplaceholder_#{@model.id}"
    $.ajax
      url: url
      type: 'GET'
      dataType: 'json'
      success: (result) ->
        d3 = []
        i = 0
        len = result.length
        while i < len
          d = new Date(result[i].Index)
          ticks = d.getTime()
          d3.push [
            ticks
            result[i].Value
          ]
          i++
        $.plot $(plotareaid) , [ d3 ], chartOptions

    @plotheader.html("Plot for #{parameters}")
    setTimeout 'plotGraph()', 300000
    # refresh every 5 mins
    return

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  set_model: ()=>
    @IsUpdatingSettings = true

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
    @plotGraph()
# ----------------------------------

window.KpiWidgetView = KpiWidgetView
module.exports = KpiWidgetView
