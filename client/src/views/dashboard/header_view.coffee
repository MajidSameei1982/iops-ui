Marionette = require('marionette')

# ----------------------------------

class DashboardHeaderView extends Marionette.ItemView
  template: "dashboard/header"
  tagName: "header"
  className: "main-header"
  ui:
    avatar: '#avatar'
    fullName: '#fullname'
    avatar_full: '#avatar_full'
    fullName_full: '#fullname_full'
    email_full: '#email_full'
    profile: 'a#profile'
    logout: 'a#logout'
    clock: '#clock'
    memid: '#Memory_Test'

  events:
  	'click a#logout' : 'logout'
  	'click a#profile' : 'profile'

  set_clock: (dt)=>
    @ui.clock.html($.format.date(dt, App.config.dt_format))
    @ui.memid.html((window.performance.memory.usedJSHeapSize/1000000) + ' Mb\/' + (window.performance.memory.totalJSHeapSize/1000000) + ' Mb')
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
    if @model.get('avatar')?
      @ui.avatar.attr('src', @model.get('avatar'))
      @ui.avatar_full.attr('src', @model.get('avatar'))
    App.vent.on 'app:clock', @set_clock
    @set_clock(new Date())

  onBeforeDestroy: (args)->
  	App.vent.off 'app:clock', @set_clock

# ----------------------------------

module.exports = DashboardHeaderView
    