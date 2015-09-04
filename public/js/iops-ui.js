if (!window.JST) {
  window.JST = {};
}
window.JST["dashboard/content"] = function(__obj) {
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
      _print(_safe('<!-- Content Header (Page header) -->\n<section class="content-header">\n  <h1 id="title"></h1>\n</section>\n\n<!-- Main content -->\n<section id="center-region" class="content"></section>\n<!-- /.content -->'));
    
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
window.JST["dashboard/dashboard_layout"] = function(__obj) {
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
      _print(_safe('<div class="wrapper">\n\n  <!-- Main Header -->\n  <div id="header-region"></div>\n\n  <!-- Left side column. contains the logo and sidebar -->\n  <div id="side-region"></div>\n\n  <!-- Content Wrapper. Contains page content -->\n  <div id="content-region" class="content-wrapper"></div>\n  \n  <!-- Main Footer -->\n  <div id="footer-region"></div>\n  \n  <!-- Control Sidebar -->      \n  <div id="tool-region"></div>\n\n  <!-- Add the sidebar\'s background. This div must be placed\n       immediately after the control sidebar -->\n  <div class=\'control-sidebar-bg\'></div>\n</div><!-- ./wrapper -->\n<script src=\'adminlte/app.js\' type="text/javascript"></script>'));
    
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
window.JST["dashboard/footer"] = function(__obj) {
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
      _print(_safe('<div class="pull-right">\n\t<span id=\'logo\'><img src=\'img/logos/logo_lg.png\' class=\'iops\'/> powered by <img src=\'img/logos/jbt_sm.png\' class=\'jbt\'/></span>\n</div>\n\n'));
    
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
window.JST["dashboard/header"] = function(__obj) {
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
      _print(_safe('<!-- Logo -->\n<a href="/" class="logo">\n  <span class="logo-mini"><img src=\'img/logos/logo_sm.png\' alt=\'JBT iOPS\' style=\'height:41px;\'/></span>\n  <span class="logo-lg"><img src=\'img/logos/logo_lg.png\' alt=\'JBT iOPS\' style=\'height:41px;\'/></span>\n</a>\n\n<!-- Header Navbar -->\n<nav class="navbar navbar-static-top" role="navigation">\n  <!-- Sidebar toggle button-->\n  <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">\n    <span class="sr-only">Toggle navigation</span>\n  </a>\n  <!-- Navbar Right Menu -->\n  <div class="navbar-custom-menu">\n    <ul class="nav navbar-nav">\n      <li class=\'user user-menu\'>\n        <div style=\'padding:15px\' id=\'clock\'>--, --- ---, ---- 00:00</div>\n      </li>\n      <!-- User Account Menu -->\n      <li class="dropdown user user-menu">\n        <!-- Menu Toggle Button -->\n        <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n          <!-- The user image in the navbar-->\n          <img src="img/avatar.png" class="user-image" id=\'avatar\'/>\n          <!-- hidden-xs hides the username on small devices so only the image appears. -->\n          <span class="hidden-xs" id=\'fullname\'>'));
    
      _print(this.fullname);
    
      _print(_safe('</span>\n        </a>\n        <ul class="dropdown-menu">\n          <!-- The user image in the menu -->\n          <li class="user-header">\n            <img src="img/avatar.png" class="img-circle" id=\'avatar_full\' />\n            <p>\n              <span id=\'fullname_full\'>'));
    
      _print(this.fullname);
    
      _print(_safe('</span> <small id=\'email_full\'>'));
    
      _print(this.email);
    
      _print(_safe('</small>\n            </p>\n          </li>\n          <!-- Menu Body -->\n          <!-- <li class="user-body"></li> -->\n          <!-- Menu Footer-->\n          <li class="user-footer">\n            <div class="pull-left">\n              <a href="#" class="btn btn-default btn-flat" id=\'profile\'>Profile</a>\n            </div>\n            <div class="pull-right">\n              <a href="#" class="btn btn-default btn-flat" id=\'logout\'>Log Out</a>\n            </div>\n          </li>\n        </ul>\n      </li>\n      <!-- Control Sidebar Toggle Button -->\n      <li>\n        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>\n      </li>\n    </ul>\n  </div>\n</nav>'));
    
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
window.JST["dashboard/side"] = function(__obj) {
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
      _print(_safe('<!-- sidebar -->\n<section class="sidebar">\n  <!-- Sidebar Menu -->\n  <ul class="sidebar-menu" id=\'dashboard-list\'>\n    <li class="header">DASHBOARDS</li>\n    <!-- <li><a href="#"><i class=\'fa fa-th-large\'></i> <span>Link</span></a></li> -->\n    <!-- <li><a href="#"><i class=\'fa fa-th-large\'></i> <span>Another Link</span></a></li> -->\n  </ul>\n  <!-- /.sidebar-menu -->\n</section>\n<!-- /.sidebar -->'));
    
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
window.JST["dashboard/tool"] = function(__obj) {
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
      _print(_safe('<!-- sidebar -->\n<section class="sidebar">\n  <!-- Sidebar Menu -->\n  <ul class="sidebar-menu" id=\'dashboard-list\'>\n    <li class="header">iOPS Admin</li>\n    <li><a href="#"><i class=\'fa fa-building-o\'></i> <span>Manage Accounts</span></a></li>\n    <li><a href="#"><i class=\'fa fa-users\'></i> <span>Manage Users</span></a></li>\n  </ul>\n  <!-- /.sidebar-menu -->\n</section>\n<!-- /.sidebar -->'));
    
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
window.JST["dashboard/widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <h3 class="box-title"><i class="fa fa-cube"></i> '));
    
      _print(_safe(this.title));
    
      _print(_safe('</h3>\n  <!-- <div class="box-tools pull-right">\n    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>\n  </div> -->\n  <!-- /.box-tools -->\n</div><!-- /.box-header -->\n<div class="box-body" style="display: block;">\n  Widget Body\n</div><!-- /.box-body -->\n'));
    
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
window.JST["dashboard/widget_layout"] = function(__obj) {
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
      _print(_safe('<!-- placeholder -->\n'));
    
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
window.JST["forms/profile"] = function(__obj) {
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
      _print(_safe('<div class="container">\n\t<div class="row">\n\t\t<div class="col-xs-12 col-sm-4" style=\'border-right:solid 1px #ccc;\'>\n\t\t\t<div style=\'border:solid 1px #ccc;width:200px;height:200px\'></div>\n\t\t</div>\n\t\t<div class="col-xs-12 col-sm-8">\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'email',
        type: 'email',
        placeholder: 'Email',
        cls: 'col-sm-12',
        label: 'Email Address',
        value: this.email
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'firstname',
        type: 'text',
        placeholder: 'First Name',
        cls: 'col-sm-6',
        label: 'Name',
        value: this.firstname
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'lastname',
        type: 'text',
        placeholder: 'Last Name',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.lastname
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'password',
        type: 'password',
        placeholder: '',
        cls: 'col-sm-12',
        label: 'Reset Password'
      })));
    
      _print(_safe('\n\t\t\t<div class="col-xs-12"><button class="btn btn-primary">SAVE PROFILE</button></div>\n\t\t\t\n\t\t</div>\n\t</div>\n</div>'));
    
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
window.JST["login"] = function(__obj) {
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
      _print(_safe('<div class="box-body" id="alert-container">\n</div>\n<div class="login-box">\n  <div class="login-logo">\n    <img src=\'img/logos/logo_login.png\' style="max-width:300px;"/>\n  </div><!-- /.login-logo -->\n  <div class="login-box-body">\n    <p class="login-box-msg">Sign in to start your session</p>\n    <form action="#" method="post">\n      \n      '));
    
      _print(_safe(this.formGroup({
        id: 'email',
        type: 'email',
        feedback: 'envelope',
        placeholder: 'Email'
      })));
    
      _print(_safe('\n\n      '));
    
      _print(_safe(this.formGroup({
        id: 'password',
        type: 'password',
        feedback: 'lock',
        placeholder: 'Password'
      })));
    
      _print(_safe('\n\n      <div class="row">\n        <div class="col-xs-8">\n          <div class="checkbox icheck">\n            <label>\n              <input type="checkbox" id=\'remember\' name=\'remember\'> Remember Me\n            </label>\n          </div>\n        </div><!-- /.col -->\n        <div class="col-xs-4">\n          <button type="submit" class="btn btn-primary btn-block btn-flat" id=\'login\' name=\'login\'>Log In</button>\n        </div><!-- /.col -->\n      </div>\n    </form>\n    \n    <a href="#">I forgot my password</a><br>\n    <a href="register.html" class="text-center">Register</a>\n\n  </div><!-- /.login-box-body -->\n</div><!-- /.login-box -->\n\n'));
    
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
var AdminLTE_lib, BaselineApp, Extensions, IopsController, IopsLayout, Marionette, Router, SessionModel;

Marionette = require('marionette');

BaselineApp = require('./common/baseline_app');

Extensions = require('./common/extensions');

IopsController = require('./iops_controller');

Router = require('./router');

IopsLayout = require('./views/iops_layout');

SessionModel = require('./models/session');

AdminLTE_lib = require('./common/adminlte_lib');

window.IOPS = (function() {
  var App;
  if (window.App != null) {
    return window.App;
  }
  App = window.App = new BaselineApp();
  App.AdminLTE_lib = AdminLTE_lib;
  Object.defineProperty(App, 'current_user', {
    get: function() {
      if ((App.session != null) && (App.session.user != null)) {
        return App.session.user;
      } else {
        return null;
      }
    }
  });
  App.on("before:start", function(options) {
    this.log('Starting');
    SessionModel.restore();
    return this.layout = new IopsLayout();
  });
  App.on('start', function(options) {
    var dtfn;
    this.log('Started');
    if (Backbone.history) {
      this.controller = new IopsController();
      this.router = new Router({
        controller: this.controller
      });
      this.log('Backbone.history starting');
      Backbone.history.start();
    }
    dtfn = function() {
      App.time = new Date();
      App.vent.trigger('app:clock', App.time);
      return App.time;
    };
    App.clock = setInterval(dtfn, 5000);
    dtfn();
    return this.log('Done starting and running!');
  });
  return App;
})();

},{"./common/adminlte_lib":2,"./common/baseline_app":4,"./common/extensions":5,"./iops_controller":7,"./models/session":12,"./router":16,"./views/iops_layout":26}],2:[function(require,module,exports){

/*
 *
 * AdminLTE initialization code modularized so it can be executed
 * whenever the top-level dashboard is re-drawn.
 *
 * Usage:
 * View.onShow: ()-> App.AdminLTE_lib.reset()
 *
 */
var AdminLTE_lib,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

AdminLTE_lib = (function(superClass) {
  extend(AdminLTE_lib, superClass);

  function AdminLTE_lib() {
    return AdminLTE_lib.__super__.constructor.apply(this, arguments);
  }

  AdminLTE_lib.init = function() {
    $.AdminLTE = {};

    /* --------------------
     * - AdminLTE Options -
     * --------------------
     * Modify these options to suit your implementation
     */
    $.AdminLTE.options = {
      navbarMenuSlimscroll: true,
      navbarMenuSlimscrollWidth: '3px',
      navbarMenuHeight: '200px',
      sidebarToggleSelector: '[data-toggle=\'offcanvas\']',
      sidebarPushMenu: true,
      sidebarSlimScroll: true,
      sidebarExpandOnHover: false,
      enableBoxRefresh: true,
      enableBSToppltip: true,
      BSTooltipSelector: '[data-toggle=\'tooltip\']',
      enableFastclick: true,
      enableControlSidebar: true,
      controlSidebarOptions: {
        toggleBtnSelector: '[data-toggle=\'control-sidebar\']',
        selector: '.control-sidebar',
        slide: true
      },
      enableBoxWidget: true,
      boxWidgetOptions: {
        boxWidgetIcons: {
          collapse: 'fa-minus',
          open: 'fa-plus',
          remove: 'fa-times'
        },
        boxWidgetSelectors: {
          remove: '[data-widget="remove"]',
          collapse: '[data-widget="collapse"]'
        }
      },
      directChat: {
        enable: true,
        contactToggleSelector: '[data-widget="chat-pane-toggle"]'
      },
      colors: {
        lightBlue: '#3c8dbc',
        red: '#f56954',
        green: '#00a65a',
        aqua: '#00c0ef',
        yellow: '#f39c12',
        blue: '#0073b7',
        navy: '#001F3F',
        teal: '#39CCCC',
        olive: '#3D9970',
        lime: '#01FF70',
        orange: '#FF851B',
        fuchsia: '#F012BE',
        purple: '#8E24AA',
        maroon: '#D81B60',
        black: '#222222',
        gray: '#d2d6de'
      },
      screenSizes: {
        xs: 480,
        sm: 768,
        md: 992,
        lg: 1200
      }
    };
    $.AdminLTE.layout = {
      activate: function() {
        $.AdminLTE.layout.fix();
        $.AdminLTE.layout.fixSidebar();
        return $(window, '.wrapper').resize(function() {
          $.AdminLTE.layout.fix();
          return $.AdminLTE.layout.fixSidebar();
        });
      },
      fix: function() {
        var neg, postSetWidth, sidebar_height, window_height;
        neg = $('.main-header').outerHeight() + $('.main-footer').outerHeight();
        window_height = $(window).height();
        sidebar_height = $('.sidebar').height();
        if ($('body').hasClass('fixed')) {
          return $('.content-wrapper, .right-side').css('min-height', window_height - $('.main-footer').outerHeight());
        } else {
          postSetWidth = void 0;
          if (window_height >= sidebar_height) {
            $('.content-wrapper, .right-side').css('min-height', window_height - neg);
            return postSetWidth = window_height - neg;
          } else {
            $('.content-wrapper, .right-side').css('min-height', sidebar_height);
            return postSetWidth = sidebar_height;
          }
        }
      },
      fixSidebar: function() {
        if (!$('body').hasClass('fixed')) {
          if (typeof $.fn.slimScroll !== 'undefined') {
            $('.sidebar').slimScroll({
              destroy: true
            }).height('auto');
          }
          return;
        } else if (typeof $.fn.slimScroll === 'undefined' && console) {
          console.error('Error: the fixed layout requires the slimscroll plugin!');
        }
        if ($.AdminLTE.options.sidebarSlimScroll) {
          if (typeof $.fn.slimScroll !== 'undefined') {
            $('.sidebar').slimScroll({
              destroy: true
            }).height('auto');
            return $('.sidebar').slimscroll({
              height: $(window).height() - $('.main-header').height() + 'px',
              color: 'rgba(0,0,0,0.2)',
              size: '3px'
            });
          }
        }
      }
    };
    $.AdminLTE.pushMenu = {
      activate: function(toggleBtn) {
        var screenSizes;
        screenSizes = $.AdminLTE.options.screenSizes;
        $(toggleBtn).on('click', function(e) {
          e.preventDefault();
          if ($(window).width() > screenSizes.sm - 1) {
            return $('body').toggleClass('sidebar-collapse');
          } else {
            if ($('body').hasClass('sidebar-open')) {
              $('body').removeClass('sidebar-open');
              return $('body').removeClass('sidebar-collapse');
            } else {
              return $('body').addClass('sidebar-open');
            }
          }
        });
        $('.content-wrapper').click(function() {
          if ($(window).width() <= screenSizes.sm - 1 && $('body').hasClass('sidebar-open')) {
            $('body').removeClass('sidebar-open');
          }
        });
        if ($.AdminLTE.options.sidebarExpandOnHover || $('body').hasClass('fixed') && $('body').hasClass('sidebar-mini')) {
          return this.expandOnHover();
        }
      },
      expandOnHover: function() {
        var _this, screenWidth;
        _this = this;
        screenWidth = $.AdminLTE.options.screenSizes.sm - 1;
        return $('.main-sidebar').hover((function() {
          if ($('body').hasClass('sidebar-mini') && $('body').hasClass('sidebar-collapse') && $(window).width() > screenWidth) {
            _this.expand();
          }
        }), function() {
          if ($('body').hasClass('sidebar-mini') && $('body').hasClass('sidebar-expanded-on-hover') && $(window).width() > screenWidth) {
            _this.collapse();
          }
        });
      },
      expand: function() {
        return $('body').removeClass('sidebar-collapse').addClass('sidebar-expanded-on-hover');
      },
      collapse: function() {
        if ($('body').hasClass('sidebar-expanded-on-hover')) {
          return $('body').removeClass('sidebar-expanded-on-hover').addClass('sidebar-collapse');
        }
      }
    };
    $.AdminLTE.tree = function(menu) {
      var _this;
      _this = this;
      return $('li a', $(menu)).on('click', function(e) {
        var $this, checkElement, parent, parent_li, ul;
        $this = $(this);
        checkElement = $this.next();
        if (checkElement.is('.treeview-menu') && checkElement.is(':visible')) {
          checkElement.slideUp('normal', function() {
            checkElement.removeClass('menu-open');
          });
          checkElement.parent('li').removeClass('active');
        } else if (checkElement.is('.treeview-menu') && !checkElement.is(':visible')) {
          parent = $this.parents('ul').first();
          ul = parent.find('ul:visible').slideUp('normal');
          ul.removeClass('menu-open');
          parent_li = $this.parent('li');
          checkElement.slideDown('normal', function() {
            checkElement.addClass('menu-open');
            parent.find('li.active').removeClass('active');
            parent_li.addClass('active');
            _this.layout.fix();
          });
        }
        if (checkElement.is('.treeview-menu')) {
          return e.preventDefault();
        }
      });
    };
    $.AdminLTE.controlSidebar = {
      activate: function() {
        var _this, bg, btn, o, sidebar;
        _this = this;
        o = $.AdminLTE.options.controlSidebarOptions;
        sidebar = $(o.selector);
        btn = $(o.toggleBtnSelector);
        btn.on('click', function(e) {
          e.preventDefault();
          if (!sidebar.hasClass('control-sidebar-open') && !$('body').hasClass('control-sidebar-open')) {
            _this.open(sidebar, o.slide);
          } else {
            _this.close(sidebar, o.slide);
          }
        });
        bg = $('.control-sidebar-bg');
        _this._fix(bg);
        if ($('body').hasClass('fixed')) {
          return _this._fixForFixed(sidebar);
        } else {
          if ($('.content-wrapper, .right-side').height() < sidebar.height()) {
            return _this._fixForContent(sidebar);
          }
        }
      },
      open: function(sidebar, slide) {
        var _this;
        _this = this;
        if (slide) {
          return sidebar.addClass('control-sidebar-open');
        } else {
          return $('body').addClass('control-sidebar-open');
        }
      },
      close: function(sidebar, slide) {
        if (slide) {
          return sidebar.removeClass('control-sidebar-open');
        } else {
          return $('body').removeClass('control-sidebar-open');
        }
      },
      _fix: function(sidebar) {
        var _this;
        _this = this;
        if ($('body').hasClass('layout-boxed')) {
          sidebar.css('position', 'absolute');
          sidebar.height($('.wrapper').height());
          return $(window).resize(function() {
            _this._fix(sidebar);
          });
        } else {
          return sidebar.css({
            'position': 'fixed',
            'height': 'auto'
          });
        }
      },
      _fixForFixed: function(sidebar) {
        return sidebar.css({
          'position': 'fixed',
          'max-height': '100%',
          'overflow': 'auto',
          'padding-bottom': '50px'
        });
      },
      _fixForContent: function(sidebar) {
        return $('.content-wrapper, .right-side').css('min-height', sidebar.height());
      }
    };
    $.AdminLTE.boxWidget = {
      selectors: $.AdminLTE.options.boxWidgetOptions.boxWidgetSelectors,
      icons: $.AdminLTE.options.boxWidgetOptions.boxWidgetIcons,
      activate: function() {
        var _this;
        _this = this;
        $(_this.selectors.collapse).on('click', function(e) {
          e.preventDefault();
          _this.collapse($(this));
        });
        return $(_this.selectors.remove).on('click', function(e) {
          e.preventDefault();
          _this.remove($(this));
        });
      },
      collapse: function(element) {
        var _this, box, box_content;
        _this = this;
        box = element.parents('.box').first();
        box_content = box.find('.box-body, .box-footer');
        if (!box.hasClass('collapsed-box')) {
          element.children(':first').removeClass(_this.icons.collapse).addClass(_this.icons.open);
          return box_content.slideUp(300, function() {
            box.addClass('collapsed-box');
          });
        } else {
          element.children(':first').removeClass(_this.icons.open).addClass(_this.icons.collapse);
          return box_content.slideDown(300, function() {
            box.removeClass('collapsed-box');
          });
        }
      },
      remove: function(element) {
        var box;
        box = element.parents('.box').first();
        return box.slideUp();
      }
    };
    $.fn.boxRefresh = function(options) {
      var done, overlay, settings, start;
      settings = $.extend({
        trigger: '.refresh-btn',
        source: '',
        onLoadStart: function(box) {},
        onLoadDone: function(box) {}
      }, options);
      overlay = $('<div class="overlay"><div class="fa fa-refresh fa-spin"></div></div>');
      start = function(box) {
        box.append(overlay);
        settings.onLoadStart.call(box);
      };
      done = function(box) {
        box.find(overlay).remove();
        settings.onLoadDone.call(box);
      };
      return this.each(function() {
        var box, rBtn;
        if (settings.source === '') {
          if (console) {
            console.log('Please specify a source first - boxRefresh()');
          }
          return;
        }
        box = $(this);
        rBtn = box.find(settings.trigger).first();
        return rBtn.on('click', function(e) {
          e.preventDefault();
          start(box);
          return box.find('.box-body').load(settings.source, function() {
            return done(box);
          });
        });
      });
    };
    return $.fn.todolist = function(options) {
      var settings;
      settings = $.extend({
        onCheck: function(ele) {},
        onUncheck: function(ele) {}
      }, options);
      return this.each(function() {
        if (typeof $.fn.iCheck !== 'undefined') {
          $('input', this).on('ifChecked', function(event) {
            var ele;
            ele = $(this).parents('li').first();
            ele.toggleClass('done');
            settings.onCheck.call(ele);
          });
          $('input', this).on('ifUnchecked', function(event) {
            var ele;
            ele = $(this).parents('li').first();
            ele.toggleClass('done');
            settings.onUncheck.call(ele);
          });
        } else {
          $('input', this).on('change', function(event) {
            var ele;
            ele = $(this).parents('li').first();
            ele.toggleClass('done');
            settings.onCheck.call(ele);
          });
        }
      });
    };
  };

  AdminLTE_lib.reset = function() {
    var o;
    this.init();
    if (typeof AdminLTEOptions !== 'undefined') {
      $.extend(true, $.AdminLTE.options, AdminLTEOptions);
    }
    o = $.AdminLTE.options;
    $.AdminLTE.layout.activate();
    $.AdminLTE.tree('.sidebar');
    if (o.enableControlSidebar) {
      $.AdminLTE.controlSidebar.activate();
    }
    if (o.navbarMenuSlimscroll && typeof $.fn.slimscroll !== 'undefined') {
      $('.navbar .menu').slimscroll({
        height: o.navbarMenuHeight,
        alwaysVisible: false,
        size: o.navbarMenuSlimscrollWidth
      }).css('width', '100%');
    }
    if (o.sidebarPushMenu) {
      $.AdminLTE.pushMenu.activate(o.sidebarToggleSelector);
    }
    if (o.enableBSToppltip) {
      $('body').tooltip({
        selector: o.BSTooltipSelector
      });
    }
    if (o.enableBoxWidget) {
      $.AdminLTE.boxWidget.activate();
    }
    if (o.enableFastclick && typeof FastClick !== 'undefined') {
      FastClick.attach(document.body);
    }
    if (o.directChat.enable) {
      $(o.directChat.contactToggleSelector).on('click', function() {
        var box;
        box = $(this).parents('.direct-chat').first();
        box.toggleClass('direct-chat-contacts-open');
      });
    }
    return $('.btn-group[data-toggle="btn-toggle"]').each(function() {
      var group;
      group = $(this);
      return $(this).find('.btn').on('click', function(e) {
        group.find('.btn.active').removeClass('active');
        $(this).addClass('active');
        return e.preventDefault();
      });
    });
  };

  return AdminLTE_lib;

})(Object);

module.exports = AdminLTE_lib;

},{}],3:[function(require,module,exports){
var AppConfig,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

AppConfig = (function(superClass) {
  extend(AppConfig, superClass);

  function AppConfig() {
    return AppConfig.__super__.constructor.apply(this, arguments);
  }

  AppConfig.api_baseurl = 'http://{service}dev.iopsnj.com/v1';

  AppConfig.dt_format = 'E, MMM D, yyyy HH:mm';

  AppConfig.session_timeout = 1;

  return AppConfig;

})(Object);

module.exports = AppConfig;

},{}],4:[function(require,module,exports){
var AppConfig, BaselineApp, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

AppConfig = require('./appconfig');

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
    this.store = new Basil();
    this.config = AppConfig;
    this.vent.on('app:log', (function(_this) {
      return function(msg, src, lvl) {
        if (src == null) {
          src = 'App';
        }
        if (lvl == null) {
          lvl = 'DEBUG';
        }
        if (!_this.silent) {
          msg = lvl + " | " + src + " | " + msg;
          return typeof console !== "undefined" && console !== null ? typeof console.log === "function" ? console.log(msg) : void 0 : void 0;
        }
      };
    })(this));
    return this;
  };

  return BaselineApp;

})(Marionette.Application);

module.exports = BaselineApp;

},{"./appconfig":3}],5:[function(require,module,exports){

/* MODS */
Backbone.Marionette.Renderer.render = function(template, data) {
  var path;
  path = JST["" + template];
  if (!path) {
    throw "Template " + template + " not found!";
  }
  return path(data);
};

_.extend(Marionette.View.prototype, {
  templateHelpers: function() {
    return {
      formGroup: function(arg) {
        var cls, feedback, field, id, label, placeholder, type, value;
        id = arg.id, type = arg.type, label = arg.label, placeholder = arg.placeholder, cls = arg.cls, feedback = arg.feedback, value = arg.value;
        if (type == null) {
          type = 'text';
        }
        if (label == null) {
          label = '';
        }
        if (placeholder == null) {
          placeholder = '';
        }
        if (cls == null) {
          cls = '';
        }
        if (feedback == null) {
          feedback = '';
        }
        if (value == null) {
          value = '';
        }
        cls = [cls];
        field = "";
        switch (type) {
          case 'text':
          case 'email':
          case 'password':
            field = "<input type='" + type + "' id='" + id + "' name='" + id + "' class='form-control' placeholder='" + placeholder + "' value='" + value + "'/>";
        }
        if (label !== '') {
          label = "<label>" + label + "</label>";
        }
        if (feedback !== '') {
          feedback = "<span class='glyphicon glyphicon-" + feedback + " form-control-feedback'></span>";
          cls.push('has-feedback');
        }
        cls = cls.join(' ');
        return "<div class='form-group " + cls + "' for='" + id + "'>" + label + field + feedback + "</div>";
      }
    };
  }
});

},{}],6:[function(require,module,exports){
var UIUtils,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

UIUtils = (function(superClass) {
  extend(UIUtils, superClass);

  function UIUtils() {
    return UIUtils.__super__.constructor.apply(this, arguments);
  }

  UIUtils.setICheck = function(v) {
    var el;
    el = (v != null) && (v.el != null) ? v.el : null;
    $('input', el).iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%'
    });
    return v;
  };

  UIUtils.resetFields = function(v) {
    v.$('.has-error').removeClass('.has-error');
    return v;
  };

  UIUtils.checkFields = function(v) {
    var m;
    this.resetFields(v);
    if (v == null) {
      return false;
    }
    m = v.model;
    return v;
  };

  UIUtils.clearAlerts = function(el) {
    return $('.alert', el).remove();
  };

  UIUtils.showAlert = function(el, arg) {
    var alert, html, icn, icon, message, title, ttl, type;
    type = arg.type, message = arg.message, title = arg.title, icon = arg.icon;
    this.clearAlerts(el);
    icn = icon != null ? "<i class='icon fa fa-" + icon + "'></i>" : '';
    ttl = title != null ? "<h4>" + icn + title + "</h4>" : "" + icn;
    html = "<div class=\"alert alert-" + type + " alert-dismissable\">\n  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">×</button>\n  " + ttl + message + "\n</div>";
    alert = $(html);
    $(el).prepend(alert);
    return alert;
  };

  return UIUtils;

})(Object);

module.exports = UIUtils;

},{}],7:[function(require,module,exports){
var Dashboard, DashboardCollection, DashboardContentView, DashboardLayout, IopsController, LoginView, Marionette, ProfileView, User, WidgetCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

LoginView = require('./views/login_view');

User = require('./models/user');

ProfileView = require('./views/forms/profile_view');

Dashboard = require('./models/dashboard');

DashboardCollection = require('./models/dashboard_collection');

DashboardLayout = require('./views/dashboard/dashboard_layout');

DashboardContentView = require('./views/dashboard/content_view');

WidgetCollection = require('./models/widget_collection');

IopsController = (function(superClass) {
  extend(IopsController, superClass);

  function IopsController() {
    App.log('Initializing', 'Controller');
  }

  IopsController.prototype.set_main_layout = function() {
    var cv, dashes, dl;
    cv = App.layout.center_region.currentView;
    if ((cv != null) && cv instanceof DashboardLayout) {
      return cv;
    }
    dashes = new DashboardCollection();
    dashes.add(new Dashboard({
      id: 1,
      title: "Sample Dashboard",
      widgets: [
        {
          id: 1,
          sx: 1,
          sy: 1,
          r: 1,
          c: 1
        }, {
          id: 2,
          sx: 1,
          sy: 1,
          r: 2,
          c: 1
        }, {
          id: 3,
          sx: 1,
          sy: 1,
          r: 3,
          c: 1
        }, {
          id: 4,
          sx: 2,
          sy: 1,
          r: 1,
          c: 2
        }, {
          id: 5,
          sx: 2,
          sy: 2,
          r: 2,
          c: 2
        }
      ]
    }));
    dashes.add(new Dashboard({
      id: 2,
      title: "Another Dashboard",
      widgets: [
        {
          id: 1,
          sx: 1,
          sy: 1,
          r: 1,
          c: 2
        }, {
          id: 2,
          sx: 1,
          sy: 1,
          r: 2,
          c: 2
        }, {
          id: 3,
          sx: 1,
          sy: 1,
          r: 3,
          c: 2
        }, {
          id: 4,
          sx: 2,
          sy: 1,
          r: 2,
          c: 1
        }, {
          id: 5,
          sx: 2,
          sy: 2,
          r: 1,
          c: 1
        }
      ]
    }));
    dl = new DashboardLayout({
      collection: dashes
    });
    App.layout.center_region.show(dl);
    return dl;
  };

  IopsController.prototype.home = function() {
    var d, dl;
    if (!App.router.onRoute('home', '', null)) {
      return this;
    }
    dl = this.set_main_layout();
    d = (dl != null) && (dl.collection != null) && dl.collection.models.length > 0 ? 1 : 0;
    this.dashboard(d);
    return this;
  };

  IopsController.prototype.login = function() {
    var v;
    v = new LoginView();
    App.layout.center_region.show(v);
    return this;
  };

  IopsController.prototype.logout = function() {
    if (App.session != null) {
      App.session.clear();
    }
    App.session = null;
    App.router.navigate('login', {
      trigger: true
    });
    return this;
  };

  IopsController.prototype.profile = function() {
    var dl;
    dl = this.set_main_layout();
    dl.show_content({
      title: 'Your Profile',
      subtitle: "Edit your user account profile below",
      view: new ProfileView({
        model: App.current_user
      })
    });
    App.vent.trigger("show:dashboard");
    return this;
  };

  IopsController.prototype.dashboard = function(id) {
    var d, dash, dl, i, len, ref;
    if (id == null) {
      return null;
    }
    id = parseInt(id);
    dl = this.set_main_layout();
    dash = null;
    ref = dl.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      d = ref[i];
      if (d.id === id) {
        dash = d;
        break;
      }
    }
    if (dash != null) {
      dl.show_widgets(dash);
      App.vent.trigger("show:dashboard", id);
    }
    return this;
  };

  return IopsController;

})(Object);

module.exports = IopsController;

},{"./models/dashboard":10,"./models/dashboard_collection":11,"./models/user":13,"./models/widget_collection":15,"./views/dashboard/content_view":17,"./views/dashboard/dashboard_layout":18,"./views/forms/profile_view":25,"./views/login_view":27}],8:[function(require,module,exports){
var AppConfig, Backbone, BaseModel,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

AppConfig = require('../common/appconfig');

Backbone = require('backbone');

BaseModel = (function(superClass) {
  extend(BaseModel, superClass);

  function BaseModel(opts) {
    var url;
    BaseModel.__super__.constructor.apply(this, arguments);
    if ((this.local != null) && this.local === true) {
      url = '';
    } else {
      url = this.service != null ? ("" + AppConfig.api_baseurl).replace('{service}', this.service + ".") : "" + AppConfig.api_baseurl;
      if (this.urlRoot != null) {
        this.urlRoot = "" + url + this.urlRoot;
      } else {
        url;
      }
    }
    this;
  }

  return BaseModel;

})(Backbone.Model);

module.exports = BaseModel;

},{"../common/appconfig":3}],9:[function(require,module,exports){
var AppConfig, Backbone, BaseCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

AppConfig = require('../common/appconfig');

Backbone = require('backbone');

BaseCollection = (function(superClass) {
  extend(BaseCollection, superClass);

  function BaseCollection(opts) {
    var url;
    BaseCollection.__super__.constructor.apply(this, arguments);
    if ((this.local != null) && this.local === true) {
      url = '';
    } else {
      url = this.service != null ? ("" + AppConfig.api_baseurl).replace('{service}', this.service + ".") : "" + AppConfig.api_baseurl;
      if (this.url != null) {
        this.url = "" + url + this.url;
      } else {
        url;
      }
    }
    this;
  }

  return BaseCollection;

})(Backbone.Collection);

module.exports = BaseCollection;

},{"../common/appconfig":3}],10:[function(require,module,exports){
var BaseModel, Dashboard,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

Dashboard = (function(superClass) {
  extend(Dashboard, superClass);

  function Dashboard() {
    return Dashboard.__super__.constructor.apply(this, arguments);
  }

  Dashboard.prototype.local = true;

  return Dashboard;

})(BaseModel);

module.exports = Dashboard;

},{"./_base":8}],11:[function(require,module,exports){
var BaseCollection, Dashboard, DashboardCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

Dashboard = require('./dashboard');

DashboardCollection = (function(superClass) {
  extend(DashboardCollection, superClass);

  function DashboardCollection() {
    return DashboardCollection.__super__.constructor.apply(this, arguments);
  }

  DashboardCollection.prototype.local = true;

  DashboardCollection.prototype.model = Dashboard;

  return DashboardCollection;

})(BaseCollection);

module.exports = DashboardCollection;

},{"./_base_collection":9,"./dashboard":10}],12:[function(require,module,exports){
var BaseModel, SessionModel, User,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

User = require('./user');

SessionModel = (function(superClass) {
  extend(SessionModel, superClass);

  SessionModel.prototype.service = 'accounts';

  SessionModel.prototype.urlRoot = '/sessions';

  function SessionModel(config) {
    SessionModel.__super__.constructor.call(this, config);
    this.user = new User(this.get('user'));
  }

  SessionModel.prototype.initialize = function() {
    this.on("change", this.persist);
    this.persist();
    return this;
  };

  SessionModel.prototype.persist = function() {
    App.store.set('session', this);
    return this;
  };

  SessionModel.clear = function() {
    if (App.session != null) {
      App.session.off("change");
    }
    SessionModel.set_token();
    App.store.remove('session');
    App.session = null;
    return null;
  };

  SessionModel.auth = function(arg) {
    var email, error, password, success;
    email = arg.email, password = arg.password, success = arg.success, error = arg.error;
    SessionModel.clear();
    if ((email == null) || email.trim() === '' || (password == null) || password.trim() === '') {
      return error();
    } else {
      App.session = new SessionModel({
        email: email,
        password: password,
        token: 'foo',
        user: {
          id: 1,
          firstname: 'John',
          lastname: 'Talarico',
          fullname: 'John Talarico',
          email: 'john@opcsystems.com',
          avatar: null
        }
      });
      SessionModel.set_token(App.session);
      App.session.attributes['password'] = null;
      return success();
    }
  };

  SessionModel.set_token = function(session) {
    var tk;
    if (session != null) {
      tk = session.get("token");
      $.ajaxSetup({
        headers: {
          'token': tk
        }
      });
    } else {
      if ($.ajaxSettings.headers != null) {
        delete $.ajaxSettings.headers["token"];
      }
    }
    return session;
  };

  SessionModel.restore = function() {
    var s;
    s = App.store.get('session');
    if (s != null) {
      this.create(s);
    }
    return true;
  };

  SessionModel.create = function(config) {
    if (App.session != null) {
      App.session.clear();
    }
    App.session = new SessionModel(config);
    return App.session;
  };

  return SessionModel;

})(BaseModel);

module.exports = SessionModel;

},{"./_base":8,"./user":13}],13:[function(require,module,exports){
var BaseModel, User,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

User = (function(superClass) {
  extend(User, superClass);

  function User() {
    return User.__super__.constructor.apply(this, arguments);
  }

  User.prototype.service = 'accounts';

  User.prototype.urlRoot = '/user';

  User.prototype.defaults = {
    email: null,
    firstname: null,
    lastname: null,
    phone1: null,
    phone2: null,
    claims: []
  };

  return User;

})(BaseModel);

module.exports = User;

},{"./_base":8}],14:[function(require,module,exports){
var BaseModel, Widget,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

Widget = (function(superClass) {
  extend(Widget, superClass);

  function Widget() {
    return Widget.__super__.constructor.apply(this, arguments);
  }

  Widget.prototype.local = true;

  Widget.prototype.defaults = {
    r: 0,
    c: 0,
    sx: 0,
    sy: 0,
    service: null,
    title: null
  };

  return Widget;

})(BaseModel);

module.exports = Widget;

},{"./_base":8}],15:[function(require,module,exports){
var BaseCollection, Widget, WidgetCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

Widget = require('./widget');

WidgetCollection = (function(superClass) {
  extend(WidgetCollection, superClass);

  function WidgetCollection() {
    return WidgetCollection.__super__.constructor.apply(this, arguments);
  }

  WidgetCollection.prototype.local = true;

  WidgetCollection.prototype.model = Widget;

  return WidgetCollection;

})(BaseCollection);

module.exports = WidgetCollection;

},{"./_base_collection":9,"./widget":14}],16:[function(require,module,exports){
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
    '': 'home',
    'login': 'login',
    'logout': 'logout',
    'profile': 'profile',
    'dashboard/:id': 'dashboard'
  };

  Router.prototype.onRoute = function(name, path, args) {
    if ((path !== 'login' || path === 'logout') && (!App.session || (App.session.get('email') == null) || (App.current_user == null))) {
      App.router.navigate('login', {
        trigger: true
      });
      return false;
    }
    return true;
  };

  return Router;

})(Marionette.AppRouter);

