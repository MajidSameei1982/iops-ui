Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class PbbdetailWidgetView extends IOPSWidgetView
  template:   "widgets/pbb_detail_widget"
  classID: 'pbb_detail_widget'
  className: 'widget-outer box box-primary pbb_detail_widget'
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
    sx: 12
    sy: 8

  tags:
    #Grid Tags
    ###
    pbb_status :          'PBB.AIRCRAFTDOCKEDCALCULATION'
    pbb_autolevel :       'PBB.AUTOLEVELMODEFLAG'
    pbb_canopy:           'PBB.CANOPYDOWN'
    pbb_docktime:         'PBB.DOCKTIME'
    pbb_undocktime:       'PBB.UNDOCKTIME'
    ### 
    #Processing Tags

    pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
    pbb_has_warnings :  'Warning._HasWarnings'
    pbb_has_alarms :    'Alarm._HasAlarms'
    
  tagData = []
  tagConfig = []

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if !@IsUpdatingSettings && !@IsPageLoading
      return null

    @IsPageLoading = false
    @IsUpdatingSettings = false

    @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    
    if !@site_code? then return null

    s = @model.get("settings")
   
    if s? && !!s.site
      lbl = "#{@site_code}: Gate #{s.gate} - Overview"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      @kill_updates(@site_code)

      tags = []
      @tagData = []
      @tagConfig = []
      @tagConfig = @create_dynamic_elements(@el.parentNode.id, @classID, null, null, @site_code, s)
      @tagData = @tagConfig.TagData

      for tag, tagData of @tagData
        tags.push "#{@prefix}#{tagData.Tag}.Value"

      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"

      App.opc.add_tags @site_code, tags

      @opc =  App.opc.connections[@site_code]
      ref = s.layout

      # listen for updates
      @watch_updates(@site_code)
      @set_descriptions(true)

  # process data and update the view
  data_update: (data)=>
    @refresh_values()

    for tag, tagData of @tagData
      switch tagData.DataType.toLowerCase()
        when 'boolean'
          @render_row("dynamic_#{tag}", tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004, tagData.Parameters.Parm005)
        when 'float'
          @render_value_row("dynamic_#{tag}", tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm00)
        when 'value'
          @render_value_row("dynamic_#{tag}", tagData.Parameters.Parm001, tagData.Parameters.Parm002, tagData.Parameters.Parm003, tagData.Parameters.Parm004)
        #when 'byte' null
        #when 'int' null
        #when 'string' null
        #when 'double' null
        else null

    
    # PBB STATUS
    v = @get_bool(@vals.pbb_status)
    a = @get_bool(@vals.pbb_autolevel_mode)
    c = @get_bool(@vals.pbb_canopy)

    sq = @data_q(@tagData.pbb_status.Tag)
    @$("div.aircraft_img").toggleClass('docked', v==true && sq)

    auq = @data_q(@tagData.pbb_autolevel_mode.Tag)
    @$("div.autolevel_img").toggleClass('autolevel-on', a==true && auq)

    cq = @data_q(@tagData.pbb_canopy.Tag)
    @$("div.canopy_img").toggleClass('canopy-on', c==true && cq)

    if (@tagData.elvrot_rotunda_position_boolean?)
      e = @get_bool(@vals.elvrot_rotunda_position_boolean)
      eq = @data_q(@tagData.elvrot_rotunda_position_boolean.Tag)
      @$("div.elevating_img").toggleClass('down-position', e==true && eq)
 

    # ALARMS
    aq = @data_q(@tags.pbb_has_alarms)
    @ui.alarms.toggle(@get_bool(@vals.pbb_has_alarms)==true && aq)
    # WARNINGS
    wq = @data_q(@tags.pbb_has_warnings)
    @ui.warnings.toggle(@get_bool(@vals.pbb_has_warnings.Tag)==true && wq)
   
    
    # AUTOLEVELFAIL
    fq = @data_q(@tags.pbb_autolevelfail)
    show_alarms = (@get_bool(@vals.pbb_autolevelfail)==true && fq)
    @ui.alarms.toggle(show_alarms).toggleClass("blink",show_alarms)
    
     # DOCKTIME
    undockordocktimeun = if v && @vals.pbb_dock_time? && @vals.pbb_dock_time != '' then parseFloat(@vals.pbb_dock_time).toFixed(2) 
    else if  !v && @vals.pbb_undock_time? && @vals.pbb_undock_time != '' then parseFloat(@vals.pbb_undock_time).toFixed(2) else ' -- ' 
    el = @$('div.pbb_undockordocktime').html("#{undockordocktimeun} mins")
    @mark_bad_data @tagData.pbb_dock_time.Tag, el


    @set_descriptions()

  set_model: ()=>
    @IsUpdatingSettings = true

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
    @check_init_site()


  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.PbbdetailWidgetView = PbbdetailWidgetView
module.exports = PbbdetailWidgetView