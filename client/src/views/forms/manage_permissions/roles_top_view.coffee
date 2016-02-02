Marionette = require('marionette')
RolesView = require('./roles_view')
RoleCollection = require('../../../models/role_collection')

# ----------------------------------

class RolesTopView extends Marionette.LayoutView
  template: "forms/manage_permissions/roles_top"
  regions:
    global_region  : '#global_region'

  onShow: ()->
    # fetch latest sites for account
    App.refresh_accounts(@rebuild_view)

  rebuild_view: ()=>
    @app_roles = new RoleCollection()
    @app_roles.fetch
      success: ()=>
        @pv = new RolesView
          model: new Backbone.Model({id:0, name:'Global Roles', global:true})
          collection: @app_claims
        @global_region.show(@pv)
    
    for acc in App.accounts.models
      acc_el = """
        <div id='acc_#{acc.id}'>
          <h3><i class='fa fa-fw fa-building-o'></i>#{acc.get('name')}</h3>
        </div>
      """
      acc_el = $(acc_el)
      $(@el).append(acc_el)
      
      # fetch latest roles for each site
      for s in acc.sites.models
        site_el = $("<div id='site_#{s.id}' class='site_item'><div class='loading'><i class='fa fa-spinner fa-pulse'></i> LOADING...</div></div>")
        acc_el.append(site_el)
        sr = new RoleCollection [], {site: s.id}
        sr.fetch
          success:((site, roles) =>
            (data, xhr)=>
              spv = new RolesView
                model: site
                collection: roles
              r = @addRegion("site_#{site.id}","#site_#{site.id}")
              r.show(spv)
            )(s, sr)
    

    
# ----------------------------------

module.exports = RolesTopView
