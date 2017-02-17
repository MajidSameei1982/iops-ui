Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class ConfiggateWidgetView extends IOPSWidgetView
  template:   "widgets/config_gate_widget"
  classID: 'config_gate_widget'
  className: 'widget-outer box box-primary config_gate_widget'
  ui:
    display:        '#display'
    settings:       '#settings'
    wtitle:         'h3.box-title'
  
  @layout:
    sx: 4
    sy: 5

  tags:
    cooling_pt:  'PCA.SET_COOLINGPOINT'
    heating_pt:  'PCA.SET_HEATINGPOINT'
    cooling_tm:  'PCA.SET_COOLINGPOINT_TIMER'
    heating_tm:  'PCA.SET_HEATINGPOINT_TIMER'
    pca_perfect_tm: 'PCA.Set_PerfectHookupTime'
    gpu_perfect_tm: 'GPU.Set_PerfectHookupTime'
    pbb_perfect_tm: 'PBB.Set_PerfectHookupTime'

  base_tags: []

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if @IsUpdatingSettings || @IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    
    if !@site_code? then return null

    if s? && !!s.site
      lbl = "#{@site_code}: Gate Configurations"
      @ui.wtitle.html(lbl)

      # stop listening for updates
      #@kill_updates(@site_code)

      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"

      App.opc.add_tags @site_code, tags
      @opc =  App.opc.connections[@site_code]
      App.vent.on "opc:data:#{@site_code}", @data_update
      #@watch_updates(@site_code)

  # process data and update the view
  data_update: (data)=>
    @refresh_values()
 
    # kill after first read - no need to poll any more
    if data? && data.tags? && data.tags.length > 0
      cool = 0
      heat = 0
      cool_tm = 0
      heat_tm = 0
      pca_ph_tm = 0
      gpu_ph_tm = 0
      pbb_ph_tm = 0

      for t in data.tags
        if t.name.endsWith(@tags.cooling_pt)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          cool = if v > cool then v else cool
        if t.name.endsWith(@tags.cooling_tm)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          cool_tm = if v > cool_tm then v else cool_tm
        if t.name.endsWith(@tags.heating_pt)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          heat = if v > heat then v else heat
        if t.name.endsWith(@tags.heating_tm)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          heat_tm = if v > heat_tm then v else heat_tm
        if t.name.endsWith(@tags.pca_perfect_tm)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          pca_ph_tm = if v > pca_ph_tm then v else pca_ph_tm
        if t.name.endsWith(@tags.gpu_perfect_tm)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          gpu_ph_tm = if v > gpu_ph_tm then v else gpu_ph_tm
        if t.name.endsWith(@tags.pbb_perfect_tm)
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          pbb_ph_tm = if v > pbb_ph_tm then v else pbb_ph_tm
      @$('input#cool_set').val(cool)
      @$('input#heat_set').val(heat)
      @$('input#cool_set_tm').val(cool_tm)
      @$('input#heat_set_tm').val(heat_tm)
      @$('input#pca_perfect_tm').val(pca_ph_tm)
      @$('input#gpu_perfect_tm').val(gpu_ph_tm)
      @$('input#pbb_perfect_tm').val(pbb_ph_tm)
    @kill_updates(@site_code)

  set_points: (e)=>
    e.preventDefault()
    if @site?
      @opc.set_value("#{@prefix}#{@tags.cooling_pt}.Value", @$('input#cool_set').val())
      @opc.set_value("#{@prefix}#{@tags.heating_pt}.Value", @$('input#heat_set').val())
      @opc.set_value("#{@prefix}#{@tags.cooling_tm}.Value", @$('input#cool_set_tm').val())
      @opc.set_value("#{@prefix}#{@tags.heating_tm}.Value", @$('input#heat_set_tm').val())
      @opc.set_value("#{@prefix}#{@tags.pca_perfect_tm}.Value", @$('input#pca_perfect_tm').val())
      @opc.set_value("#{@prefix}#{@tags.gpu_perfect_tm}.Value", @$('input#gpu_perfect_tm').val())
      @opc.set_value("#{@prefix}#{@tags.pbb_perfect_tm}.Value", @$('input#pbb_perfect_tm').val())
    
  set_model: ()=>

    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @site_code = OPCManager.get_site_code(s.site)
    s.terminal = @$('#terminal').val()
    s.zone = @$('#zone').val()
    s.gate = @$('#gate').val()
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)
    @IsUpdatingSettings = @settings_visible
    if !@settings_visible
      @IsPageLoading = false
      @update()

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
    else
      @IsPageLoading = false

    @site_code = OPCManager.get_site_code(settings.site)
    if @site_code?
      @site_refresh = ((OPCManager.get_site(settings.site).get("refreshRate") * 1000) * 3)
      #@watch_updates(@site_code)

    @$('#set_pca_points').click @set_points
    @check_init_site()

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    
# ----------------------------------

window.ConfiggateWidgetView = ConfiggateWidgetView
module.exports = ConfiggateWidgetView
