Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------

class VideoWidgetView extends IOPSWidgetView
  template:   "widgets/video_widget"
  className: 'widget-outer box box-primary'
  ui:   
    site:           'select#site'
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    
  @layout:
    sx: 15
    sy: 18

  update: ()->
    s = @model.get("settings")
    @site_code = null
    @site = OPCManager.get_site(s.site)
    if @site?
      @site_code = @site.get('code')
    code = if @site_code? then @site_code else '...'
    @ui.wtitle.html(" #{code}")
    @set_descriptions()

  #@button.onclick = () ->
  #  console.log("clicked")
  #  @modelIdVal = "#{@model.id}"
  #  slecId = "#videoFiles_" + @modelIdVal
  #  e = $(slecId)
  #  value = e.selectedOptions[0].value
  #  if value.indexOf('mp4') != -1
  #    document.getElementById("videoRep_#{@model.id}").innerHTML = '<video height="600" width="800" autoplay controls loop ><source src="' + value + '" type="video/mp4">Your browser does not support HTML5 video.</video>'
  #    document.getElementById("imageRep_#{@model.id}").hidden = true
  #    document.getElementById("videoRep_#{@model.id}").hidden = false
  #  else
  #    document.getElementById("imageRep_#{@model.id}").hidden = false
  #    document.getElementById("videoRep_#{@model.id}").hidden = true
  #    img = document.getElementById("image_#{@model.id}")
  #    img.src = value

  renderImagery: ()->
    uri = "#{@rurl}/api/VideoService"
    console.log uri
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
          @selector.append($("<option></option>").attr("value",formatItem(r)).text(ovalue)); 
  
  #$("#buttondiv_#{@model.id}").on 'click', "#cmdVideoChange_#{@model.id}", ->
  #  console.log @value
  #  return
  # click handler for button
  #changeImage: () ->
  #@button.onclick = () ->
  #$("#cmdVideoChange_#{@model.id}").click =>
  #$(document).on('click', @buttonClassSelector, ( ->
  #$("#cmdVideoChange_#{@model.id}").onclick = () =>
  #  console.log("clicked")
  #  @modelIdVal = "#{@model.id}"
  #  slecId = "#videoFiles_" + @modelIdVal
  #  e = $(slecId)
  #  value = e.selectedOptions[0].value
  #  if value.indexOf('mp4') != -1
  #    document.getElementById("videoRep_#{@model.id}").innerHTML = '<video height="600" width="800" autoplay controls loop ><source src="' + value + '" type="video/mp4">Your browser does not support HTML5 video.</video>'
  #    document.getElementById("imageRep_#{@model.id}").hidden = true
  #    document.getElementById("videoRep_#{@model.id}").hidden = false
  #  else
  #    document.getElementById("imageRep_#{@model.id}").hidden = false
  #    document.getElementById("videoRep_#{@model.id}").hidden = true
  #    img = document.getElementById("image_#{@model.id}")
  #    img.src = value

  #format item
  formatItem = (item) ->
    item.Id + ': -- :' + item.fileName + ': -- :' + item.fileDate

  #format item 2
  formatItem2 = (item) ->
    item.fileName

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @ui.site.val()
    @model.set("settings", s)
    @renderImagery()

  onShow: ()->
    @ui.site.on 'change', ()=>
      @set_model()
    if !@ui.site.val()? || @ui.site.val() == ''
      @toggle_settings()

  start:()->
    @rurl = App.config.report_server
    @buttonClassSelector = "#cmdVideoChange_#{@model.id}"
    @videoFilesSelectorId = "#videoFiles_#{@model.id}"
    @ui.display.empty()
    @videoRepresentation = $("<div id='videoRep_#{@model.id}'></div>")
    @imageRepresentation = $("<div id='imageRep_#{@model.id}' ><img id='image_#{@model.id}' src='http://192.168.1.3:8008' height='600' width='800'></div>")
    @selector = $("<select id='videoFiles_#{@model.id}'><option value='http://192.168.1.3:8008' selected='selected'>test stream Lab</option><option value='#{@rurl}/motion/image.jpg'>test image</option></select>")
    @button = $("<div id='buttondiv_#{@model.id}'><button id='cmdVideoChange_#{@model.id}'>Click to change content!</button></div>")
    @ui.display.append(@videoRepresentation)
    @ui.display.append(@imageRepresentation)
    @ui.display.append(@selector)
    @ui.display.append(@button)
    @update()

# ----------------------------------

window.VideoWidgetView = VideoWidgetView
module.exports = VideoWidgetView
