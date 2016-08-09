Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class VideoWidgetView extends IOPSWidgetView
  template:   "widgets/video_widget"
  classID: 'video_widget'
  className: 'widget-outer box box-primary video_widget'
  ui:   
    site:           'select#site'
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    
  @layout:
    sx: 15
    sy: 18

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
    
    lbl = "#{code}: Video System Monitoring"
    @ui.wtitle.html(lbl)

  getImagery: ()->
    uri = "#{@rurl}/api/VideoService"
    img = $("#image_#{@model.id}")
    img.src = "#{@rurl}/motion/image.jpg"
    $.ajax
      type: 'GET'
      dataType: 'json'
      url: uri
      success: (data) =>
        for r in data#response
          console.log(r.fileDate)
          #add to list item
          xSelection = $("#videoFiles_#{@model.id}")
          ovalue = "#{@rurl}/motion/" + formatItem2(r)
          @selector.append($("<option></option>").attr("value",ovalue).text(formatItem(r)));

  #format item
  formatItem = (item) ->
    item.Id + ': -- :' + item.fileName + ': -- :' + item.fileDate

  #format item 2
  formatItem2 = (item) ->
    item.fileName

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
    @videoFilesSelectorId = "#videoFiles_#{@model.id}"
    @ui.display.empty()
    @videoRepresentation = $("<div id='videoRep_#{@model.id}'></div>")
    @imageRepresentation = $("<div id='imageRep_#{@model.id}' ><img id='image_#{@model.id}' src='http://192.168.1.3:8008' height='600' width='800'></div>")
    @selector = $("<select id='videoFiles_#{@model.id}'><option value='#{@rurl}/motion/image.jpg' selected='selected'>test image</option><option value='http://192.168.1.3:8008'>test stream Lab</option></select>")
    @button = $("<button id='cmdVideoChange_#{@model.id}'>Click to change content!</button>")
    @button.click =>
        drpdown = $("#videoFiles_#{@model.id} option:selected")
        value = drpdown.val()
        console.log value
        if value.indexOf('mp4') != -1
          $("#videoRep_#{@model.id}").html("<video height='600' width='800' autoplay controls loop ><source src=" + value + " type='video/mp4'>Your browser does not support HTML5 video.</video>");
          $("#imageRep_#{@model.id}").hide()
          $("#videoRep_#{@model.id}").show()
        else
          $("#image_#{@model.id}").attr('src',value)
          $("#imageRep_#{@model.id}").show()
          $("#videoRep_#{@model.id}").hide()
          # end of button click handler
    @ui.display.append(@videoRepresentation)
    @ui.display.append(@imageRepresentation)
    @ui.display.append(@selector)
    @ui.display.append(@button)
    @getImagery()
    $("#image_#{@model.id}").attr('src',"#{@rurl}/motion/image.jpg")
    @update()

# ----------------------------------

window.VideoWidgetView = VideoWidgetView
module.exports = VideoWidgetView
