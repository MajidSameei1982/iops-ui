if (!window.JST) {
  window.JST = {};
}
window.JST["common/modal"] = function(__obj) {
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
      _print(_safe('<div class="modal-dialog">\n  <div class="modal-content">\n    <div class="modal-header">\n      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\n      <h4 class="modal-title"></h4>\n    </div>\n    <div class="modal-body"></div>\n    <div class="modal-footer">\n      <button type="button" id=\'modal_cancel\' class="btn btn-outline pull-left" data-dismiss="modal"></button>\n      <button type="button" id=\'modal_save\' class="btn btn-outline"></button>\n    </div>\n  </div><!-- /.modal-content -->\n</div><!-- /.modal-dialog -->\n\n\n\n'));
    
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
      _print(_safe('<div class="wrapper">\n\n  <!-- Main Header -->\n  <div id="header-region" tabindex="-1"></div>\n\n  <!-- Left side column. contains the logo and sidebar -->\n  <div id="side-region" tabindex="-1"></div>\n\n  <!-- Content Wrapper. Contains page content -->\n  <div id="content-region" class="content-wrapper" tabindex="-1"></div>\n  \n  <!-- Main Footer -->\n  <div id="footer-region" tabindex="-1"></div>\n  \n  <!-- Control Sidebar -->      \n  <div id="tool-region" tabindex="-1"></div>\n\n  <!-- Add the sidebar\'s background. This div must be placed\n       immediately after the control sidebar -->\n  <div class=\'control-sidebar-bg\' tabindex="-1"></div>\n\n</div><!-- ./wrapper -->\n<script src=\'adminlte/app.js\' type="text/javascript"></script>\n\n\n'));
    
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
window.JST["dashboard/dashboard_modal"] = function(__obj) {
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
      _print(_safe('<div class="modal-dialog">\n  <div class="modal-content">\n    <div class="modal-header">\n      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\n      <h4 class="modal-title"></h4>\n      <div class="modal-subtitle"></div>\n    </div>\n    <div class="modal-body">\n      <div class="row">\n        '));
    
      _print(_safe(this.formGroup({
        id: 'title',
        type: 'text',
        placeholder: 'Dashboard Name',
        cls: 'col-sm-12',
        label: '',
        value: this.title
      })));
    
      _print(_safe('\n      </div>\n    </div>\n    <div class="modal-footer">\n      <button type="button" id=\'modal_cancel\' class="btn btn-outline pull-left" data-dismiss="modal">CANCEL</button>      \n      <button type="button" id=\'modal_save\' class="btn btn-outline" data-dismiss="modal">SAVE</button>\n    </div>\n  </div><!-- /.modal-content -->\n</div><!-- /.modal-dialog -->\n'));
    
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
      _print(_safe('<div class="pull-right">\n\t<span id=\'logo\'><img src=\'img/logos/logo_wide.png\'/> powered by <img src=\'img/logos/jbt_sm.png\'/></span>\n</div>\n\n'));
    
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
      _print(_safe('<!-- Logo -->\n<a href="/" class="logo">\n  <span class="logo-mini"><img src=\'img/logos/logo_square.png\'/></span>\n  <span class="logo-lg"><img src=\'img/logos/logo_wide.png\'/></span>\n</a>\n\n<!-- Header Navbar -->\n<nav class="navbar navbar-static-top" role="navigation">\n  <!-- Sidebar toggle button-->\n  <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">\n    <span class="sr-only">Toggle navigation</span>\n  </a>\n  <!-- Navbar Right Menu -->\n  <div class="navbar-custom-menu">\n    <ul class="nav navbar-nav">\n      <li class=\'user user-menu\'>\n        <div style=\'padding:15px\' id=\'clock\'>--, --- ---, ---- 00:00</div>\n      </li>\n      <!-- User Account Menu -->\n      <li class="dropdown user user-menu">\n        <!-- Menu Toggle Button -->\n        <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n          <!-- The user image in the navbar-->\n          <img src="img/avatar.png" class="user-image" id=\'avatar\'/>\n          <!-- hidden-xs hides the username on small devices so only the image appears. -->\n          <span class="hidden-xs" id=\'fullname\'>'));
    
      _print(this.fullName());
    
      _print(_safe('</span>\n        </a>\n        <ul class="dropdown-menu">\n          <!-- The user image in the menu -->\n          <li class="user-header">\n            <img src="img/avatar.png" class="img-circle" id=\'avatar_full\' />\n            <p>\n              <span id=\'fullName_full\'>'));
    
      _print(this.fullName());
    
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
      _print(_safe('<!-- sidebar -->\n<section class="sidebar" tabindex=\'-1\'>\n  <!-- Sidebar Menu -->\n  <ul class="sidebar-menu" id=\'dashboard-list\' tabindex=\'-1\'>\n    <li class="header" tabindex=\'-1\'>DASHBOARDS  <a href=\'#\' id=\'add_dash\' class=\'inline\'><i class=\'fa fa-plus-square\'></i>Add</a></li>\n    <!-- <li class="header" tabindex=\'-1\'>DASHBOARDS </li> -->\n  </ul>\n  <!-- /.sidebar-menu -->\n</section>\n<!-- /.sidebar -->'));
    
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
      _print(_safe('<!-- sidebar -->\n<section class="sidebar" tabindex="-1">\n  <!-- Sidebar Menu -->\n  <ul class="sidebar-menu" id=\'dashboard-list\' tabindex=\'-1\'>\n    <li class="header">App Admin</li>\n    <li id="manage_accounts" class=\'tool_link\' data-toggle="control-sidebar" tabindex=\'-1\'><a href="#" tabindex=\'-1\'><i class=\'fa fa-building-o\'></i> <span>Manage Accounts</span></a></li>\n    <li id="manage_permissions" class=\'tool_link\' data-toggle="control-sidebar" tabindex=\'-1\'><a href="#" tabindex=\'-1\'><i class=\'fa fa-users\'></i> <span>Manage Permissions</span></a></li>\n    <li id="reports" class=\'tool_link\' data-toggle="control-sidebar" tabindex=\'-1\'><a href="#" tabindex=\'-1\'><i class=\'fa fa-bar-chart\'></i> <span>Reports</span></a></li>\n  </ul>\n  <!-- /.sidebar-menu -->\n</section>\n<!-- /.sidebar -->'));
    
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div><!-- /.box-header -->\n<div class="box-body content">\n  Widget Body\n</div><!-- /.box-body -->\n'));
    
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
      _print(_safe('<div><a id="add_widget" href="#"><i class=\'fa fa-plus-square\'></i> Add New Widget</a></div>\n<ul class=\'gridster widget-container\'></ul>\n'));
    
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
window.JST["dashboard/widget_modal"] = function(__obj) {
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
      var i, len, ref, w;
    
      _print(_safe('<div class="modal-dialog">\n  <div class="modal-content">\n    <div class="modal-header">\n      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\n      <h4 class="modal-title">Add a Widget</h4>\n      Select a widget below to add to the current dashboard.\n    </div>\n    <div class="modal-body">\n      <div id=\'widget_selections\'>\n        '));
    
      ref = App.config.widgets;
      for (i = 0, len = ref.length; i < len; i++) {
        w = ref[i];
        _print(_safe('\n          <a class=\'widget_select\' id=\''));
        _print(w.id);
        _print(_safe('\' href="#"><i class="fa fa-'));
        _print(w.icon);
        _print(_safe('"></i> '));
        _print(w.name);
        _print(_safe('</a>\n        '));
      }
    
      _print(_safe('\n      </div>\n    </div>\n    <div class="modal-footer">\n      <button type="button" id=\'modal_cancel\' class="btn btn-outline pull-left" data-dismiss="modal">CANCEL</button>\n    </div>\n  </div><!-- /.modal-content -->\n</div><!-- /.modal-dialog -->\n'));
    
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
window.JST["forms/manage_accounts/account"] = function(__obj) {
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
      _print(_safe('<div class=\'account_container\'>\n\t<div class=\'col-md-12 title\'>\n\t\t<i id=\'account_active\' class="fa fa-fw"></i>\n\t\t<span id=\'account_name_label\'>'));
    
      _print(this.name);
    
      _print(_safe('</span>\n\t\t<input type=\'text\' id=\'account_name\' value=\''));
    
      _print(_safe(this.name));
    
      _print(_safe('\' size=\'50\' placeholder=\'Account Name\'/>\n\n\t\t<span id=\'account_crud\' class=\'crud_container\'>\n\t\t\t<span class=\'crud\' id=\'edit_account\'><i class="fa fa-pencil-square" title=\'Edit Account\'></i> Edit</span>\n\t\t\t<span class=\'crud\' id=\'add_site\'><i class="fa fa-plus-square" title=\'Add Site to Account\'></i> Add Site</span>\n\t\t\t<span class=\'crud\' id=\'delete_account\'><i class="fa fa-times-circle" title=\'Delete Account\'></i> Delete</span>\n\t\t</span>\n\t\t<span id=\'account_buttons\'>\n\t\t\t<button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n\t\t\t<button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n\t\t</span>\n\t</div>\n\t\n\t<div class=\'col-md-12 site_list container\'></div>\n</div>\n'));
    
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
window.JST["forms/manage_accounts/accounts"] = function(__obj) {
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
      _print(_safe('<div class="preamble">\n\t<span id="add_account"><i class=\'fa fa-plus-square\'></i> Add New Account</span>\n</div>\n<div class="container" id="account_list"></div>'));
    
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
window.JST["forms/manage_accounts/site"] = function(__obj) {
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
      _print(_safe('<div class=\'site_container\'>\n  <div>\n    <span class=\'display\' id=\'site_label\'><b>'));
    
      _print(this.name);
    
      _print(_safe(' '));
    
      _print((this.code != null) && this.code !== '' ? "(" + this.code + ")" : '');
    
      _print(_safe('</b></span>\n    <input class=\'edit\' type=\'text\' id=\'site_name\' value=\''));
    
      _print(_safe(this.name));
    
      _print(_safe('\' size=\'40\' placeholder=\'Site Name\'/>\n    <input class=\'edit\' type=\'text\' id=\'site_code\' value=\''));
    
      _print(_safe(this.acode));
    
      _print(_safe('\' size=\'5\' placeholder=\'CODE\'/>\n    <span id=\'site_crud\' class=\'crud_container display\'>\n      <span class=\'crud\' id=\'edit_site\'><i class="fa fa-pencil-square" title=\'Edit Site\'></i></span>\n      <span class=\'crud\' id=\'delete_site\'><i class="fa fa-times-circle" title=\'Delete Site\'></i></span>\n    </span>\n  </div>\n  <div>\n    <span class=\'label left\'>Active</span>\n    <i id=\'site_active\' class="fa fa-fw"></i> <span id="site_active_label"></span>\n  </div>\n  <div>\n    <span class=\'label left\'>Short Name:</span>\n    <span class=\'display\' id=\'site_short_label\'>'));
    
      _print(this.shortName);
    
      _print(_safe('</span>\n    <input class=\'edit\' type=\'text\' id=\'site_short\' value=\''));
    
      _print(_safe(this.shortName));
    
      _print(_safe('\' size=\'40\' placeholder=\'Short Name\'/>\n  </div>\n  <div>\n    <span class=\'label left\'>Service URL:</span>\n    <span class=\'display\' id=\'site_url_label\'>'));
    
      _print(this.serverUrl);
    
      _print(_safe('</span>\n    <input class=\'edit\' type=\'text\' id=\'site_url\' value=\''));
    
      _print(_safe(this.serverUrl));
    
      _print(_safe('\' size=\'40\' placeholder=\'OPCSystems Server URL\'/>\n  </div>\n  <div>\n    <span class=\'label left\'>Refresh:</span>\n    <span class=\'display\' id=\'site_refresh_rate_label\'>'));
    
      _print(this.refreshRate);
    
      _print(_safe('</span>\n    <input class=\'edit\' type=\'text\' id=\'site_refresh_rate\' value=\''));
    
      _print(_safe(this.refreshRate));
    
      _print(_safe('\' size=\'5\' placeholder=\'Rate\'/>\n    <i>&nbsp;sec.</i>\n  </div>\n  <div>\n    <span id="site_cloud_label" class=\'label left\'>Cloud Data</span>\n    <i id=\'site_cloud\' class="fa fa-fw"></i>\n  </div>\n  <div class=\'edit\'>\n    <i id=\'site_zones_label\' class=\'label left\'>Zones and Gates:</i><br/>\n    <textarea id=\'site_zones\' rows="10" cols="40" placeholder=\'{&#10;&nbsp;&nbsp;1:["C1", "C2"],&#10;&nbsp;&nbsp;2:["D1", "D2", "D3"]&#10;}\n\'></textarea>\n  </div>\n\n  <div id=\'site_buttons\' class=\'edit\'>\n    <button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n  </div>\n</div>\n'));
    
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
window.JST["forms/manage_permissions/layout"] = function(__obj) {
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
      _print(_safe('<div class="nav-tabs-custom">\n  <ul class="nav nav-tabs">\n    <li class=""><a href="#users_region" data-toggle="tab" aria-expanded="true">Users</a></li>\n    <li class=""><a href="#roles_region" data-toggle="tab" aria-expanded="false">Roles</a></li>\n    <li class="active"><a href="#permissions_region" data-toggle="tab" aria-expanded="false">Permissions</a></li>\n  </ul>\n  <div class="tab-content">\n    <div class="tab-pane" id="users_region"></div>\n    <div class="tab-pane" id="roles_region"></div>\n    <div class="tab-pane active" id="permissions_region"></div>\n  </div><!-- /.tab-content -->\n</div>'));
    
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
window.JST["forms/manage_permissions/permission"] = function(__obj) {
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
      _print(_safe('<div class=\'col-md-12\'>\n  <i class=\'fa fa-fw fa-lock\'></i>\n  <span id=\'permission_label\'><b>'));
    
      _print(this.name);
    
      _print(_safe('</b></span>\n  <input type=\'text\' id=\'permission_name\' value=\''));
    
      _print(_safe(this.name));
    
      _print(_safe('\' size=\'50\' placeholder=\'Permission Name\'/>\n\n  <span id=\'permission_crud\' class=\'crud_container\'>\n    <span class=\'crud\' id=\'edit_permission\'><i class="fa fa-pencil-square" title=\'Edit Permission\'></i></span>\n    <span class=\'crud\' id=\'delete_permission\'><i class="fa fa-times-circle" title=\'Delete Permission\'></i></span>\n  </span>\n  <span id=\'permission_buttons\'>\n    <button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n  </span>\n</div>\n<div class="col-md-12" id=\'permission_desc_container\'>\n  <span id=\'permission_desc_label\'><i>'));
    
      _print(this.description);
    
      _print(_safe('</i></span>\n  <input type=\'text\' id=\'permission_desc\' value=\''));
    
      _print(_safe(this.description));
    
      _print(_safe('\' size=\'50\' placeholder=\'Permission Description\'/>\n</div>\n'));
    
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
window.JST["forms/manage_permissions/permissions"] = function(__obj) {
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
      _print(_safe('<div class="preamble">\n  '));
    
      if (this.global) {
        _print(_safe('\n    <h3><i class="fa fa-fw fa-globe"></i>'));
        _print(this.name);
        _print(_safe('</h3>\n  '));
      } else {
        _print(_safe('\n    <h4><i class="fa fa-fw fa-map-marker"></i>'));
        _print(this.name);
        _print(_safe('('));
        _print(this.abbrev);
        _print(_safe(')</h4>\n  '));
      }
    
      _print(_safe('\n  <span id="add_claim"><i class=\'fa fa-plus-square\'></i> Add New Permission</span>\n</div>\n<div id=\'permissions_list\'></div>'));
    
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
window.JST["forms/manage_permissions/permissions_top"] = function(__obj) {
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
      _print(_safe('<div id=\'global_region\'>\n  <div class="loading"><i class="fa fa-spinner fa-pulse"></i> LOADING...</div>\n</div>\n'));
    
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
window.JST["forms/manage_permissions/role"] = function(__obj) {
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
      _print(_safe('<div class=\'col-md-12\'>\n  <i class=\'fa fa-fw fa-group\'></i>\n  <span id=\'role_label\'><b>'));
    
      _print(this.name);
    
      _print(_safe('</b></span>\n  <input type=\'text\' id=\'role_name\' value=\''));
    
      _print(_safe(this.name));
    
      _print(_safe('\' size=\'50\' placeholder=\'Role Name\'/>\n\n  <span id=\'role_crud\' class=\'crud_container\'>\n    <span class=\'crud\' id=\'edit_role\'><i class="fa fa-pencil-square" title=\'Edit Role\'></i></span>\n    <span class=\'crud\' id=\'delete_role\'><i class="fa fa-times-circle" title=\'Delete Role\'></i></span>\n  </span>\n  <span id=\'role_buttons\'>\n    <button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n  </span>\n</div>\n<div class="col-md-12" id=\'role_desc_container\'>\n  <span id=\'role_desc_label\'><i>'));
    
      _print(this.description);
    
      _print(_safe('</i></span>\n  <input type=\'text\' id=\'role_desc\' value=\''));
    
      _print(_safe(this.description));
    
      _print(_safe('\' size=\'50\' placeholder=\'Role Description\'/>\n</div>\n<div class="col-md-12" id=\'role_claims_container\'>\n  '));
    
      _print(_safe(this.claimSelector({
        id: 'role_claims',
        label: 'Permissions',
        value: null,
        site_id: this.site_id,
        global: this.global
      })));
    
      _print(_safe('\n</div>\n'));
    
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
window.JST["forms/manage_permissions/roles"] = function(__obj) {
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
      _print(_safe('<div class="preamble">\n  '));
    
      if (this.global) {
        _print(_safe('\n    <h3><i class="fa fa-fw fa-globe"></i>'));
        _print(this.name);
        _print(_safe('</h3>\n  '));
      } else {
        _print(_safe('\n    <h4><i class="fa fa-fw fa-map-marker"></i>'));
        _print(this.name);
        _print(_safe('('));
        _print(this.abbrev);
        _print(_safe(')</h4>\n  '));
      }
    
      _print(_safe('\n  <span id="add_role"><i class=\'fa fa-plus-square\'></i> Add New Role</span>\n</div>\n<div id=\'roles_list\'></div>'));
    
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
window.JST["forms/manage_permissions/roles_top"] = function(__obj) {
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
      _print(_safe('<div id=\'global_region\'></div>'));
    
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
window.JST["forms/manage_permissions/user"] = function(__obj) {
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
      var acc, i, j, len, len1, ref, ref1, s;
    
      _print(_safe('<div class=\'col-md-12 display\'>\n  <span id=\'user_crud\' class=\'crud_container\'>\n    <span id=\'user_label\'>'));
    
      _print(this.lastname + ", " + this.firstname);
    
      _print(_safe(' <small>('));
    
      _print(this.email);
    
      _print(_safe(')</small></span>\n    <span class=\'crud\' id=\'edit_user\'><i class="fa fa-pencil-square" title=\'Edit User\'></i></span>\n    <span class=\'crud\' id=\'delete_user\'><i class="fa fa-times-circle" title=\'Delete User\'></i></span>\n  </span>\n</div>\n<div class=\'col-md-12 edit\'>\n  '));
    
      _print(_safe(this.formGroup({
        id: 'email',
        type: 'email',
        placeholder: 'Email',
        cls: 'col-sm-12',
        label: 'Email Address',
        value: this.email
      })));
    
      _print(_safe('\n  '));
    
      _print(_safe(this.formGroup({
        id: 'firstname',
        type: 'text',
        placeholder: 'First Name',
        cls: 'col-sm-6',
        label: 'Name',
        value: this.firstname
      })));
    
      _print(_safe('\n  '));
    
      _print(_safe(this.formGroup({
        id: 'lastname',
        type: 'text',
        placeholder: 'Last Name',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.lastname
      })));
    
      _print(_safe('\n  '));
    
      _print(_safe(this.formGroup({
        id: 'phone1',
        type: 'text',
        placeholder: 'Primary Phone',
        cls: 'col-sm-6',
        label: 'Phone Numbers',
        value: this.phone1
      })));
    
      _print(_safe('\n  '));
    
      _print(_safe(this.formGroup({
        id: 'phone2',
        type: 'text',
        placeholder: 'Secondary Phone',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.phone2
      })));
    
      _print(_safe('\n  '));
    
      _print(_safe(this.formGroup({
        id: 'password',
        type: 'password',
        placeholder: 'new password',
        cls: 'col-sm-6',
        label: 'Reset Password'
      })));
    
      _print(_safe('\n  '));
    
      _print(_safe(this.formGroup({
        id: 'password_confirmation',
        type: 'password',
        placeholder: 'confirm new password',
        cls: 'col-sm-6',
        label: '&nbsp;'
      })));
    
      _print(_safe('\n\n  <h3 class=\'account_name col-md-12\'><i class="fa fa-fw fa-globe"></i>Global Roles</h3>\n  '));
    
      _print(_safe(this.roleSelector({
        id: 'roles_global',
        label: null,
        value: null,
        site_id: null,
        global: true,
        cls: 'col-md-12'
      })));
    
      _print(_safe('\n  \n  '));
    
      ref = App.accounts.models;
      for (i = 0, len = ref.length; i < len; i++) {
        acc = ref[i];
        _print(_safe('\n    <div class=\'account_container col-md-12\'>\n      <h3 class=\'account_name\'><i class="fa fa-fw fa-building-o"></i>'));
        _print(acc.get('name'));
        _print(_safe(' Roles</h3>\n  '));
        ref1 = acc.sites.models;
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          s = ref1[j];
          _print(_safe('\n        '));
          _print(_safe(this.roleSelector({
            id: 'roles_' + s.id,
            label: (s.get('name')) + " (" + (s.get('abbrev')) + ")",
            value: null,
            site_id: s.id,
            global: false,
            cls: 'col-md-12'
          })));
          _print(_safe('\n  '));
        }
        _print(_safe('\n    </div>\n  '));
      }
    
      _print(_safe('\n  <span id=\'user_buttons\'>\n    <button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n  </span>\n</div>'));
    
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
window.JST["forms/manage_permissions/users"] = function(__obj) {
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
      _print(_safe('<div class="loading"><i class="fa fa-spinner fa-pulse"></i> LOADING...</div>\n<div class="preamble">\n  <span id="add_user"><i class=\'fa fa-plus-square\'></i> Add New User</span>\n</div>\n<div id=\'users_list\'></div>\n'));
    
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
        id: 'phone1',
        type: 'text',
        placeholder: 'Primary Phone',
        cls: 'col-sm-6',
        label: 'Phone Numbers',
        value: this.phone1
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'phone2',
        type: 'text',
        placeholder: 'Secondary Phone',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.phone2
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'password',
        type: 'password',
        placeholder: 'new password',
        cls: 'col-sm-6',
        label: 'Reset Password'
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'password_confirmation',
        type: 'password',
        placeholder: 'confirm new password',
        cls: 'col-sm-6',
        label: '&nbsp;'
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
      _print(_safe('<div class="box-body" id="alert-container">\n</div>\n<div class="login-box">\n  <div class="login-logo"><img src=\'img/logos/logo_login.png\'/></div>\n  <div class="login-box-body">\n    <p class="login-box-msg">Sign in to start your session</p>\n    <form action="#" method="post">\n      \n      '));
    
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

if (!window.JST) {
  window.JST = {};
}
window.JST["reports"] = function(__obj) {
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
      _print(_safe('<style>\n    #reportViewer1 {\n        position: absolute;\n        left: 5px;\n        right: 5px;\n        top: 5px;\n        bottom: 5px;\n        font-family: \'segoe ui\', \'ms sans serif\';\n        overflow: hidden;\n    }\n</style>\n<div id="reportViewer1" class="k-widget">\n    loading...\n</div>'));
    
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
window.JST["widgets/alarm_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-bullhorn"></i> <h3 class="box-title">Alarms</h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div><!-- /.box-header -->\n<div class="box-body content" id=\'content\'>\n  <div class="display contain">\n    \n  </div>\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    \n  </div><!-- /.box-body -->\n</div><!-- /.box-body -->\n'));
    
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
window.JST["widgets/pbb_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-plane"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="gate_label">\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table class=\'data\'>\n      <tr><td class=\'lbl\' id=\'pbb_status_lbl\'>&nbsp;</td><td id=\'pbb_status\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_autolevel_lbl\'>&nbsp;</td><td id=\'pbb_autolevel\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_canopy_lbl\'>&nbsp;</td><td id=\'pbb_canopy\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_acffloor_lbl\'>ACF Floor</td><td id=\'pbb_acffloor\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_cablehoist_lbl\'>&nbsp;</td><td id=\'pbb_cablehoist\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_estop_lbl\'>&nbsp;</td><td id=\'pbb_estop\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_limits_lbl\'>Limits</td><td id=\'pbb_limits\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_docktime_lbl\'>&nbsp;</td><td id=\'pbb_docktime\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_undocktime_lbl\'>&nbsp;</td><td id=\'pbb_undocktime\' class=\'val\'>LOADING...</td></tr>\n    </table>\n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        value: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      '));
    
      _print(_safe(this.formGroup({
        id: 'terminal',
        label: 'Terminal',
        type: 'text',
        placeholder: 'Terminal',
        value: this.settings.terminal,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n      '));
    
      _print(_safe(this.formGroup({
        id: 'zone',
        label: 'Zone',
        type: 'text',
        placeholder: 'Zone',
        value: this.settings.zone,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n    </div>\n    <div class="row">\n      '));
    
      _print(_safe(this.formGroup({
        id: 'display_prefix',
        label: 'Prefix',
        type: 'text',
        placeholder: 'Display Prefix',
        value: this.settings.display_prefix,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n      '));
    
      _print(_safe(this.formGroup({
        id: 'gate',
        label: 'Gate',
        type: 'text',
        feedback: 'plane',
        placeholder: 'Gate #',
        value: this.settings.gate,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/pca_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-server"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="gate_label">\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table class=\'data\'>\n      <tr><td class=\'lbl\' id=\'pbb_status_lbl\'>&nbsp;</td><td id=\'pbb_status\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_status_lbl\'>&nbsp;</td><td id=\'pca_status\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_status_lbl\'>&nbsp;</td><td id=\'gpu_status\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_docktime_lbl\'>ACF Floor</td><td id=\'pbb_docktime\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_ontime_lbl\'>&nbsp;</td><td id=\'pbb_ontime\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_ontime_lbl\'>&nbsp;</td><td id=\'pca_ontime\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_ontime_lbl\'>Limits</td><td id=\'gpu_ontime\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_dischargetemp_lbl\'>&nbsp;</td><td id=\'pca_dischargetemp\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_outputamps_lbl\'>&nbsp;</td><td id=\'gpu_outputamps\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_outputvolts_lbl\'>&nbsp;</td><td id=\'gpu_outputvolts\' class=\'val\'>LOADING...</td></tr>\n    </table>\n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        value: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      '));
    
      _print(_safe(this.formGroup({
        id: 'terminal',
        label: 'Terminal',
        type: 'text',
        placeholder: 'Terminal',
        value: this.settings.terminal,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n      '));
    
      _print(_safe(this.formGroup({
        id: 'zone',
        label: 'Zone',
        type: 'text',
        placeholder: 'Zone',
        value: this.settings.zone,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n    </div>\n    <div class="row">\n      '));
    
      _print(_safe(this.formGroup({
        id: 'display_prefix',
        label: 'Prefix',
        type: 'text',
        placeholder: 'Display Prefix',
        value: this.settings.display_prefix,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n      '));
    
      _print(_safe(this.formGroup({
        id: 'gate',
        label: 'Gate',
        type: 'text',
        feedback: 'plane',
        placeholder: 'Gate #',
        value: this.settings.gate,
        cls: 'col-md-6'
      })));
    
      _print(_safe('\n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/url_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div><!-- /.box-header -->\n<div class="box-body content">\n  <iframe id=\'iframe\' src=""></iframe>\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.formGroup({
        id: 'title',
        type: 'text',
        placeholder: 'Widget Title',
        value: this.settings.name
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'url',
        type: 'text',
        feedback: 'link',
        placeholder: 'URL',
        value: this.settings.url
      })));
    
      _print(_safe('  \n  </div><!-- /.box-body -->\n</div><!-- /.box-body -->\n'));
    
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
window.JST["widgets/weather_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-cloud"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div><!-- /.box-header -->\n<div class="box-body content">\n  <div id=\'display\'></div>\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.formGroup({
        id: 'title',
        type: 'text',
        placeholder: 'Widget Title',
        value: this.settings.name
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'zip',
        type: 'text',
        placeholder: 'ZIP',
        value: this.settings.zip
      })));
    
      _print(_safe('  \n  </div><!-- /.box-body -->\n</div><!-- /.box-body -->\n'));
    
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
var AccountCollection, AdminLTE_lib, AppConfig, AppController, AppLayout, BaselineApp, ClaimCollection, Extensions, Marionette, OPCManager, RoleCollection, Router, Session, SiteCollection, UIUtils, UserCollection;

Marionette = require('marionette');

BaselineApp = require('./common/baseline_app');

Extensions = require('./common/extensions');

AppController = require('./app_controller');

Router = require('./router');

AppLayout = require('./views/app_layout');

Session = require('./models/session');

AdminLTE_lib = require('./common/adminlte_lib');

UIUtils = require('./common/uiutils');

OPCManager = require('./opcmanager');

AccountCollection = require('./models/account_collection');

SiteCollection = require('./models/site_collection');

ClaimCollection = require('./models/claim_collection');

RoleCollection = require('./models/role_collection');

UserCollection = require('./models/user_collection');

AppConfig = require('./common/appconfig');

require('./views/widgets/alarm_widget_view');

require('./views/widgets/pbb_widget_view');

require('./views/widgets/pca_widget_view');

require('./views/widgets/url_widget_view');

require('./views/widgets/weather_widget_view');

window.App = (function() {
  var App;
  if (window.App != null) {
    return window.App;
  }
  App = window.App = new BaselineApp();
  App.AdminLTE_lib = AdminLTE_lib;
  Object.defineProperty(App, 'current_user', {
    get: function() {
      if (App.session != null) {
        return App.session;
      } else {
        return null;
      }
    }
  });
  App.config = AppConfig;
  App.on("before:start", function(options) {
    var dtfn;
    this.log('Starting');
    $('#loading_cover').fadeTo(0, 0.8);
    Session.restore();
    this.layout = new AppLayout();
    this.uiutils = UIUtils;

    /* 
      TODO: load from server - all known Accounts, claims, Roles
     */
    App.refresh_accounts();

    /*
      END TODO:
     */
    this.log('Initializing OPCManager');
    App.opc = OPCManager;
    App.opc.init(App);
    App.vent.on("user:update", function() {
      return Session.save_session();
    });
    App.vent.on("app:update", function() {
      var aacc, acc, accounts, i, idx, len, results;
      accounts = App.accounts.toJSON();
      results = [];
      for (idx = i = 0, len = accounts.length; i < len; idx = ++i) {
        acc = accounts[idx];
        aacc = App.accounts.models[idx];
        results.push(acc.sites = aacc.sites.toJSON());
      }
      return results;
    });
    this.log('Setting system clock');
    dtfn = function() {
      App.time = new Date();
      App.vent.trigger('app:clock', App.time);
      App.vent.trigger('check:timeout');
      return App.time;
    };
    App.clock = setInterval(dtfn, 5000);
    App.check_session = function() {
      var sto, timeout, ts, tsn;
      sto = App.config.session_timeout;
      if ((App.session == null) || (sto == null) || sto <= 0) {
        return true;
      }
      timeout = false;
      ts = App.store.get('user_ts');
      if (ts == null) {
        ts = new Date();
        App.store.set('user_ts', ts);
      } else {
        ts = new Date(ts);
      }
      tsn = new Date();
      if (((tsn - ts) / 1000) > (sto * 60)) {
        App.controller.logout();
        return false;
      }
      return true;
    };
    return App.vent.on('check:timeout', App.check_session);
  });
  App.on('start', function(options) {
    this.log('Started');
    if (Backbone.history) {
      App.vent.on("app:resources_loaded", (function(_this) {
        return function() {
          $('#loading_cover').fadeOut(100, function() {
            return $(this).hide();
          });
          App.vent.off("app:resources_loaded");
          _this.controller = new AppController();
          _this.router = new Router({
            controller: _this.controller
          });
          _this.log('Backbone.history starting');
          return Backbone.history.start();
        };
      })(this));
    }
    return this.log('Done starting and running!');
  });
  App.refresh_accounts = function(cb) {
    App.accounts = new AccountCollection();
    return App.accounts.fetch({
      success: ((function(_this) {
        return function(cb) {
          return function(data, xhr) {
            var acct, cnt, completed, i, len, ref, results;
            cnt = App.accounts.models.length;
            completed = 0;
            ref = App.accounts.models;
            results = [];
            for (i = 0, len = ref.length; i < len; i++) {
              acct = ref[i];
              results.push(acct.sites.fetch({
                success: (function(cb, cnt, completed) {
                  return function(data, xhr) {
                    completed++;
                    if (completed === cnt) {
                      App.vent.trigger("app:resources_loaded");
                      App.vent.trigger("app:update");
                      if (cb != null) {
                        return cb();
                      }
                    }
                  };
                })(cb, cnt, completed)
              }));
            }
            return results;
          };
        };
      })(this))(cb)
    });
  };
  App.refresh_claims = function(cb) {
    return App.refresh_accounts(function() {});
  };
  App.save_user = function() {
    return App.vent.trigger("user:update");
  };
  App.flush = function() {
    App.store.remove("user_ts");
    App.store.remove("session");
    App.session = null;
    App.accounts = null;
    return App.router.navigate('login', {
      trigger: true
    });
  };
  return App;
})();

},{"./app_controller":2,"./common/adminlte_lib":3,"./common/appconfig":4,"./common/baseline_app":5,"./common/extensions":6,"./common/uiutils":7,"./models/account_collection":11,"./models/claim_collection":13,"./models/role_collection":17,"./models/session":18,"./models/site_collection":20,"./models/user_collection":22,"./opcmanager":25,"./router":26,"./views/app_layout":27,"./views/widgets/alarm_widget_view":54,"./views/widgets/pbb_widget_view":55,"./views/widgets/pca_widget_view":56,"./views/widgets/url_widget_view":57,"./views/widgets/weather_widget_view":58}],2:[function(require,module,exports){
var AccountsView, AppController, Dashboard, DashboardCollection, DashboardContentView, DashboardLayout, LoginView, Marionette, PermissionsLayout, ProfileView, ReportsView, User, WidgetCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

LoginView = require('./views/login_view');

ReportsView = require('./views/reports_view');

User = require('./models/user');

ProfileView = require('./views/forms/profile_view');

AccountsView = require('./views/forms/manage_accounts/accounts_view');

PermissionsLayout = require('./views/forms/manage_permissions/permissions_layout');

Dashboard = require('./models/dashboard');

DashboardCollection = require('./models/dashboard_collection');

DashboardLayout = require('./views/dashboard/dashboard_layout');

DashboardContentView = require('./views/dashboard/content_view');

WidgetCollection = require('./models/widget_collection');

AppController = (function(superClass) {
  extend(AppController, superClass);

  function AppController() {
    App.log('Initializing', 'Controller');
  }

  AppController.prototype.set_main_layout = function() {
    var cv, dl;
    cv = App.layout.center_region.currentView;
    if ((cv != null) && cv instanceof DashboardLayout) {
      return cv;
    }
    if (App.session == null) {
      this.logout();
      return null;
    }
    dl = new DashboardLayout({
      collection: App.session.dashboards
    });
    App.layout.center_region.show(dl);
    return dl;
  };

  AppController.prototype.home = function() {
    var d, dl;
    App.log('route:home');
    if (!App.router.onRoute('home', '', null)) {
      return this;
    }
    dl = this.set_main_layout();
    d = (dl != null) && (dl.collection != null) && dl.collection.models.length > 0 ? 1 : 0;
    this.dashboard(d);
    return this;
  };

  AppController.prototype.reports = function() {
    var v;
    App.log('route:reports');
    v = new ReportsView();
    App.layout.center_region.show(v);
    return this;
  };

  AppController.prototype.flush = function() {
    return App.flush();
  };

  AppController.prototype.login = function() {
    var v;
    App.log('route:login');
    v = new LoginView();
    App.layout.center_region.show(v);
    return this;
  };

  AppController.prototype.logout = function() {
    App.log('route:logout');
    if (App.session != null) {
      App.session.clear();
    }
    App.router.navigate('login', {
      trigger: true
    });
    return this;
  };

  AppController.prototype.profile = function() {
    var dl;
    App.log('route:profile');
    dl = this.set_main_layout();
    dl.show_content({
      title: 'Your Profile',
      subtitle: "Edit your user account profile below",
      icon: "user",
      view: new ProfileView({
        model: App.session
      })
    });
    App.vent.trigger("show:dashboard");
    return this;
  };

  AppController.prototype.mgaccounts = function() {
    var dl;
    App.log('route:mgaccounts');
    dl = this.set_main_layout();
    dl.show_content({
      title: 'Manage Accounts',
      subtitle: "Manage account details and associated Sites",
      icon: "building-o",
      view: new AccountsView({
        collection: App.accounts
      })
    });
    App.vent.trigger("show:dashboard");
    return this;
  };

  AppController.prototype.mgpermissions = function() {
    var dl;
    App.log('route:mgpermissions');
    dl = this.set_main_layout();
    dl.show_content({
      title: 'Manage Permissions',
      subtitle: "Manage Users, Roles, and Permissions applied to each",
      icon: "users",
      view: new PermissionsLayout()
    });
    App.vent.trigger("show:dashboard");
    return this;
  };

  AppController.prototype.dashboard = function(id) {
    var dash, did, dl, first;
    App.log('route:dashboard');
    id = id != null ? parseInt(id) : null;
    dl = this.set_main_layout();
    if ((dl.collection != null) && (id != null)) {
      first = dl.collection.first();
      dash = dl.collection.where({
        id: id
      });
      dash = dash.length > 0 ? dash[0] : null;
    }
    dash = dash == null ? first : dash;
    did = dash != null ? dash.id : null;
    App.router.navigate("dashboard" + (did != null ? '/' + did : ''), {
      trigger: false
    });
    if (dash != null) {
      dl.show_widgets(dash);
    } else {
      dl.empty();
    }
    App.current_dash = did;
    App.vent.trigger("show:dashboard", did);
    return this;
  };

  return AppController;

})(Object);

module.exports = AppController;

},{"./models/dashboard":14,"./models/dashboard_collection":15,"./models/user":21,"./models/widget_collection":24,"./views/dashboard/content_view":29,"./views/dashboard/dashboard_layout":30,"./views/forms/manage_accounts/accounts_view":40,"./views/forms/manage_permissions/permissions_layout":43,"./views/forms/profile_view":51,"./views/login_view":52,"./views/reports_view":53}],3:[function(require,module,exports){

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

},{}],4:[function(require,module,exports){
var AppConfig,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

AppConfig = (function(superClass) {
  extend(AppConfig, superClass);

  function AppConfig() {
    return AppConfig.__super__.constructor.apply(this, arguments);
  }

  AppConfig.api_baseurl = 'http://{service}.iopsnj.com/v1';

  AppConfig.dt_format = 'E, MMM D, yyyy HH:mm';

  AppConfig.session_timeout = 0;

  AppConfig.service_url = function(svc) {
    return this.api_baseurl.replace('{service}', svc);
  };

  AppConfig.widgets = (window.app_config != null) && (window.app_config.widgets != null) ? window.app_config.widgets : [];

  return AppConfig;

})(Object);

module.exports = AppConfig;

},{}],5:[function(require,module,exports){
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

},{"./appconfig":4}],6:[function(require,module,exports){

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
      fullName: function() {
        var fn, ln;
        fn = this['firstName'];
        ln = this['lastName'];
        fn = fn != null ? fn : '';
        fn = ln != null ? fn + " " + ln : fn;
        return fn;
      },
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
      },
      siteSelector: function(arg) {
        var acc, code, i, id, j, label, len, len1, ref, ref1, s, sel, sh, txt, value;
        id = arg.id, label = arg.label, value = arg.value;
        sh = "<div class='form-group' for='" + id + "'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' data-placeholder='Select a Site'>";
        if ((App.accounts != null) && App.accounts.models.length > 0) {
          ref = App.accounts.models;
          for (i = 0, len = ref.length; i < len; i++) {
            acc = ref[i];
            if ((acc.sites != null) && acc.sites.models.length > 0) {
              ref1 = acc.sites.models;
              for (j = 0, len1 = ref1.length; j < len1; j++) {
                s = ref1[j];
                txt = s.get('name');
                code = s.get('code');
                if ((code != null) && code !== '') {
                  txt = txt + " (" + code + ")";
                }
                sel = (value != null) && ("" + value) === ("" + s.id) ? 'selected' : '';
                sh += "<option value='" + s.id + "' " + sel + ">" + txt + "</option>";
              }
            }
          }
        }
        return sh + "</select></div>";
      },
      claimSelector: function(arg) {
        var acc, c, ch, claims, cls, global, i, id, j, k, label, len, len1, len2, ref, ref1, ref2, s, sel, site_id, txt, value;
        id = arg.id, label = arg.label, value = arg.value, site_id = arg.site_id, global = arg.global, cls = arg.cls;
        c = 'form-group';
        c = cls != null ? c + " " + cls : c;
        ch = "<div class='" + c + "' for='" + id + "'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' multiple data-placeholder='Select Permissions'>";
        claims = App.claims;
        if (!global) {
          if ((App.accounts != null) && App.accounts.models.length > 0) {
            ref = App.accounts.models;
            for (i = 0, len = ref.length; i < len; i++) {
              acc = ref[i];
              if ((acc.sites != null) && acc.sites.models.length > 0) {
                ref1 = acc.sites.models;
                for (j = 0, len1 = ref1.length; j < len1; j++) {
                  s = ref1[j];
                  if (s.id === site_id) {
                    claims = s.claims;
                    break;
                  }
                }
              }
            }
          }
        }
        ref2 = claims.models;
        for (k = 0, len2 = ref2.length; k < len2; k++) {
          c = ref2[k];
          txt = c.get('name');
          sel = (value != null) && ("" + value) === ("" + c.id) ? 'selected' : '';
          ch += "<option value='" + c.id + "' " + sel + ">" + txt + "</option>";
        }
        return ch + "</select></div>";
      },
      roleSelector: function(arg) {
        var acc, c, cls, global, i, id, j, k, label, lbl, len, len1, len2, r, ref, ref1, ref2, rh, roles, s, sel, site_id, txt, value;
        id = arg.id, label = arg.label, value = arg.value, site_id = arg.site_id, global = arg.global, cls = arg.cls;
        c = 'form-group';
        c = cls != null ? c + " " + cls : c;
        lbl = label != null ? "<label>" + label + "</label>" : '';
        rh = "<div class='" + c + "' for='" + id + "'>\n  " + lbl + "\n  <select id='" + id + "' class='form-control' multiple data-placeholder='Select Roles'>";
        roles = App.roles;
        if (!global) {
          if ((App.accounts != null) && App.accounts.models.length > 0) {
            ref = App.accounts.models;
            for (i = 0, len = ref.length; i < len; i++) {
              acc = ref[i];
              if ((acc.sites != null) && acc.sites.models.length > 0) {
                ref1 = acc.sites.models;
                for (j = 0, len1 = ref1.length; j < len1; j++) {
                  s = ref1[j];
                  if (s.id === site_id) {
                    roles = s.roles;
                    break;
                  }
                }
              }
            }
          }
        }
        ref2 = roles.models;
        for (k = 0, len2 = ref2.length; k < len2; k++) {
          r = ref2[k];
          txt = r.get('name');
          sel = (value != null) && ("" + value) === ("" + r.id) ? 'selected' : '';
          rh += "<option value='" + r.id + "' " + sel + ">" + txt + "</option>";
        }
        return rh + "</select></div>";
      }
    };
  }
});

},{}],7:[function(require,module,exports){
var Marionette, ModalView, UIUtils,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ModalView = require('../views/common/modal_view');

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

  UIUtils.showModal = function(opts) {
    var m;
    m = new Backbone.Model();
    m.opts = opts;
    return App.layout.modal_region.show(new ModalView({
      model: m
    }));
  };

  UIUtils.Base64 = {
    _keyStr: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
    encode: function(input) {
      var chr1, chr2, chr3, enc1, enc2, enc3, enc4, i, output;
      output = '';
      chr1 = chr2 = chr3 = enc1 = enc2 = enc3 = enc4 = null;
      i = 0;
      input = this._utf8_encode(input);
      while (i < input.length) {
        chr1 = input.charCodeAt(i++);
        chr2 = input.charCodeAt(i++);
        chr3 = input.charCodeAt(i++);
        enc1 = chr1 >> 2;
        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
        enc4 = chr3 & 63;
        if (isNaN(chr2)) {
          enc3 = enc4 = 64;
        } else if (isNaN(chr3)) {
          enc4 = 64;
        }
        output = output + this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) + this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
      }
      return output;
    },
    decode: function(input) {
      var chr1, chr2, chr3, enc1, enc2, enc3, enc4, i, output;
      output = "";
      chr1 = chr2 = chr3 = enc1 = enc2 = enc3 = enc4 = null;
      i = 0;
      input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
      while (i < input.length) {
        enc1 = this._keyStr.indexOf(input.charAt(i++));
        enc2 = this._keyStr.indexOf(input.charAt(i++));
        enc3 = this._keyStr.indexOf(input.charAt(i++));
        enc4 = this._keyStr.indexOf(input.charAt(i++));
        chr1 = (enc1 << 2) | (enc2 >> 4);
        chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
        chr3 = ((enc3 & 3) << 6) | enc4;
        output = output + String.fromCharCode(chr1);
        if (enc3 !== 64) {
          output = output + String.fromCharCode(chr2);
        }
        if (enc4 !== 64) {
          output = output + String.fromCharCode(chr3);
        }
      }
      output = this._utf8_decode(output);
      return output;
    },
    _utf8_encode: function(string) {
      var c, ch, j, len, n, utftext;
      string = string.replace(/\r\n/g, "\n");
      utftext = "";
      for (n = j = 0, len = string.length; j < len; n = ++j) {
        ch = string[n];
        c = string.charCodeAt(n);
        if (c < 128) {
          utftext += String.fromCharCode(c);
        } else if ((c > 127) && (c < 2048)) {
          utftext += String.fromCharCode((c >> 6) | 192);
          utftext += String.fromCharCode((c & 63) | 128);
        } else {
          utftext += String.fromCharCode((c >> 12) | 224);
          utftext += String.fromCharCode(((c >> 6) & 63) | 128);
          utftext += String.fromCharCode((c & 63) | 128);
        }
      }
      return utftext;
    },
    _utf8_decode: function(utftext) {
      var c, c1, c2, c3, i, string;
      string = '';
      i = 0;
      c = c1 = c2 = 0;
      while (i < utftext.length) {
        c = utftext.charCodeAt(i);
        if (c < 128) {
          string += String.fromCharCode(c);
          i++;
        } else if ((c > 191) && (c < 224)) {
          c2 = utftext.charCodeAt(i + 1);
          string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
          i += 2;
        } else {
          c2 = utftext.charCodeAt(i + 1);
          c3 = utftext.charCodeAt(i + 2);
          string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
          i += 3;
        }
      }
      return string;
    }
  };

  return UIUtils;

})(Object);

module.exports = UIUtils;

},{"../views/common/modal_view":28}],8:[function(require,module,exports){
var AppConfig, Backbone, BaseModel,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

AppConfig = require('../common/appconfig');

Backbone = require('backbone');

BaseModel = (function(superClass) {
  extend(BaseModel, superClass);

  BaseModel.prototype.idAttribute = '_id';

  BaseModel.prototype.save = function(attrs, options) {
    var i, k, len, ref;
    attrs || (attrs = _.extend(this.attributes));
    options || (options = {});
    if (options.blacklist != null) {
      ref = options.blacklist;
      for (i = 0, len = ref.length; i < len; i++) {
        k = ref[i];
        delete attrs[k];
      }
      delete options.blacklist;
    }
    delete attrs.createdAt;
    delete attrs.updatedAt;
    options.data = JSON.stringify(attrs);
    options.contentType = "application/json";
    return BaseModel.__super__.save.call(this, attrs, options);
  };

  function BaseModel(opts) {
    var url;
    BaseModel.__super__.constructor.apply(this, arguments);
    if ((this.local != null) && this.local === true) {
      url = '';
    } else {
      url = this.service != null ? ("" + AppConfig.api_baseurl).replace('{service}', "" + this.service) : "" + AppConfig.api_baseurl;
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

},{"../common/appconfig":4}],9:[function(require,module,exports){
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
      url = this.service != null ? ("" + AppConfig.api_baseurl).replace('{service}', "" + this.service) : "" + AppConfig.api_baseurl;
      if (this.url != null) {
        this.url = "" + url + this.url;
      } else {
        url;
      }
    }
    this;
  }

  BaseCollection.prototype.moveup = function(model) {
    var index;
    index = this.indexOf(model);
    if (index > 0) {
      this.remove(model, {
        silent: true
      });
      return this.add(model, {
        at: index - 1
      });
    }
  };

  BaseCollection.prototype.movedn = function(model) {
    var index;
    index = this.indexOf(model);
    if (index < this.models.length) {
      this.remove(model, {
        silent: true
      });
      return this.add(model, {
        at: index + 1
      });
    }
  };

  return BaseCollection;

})(Backbone.Collection);

module.exports = BaseCollection;

},{"../common/appconfig":4}],10:[function(require,module,exports){
var Account, BaseModel, SiteCollection,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

SiteCollection = require('./site_collection');

Account = (function(superClass) {
  extend(Account, superClass);

  Account.prototype.service = 'accounts';

  Account.prototype.urlRoot = '/accounts';

  Account.prototype.defaults = {
    name: null,
    isActive: true,
    sites: []
  };

  Account.prototype.persist = function() {
    return this.attributes["sites"] = this.sites.toJSON();
  };

  function Account(data, opts) {
    this.persist = bind(this.persist, this);
    Account.__super__.constructor.call(this, data, opts);
    this.sites = new SiteCollection(this.get('sites'), {
      account: this.id
    });
    this.sites.on("update", this.persist);
    this.sites.on("change", this.persist);
  }

  return Account;

})(BaseModel);

module.exports = Account;

},{"./_base":8,"./site_collection":20}],11:[function(require,module,exports){
var Account, AccountCollection, BaseCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

Account = require('./account');

AccountCollection = (function(superClass) {
  extend(AccountCollection, superClass);

  function AccountCollection() {
    return AccountCollection.__super__.constructor.apply(this, arguments);
  }

  AccountCollection.prototype.service = 'accounts';

  AccountCollection.prototype.url = '/accounts';

  AccountCollection.prototype.model = Account;

  return AccountCollection;

})(BaseCollection);

window.AccountCollection = AccountCollection;

module.exports = AccountCollection;

},{"./_base_collection":9,"./account":10}],12:[function(require,module,exports){
var BaseModel, Claim,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

Claim = (function(superClass) {
  extend(Claim, superClass);

  function Claim() {
    return Claim.__super__.constructor.apply(this, arguments);
  }

  Claim.prototype.service = 'accounts';

  Claim.prototype.urlRoot = '/claims';

  Claim.prototype.defaults = {
    name: '',
    description: ''
  };

  return Claim;

})(BaseModel);

module.exports = Claim;

},{"./_base":8}],13:[function(require,module,exports){
var BaseCollection, Claim, ClaimCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

Claim = require('./claim');

ClaimCollection = (function(superClass) {
  extend(ClaimCollection, superClass);

  ClaimCollection.prototype.service = 'accounts';

  ClaimCollection.prototype.url = '/sites/{site}/claims';

  ClaimCollection.prototype.model = Claim;

  function ClaimCollection(config, opts) {
    if ((opts != null) && opts.site) {
      this.url = this.url.replace('{site}', opts.site);
    } else {
      this.url = '/claims';
    }
    ClaimCollection.__super__.constructor.call(this, config);
  }

  return ClaimCollection;

})(BaseCollection);

module.exports = ClaimCollection;

},{"./_base_collection":9,"./claim":12}],14:[function(require,module,exports){
var BaseModel, Dashboard, WidgetCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

WidgetCollection = require('./widget_collection');

Dashboard = (function(superClass) {
  extend(Dashboard, superClass);

  Dashboard.prototype.local = true;

  Dashboard.prototype.defaults = {
    widgets: [],
    title: ''
  };

  function Dashboard(config) {
    if (config != null) {
      config._id = config._id != null ? config._id : Math.floor(Math.random() * 10000) + 1;
    }
    Dashboard.__super__.constructor.call(this, config);
    this.widgets = new WidgetCollection(this.get('widgets'));
    this.widgets.on("update", (function(_this) {
      return function() {
        return _this.set_widgets();
      };
    })(this));
    this.widgets.on("change", (function(_this) {
      return function() {
        return _this.set_widgets();
      };
    })(this));
  }

  Dashboard.prototype.set_widgets = function() {
    this.set("widgets", this.widgets.toJSON());
    return App.save_user();
  };

  return Dashboard;

})(BaseModel);

module.exports = Dashboard;

},{"./_base":8,"./widget_collection":24}],15:[function(require,module,exports){
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

window.DashboardCollection = DashboardCollection;

module.exports = DashboardCollection;

},{"./_base_collection":9,"./dashboard":14}],16:[function(require,module,exports){
var BaseModel, ClaimCollection, Role,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

ClaimCollection = require('./claim_collection');

Role = (function(superClass) {
  extend(Role, superClass);

  Role.prototype.service = 'roles';

  Role.prototype.urlRoot = '/roles';

  Role.prototype.defaults = {
    name: null,
    description: null,
    isActive: true
  };

  Role.prototype.persist = function() {
    return this.attributes["claims"] = this.claims.toJSON();
  };

  function Role(data, opts) {
    this.persist = bind(this.persist, this);
    Role.__super__.constructor.call(this, data, opts);
    this.claims = new ClaimCollection(this.get('claims'));
    this.claims.on("update", this.persist);
    this.claims.on("change", this.persist);
  }

  return Role;

})(BaseModel);

module.exports = Role;

},{"./_base":8,"./claim_collection":13}],17:[function(require,module,exports){
var BaseCollection, Role, RoleCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

Role = require('./role');

RoleCollection = (function(superClass) {
  extend(RoleCollection, superClass);

  function RoleCollection() {
    return RoleCollection.__super__.constructor.apply(this, arguments);
  }

  RoleCollection.prototype.service = 'roles';

  RoleCollection.prototype.url = '/roles';

  RoleCollection.prototype.model = Role;

  return RoleCollection;

})(BaseCollection);

module.exports = RoleCollection;

},{"./_base_collection":9,"./role":16}],18:[function(require,module,exports){
var BaseModel, Session, User,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

User = require('./user');

Session = (function(superClass) {
  extend(Session, superClass);

  function Session() {
    return Session.__super__.constructor.apply(this, arguments);
  }

  Session.prototype.service = 'accounts';

  Session.prototype.urlRoot = '/login';

  Session.prototype.initialize = function() {
    this.on("change", this.persist);
    this.persist();
    return this;
  };

  Session.prototype.persist = function() {
    App.store.set('session', this);
    return this;
  };

  Session.save_session = function() {
    App.store.set("user_ts", new Date());
    App.store.set("session", App.session);
    return App.session.save();
  };

  Session.clear = function() {
    if (App.session != null) {
      App.session.off("change");
    }
    Session.set_session();
    return null;
  };

  Session.auth = function(arg) {
    var e, email, error, oe, os, password, s, success;
    email = arg.email, password = arg.password, success = arg.success, error = arg.error;
    Session.clear();
    App.session = new Session({
      email: email,
      password: password
    });
    s = (function(_this) {
      return function(data, status, xhr) {
        return Session.set_session(App.session);
      };
    })(this);
    e = (function(_this) {
      return function(xhr, status, error) {
        return Session.clear();
      };
    })(this);
    if (success != null) {
      os = success;
      s = (function(_this) {
        return function(data, status, xhr) {
          Session.set_session(App.session);
          return os(data, status, xhr);
        };
      })(this);
    }
    if (error != null) {
      oe = error;
      e = (function(_this) {
        return function(xhr, status, error) {
          Session.clear();
          return oe(xhr, status, error);
        };
      })(this);
    }
    return App.session.save(null, {
      success: s,
      error: e,
      timeout: 3000
    });
  };

  Session.set_header_token = function(token) {
    $.ajaxSetup({
      headers: {
        'Authorization': "Bearer " + token
      }
    });
    App.store.set("token", token);
    return token;
  };

  Session.set_session = function(session) {
    var ctk, tk, user;
    if (session != null) {
      tk = session.get("token");
      this.set_header_token(tk);
      tk = tk.split('.')[1];
      ctk = CryptoJS.enc.Base64.parse(tk);
      user = ctk.toString(CryptoJS.enc.Utf8);
      user = JSON.parse(user);
      delete user.createdAt;
      delete user.updatedAt;
      delete user.passwordHash;
      delete user.iss;
      delete user.iat;
      delete user.exp;
      user.dashboards = [];
      delete App.session.attributes["password"];
      App.session = new User(user);
      App.save_user();
    } else {
      if ($.ajaxSettings.headers != null) {
        delete $.ajaxSettings.headers["Authorization"];
      }
      App.store.remove('session');
      App.store.remove('token');
      App.store.remove('user_ts');
      App.session = null;
    }
    return App.session;
  };

  Session.restore = function() {
    var s, tk;
    s = App.store.get('session');
    tk = App.store.get('token');
    if (s != null) {
      if (App.session != null) {
        App.session.clear();
      }
      App.session = new User(s);
    }
    if (tk != null) {
      this.set_header_token(tk);
    }
    return true;
  };

  return Session;

})(BaseModel);

module.exports = Session;

},{"./_base":8,"./user":21}],19:[function(require,module,exports){
var BaseModel, ClaimCollection, RoleCollection, Site,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

ClaimCollection = require('./claim_collection');

RoleCollection = require('./role_collection');

Site = (function(superClass) {
  extend(Site, superClass);

  Site.prototype.service = 'accounts';

  Site.prototype.urlRoot = '/accounts/{acct}/sites';

  Site.prototype.defaults = {
    accountId: null,
    name: null,
    isActive: true,
    shortName: null,
    code: null,
    serverUrl: null,
    refreshRate: 5,
    settings: {
      cloud: false
    }
  };

  Site.prototype.save = function(attrs, options) {
    options || (options = {});
    options.blacklist = ["isActive"];
    return Site.__super__.save.call(this, attrs, options);
  };

  Site.prototype.persist = function() {
    this.attributes["claims"] = this.claims.toJSON();
    return this.attributes["roles"] = this.roles.toJSON();
  };

  function Site(config, opts) {
    this.persist = bind(this.persist, this);
    if ((config != null) && config.accountId) {
      this.urlRoot = this.urlRoot.replace('{acct}', config.accountId);
    }
    Site.__super__.constructor.call(this, config, opts);
    this.claims = new ClaimCollection(this.get('claims'));
    this.claims.on("update", this.persist);
    this.claims.on("change", this.persist);
    this.roles = new RoleCollection(this.get('roles'));
    this.roles.on("update", this.persist);
    this.roles.on("change", this.persist);
  }

  return Site;

})(BaseModel);

module.exports = Site;

},{"./_base":8,"./claim_collection":13,"./role_collection":17}],20:[function(require,module,exports){
var BaseCollection, Site, SiteCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

Site = require('./site');

SiteCollection = (function(superClass) {
  extend(SiteCollection, superClass);

  SiteCollection.prototype.service = 'accounts';

  SiteCollection.prototype.url = '/accounts/{acct}/sites';

  SiteCollection.prototype.model = Site;

  function SiteCollection(config, opts) {
    if ((opts != null) && opts.account) {
      this.url = this.url.replace('{acct}', opts.account);
    } else {
      this.url = '/sites';
    }
    SiteCollection.__super__.constructor.call(this, config);
  }

  return SiteCollection;

})(BaseCollection);

module.exports = SiteCollection;

},{"./_base_collection":9,"./site":19}],21:[function(require,module,exports){
var BaseModel, DashboardCollection, User,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

DashboardCollection = require('./dashboard_collection');

User = (function(superClass) {
  extend(User, superClass);

  User.prototype.service = 'accounts';

  User.prototype.urlRoot = '/users';

  User.prototype.defaults = {
    email: null,
    firstName: null,
    lastName: null,
    settings: {},
    dashboards: []
  };

  User.prototype.save = function(attrs, options) {
    options || (options = {});
    options.blacklist = ["isActive", "dashboards"];
    return User.__super__.save.call(this, attrs, options);
  };

  User.prototype.persist = function() {
    return this.attributes["dashboards"] = this.dashboards.toJSON();
  };

  function User(config) {
    this.persist = bind(this.persist, this);
    User.__super__.constructor.call(this, config);
    this.dashboards = new DashboardCollection(this.get('dashboards'));
    this.dashboards.on("update", this.persist);
    this.dashboards.on("change", this.persist);
  }

  return User;

})(BaseModel);

module.exports = User;

},{"./_base":8,"./dashboard_collection":15}],22:[function(require,module,exports){
var BaseCollection, User, UserCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseCollection = require('./_base_collection');

User = require('./user');

UserCollection = (function(superClass) {
  extend(UserCollection, superClass);

  function UserCollection() {
    return UserCollection.__super__.constructor.apply(this, arguments);
  }

  UserCollection.prototype.service = 'accounts';

  UserCollection.prototype.url = '/users';

  UserCollection.prototype.model = User;

  return UserCollection;

})(BaseCollection);

window.UserCollection = UserCollection;

module.exports = UserCollection;

},{"./_base_collection":9,"./user":21}],23:[function(require,module,exports){
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
    title: null,
    type: "default",
    settings: {
      layout: {
        r: 1,
        c: 1,
        sx: 1,
        sy: 1
      }
    },
    config: true
  };

  return Widget;

})(BaseModel);

module.exports = Widget;

},{"./_base":8}],24:[function(require,module,exports){
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

},{"./_base_collection":9,"./widget":23}],25:[function(require,module,exports){
var OPCManager;

OPCManager = (function() {
  function OPCManager() {}

  OPCManager.connections = {};

  OPCManager.refs = {};

  OPCManager.create = function(conn, config) {
    var c;
    c = new OPC(config);
    c.code = conn;
    this.connections[conn] = c;
    return c;
  };

  OPCManager.get_conn = function(conn) {
    return this.connections[conn];
  };

  OPCManager.drop_connections = function() {
    var c, oc;
    for (c in this.connections) {
      this.refs[c] = 0;
      oc = this.connections[c];
      oc.config.watch_tags = [];
      oc.config.tags = [];
      oc.init();
    }
    return true;
  };

  OPCManager.get_site_code = function(id) {
    var acc, i, j, len, len1, ref, ref1, site_code, st;
    site_code = null;
    if ((App.accounts != null) && App.accounts.models.length > 0) {
      ref = App.accounts.models;
      for (i = 0, len = ref.length; i < len; i++) {
        acc = ref[i];
        if ((acc.sites != null) && acc.sites.models.length > 0) {
          ref1 = acc.sites.models;
          for (j = 0, len1 = ref1.length; j < len1; j++) {
            st = ref1[j];
            if (("" + st.id) === ("" + id)) {
              return st.get('code');
            }
          }
        }
      }
    }
    return null;
  };

  OPCManager.add_tags = function(conn, tags) {
    var added, c, exists, i, j, len, len1, nt, ref, t;
    c = this.connections[conn];
    if (c != null) {
      added = false;
      c.toggle_refresh(false);
      for (i = 0, len = tags.length; i < len; i++) {
        nt = tags[i];
        exists = false;
        if (c.config.watch_tags == null) {
          c.config.watch_tags = [];
        }
        ref = c.config.watch_tags;
        for (j = 0, len1 = ref.length; j < len1; j++) {
          t = ref[j];
          if (t === nt) {
            exists = true;
            break;
          }
        }
        if (!exists) {
          c.config.watch_tags.push(nt);
          added = true;
        }
      }
      if (added) {
        c.config.tags = [];
        return c.init();
      } else {
        return c.toggle_refresh(true);
      }
    }
  };

  OPCManager.add_alarm = function(conn, binding) {
    var ab, c, exists, i, len, ref;
    c = this.connections[conn];
    if (c != null) {
      c.toggle_refresh(false);
      exists = false;
      if (c.config.alarm_bindings == null) {
        c.config.alarm_bindings = [];
      }
      ref = c.config.alarm_bindings;
      for (i = 0, len = ref.length; i < len; i++) {
        ab = ref[i];
        if (ab.alarmid === binding.alarmid) {
          exists = true;
          ab = binding;
        }
      }
      if (!exists) {
        c.config.alarm_bindings.push(binding);
      }
      return c.init();
    }
  };

  OPCManager.add_ref = function(conn) {
    var c;
    c = OPCManager.refs[conn];
    c = c != null ? c + 1 : 1;
    if (c >= 1) {
      OPCManager.connections[conn].toggle_refresh(true);
    }
    OPCManager.refs[conn] = c;
    return c;
  };

  OPCManager.rem_ref = function(conn) {
    var c;
    c = OPCManager.refs[conn];
    c = c != null ? c - 1 : 0;
    if (c <= 0) {
      c = 0;
      OPCManager.connections[conn].toggle_refresh(false);
    }
    OPCManager.refs[conn] = c;
    return c;
  };

  OPCManager.notify = function(conn, data) {
    return App.vent.trigger("opc:data:" + conn, data);
  };

  OPCManager.init = function(app) {
    var account, code, i, len, opc_rate, ref, refreshRate, results, site, siteUrl;
    ref = app.accounts.models;
    results = [];
    for (i = 0, len = ref.length; i < len; i++) {
      account = ref[i];
      results.push((function() {
        var j, len1, ref1, results1;
        ref1 = account.sites.models;
        results1 = [];
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          site = ref1[j];
          siteUrl = site.get("siteUrl");
          refreshRate = site.get("refreshRate");
          if (typeof opc_rate === "undefined" || opc_rate === null) {
            opc_rate = 5;
          }
          opc_rate = parseInt(opc_rate) * 1000;
          code = site.get("code");
          results1.push(OPCManager.create(code, {
            token: '7e61b230-481d-4551-b24b-ba9046e3d8f2',
            max_tags_per_msg: 50,
            max_callbacks: 10,
            callback_timeout: 10000,
            refresh_callback: function(data) {
              return OPCManager.notify(this.code, data);
            },
            serverURL: siteUrl,
            interval: refreshRate,
            auto_start: false
          }));
        }
        return results1;
      })());
    }
    return results;
  };

  return OPCManager;

})();

window.OPCManager = OPCManager;

module.exports = OPCManager;

},{}],26:[function(require,module,exports){
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
    'mgaccounts': 'mgaccounts',
    'mgpermissions': 'mgpermissions',
    'dashboard/:id': 'dashboard',
    'dashboard': 'dashboard',
    'flush': 'flush',
    'reports': 'reports'
  };

  Router.prototype.onRoute = function(name, path, args) {
    if (path === 'login' || path === 'logout' || path === 'flush') {
      return true;
    }
    App.check_session();
    if ((App.session == null) || (App.session.get('email') == null)) {
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

},{}],27:[function(require,module,exports){
var AppLayout, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

AppLayout = (function(superClass) {
  extend(AppLayout, superClass);

  function AppLayout() {
    return AppLayout.__super__.constructor.apply(this, arguments);
  }

  AppLayout.prototype.el = "html";

  AppLayout.prototype.regions = {
    center_region: '#center-region',
    modal_region: '#modal-region'
  };

  return AppLayout;

})(Marionette.LayoutView);

module.exports = AppLayout;

},{}],28:[function(require,module,exports){
var Marionette, ModalView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

ModalView = (function(superClass) {
  extend(ModalView, superClass);

  function ModalView() {
    this.do_save = bind(this.do_save, this);
    return ModalView.__super__.constructor.apply(this, arguments);
  }

  ModalView.prototype.template = 'common/modal';

  ModalView.prototype.className = 'modal modal-primary';

  ModalView.prototype.id = 'app_modal';

  ModalView.prototype.ui = {
    title: '.modal-title',
    cancel: '#modal_cancel',
    save: '#modal_save',
    body: '.modal-body'
  };

  ModalView.prototype.events = {
    'click #modal_save': 'do_save'
  };

  ModalView.prototype.onRender = function() {
    var cancel_txt, icon, o, save_txt, title;
    if ((this.model == null) || (this.model.opts == null)) {
      return;
    }
    o = this.model.opts;
    title = o.title != null ? o.title : '';
    icon = o.icon != null ? "<i class='fa fa-" + o.icon + "'></i> " : '';
    this.ui.title.html("" + icon + title);
    cancel_txt = o.cancel_txt != null ? o.cancel_txt : 'CANCEL';
    this.ui.cancel.html(cancel_txt);
    save_txt = o.save_txt != null ? o.save_txt : 'OK';
    this.ui.save.html(save_txt);
    this.model.on_save = o.on_save;
    this.model.on_cancel = o.on_cancel;
    if (o.type != null) {
      $(this.el).removeClass('modal-primary').addClass("modal-" + o.type);
    }
    if (o.body != null) {
      return this.ui.body.html(o.body);
    }
  };

  ModalView.prototype.do_save = function() {
    if (this.model.on_save != null) {
      this.model.on_save();
    }
    return $('#app_modal').modal('hide');
  };

  ModalView.prototype.onShow = function() {
    this.m = $('#app_modal').modal();
    return this.m.on("hidden.bs.modal", (function(_this) {
      return function() {
        if (_this.model.on_cancel != null) {
          _this.model.on_cancel();
        }
        return App.layout.modal_region.empty();
      };
    })(this));
  };

  return ModalView;

})(Marionette.ItemView);

module.exports = ModalView;

},{}],29:[function(require,module,exports){
var Dashboard, DashboardContentView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Dashboard = require('../../models/dashboard');

DashboardContentView = (function(superClass) {
  extend(DashboardContentView, superClass);

  function DashboardContentView() {
    this.onDomRefresh = bind(this.onDomRefresh, this);
    return DashboardContentView.__super__.constructor.apply(this, arguments);
  }

  DashboardContentView.prototype.template = "dashboard/content";

  DashboardContentView.prototype.regions = {
    center: '#center-region'
  };

  DashboardContentView.prototype.onShow = function() {
    if (this.center_view != null) {
      this.center.show(this.center_view);
      App.currentView = this.center_view;
    } else {
      App.currentView = null;
    }
    return App.vent.on('dashboard:update', (function(_this) {
      return function(dash) {
        if (_this.center_view.model instanceof Dashboard) {
          if ((dash != null) && dash.id === _this.center_view.model.id) {
            return _this.onDomRefresh();
          }
        }
      };
    })(this));
  };

  DashboardContentView.prototype.onDomRefresh = function() {
    var st, t;
    t = this.title != null ? this.title : 'Foo';
    if (this.center_view.model instanceof Dashboard) {
      t = this.center_view.model.get('title');
    }
    st = this.subtitle != null ? this.subtitle : '';
    if (this.icon != null) {
      t = "<i class='fa fa-" + this.icon + "'></i> " + t;
    }
    t = t + " <small>" + st + "</small>";
    return this.$("#title").html(t);
  };

  return DashboardContentView;

})(Marionette.LayoutView);

module.exports = DashboardContentView;

},{"../../models/dashboard":14}],30:[function(require,module,exports){
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
    var contentview, icon, subtitle, title, view;
    title = arg.title, subtitle = arg.subtitle, view = arg.view, icon = arg.icon;
    App.currentView = view;
    contentview = new DashboardContentView();
    contentview.title = title;
    contentview.subtitle = subtitle;
    contentview.center_view = view;
    contentview.icon = icon;
    this.content.show(contentview);
    return this;
  };

  DashboardLayout.prototype.show_widgets = function(dash) {
    var v;
    v = new WidgetLayout({
      model: dash
    });
    return this.show_content({
      title: dash.get('title'),
      subtitle: '',
      view: v
    });
  };

  DashboardLayout.prototype.empty = function() {
    return this.content.empty();
  };

  DashboardLayout.prototype.onShow = function() {
    this.headerview = new DashboardHeaderView({
      model: App.session
    });
    this.header.show(this.headerview);
    this.sideview = new DashboardSideView({
      collection: App.session.dashboards
    });
    this.side.show(this.sideview);
    this.toolview = new DashboardToolView();
    this.tool.show(this.toolview);
    this.footerview = new DashboardFooterView();
    this.footer.show(this.footerview);
    App.AdminLTE_lib.reset();
    return App.vent.on('dashboard:update', (function(_this) {
      return function() {
        return App.vent.trigger("show:dashboard");
      };
    })(this));
  };

  return DashboardLayout;

})(Marionette.LayoutView);

module.exports = DashboardLayout;

},{"./content_view":29,"./footer_view":32,"./header_view":33,"./side_view":34,"./tool_view":35,"./widget_layout":36}],31:[function(require,module,exports){
var DashboardModalView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardModalView = (function(superClass) {
  extend(DashboardModalView, superClass);

  function DashboardModalView() {
    return DashboardModalView.__super__.constructor.apply(this, arguments);
  }

  DashboardModalView.prototype.template = 'dashboard/dashboard_modal';

  DashboardModalView.prototype.className = 'modal modal-primary';

  DashboardModalView.prototype.id = 'app_modal';

  DashboardModalView.prototype.ui = {
    modal_title: '.modal-title',
    modal_sub: '.modal-subtitle',
    title: 'input#title',
    cancel: '#modal_cancel',
    save: '#modal_save',
    body: '.modal-body'
  };

  DashboardModalView.prototype.onShow = function() {
    if (this.action === 'add') {
      this.ui.modal_title.html('Add Dashboard');
      this.ui.modal_sub.html('Add a new Dashboard to your account to hold one or more Widgets');
    }
    if (this.action === 'edit') {
      this.ui.modal_title.html('Edit Dashboard');
      this.ui.modal_sub.html('');
    }
    this.m = $('#app_modal').modal();
    this.m.on("hidden.bs.modal", (function(_this) {
      return function() {
        return App.layout.modal_region.empty();
      };
    })(this));
    this.ui.title.change((function(_this) {
      return function() {
        _this.model.set('title', _this.ui.title.val());
        App.save_user();
        return App.vent.trigger('dashboard:update', _this.model);
      };
    })(this));
    return this.ui.save.click((function(_this) {
      return function(e) {
        var t;
        e.preventDefault();
        t = _this.ui.title.val().trim();
        if (t === '') {
          return false;
        }
        if (_this.action === 'add') {
          _this.dashboards.add(_this.model, {
            at: 0
          });
          App.save_user();
          return App.router.navigate("dashboard/" + _this.model.id, {
            trigger: true
          });
        }
      };
    })(this));
  };

  return DashboardModalView;

})(Marionette.ItemView);

module.exports = DashboardModalView;

},{}],32:[function(require,module,exports){
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

},{}],33:[function(require,module,exports){
var DashboardHeaderView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

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
    fullName: '#fullname',
    avatar_full: '#avatar_full',
    fullName_full: '#fullname_full',
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
    this.ui.clock.html($.format.date(dt, App.config.dt_format));
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
    if (this.model.get('avatar') != null) {
      this.ui.avatar.attr('src', this.model.get('avatar'));
      this.ui.avatar_full.attr('src', this.model.get('avatar'));
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

},{}],34:[function(require,module,exports){
var Dashboard, DashboardModalView, DashboardSideView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardModalView = require('./dashboard_modal');

Dashboard = require('../../models/dashboard');

DashboardSideView = (function(superClass) {
  extend(DashboardSideView, superClass);

  function DashboardSideView() {
    this.onDomRefresh = bind(this.onDomRefresh, this);
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
    'click #dashboard-list': 'click_dash',
    'click #add_dash': 'show_add'
  };

  DashboardSideView.prototype.show_dash_modal = function(d, action) {
    this.dmv = new DashboardModalView({
      model: d
    });
    this.dmv.dashboards = this.collection;
    this.dmv.action = action;
    return App.layout.modal_region.show(this.dmv);
  };

  DashboardSideView.prototype.click_dash = function(e) {
    var link;
    e.preventDefault();
    link = $(e.target).closest('a');
    if ((link == null) || link.length === 0) {
      return null;
    }
    if (link.hasClass('dash_link')) {
      this.show_link(e);
    } else if (link.hasClass('edit')) {
      this.edit_link(e);
    } else if (link.hasClass('delete')) {
      this.delete_link(e);
    } else if (link.hasClass('moveup')) {
      this.moveup_link(e);
    } else if (link.hasClass('movedn')) {
      this.movedn_link(e);
    }
    return this;
  };

  DashboardSideView.prototype.update_dash_links = function(id) {
    id = id != null ? id : App.current_dash;
    $('li', this.ui.dashboard_list).removeClass('active');
    if (id != null) {
      App.current_dash = id;
      return $("li.dashboard-link.d_" + id).addClass('active');
    }
  };

  DashboardSideView.prototype.show_link = function(e) {
    var d, dlink, i, len, link, ref;
    if (e != null) {
      e.preventDefault();
    }
    link = $(e.target).closest('a');
    dlink = link.closest('.dashboard-link');
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
    return null;
  };

  DashboardSideView.prototype.show_add = function(e) {
    var d;
    if (e != null) {
      e.preventDefault();
    }
    d = new Dashboard();
    return this.show_dash_modal(d, 'add');
  };

  DashboardSideView.prototype.resolve_dash = function(e, pre) {
    var d, i, len, link, ref;
    if (e != null) {
      e.preventDefault();
    }
    link = $(e.target).closest('a');
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      d = ref[i];
      if (link.hasClass(pre + "_" + d.id)) {
        return d;
      }
    }
    return null;
  };

  DashboardSideView.prototype.moveup_link = function(e) {
    var d;
    d = this.resolve_dash(e, 'moveup');
    if (d != null) {
      this.collection.moveup(d);
    }
    this.update_dash_links();
    return App.save_user();
  };

  DashboardSideView.prototype.movedn_link = function(e) {
    var d;
    d = this.resolve_dash(e, 'movedn');
    if (d != null) {
      this.collection.movedn(d);
    }
    this.update_dash_links();
    return App.save_user();
  };

  DashboardSideView.prototype.edit_link = function(e) {
    var d;
    d = this.resolve_dash(e, 'edit');
    if (d != null) {
      return this.show_dash_modal(d, 'edit');
    }
  };

  DashboardSideView.prototype.delete_link = function(e) {
    var d;
    d = this.resolve_dash(e, 'delete');
    if (d != null) {
      return this.show_delete_modal(d);
    }
  };

  DashboardSideView.prototype.show_delete_modal = function(d) {
    return App.uiutils.showModal({
      title: 'Delete Dashboard?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this Dashboard? This cannot be undone and all Widget configurations for this Dashboard will be lost.',
      on_save: (function(_this) {
        return function() {
          var did;
          did = d.id;
          _this.collection.remove(d);
          App.save_user();
          if (did === App.current_dash) {
            return App.router.navigate('', {
              trigger: true
            });
          }
        };
      })(this)
    });
  };

  DashboardSideView.prototype.onShow = function() {
    App.vent.on("show:dashboard", this.update_dash_links);
    $(this.el).attr('tabindex', '-1');
    this.collection.on("update", (function(_this) {
      return function() {
        return _this.onDomRefresh();
      };
    })(this));
    return App.vent.on("dashboard:update", this.onDomRefresh);
  };

  DashboardSideView.prototype.onDomRefresh = function() {
    var d, dl, hh, i, idx, len, ref, results;
    if ((App.session != null) && (App.session.get('avatar') != null)) {
      this.ui.avatar.attr('src', App.session.get('avatar'));
    }
    $('li.dashboard-link', this.ui.dashboard_list).remove();
    ref = this.collection.models;
    results = [];
    for (idx = i = 0, len = ref.length; i < len; idx = ++i) {
      d = ref[idx];
      hh = "<li class='dashboard-link d_" + d.id + "'>\n  <a href='#' class='dash_link'><i class='fa fa-th-large'></i> <span>" + (d.get('title')) + "</span></a>\n  <div class='controls'>\n    <a href='#' class='moveup moveup_" + d.id + "'><i class='fa fa-caret-up'></i></a>\n    <a href='#' class='movedn movedn_" + d.id + "'><i class='fa fa-caret-down'></i></a>\n    <a href='#' class='edit edit_" + d.id + "'><i class='fa fa-pencil-square'></i></a>\n    <a href='#' class='delete delete_" + d.id + "'><i class='fa fa-times-circle'></i></a>\n  </div>\n</li>";
      dl = $(hh);
      results.push(this.ui.dashboard_list.append(dl));
    }
    return results;
  };

  return DashboardSideView;

})(Marionette.ItemView);

module.exports = DashboardSideView;

},{"../../models/dashboard":14,"./dashboard_modal":31}],35:[function(require,module,exports){
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

  DashboardToolView.prototype.ui = {
    accounts_link: "#manage_accounts",
    users_link: "#manage_permissions",
    reports_link: '#reports'
  };

  DashboardToolView.prototype.events = {
    "click #manage_accounts": "manage_accounts",
    "click #manage_permissions": "manage_permissions",
    "click #reports": "reports"
  };

  DashboardToolView.prototype.manage_accounts = function(e) {
    e.preventDefault();
    return App.router.navigate('mgaccounts', {
      trigger: true
    });
  };

  DashboardToolView.prototype.manage_permissions = function(e) {
    e.preventDefault();
    return App.router.navigate('mgpermissions', {
      trigger: true
    });
  };

  DashboardToolView.prototype.reports = function(e) {
    e.preventDefault();
    return App.router.navigate('reports', {
      trigger: true
    });
  };

  DashboardToolView.prototype.onShow = function() {
    return $(this.el).attr('tabindex', '-1');
  };

  return DashboardToolView;

})(Marionette.ItemView);

module.exports = DashboardToolView;

},{}],36:[function(require,module,exports){
var Marionette, OPCManager, Widget, WidgetLayout, WidgetModalView, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Widget = require('../../models/widget');

WidgetView = require('./widget_view');

WidgetModalView = require('./widget_modal');

OPCManager = require('../../opcmanager');

WidgetLayout = (function(superClass) {
  extend(WidgetLayout, superClass);

  function WidgetLayout() {
    this.persist_widgets = bind(this.persist_widgets, this);
    return WidgetLayout.__super__.constructor.apply(this, arguments);
  }

  WidgetLayout.prototype.template = "dashboard/widget_layout";

  WidgetLayout.prototype.ui = {
    wgrid: "ul.gridster"
  };

  WidgetLayout.prototype.events = {
    "click #add_widget": "show_add"
  };

  WidgetLayout.prototype.add_widget = function(type) {
    var cls, i, id, len, lo, m, ref, tc, w, wli;
    id = 0;
    ref = this.model.widgets.models;
    for (i = 0, len = ref.length; i < len; i++) {
      m = ref[i];
      if (m.id > id) {
        id = m.id;
      }
    }
    id = id + 1;
    lo = {
      r: 1,
      c: 1,
      sx: 4,
      sy: 2
    };
    tc = type === 'default' ? '' : type.charAt(0).toUpperCase() + type.slice(1);
    cls = window[tc + "WidgetView"];
    if (cls) {
      lo.sx = cls.layout.sx;
      lo.sy = cls.layout.sy;
    }
    w = this.model.widgets.add({
      id: id,
      type: type,
      settings: {
        layout: lo
      },
      config: true
    });
    if (this.grid) {
      wli = $("<li id='widget_" + id + "' class='widget'></li>");
      this.$('ul.gridster').append(wli);
      this.grid.add_widget(wli, lo.sx, lo.sy, lo.c, lo.r);
      this.draw_widget_view(w);
      return wli.append('<span class="gs-resize-handle gs-resize-handle-both"></span>');
    }
  };

  WidgetLayout.prototype.show_add = function(e) {
    var m;
    e.preventDefault();
    m = new Backbone.Model();
    m.view = this;
    this.wmv = new WidgetModalView({
      model: m
    });
    return App.layout.modal_region.show(this.wmv);
  };

  WidgetLayout.prototype.persist_widgets = function(e, ui) {
    var i, idx, len, ref, wid, wm;
    wid = $(e.target).closest('li.widget').data('id');
    ref = this.model.widgets.models;
    for (idx = i = 0, len = ref.length; i < len; idx = ++i) {
      wm = ref[idx];
      this.$('ul.gridster li').each(function() {
        var id, layout, s;
        id = $(this).data('id');
        if (id === wm.id) {
          s = _.clone(wm.get("settings"));
          layout = {
            r: $(this).attr('data-row'),
            c: $(this).attr('data-col'),
            sx: $(this).attr('data-sizex'),
            sy: $(this).attr('data-sizey')
          };
          s.layout = layout;
          return wm.set("settings", s);
        }
      });
    }
    return App.save_user();
  };

  WidgetLayout.prototype.set_gridster = function() {
    var grid;
    if (this.grid != null) {
      return this.grid;
    }
    grid = this.$('ul.gridster').gridster({
      widget_base_dimensions: [50, 25],
      autogrow_cols: true,
      resize: {
        enabled: true,
        stop: this.persist_widgets
      },
      draggable: {
        handle: '.box-header',
        stop: this.persist_widgets
      }
    });
    this.grid = grid.data('gridster');
    return this;
  };

  WidgetLayout.prototype.draw_widget_view = function(w) {
    var cls, lo, r, s, tpe, wid, wli, wv;
    wid = "widget_" + w.id;
    r = this.getRegion(wid);
    if ((r != null)) {
      return;
    }
    wli = $("li#" + wid);
    if ((wli == null) || wli.length === 0) {
      wli = $("<li id='" + wid + "' class='widget'></li>");
      $('ul.gridster').append(wli);
    }
    s = w.get('settings');
    lo = (s != null) && (s.layout != null) ? s.layout : null;
    wli.attr({
      'data-id': w.id,
      'data-row': s.layout.r,
      'data-col': s.layout.c,
      'data-sizex': s.layout.sx,
      'data-sizey': s.layout.sy
    });
    tpe = w.get('type') != null ? w.get('type') : 'default';
    tpe = tpe === 'default' ? '' : tpe.charAt(0).toUpperCase() + tpe.slice(1);
    cls = tpe + "WidgetView";
    if (window[cls]) {
      wv = new window[cls]({
        model: w
      });
      r = this.addRegion(wid, "li#" + wid);
      r.show(wv);
      return wv.start();
    }
  };

  WidgetLayout.prototype.onShow = function() {
    var i, idx, len, ref, w;
    OPCManager.drop_connections();
    ref = this.model.widgets.models;
    for (idx = i = 0, len = ref.length; i < len; idx = ++i) {
      w = ref[idx];
      this.draw_widget_view(w);
    }
    this.set_gridster();
    this.model.widgets.on("remove", (function(_this) {
      return function(w, b) {
        var cid, rg;
        cid = _this.cid;
        rg = "widget_" + w.id;
        return App.currentView.grid.remove_widget($("li#" + rg), function() {
          return App.currentView.removeRegion(rg);
        });
      };
    })(this));
    return App.currentView = this;
  };

  return WidgetLayout;

})(Marionette.LayoutView);

module.exports = WidgetLayout;

},{"../../models/widget":23,"../../opcmanager":25,"./widget_modal":37,"./widget_view":38}],37:[function(require,module,exports){
var Marionette, WidgetModalView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetModalView = (function(superClass) {
  extend(WidgetModalView, superClass);

  function WidgetModalView() {
    return WidgetModalView.__super__.constructor.apply(this, arguments);
  }

  WidgetModalView.prototype.template = 'dashboard/widget_modal';

  WidgetModalView.prototype.className = 'modal modal-primary';

  WidgetModalView.prototype.id = 'app_modal';

  WidgetModalView.prototype.ui = {
    title: '.modal-title',
    cancel: '#modal_cancel',
    save: '#modal_save',
    body: '.modal-body'
  };

  WidgetModalView.prototype.events = {
    'click #widget_selections>a.widget_select': "select"
  };

  WidgetModalView.prototype.select = function(e) {
    var sel, wid;
    e.preventDefault();
    sel = $(e.target);
    wid = sel.attr("id");
    if ((this.model != null) && (this.model.view != null)) {
      this.model.view.add_widget(wid);
    }
    return $('#app_modal').modal('hide');
  };

  WidgetModalView.prototype.onShow = function() {
    this.m = $('#app_modal').modal();
    return this.m.on("hidden.bs.modal", (function(_this) {
      return function() {
        if ((_this.model != null) && (_this.model.on_cancel != null)) {
          _this.model.on_cancel();
        }
        return App.layout.modal_region.empty();
      };
    })(this));
  };

  return WidgetModalView;

})(Marionette.ItemView);

module.exports = WidgetModalView;

},{}],38:[function(require,module,exports){
var Marionette, WidgetView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = (function(superClass) {
  extend(WidgetView, superClass);

  WidgetView.prototype.template = "widgets/widget";

  WidgetView.prototype.className = 'widget-outer box box-primary';

  WidgetView.prototype.events = {
    "click #show_settings": "toggle_settings",
    "click #remove": "remove_widget"
  };

  WidgetView.layout = {
    sx: 4,
    sy: 5
  };

  function WidgetView(config) {
    WidgetView.__super__.constructor.call(this, config);
    this.settings_visible = false;
    this;
  }

  WidgetView.prototype.toggle_settings = function(e) {
    if (e != null) {
      e.preventDefault();
    }
    this.settings_visible = !this.settings_visible;
    this.$(".settings").toggle(this.settings_visible);
    return this.$(".display").toggle(!this.settings_visible);
  };

  WidgetView.prototype.remove_widget = function(e) {
    if (e != null) {
      e.preventDefault();
      return this.model.collection.remove(this.model);
    }
  };

  WidgetView.prototype.start = function() {
    return console.log("not implemented");
  };

  return WidgetView;

})(Marionette.ItemView);

window.WidgetView = WidgetView;

module.exports = WidgetView;

},{}],39:[function(require,module,exports){
var Account, AccountView, Marionette, SiteView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

SiteView = require('./site_view');

Account = require('../../../models/account');

AccountView = (function(superClass) {
  extend(AccountView, superClass);

  function AccountView() {
    return AccountView.__super__.constructor.apply(this, arguments);
  }

  AccountView.prototype.template = "forms/manage_accounts/account";

  AccountView.prototype.tagName = 'div';

  AccountView.prototype.className = 'row';

  AccountView.prototype.childViewContainer = '.site_list';

  AccountView.prototype.childView = SiteView;

  AccountView.prototype.ui = {
    container: '.account_container'
  };

  AccountView.prototype.events = {
    'click #edit_account': 'show_edit',
    'click #add_site': 'add_site',
    'click #delete_account': 'delete',
    'click #account_buttons>#cancel': 'cancel_edit',
    'click #account_buttons>#save': 'save',
    'click #account_active': 'toggle_active'
  };

  AccountView.prototype.bindings = {
    name: '#account_name',
    isActive: {
      selector: 'i#account_active',
      elAttribute: 'class',
      converter: function(action, value, field) {
        if (value) {
          return 'fa-toggle-on';
        } else {
          return 'fa-toggle-off';
        }
      }
    }
  };

  AccountView.prototype.add_site = function() {
    var i, len, ref, site;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      site = ref[i];
      if ((site.id == null) || site.id === 0) {
        return false;
      }
    }
    return this.collection.add({
      name: '',
      accountId: this.model.id,
      isActive: false,
      code: '',
      shortName: '',
      serverUrl: ''
    }, {
      at: 0
    });
  };

  AccountView.prototype.initialize = function() {
    this.collection = this.model.sites;
    return this.modelBinder = new Backbone.ModelBinder();
  };

  AccountView.prototype.toggle_active = function() {
    if (!this.ui.container.hasClass('rw')) {
      return false;
    }
    return this.model.set('isActive', !this.model.get('isActive'));
  };

  AccountView.prototype.toggle_edit = function(rw) {
    return this.ui.container.toggleClass('rw', rw);
  };

  AccountView.prototype.show_edit = function(e) {
    this.old_model = $.extend(true, {}, this.model.attributes);
    return this.toggle_edit(true);
  };

  AccountView.prototype.cancel_edit = function() {
    if ((this.model.id == null) || this.model.id < 1) {
      this.model.collection.remove(this.model);
      return;
    }
    this.toggle_edit(false);
    this.model = new Account(this.old_model);
    return this.render();
  };

  AccountView.prototype["delete"] = function() {
    return App.uiutils.showModal({
      title: 'Delete Account?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this Account? This cannot be undone and all Account and associated Site data will be lost.',
      on_save: (function(_this) {
        return function() {
          _this.model.collection.remove(_this.model);
          return App.vent.trigger("app:update");
        };
      })(this)
    });
  };

  AccountView.prototype.save = function() {
    var name;
    name = this.model.get('name');
    if ((name == null) || name.trim() === '') {
      return;
    }
    return this.model.save(null, {
      blacklist: ["users", "sites"],
      success: (function(_this) {
        return function(data) {
          return _this.render();
        };
      })(this)
    });
  };

  AccountView.prototype.onRender = function() {
    this.modelBinder.bind(this.model, this.el, this.bindings);
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      return this.show_edit();
    } else {
      return this.toggle_edit(false);
    }
  };

  return AccountView;

})(Marionette.CompositeView);

module.exports = AccountView;

},{"../../../models/account":10,"./site_view":41}],40:[function(require,module,exports){
var AccountView, AccountsView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

AccountView = require('./account_view');

AccountsView = (function(superClass) {
  extend(AccountsView, superClass);

  function AccountsView() {
    return AccountsView.__super__.constructor.apply(this, arguments);
  }

  AccountsView.prototype.template = "forms/manage_accounts/accounts";

  AccountsView.prototype.childViewContainer = '#account_list';

  AccountsView.prototype.childView = AccountView;

  AccountsView.prototype.events = {
    'click #add_account': 'add_account'
  };

  AccountsView.prototype.add_account = function() {
    var acct, i, len, ref;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      acct = ref[i];
      if ((acct.id == null) || acct.id === 0) {
        return false;
      }
    }
    return this.collection.add({
      name: "",
      isActive: false
    }, {
      at: 0
    });
  };

  return AccountsView;

})(Marionette.CompositeView);

module.exports = AccountsView;

},{"./account_view":39}],41:[function(require,module,exports){
var Marionette, Site, SiteView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Site = require('../../../models/site');

SiteView = (function(superClass) {
  extend(SiteView, superClass);

  function SiteView() {
    return SiteView.__super__.constructor.apply(this, arguments);
  }

  SiteView.prototype.template = "forms/manage_accounts/site";

  SiteView.prototype.tagName = 'div';

  SiteView.prototype.className = '';

  SiteView.prototype.ui = {
    container: '.site_container',
    cloud: 'i#site_cloud'
  };

  SiteView.prototype.events = {
    'click #edit_site': 'show_edit',
    'click #delete_site': 'delete',
    'click #site_buttons>#cancel': 'cancel_edit',
    'click #site_buttons>#save': 'save',
    'click #site_active': 'toggle_active',
    'click #site_cloud': 'toggle_cloud'
  };

  SiteView.prototype.bindings = {
    name: '#site_name',
    code: '#site_code',
    shortName: '#site_short',
    serverUrl: '#site_url',
    refreshRate: '#site_refresh_rate',
    isActive: {
      selector: 'i#site_active',
      elAttribute: 'class',
      converter: function(action, value, field) {
        if (value) {
          return 'fa-toggle-on';
        } else {
          return 'fa-toggle-off';
        }
      }
    }
  };

  SiteView.prototype.initialize = function() {
    return this.modelBinder = new Backbone.ModelBinder();
  };

  SiteView.prototype.toggle_active = function() {
    if (!this.ui.container.hasClass('rw')) {
      return false;
    }
    return this.model.set('isActive', !this.model.get('isActive'));
  };

  SiteView.prototype.set_cloud = function() {
    var c, settings;
    settings = _.clone(this.model.get('settings'));
    c = settings.cloud != null ? settings.cloud : true;
    this.ui.cloud.toggleClass('fa-toggle-on', c);
    return this.ui.cloud.toggleClass('fa-toggle-off', !c);
  };

  SiteView.prototype.toggle_cloud = function() {
    var c, settings;
    if (!this.ui.container.hasClass('rw')) {
      return false;
    }
    settings = _.clone(this.model.get('settings'));
    c = settings.cloud != null ? !settings.cloud : true;
    settings.cloud = c;
    this.model.set('settings', settings);
    return this.set_cloud();
  };

  SiteView.prototype.toggle_edit = function(rw) {
    return this.ui.container.toggleClass('rw', rw);
  };

  SiteView.prototype.cancel_edit = function() {
    if ((this.model.id == null) || this.model.id < 1) {
      if (this.model.collection != null) {
        this.model.collection.remove(this.model);
      }
      return;
    }
    this.toggle_edit(false);
    this.model = new Site(this.old_model);
    return this.render();
  };

  SiteView.prototype.show_edit = function(e) {
    this.old_model = $.extend(true, {}, this.model.attributes);
    return this.toggle_edit(true);
  };

  SiteView.prototype["delete"] = function() {
    return App.uiutils.showModal({
      title: 'Delete Site?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this Site? This cannot be undone and all Site data will be lost.',
      on_save: (function(_this) {
        return function() {
          _this.model.collection.remove(_this.model);
          return App.vent.trigger("app:update");
        };
      })(this)
    });
  };

  SiteView.prototype.save = function() {
    var name;
    name = this.model.get('name');
    if ((name == null) || name.trim() === '') {
      return;
    }
    return this.model.save(null, {
      success: function() {
        this.render();
        return App.vent.trigger("app:update");
      }
    });
  };

  SiteView.prototype.onRender = function() {
    this.modelBinder.bind(this.model, this.el, this.bindings);
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      this.show_edit();
    }
    return this.set_cloud();
  };

  return SiteView;

})(Marionette.ItemView);

module.exports = SiteView;

},{"../../../models/site":19}],42:[function(require,module,exports){
var Claim, Marionette, PermissionView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Claim = require('../../../models/claim');

PermissionView = (function(superClass) {
  extend(PermissionView, superClass);

  function PermissionView() {
    return PermissionView.__super__.constructor.apply(this, arguments);
  }

  PermissionView.prototype.template = "forms/manage_permissions/permission";

  PermissionView.prototype.className = 'row permission_container';

  PermissionView.prototype.events = {
    'click #edit_permission': 'show_edit',
    'click #delete_permission': 'delete',
    'click #permission_buttons>#cancel': 'cancel_edit',
    'click #permission_buttons>#save': 'save'
  };

  PermissionView.prototype.bindings = {
    name: '#permission_name',
    description: '#permission_desc'
  };

  PermissionView.prototype.initialize = function() {
    return this.modelBinder = new Backbone.ModelBinder();
  };

  PermissionView.prototype.toggle_edit = function(rw) {
    return $(this.el).toggleClass('rw', rw);
  };

  PermissionView.prototype.show_edit = function(e) {
    this.old_model = $.extend(true, {}, this.model.attributes);
    return this.toggle_edit(true);
  };

  PermissionView.prototype.cancel_edit = function() {
    if ((this.model.id == null) || this.model.id < 1) {
      this.model.collection.remove(this.model);
      return;
    }
    this.toggle_edit(false);
    this.model = new Claim(this.old_model);
    return this.render();
  };

  PermissionView.prototype["delete"] = function() {
    return App.uiutils.showModal({
      title: 'Delete Permission?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this Permission? This cannot be undone and all associated Users and Roles will lose this Permission',
      on_save: (function(_this) {
        return function() {
          _this.model.collection.remove(_this.model);
          return App.vent.trigger("app:update");
        };
      })(this)
    });
  };

  PermissionView.prototype.save = function() {
    var name;
    name = this.model.get('name');
    if ((name == null) || name.trim() === '') {
      return;
    }
    if (this.model.id == null) {
      this.model.set('id', Math.floor(Math.random() * 10000) + 1);
    }
    App.vent.trigger("app:update");
    return this.render();
  };

  PermissionView.prototype.onRender = function() {
    this.modelBinder.bind(this.model, this.el, this.bindings);
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      return this.show_edit();
    } else {
      return this.toggle_edit(false);
    }
  };

  return PermissionView;

})(Marionette.ItemView);

module.exports = PermissionView;

},{"../../../models/claim":12}],43:[function(require,module,exports){
var Marionette, PermissionsLayout, PermissionsTopView, RolesTopView, UserCollection, UsersView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

PermissionsTopView = require('./permissions_top_view');

RolesTopView = require('./roles_top_view');

UsersView = require('./users_view');

UserCollection = require('../../../models/user_collection');

PermissionsLayout = (function(superClass) {
  extend(PermissionsLayout, superClass);

  function PermissionsLayout() {
    return PermissionsLayout.__super__.constructor.apply(this, arguments);
  }

  PermissionsLayout.prototype.template = "forms/manage_permissions/layout";

  PermissionsLayout.prototype.regions = {
    users_region: '#users_region',
    roles_region: '#roles_region',
    permissions_region: '#permissions_region'
  };

  PermissionsLayout.prototype.show_tab = function(tab) {
    this.permissions_region.empty();
    this.roles_region.empty();
    this.users_region.empty();
    switch (tab) {
      case 'permissions':
        this.pv = new PermissionsTopView;
        return this.permissions_region.show(this.pv);
      case 'roles':
        this.rv = new RolesTopView;
        return this.roles_region.show(this.rv);
      case 'users':
        this.uv = new UsersView({
          collection: new UserCollection([])
        });
        return this.users_region.show(this.uv);
    }
  };

  PermissionsLayout.prototype.onShow = function() {
    this.$('a[data-toggle="tab"]').on('shown.bs.tab', (function(_this) {
      return function(e) {
        var tab;
        tab = e.target.innerText.toLowerCase();
        return _this.show_tab(tab);
      };
    })(this));
    return this.show_tab('permissions');
  };

  return PermissionsLayout;

})(Marionette.LayoutView);

module.exports = PermissionsLayout;

},{"../../../models/user_collection":22,"./permissions_top_view":44,"./roles_top_view":47,"./users_view":50}],44:[function(require,module,exports){
var ClaimCollection, Marionette, PermissionsTopView, PermissionsView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

PermissionsView = require('./permissions_view');

ClaimCollection = require('../../../models/claim_collection');

PermissionsTopView = (function(superClass) {
  extend(PermissionsTopView, superClass);

  function PermissionsTopView() {
    this.rebuild_view = bind(this.rebuild_view, this);
    return PermissionsTopView.__super__.constructor.apply(this, arguments);
  }

  PermissionsTopView.prototype.template = "forms/manage_permissions/permissions_top";

  PermissionsTopView.prototype.regions = {
    global_region: '#global_region'
  };

  PermissionsTopView.prototype.onShow = function() {
    return App.refresh_accounts(this.rebuild_view);
  };

  PermissionsTopView.prototype.rebuild_view = function() {
    var acc, acc_el, app_claims, i, len, ref, results, s, sc, site_el;
    app_claims = new ClaimCollection();
    app_claims.fetch({
      success: (function(_this) {
        return function() {
          _this.pv = new PermissionsView({
            model: new Backbone.Model({
              id: 0,
              name: 'Global Permissions',
              global: true
            }),
            collection: App.claims
          });
          return _this.global_region.show(_this.pv);
        };
      })(this)
    });
    ref = App.accounts.models;
    results = [];
    for (i = 0, len = ref.length; i < len; i++) {
      acc = ref[i];
      acc_el = "<div id='acc_" + acc.id + "'>\n  <h3><i class='fa fa-fw fa-building-o'></i>" + (acc.get('name')) + "</h3>\n</div>";
      acc_el = $(acc_el);
      $(this.el).append(acc_el);
      results.push((function() {
        var j, len1, ref1, results1;
        ref1 = acc.sites.models;
        results1 = [];
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          s = ref1[j];
          site_el = $("<div id='site_" + s.id + "' class='site_item'></div>");
          acc_el.append(site_el);
          sc = new ClaimCollection([], {
            site: s.id
          });
          results1.push(sc.fetch({
            success: ((function(_this) {
              return function(site, claims) {
                return function(data, xhr) {
                  var r, spv;
                  spv = new PermissionsView({
                    model: site,
                    collection: claims
                  });
                  r = _this.addRegion("site_" + site.id, "#site_" + site.id);
                  return r.show(spv);
                };
              };
            })(this))(s, sc)
          }));
        }
        return results1;
      }).call(this));
    }
    return results;
  };

  return PermissionsTopView;

})(Marionette.LayoutView);

module.exports = PermissionsTopView;

},{"../../../models/claim_collection":13,"./permissions_view":45}],45:[function(require,module,exports){
var Marionette, PermissionView, PermissionsView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

PermissionView = require('./permission_view');

PermissionsView = (function(superClass) {
  extend(PermissionsView, superClass);

  function PermissionsView() {
    return PermissionsView.__super__.constructor.apply(this, arguments);
  }

  PermissionsView.prototype.template = "forms/manage_permissions/permissions";

  PermissionsView.prototype.childViewContainer = '#permissions_list';

  PermissionsView.prototype.childView = PermissionView;

  PermissionsView.prototype.events = {
    'click #add_claim': 'add_claim'
  };

  PermissionsView.prototype.add_claim = function() {
    var c, i, len, ref;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      if ((c.id == null) || c.id === 0) {
        return false;
      }
    }
    return this.collection.add({
      name: '',
      description: ''
    }, {
      at: 0
    });
  };

  return PermissionsView;

})(Marionette.CompositeView);

module.exports = PermissionsView;

},{"./permission_view":42}],46:[function(require,module,exports){
var Marionette, Role, RoleView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Role = require('../../../models/role');

RoleView = (function(superClass) {
  extend(RoleView, superClass);

  function RoleView() {
    return RoleView.__super__.constructor.apply(this, arguments);
  }

  RoleView.prototype.template = "forms/manage_permissions/role";

  RoleView.prototype.className = 'row role_container';

  RoleView.prototype.events = {
    'click #edit_role': 'show_edit',
    'click #delete_role': 'delete',
    'click #role_buttons>#cancel': 'cancel_edit',
    'click #role_buttons>#save': 'save'
  };

  RoleView.prototype.bindings = {
    name: '#role_name',
    description: '#role_desc'
  };

  RoleView.prototype.initialize = function() {
    return this.modelBinder = new Backbone.ModelBinder();
  };

  RoleView.prototype.toggle_edit = function(rw) {
    var claims;
    $(this.el).toggleClass('rw', rw);
    this.$('#role_claims_container').toggle(rw);
    if (rw) {
      claims = this.model.get('claims');
      this.$('select#role_claims').val(claims);
      return this.$('select#role_claims').chosen();
    }
  };

  RoleView.prototype.show_edit = function(e) {
    this.old_model = $.extend(true, {}, this.model.attributes);
    return this.toggle_edit(true);
  };

  RoleView.prototype.cancel_edit = function() {
    if ((this.model.id == null) || this.model.id < 1) {
      this.model.collection.remove(this.model);
      return;
    }
    this.model = new Role(this.old_model);
    return this.render();
  };

  RoleView.prototype["delete"] = function() {
    return App.uiutils.showModal({
      title: 'Delete Role?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this Role? This cannot be undone and all associated Sites will lose this Role.',
      on_save: (function(_this) {
        return function() {
          _this.model.collection.remove(_this.model);
          return App.vent.trigger("app:update");
        };
      })(this)
    });
  };

  RoleView.prototype.save = function() {
    var name;
    name = this.model.get('name');
    if ((name == null) || name.trim() === '') {
      return;
    }
    if (this.model.id == null) {
      this.model.set('id', Math.floor(Math.random() * 10000) + 1);
    }
    this.model.set('claims', this.$('select#role_claims').val());
    App.vent.trigger("app:update");
    return this.render();
  };

  RoleView.prototype.onRender = function() {
    this.toggle_edit(false);
    return this.modelBinder.bind(this.model, this.el, this.bindings);
  };

  RoleView.prototype.onShow = function() {
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      return this.show_edit();
    }
  };

  return RoleView;

})(Marionette.ItemView);

module.exports = RoleView;

},{"../../../models/role":16}],47:[function(require,module,exports){
var Marionette, RolesTopView, RolesView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

RolesView = require('./roles_view');

RolesTopView = (function(superClass) {
  extend(RolesTopView, superClass);

  function RolesTopView() {
    return RolesTopView.__super__.constructor.apply(this, arguments);
  }

  RolesTopView.prototype.template = "forms/manage_permissions/roles_top";

  RolesTopView.prototype.regions = {
    global_region: '#global_region'
  };

  RolesTopView.prototype.onShow = function() {
    var acc, acc_el, i, len, m, r, ref, results, s, site_el, srv;
    m = new Backbone.Model({
      id: 0,
      name: 'Global Roles',
      global: true
    });
    this.rv = new RolesView({
      model: m,
      collection: App.roles
    });
    this.global_region.show(this.rv);
    ref = App.accounts.models;
    results = [];
    for (i = 0, len = ref.length; i < len; i++) {
      acc = ref[i];
      acc_el = "<div id='acc_" + acc.id + "'>\n  <h3><i class='fa fa-fw fa-building-o'></i>" + (acc.get('name')) + "</h3>\n</div>";
      acc_el = $(acc_el);
      $(this.el).append(acc_el);
      results.push((function() {
        var j, len1, ref1, results1;
        ref1 = acc.sites.models;
        results1 = [];
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          s = ref1[j];
          site_el = $("<div id='site_" + s.id + "' class='site_item'></div>");
          acc_el.append(site_el);
          srv = new RolesView({
            model: s,
            collection: s.roles
          });
          r = this.addRegion("site_" + s.id, "#site_" + s.id);
          results1.push(r.show(srv));
        }
        return results1;
      }).call(this));
    }
    return results;
  };

  return RolesTopView;

})(Marionette.LayoutView);

module.exports = RolesTopView;

},{"./roles_view":48}],48:[function(require,module,exports){
var Marionette, RoleView, RolesView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

RoleView = require('./role_view');

RolesView = (function(superClass) {
  extend(RolesView, superClass);

  function RolesView() {
    return RolesView.__super__.constructor.apply(this, arguments);
  }

  RolesView.prototype.template = "forms/manage_permissions/roles";

  RolesView.prototype.childViewContainer = '#roles_list';

  RolesView.prototype.childView = RoleView;

  RolesView.prototype.events = {
    'click #add_role': 'add_role'
  };

  RolesView.prototype.add_role = function() {
    var c, i, len, ref;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      if ((c.id == null) || c.id === 0) {
        return false;
      }
    }
    return this.collection.add({
      name: '',
      description: '',
      site_id: this.model.id
    }, {
      at: 0
    });
  };

  return RolesView;

})(Marionette.CompositeView);

module.exports = RolesView;

},{"./role_view":46}],49:[function(require,module,exports){
var Marionette, User, UserView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

User = require('../../../models/user');

UserView = (function(superClass) {
  extend(UserView, superClass);

  function UserView() {
    return UserView.__super__.constructor.apply(this, arguments);
  }

  UserView.prototype.template = "forms/manage_permissions/user";

  UserView.prototype.className = 'row user_container';

  UserView.prototype.events = {
    'click #edit_user': 'show_edit',
    'click #delete_user': 'delete',
    'click #user_buttons>#cancel': 'cancel_edit',
    'click #user_buttons>#save': 'save'
  };

  UserView.prototype.bindings = {
    firstName: '#firstname',
    lastName: '#lastname',
    email: '#email'
  };

  UserView.prototype.ui = {
    firstName: 'input#firstname',
    lastName: 'input#lastname',
    email: 'input#email',
    pw: 'input#password',
    pwc: 'input#password_confirmation'
  };

  UserView.prototype.initialize = function() {
    debugger;
    return this.modelBinder = new Backbone.ModelBinder();
  };

  UserView.prototype.toggle_edit = function(rw) {
    var acc, i, j, len, len1, ref, ref1, roles_global, s;
    $(this.el).toggleClass('rw', rw);
    if (rw) {
      roles_global = this.model.get('roles_global');
      this.$('select#roles_global').val(roles_global);
      ref = App.accounts.models;
      for (i = 0, len = ref.length; i < len; i++) {
        acc = ref[i];
        ref1 = acc.sites.models;
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          s = ref1[j];
          this.$("select#roles_" + s.id).val(this.model.get("roles_" + s.id));
        }
      }
      return this.$('select').chosen();
    }
  };

  UserView.prototype.show_edit = function(e) {
    this.old_model = $.extend(true, {}, this.model.attributes);
    return this.toggle_edit(true);
  };

  UserView.prototype.cancel_edit = function() {
    if ((this.model.id == null) || this.model.id < 1) {
      App.users.remove(this.model);
      return;
    }
    this.model = new User(this.old_model);
    return this.render();
  };

  UserView.prototype["delete"] = function() {
    return App.uiutils.showModal({
      title: 'Delete User?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this User? This cannot be undone and all associated data will be lost21.',
      on_save: (function(_this) {
        return function() {
          _this.model.collection.remove(_this.model);
          return App.vent.trigger("app:update");
        };
      })(this)
    });
  };

  UserView.prototype.valid_email = function(eml) {
    var e;
    if ((eml == null) || eml.trim() === '') {
      return false;
    }
    e = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    return e.test(eml);
  };

  UserView.prototype.validate = function() {
    var pw, pwc, res;
    this.$('.form-group').removeClass('has-error');
    res = true;
    if (!this.valid_email(this.model.get('email'))) {
      this.ui.email.closest('.form-group').addClass('has-error');
      res = res && false;
    }
    if ((this.model.get('lastName') == null) || this.model.get('lastName').trim() === '') {
      this.ui.lastName.closest('.form-group').addClass('has-error');
      res = res && false;
    }
    if ((this.model.get('firstName') == null) || this.model.get('firstName').trim() === '') {
      this.ui.firstName.closest('.form-group').addClass('has-error');
      res = res && false;
    }
    pw = this.ui.pw.val().trim();
    pwc = this.ui.pwc.val().trim();
    if (pw !== '' && pw !== pwc) {
      this.ui.pw.closest('.form-group').addClass('has-error');
      this.ui.pwc.closest('.form-group').addClass('has-error');
      res = res && false;
    }
    return res;
  };

  UserView.prototype.save = function() {
    var acc, i, j, len, len1, ref, ref1, s;
    if (!this.validate()) {
      return;
    }
    if (this.model.id == null) {
      this.model.set('id', Math.floor(Math.random() * 10000) + 1);
    }
    this.model.set('roles_global', this.$('select#roles_global').val());
    ref = App.accounts.models;
    for (i = 0, len = ref.length; i < len; i++) {
      acc = ref[i];
      ref1 = acc.sites.models;
      for (j = 0, len1 = ref1.length; j < len1; j++) {
        s = ref1[j];
        this.model.set("roles_" + s.id, this.$("select#roles_" + s.id).val());
      }
    }
    App.vent.trigger("app:update");
    return this.render();
  };

  UserView.prototype.onRender = function() {
    debugger;
    this.toggle_edit(false);
    return this.modelBinder.bind(this.model, this.el, this.bindings);
  };

  UserView.prototype.onShow = function() {
    debugger;
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      this.show_edit();
    }
    return App.new_user = this.model;
  };

  return UserView;

})(Marionette.ItemView);

module.exports = UserView;

},{"../../../models/user":21}],50:[function(require,module,exports){
var Marionette, UserCollection, UserView, UsersView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UserView = require('./user_view');

UserCollection = require('../../../models/user_collection');

UsersView = (function(superClass) {
  extend(UsersView, superClass);

  function UsersView() {
    return UsersView.__super__.constructor.apply(this, arguments);
  }

  UsersView.prototype.template = "forms/manage_permissions/users";

  UsersView.prototype.childViewContainer = '#users_list';

  UsersView.prototype.childView = UserView;

  UsersView.prototype.events = {
    'click #add_user': 'add_user'
  };

  UsersView.prototype.add_user = function() {
    var c, i, len, ref;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      if ((c.id == null) || c.id === 0) {
        return false;
      }
    }
    return this.collection.add({}, {
      at: 0
    });
  };

  UsersView.prototype.onShow = function() {
    this.$('.loading').show();
    this.$('.preamble').hide();
    return this.collection.fetch({
      success: (function(_this) {
        return function() {
          _this.$('.loading').hide();
          return _this.$('.preamble').show();
        };
      })(this),
      error: (function(_this) {
        return function() {
          debugger;
        };
      })(this)
    });
  };

  return UsersView;

})(Marionette.CompositeView);

module.exports = UsersView;

},{"../../../models/user_collection":22,"./user_view":49}],51:[function(require,module,exports){
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

},{}],52:[function(require,module,exports){
var LoginView, Marionette, Session, UIUtils,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UIUtils = require('../common/uiutils');

Session = require('../models/session');

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
    Session.auth({
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

},{"../common/uiutils":7,"../models/session":18}],53:[function(require,module,exports){
var Marionette, ReportsView, Session, UIUtils,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UIUtils = require('../common/uiutils');

Session = require('../models/session');

ReportsView = (function(superClass) {
  extend(ReportsView, superClass);

  function ReportsView() {
    return ReportsView.__super__.constructor.apply(this, arguments);
  }

  ReportsView.prototype.template = "reports";

  ReportsView.prototype.onShow = function() {
    return this.$('#reportViewer1').telerik_ReportViewer({
      serviceUrl: "http://testtelerik.iopsnow.com/api/reports/",
      templateUrl: '/ReportViewer/telerikReportViewerTemplate.html',
      reportSource: {
        report: "TelerikReportingREST.MyReportBook, TelerikReportingREST, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null"
      }
    });
  };

  ReportsView.prototype.onDomRefresh = function() {};

  return ReportsView;

})(Marionette.ItemView);

module.exports = ReportsView;

},{"../common/uiutils":7,"../models/session":18}],54:[function(require,module,exports){
var AlarmWidgetView, Marionette, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

AlarmWidgetView = (function(superClass) {
  extend(AlarmWidgetView, superClass);

  function AlarmWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return AlarmWidgetView.__super__.constructor.apply(this, arguments);
  }

  AlarmWidgetView.prototype.template = "widgets/alarm_widget";

  AlarmWidgetView.prototype.className = 'widget-outer box box-primary';

  AlarmWidgetView.prototype.ui = {
    gate: 'select#site',
    wtitle: "h3.box-title",
    display: '.display',
    content: '.content'
  };

  AlarmWidgetView.layout = {
    sx: 4,
    sy: 10
  };

  AlarmWidgetView.prototype.update = function() {
    var s;
    s = this.model.get("settings");
    this.alarm_binding = {
      alarmid: "alarm_" + this.model.id,
      showSearch: false,
      showHistory: false,
      filter: {
        alarmtypes: ["Digital", "High", "High High", "Low", "Low Low"]
      },
      columns: [
        {
          name: "AlarmDateTime",
          text: "Alarm Date/Time",
          type: "datetime",
          visible: true,
          sort: 'desc',
          width: '130px',
          searchable: false
        }, {
          name: "Active",
          text: "Active",
          type: "boolean",
          visible: true,
          width: '50px',
          align: 'center'
        }, {
          name: "AlarmValue",
          text: "Alarm Value",
          type: "string",
          visible: false,
          align: 'right'
        }, {
          name: "Text",
          text: "Text",
          type: "string",
          visible: true
        }, {
          name: "AlarmType",
          text: "Alarm Type",
          type: "string",
          visible: true
        }, {
          name: "Acked",
          text: "Acked",
          type: "boolean",
          visible: false
        }
      ]
    };
    return App.opc.add_alarm("OAS", this.alarm_binding);
  };

  AlarmWidgetView.prototype.data_update = function(data) {};

  AlarmWidgetView.prototype.set_model = function() {};

  AlarmWidgetView.prototype.toggle_settings = function(e) {
    return AlarmWidgetView.__super__.toggle_settings.call(this, e);
  };

  AlarmWidgetView.prototype.onShow = function() {
    var a;
    a = this.$(".display #alarm_" + this.model.id);
    if ((a == null) || a.length === 0) {
      a = $("<div id='alarm_" + this.model.id + "'></div>");
      return this.$('.display').append(a);
    }
  };

  AlarmWidgetView.prototype.start = function() {
    return this.update();
  };

  AlarmWidgetView.prototype.onDestroy = function(arg1, arg2) {};

  return AlarmWidgetView;

})(WidgetView);

window.AlarmWidgetView = AlarmWidgetView;

module.exports = AlarmWidgetView;

},{"../dashboard/widget_view":38}],55:[function(require,module,exports){
var Marionette, PbbWidgetView, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

PbbWidgetView = (function(superClass) {
  extend(PbbWidgetView, superClass);

  function PbbWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    this.set_descriptions = bind(this.set_descriptions, this);
    this.flash_alarm = bind(this.flash_alarm, this);
    this.data_q = bind(this.data_q, this);
    this.get_value = bind(this.get_value, this);
    this.get_bool = bind(this.get_bool, this);
    return PbbWidgetView.__super__.constructor.apply(this, arguments);
  }

  PbbWidgetView.prototype.template = "widgets/pbb_widget";

  PbbWidgetView.prototype.className = 'widget-outer box box-primary gate_widget';

  PbbWidgetView.prototype.ui = {
    terminal: 'input#terminal',
    zone: 'input#zone',
    display_prefix: 'input#display_prefix',
    gate: 'input#gate',
    site: 'select#site',
    wtitle: 'h3.box-title',
    display: '.display',
    content: '.content',
    docked: 'i#docked',
    alarms: 'i#alarms',
    warnings: 'i#warnings'
  };

  PbbWidgetView.layout = {
    sx: 4,
    sy: 9
  };

  PbbWidgetView.prototype.tags = {
    pbb_status: 'PBB.AIRCRAFTDOCKEDCALCULATION',
    pbb_aircraft: 'PBB.AIRCRAFTSTATUS',
    pbb_autolevel: 'PBB.AUTOLEVELMODEFLAG',
    pbb_canopy: 'PBB.Warning.CANOPYDOWN',
    pbb_acffloor: 'PBB.ACFFLOOR',
    pbb_cablehoist: 'PBB.HZ400CABLEDEPLOYED',
    pbb_estop: 'PBB.Alarm.E_STOP',
    pbb_limits: 'PBB.400HZ Pit',
    pbb_docktime: 'PBB.DOCKTIME',
    pbb_undocktime: 'PBB.UNDOCKTIME',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PbbWidgetView.prototype.modelEvents = {
    "change": "update"
  };

  PbbWidgetView.prototype.watch_updates = function(conn) {
    return App.vent.on("opc:data:" + conn, this.data_update);
  };

  PbbWidgetView.prototype.kill_updates = function(conn) {
    return App.vent.off("opc:data:" + conn, this.data_update);
  };

  PbbWidgetView.prototype.update = function() {
    var gate, lbl, s, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site_code = OPCManager.get_site_code(s.site);
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      OPCManager.rem_ref(this.site_code);
      gate = s.display_prefix != null ? "" + s.display_prefix + s.gate : '#{s.gate}';
      this.prefix = "RemoteSCADAHosting.Airport-" + this.site_code + ".Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      OPCManager.add_ref(this.site_code);
      lbl = "Gate " + gate;
      this.ui.wtitle.html(lbl);
      this.$('#gate_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  PbbWidgetView.prototype.get_bool = function(v) {
    if ((v != null) && v.toUpperCase() === "TRUE") {
      return true;
    } else if ((v != null) && v.toUpperCase() === "FALSE") {
      return false;
    }
    return null;
  };

  PbbWidgetView.prototype.get_value = function(tag) {
    return this.opc.get_value("" + this.prefix + tag + ".Value");
  };

  PbbWidgetView.prototype.mark_bad_data = function(tag, el) {
    var h, q;
    q = this.data_q(tag);
    h = !q ? 'BAD DATA' : $(el).html();
    return $(el).html(h).toggleClass("bad_data", !q);
  };

  PbbWidgetView.prototype.data_q = function(tag) {
    var c, t;
    c = App.opc.connections[this.site_code];
    t = c.tags["" + this.prefix + tag];
    return t.props.Value.quality;
  };

  PbbWidgetView.prototype.flash_alarm = function(fl) {
    var chg;
    if ((this.fl_interval != null) && !fl) {
      clearInterval(this.fl_interval);
      $(this.el).removeClass('alarm');
      this.fl_interval = null;
    }
    if (!this.fl_interval && fl) {
      chg = (function(_this) {
        return function() {
          return $(_this.el).toggleClass('alarm');
        };
      })(this);
      return this.fl_interval = setInterval(chg, 500);
    }
  };

  PbbWidgetView.prototype.set_descriptions = function(force) {
    var t, tds, tg, tlen;
    tds = [];
    tlen = Object.keys(this.tags).length;
    if (!force && (this.dcount != null) && this.dcount >= tlen) {
      return;
    }
    this.dcount = force ? 0 : this.dcount;
    if (this.dcount == null) {
      this.dcount = 0;
    }
    for (t in this.tags) {
      tg = this.tags[t];
      tds.push("" + this.prefix + tg + ".Description");
    }
    return this.opc.load_tags(tds, (function(_this) {
      return function(data) {
        var i, idx, len, ref, results, ts, tt, v;
        ref = data.tags;
        results = [];
        for (i = 0, len = ref.length; i < len; i++) {
          t = ref[i];
          results.push((function() {
            var ref1, results1;
            ref1 = this.tags;
            results1 = [];
            for (tt in ref1) {
              idx = ref1[tt];
              ts = this.tags[tt];
              if (("" + this.prefix + ts) === t.name) {
                v = t.props[0].val;
                this.$("#" + tt + "_lbl").html(v);
                this.dcount += 1;
                break;
              } else {
                results1.push(void 0);
              }
            }
            return results1;
          }).call(_this));
        }
        return results;
      };
    })(this));
  };

  PbbWidgetView.prototype.render_row = function(tag, tv, fv, tc, fc) {
    var el, txt, v;
    v = this.get_bool(this.vals[tag]);
    txt = v ? tv : fv;
    el = this.$("#" + tag).html(txt);
    if (tc != null) {
      el.toggleClass(tc, v);
    }
    if (fc != null) {
      el.toggleClass(fc, !v);
    }
    return this.mark_bad_data(this.tags[tag], el);
  };

  PbbWidgetView.prototype.data_update = function(data) {
    var aircraftstatus, docktime, el, tg, txt, undocktime, v;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    v = this.get_bool(this.vals.pbb_status);
    txt = v ? "Docked" : "Undocked";
    this.$("#pbb_docked_lbl").html('PBB Status');
    el = this.$("#pbb_docked").html(txt).toggleClass('ok', v);
    this.mark_bad_data(this.tags.pbb_status, el);
    this.render_row("pbb_status", "", "", "ok");
    aircraftstatus = this.vals['pbb_aircraft'];
    this.$('#pbb_status').html(aircraftstatus);
    this.render_row("pbb_autolevel", "On", "Off", "ok");
    this.render_row("pbb_canopy", "Down", "Up", "ok");
    this.render_row("pbb_acffloor", "On", "Off", "ok");
    this.render_row("pbb_estop", "Activated", "Ready/OK", "err");
    this.render_row("pbb_cablehoist", "Deployed", "Retracted", "ok");
    this.render_row("pbb_limits", "OK", "Active", "ok", "err");
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms));
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings));
    this.ui.docked.toggle(this.get_bool(this.vals.pbb_status));
    this.flash_alarm(this.get_bool(this.vals.pbb_autolevelfail));
    docktime = (this.vals.pbb_docktime != null) && this.vals.pbb_docktime !== '' ? parseFloat(this.vals.pbb_docktime).toFixed(4) : ' -- ';
    el = this.$('#pbb_docktime').html("" + docktime);
    this.mark_bad_data(this.tags.pbb_docktime, el);
    undocktime = (this.vals.pbb_undocktime != null) && this.vals.pbb_undocktime !== '' ? parseFloat(this.vals.pbb_undocktime).toFixed(4) : ' -- ';
    el = this.$('#pbb_undocktime').html("" + undocktime);
    this.mark_bad_data(this.tags.pbb_undocktime, el);
    return this.set_descriptions();
  };

  PbbWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.gate = this.ui.gate.val().trim();
    s.site = this.ui.site.val().trim();
    s.terminal = this.ui.terminal.val().trim();
    s.zone = this.ui.zone.val().trim();
    s.display_prefix = this.ui.display_prefix.val().trim();
    return this.model.set("settings", s);
  };

  PbbWidgetView.prototype.toggle_settings = function(e) {
    PbbWidgetView.__super__.toggle_settings.call(this, e);
    this.ui.display.toggle(!this.settings_visible);
    if (this.settings_visible) {
      return this.ui.site.chosen();
    }
  };

  PbbWidgetView.prototype.onShow = function() {
    var gate, ms, settings, site, site_code;
    this.ui.gate.on("change", this.set_model);
    this.ui.site.on("change", this.set_model);
    this.ui.terminal.on("change", this.set_model);
    this.ui.zone.on("change", this.set_model);
    this.ui.display_prefix.on("change", this.set_model);
    settings = this.model.get('settings');
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    site = settings.site;
    site_code = OPCManager.get_site_code(site);
    if (site_code != null) {
      OPCManager.add_ref(site_code);
    }
    ms = this.model.get('settings');
    if ((ms != null) && (ms.site != null)) {
      return this.ui.site.val(ms.site);
    }
  };

  PbbWidgetView.prototype.start = function() {
    return this.update();
  };

  PbbWidgetView.prototype.onDestroy = function(arg1, arg2) {
    this.kill_updates(this.site_code);
    return OPCManager.rem_ref(this.site_code);
  };

  return PbbWidgetView;

})(WidgetView);

window.PbbWidgetView = PbbWidgetView;

module.exports = PbbWidgetView;

},{"../dashboard/widget_view":38}],56:[function(require,module,exports){
var Marionette, PcaWidgetView, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

PcaWidgetView = (function(superClass) {
  extend(PcaWidgetView, superClass);

  function PcaWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    this.set_descriptions = bind(this.set_descriptions, this);
    this.flash_alarm = bind(this.flash_alarm, this);
    this.data_q = bind(this.data_q, this);
    this.get_value = bind(this.get_value, this);
    this.get_bool = bind(this.get_bool, this);
    return PcaWidgetView.__super__.constructor.apply(this, arguments);
  }

  PcaWidgetView.prototype.template = "widgets/pca_widget";

  PcaWidgetView.prototype.className = 'widget-outer box box-primary gate_widget';

  PcaWidgetView.prototype.ui = {
    terminal: 'input#terminal',
    zone: 'input#zone',
    display_prefix: 'input#display_prefix',
    gate: 'input#gate',
    site: 'select#site',
    wtitle: 'h3.box-title',
    display: '.display',
    content: '.content',
    docked: 'i#docked',
    alarms: 'i#alarms',
    warnings: 'i#warnings'
  };

  PcaWidgetView.layout = {
    sx: 4,
    sy: 9
  };

  PcaWidgetView.prototype.tags = {
    pbb_status: 'PBB.AIRCRAFTDOCKEDCALCULATION',
    pbb_aircraft: 'PBB.AIRCRAFTSTATUS',
    pca_status: 'PCA.PCAON',
    gpu_status: 'GPU.GPUSTATUS',
    pbb_docktime: 'PBB.DOCKTIME',
    pbb_ontime: 'PBB.PBBTIMER',
    pca_ontime: 'PCA.PCATIMER',
    gpu_ontime: 'GPU.GPUTIMER',
    pca_dischargetemp: 'PCA.TEMPDISCH',
    gpu_outputamps: 'GPU.RAOUTAVG',
    gpu_outputvolts: 'GPU.RVOUTAVG',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PcaWidgetView.prototype.modelEvents = {
    "change": "update"
  };

  PcaWidgetView.prototype.watch_updates = function(conn) {
    return App.vent.on("opc:data:" + conn, this.data_update);
  };

  PcaWidgetView.prototype.kill_updates = function(conn) {
    return App.vent.off("opc:data:" + conn, this.data_update);
  };

  PcaWidgetView.prototype.update = function() {
    var gate, lbl, s, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site_code = OPCManager.get_site_code(s.site);
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      OPCManager.rem_ref(this.site_code);
      gate = s.display_prefix != null ? "" + s.display_prefix + s.gate : '#{s.gate}';
      this.prefix = "RemoteSCADAHosting.Airport-" + this.site_code + ".Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      OPCManager.add_ref(this.site_code);
      lbl = "Gate " + gate;
      this.ui.wtitle.html(lbl);
      this.$('#gate_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  PcaWidgetView.prototype.get_bool = function(v) {
    if ((v != null) && v.toUpperCase() === "TRUE") {
      return true;
    } else if ((v != null) && v.toUpperCase() === "FALSE") {
      return false;
    }
    return null;
  };

  PcaWidgetView.prototype.get_value = function(tag) {
    return this.opc.get_value("" + this.prefix + tag + ".Value");
  };

  PcaWidgetView.prototype.mark_bad_data = function(tag, el) {
    var h, q;
    q = this.data_q(tag);
    h = !q ? 'BAD DATA' : $(el).html();
    return $(el).html(h).toggleClass("bad_data", !q);
  };

  PcaWidgetView.prototype.data_q = function(tag) {
    var c, t;
    c = App.opc.connections[this.site_code];
    t = c.tags["" + this.prefix + tag];
    return t.props.Value.quality;
  };

  PcaWidgetView.prototype.flash_alarm = function(fl) {
    var chg;
    if ((this.fl_interval != null) && !fl) {
      clearInterval(this.fl_interval);
      $(this.el).removeClass('alarm');
      this.fl_interval = null;
    }
    if (!this.fl_interval && fl) {
      chg = (function(_this) {
        return function() {
          return $(_this.el).toggleClass('alarm');
        };
      })(this);
      return this.fl_interval = setInterval(chg, 500);
    }
  };

  PcaWidgetView.prototype.set_descriptions = function(force) {
    var t, tds, tg, tlen;
    tds = [];
    tlen = Object.keys(this.tags).length;
    if (!force && (this.dcount != null) && this.dcount >= tlen) {
      return;
    }
    this.dcount = force ? 0 : this.dcount;
    if (this.dcount == null) {
      this.dcount = 0;
    }
    for (t in this.tags) {
      tg = this.tags[t];
      tds.push("" + this.prefix + tg + ".Description");
    }
    return this.opc.load_tags(tds, (function(_this) {
      return function(data) {
        var i, idx, len, ref, results, ts, tt, v;
        ref = data.tags;
        results = [];
        for (i = 0, len = ref.length; i < len; i++) {
          t = ref[i];
          results.push((function() {
            var ref1, results1;
            ref1 = this.tags;
            results1 = [];
            for (tt in ref1) {
              idx = ref1[tt];
              ts = this.tags[tt];
              if (("" + this.prefix + ts) === t.name) {
                v = t.props[0].val;
                this.$("#" + tt + "_lbl").html(v);
                this.dcount += 1;
                break;
              } else {
                results1.push(void 0);
              }
            }
            return results1;
          }).call(_this));
        }
        return results;
      };
    })(this));
  };

  PcaWidgetView.prototype.render_row = function(tag, tv, fv, tc, fc) {
    var el, txt, v;
    v = this.get_bool(this.vals[tag]);
    txt = v ? tv : fv;
    el = this.$("#" + tag).html(txt);
    if (tc != null) {
      el.toggleClass(tc, v);
    }
    if (fc != null) {
      el.toggleClass(fc, !v);
    }
    return this.mark_bad_data(this.tags[tag], el);
  };

  PcaWidgetView.prototype.render_value_row = function(tag, IsNumeric, percision, suffix) {
    var el, set_value;
    if ((this.vals[tag] != null) && this.vals[tag] !== '') {
      set_value = IsNumeric ? parseFloat(this.vals[tag]).toFixed(percision) : this.vals[tag];
    } else {
      set_value = ' -- ';
    }
    suffix = suffix != null ? " " + suffix : "";
    el = this.$("#" + tag).html("" + set_value + suffix);
    return this.mark_bad_data(this.tags[tag], el);
  };

  PcaWidgetView.prototype.data_update = function(data) {
    var aircraftstatus, el, tg, txt, v;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    v = this.get_bool(this.vals.pbb_status);
    txt = v ? "Docked" : "Undocked";
    this.$("#pbb_docked_lbl").html('PBB Status');
    el = this.$("#pbb_docked").html(txt).toggleClass('ok', v);
    this.mark_bad_data(this.tags.pbb_status, el);
    this.render_row("pbb_status", "", "", "ok");
    aircraftstatus = this.vals['pbb_aircraft'];
    this.$('#pbb_status').html(aircraftstatus);
    this.render_row("pca_status", "On", "Off", "ok", "err");
    this.render_row("gpu_status", "On", "Off", "ok", "err");
    this.render_value_row("pbb_docktime", true, 4);
    this.render_value_row("pbb_ontime", true, 1, "min");
    this.render_value_row("pca_ontime", true, 1, "min");
    this.render_value_row("gpu_ontime", true, 1, "min");
    this.render_value_row("pca_dischargetemp", true, 0, "Deg");
    this.render_value_row("gpu_outputamps", true, 0, "Amps");
    this.render_value_row("gpu_outputvolts", true, 0, "Volts");
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms));
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings));
    this.ui.docked.toggle(this.get_bool(this.vals.pbb_status));
    this.flash_alarm(this.get_bool(this.vals.pbb_autolevelfail));
    return this.set_descriptions();
  };

  PcaWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.gate = this.ui.gate.val().trim();
    s.site = this.ui.site.val().trim();
    s.terminal = this.ui.terminal.val().trim();
    s.zone = this.ui.zone.val().trim();
    s.display_prefix = this.ui.display_prefix.val().trim();
    return this.model.set("settings", s);
  };

  PcaWidgetView.prototype.toggle_settings = function(e) {
    PcaWidgetView.__super__.toggle_settings.call(this, e);
    this.ui.display.toggle(!this.settings_visible);
    if (this.settings_visible) {
      return this.ui.site.chosen();
    }
  };

  PcaWidgetView.prototype.onShow = function() {
    var gate, ms, settings, site, site_code;
    this.ui.gate.on("change", this.set_model);
    this.ui.site.on("change", this.set_model);
    this.ui.terminal.on("change", this.set_model);
    this.ui.zone.on("change", this.set_model);
    this.ui.display_prefix.on("change", this.set_model);
    settings = this.model.get('settings');
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    site = settings.site;
    site_code = OPCManager.get_site_code(site);
    if (site_code != null) {
      OPCManager.add_ref(site_code);
    }
    ms = this.model.get('settings');
    if ((ms != null) && (ms.site != null)) {
      return this.ui.site.val(ms.site);
    }
  };

  PcaWidgetView.prototype.start = function() {
    return this.update();
  };

  PcaWidgetView.prototype.onDestroy = function(arg1, arg2) {
    this.kill_updates(this.site_code);
    return OPCManager.rem_ref(this.site_code);
  };

  return PcaWidgetView;

})(WidgetView);

