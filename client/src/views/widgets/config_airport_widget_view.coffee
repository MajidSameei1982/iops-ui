Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------
class ConfigairportWidgetView extends IOPSWidgetView
  template:   "widgets/config_airport_widget"
  classID: 'config_airport_widget'
  className: 'widget-outer box box-primary config_airport_widget'
  ui:
    display:        '#display'
    settings:       '#settings'
    wtitle:         'h3.box-title'
  
  @layout:
    sx: 4
    sy: 5

  tags:
    cooling_pt:  'PCA.SET_COOLINGPOINT.Value'
    heating_pt:  'PCA.SET_HEATINGPOINT.Value'
    cooling_tm:  'PCA.SET_COOLINGPOINT_TIMER.Value'
    heating_tm:  'PCA.SET_HEATINGPOINT_TIMER.Value'
    pca_perfect_tm: 'PCA.SET_HOOKUPTIME.Value'
    gpu_perfect_tm: 'GPU.SET_HOOKUPTIME.Value'
    pbb_perfect_tm: 'PBB.SET_HOOKUPTIME.Value'

  base_tags: []

  IsUpdatingSettings: false
  IsPageLoading: true

  update: ()->
    # Ignore all calls except those from startup and Update
    if !@IsUpdatingSettings && !@IsPageLoading
      return null

    s = @update_settings
      prefix: 'Airport.#{@site_code}.'
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'

    if !@site_code? then return null

    if s? && !!s.site

      # stop listening for updates
      @kill_updates(@site_code)

      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

      lbl = "#{@site_code}: Airport Configurations"
      @ui.wtitle.html(lbl)

    # s = @update_settings
    #   prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.'
    #   cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    @base_tags = []
    if @site?
      settings = @site.get('settings') || {}
      terminals = settings.zones || {}
      for t of terminals
        term = terminals[t]
        for z of term
          zn = term[z]
          for g of zn
            pre = "#{@prefix}Term#{t}.Zone#{z}.Gate#{g}."
            for tg of @tags
              tag = @tags[tg]
              @base_tags.push "#{pre}#{tag}"
    if @base_tags.length > 0
      App.opc.add_tags @site_code, @base_tags
      @opc =  App.opc.connections[@site_code]
      @watch_updates(@site_code)

      
  data_update: (data)=>
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
        if t.name.endsWith("PCA.SET_COOLINGPOINT")
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          cool = if v > cool then v else cool
        if t.name.endsWith("PCA.SET_COOLINGPOINT_TIMER")
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          cool_tm = if v > cool_tm then v else cool_tm
        if t.name.endsWith("PCA.SET_HEATINGPOINT")
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          heat = if v > heat then v else heat
        if t.name.endsWith("PCA.SET_HEATINGPOINT_TIMER")
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          heat_tm = if v > heat_tm then v else heat_tm
        if t.name.endsWith("PCA.SET_HOOKUPTIME")
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          pca_ph_tm = if v > pca_ph_tm then v else pca_ph_tm
        if t.name.endsWith("GPU.SET_HOOKUPTIME")
          v = t.props[0].val
          v = if v? && v != '' then parseFloat(v) else 0
          gpu_ph_tm = if v > gpu_ph_tm then v else gpu_ph_tm
        if t.name.endsWith("PBB.SET_HOOKUPTIMETIME")
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
      settings = @site.get('settings') || {}
      terminals = settings.zones || {}
      for t of terminals
        term = terminals[t]
        for z of term
          zn = term[z]
          for g of zn
            pre = "#{@prefix}.Term#{t}.Zone#{z}.Gate#{g}."
            @opc.set_value("#{pre}#{@tags.cooling_pt}", @$('input#cool_set').val())
            @opc.set_value("#{pre}#{@tags.heating_pt}", @$('input#heat_set').val())
            @opc.set_value("#{pre}#{@tags.cooling_tm}", @$('input#cool_set_tm').val())
            @opc.set_value("#{pre}#{@tags.heating_tm}", @$('input#heat_set_tm').val())
            @opc.set_value("#{pre}#{@tags.pca_perfect_tm}", @$('input#pca_perfect_tm').val())
            @opc.set_value("#{pre}#{@tags.gpu_perfect_tm}", @$('input#gpu_perfect_tm').val())
            @opc.set_value("#{pre}#{@tags.pbb_perfect_tm}", @$('input#pbb_perfect_tm').val())
    
  set_model: ()=>
    @IsUpdatingSettings = true

    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
    @site_code = OPCManager.get_site_code(s.site)
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    settings = @model.get('settings')
    settings || settings = {}
    site = settings.site
    if !site? || site == ''
      @toggle_settings()
    @draw_selectors(settings.terminal, settings.zone, settings.gate)
    
    @$('#site').on 'change', ()=>
      @set_model()
    @$('#set_pca_points').click @set_points
    @check_init_site()

    
  onDestroy: (arg1, arg2) ->
    # be sure to remove listeners
    @kill_updates(@site_code)
    
  start:()->
    @update()

# ----------------------------------

window.ConfigairportWidgetView = ConfigairportWidgetView
module.exports = ConfigairportWidgetView
