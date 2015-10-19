Marionette = require('marionette')
RolesView = require('./roles_view')

# ----------------------------------

class RolesTopView extends Marionette.LayoutView
  template: "forms/manage_permissions/roles_top"
  regions:
    global_region  : '#global_region'

  onShow: ()->
    @rv = new RolesView
      model: new Backbone.Model({id:0, name:'Global Roles', global:true})
      collection: App.roles
    @global_region.show(@rv)
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
        srv = new RolesView
          model: s
          collection: s.roles
        r = @addRegion("site_#{s.id}","#site_#{s.id}")
        r.show(srv)

    
# ----------------------------------

module.exports = RolesTopView
