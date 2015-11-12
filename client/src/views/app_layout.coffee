Marionette = require('marionette')

# ----------------------------------
# Represents the top-level layout 
# with a single region
# ----------------------------------

class AppLayout extends Marionette.LayoutView
  el: "html"
  regions:
    center_region : '#center-region'
    modal_region  : '#modal-region'

# ----------------------------------

module.exports = AppLayout