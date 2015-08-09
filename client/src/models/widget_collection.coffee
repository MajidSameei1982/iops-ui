BaseCollection = require('./_base_collection')
Widget = require('./widget')

# ----------------------------------

class WidgetCollection extends BaseCollection
	model: Widget

# ----------------------------------

module.exports = WidgetCollection
