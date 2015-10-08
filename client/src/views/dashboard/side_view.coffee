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
    'click #dashboard-list' : 'show_dash'
    'click #add_dash' : 'show_add'

  show_add: (e)->
    if e? then e.preventDefault()
    d = new Dashboard
      id:0
      title: 'New Dashboard'
    @dmv = new DashboardModalView
      model: d
    @dmv.dashboards = @collection
    @dmv.action = 'add'
    App.layout.modal_region.show(@dmv)

  add_dash: (e)->
    if e? then e.preventDefault()
    doAdd = true
    for d in @collection.models
      if !d.id? || d.id == 0 then doAdd = false
    if doAdd then @collection.add {id:0, title: 'New Dashboard'},{at:0}

  show_dash: (e)->
    debugger
    e.preventDefault()
    tgt = $(e.target)
    dlink = tgt.closest('.dashboard-link')
    if !dlink? || dlink.length == 0 then return null
    for d in @collection.models
      if dlink.hasClass("d_#{d.id}")
        $('li',@ui.dashboard_list).removeClass('active')
        dlink.addClass('active')
        App.router.navigate("dashboard/#{d.id}", {trigger:true})
        break
    @

  update_dash_links: (id)=>
    $('li', @ui.dashboard_list).removeClass('active')
    if id?
      $("li.dashboard-link.d_#{id}").addClass('active')

  edit_link: (e)->
    if e? then e.preventDefault()
    debugger
  delete_link: (e)->
    if e? then e.preventDefault()
    debugger

  onShow: ()->
    App.vent.on "show:dashboard", @update_dash_links
    $(@el).attr('tabindex', '-1')
    @collection.on "update", ()=>
      @onDomRefresh()
      @$('li.dashboard-link a.edit').click @edit_dash
      @$('li.dashboard-link a.delete').click @delete_dash


  onDomRefresh: ()=>
    if App.current_user? && App.current_user.get('avatar')? 
      @ui.avatar.attr('src', App.current_user.get('avatar'))

    $('li.dashboard-link', @ui.dashboard_list).remove()
    for d in @collection.models
      hh = """
      <li class='dashboard-link d_#{d.id}'>
        <a href='#'><i class='fa fa-th-large'></i> <span>#{d.get('title')}</span></a>
        <div class='controls'>
          <a href='#' id='edit_#{d.id}' class='edit'><i class='fa fa-pencil-square'></i></a>
          <a href='#' id='delete_#{d.id}' class='delete'><i class='fa fa-times-circle'></i></a>
        </div>
      </li>
      """
      #dl = $("<li class='dashboard-link d_#{d.id}'><a href='#'><i class='fa fa-th-large'></i> <span>#{d.get('title')}</span></a> </li>")
      dl = $(hh)
      @ui.dashboard_list.append(dl)

# ----------------------------------

module.exports = DashboardSideView
