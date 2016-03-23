Marionette = require('marionette')
IOPSWidgetView = require('./iops_widget_view')

# ----------------------------------

class ConfigWidgetView extends IOPSWidgetView
  template:   "widgets/config_widget"
  className: 'widget-outer box box-primary gate_widget'
  ui:
    display:        '#display'
    settings:       '#settings'
  
  @layout:
    sx: 4
    sy: 5

  tags:
    cooling_pt:  'PCA.SET_COOLINGPOINT.Value'
    heating_pt:  'PCA.SET_HEATINGPOINT.Value'
    cooling_tm:  'PCA.SET_COOLINGPOINT_TIMER.Value'
    heating_tm:  'PCA.SET_HEATINGPOINT_TIMER.Value'

  base_tags: []
    
  update: ()->
    if @site_code? then @kill_updates(@site_code)
    s = @model.get("settings")
   
    if s? && !!s.site
      @site = OPCManager.get_site(s.site)
      @site_code = @site.get('code')
      if !@site_code? then return null

    @$('h3.box-title').html("Configure (#{@site_code})")
    # @update_settings
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
            pre = "Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}."
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
      @$('input#cool_set').val(cool)
      @$('input#heat_set').val(heat)
      @$('input#cool_set_tm').val(cool_tm)
      @$('input#heat_set_tm').val(heat_tm)
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
            pre = "Airport.#{@site_code}.Term#{t}.Zone#{z}.Gate#{g}."
            @opc.set_value("#{pre}#{@tags.cooling_pt}", @$('input#cool_set').val())
            @opc.set_value("#{pre}#{@tags.heating_pt}", @$('input#heat_set').val())
            @opc.set_value("#{pre}#{@tags.cooling_tm}", @$('input#cool_set_tm').val())
            @opc.set_value("#{pre}#{@tags.heating_tm}", @$('input#heat_set_tm').val())
    

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    s.site = @$('#site').val()
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
    
  onDestroy: (arg1, arg2) ->
    # be sure to remove listeners
    @kill_updates(@site_code)
    
# ----------------------------------

window.ConfigWidgetView = ConfigWidgetView
module.exports = ConfigWidgetView
