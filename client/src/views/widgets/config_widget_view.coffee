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
    sy: 10

  # tags:
  #   pbb_autolevelfail:  'PBB.AUTOLEVEL_FAIL_FLAG'
  #   pbb_has_warnings :  'Warning._HasWarnings'
  #   pbb_has_alarms :    'Alarm._HasAlarms'
    
  update: ()->
    #fire when loaded or settings are updated

  data_update: (data)=>
    # process data and update the view

  set_model: ()=>
    s = _.clone(@model.get("settings"))
    # update settings n model
    @model.set("settings", s)

  # toggle_settings: (e)->
  #   super(e)
  #   if @settings_visible then @ui.site.chosen()

  onShow: ()->
    settings = @model.get('settings')

  onDestroy: (arg1, arg2) ->
    # be sure to remove listeners
    @kill_updates(@site_code)
    
# ----------------------------------

window.ConfigWidgetView = ConfigWidgetView
module.exports = ConfigWidgetView
