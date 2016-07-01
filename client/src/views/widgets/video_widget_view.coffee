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
    console.log("enter function update")
    s = @model.get("settings")
    @site_code = null
    @site = OPCManager.get_site(s.site)
    if @site?
      @site_code = @site.get('code')
    code = if @site_code? then @site_code else '...'
    @ui.wtitle.html(" #{code}")

    console.log("update - call service")
    uri = 'http://test-reporting.iopsnow.com/api/VideoService'
    console.log uri
    img = document.getElementById('image')
    img.src = 'http://test-reporting.iopsnow.com/motion/image.jpg'
    $.ajax
      type: 'GET'
      dataType: 'json'
      url: uri
      success: (data) =>
        #reponse = $.parseJSON(data)
        console.log(data.length)
        for r in data#response
          console.log(r.fileDate)
          #add to list item
          xSelection = document.getElementById('videoFiles')
          xOption = document.createElement('option')
          xOption.text = formatItem(r)
          xOption.value = 'http://test-reporting.iopsnow.com/motion/' + formatItem2(r)
          xSelection.add(xOption)
    @set_descriptions()

  $(document).on('click', '.cmdVideoChange', ( ->
    console.log("clicked")
    e = document.getElementById('videoFiles')
    value = e.selectedOptions[0].value#e.options[e.selectedIndex].Value
    #text = e.options[e.selectedIndex].text
    if value.indexOf('mp4') != -1
      document.getElementById('videoRep').innerHTML = '<video height="600" width="800" autoplay loop ><source src="' + value + '" type="video/mp4">Your browser does not support HTML5 video.</video>'
      document.getElementById('imageRep').hidden = true
      document.getElementById('videoRep').hidden = false
    else
      document.getElementById('imageRep').hidden = false
      document.getElementById('videoRep').hidden = true
      img = document.getElementById('image')
      img.src = value
  ))

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

  onShow: ()->
    @ui.site.on 'change', ()=>
      @set_model()
    if !@ui.site.val()? || @ui.site.val() == ''
      @toggle_settings()

  start:()->
    @rurl = App.config.report_server
    @update()

# ----------------------------------

window.VideoWidgetView = VideoWidgetView
module.exports = VideoWidgetView
