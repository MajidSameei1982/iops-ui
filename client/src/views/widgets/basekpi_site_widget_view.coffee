Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class BaseKpiSiteWidgetView extends IOPSWidgetView
  template:   "widgets/Basekpi_site_widget"
  classID: 'Basekpi_site_widget'
  className: 'widget-outer box box-primary Basekpi_site_widget'
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
          i++ #TBD add styles to table

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
    @videoRepresentation = $("<div id='kpisiteRep_#{@model.id}'><table style='width:100%''><tr><td><img src='kpi_down.jpg' height='89' width='138'></td></tr><tr><td><img src='kpi_up.jpg' height='89' width='138'></td></tr><tr><td><img src='kpi_up.jpg' height='89' width='138'></td></tr><tr><td><img src='kpi_down.jpg' height='89' width='138'></td></tr><tr><td><img src='kpi_neutral.jpg' height='89' width='138'></td></tr><tr>    <td><img src='kpi_neutral.jpg' height='89' width='138'></td></tr></table></div>")
    @rurl = App.config.report_server
    @update()
    @plotGraph()
# ----------------------------------

window.KpiSiteWidgetView = BaseKpiSiteWidgetView
module.exports = BaseKpiSiteWidgetView
