Marionette = require('marionette')

# ----------------------------------

class IopsLayout extends Marionette.LayoutView
  el: "html"
  regions:
    center_region:   '#center'

# ----------------------------------

module.exports = IopsLayout