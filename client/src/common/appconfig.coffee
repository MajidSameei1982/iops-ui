# ----------------------------------

class AppConfig extends Object
  @api_baseurl: 'http://{service}dev.iopsnj.com/v1'
  #@dt_format: 'E, MMM D, yyyy HH:mm'
  @dt_format: 'MMM D, yyyy HH:mm'
  @session_timeout: 1

# ----------------------------------

module.exports = AppConfig
