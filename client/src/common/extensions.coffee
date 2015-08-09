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

  	formGroup: ({id, type, label, placeholder, cls, feedback})->
  		type ?= 'text'
  		label ?= ''
  		placeholder ?= ''
  		cls ?= ''
  		feedback ?= ''

  		cls = [cls]

  		field = ""
  		switch type
  			when 'text', 'email', 'password'
  				field = "<input type='#{type}' id='#{id}' name='#{id}' class='form-control' placeholder='#{placeholder}' />"

  		if label != '' then label = "<label>#{label}</label>"
  		if feedback != ''
  			feedback = "<span class='glyphicon glyphicon-#{feedback} form-control-feedback'></span>"
  			cls.push 'has-feedback'

  		cls = cls.join(' ')
  		"<div class='form-group #{cls}' for='#{id}'>#{label}#{field}#{feedback}</div>"

    
    


