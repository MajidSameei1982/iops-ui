if (!window.JST) {
  window.JST = {};
}
window.JST["contact"] = function(__obj) {
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
      _print(_safe('<div class=\'col-sm-12 col-md-6 bs-callout bs-callout-warning\'>\n\t<a class="delete" href=\'#\'>x</a>\n\t<address>\n\t  <strong>'));
    
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
    
      _print(_safe('\n\t</address>\n</div>\n'));
    
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
window.JST["contact_add"] = function(__obj) {
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
      _print(_safe('<div class=\'bs-callout bs-callout-success\'>\n\t<address>\n\t  <strong><input id="name" type="text"></strong><br/>\n\t  <input id="street" type="text"><br/>\n\t  <input id="city" type="text">, <input id="state" type="text"> <input id="postal_code" type="text"><br/>\n\t  <abbr title="Phone">P:</abbr> <input id="phone" type="text">\n\t  <a id=\'contact_save\' href=\'#\'>SAVE</a>\n\t</address>\n</div>'));
    
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
var BaselineApp, ContactCollection, ContactController, ContactLayout, ContactModel, Extensions, Marionette, Router;

Marionette = require('marionette');

BaselineApp = require('./common/baseline_app');

Extensions = require('./common/extensions');

ContactController = require('./contact_controller');

Router = require('./router');

ContactModel = require('./models/contact');

ContactCollection = require('./models/contact_collection');

ContactLayout = require('./views/contact_layout');

window.Demo = (function() {
  var App;
  if (window.App != null) {
    return window.App;
  }
  App = window.App = new BaselineApp();
  App.on("before:start", function(options) {
    var contacts;
    this.log('Starting');
    this.views = {};
    this.data = {};
    contacts = new ContactCollection([]);
    this.data.contacts = contacts;
    return this.layout = new ContactLayout();
  });
  App.on('start', function(options) {
    this.log('Started');
    if (Backbone.history) {
      this.controller = new ContactController();
      this.router = new Router({
        controller: this.controller
      });
      this.log('Backbone.history starting');
      Backbone.history.start();
    }
    return this.log('Done starting and running!');
  });
  return App;
})();

},{"./common/baseline_app":2,"./common/extensions":3,"./contact_controller":4,"./models/contact":5,"./models/contact_collection":6,"./router":7,"./views/contact_layout":10}],2:[function(require,module,exports){
var BaselineApp, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

BaselineApp = (function(superClass) {
  extend(BaselineApp, superClass);

  function BaselineApp() {
    this.log = bind(this.log, this);
    return BaselineApp.__super__.constructor.apply(this, arguments);
  }

  BaselineApp.prototype.log = function(msg, src, lvl) {
    this.vent.trigger("app:log", msg, src, lvl);
    return this;
  };

  BaselineApp.prototype.initialize = function(options) {
    this.silent = false;
    this.vent.bind('app:log', function(msg, src, lvl) {
      if (src == null) {
        src = 'App';
      }
      if (lvl == null) {
        lvl = 'DEBUG';
      }
      if (!this.silent) {
        msg = lvl + " | " + src + " | " + msg;
        return typeof console !== "undefined" && console !== null ? typeof console.log === "function" ? console.log(msg) : void 0 : void 0;
      }
    });
    return this;
  };

  return BaselineApp;

})(Marionette.Application);

module.exports = BaselineApp;

},{}],3:[function(require,module,exports){

/* MODS */
Backbone.Marionette.Renderer.render = function(template, data) {
  var path;
  path = JST["" + template];
  if (!path) {
    throw "Template " + template + " not found!";
  }
  return path(data);
};

},{}],4:[function(require,module,exports){
var ContactAddView, ContactCollectionView, ContactController, ContactLayout, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ContactCollectionView = require('./views/contact_collection');

ContactAddView = require('./views/contact_add');

ContactLayout = require('./views/contact_layout');

ContactController = (function(superClass) {
  extend(ContactController, superClass);

  function ContactController() {
    return ContactController.__super__.constructor.apply(this, arguments);
  }

  ContactController.prototype.initialize = function() {
    return App.log('Initializing', 'Controller');
  };

  ContactController.prototype.home = function() {
    var v;
    App.log('"Home" route hit.', 'Controller');
    v = new ContactCollectionView({
      collection: App.data.contacts
    });
    App.layout.list_region.show(v);
    App.router.navigate('#');
    return App.vent.bind('contact:added', function() {
      return App.layout.add_region.empty();
    });
  };

  ContactController.prototype.add = function() {
    var v;
    v = new ContactAddView();
    return App.layout.add_region.show(v);
  };

  return ContactController;

})(Marionette.Controller);

module.exports = ContactController;

},{"./views/contact_add":8,"./views/contact_collection":9,"./views/contact_layout":10}],5:[function(require,module,exports){
var Backbone, ContactModel,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Backbone = require('backbone');

ContactModel = (function(superClass) {
  extend(ContactModel, superClass);

  function ContactModel() {
    return ContactModel.__super__.constructor.apply(this, arguments);
  }

  ContactModel.prototype.idAttribute = '_id';

  ContactModel.prototype.urlRoot = 'api/contacts';

  return ContactModel;

})(Backbone.Model);

module.exports = ContactModel;

},{}],6:[function(require,module,exports){
var Backbone, ContactCollection, ContactModel,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Backbone = require('backbone');

ContactModel = require('./contact');

ContactCollection = (function(superClass) {
  extend(ContactCollection, superClass);

  function ContactCollection() {
    return ContactCollection.__super__.constructor.apply(this, arguments);
  }

  ContactCollection.prototype.model = ContactModel;

  ContactCollection.prototype.url = '/api/contacts';

  return ContactCollection;

})(Backbone.Collection);

module.exports = ContactCollection;

},{"./contact":5}],7:[function(require,module,exports){
var Marionette, Router,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Router = (function(superClass) {
  extend(Router, superClass);

  function Router() {
    return Router.__super__.constructor.apply(this, arguments);
  }

  Router.prototype.appRoutes = {
    '': 'home'
  };

  return Router;

})(Marionette.AppRouter);

module.exports = Router;

},{}],8:[function(require,module,exports){
var ContactAddView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ContactAddView = (function(superClass) {
  extend(ContactAddView, superClass);

  function ContactAddView() {
    this.save = bind(this.save, this);
    return ContactAddView.__super__.constructor.apply(this, arguments);
  }

  ContactAddView.prototype.template = "contact_add";

  ContactAddView.prototype.events = {
    'click a#contact_save': 'save'
  };

  ContactAddView.prototype.ui = {
    name: "input#name",
    street: "input#street",
    city: "input#city",
    state: "input#state",
    zip: "input#zip",
    phone: "input#phone"
  };

  ContactAddView.prototype.save = function(e) {
    var newContact;
    e.preventDefault();
    newContact = {
      name: this.ui.name.val(),
      street: this.ui.street.val(),
      city: this.ui.city.val(),
      state: this.ui.state.val(),
      postal_code: this.ui.zip.val(),
      phone: this.ui.phone.val()
    };
    App.data.contacts.create(newContact);
    App.log('Saved new contact!', "AddView");
    return App.vent.trigger('contact:added');
  };

  return ContactAddView;

})(Marionette.ItemView);

module.exports = ContactAddView;

},{}],9:[function(require,module,exports){
var ContactCollectionView, ContactItemView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ContactItemView = (function(superClass) {
  extend(ContactItemView, superClass);

  function ContactItemView() {
    return ContactItemView.__super__.constructor.apply(this, arguments);
  }

  ContactItemView.prototype.template = "contact";

  ContactItemView.prototype.initialize = function() {
    return this.listenTo(this.model, 'change', this.render);
  };

  ContactItemView.prototype.events = {
    'click a.delete': 'deleteContact'
  };

  ContactItemView.prototype.deleteContact = function(e) {
    e.preventDefault();
    App.log('Deleting contact', 'ContactItemView');
    return App.data.contacts.remove(this.model);
  };

  return ContactItemView;

})(Marionette.ItemView);

ContactCollectionView = (function(superClass) {
  extend(ContactCollectionView, superClass);

  function ContactCollectionView() {
    return ContactCollectionView.__super__.constructor.apply(this, arguments);
  }

  ContactCollectionView.prototype.initialize = function() {
    return this.listenTo(this.collection, 'change', this.render);
  };

  ContactCollectionView.prototype.childView = ContactItemView;

  return ContactCollectionView;

})(Marionette.CollectionView);

module.exports = ContactCollectionView;

},{}],10:[function(require,module,exports){
var ContactAddView, ContactLayout, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ContactAddView = require('./contact_add');

ContactLayout = (function(superClass) {
  extend(ContactLayout, superClass);

  function ContactLayout() {
    return ContactLayout.__super__.constructor.apply(this, arguments);
  }

  ContactLayout.prototype.el = '#contact_layout';

  ContactLayout.prototype.regions = {
    add_region: '#add_region',
    list_region: '#list_region'
  };

  ContactLayout.prototype.events = {
    'click #add_c': 'add_contact'
  };

  ContactLayout.prototype.add_contact = function(e) {
    var v;
    e.preventDefault();
    v = new ContactAddView();
    return App.layout.add_region.show(v);
  };

  return ContactLayout;

})(Marionette.LayoutView);

module.exports = ContactLayout;

},{"./contact_add":8}]},{},[1])
;