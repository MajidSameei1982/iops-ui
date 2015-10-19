Marionette = require('marionette')
PermissionsView = require('./permissions_view')

# ----------------------------------

class PermissionsTopView extends Marionette.LayoutView
  template: "forms/manage_permissions/permissions_top"
  regions:
    global_region  : '#global_region'

  onShow: ()->
    @pv = new PermissionsView
      model: new Backbone.Model({id:0, name:'Global Permissions', global:true})
      collection: App.claims
    @global_region.show(@pv)
    for acc in App.accounts.models
      acc_el = """
        <div id='acc_#{acc.id}'>
          <h3><i class='fa fa-fw fa-building-o'></i>#{acc.get('name')}</h3>
        </div>
      """
      acc_el = $(acc_el)
      $(@el).append(acc_el)

      for s in acc.sites.models
        site_el = $("<div id='site_#{s.id}' class='site_item'></div>")
        acc_el.append(site_el)
        spv = new PermissionsView
          model: s
          collection: s.claims
        r = @addRegion("site_#{s.id}","#site_#{s.id}")
        r.show(spv)

    
# ----------------------------------

module.exports = PermissionsTopView
