# ----------------------------------

class AppConfig extends Object
  @api_baseurl: 'http://{service}.iopsnj.com/v1'
  @dt_format: 'E, MMM D, yyyy HH:mm'
  @session_timeout: 0

  @service_url: (svc)->
    @api_baseurl.replace('{service}', svc)

  @widgets: if window.app_config? && window.app_config.widgets? then window.app_config.widgets else []

  @report_server: 'http://test-reporting.iopsnow.com/'

  @weather_api_key: '4a8303c06b8aaa3866c85fd37f32b5c9'
  # https://api.forecast.io/forecast/4a8303c06b8aaa3866c85fd37f32b5c9/37.8267,-122.423

# ----------------------------------

module.exports = AppConfig
