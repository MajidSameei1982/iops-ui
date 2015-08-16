BaseCollection = require('./_base_collection')
Widget = require('./widget')

# ----------------------------------

class WidgetCollection extends BaseCollection
	local:true
	model: Widget

# ----------------------------------

module.exports = WidgetCollection
