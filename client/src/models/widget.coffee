BaseModel = require('./_base')

# ----------------------------------

class Widget extends BaseModel
	local:true
	defaults:
    title:      null
    type:       "default"
    settings:
      layout:
        r:          1
        c:          1
        sx:         1
        sy:         1
    config:     true

# ----------------------------------

module.exports = Widget