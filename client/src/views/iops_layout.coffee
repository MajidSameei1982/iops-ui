Marionette = require('marionette')

# ----------------------------------
# Represents the top-level layout 
# with a single region
# ----------------------------------

class IopsLayout extends Marionette.LayoutView
  el: "html"
  regions:
    center_region:   '#center'

# ----------------------------------

module.exports = IopsLayout