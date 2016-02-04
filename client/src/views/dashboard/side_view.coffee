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
    else if link.hasClass('moveup')
      @moveup_link(e)
    else if link.hasClass('movedn')
      @movedn_link(e)
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
      id: Math.floor(Math.random() * 10000) + 1,
    @show_dash_modal(d, 'add')

  resolve_dash: (e, pre)->
    if e? then e.preventDefault()
    link = $(e.target).closest('a')
    for d in @collection.models
      if link.hasClass("#{pre}_#{d.id}")
        return d
    null

  moveup_link: (e)->
    d = @resolve_dash(e, 'moveup')
    if d? then @collection.moveup(d)
    @update_dash_links()
    App.save_user()

  movedn_link: (e)->
    d = @resolve_dash(e, 'movedn')
    if d? then @collection.movedn(d)
    @update_dash_links()
    App.save_user()

  edit_link: (e)->
    d = @resolve_dash(e, 'edit')
    if d? then @show_dash_modal(d, 'edit')

  delete_link: (e)->
    d = @resolve_dash(e, 'delete')
    if d? then @show_delete_modal(d)
      
  show_delete_modal: (d)->
    App.uiutils.showModal
      title: 'Delete Dashboard?'
      icon: 'warning'
      type: 'warning'
      body: 'Are you sure you want to delete this Dashboard? This cannot be undone and all Widget configurations for this Dashboard will be lost.'
      on_save: ()=>
        did = d.id
        @collection.remove(d)
        App.save_user()
        if did == App.current_dash then App.router.navigate('', {trigger:true})

  onShow: ()->
    App.vent.on "show:dashboard", @update_dash_links
    $(@el).attr('tabindex', '-1')
    @collection.on "update", ()=>
      @onDomRefresh()
    App.vent.on "dashboard:update", @onDomRefresh

  onDomRefresh: ()=>
    if App.session? && App.session.get('avatar')? 
      @ui.avatar.attr('src', App.session.get('avatar'))

    $('li.dashboard-link', @ui.dashboard_list).remove()
    for d, idx in @collection.models
      hh = """
      <li class='dashboard-link d_#{d.id}'>
        <a href='#' class='dash_link'><i class='fa fa-th-large'></i> <span>#{d.get('title')}</span></a>
        <div class='controls'>
          <a href='#' class='moveup moveup_#{d.id}'><i class='fa fa-caret-up'></i></a>
          <a href='#' class='movedn movedn_#{d.id}'><i class='fa fa-caret-down'></i></a>
          <a href='#' class='edit edit_#{d.id}'><i class='fa fa-pencil-square'></i></a>
          <a href='#' class='delete delete_#{d.id}'><i class='fa fa-times-circle'></i></a>
        </div>
      </li>
      """
      dl = $(hh)
      @ui.dashboard_list.append(dl)

# ----------------------------------

module.exports = DashboardSideView
