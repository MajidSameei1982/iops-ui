Marionette = require('marionette')
PermissionsView = require('./permissions_view')
ClaimCollection = require('../../../models/claim_collection')

# ----------------------------------

class PermissionsTopView extends Marionette.LayoutView
  template: "forms/manage_permissions/permissions_top"
  regions:
    global_region  : '#global_region'

  onShow: ()->
    # fetch latest sites for account
    App.refresh_accounts(@rebuild_view)

  rebuild_view: ()=>
    @app_claims = new ClaimCollection()
    @app_claims.fetch
      success: ()=>
        @pv = new PermissionsView
          model: new Backbone.Model({id:0, name:'Global Permissions', global:true})
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
      
      # fetch latest claims for each site
      for s in acc.sites.models
        site_el = $("<div id='site_#{s.id}' class='site_item'><div class='loading'><i class='fa fa-spinner fa-pulse'></i> LOADING...</div></div>")
        acc_el.append(site_el)
        sc = new ClaimCollection [], {site: s.id}
        sc.fetch
          success:((site, claims) =>
            (data, xhr)=>
              spv = new PermissionsView
                model: site
                collection: claims
              r = @addRegion("site_#{site.id}","#site_#{site.id}")
              r.show(spv)
            )(s, sc)
    
# ----------------------------------

module.exports = PermissionsTopView
