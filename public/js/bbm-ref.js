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
      _print(_safe('<div class=\'bs-callout bs-callout-success\'>\n\t<address>\n\t  <strong><input id="name" type="text"></strong><br/>\n\t  <input id="street" type="text"><br/>\n\t  <input id="city" type="text">, <input id="state" type="text"> <input id="postal_code" type="text"><br/>\n\t  <abbr title="Phone">P:</abbr> <input id="phone" type="text">\n\t</address>\n</div>'));
    
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
      _print(_safe('<div class=\'bs-callout bs-callout-warning\'>\n\t<a class="delete" href=\'#\'>x</a>\n\t<address>\n\t  <strong>'));
    
      _print(this.name);
    
      _print(_safe('</strong><br/>\n\t  '));
    
      _print(this.street);
    
      _print(_safe('<br/>\n\t  '));
    
      _print(this.city);
    
      _print(_safe(', '));
    
      _print(this.state);
    
      _print(_safe(' '));
    
      _print(this.postal_code);
    
      _print(_safe('<br/>\n\t  <abbr title="Phone">P:</abbr> '));
    
      _print(this.phone);
    
      _print(_safe('\n\t</address>\n</div>'));
    
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

Extensions = require('./common/extensions');

Controller = require('./controller');

Router = require('./router');

ContactModel = require('./models/contact');

ContactsCollection = require('./models/contacts');

window.Demo = (function() {
  var App;
  if (window.App != null) {
    return window.App;
  }
  window.App = App = new Mn.Application();
  App.vent.bind('app:log', function(msg) {
    return console.log(msg);
  });
  App.log = function(msg) {
    return this.vent.trigger("app:log", msg);
  };
  App.on("before:start", function(options) {
    var contacts;
    this.log('App: Starting');
    this.views = {};
    this.data = {};
    contacts = new ContactsCollection([]);
    return this.data.contacts = contacts;
  });
  App.on('start', function(options) {
    this.log('App: Started');
    if (Backbone.history) {
      this.controller = new Controller();
      this.router = new Router({
        controller: this.controller
      });
      this.log('App: Backbone.history starting');
      Backbone.history.start();
    }
    return this.log('App: Done starting and running!');
  });
  return App;
})();

},{"./common/extensions":2,"./controller":3,"./models/contact":4,"./models/contacts":5,"./router":6}],2:[function(require,module,exports){

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
var AddContactView, ContactDetailsView, ContactsView, Controller, Marionette;

Marionette = require('marionette');

ContactsView = require('./views/contacts');

ContactDetailsView = require('./views/contact_details');

AddContactView = require('./views/add');

module.exports = Controller = Marionette.Controller.extend({
  initialize: function() {
    App.log('Controller: Initializing');
    return App.views.contactsView = new ContactsView({
      collection: App.data.contacts
    });
  },
  home: function() {
    var view;
    App.log('Controller: "Home" route hit.');
    view = App.views.contactsView;
    this.renderView(view);
    return App.router.navigate('#');
  },
  details: function(id) {
    var view;
    App.log('Controller: "Contact Details" route hit.');
    view = new ContactDetailsView({
      model: App.data.contacts.get(id)
    });
    this.renderView(view);
    return App.router.navigate('details/' + id);
  },
  add: function() {
    var view;
    App.log('Controller: "Add Contact" route hit.');
    view = new AddContactView();
    this.renderView(view);
    return App.router.navigate('add');
  },
  renderView: function(view) {
    this.destroyCurrentView(view);
    App.log('Controller: Rendering new view.');
    return $('#js-boilerplate-app').html(view.render().el);
  },
  destroyCurrentView: function(view) {
    if (!_.isUndefined(App.views.currentView)) {
      App.log('Controller: Destroying existing view.');
      App.views.currentView.close();
    }
    return App.views.currentView = view;
  }
});

},{"./views/add":7,"./views/contact_details":8,"./views/contacts":9}],4:[function(require,module,exports){
var Backbone, ContactModel;

Backbone = require('backbone');

module.exports = ContactModel = Backbone.Model.extend({
  idAttribute: '_id',
  urlRoot: 'api/contacts'
});

},{}],5:[function(require,module,exports){
var Backbone, ContactModel, ContactsCollection;

Backbone = require('backbone');

ContactModel = require('./contact');

module.exports = ContactsCollection = Backbone.Collection.extend({
  model: ContactModel,
  url: '/api/contacts'
});

},{"./contact":4}],6:[function(require,module,exports){
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
      name: this.$el.find('#name').val(),
      street: this.$el.find('#street').val(),
      city: this.$el.find('#city').val(),
      state: this.$el.find('#state').val(),
      postal_code: this.$el.find('#postal_code').val(),
      phone: this.$el.find('#phone').val()
    };
    App.data.contacts.create(newContact);
    return App.log('Add View: Saved new contact!');
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
    return App.controller.home();
  },
  deleteContact: function(e) {
    debugger;
    e.preventDefault();
    console.log('Deleting contact');
    App.data.contacts.remove(this.model);
    return App.controller.home();
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
    'click a.delete': 'deleteContact'
  },
  deleteContact: function(e) {
    e.preventDefault();
    console.log('Deleting contact');
    return App.data.contacts.remove(this.model);
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