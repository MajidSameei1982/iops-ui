### MODS ###

# locate all templates below module root
Backbone.Marionette.Renderer.render = (template, data) ->
  path = JST["#{template}"]
  unless path
    throw "Template #{template} not found!"
  path(data)


# extend base View
_.extend Marionette.View::,
	# allows for methods within the template rendering engine
  templateHelpers: ->  

  	formGroup: ({id, type, label, placeholder, cls, feedback, value})->
      type ?= 'text'
      label ?= ''
      placeholder ?= ''
      cls ?= ''
      feedback ?= ''
      value ?= ''
      cls = [cls]
      field = ""
  		
      switch type
        when 'text', 'email', 'password'
          field = "<input type='#{type}' id='#{id}' name='#{id}' class='form-control' placeholder='#{placeholder}' value='#{value}'/>"

      if label != '' then label = "<label>#{label}</label>"
      if feedback != ''
        feedback = "<span class='glyphicon glyphicon-#{feedback} form-control-feedback'></span>"
        cls.push 'has-feedback'

      cls = cls.join(' ')
      "<div class='form-group #{cls}' for='#{id}'>#{label}#{field}#{feedback}</div>"


    siteSelector: ({id, label, value})->
      # TODO: check current user access to sites
      sh = """
        <div class='form-group' for='#{id}'>
          <label>#{label}</label>
          <select id='#{id}' class='form-control'>
            <option value=''>Select a Site</option>
      """
      if App.accounts? && App.accounts.models.length > 0
        for acc in App.accounts.models
          if acc.sites? && acc.sites.models.length > 0
            for s in acc.sites.models
              txt = s.get('name')
              code = s.get('abbrev')
              if code? && code != '' then txt = "#{txt} (#{code})"
              sel = if value? && "#{value}" == "#{s.id}" then 'selected' else ''
              sh += "<option value='#{s.id}' #{sel}>#{txt}</option>"
      "#{sh}</select></div>"  
