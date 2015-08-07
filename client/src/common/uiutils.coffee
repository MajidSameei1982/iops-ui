
# ----------------------------------

class UIUtils extends Object

  @setICheck: (v)->
    el = if v? && v.el? then v.el else null
    $('input', el).iCheck
      checkboxClass: 'icheckbox_square-blue'
      radioClass: 'iradio_square-blue'
      increaseArea: '20%'
    v

  @resetFields: (v)->
    # remove errors, etc.
    v.$('.has-error').removeClass('.has-error')
    v

  @checkFields: (v)->
    @resetFields(v)
    return false if !v?
    m = v.model
    v

  @clearAlerts: (el)->
    $('.alert', el).remove()

  @showAlert: (el, {type, message, title, icon})->
    @clearAlerts(el)
    icn = if icon? then "<i class='icon fa fa-#{icon}'></i>" else ''
    ttl = if title? then "<h4>#{icn}#{title}</h4>" else "#{icn}"
    html = """
      <div class="alert alert-#{type} alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        #{ttl}#{message}
      </div>
    """
    alert = $(html)
    $(el).prepend(alert)
    alert
# ----------------------------------

module.exports = UIUtils
