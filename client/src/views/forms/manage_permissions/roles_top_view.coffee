Marionette = require('marionette')
RolesView = require('./roles_view')
RoleCollection = require('../../../models/role_collection')
ClaimCollection = require('../../../models/claim_collection')

# ----------------------------------

class RolesTopView extends Marionette.LayoutView
  template: "forms/manage_permissions/roles_top"
  regions:
    global_region  : '#global_region'

  onShow: ()->
    App.refresh_accounts(@prep_data)

  prep_data: ()=>
    App.claims = new ClaimCollection()
    App.claims.fetch
      success: ()=>
        @rebuild_view()

  rebuild_view: ()=>
    @roles = new RoleCollection()
    @roles.fetch
      success: ()=>
        @rv = new RolesView
          model: new Backbone.Model
            id: 0
            name: 'Global Roles'
            global: true
          collection: @roles
          filter: (child, index, collection)->
            s = child.get('siteId')
            return !s? || s == 0
        @global_region.show(@rv)

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
            site_el = $("<div id='site_#{s.id}' class='site_item'></div>")
            acc_el.append(site_el)
            srv = new RolesView
              model: s
              collection: @roles
              filter: ((sid)->
                (child, index, collection)->
                  s = child.get('siteId')
                  return s? && s == sid
                )(s.id)
            srv.siteId = s.id
            r = @addRegion("site_#{s.id}","#site_#{s.id}")
            r.show(srv)
    
# ----------------------------------

module.exports = RolesTopView
