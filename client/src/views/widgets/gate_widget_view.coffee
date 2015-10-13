Marionette = require('marionette')
WidgetView = require('./widget_view')
OPCManager = require('../../opcmanager')

# ----------------------------------

class GateWidgetView extends WidgetView
  template:   "widgets/gate_widget"
  className: 'widget-outer box box-primary gate_widget'
  ui:
    gate: 'input#gate'
    wtitle: "h3.box-title"
    display: '.display'
    content: '.content'
    docked: '#docked'
    site: 'select#site'

  @layout:
    sx: 4
    sy: 7

  tags:
    pbb_plane_docked : 'PBB.PLANE_DOCKED'
    pbb_in_oper_mode : 'PBB.PBB_IN_OPER_MODE'
    pbb_maintok : 'PBB.MAINTOK'
    pbb_has_warnings : 'PBB.Warning._HasWarnings'
    pbb_autolevelmode : 'PBB.AUTOLEVELMODEFLAG'
    gpu_rvoutavg : 'GPU.RVOUTAVG'
    pbb_has_alarms : 'PBB.Alarm._HasAlarms'
    pbb_estop: 'PBB.Alarm.E_STOP'
    pbb_smoke: 'PBB.SMOKEDETECTOR'
    pbb_canopy: 'PBB.Warning.CANOPYDOWN'
    gpu_hoist: 'GPU.HZ400CABLEDEPLOYED'
    

  modelEvents:
    "change" : "update"

  watch_updates: (conn)->
    App.vent.on "opc:data:#{conn}", @data_update
  kill_updates: (conn)->
    App.vent.off "opc:data:#{conn}", @data_update

  update: ()->
    s = @model.get("settings")
    if s? && s.gate? && s.gate != ''
      # stop listening for updates
      @site_code = OPCManager.get_site_code(s.site)
      if !@site_code? then return null

      @kill_updates(@site_code)
      OPCManager.rem_ref(@site_code)
      
      # build settings      
      @prefix = "\\\\opc.iopsnow.com\\RemoteSCADAHosting.Airport-#{@site_code}.Airport.#{@site_code}.Term1.Zone1.GateC#{s.gate}."
      tags = []
      for tg of @tags
        t = @tags[tg]
        tags.push "#{@prefix}#{t}.Value"
      App.opc.add_tags @site_code, tags

      # listen for updates
      @watch_updates(@site_code)
      OPCManager.add_ref(@site_code)
      
      lbl = "Gate C-#{s.gate}"
      @ui.wtitle.html(lbl)
      @$('#gate_label #txt').html(lbl)

  get_bool: (v)=>
    if v? && v.toUpperCase() == "TRUE"
      return true
    else if v? && v.toUpperCase() == "FALSE"
      return false
    null

  get_value: (tag)=>
    return App.opc.connections[@site_code].get_value("#{@prefix}#{tag}.Value")

  mark_bad_data: (q, el)->
    h = if !q then 'BAD DATA' else $(el).html()
    $(el).html(h).toggleClass("bad_data", !q)

  data_q: (tag)=>
    c = App.opc.connections[@site_code]
    t = c.tags["#{@prefix}#{tag}"]
    t.props.Value.quality

  data_update: (data)=>
    @vals = {}
    for tg of @tags
      @vals[tg] = @get_value(@tags[tg])

    # PBB STATUS
    q = @data_q(@tags.pbb_in_oper_mode)
    stat = @get_bool(@vals.pbb_in_oper_mode)
    pbb_status = if stat then "Ready/OK" else "Not Ready"
    @mark_bad_data q, @$('#pbb_status').html(pbb_status).toggleClass("ok", stat)
  
    # PBB MODE
    q = @data_q(@tags.pbb_autolevelmode) # && @data_q(@tags.pbb_maintok)
    mode = @get_bool(@vals.pbb_autolevelmode)
    #maint = @get_bool(@vals.pbb_maintok)
    txt = "Logged Off"
    if mode
      txt = "Auto Level" 
    #else if maint
    #  txt = "Manual Mode"
    @mark_bad_data q, @$('#pbb_mode').html(txt).toggleClass("ok", mode)
    #@mark_bad_data q, @$('#pbb_mode').html(txt).toggleClass("ok", mode && !maint).toggleClass('blue', maint)
 
    # E-STOP
    q = @data_q(@tags.pbb_estop)
    estop = @get_bool(@vals.pbb_estop)
    txt = if estop then "Activated" else "Ready/OK"
    @mark_bad_data q, @$('#pbb_estop').html(txt).toggleClass("err", estop)
  
    # SMOKE DETECTOR
    q = @data_q(@tags.pbb_smoke)
    smoke = @get_bool(@vals.pbb_smoke)
    txt = if smoke==true then "Activated" else "Ready/OK"
    @mark_bad_data q, @$('#pbb_smoke').html(txt).toggleClass("err", (smoke==true && q))
  
    # CANOPY
    q = @data_q(@tags.pbb_canopy)
    canopy = @get_bool(@vals.pbb_canopy)
    txt = if canopy then "Extended" else "Retracted"
    @mark_bad_data q, @$('#pbb_canopy').html(txt).toggleClass("ok", canopy)

    # CABLE HOIST
    q = @data_q(@tags.gpu_hoist)
    hoist = @get_bool(@vals.gpu_hoist)
    txt = if hoist then "Deployed" else "Retracted"
    @mark_bad_data q, @$('#gpu_hoist').html(txt).toggleClass("ok", hoist)

    # DOCKED
    @ui.docked.toggle(@get_bool(@vals.pbb_plane_docked))

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    gate = @ui.gate.val().trim()
    s.gate = gate
    site = @ui.site.val().trim()
    s.site = site
    @model.set("settings", s)

  toggle_settings: (e)->
    super(e)
    @ui.display.toggle(!@settings_visible)

  onShow: ()->
    @ui.gate.on "change", @set_model
    @ui.site.on "change", @set_model

    settings = @model.get('settings')
    gate = settings.gate
    if !gate? || gate == ''
      @toggle_settings()
    site = settings.site
    site_code = OPCManager.get_site_code(site)
    if site_code? then OPCManager.add_ref(site_code)
    
    @ui.site.empty()
    @ui.site.append($("<option value=''>Select a Site</option>"))
    if App.accounts? && App.accounts.models.length > 0
      for acc in App.accounts.models
        if acc.sites? && acc.sites.models.length > 0
          for s in acc.sites.models
            opt = $("<option value='#{s.id}'>#{s.get('name')}</option>")
            @ui.site.append(opt)

    ms = @model.get('settings')
    if ms? && ms.site? then @ui.site.val(ms.site)

  start: ()->
    @update()

  onDestroy: (arg1, arg2) ->
    # be sure to remove listener
    @kill_updates(@site_code)
    OPCManager.rem_ref(@site_code)
    
# ----------------------------------

window.GateWidgetView = GateWidgetView
module.exports = GateWidgetView
