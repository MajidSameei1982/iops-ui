Marionette = require('marionette')
AccountView = require('./account_view')

# ----------------------------------

class AccountsView extends Marionette.CompositeView
  template: "forms/manage_accounts/accounts"
  childViewContainer: '#account_list'
  childView: AccountView
  viewComparator: 'name'

  events:
    'click #add_account' : 'add_account'

  add_account: ()->
    for acct in @collection.models
      if !acct.id? || acct.id == 0 then return false
    @collection.add {name: "", isActive: false}, {at:0}

# ----------------------------------

module.exports = AccountsView
