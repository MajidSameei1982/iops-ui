BaseCollection = require('./_base_collection')
Dashboard = require('./dashboard')

# ----------------------------------

class DashboardCollection extends BaseCollection
	local: true
	model: Dashboard

# ----------------------------------

module.exports = DashboardCollection
