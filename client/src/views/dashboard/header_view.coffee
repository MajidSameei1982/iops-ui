Marionette = require('marionette')
AppConfig = require('../../common/appconfig')

# ----------------------------------

class DashboardHeaderView extends Marionette.ItemView
  template: "dashboard/header"
  tagName: "header"
  className: "main-header"
  ui:
  	avatar: '#avatar'
  	fullname: '#fullname'
  	avatar_full: '#avatar_full'
  	fullname_full: '#fullname_full'
  	email_full: '#email_full'
  	profile: 'a#profile'
  	logout: 'a#logout'
  	clock: '#clock'

  events:
  	'click a#logout' : 'logout'
  	'click a#profile' : 'profile'

  set_clock: (dt)=>
    @ui.clock.html($.format.date(dt, AppConfig.dt_format))
    @

  logout: (e)->
    e.preventDefault()
    App.controller.logout()
    @

  profile: (e)->
    e.preventDefault()
    App.router.navigate('profile', {trigger:true})
    @

  onDomRefresh: ()=>
    if App.current_user? and App.current_user.avatar?
      @ui.avatar.attr('src', App.current_user.avatar)
      @ui.avatar_full.attr('src', App.current_user.avatar)
    App.vent.on 'app:clock', @set_clock
    @set_clock(new Date())

  onBeforeDestroy: (args)->
  	App.vent.off 'app:clock', @set_clock

# ----------------------------------

module.exports = DashboardHeaderView
    