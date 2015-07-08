if (!window.JST) {
  window.JST = {};
}
window.JST["add"] = function(__obj) {
  var _safe = function(value) {
    if (typeof value === 'undefined' && value == null)
      value = '';
    var result = new String(value);
    result.ecoSafe = true;
    return result;
  };
  return (function() {
    var __out = [], __self = this, _print = function(value) {
      if (typeof value !== 'undefined' && value != null)
        __out.push(value.ecoSafe ? value : __self.escape(value));
    }, _capture = function(callback) {
      var out = __out, result;
      __out = [];
      callback.call(this);
      result = __out.join('');
      __out = out;
      return _safe(result);
    };
    (function() {
      _print(_safe('<div>add</div>'));
    
    }).call(this);
    
    return __out.join('');
  }).call((function() {
    var obj = {
      escape: function(value) {
        return ('' + value)
          .replace(/&/g, '&amp;')
          .replace(/</g, '&lt;')
          .replace(/>/g, '&gt;')
          .replace(/"/g, '&quot;');
      },
      safe: _safe
    }, key;
    for (key in __obj) obj[key] = __obj[key];
    return obj;
  })());
};

if (!window.JST) {
  window.JST = {};
}
window.JST["contact_details"] = function(__obj) {
  var _safe = function(value) {
    if (typeof value === 'undefined' && value == null)
      value = '';
    var result = new String(value);
    result.ecoSafe = true;
    return result;
  };
  return (function() {
    var __out = [], __self = this, _print = function(value) {
      if (typeof value !== 'undefined' && value != null)
        __out.push(value.ecoSafe ? value : __self.escape(value));
    }, _capture = function(callback) {
      var out = __out, result;
      __out = [];
      callback.call(this);
      result = __out.join('');
      __out = out;
      return _safe(result);
    };
    (function() {
      _print(_safe('<div>contact details</div>'));
    
    }).call(this);
    
    return __out.join('');
  }).call((function() {
    var obj = {
      escape: function(value) {
        return ('' + value)
          .replace(/&/g, '&amp;')
          .replace(/</g, '&lt;')
          .replace(/>/g, '&gt;')
          .replace(/"/g, '&quot;');
      },
      safe: _safe
    }, key;
    for (key in __obj) obj[key] = __obj[key];
    return obj;
  })());
};

if (!window.JST) {
  window.JST = {};
}
window.JST["contact_small"] = function(__obj) {
  var _safe = function(value) {
    if (typeof value === 'undefined' && value == null)
      value = '';
    var result = new String(value);
    result.ecoSafe = true;
    return result;
  };
  return (function() {
    var __out = [], __self = this, _print = function(value) {
      if (typeof value !== 'undefined' && value != null)
        __out.push(value.ecoSafe ? value : __self.escape(value));
    }, _capture = function(callback) {
      var out = __out, result;
      __out = [];
      callback.call(this);
      result = __out.join('');
      __out = out;
      return _safe(result);
    };
    (function() {
      _print(_safe('<div>contact small</div>'));
    
    }).call(this);
    
    return __out.join('');
  }).call((function() {
    var obj = {
      escape: function(value) {
        return ('' + value)
          .replace(/&/g, '&amp;')
          .replace(/</g, '&lt;')
          .replace(/>/g, '&gt;')
          .replace(/"/g, '&quot;');
      },
      safe: _safe
    }, key;
    for (key in __obj) obj[key] = __obj[key];
    return obj;
  })());
};

;(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=n[o]={exports:{}};t[o][0].call(f.exports,function(e){var n=t[o][1][e];return s(n?n:e)},f,f.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var ContactModel, ContactsCollection, Controller, Extensions, Marionette, Router;

Marionette = require('marionette');

Extensions = require('./base/extensions');

Controller = require('./controller');

Router = require('./router');

ContactModel = require('./models/contact');

ContactsCollection = require('./collections/contacts');

module.exports = window.App = function() {
  return {
    start: function() {
      App.core = new Mn.Application();
      App.core.on("before:start", function(options) {
        debugger;
        var contacts;
        App.core.vent.trigger('app:log', 'App: Starting');
        App.views = {};
        App.data = {};
        contacts = new ContactsCollection([]);
        return App.data.contacts = contacts;
      });
      App.core.on('start', function(options) {
        debugger;
        App.core.vent.trigger('app:log', 'App: Started');
        if (Backbone.history) {
          App.controller = new Controller();
          App.router = new Router({
            controller: App.controller
          });
          App.core.vent.trigger('app:log', 'App: Backbone.history starting');
          Backbone.history.start();
        }
        return App.core.vent.trigger('app:log', 'App: Done starting and running!');
      });
      App.core.vent.bind('app:log', function(msg) {
        return console.log(msg);
      });
      return App.core.start();
    }
  };
};

},{"./base/extensions":2,"./collections/contacts":3,"./controller":4,"./models/contact":5,"./router":6}],2:[function(require,module,exports){

/* MODS */
Backbone.Marionette.Renderer.render = function(template, data) {
  var path;
  path = JST["" + template];
  if (!path) {
    throw "Template " + template + " not found!";
  }
  return path(data);
};

},{}],3:[function(require,module,exports){
var Backbone, ContactModel, ContactsCollection;

Backbone = require('backbone');

ContactModel = require('../models/contact');

module.exports = ContactsCollection = Backbone.Collection.extend({
  model: ContactModel,
  url: '/api/contacts'
});

},{"../models/contact":5}],4:[function(require,module,exports){
var AddContactView, ContactDetailsView, ContactsView, Controller, Marionette;

Marionette = require('marionette');

ContactsView = require('./views/contacts');

ContactDetailsView = require('./views/contact_details');

AddContactView = require('./views/add');

module.exports = Controller = Marionette.Controller.extend({
  initialize: function() {
    App.core.vent.trigger('app:log', 'Controller: Initializing');
    return window.App.views.contactsView = new ContactsView({
      collection: window.App.data.contacts
    });
  },
  home: function() {
    var view;
    App.core.vent.trigger('app:log', 'Controller: "Home" route hit.');
    view = window.App.views.contactsView;
    this.renderView(view);
    return window.App.router.navigate('#');
  },
  details: function(id) {
    var view;
    App.core.vent.trigger('app:log', 'Controller: "Contact Details" route hit.');
    view = new ContactDetailsView({
      model: window.App.data.contacts.get(id)
    });
    this.renderView(view);
    return window.App.router.navigate('details/' + id);
  },
  add: function() {
    var view;
    App.core.vent.trigger('app:log', 'Controller: "Add Contact" route hit.');
    view = new AddContactView();
    this.renderView(view);
    return window.App.router.navigate('add');
  },
  renderView: function(view) {
    this.destroyCurrentView(view);
    App.core.vent.trigger('app:log', 'Controller: Rendering new view.');
    return $('#js-boilerplate-app').html(view.render().el);
  },
  destroyCurrentView: function(view) {
    if (!_.isUndefined(window.App.views.currentView)) {
      App.core.vent.trigger('app:log', 'Controller: Destroying existing view.');
      window.App.views.currentView.close();
    }
    return window.App.views.currentView = view;
  }
});

},{"./views/add":7,"./views/contact_details":8,"./views/contacts":9}],5:[function(require,module,exports){
var Backbone, ContactModel;

Backbone = require('backbone');

module.exports = ContactModel = Backbone.Model.extend({
  idAttribute: '_id',
  urlRoot: 'api/contacts'
});

},{}],6:[function(require,module,exports){
var Marionette, Router;

Marionette = require('marionette');

module.exports = Router = Marionette.AppRouter.extend({
  appRoutes: {
    '': 'home',
    'details/:id': 'details',
    'add': 'add'
  }
});

},{}],7:[function(require,module,exports){
var AddView, Marionette;

Marionette = require('marionette');

module.exports = AddView = Marionette.ItemView.extend({
  template: "add",
  events: {
    'click a.save-button': 'save'
  },
  save: function(e) {
    var newContact;
    e.preventDefault();
    newContact = {
      name: {
        first: this.$el.find('#name_first').val(),
        last: this.$el.find('#name_last').val()
      },
      email: this.$el.find('#email').val(),
      phone: this.$el.find('#phone').val()
    };
    window.App.data.contacts.create(newContact);
    window.App.core.vent.trigger('app:log', 'Add View: Saved new contact!');
    return window.App.controller.home();
  }
});

},{}],8:[function(require,module,exports){
var ContactDetailsView, Marionette;

Marionette = require('marionette');

module.exports = ContactDetailsView = Marionette.ItemView.extend({
  template: "contact_details",
  events: {
    'click a.back': 'goBack',
    'click a.delete': 'deleteContact'
  },
  goBack: function(e) {
    e.preventDefault();
    return window.App.controller.home();
  },
  deleteContact: function(e) {
    e.preventDefault();
    console.log('Deleting contact');
    window.App.data.contacts.remove(this.model);
    this.model.destroy();
    return window.App.controller.home();
  }
});

},{}],9:[function(require,module,exports){
var CollectionView, Marionette, itemView;

Marionette = require('marionette');

itemView = Marionette.ItemView.extend({
  template: "contact_small",
  initialize: function() {
    return this.listenTo(this.model, 'change', this.render);
  },
  events: {
    'click': 'showDetails'
  },
  showDetails: function() {
    window.App.core.vent.trigger('app:log', 'Contacts View: showDetails hit.');
    return window.App.controller.details(this.model.id);
  }
});

module.exports = CollectionView = Marionette.CollectionView.extend({
  initialize: function() {
    return this.listenTo(this.collection, 'change', this.render);
  },
  childView: itemView
});

},{}]},{},[1])
;