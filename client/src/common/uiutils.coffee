
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
  	
# ----------------------------------

module.exports = UIUtils
