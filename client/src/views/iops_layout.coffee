Marionette = require('marionette')

# ----------------------------------

class IopsLayout extends Marionette.LayoutView
  el: '#contact_layout'
  regions:
    center_region:   '#center'

# ----------------------------------

module.exports = IopsLayout