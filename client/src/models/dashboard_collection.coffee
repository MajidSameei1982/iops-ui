BaseCollection = require('./_base_collection')
Dashboard = require('./dashboard')

# ----------------------------------

class DashboardCollection extends BaseCollection
	local: true
	model: Dashboard

# ----------------------------------

window.DashboardCollection = DashboardCollection
module.exports = DashboardCollection
