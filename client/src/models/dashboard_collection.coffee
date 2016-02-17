BaseCollection = require('./_base_collection')
Dashboard = require('./dashboard')

# ----------------------------------

class DashboardCollection extends BaseCollection
  #local: true
  service: 'accounts'
  url: '/users/{userId}/dashboards'
  model: Dashboard

  constructor: (config, opts)->
    if config? && config.userId
      @url = @url.replace('{userId}', config.userId)
      delete config.userId
    else
      @url = '/dashboards'
    super(config)
    
# ----------------------------------

window.DashboardCollection = DashboardCollection
module.exports = DashboardCollection