window.PcaWidgetView = PcaWidgetView;

module.exports = PcaWidgetView;

},{"../dashboard/widget_view":38}],57:[function(require,module,exports){
var Marionette, UrlWidgetView, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

UrlWidgetView = (function(superClass) {
  extend(UrlWidgetView, superClass);

  function UrlWidgetView() {
    this.set_model = bind(this.set_model, this);
    return UrlWidgetView.__super__.constructor.apply(this, arguments);
  }

  UrlWidgetView.prototype.template = "widgets/url_widget";

  UrlWidgetView.prototype.className = 'widget-outer box box-primary';

  UrlWidgetView.prototype.ui = {
    iframe: 'iframe#iframe',
    title: 'input#title',
    url: 'input#url',
    wtitle: "h3.box-title"
  };

  UrlWidgetView.prototype.modelEvents = {
    "change": "update"
  };

  UrlWidgetView.layout = {
    sx: 4,
    sy: 10
  };

  UrlWidgetView.prototype.update = function() {
    var s;
    s = this.model.get("settings");
    this.ui.iframe.attr("src", s.url);
    return this.ui.wtitle.html("<i class='fa fa-link'></i> " + s.name);
  };

  UrlWidgetView.prototype.set_model = function() {
    var s, url;
    s = _.clone(this.model.get("settings"));
    url = this.ui.url.val().trim();
    if (url.indexOf("http://") === -1 || url.indexOf("https://") === -1) {
      url = "http://" + url;
    }
    s.url = url;
    s.name = this.ui.title.val();
    return this.model.set("settings", s);
  };

  UrlWidgetView.prototype.toggle_settings = function(e) {
    UrlWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.iframe.toggle(!this.settings_visible);
  };

  UrlWidgetView.prototype.onShow = function() {
    var url;
    this.ui.title.on("change", (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    this.ui.url.on("change", (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    url = this.model.get("settings").url;
    if ((url == null) || url === '') {
      return this.toggle_settings();
    }
  };

  UrlWidgetView.prototype.start = function() {
    return this.update();
  };

  return UrlWidgetView;

})(WidgetView);

window.UrlWidgetView = UrlWidgetView;

module.exports = UrlWidgetView;

},{"../dashboard/widget_view":38}],58:[function(require,module,exports){
var Marionette, WeatherWidgetView, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

WeatherWidgetView = (function(superClass) {
  extend(WeatherWidgetView, superClass);

  function WeatherWidgetView() {
    this.set_model = bind(this.set_model, this);
    return WeatherWidgetView.__super__.constructor.apply(this, arguments);
  }

  WeatherWidgetView.prototype.template = "widgets/weather_widget";

  WeatherWidgetView.prototype.className = 'widget-outer box box-primary';

  WeatherWidgetView.prototype.ui = {
    display: '#display',
    title: 'input#title',
    zip: 'input#zip',
    wtitle: "h3.box-title"
  };

  WeatherWidgetView.prototype.modelEvents = {
    "change": "update"
  };

  WeatherWidgetView.layout = {
    sx: 3,
    sy: 8
  };

  WeatherWidgetView.prototype.update = function() {
    var city, img, parts, s, state;
    s = this.model.get("settings");
    state = "";
    if ((s.name != null) && s.name !== '') {
      parts = s.name.split(',');
      if ((parts != null) && parts.length > 0) {
        state = parts[parts.length - 1].trim();
        city = parts[0].trim();
      }
    }
    img = "<span style=\"display: block !important; width: 100%; text-align: center; font-family: sans-serif; font-size: 12px;\">\n  <a href=\"http://www.wunderground.com/cgi-bin/findweather/getForecast?query=zmw:" + s.zip + ".1.99999&bannertypeclick=wu_travel_jet1\" target=\"_blank\">\n  <img src=\"http://weathersticker.wunderground.com/weathersticker/cgi-bin/banner/ban/wxBanner?bannertype=wu_travel_jet1&airportcode=CID&ForcedCity=" + city + "&ForcedState=" + state + "&zip=" + s.zip + "&language=EN\" \n    alt=\"Find more about Weather\" style='width:100%;' />\n  </a>\n</span>";
    this.ui.display.html(img);
    return this.ui.wtitle.html("" + s.name);
  };

  WeatherWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.zip = this.ui.zip.val().trim();
    s.name = this.ui.title.val();
    return this.model.set("settings", s);
  };

  WeatherWidgetView.prototype.toggle_settings = function(e) {
    WeatherWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  WeatherWidgetView.prototype.onShow = function() {
    var zip;
    this.ui.title.on("change", (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    this.ui.zip.on("change", (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    zip = this.model.get("settings").zip;
    if ((zip == null) || zip === '') {
      return this.toggle_settings();
    }
  };

  WeatherWidgetView.prototype.start = function() {
    return this.update();
  };

  return WeatherWidgetView;

})(WidgetView);

window.WeatherWidgetView = WeatherWidgetView;

module.exports = WeatherWidgetView;

},{"../dashboard/widget_view":38}]},{},[1])
;