module.exports = Router;

},{}],17:[function(require,module,exports){
var DashboardContentView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardContentView = (function(superClass) {
  extend(DashboardContentView, superClass);

  function DashboardContentView() {
    return DashboardContentView.__super__.constructor.apply(this, arguments);
  }

  DashboardContentView.prototype.template = "dashboard/content";

  DashboardContentView.prototype.regions = {
    center: '#center-region'
  };

  DashboardContentView.prototype.onShow = function() {
    if (this.center_view != null) {
      return this.center.show(this.center_view);
    }
  };

  DashboardContentView.prototype.onDomRefresh = function() {
    var st, t;
    t = this.title != null ? this.title : 'Foo';
    st = this.subtitle != null ? this.subtitle : '';
    t = t + " <small>" + st + "</small>";
    return $("#title").html(t);
  };

  return DashboardContentView;

})(Marionette.LayoutView);

module.exports = DashboardContentView;

},{}],18:[function(require,module,exports){
var DashboardContentView, DashboardFooterView, DashboardHeaderView, DashboardLayout, DashboardSideView, DashboardToolView, Marionette, WidgetLayout,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardHeaderView = require('./header_view');

DashboardSideView = require('./side_view');

DashboardToolView = require('./tool_view');

DashboardFooterView = require('./footer_view');

DashboardContentView = require('./content_view');

WidgetLayout = require('./widget_layout');

DashboardLayout = (function(superClass) {
  extend(DashboardLayout, superClass);

  function DashboardLayout() {
    return DashboardLayout.__super__.constructor.apply(this, arguments);
  }

  DashboardLayout.prototype.template = "dashboard/dashboard_layout";

  DashboardLayout.prototype.regions = {
    header: "#header-region",
    side: "#side-region",
    tool: "#tool-region",
    footer: "#footer-region",
    content: "#content-region"
  };

  DashboardLayout.prototype.show_content = function(arg) {
    var contentview, subtitle, title, view;
    title = arg.title, subtitle = arg.subtitle, view = arg.view;
    contentview = new DashboardContentView();
    contentview.title = title;
    contentview.subtitle = subtitle;
    contentview.center_view = view;
    this.content.show(contentview);
    return this;
  };

  DashboardLayout.prototype.show_widgets = function(dash) {
    return this.show_content({
      title: dash.get('title'),
      subtitle: '',
      view: new WidgetLayout({
        model: dash
      })
    });
  };

  DashboardLayout.prototype.onShow = function() {
    var footerview, headerview, sideview, toolview;
    headerview = new DashboardHeaderView({
      model: App.current_user
    });
    this.header.show(headerview);
    sideview = new DashboardSideView({
      collection: this.collection
    });
    this.side.show(sideview);
    toolview = new DashboardToolView();
    this.tool.show(toolview);
    footerview = new DashboardFooterView();
    this.footer.show(footerview);
    return App.AdminLTE_lib.reset();
  };

  return DashboardLayout;

})(Marionette.LayoutView);

module.exports = DashboardLayout;

},{"./content_view":17,"./footer_view":19,"./header_view":20,"./side_view":21,"./tool_view":22,"./widget_layout":23}],19:[function(require,module,exports){
var DashboardFooterView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardFooterView = (function(superClass) {
  extend(DashboardFooterView, superClass);

  function DashboardFooterView() {
    return DashboardFooterView.__super__.constructor.apply(this, arguments);
  }

  DashboardFooterView.prototype.template = "dashboard/footer";

  DashboardFooterView.prototype.tagName = "footer";

  DashboardFooterView.prototype.className = "main-footer";

  return DashboardFooterView;

})(Marionette.ItemView);

module.exports = DashboardFooterView;

},{}],20:[function(require,module,exports){
var AppConfig, DashboardHeaderView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

AppConfig = require('../../common/appconfig');

DashboardHeaderView = (function(superClass) {
  extend(DashboardHeaderView, superClass);

  function DashboardHeaderView() {
    this.onDomRefresh = bind(this.onDomRefresh, this);
    this.set_clock = bind(this.set_clock, this);
    return DashboardHeaderView.__super__.constructor.apply(this, arguments);
  }

  DashboardHeaderView.prototype.template = "dashboard/header";

  DashboardHeaderView.prototype.tagName = "header";

  DashboardHeaderView.prototype.className = "main-header";

  DashboardHeaderView.prototype.ui = {
    avatar: '#avatar',
    fullname: '#fullname',
    avatar_full: '#avatar_full',
    fullname_full: '#fullname_full',
    email_full: '#email_full',
    profile: 'a#profile',
    logout: 'a#logout',
    clock: '#clock'
  };

  DashboardHeaderView.prototype.events = {
    'click a#logout': 'logout',
    'click a#profile': 'profile'
  };

  DashboardHeaderView.prototype.set_clock = function(dt) {
    this.ui.clock.html($.format.date(dt, AppConfig.dt_format));
    return this;
  };

  DashboardHeaderView.prototype.logout = function(e) {
    e.preventDefault();
    App.controller.logout();
    return this;
  };

  DashboardHeaderView.prototype.profile = function(e) {
    e.preventDefault();
    App.router.navigate('profile', {
      trigger: true
    });
    return this;
  };

  DashboardHeaderView.prototype.onDomRefresh = function() {
    if ((App.current_user != null) && (App.current_user.get('avatar') != null)) {
      this.ui.avatar.attr('src', App.current_user.get('avatar'));
      this.ui.avatar_full.attr('src', App.current_user.get('avatar'));
    }
    App.vent.on('app:clock', this.set_clock);
    return this.set_clock(new Date());
  };

  DashboardHeaderView.prototype.onBeforeDestroy = function(args) {
    return App.vent.off('app:clock', this.set_clock);
  };

  return DashboardHeaderView;

})(Marionette.ItemView);

module.exports = DashboardHeaderView;

},{"../../common/appconfig":3}],21:[function(require,module,exports){
var DashboardSideView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardSideView = (function(superClass) {
  extend(DashboardSideView, superClass);

  function DashboardSideView() {
    this.update_dash_links = bind(this.update_dash_links, this);
    return DashboardSideView.__super__.constructor.apply(this, arguments);
  }

  DashboardSideView.prototype.template = "dashboard/side";

  DashboardSideView.prototype.tagName = "aside";

  DashboardSideView.prototype.className = "main-sidebar";

  DashboardSideView.prototype.ui = {
    avatar: '#avatar',
    fullname: '#fullname',
    dashboard_list: '#dashboard-list'
  };

  DashboardSideView.prototype.events = {
    'click #dashboard-list': 'show_dash'
  };

  DashboardSideView.prototype.show_dash = function(e) {
    var d, dlink, i, len, ref, tgt;
    e.preventDefault();
    tgt = $(e.target);
    dlink = tgt.closest('.dashboard-link');
    if ((dlink == null) || dlink.length === 0) {
      return null;
    }
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      d = ref[i];
      if (dlink.hasClass("d_" + d.id)) {
        $('li', this.ui.dashboard_list).removeClass('active');
        dlink.addClass('active');
        App.router.navigate("dashboard/" + d.id, {
          trigger: true
        });
        break;
      }
    }
    return this;
  };

  DashboardSideView.prototype.update_dash_links = function(id) {
    $('li', this.ui.dashboard_list).removeClass('active');
    if (id != null) {
      return $("li.dashboard-link.d_" + id).addClass('active');
    }
  };

  DashboardSideView.prototype.onShow = function() {
    return App.vent.on("show:dashboard", this.update_dash_links);
  };

  DashboardSideView.prototype.onDomRefresh = function() {
    var d, dl, i, len, ref, results;
    if ((App.current_user != null) && (App.current_user.get('avatar') != null)) {
      this.ui.avatar.attr('src', App.current_user.get('avatar'));
    }
    $('li.dashboard-link', this.ui.dashboard_list).remove();
    ref = this.collection.models;
    results = [];
    for (i = 0, len = ref.length; i < len; i++) {
      d = ref[i];
      dl = $("<li class='dashboard-link d_" + d.id + "'><a href='#'><i class='fa fa-th-large'></i> <span>" + (d.get('title')) + "</span></a></li>");
      results.push(this.ui.dashboard_list.append(dl));
    }
    return results;
  };

  return DashboardSideView;

})(Marionette.ItemView);

module.exports = DashboardSideView;

},{}],22:[function(require,module,exports){
var DashboardToolView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardToolView = (function(superClass) {
  extend(DashboardToolView, superClass);

  function DashboardToolView() {
    return DashboardToolView.__super__.constructor.apply(this, arguments);
  }

  DashboardToolView.prototype.template = "dashboard/tool";

  DashboardToolView.prototype.tagName = "aside";

  DashboardToolView.prototype.className = "control-sidebar control-sidebar-dark";

  return DashboardToolView;

})(Marionette.ItemView);

module.exports = DashboardToolView;

},{}],23:[function(require,module,exports){
var Marionette, Widget, WidgetLayout, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Widget = require('../../models/widget');

WidgetView = require('./widget_view');

WidgetLayout = (function(superClass) {
  extend(WidgetLayout, superClass);

  function WidgetLayout() {
    this.onDomRefresh = bind(this.onDomRefresh, this);
    this.adjust_widgets = bind(this.adjust_widgets, this);
    return WidgetLayout.__super__.constructor.apply(this, arguments);
  }

  WidgetLayout.prototype.template = "dashboard/widget_layout";

  WidgetLayout.prototype.className = 'gridster widget-container';

  WidgetLayout.prototype.tagName = 'ul';

  WidgetLayout.prototype.adjust_widgets = function(e, ui) {
    var arr, wid;
    wid = $(e.target).closest('li.widget').data('id');
    arr = [];
    this.$('li.widget').each(function() {
      return arr.push({
        r: $(this).data('row'),
        c: $(this).data('col'),
        sx: $(this).data('sizex'),
        sy: $(this).data('sizey'),
        id: $(this).data('id')
      });
    });
    return console.log(arr);
  };

  WidgetLayout.prototype.onDomRefresh = function() {
    var i, idx, len, m, ref, w, wli, wv;
    ref = this.model.get('widgets');
    for (idx = i = 0, len = ref.length; i < len; idx = ++i) {
      w = ref[idx];
      wli = $("<li id='widget_" + w.id + "' class='widget'></li>");
      wli.attr({
        'data-row': w.r,
        'data-col': w.c,
        'data-sizex': w.sx,
        'data-sizey': w.sy,
        'data-id': w.id
      });
      $(this.el).append(wli);
      this.addRegion("widget_" + w.id, "li#widget_" + w.id);
      m = new Widget({
        id: w.id,
        title: "Widget " + w.id
      });
      wv = new WidgetView({
        model: m
      });
      this.getRegion("widget_" + w.id).show(wv);
    }
    return this.grid = $(this.el).gridster({
      resize: {
        enabled: true,
        stop: this.adjust_widgets
      },
      autogrow_cols: true,
      draggable: {
        handle: '.box-header',
        stop: this.adjust_widgets
      }
    });
  };

  return WidgetLayout;

})(Marionette.LayoutView);

module.exports = WidgetLayout;

},{"../../models/widget":14,"./widget_view":24}],24:[function(require,module,exports){
var Marionette, WidgetView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = (function(superClass) {
  extend(WidgetView, superClass);

  function WidgetView() {
    return WidgetView.__super__.constructor.apply(this, arguments);
  }

  WidgetView.prototype.template = "dashboard/widget";

  WidgetView.prototype.className = 'widget-outer box box-primary';

  WidgetView.prototype.ui = {
    header: '.header',
    body: '.body'
  };

  return WidgetView;

})(Marionette.ItemView);

module.exports = WidgetView;

},{}],25:[function(require,module,exports){
var Marionette, ProfileView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ProfileView = (function(superClass) {
  extend(ProfileView, superClass);

  function ProfileView() {
    return ProfileView.__super__.constructor.apply(this, arguments);
  }

  ProfileView.prototype.template = "forms/profile";

  return ProfileView;

})(Marionette.ItemView);

module.exports = ProfileView;

},{}],26:[function(require,module,exports){
var IopsLayout, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IopsLayout = (function(superClass) {
  extend(IopsLayout, superClass);

  function IopsLayout() {
    return IopsLayout.__super__.constructor.apply(this, arguments);
  }

  IopsLayout.prototype.el = "html";

  IopsLayout.prototype.regions = {
    center_region: '#center'
  };

  return IopsLayout;

})(Marionette.LayoutView);

module.exports = IopsLayout;

},{}],27:[function(require,module,exports){
var LoginView, Marionette, SessionModel, UIUtils,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UIUtils = require('../common/uiutils');

SessionModel = require('../models/session');

LoginView = (function(superClass) {
  extend(LoginView, superClass);

  function LoginView() {
    return LoginView.__super__.constructor.apply(this, arguments);
  }

  LoginView.prototype.template = "login";

  LoginView.prototype.events = {
    'submit form': 'login'
  };

  LoginView.prototype.ui = {
    email: "input#email",
    password: "input#password",
    remember: "input#remember",
    login: "button#login",
    acontainer: "#alert-container"
  };

  LoginView.prototype.set_errors = function() {
    this.ui.email.parent().addClass('has-error');
    this.ui.password.parent().addClass('has-error');
    return this;
  };

  LoginView.prototype.clear_errors = function() {
    UIUtils.clearAlerts(this.ui.acontainer);
    this.ui.email.parent().removeClass('has-error');
    this.ui.password.parent().removeClass('has-error');
    return this;
  };

  LoginView.prototype.show_login_error = function() {
    UIUtils.showAlert(this.ui.acontainer, {
      title: "LOGIN FAILED!",
      message: "Check the email address and password, then try again.",
      type: "danger",
      icon: "warning"
    });
    this.set_errors();
    return this;
  };

  LoginView.prototype.disable_ui = function(disable) {
    var b, d;
    d = disable ? 'disabled' : null;
    this.$("input, button").attr('disabled', d);
    b = disable ? '<i class="fa fa-spinner fa-pulse"></i>' : 'Log In';
    this.ui.login.html(b);
    return this;
  };

  LoginView.prototype.login = function(e) {
    e.preventDefault();
    this.clear_errors();
    this.disable_ui(true);
    SessionModel.auth({
      email: this.ui.email.val(),
      password: this.ui.password.val(),
      success: function(a, b, c) {
        return App.router.navigate('', {
          trigger: true
        });
      },
      error: (function(_this) {
        return function() {
          _this.show_login_error();
          return _this.disable_ui(false);
        };
      })(this)
    });
    return this;
  };

  LoginView.prototype.onDomRefresh = function() {
    UIUtils.setICheck(this);
    return $('body').addClass('login-page');
  };

  return LoginView;

})(Marionette.ItemView);

module.exports = LoginView;

},{"../common/uiutils":6,"../models/session":12}]},{},[1])
;