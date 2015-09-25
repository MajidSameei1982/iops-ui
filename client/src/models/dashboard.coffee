BaseModel = require('./_base')

# ----------------------------------

class Dashboard extends BaseModel
  local: true
  defaults:
    widgets: []

# ----------------------------------

module.exports = Dashboard
