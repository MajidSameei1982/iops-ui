BaseModel = require('./_base')

# ----------------------------------

class Widget extends BaseModel
	local:true
	defaults:
    title:      null
    type:       "default"
    settings:
      layout:
        r:          0
        c:          0
        sx:         0
        sy:         0
    config:     true

# ----------------------------------

module.exports = Widget