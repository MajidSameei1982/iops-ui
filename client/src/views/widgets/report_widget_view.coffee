Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class ReportWidgetView extends IOPSWidgetView
  template:   "widgets/report_widget"
  classID: 'report_widget'
  className: 'widget-outer box box-primary report_widget'
  ui:
    site: 'select#site'
    wtitle: '.box-title'
    display: '.display'
    content: '.content'

  @layout:
    sx: 5
    sy: 6

  tags:
    #Processing Tags
    has_alarms :    'Alarm._HasAlarms'

  tagData = []
  tagConfig = []
 
  site_refresh: 50000

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    if s? && !!s.site
      lbl = "#{@site_code}: Reports"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      @kill_updates(@site_code)

      tags = []
      #@tagData = []
      #@tagConfig = []
      #@tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, s)
      #@tagData = @tagConfig.TagData

      #for tag, tagData of @tagData
      #  tags.push "#{@prefix}#{tagData.Tag}.Value"

      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"

      App.opc.add_tags @site_code, tags

      @opc =  App.opc.connections[@site_code]

      # listen for updates
      @watch_updates(@site_code)
      #@set_descriptions(true)
      @start_heartbeat()

      @ui.wtitle.html("#{@site_code}: Reports")

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

  # process data and update the view
  data_update: (data)=>
    elementPrefix = "li##{@el.parentNode.id} .#{@classID} "
    s = @model.get("settings")
    return if !s? || !s.site? || s.site.length == 0
    @beat_time = new Date().getTime() + @site_refresh
	
	#Process Future Tags Here
  set_model: ()=>

    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    @site_code = OPCManager.get_site_code(s.site)
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if @settings_visible
      #@kill_updates(@site_code)
      if @heartbeat_timer? && @heartbeat_timer > 0
        window.clearInterval(@heartbeat_timer)
    else
      @IsPageLoading = false
      @update()

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @ui.site.on 'change', ()=>
      @set_model()

    site = settings.site
    if !site? || site == ''
      @toggle_settings()
    else
      @IsPageLoading = false

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code?
      @site_refresh = ((OPCManager.get_site(settings.site).get("refreshRate") * 1000) * 3)
      @watch_updates(@site_code)

    @check_init_site()

  start:()->
    @rurl = App.config.report_server
    @update()

  start_heartbeat: ()=>
    @beat_time = new Date().getTime() + @site_refresh
    $("##{@el.parentNode.id} .widget-outer").toggleClass("no-heartbeat", false)
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @heartbeat_timer = window.setInterval((=>
      @check_heartbeat @el.parentNode.id
      return
    ), @site_refresh) 

  check_heartbeat: (widget_id)=>
    @curTime = new Date().getTime()
    $("##{widget_id} .widget-outer").toggleClass("no-heartbeat", (@curTime > @beat_time))

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    if @heartbeat_timer? && @heartbeat_timer > 0
      window.clearInterval(@heartbeat_timer)
    @kill_updates(@site_code)
    
# ----------------------------------

window.ReportWidgetView = ReportWidgetView
module.exports = ReportWidgetView
