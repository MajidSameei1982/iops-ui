Marionette = require('marionette')
DashboardModalView = require('./dashboard_modal')
Dashboard = require('../../models/dashboard')

# ----------------------------------

class DashboardSideView extends Marionette.ItemView
  template: "dashboard/side"
  tagName: "aside"
  className: "main-sidebar"
  ui:
    avatar: '#avatar'
    fullname: '#fullname'
    dashboard_list: '#dashboard-list'

  events:
    'click #dashboard-list' : 'click_dash'
    'click #add_dash' : 'show_add'

  show_dash_modal: (d, action)->
    @dmv = new DashboardModalView
      model: d
    @dmv.dashboards = @collection
    @dmv.action = action
    App.layout.modal_region.show(@dmv)

  click_dash: (e)->
    e.preventDefault()
    link = $(e.target).closest('a')
    if !link? || link.length == 0 then return null
    if link.hasClass('dash_link')
      @show_link(e)
    else if link.hasClass('edit')
      @edit_link(e)
    else if link.hasClass('delete')
      @delete_link(e)
    @

  update_dash_links: (id)=>
    id = if id? then id else App.current_dash
    $('li', @ui.dashboard_list).removeClass('active')
    if id?
      App.current_dash = id
      $("li.dashboard-link.d_#{id}").addClass('active')


  show_link: (e)->
    if e? then e.preventDefault()
    link = $(e.target).closest('a')
    dlink = link.closest('.dashboard-link')
    if !dlink? || dlink.length == 0 then return null
    for d in @collection.models
      if dlink.hasClass("d_#{d.id}")
        $('li',@ui.dashboard_list).removeClass('active')
        dlink.addClass('active')
        App.router.navigate("dashboard/#{d.id}", {trigger:true})
        break
    null

  show_add: (e)->
    if e? then e.preventDefault()
    d = new Dashboard
      id: Math.floor(Math.random() * 10000)+1
      title: 'New Dashboard'
    @show_dash_modal(d, 'add')

  edit_link: (e)->
    if e? then e.preventDefault()
    link = $(e.target).closest('a')
    for d in @collection.models
      if link.hasClass("edit_#{d.id}")
        @show_dash_modal(d, 'edit')
        break
    null

  delete_link: (e)->
    if e? then e.preventDefault()
    link = $(e.target).closest('a')
    for d in @collection.models
      if link.hasClass("delete_#{d.id}")
        App.uiutils.showModal
          title: 'Delete Dashboard?'
          icon: 'warning'
          type: 'warning'
          body: 'Are you sure you want to delete this Dashboard? This cannot be undone and all Widget configurations for this Dashboard will be lost.'
          on_save: ()=>
            @collection.remove(d)
            App.vent.trigger 'user:update'
        break
    null

  onShow: ()->
    App.vent.on "show:dashboard", @update_dash_links
    $(@el).attr('tabindex', '-1')
    @collection.on "update", ()=>
      @onDomRefresh()
    App.vent.on "dashboard:update", @onDomRefresh

  onDomRefresh: ()=>
    if App.current_user? && App.current_user.get('avatar')? 
      @ui.avatar.attr('src', App.current_user.get('avatar'))

    $('li.dashboard-link', @ui.dashboard_list).remove()
    for d in @collection.models
      hh = """
      <li class='dashboard-link d_#{d.id}'>
        <a href='#' class='dash_link'><i class='fa fa-th-large'></i> <span>#{d.get('title')}</span></a>
        <div class='controls'>
          <a href='#' class='edit edit_#{d.id}'><i class='fa fa-pencil-square'></i></a>
          <a href='#' class='delete delete_#{d.id}'><i class='fa fa-times-circle'></i></a>
        </div>
      </li>
      """
      dl = $(hh)
      @ui.dashboard_list.append(dl)

# ----------------------------------

module.exports = DashboardSideView
