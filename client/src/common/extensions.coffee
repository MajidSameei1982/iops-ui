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

    fullName: ()->
      fn = @['firstName']
      ln = @['lastName']
      fn = if fn? then fn else ''
      fn = if ln? then "#{fn} #{ln}" else fn
      fn

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

    siteSelector: ({id, label, site})->
      sh = """
        <div class='form-group' for='#{id}' style='width:95%;'>
          <label>#{label}</label>
          <select id='#{id}' class='form-control' style='width:95%;' data-placeholder='Select a Site'>
            <option value=''></option>
      """
      if App.accounts? && App.accounts.models.length > 0
        for acc in App.accounts.models
          if acc.sites? && acc.sites.models.length > 0
            found_sel = false
            for s in acc.sites.models
              continue if !App.session.has_site(s.id)
              txt = s.get('name')
              code = s.get('code')
              if code? && code != '' then txt = "#{txt} (#{code})"
              sel = if site? && "#{site}" == "#{s.id}" then 'selected' else ''
              if !sel?
                found_sel = true
              sh += "<option value='#{s.id}' #{sel}>#{txt}</option>"
            if !found_sel && acc.sites.models?
              sh = sh.replace "<option value='#{Object.keys(acc.sites.models)[0]}' ","<option value='#{Object.keys(acc.sites.models)[0]}' selected"
      "#{sh}</select></div>"  

    terminalSelector: ({id, label, site, terminal})->
      sh = """
        <div class='form-group' for='#{id}'>
          <label>#{label}</label>
          <select id='#{id}' class='form-control' data-placeholder='Select a Terminal'>
      """
      s = OPCManager.get_site(site)
      if s?
        settings = s.get('settings') || {}
        terminals = settings.zones || {}
      found_sel = false
      for t of terminals
        sel = if terminal? && "#{terminal}" == "#{t}" then 'selected' else ''
        if !sel? 
          found_sel = true
        sh += "<option value='#{t}' #{sel}>#{t}</option>"
      if !found_sel && terminals?
        sh = sh.replace "<option value='#{Object.keys(terminals)[0]}' ","<option value='#{Object.keys(terminals)[0]}' selected"
      "#{sh}</select></div>"

    zoneSelector: ({id, label, site, terminal, zone})->
      sh = """
        <div class='form-group' for='#{id}'>
          <label>#{label}</label>
          <select id='#{id}' class='form-control' data-placeholder='Select a Zone'>
      """
      s = OPCManager.get_site(site)
      if s?
        settings = s.get('settings') || {}
        terminals = settings.zones || {}
      for t of terminals
        continue if t != terminal
        term = terminals[t]
        found_sel = false
        for z of term
          sel = if zone? && "#{zone}" == "#{z}" then 'selected' else ''
          if !sel? 
            found_sel = true
          sh += "<option value='#{z}' #{sel}>#{z}</option>"
        if !found_sel && term?
          sh = sh.replace "<option value='#{Object.keys(term)[0]}' ","<option value='#{Object.keys(term)[0]}' selected"
      "#{sh}</select></div>"

    gateSelector: ({id, label, site, terminal, zone, gate})->
      sh = """
        <div class='form-group' for='#{id}'>
          <label>#{label}</label>
          <select id='#{id}' class='form-control' data-placeholder='Select a Gate'>
      """
      s = OPCManager.get_site(site)
      if s?
        settings = s.get('settings') || {}
        terminals = settings.zones || {}
      for t of terminals
        continue if t != terminal
        term = terminals[t]
        for z of term
          continue if z != zone
          zn = term[z]
          found_sel = false
          for g of zn
            sel = if gate? && "#{gate}" == "#{g}" then 'selected' else ''
            if !sel? 
              found_sel = true
            sh += "<option value='#{g}' #{sel}>#{g}</option>"
          if !found_sel && zn?
            sh = sh.replace "<option value='#{Object.keys(zn)[0]}' ","<option value='#{Object.keys(zn)[0]}' selected"
      "#{sh}</select></div>"

    claimSelector: ({id, label, value, site_id, cls})->
      c = 'form-group'
      c = if cls? then "#{c} #{cls}" else c
      ch = """
        <div class='#{c}' for='#{id}'>
          <label>#{label}</label>
          <select id='#{id}' class='form-control' multiple data-placeholder='Select Permissions'>
      """
      claims = []
      if App.claims?
        for c in App.claims.models
          sid = c.get("siteId")
          sid = if !sid? then null else sid
          site_id = if !site_id? then null else site_id
          if site_id == sid then claims.push(c)

      found_sel = false
      for c in claims
        txt = c.get('name')
        sel = if value? && "#{value}" == "#{c.id}" then 'selected' else ''
        if !sel? 
          found_sel = true
        ch += "<option value='#{c.id}' #{sel}>#{txt}</option>"
      if !found_sel && claims?
        ch = ch.replace "<option value='#{Object.keys(claims)[0]}' ","<option value='#{Object.keys(claims)[0]}' selected"
      "#{ch}</select></div>"  

    roleSelector: ({id, label, value, site_id, cls})->
      c = 'form-group'
      c = if cls? then "#{c} #{cls}" else c
      lbl = if label? then "<label>#{label}</label><br/>" else ''
      rh = """
        <div class='#{c}' for='#{id}'>
          #{lbl}
          <select id='#{id}' class='form-control roleselect' multiple data-placeholder='Select Roles'>
      """
      roles = []
      if App.roles?
        for r in App.roles.models
          sid = r.get("siteId")
          sid = if !sid? then null else sid
          site_id = if !site_id? then null else site_id
          if site_id == sid then roles.push(r)
      
      for r in roles
        txt = r.get('name')
        selected = false
        if value?
          for v in value
            if v == r.id
              selected = true
              break
        sel = if selected then 'selected="selected"' else ''
        rh += "<option value='#{r.id}' #{sel}>#{txt}</option>"
      "#{rh}</select></div>"  
