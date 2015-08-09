BaseCollection = require('./_base_collection')
Dashboard = require('./dashboard')

# ----------------------------------

class DashboardCollection extends BaseCollection
	model: Dashboard

# ----------------------------------

module.exports = DashboardCollection
