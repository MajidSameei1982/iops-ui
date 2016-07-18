Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class GpuWidgetView extends IOPSWidgetView
  template:   "widgets/gpu_widget"
  className: 'widget-outer box box-primary gpu_widget'
  ui:
    terminal:       'input#terminal'
    zone:           'input#zone'
    display_prefix: 'input#display_prefix'
    gate:           'input#gate'
    site:           'select#site'
    wtitle:         'h3.box-title'
    display:        '.display'
    content:        '.content'
    docked:         'i#docked'
    alarms:         'i#alarms'
    warnings:       'i#warnings'

  @layout:
    sx: 5
    sy: 10

  tags = []
  
  update: ()->
    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    s = @model.get("settings")
    
    if s? && !!s.site      
      # stop listening for updates
      @kill_updates(@site_code)

      tagConfig = null
      @tagData = null
      $('.gpu_widget #widgetData tbody').empty();
      tagConfig = new App.tagconfig {'gpu_widget'}, null, @site_code, s
      @tagData = tagConfig.TagData

      tags = []

      for tag, tagData of @tagData
        switch tagData.Element.Type
          when 'TableRow'
            if $(".gpu_widget #{tagData.Element.ParentID} td[id*='#{tag}']").length == 0
              $(".gpu_widget " + tagData.Element.ParentID).find("tbody:last").append("'<tr><td class='lbl' id='#{tag}_lbl'>&nbsp;</td><td id='#{tag}' class='val'>Loading...</td></tr>'")
          else null

        tags.push "#{@prefix}#{tagData.Tag}.Value"

      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      
      App.opc.add_tags @site_code, tags

      lbl = "#{@site_code}: Gate #{s.gate} - GPU"
      @ui.wtitle.html(lbl)
      @$('#display_label #txt').html(lbl)

      @opc =  App.opc.connections[@site_code]
      ref = s.layout

      # listen for updates
      @watch_updates(@site_code)
      @set_descriptions(true)

  # process data and update the view
  data_update: (data)=>
    @refresh_values()
    #@vals = {}
    #for tg of @tags
    #  @vals[tg] = @get_value(@tags[tg])
    
    for tag, tagData of @tagData
      #@vals[tag] =  @get_value(tagData.Tag)
      switch tagData.DataType.toLowerCase()
        when 'boolean'
          @render_row(tag, tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004, tagData.Parameters.Parm005)
        when 'float'
          @render_value_row(tag, tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004)
        when 'value'
          @render_value_row(tag, tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004)
        #when 'byte' null
        #when 'int' null
        #when 'string' null
        #when 'double' null
        else null

    # ALARMS
    aq = @data_q(@tags.pbb_has_alarms)
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms)==true && aq)

    # WARNINGS
    wq = @data_q(@tags.pbb_has_warnings)
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings)==true && wq)

    @set_descriptions()

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    s.terminal = @$('#terminal').val()
    s.zone = @$('#zone').val()
    s.gate = @$('#gate').val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    @draw_selectors(settings.terminal, settings.zone, settings.gate)

    @$('#site').on 'change', ()=>
      @draw_selectors()
      @set_model()
    
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code? then @watch_updates(@site_code)

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)

# ----------------------------------

window.GpuWidgetView = GpuWidgetView
module.exports = GpuWidgetView
