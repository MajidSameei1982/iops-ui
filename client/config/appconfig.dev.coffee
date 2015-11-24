# ----------------------------------

class AppConfig extends Object
  @api_baseurl: 'http://{service}.iopsnj.com/v1'
  @dt_format: 'E, MMM D, yyyy HH:mm'
  @session_timeout: 0

  @service_url: (svc)->
    @api_baseurl.replace('{service}', svc)

  @widgets: if window.app_config? && window.app_config.widgets? then window.app_config.widgets else []

# ----------------------------------

module.exports = AppConfig
