Marionette = require('marionette')
AccountView = require('./account_view')

# ----------------------------------

class ManageAccountsView extends Marionette.CompositeView
  template: "forms/manage_accounts"
  childViewContainer: '#account_list'
  childView: AccountView

  events:
    'click #add_account' : 'add_account'

  add_account: ()->
    for acct in @collection.models
      if !acct.id? || acct.id == 0 then return false
    @collection.add {name: "", isActive: false}, {at:0}

# ----------------------------------

module.exports = ManageAccountsView
