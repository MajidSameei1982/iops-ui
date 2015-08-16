BaseModel = require('./_base')

# ----------------------------------

class Widget extends BaseModel
	local:true
	defaults:
		r:0
		c:0
		sx:0
		sy:0
		service:null
		title:null

# ----------------------------------

module.exports = Widget