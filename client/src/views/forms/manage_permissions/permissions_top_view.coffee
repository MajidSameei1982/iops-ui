Marionette = require('marionette')
PermissionsView = require('./permissions_view')
ClaimCollection = require('../../../models/claim_collection')

# ----------------------------------

class PermissionsTopView extends Marionette.LayoutView
  template: "forms/manage_permissions/permissions_top"
  regions:
    global_region  : '#global_region'

  onShow: ()->
    App.refresh_accounts(@rebuild_view)

  rebuild_view: ()=>
    @claims = new ClaimCollection()
    @claims.fetch
      success: ()=>
        if App.session.is_global_admin()
          @pv = new PermissionsView
            model: new Backbone.Model
              id: 0
              name: 'Global Permissions'
              global: true
            collection: @claims
            filter: (child, index, collection)->
              s = child.get('siteId')
              return !s? || s == 0
          @global_region.show(@pv)
        else
          @$(@regions.global_region).hide()

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
            continue if !App.session.is_site_admin(s.id)
            site_el = $("<div id='site_#{s.id}' class='site_item'></div>")
            acc_el.append(site_el)
            spv = new PermissionsView
              model: s
              collection: @claims
              filter: ((sid)->
                (child, index, collection)->
                  s = child.get('siteId')
                  return s? && s == sid
                )(s.id)
            spv.siteId = s.id
            r = @addRegion("site_#{s.id}","#site_#{s.id}")
            r.show(spv)
    
# ----------------------------------

module.exports = PermissionsTopView
