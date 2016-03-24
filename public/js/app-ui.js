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
        value: this.name
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
      _print(_safe('<!-- Logo -->\n<a href="/" class="logo">\n  <span class="logo-mini"><img src=\'img/logos/logo_square.png\'/></span>\n  <span class="logo-lg"><img src=\'img/logos/logo_wide.png\'/></span>\n</a>\n\n<!-- Header Navbar -->\n<nav class="navbar navbar-static-top" role="navigation">\n  <!-- Sidebar toggle button-->\n  <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">\n    <span class="sr-only">Toggle navigation</span>\n  </a>\n  <!-- Navbar Right Menu -->\n  <div class="navbar-custom-menu">\n    <ul class="nav navbar-nav">\n      <li id=\'systemclock\' class=\'user user-menu\'>\n        <div style=\'padding:15px\' id=\'clock\'>--, --- ---, ---- 00:00</div>\n      </li>\n      <!-- User Account Menu -->\n      <li id = \'profilemenu\' class="dropdown user user-menu">\n        <!-- Menu Toggle Button -->\n        <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n          <!-- The user image in the navbar-->\n          <img src="img/avatar.png" class="user-image" id=\'avatar\'/>\n          <!-- hidden-xs hides the username on small devices so only the image appears. -->\n          <span class="hidden-xs" id=\'fullname\'>'));
    
      _print(this.fullName());
    
      _print(_safe('</span>\n        </a>\n        <ul class="dropdown-menu">\n          <!-- The user image in the menu -->\n          <li class="user-header">\n            <img src="img/avatar.png" class="img-circle" id=\'avatar_full\' />\n            <p>\n              <span id=\'fullName_full\'>'));
    
      _print(this.fullName());
    
      _print(_safe('</span> <small id=\'email_full\'>'));
    
      _print(this.email);
    
      _print(_safe('</small>\n            </p>\n          </li>\n          <!-- Menu Body -->\n          <!-- <li class="user-body"></li> -->\n          <!-- Menu Footer-->\n          <li class="user-footer">\n            <div class="pull-left">\n              <a href="#" class="btn btn-default btn-flat" id=\'profile\'>Profile</a>\n            </div>\n            <div class="pull-right">\n              <a href="#" class="btn btn-default btn-flat" id=\'logout\'>Log Out</a>\n            </div>\n          </li>\n        </ul>\n      </li>\n      <!-- Control Sidebar Toggle Button -->\n      <li id=\'toolsmenu\'>\n        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>\n      </li>\n    </ul>\n  </div>\n</nav>'));
    
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
      _print(_safe('<div class="modal-dialog">\n  <div class="modal-content">\n    <div class="modal-header">\n      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\n      <h4 class="modal-title">Add a Widget</h4>\n      Select a widget below to add to the current dashboard.\n    </div>\n    <div class="modal-body">\n      <div id=\'widget_selections\'>\n        \n      </div>\n    </div>\n    <div class="modal-footer">\n      <button type="button" id=\'modal_cancel\' class="btn btn-outline pull-left" data-dismiss="modal">CANCEL</button>\n    </div>\n  </div><!-- /.modal-content -->\n</div><!-- /.modal-dialog -->\n'));
    
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
    
      _print(_safe('\' size=\'5\' placeholder=\'Rate\'/>\n    <i>&nbsp;sec.</i>\n  </div>\n  <div>\n    <span id="site_cloud_label" class=\'label left\'>Cloud Data</span>\n    <i id=\'site_cloud\' class="fa fa-fw"></i>\n  </div>\n  <div class=\'edit\'>\n    <i id=\'site_zones_label\' class=\'label left\'>Terminals, Zones, Gates:</i><br/>\n    <textarea id=\'site_zones\' rows="10" cols="40" placeholder=\'{&#10;&nbsp;&nbsp;"1" : {&#10;&nbsp;&nbsp;&nbsp;&nbsp;"1" : {"C1" : {}, "C2" : {}}&#10;&nbsp;&nbsp;}&#10;}\'></textarea>\n  </div>\n\n  <div id=\'site_buttons\' class=\'edit\'>\n    <button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n  </div>\n</div>\n'));
    
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
    
      _print(_safe('\' size=\'50\' placeholder=\'Permission Name\'/>\n\n  <span id=\'permission_crud\' class=\'crud_container\'>\n    <span class=\'crud\' id=\'edit_permission\'><i class="fa fa-pencil-square" title=\'Edit Permission\'></i></span>\n    <span class=\'crud\' id=\'delete_permission\'><i class="fa fa-times-circle" title=\'Delete Permission\'></i></span>\n  </span>\n  \n  <span id=\'permission_buttons\'>\n    <button class="btn btn-xs" id=\'cancel\' tabindex=-1><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\' tabindex=-1><i class="fa fa-check-square"></i> SAVE</button>\n  </span>\n</div>\n\n<div class="col-md-12" id=\'permission_desc_container\'>\n  <span id=\'permission_desc_label\'><i>'));
    
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
        _print(this.code);
        _print(_safe(')</h4>\n  '));
      }
    
      _print(_safe('\n  <span id="add_claim"><i class=\'fa fa-plus-square\'></i> Add New Permission</span>\n</div>\n<div id=\'permissions_list\'></div>\n'));
    
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
    
      _print(_safe('\' size=\'50\' placeholder=\'Role Name\'/>\n\n  <span id=\'role_crud\' class=\'crud_container\'>\n    <span class=\'crud\' id=\'edit_role\'><i class="fa fa-pencil-square" title=\'Edit Role\'></i></span>\n    <span class=\'crud\' id=\'delete_role\'><i class="fa fa-times-circle" title=\'Delete Role\'></i></span>\n  </span>\n  <span id=\'role_buttons\'>\n    <button class="btn btn-xs" id=\'cancel\' tabindex=-1><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\' tabindex=-1><i class="fa fa-check-square"></i> SAVE</button>\n  </span>\n</div>\n<div class="col-md-12" id=\'role_desc_container\'>\n  <span id=\'role_desc_label\'><i>'));
    
      _print(this.description);
    
      _print(_safe('</i></span>\n  <input type=\'text\' id=\'role_desc\' value=\''));
    
      _print(_safe(this.description));
    
      _print(_safe('\' size=\'50\' placeholder=\'Role Description\'/>\n</div>\n<div class="col-md-12" id=\'role_claims_container\'>\n  '));
    
      _print(_safe(this.claimSelector({
        id: 'role_claims',
        label: 'Permissions',
        value: this.claims,
        site_id: this.siteId
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
        _print(this.code);
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
      _print(_safe('<div id=\'global_region\'>\n  <div class="loading"><i class="fa fa-spinner fa-pulse"></i> LOADING...</div>\n</div>'));
    
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
    
      _print(this.lastName + ", " + this.firstName);
    
      _print(_safe(' <small>('));
    
      _print(this.email);
    
      _print(_safe(')</small></span>\n    <span class=\'crud\' id=\'edit_user\'><i class="fa fa-pencil-square" title=\'Edit User\'></i></span>\n    <span class=\'crud\' id=\'delete_user\'><i class="fa fa-times-circle" title=\'Delete User\'></i></span>\n  </span>\n</div>\n<div class=\'edit\'>\n  <div class="row">\n    '));
    
      _print(_safe(this.formGroup({
        id: 'email',
        type: 'email',
        placeholder: 'Email',
        cls: 'col-sm-12',
        label: 'Email Address',
        value: this.email
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'firstName',
        type: 'text',
        placeholder: 'First Name',
        cls: 'col-sm-6',
        label: 'Name',
        value: this.firstName
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'lastName',
        type: 'text',
        placeholder: 'Last Name',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.lastName
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'phone1',
        type: 'text',
        placeholder: 'Primary Phone',
        cls: 'col-sm-6',
        label: 'Phone Numbers',
        value: this.phone1
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'phone2',
        type: 'text',
        placeholder: 'Secondary Phone',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.phone2
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'password',
        type: 'password',
        placeholder: 'new password',
        cls: 'col-sm-6',
        label: 'Reset Password'
      })));
    
      _print(_safe('\n    '));
    
      _print(_safe(this.formGroup({
        id: 'password_confirmation',
        type: 'password',
        placeholder: 'confirm new password',
        cls: 'col-sm-6',
        label: '&nbsp;'
      })));
    
      _print(_safe('\n  </div>\n\n  <div class="row">\n  <h3 class=\'account_name col-md-12\'><i class="fa fa-fw fa-globe"></i>Global Roles</h3>\n  '));
    
      _print(_safe(this.roleSelector({
        id: 'roles_global',
        label: null,
        value: this.roles,
        site_id: null,
        cls: 'col-md-12'
      })));
    
      _print(_safe('\n  </div>\n\n  <div class="row">\n  '));
    
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
            label: (s.get('name')) + " (" + (s.get('code')) + ")",
            value: this.roles,
            site_id: s.id,
            cls: 'col-md-12 roleselect'
          })));
          _print(_safe('\n  '));
        }
        _print(_safe('\n    </div>\n  '));
      }
    
      _print(_safe('\n  </div>\n\n  <span id=\'user_buttons\'>\n    <button class="btn btn-xs" id=\'cancel\'><i class="fa fa-ban"></i> CANCEL</button>\n    <button class="btn btn-xs btn-success" id=\'save\'><i class="fa fa-check-square"></i> SAVE</button>\n  </span>\n</div>'));
    
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
window.JST["forms/manage_permissions/users_layout"] = function(__obj) {
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
      _print(_safe('<div class="loading"><i class="fa fa-spinner fa-pulse"></i> LOADING...</div>\n<div class="preamble">\n  <span id="add_user" class=\'button\'><i class=\'fa fa-plus-square\'></i> Add New User</span>\n  <input id=\'filter\' type=\'text\' placeholder=\'search users\' class=\'pull-right\'></input>\n</div>\n<div id=\'users_region\'></div>\n'));
    
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
      _print(_safe('<div class="container">\n\t<div class="row">\n\t\t<!-- <div class="col-xs-12 col-sm-4" style=\'border-right:solid 1px #ccc;\'>\n\t\t\t<div style=\'border:solid 1px #ccc;width:200px;height:200px\'></div>\n\t\t</div> -->\n\n\t\t<div class="col-xs-12 col-sm-8">\n\t\t\t\n\t\t\t<div id="alertContainer"></div>\n\n\t\t\t'));
    
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
        id: 'firstName',
        type: 'text',
        placeholder: 'First Name',
        cls: 'col-sm-6',
        label: 'Name',
        value: this.firstName
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'lastName',
        type: 'text',
        placeholder: 'Last Name',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.lastName
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'phone1',
        type: 'text',
        placeholder: 'Primary Phone',
        cls: 'col-sm-6',
        label: 'Phone Numbers',
        value: this.settings.phone1
      })));
    
      _print(_safe('\n\t\t\t'));
    
      _print(_safe(this.formGroup({
        id: 'phone2',
        type: 'text',
        placeholder: 'Secondary Phone',
        cls: 'col-sm-6',
        label: '&nbsp;',
        value: this.settings.phone2
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
    
      _print(_safe('\n\t\t\t<div class="col-xs-12"><button class="save btn btn-primary">SAVE PROFILE</button></div>\n\t\t\t\n\t\t</div>\n\t</div>\n</div>'));
    
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
      _print(_safe('<div class="box-body" id="alert-container">\n</div>\n<div class="login-box">\n  <div class="login-logo"><img src=\'img/logos/logo_login.png\'/></div>\n  <div class="login-box-body">\n\n    <form id="loginform" action="#" method="post">\n      <p class="login-box-msg">Sign in to start your session</p>\n      '));
    
      _print(_safe(this.formGroup({
        id: 'email',
        type: 'email',
        feedback: 'envelope',
        placeholder: 'Email'
      })));
    
      _print(_safe('\n      '));
    
      _print(_safe(this.formGroup({
        id: 'password',
        type: 'password',
        feedback: 'lock',
        placeholder: 'Password'
      })));
    
      _print(_safe('\n      <div class="row">\n        <div class="col-xs-8">\n          <a href="#" id=\'iforgot\'>I forgot my password</a>\n          <!-- <div class="checkbox icheck">\n            <label>\n              <input type="checkbox" id=\'remember\' name=\'remember\'> Remember Me\n            </label>\n          </div> -->\n        </div>\n        <div class="col-xs-4">\n          <button type="submit" class="btn btn-primary btn-block btn-flat" id=\'login\' name=\'login\'>Log In</button>\n        </div>\n      </div>\n    </form>\n\n    <form id="forgotform" style=\'display:none;\' action="#" method="post">\n      <p class="login-box-msg">Enter account email to reset password</p>\n      '));
    
      _print(_safe(this.formGroup({
        id: 'forgotemail',
        type: 'email',
        feedback: 'envelope',
        placeholder: 'Email'
      })));
    
      _print(_safe('\n      <div class="row">\n        <div class="col-xs-4">\n          <a id="cancel" href="#">Cancel</a>\n        </div>\n        <div class="col-xs-8">\n          <button class="btn btn-primary btn-block btn-flat" id=\'reset\' name=\'reset\'>Reset Password</button>\n        </div>\n      </div>\n    </form>\n\n    <div id="forgotreply" style=\'display:none;\'>\n      <div class="row">\n        <div class="col-xs-12">\n          A message has been sent to the email you provided with a new password. Please check your\n        </div>\n      </div>\n    </div>\n\n  </div>\n</div>\n\n'));
    
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
window.JST["widgets/airport_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-road"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="display_label">\n      <h1><span id=\'txt\'></span></h1>\n    </div>\n    <div id="key">\n      <div class="key_row"><i class="fa fa-fw fa-plane"></i> Airplane at Gate</div>\n      <div class="key_row"><i class="fa fa-fw fa-warning alarm"></i> Critical Alarm</div>\n      <div class="key_row"><i class="fa fa-fw fa-warning warning"></i> Alarm</div>\n      <div class="key_row"><i class="fa fa-fw fa-check-circle-o perfect"></i> Perfect Hookup</div>\n      <div class="key_row"><i class="fa fa-fw fa-wrench alarm"></i> Out of Service</div>\n    </div>\n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n  </div>\n\n</div>\n'));
    
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-bullhorn"></i> <h3 class="box-title">Alarms</h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div><!-- /.box-header -->\n<div class="box-body content" id=\'content\'>\n  <div class="display contain">\n    <h3 id=\'alarm_lbl\'></h3>\n  </div>\n  \n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'all_gates_container\' class=\'col-md-12\'>\n        <div class="form-group" for=\'allgates\'>\n          <label>ALL Gates</label>\n          <input type="checkbox" id="allgates"></input>\n        </div>        \n      </div>  \n    </div>\n    <div class="row gates">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row gates">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row gates">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n    <div class=\'row\'>\n      <div class="col-md-12">\n        <div class="form-group" for=\'type\'>\n          <label>Type</label>\n          <select id=\'type\'>\n            <option value=\'all\'>All Types</option>\n            <option value=\'PBB\'>PBB</option>\n            <option value=\'PCA\'>PCA</option>\n            <option value=\'GPU\'>GPU</option>\n          </select>\n        </div>\n      </div>\n    </div>\n    <div class="row">\n      <div class="col-md-12">\n        <div class="form-group" for=\'priority\'>\n          <label>Priority</label>\n          <span class=\'group_item\'>\n            <input type="radio" id="p_alarms" name="priority" value="alarms" checked> Alarms\n          </span>\n          <span class=\'group_item\'>\n            <input type="radio" id="p_notifications" name="priority" value="notifications"> Notifications\n          </span>\n          <span class=\'group_item\'>\n            <input type="radio" id="p_all" name="priority" value="all"> All\n          </span>\n        </div>\n      </div>\n    </div>\n  </div>\n  \n</div><!-- /.box-body -->\n'));
    
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
window.JST["widgets/config_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-gear"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div><!-- /.box-header -->\n<div class="box-body content">\n  <div id=\'display\' class=\'display\'>\n    <b style=\'margin-bottom:10px;\'>PCA SET POINTS</b>\n    <div><b style=\'color:#cc6666;\'>Heat:</b> <input type=\'text\' style=\'width:50px;text-align:right;\' id=\'heat_set\'>°</div>\n    <div><b style=\'color:#cc6666;\'>Time:</b> <input type=\'text\' style=\'width:50px;text-align:right;\' id=\'heat_set_tm\'>min.</div>\n    <div><b style=\'color:#6666cc;\'>Cool:</b> <input type=\'text\' style=\'width:50px;text-align:right;\' id=\'cool_set\'>°</div>\n    <div><b style=\'color:#6666cc;\'>Time:</b> <input type=\'text\' style=\'width:50px;text-align:right;\' id=\'cool_set_tm\'>min.</div>\n    <div style=\'margin:10px 0;\'><button id=\'set_pca_points\'>UPDATE CONFIGURATION</button></div>\n  </div>\n  <div id="settings" class=\'settings\' style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n  </div><!-- /.box-body -->\n</div><!-- /.box-body -->\n'));
    
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
window.JST["widgets/gpu_summary_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'>\n    <i class="fa fa-flash"></i> <h3 class="box-title"></h3>\n    <select id="mode" style=\'display:none;\'>\n      <option value=\'\'>Summary</option>\n      <option value=\'vin\'>Input Voltage</option>\n      <option value=\'vout\'>Output Voltage</option>\n      <option value=\'aout\'>Output Amperage</option>\n    </select>\n  </div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="gpu_summary_label">\n      <h1>\n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <div id="view_main">\n      <div id="gpu_image"></div>\n      <div id="power_indicator"></div>\n      <div id="txt_connected_time"></div>\n    </div>\n    <div id="plots" style="display: none;">\n      <table id=\'plot_container\' border="0">\n        <tr>\n          <td id=\'options\'>\n            <div id=\'ptype_lbl\'></div>\n\n            <div id=\'live_container\'>\n              <label>Live Data</label>\n              <input id=\'live_data\' type="checkbox" data-toggle="toggle" >\n            </div>\n            \n            <div id="phases">\n              <a id="phase_a" class=\'plot_type\' href="#">Phase A</a>\n              <a id="phase_b" class=\'plot_type\' href="#">Phase B</a>\n              <a id="phase_c" class=\'plot_type\' href="#">Phase C</a>\n            </div>\n\n          </td>\n          <td id=\'plot_data\'></td>\n        </tr>\n      </table>\n    </div>\n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/gpu_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-battery-3"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="display_label">\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table class=\'data\'>\n      <tr><td class=\'lbl\' id=\'gpu_gpustatus_lbl\'>&nbsp;</td><td id=\'gpu_gpustatus\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_bypass_lbl\'>&nbsp;</td><td id=\'gpu_bypass\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_raoutavg_lbl\'>&nbsp;</td><td id=\'gpu_raoutavg\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_rvoutavg_lbl\'>&nbsp;</td><td id=\'gpu_rvoutavg\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_ravinavg_lbl\'>&nbsp;</td><td id=\'gpu_ravinavg\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_rvinavg_lbl\'>&nbsp;</td><td id=\'gpu_rvinavg\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_output_phasea_i_lbl\'>&nbsp;</td><td id=\'gpu_pm_output_phasea_i\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_output_phaseb_i_lbl\'>&nbsp;</td><td id=\'gpu_pm_output_phaseb_i\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_output_phasec_i_lbl\'>&nbsp;</td><td id=\'gpu_pm_output_phasec_i\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_output_phasea_v_lbl\'>&nbsp;</td><td id=\'gpu_pm_output_phasea_v\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_output_phaseb_v_lbl\'>&nbsp;</td><td id=\'gpu_pm_output_phaseb_v\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_output_phasec_v_lbl\'>&nbsp;</td><td id=\'gpu_pm_output_phasec_v\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_input_phasea_i_lbl\'>&nbsp;</td><td id=\'gpu_pm_input_phasea_i\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_input_phaseb_i_lbl\'>&nbsp;</td><td id=\'gpu_pm_input_phaseb_i\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_input_phasec_i_lbl\'>&nbsp;</td><td id=\'gpu_pm_input_phasec_i\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_input_phasea_v_lbl\'>&nbsp;</td><td id=\'gpu_pm_input_phasea_v\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_input_phaseb_v_lbl\'>&nbsp;</td><td id=\'gpu_pm_input_phaseb_v\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_pm_input_phasec_v_lbl\'>&nbsp;</td><td id=\'gpu_pm_input_phasec_v\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_on_1_lbl\'>&nbsp;</td><td id=\'gpu_on_1\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_on_2_lbl\'>&nbsp;</td><td id=\'gpu_on_2\' class=\'val\'>LOADING...</td></tr>\n    </table>\n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/pbb_pca_gpu_basic_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-plane"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div>\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table style="float: left; width:4%"><tr><td>&nbsp;</td></tr></table>\n    <table class=\'data\' style="float: left; width:92%"> \n      <tr><td class=\'lbl\' id=\'pbb_statused_lbl\'>&nbsp;</td><td id=\'pbb_status\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_pcastatus_lbl\'>&nbsp;</td><td id=\'pca_pcastatus\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_gpustatus_lbl\'>&nbsp;</td><td id=\'gpu_gpustatus\' class=\'val\'>LOADING...</td></tr> \n      <tr><td class=\'lbl\' id=\'pbb_dockedtime_lbl\'>&nbsp;</td><td id=\'pbb_docktime\' class=\'val\'>LOADING...</td></tr> \n      <tr><td class=\'lbl\' id=\'pbb_hookup_lbl\'>&nbsp;</td><td id=\'pbb_hookup\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_hookup_lbl\'>&nbsp;</td><td id=\'pca_hookup\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_hookup_lbl\'>&nbsp;</td><td id=\'gpu_hookup\' class=\'val\'>LOADING...</td></tr>  \n      <tr><td class=\'lbl\' id=\'pca_discharge_lbl\'>&nbsp;</td><td id=\'pca_pcadischargetemp\' class=\'val\'>LOADING...</td></tr>  \n      <tr><td class=\'lbl\' id=\'gpu_raout_lbl\'>&nbsp;</td><td id=\'gpu_raoutavg\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'gpu_rvout_lbl\'>&nbsp;</td><td id=\'gpu_rvoutavg\' class=\'val\'>LOADING...</td></tr>\n      </table>\n    \n       \n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-plane"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div>\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n\n    <table style="float: left; width:4%"><tr><td>&nbsp;</td></tr></table>\n    <table class=\'data\' style="float: left; width:90%"> \n      <tr><td class=\'lbl\' id=\'pbb_statused_lbl\'>&nbsp;</td><td id=\'pbb_status\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_autolevelmode_lbl\'>&nbsp;</td><td id=\'pbb_autolevelmode\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_smokedetector_lbl\'>&nbsp;</td><td id=\'pbb_smokedetector\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_canopy_lbl\'>&nbsp;</td><td id=\'pbb_canopy\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_cablehoist_lbl\'>&nbsp;</td><td id=\'pbb_cablehoist\' class=\'val\'>LOADING...</td></tr>     \n      </table>\n    \n       \n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/pbbdetail_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-plane"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div>\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table style="float: left; width:4%"><tr><td>&nbsp;</td></tr></table>\n<table height="100%";width"100%">\n  <tr><td>\n    <table class=\'data1\'> \n     <tr><td style="width:300px; height:200px; ;text-align:center; vertical-align:middle">\n     <div id="aircraft_img" class=""></div>   \n    </td></tr>         \n    </table>\n </td><td>\n    <table class=\'data2\'> \n       <tr><td id=\'pbb_status\' class=\'val\'>LOADING...</td><td id=\'pbb_undockordocktimeun\' class=\'val\'>LOADING...</td></tr>\n     <tr>\n      <td style="width:200px; height:150px; vertical-align:middle">\n        <div id="autolevel_img" class=""></div>   \n      </td>\n      <td style="width:200px; height:150px; vertical-align:middle">\n       <div id="canopy_img" class=""></div>    \n      </td>\n     </tr>  \n     <tr><td id=\'pbb_autolevel\' class=\'val\'>LOADING...</td><td id=\'pbb_canopy\' class=\'val\'>LOADING...</td></tr>     \n    </table>\n </td></tr>\n </td></tr></table> \n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-6\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-6\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-6\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/pbbleveldetail_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-plane"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="aircraft_img" class="">\n    <div>\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table class=\'data2\' style="float:left; width:39%; position:absolute; top:5%; left:1%;">\n      <tr><td class=\'lbl\' id=\'pbb_autolevelkey_lbl\'>&nbsp;</td><td id=\'pbb_autolevelkey\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_estoped_lbl\'>&nbsp;</td><td id=\'pbb_estop\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_autolevelmode_lbl\'>&nbsp;</td><td id=\'pbb_autolevelmode\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_autolevelling_lbl\'>&nbsp;</td><td id=\'pbb_autolevelling\' class=\'val\'>LOADING...</td></tr>     \n      <tr><td class=\'lbl\' id=\'pbb_canopy_lbl\'>&nbsp;</td><td id=\'pbb_canopy\' class=\'val\'>LOADING...</td></tr>   \n      <tr><td class=\'lbl\' id=\'pbb_limits_lbl\'>&nbsp;</td><td id=\'pbb_limits\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_smokedetector_lbl\'>&nbsp;</td><td id=\'pbb_smokedetector\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_cabinfloordeicer_lbl\'>&nbsp;</td><td id=\'pbb_cabinfloordeicer\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_terminaldoor_lbl\'>&nbsp;</td><td id=\'pbb_terminaldoor\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_lastdocktime_lbl\'>&nbsp;</td><td id=\'pbb_lastdocktime\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pbb_dailyaircraftcount_lbl\'>&nbsp;</td><td id=\'pbb_dailyaircraftcount\' class=\'val\'>LOADING...</td></tr> \n    </table>\n     <div id="pbb_cabangledisp" class=""></div>  \n     <div id="pbb_slopedeg" class=""></div> \n     <div id="pbb_swingangledisp" class=""></div>   \n     <div id="pbb_heighttodisp" class=""></div>\n     <div id="pca_pcaambhumidity" class=""></div>\n     <div id="pbb_wheelangledeg" class=""></div>\n     <div id="pbb_tunnellength" class=""></div> \n  </div></div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/pca_discharge_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-server"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain" style=\'width:100%;height:100%;\'>\n    <div id="chart" style="width:100%;height:100%;"></div>     \n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'gate_cks\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
window.JST["widgets/pca_summary_widget"] = function(__obj) {
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-plane"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id=\'display_label\'>\n      <h1>\n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <div id="view_main">\n      <div id="power_indicator"></div>\n      <div id="txt_connected_time"></div>\n    </div>\n    <table style="float: left; width:4%"><tr><td>&nbsp;</td></tr></table>\n<table height="100%";width"100%"><tr>\n  <td>\n    <table class=\'data\'> \n        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr> \n        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>    \n        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>    \n    </table>\n </td>\n <td>\n   <table class=\'data1\'> \n    <br><br>\n     <tr><td style="width:200px; height:200px; vertical-align:middle">\n     <div id="pcamain_img" class=""></div>   \n     <div id="blower_img" class=""></div>  \n     <div id="heatingstage1_img" class=""></div>  \n     <div id="heatingstage2_img" class=""></div>  \n     <div id="coolingstage1_img" class=""></div>  \n     <div id="coolingstage2_img" class=""></div>   \n     <div id="accool_img" class=""></div>  \n     <div id="bccool_img" class=""></div> \n     <div id="pca_coildp" class=""></div>   \n     <div id="pca_vfdspeed" class=""></div>\n     <div id="pca_pcaambhumidity" class=""></div>\n     <div id="pca_sucpressure1" class=""></div>\n     <div id="pca_sucpressure2" class=""></div>\n     <div id="pca_hotgas1" class=""></div>\n     <div id="pca_hotgas2" class=""></div>\n     <div id="pca_pumpcond" class=""></div>\n     <div id="pca_aircraftdamper" class=""></div>\n     <div id="pca_bridgedamper" class=""></div>\n       \n     </td></tr>         \n    </table>\n </td>\n </tr></table> \n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-6\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-6\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-6\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
      _print(_safe('<div class="box-header with-border">\n  <div class=\'pull-left\'><i class="fa fa-server"></i> <h3 class="box-title"></h3></div>\n  <div class="pull-right controls">\n    <a href="#" id="show_settings"><i class="fa fa-cogs"></i></a> \n    <a href="#" id="remove"><i class="fa fa-times-circle"></i></a>\n  </div>\n</div>\n\n<div class="box-body content" id=\'content\'>\n  \n  <div class="display contain">\n    <div id="gate_label">\n      <h1>\n        <span id=\'txt\'></span> \n        <i id=\'docked\' class="fa fa-plane" title=\'Plane is DOCKED\' style=\'display:none;\'></i>\n        <i id=\'alarms\' class="fa fa-bell-o" title=\'Gate has ALARMS\' style=\'display:none;\'></i>\n        <i id=\'warnings\' class="fa fa-warning" title=\'Gate has WARNINGS\' style=\'display:none;\'></i>\n      </h1>\n    </div>\n    <table style="float: left; width:4%"><tr><td>&nbsp;</td></tr></table>\n    <table class=\'data\' style="float: left; width:90%">\n    \n      <tr><td class=\'lbl\' id=\'pca_pcastatus_lbl\'>&nbsp;</td><td id=\'pca_pcastatus\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_heater1_lbl\'>&nbsp;</td><td id=\'pca_heater1\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_heater2_lbl\'>&nbsp;</td><td id=\'pca_heater2\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_compstage1_lbl\'>&nbsp;</td><td id=\'pca_compstage1\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_compstage2_lbl\'>&nbsp;</td><td id=\'pca_compstage2\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_bridgedamper_lbl\'>&nbsp;</td><td id=\'pca_bridgedamper\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_bridgeair_lbl\'>&nbsp;</td><td id=\'pca_bridgeair\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_dirtyfilter_lbl\'>&nbsp;</td><td id=\'pca_dirtyfilter\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_blower_lbl\'>&nbsp;</td><td id=\'pca_blower\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_pcadischargetemp_lbl\'>&nbsp;</td><td id=\'pca_pcadischargetemp\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_pcaambienttemp_lbl\'>&nbsp;</td><td id=\'pca_pcaambienttemp\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_sucpressure1_lbl\'>&nbsp;</td><td id=\'pca_sucpressure1\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_sucpressure2_lbl\'>&nbsp;</td><td id=\'pca_sucpressure2\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_hotgas1_lbl\'>&nbsp;</td><td id=\'pca_hotgas1\' class=\'val\'>LOADING...</td></tr>\n      <tr><td class=\'lbl\' id=\'pca_hotgas2_lbl\'>&nbsp;</td><td id=\'pca_hotgas2\' class=\'val\'>LOADING...</td></tr>\n    \n    </table>\n  </div>\n\n  <div class="settings" style="display: none;">\n    <h3>Settings</h3>\n    '));
    
      _print(_safe(this.siteSelector({
        id: 'site',
        label: 'Site',
        site: this.settings.site
      })));
    
      _print(_safe('\n    <div class="row">\n      <div id=\'terminals\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'zones\' class=\'col-md-12\'></div>\n    </div>\n    <div class="row">\n      <div id=\'gates\' class=\'col-md-12\'></div>  \n    </div>\n  </div>\n\n</div>\n'));
    
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
        id: 'location',
        type: 'text',
        placeholder: 'Location ZIP or City',
        value: this.settings.location
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

require('./views/widgets/airport_widget_view');

require('./views/widgets/alarm_widget_view');

require('./views/widgets/pbb_widget_view');

require('./views/widgets/pbbdetail_widget_view');

require('./views/widgets/pbbleveldetail_widget_view');

require('./views/widgets/pca_widget_view');

require('./views/widgets/url_widget_view');

require('./views/widgets/weather_widget_view');

require('./views/widgets/config_widget_view');

require('./views/widgets/gpu_widget_view');

require('./views/widgets/gpu_summary_widget_view');

require('./views/widgets/pca_summary_widget_view');

require('./views/widgets/pca_discharge_widget_view');

require('./views/widgets/pbb_pca_gpu_basic_widget_view');

window.App = (function() {
  var App;
  if (window.App != null) {
    return window.App;
  }
  App = window.App = new BaselineApp();
  App.AdminLTE_lib = AdminLTE_lib;
  App.config = AppConfig;
  App.loaded = false;
  App.accounts_loaded = App.session_loaded = App.dash_loaded = App.roles_loaded = App.claims_loaded = false;
  App.check_loaded = function() {
    if (App.loaded) {
      return;
    }
    if (App.accounts_loaded && App.session_loaded && App.dash_loaded && App.roles_loaded && App.claims_loaded) {
      App.loaded = true;
      if (Backbone.history) {
        this.log('Initializing OPCManager');
        App.opc = OPCManager;
        App.opc.init(App);
        $('#loading_cover').fadeOut(100, function() {
          return $(this).hide();
        });
        this.controller = new AppController();
        this.router = new Router({
          controller: this.controller
        });
        this.log('Backbone.history starting');
        Backbone.history.start();
        if (App.session == null) {
          return App.controller.logout();
        }
      }
    }
  };
  App.on("before:start", function(options) {
    var dtfn;
    this.log('Starting');
    $('#loading_cover').fadeTo(0, 0.8);
    this.layout = new AppLayout();
    this.uiutils = UIUtils;
    App.refresh_accounts((function(_this) {
      return function() {
        return Session.restore();
      };
    })(this));
    App.refresh_roles();
    App.refresh_claims();
    App.vent.on("user:update", function() {
      return Session.save_session();
    });
    App.vent.on("app:update", function() {
      var aacc, acc, accounts, i, idx, len, results;
      if (App.accounts == null) {
        return null;
      }
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
    return App.vent.on('check:timeout', App.check_session);
  });
  App.on('start', function(options) {
    this.log('Started');
    App.check_loaded();
    return this.log('Done starting and running!');
  });
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
                      App.accounts_loaded = true;
                      App.check_loaded();
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
  App.refresh_dashboards = function() {
    if ((App.session == null) || (App.session.id == null)) {
      App.dash_loaded = true;
      App.check_loaded();
      Session.restore();
      return;
    }
    App.dashboards = new DashboardCollection({
      userId: App.session.id
    });
    return App.dashboards.fetch({
      success: (function(_this) {
        return function(data, status, xhr) {
          App.dash_loaded = true;
          return App.check_loaded();
        };
      })(this)
    });
  };
  App.refresh_roles = function(cb) {
    App.roles = new RoleCollection();
    return App.roles.fetch({
      success: ((function(_this) {
        return function(cb) {
          return function(data, xhr) {
            App.roles_loaded = true;
            App.check_loaded();
            if (cb != null) {
              return cb();
            }
          };
        };
      })(this))(cb)
    });
  };
  App.refresh_claims = function(cb) {
    App.claims = new ClaimCollection();
    return App.claims.fetch({
      success: ((function(_this) {
        return function(cb) {
          return function(data, xhr) {
            App.claims_loaded = true;
            App.check_loaded();
            if (cb != null) {
              return cb();
            }
          };
        };
      })(this))(cb)
    });
  };
  App.save_user = function() {
    return App.vent.trigger("user:update");
  };
  App.flush = function() {
    App.store.remove("user_ts");
    App.store.remove("session");
    App.session = null;
    App.accounts = null;
    App.roles = null;
    App.claims = null;
    return App.router.navigate('login', {
      trigger: true
    });
  };
  return App;
})();

},{"./app_controller":2,"./common/adminlte_lib":3,"./common/appconfig":4,"./common/baseline_app":5,"./common/extensions":6,"./common/uiutils":7,"./models/account_collection":11,"./models/claim_collection":13,"./models/role_collection":17,"./models/session":18,"./models/site_collection":20,"./models/user_collection":22,"./opcmanager":25,"./router":26,"./views/app_layout":27,"./views/widgets/airport_widget_view":55,"./views/widgets/alarm_widget_view":56,"./views/widgets/config_widget_view":57,"./views/widgets/gpu_summary_widget_view":58,"./views/widgets/gpu_widget_view":59,"./views/widgets/pbb_pca_gpu_basic_widget_view":61,"./views/widgets/pbb_widget_view":62,"./views/widgets/pbbdetail_widget_view":63,"./views/widgets/pbbleveldetail_widget_view":64,"./views/widgets/pca_discharge_widget_view":65,"./views/widgets/pca_summary_widget_view":66,"./views/widgets/pca_widget_view":67,"./views/widgets/url_widget_view":68,"./views/widgets/weather_widget_view":69}],2:[function(require,module,exports){
var AccountsView, AppController, Dashboard, DashboardCollection, DashboardContentView, DashboardLayout, LoginView, Marionette, PermissionsLayout, ProfileView, ReportsView, Session, User, WidgetCollection,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

LoginView = require('./views/login_view');

ReportsView = require('./views/reports_view');

User = require('./models/user');

Session = require('./models/session');

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
      collection: App.dashboards
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
      Session.clear();
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
    if (!App.session.check_role('admin')) {
      App.router.navigate('', {
        trigger: true
      });
      return;
    }
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
    if (!App.session.check_role('admin')) {
      App.router.navigate('', {
        trigger: true
      });
      return;
    }
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
    var show_dash;
    App.log('route:dashboard');
    id = id != null ? id : null;
    show_dash = (function(_this) {
      return function() {
        var dash, did, dl, first;
        dl = _this.set_main_layout();
        if (dl.collection != null) {
          first = dl.collection.first();
          if (id != null) {
            dash = dl.collection.where({
              _id: id
            });
            dash = dash.length > 0 ? dash[0] : null;
          }
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
        return App.vent.trigger("show:dashboard", did);
      };
    })(this);
    if (App.dashboards == null) {
      Session.load_dashboards((function(_this) {
        return function() {
          return show_dash();
        };
      })(this));
    } else {
      show_dash();
    }
    return this;
  };

  return AppController;

})(Object);

module.exports = AppController;

},{"./models/dashboard":14,"./models/dashboard_collection":15,"./models/session":18,"./models/user":21,"./models/widget_collection":24,"./views/dashboard/content_view":29,"./views/dashboard/dashboard_layout":30,"./views/forms/manage_accounts/accounts_view":40,"./views/forms/manage_permissions/permissions_layout":43,"./views/forms/profile_view":52,"./views/login_view":53,"./views/reports_view":54}],3:[function(require,module,exports){

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
        var acc, code, i, id, j, label, len, len1, ref, ref1, s, sel, sh, site, txt;
        id = arg.id, label = arg.label, site = arg.site;
        sh = "<div class='form-group' for='" + id + "' style='width:95%;'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' style='width:95%;' data-placeholder='Select a Site'>\n    <option value=''></option>";
        if ((App.accounts != null) && App.accounts.models.length > 0) {
          ref = App.accounts.models;
          for (i = 0, len = ref.length; i < len; i++) {
            acc = ref[i];
            if ((acc.sites != null) && acc.sites.models.length > 0) {
              ref1 = acc.sites.models;
              for (j = 0, len1 = ref1.length; j < len1; j++) {
                s = ref1[j];
                if (!App.session.has_site(s.id)) {
                  continue;
                }
                txt = s.get('name');
                code = s.get('code');
                if ((code != null) && code !== '') {
                  txt = txt + " (" + code + ")";
                }
                sel = (site != null) && ("" + site) === ("" + s.id) ? 'selected' : '';
                sh += "<option value='" + s.id + "' " + sel + ">" + txt + "</option>";
              }
            }
          }
        }
        return sh + "</select></div>";
      },
      terminalSelector: function(arg) {
        var id, label, s, sel, settings, sh, site, t, terminal, terminals;
        id = arg.id, label = arg.label, site = arg.site, terminal = arg.terminal;
        sh = "<div class='form-group' for='" + id + "'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' data-placeholder='Select a Terminal'>";
        s = OPCManager.get_site(site);
        if (s != null) {
          settings = s.get('settings') || {};
          terminals = settings.zones || {};
        }
        for (t in terminals) {
          sel = (terminal != null) && ("" + terminal) === ("" + t) ? 'selected' : '';
          sh += "<option value='" + t + "' " + sel + ">" + t + "</option>";
        }
        return sh + "</select></div>";
      },
      zoneSelector: function(arg) {
        var id, label, s, sel, settings, sh, site, t, term, terminal, terminals, z, zone;
        id = arg.id, label = arg.label, site = arg.site, terminal = arg.terminal, zone = arg.zone;
        sh = "<div class='form-group' for='" + id + "'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' data-placeholder='Select a Zone'>";
        s = OPCManager.get_site(site);
        if (s != null) {
          settings = s.get('settings') || {};
          terminals = settings.zones || {};
        }
        for (t in terminals) {
          if (t !== terminal) {
            continue;
          }
          term = terminals[t];
          for (z in term) {
            sel = (zone != null) && ("" + zone) === ("" + z) ? 'selected' : '';
            sh += "<option value='" + z + "' " + sel + ">" + z + "</option>";
          }
        }
        return sh + "</select></div>";
      },
      gateSelector: function(arg) {
        var g, gate, id, label, s, sel, settings, sh, site, t, term, terminal, terminals, z, zn, zone;
        id = arg.id, label = arg.label, site = arg.site, terminal = arg.terminal, zone = arg.zone, gate = arg.gate;
        sh = "<div class='form-group' for='" + id + "'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' data-placeholder='Select a Gate'>";
        s = OPCManager.get_site(site);
        if (s != null) {
          settings = s.get('settings') || {};
          terminals = settings.zones || {};
        }
        for (t in terminals) {
          if (t !== terminal) {
            continue;
          }
          term = terminals[t];
          for (z in term) {
            if (z !== zone) {
              continue;
            }
            zn = term[z];
            for (g in zn) {
              sel = (gate != null) && ("" + gate) === ("" + g) ? 'selected' : '';
              sh += "<option value='" + g + "' " + sel + ">" + g + "</option>";
            }
          }
        }
        return sh + "</select></div>";
      },
      claimSelector: function(arg) {
        var c, ch, claims, cls, i, id, j, label, len, len1, ref, sel, sid, site_id, txt, value;
        id = arg.id, label = arg.label, value = arg.value, site_id = arg.site_id, cls = arg.cls;
        c = 'form-group';
        c = cls != null ? c + " " + cls : c;
        ch = "<div class='" + c + "' for='" + id + "'>\n  <label>" + label + "</label>\n  <select id='" + id + "' class='form-control' multiple data-placeholder='Select Permissions'>";
        claims = [];
        if (App.claims != null) {
          ref = App.claims.models;
          for (i = 0, len = ref.length; i < len; i++) {
            c = ref[i];
            sid = c.get("siteId");
            sid = sid == null ? null : sid;
            site_id = site_id == null ? null : site_id;
            if (site_id === sid) {
              claims.push(c);
            }
          }
        }
        for (j = 0, len1 = claims.length; j < len1; j++) {
          c = claims[j];
          txt = c.get('name');
          sel = (value != null) && ("" + value) === ("" + c.id) ? 'selected' : '';
          ch += "<option value='" + c.id + "' " + sel + ">" + txt + "</option>";
        }
        return ch + "</select></div>";
      },
      roleSelector: function(arg) {
        var c, cls, i, id, j, k, label, lbl, len, len1, len2, r, ref, rh, roles, sel, selected, sid, site_id, txt, v, value;
        id = arg.id, label = arg.label, value = arg.value, site_id = arg.site_id, cls = arg.cls;
        c = 'form-group';
        c = cls != null ? c + " " + cls : c;
        lbl = label != null ? "<label>" + label + "</label><br/>" : '';
        rh = "<div class='" + c + "' for='" + id + "'>\n  " + lbl + "\n  <select id='" + id + "' class='form-control roleselect' multiple data-placeholder='Select Roles'>";
        roles = [];
        if (App.roles != null) {
          ref = App.roles.models;
          for (i = 0, len = ref.length; i < len; i++) {
            r = ref[i];
            sid = r.get("siteId");
            sid = sid == null ? null : sid;
            site_id = site_id == null ? null : site_id;
            if (site_id === sid) {
              roles.push(r);
            }
          }
        }
        for (j = 0, len1 = roles.length; j < len1; j++) {
          r = roles[j];
          txt = r.get('name');
          selected = false;
          if (value != null) {
            for (k = 0, len2 = value.length; k < len2; k++) {
              v = value[k];
              if (v === r.id) {
                selected = true;
                break;
              }
            }
          }
          sel = selected ? 'selected="selected"' : '';
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

  UIUtils.lpad = function(n, w, z) {
    z = z || '0';
    n = n + '';
    if (n.length >= w) {
      return n;
    } else {
      return new Array(w - n.length + 1).join(z) + n;
    }
  };

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
    html = "<div class=\"alert alert-" + type + " alert-dismissable\">\n  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\" aria-label=\"Close\">&times;</button>\n  " + ttl + message + "\n</div>";
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
    var blacklist, i, k, len;
    attrs || (attrs = $.extend(true, {}, this.attributes));
    options || (options = {});
    blacklist = ['isActive', 'createdAt', 'updatedAt', 'lastErrorObject', 'ok', 'value'];
    if (options.blacklist != null) {
      blacklist = blacklist.concat(options.blacklist);
      delete options.blacklist;
    }
    for (i = 0, len = blacklist.length; i < len; i++) {
      k = blacklist[i];
      delete attrs[k];
    }
    options.data = JSON.stringify(attrs);
    options.contentType = "application/json";
    return BaseModel.__super__.save.call(this, attrs, options);
  };

  BaseModel.prototype.setUrl = function(root) {
    var url;
    if ((this.local != null) && this.local === true) {
      return url = '';
    } else {
      url = this.service != null ? ("" + AppConfig.api_baseurl).replace('{service}', "" + this.service) : "" + AppConfig.api_baseurl;
      if (root != null) {
        return this.urlRoot = "" + url + root;
      } else {
        return url;
      }
    }
  };

  function BaseModel(opts) {
    BaseModel.__super__.constructor.apply(this, arguments);
    this.setUrl(this.urlRoot);
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

  Claim.prototype.service = 'accounts';

  Claim.prototype.urlRoot = '/claims';

  Claim.prototype.defaults = {
    name: '',
    description: ''
  };

  function Claim(config, opts) {
    Claim.__super__.constructor.call(this, config, opts);
  }

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

  Dashboard.prototype.service = 'accounts';

  Dashboard.prototype.urlRoot = '/dashboards';

  Dashboard.prototype.defaults = {
    widgets: [],
    name: ''
  };

  Dashboard.prototype.pickUrl = function(destroy) {
    if ((this.id != null) && !destroy) {
      this.urlRoot = '/dashboards';
    } else {
      this.urlRoot = "/users/" + App.session.id + "/dashboards";
    }
    return this.setUrl(this.urlRoot);
  };

  Dashboard.prototype.save = function(attrs, options) {
    options || (options = {});
    options.blacklist = ["userId"];
    this.pickUrl();
    return Dashboard.__super__.save.call(this, attrs, options);
  };

  Dashboard.prototype.destroy = function(options) {
    this.pickUrl(true);
    return Dashboard.__super__.destroy.call(this, options);
  };

  Dashboard.prototype.fetch = function(options) {
    this.urlRoot = '/dashboards';
    this.setUrl(this.urlRoot);
    return Dashboard.__super__.fetch.call(this, options);
  };

  function Dashboard(config) {
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
    return this.save();
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

  DashboardCollection.prototype.service = 'accounts';

  DashboardCollection.prototype.url = '/users/{userId}/dashboards';

  DashboardCollection.prototype.model = Dashboard;

  function DashboardCollection(config, opts) {
    if ((config != null) && config.userId) {
      this.url = this.url.replace('{userId}', config.userId);
      delete config.userId;
    } else {
      this.url = '/dashboards';
    }
    DashboardCollection.__super__.constructor.call(this, config);
  }

  return DashboardCollection;

})(BaseCollection);

window.DashboardCollection = DashboardCollection;

module.exports = DashboardCollection;

},{"./_base_collection":9,"./dashboard":14}],16:[function(require,module,exports){
var BaseModel, ClaimCollection, Role,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

ClaimCollection = require('./claim_collection');

Role = (function(superClass) {
  extend(Role, superClass);

  function Role() {
    return Role.__super__.constructor.apply(this, arguments);
  }

  Role.prototype.service = 'accounts';

  Role.prototype.urlRoot = '/roles';

  Role.prototype.defaults = {
    name: null,
    description: null,
    isActive: true,
    claims: []
  };

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

  RoleCollection.prototype.service = 'accounts';

  RoleCollection.prototype.url = '/sites/{site}/roles';

  RoleCollection.prototype.model = Role;

  function RoleCollection(config, opts) {
    if ((opts != null) && opts.site) {
      this.url = this.url.replace('{site}', opts.site);
    } else {
      this.url = '/roles';
    }
    RoleCollection.__super__.constructor.call(this, config);
  }

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
    var d, dashboards, i, len, ref;
    App.store.set("user_ts", new Date());
    App.store.set("session", App.session);
    if (App.dashboards != null) {
      dashboards = [];
      ref = App.dashboards.models;
      for (i = 0, len = ref.length; i < len; i++) {
        d = ref[i];
        dashboards.push(d.id);
      }
      App.session.attributes["dashboards"] = dashboards;
    }
    return App.session.save();
  };

  Session.clear = function() {
    if (App.session != null) {
      App.session.off("change");
    }
    App.dashboards = null;
    Session.set_session();
    return null;
  };

  Session.load_dashboards = function(success) {
    if (App.session == null) {
      return;
    }
    App.dashboards = new DashboardCollection({
      userId: App.session.id
    });
    App.dashboards.fetch({
      success: (function(_this) {
        return function(data, status, xhr) {
          if (success) {
            return success(data, status, xhr);
          }
        };
      })(this)
    });
    return this;
  };

  Session.auth = function(arg) {
    var e, email, error, password, s, success;
    email = arg.email, password = arg.password, success = arg.success, error = arg.error;
    Session.clear();
    App.session = new Session({
      email: email,
      password: password
    });
    s = (function(_this) {
      return function(data, status, xhr) {
        Session.set_session(App.session);
        return Session.load_dashboards(success);
      };
    })(this);
    e = (function(_this) {
      return function(xhr, status, err) {
        Session.clear();
        App.dashboards = null;
        if (error) {
          return error(xhr, status, err);
        }
      };
    })(this);
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

  Session.parse_token = function(token) {
    var ctk, tk, user;
    user = null;
    if (token != null) {
      tk = token.split('.')[1];
      ctk = CryptoJS.enc.Base64.parse(tk);
      user = ctk.toString(CryptoJS.enc.Utf8);
      user = JSON.parse(user);
    }
    return user;
  };

  Session.set_session = function(session) {
    var tk, user;
    if ((session != null) && (session.get("token") != null)) {
      tk = session.get("token");
      this.set_header_token(tk);
      user = Session.parse_token(tk);
      delete user.createdAt;
      delete user.updatedAt;
      delete user.passwordHash;
      delete user.iss;
      delete user.iat;
      delete user.exp;
      user.dashboards = [];
      delete App.session.attributes["password"];
      App.session = new User(user);
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

  Session.restore = function(success) {
    var s, tk, user;
    tk = App.store.get('token');
    if (tk != null) {
      this.set_header_token(tk);
    }
    s = App.store.get('session');
    if ((s != null) && (s.token != null)) {
      if (App.session != null) {
        Session.clear();
      }
      user = Session.parse_token(s.token);
      App.session = new User(user);
      App.session.fetch({
        success: (function(_this) {
          return function(data, status, xhr) {
            if (success != null) {
              success(data, status, xhr);
            }
            App.refresh_dashboards();
            App.session_loaded = true;
            return App.check_loaded();
          };
        })(this),
        error: function() {
          Session.clear();
          App.session_loaded = true;
          return App.check_loaded();
        }
      });
    } else {
      App.dash_loaded = true;
      App.session_loaded = true;
      App.check_loaded();
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
    options.blacklist = ["accountId"];
    this.pickUrl();
    return Site.__super__.save.call(this, attrs, options);
  };

  Site.prototype.destroy = function(options) {
    this.pickUrl(true);
    return Site.__super__.destroy.call(this, options);
  };

  Site.prototype.fetch = function(options) {
    this.pickUrl();
    return Site.__super__.fetch.call(this, options);
  };

  Site.prototype.persist = function() {
    this.attributes["claims"] = this.claims.toJSON();
    return this.attributes["roles"] = this.roles.toJSON();
  };

  Site.prototype.pickUrl = function(destroy) {
    if (!this.isNew() && !destroy) {
      this.urlRoot = '/sites';
    } else {
      this.urlRoot = "/accounts/" + this.accountId + "/sites";
    }
    return this.setUrl(this.urlRoot);
  };

  function Site(config, opts) {
    this.persist = bind(this.persist, this);
    if ((config != null) && config.accountId) {
      this.accountId = config.accountId;
      this.setUrl(this.accountId);
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
var BaseModel, ClaimCollection, DashboardCollection, RoleCollection, User,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

BaseModel = require('./_base');

DashboardCollection = require('./dashboard_collection');

ClaimCollection = require('./claim_collection');

RoleCollection = require('./role_collection');

User = (function(superClass) {
  extend(User, superClass);

  User.prototype.service = 'accounts';

  User.prototype.urlRoot = '/users';

  User.prototype.defaults = {
    email: null,
    firstName: null,
    lastName: null,
    settings: {},
    claims: [],
    roles: []
  };

  User.prototype.save = function(attrs, options) {
    options || (options = {});
    options.blacklist = ["isActive", "passwordHash", "iss", "iat", "exp"];
    this.persist();
    return User.__super__.save.call(this, attrs, options);
  };

  User.prototype.persist = function() {
    var c, claims, i, j, len, len1, r, ref, ref1, roles;
    roles = [];
    ref = this.roles.models;
    for (i = 0, len = ref.length; i < len; i++) {
      r = ref[i];
      roles.push(r.id);
    }
    this.attributes["roles"] = roles;
    claims = [];
    ref1 = this.claims.models;
    for (j = 0, len1 = ref1.length; j < len1; j++) {
      c = ref1[j];
      claims.push(c.id);
    }
    this.attributes["claims"] = claims;
    return this;
  };

  User.prototype.set_properties = function() {
    var c, claims, i, j, len, len1, r, ref, ref1, roles;
    claims = [];
    ref = this.get('claims');
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      claims.push({
        _id: c
      });
    }
    this.claims = new ClaimCollection(claims);
    this.claims.on("update", this.persist);
    this.claims.on("change", this.persist);
    roles = [];
    ref1 = this.get('roles');
    for (j = 0, len1 = ref1.length; j < len1; j++) {
      r = ref1[j];
      roles.push({
        _id: r
      });
    }
    this.roles = new RoleCollection(roles);
    this.roles.on("update", this.persist);
    return this.roles.on("change", this.persist);
  };

  function User(config) {
    this.persist = bind(this.persist, this);
    User.__super__.constructor.call(this, config);
    this.set_properties();
    this.on("change:claims", this.set_properties);
    this.on("change:roles", this.set_properties);
    this.on("change:dashboards", this.set_properties);
    this;
  }

  User.prototype.has_role = function(roleid) {
    var i, len, r, ref;
    ref = this.roles.models;
    for (i = 0, len = ref.length; i < len; i++) {
      r = ref[i];
      if (r.id === roleid) {
        return true;
      }
    }
    return false;
  };

  User.prototype.is_global_admin = function() {
    var ar, i, len, ref;
    ref = App.roles.models;
    for (i = 0, len = ref.length; i < len; i++) {
      ar = ref[i];
      if (!ar.get("siteId") && ar.get("name") === "admin" && this.has_role(ar.id)) {
        return true;
        break;
      }
    }
    return false;
  };

  User.prototype.has_site = function(sid) {
    var i, len, ref, s;
    ref = this.sites();
    for (i = 0, len = ref.length; i < len; i++) {
      s = ref[i];
      if (s === sid) {
        return true;
      }
    }
    return false;
  };

  User.prototype.sites = function() {
    var acc, ar, i, isadmin, j, k, l, len, len1, len2, len3, ref, ref1, ref2, ref3, s, sid, sites, ur;
    sites = [];
    isadmin = this.is_global_admin();
    ref = App.accounts.models;
    for (i = 0, len = ref.length; i < len; i++) {
      acc = ref[i];
      ref1 = acc.sites.models;
      for (j = 0, len1 = ref1.length; j < len1; j++) {
        s = ref1[j];
        if (isadmin) {
          sites.push(s.id);
        } else {
          ref2 = this.roles.models;
          for (k = 0, len2 = ref2.length; k < len2; k++) {
            ur = ref2[k];
            ref3 = App.roles.models;
            for (l = 0, len3 = ref3.length; l < len3; l++) {
              ar = ref3[l];
              if (ar.id === ur.id) {
                sid = ar.get('siteId');
                if ((sid != null) && s.id === sid) {
                  sites.push(s.id);
                  break;
                }
              }
            }
          }
        }
      }
    }
    return sites;
  };

  User.prototype.check_widget_roles = function(sroles) {
    var app_role, ar, i, j, k, len, len1, len2, r, ref, ref1, role, rp, type, ur;
    for (i = 0, len = sroles.length; i < len; i++) {
      r = sroles[i];
      rp = r.split(':');
      type = rp[0];
      role = rp[1];
      app_role = null;
      ref = App.roles.models;
      for (j = 0, len1 = ref.length; j < len1; j++) {
        ar = ref[j];
        if (ar.get('name') === role) {
          if ((type === 'global' && (ar.get('siteId') == null)) || (type === 'site' && ar.get('siteId'))) {
            app_role = ar;
            break;
          }
        }
      }
      if (app_role) {
        ref1 = this.roles.models;
        for (k = 0, len2 = ref1.length; k < len2; k++) {
          ur = ref1[k];
          if (ur.id === app_role.id) {
            return true;
          }
        }
      }
    }
    return false;
  };

  User.prototype.check_claim = function(claim, site) {
    var ac, i, j, len, len1, ref, ref1, s, sid, uc;
    s = site != null ? OPCManager.get_site(site) : null;
    sid = s != null ? s.id : null;
    if (App.claims == null) {
      return false;
    }
    ref = App.claims.models;
    for (i = 0, len = ref.length; i < len; i++) {
      ac = ref[i];
      if ((claim === ac.get('name') || claim === ac.id) && (site === ac.get('siteId'))) {
        ref1 = this.claims.models;
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          uc = ref1[j];
          if (ac.id === uc.id) {
            return true;
          }
        }
        break;
      }
    }
    return false;
  };

  User.prototype.check_role = function(role, site) {
    var ar, i, j, len, len1, ref, ref1, s, sid, ur;
    s = site != null ? OPCManager.get_site(site) : null;
    sid = s != null ? s.id : null;
    if (App.roles == null) {
      return false;
    }
    ref = App.roles.models;
    for (i = 0, len = ref.length; i < len; i++) {
      ar = ref[i];
      if ((role === ar.get('name') || role === ar.id) && (site === ar.get('siteId'))) {
        ref1 = this.roles.models;
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          ur = ref1[j];
          if (ar.id === ur.id) {
            return true;
          }
        }
        break;
      }
    }
    return false;
  };

  return User;

})(BaseModel);

module.exports = User;

},{"./_base":8,"./claim_collection":13,"./dashboard_collection":15,"./role_collection":17}],22:[function(require,module,exports){
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

  Widget.prototype.defaults = {
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

  function Widget(config, opts) {
    var id, settings;
    Widget.__super__.constructor.call(this, config, opts);
    id = config.id != null ? config.id : null;
    id = (id == null) && (config.settings != null) && (config.settings.id != null) ? config.settings.id : id;
    settings = _.clone(this.get('settings'));
    settings.id = id;
    this.set('settings', settings);
    this.set('id', id);
    this.set('name', "widget_" + this.id);
    this;
  }

  Widget.prototype.toJSON = function(options) {
    var j;
    j = Widget.__super__.toJSON.call(this, options);
    delete j.id;
    delete j._id;
    return j;
  };

  return Widget;

})(Backbone.Model);

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

  OPCManager.get_site = function(id) {
    var acc, i, j, len, len1, ref, ref1, st;
    if ((App.accounts != null) && App.accounts.models.length > 0) {
      ref = App.accounts.models;
      for (i = 0, len = ref.length; i < len; i++) {
        acc = ref[i];
        if ((acc.sites != null) && acc.sites.models.length > 0) {
          ref1 = acc.sites.models;
          for (j = 0, len1 = ref1.length; j < len1; j++) {
            st = ref1[j];
            if (("" + st.id) === ("" + id)) {
              return st;
            }
          }
        }
      }
    }
    return null;
  };

  OPCManager.get_site_code = function(id) {
    var site;
    site = this.get_site(id);
    if (site != null) {
      return site.get('code');
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
    var ab, c, exists, i, index, len, ref;
    c = this.connections[conn];
    if (c != null) {
      c.toggle_refresh(false);
      exists = false;
      if (c.config.alarm_bindings == null) {
        c.config.alarm_bindings = [];
      }
      ref = c.config.alarm_bindings;
      for (index = i = 0, len = ref.length; i < len; index = ++i) {
        ab = ref[index];
        if (ab.alarmid === binding.alarmid) {
          exists = true;
          c.config.alarm_bindings[index] = binding;
          break;
        }
      }
      if (!exists) {
        c.config.alarm_bindings.push(binding);
      }
      c.init();
    }
    return this;
  };

  OPCManager.rem_alarm = function(conn, binding) {
    var ab, c, exists, i, idx, index, len, ref;
    c = this.connections[conn];
    if (c != null) {
      c.toggle_refresh(false);
      exists = false;
      idx = -1;
      if (c.config.alarm_bindings == null) {
        c.config.alarm_bindings = [];
      }
      ref = c.config.alarm_bindings;
      for (index = i = 0, len = ref.length; i < len; index = ++i) {
        ab = ref[index];
        if (ab.alarmid === binding.alarmid) {
          exists = true;
          idx = index;
          break;
        }
      }
      if (idx !== -1) {
        c.config.alarm_bindings.splice(idx, 1);
        return c.init();
      }
    }
  };

  OPCManager.add_trend = function(conn, binding) {
    var c, exists, i, index, len, ref, tb;
    c = this.connections[conn];
    if (c != null) {
      c.toggle_refresh(false);
      exists = false;
      if (c.config.trend_bindings == null) {
        c.config.trend_bindings = [];
      }
      ref = c.config.trend_bindings;
      for (index = i = 0, len = ref.length; i < len; index = ++i) {
        tb = ref[index];
        if (tb.chartid === binding.chartid) {
          exists = true;
          c.config.trend_bindings[index] = binding;
          break;
        }
      }
      if (!exists) {
        c.config.trend_bindings.push(binding);
      }
      c.init();
    }
    return this;
  };

  OPCManager.rem_trend = function(conn, binding) {
    var c, exists, i, idx, index, len, ref, tb;
    c = this.connections[conn];
    if (c != null) {
      c.toggle_refresh(false);
      exists = false;
      idx = -1;
      if (c.config.trend_bindings == null) {
        c.config.trend_bindings = [];
      }
      ref = c.config.trend_bindings;
      for (index = i = 0, len = ref.length; i < len; index = ++i) {
        tb = ref[index];
        if (tb.chartid === binding.chartid) {
          exists = true;
          idx = index;
          break;
        }
      }
      if (idx !== -1) {
        c.config.trend_bindings.splice(idx, 1);
        return c.init();
      }
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
    if (conn == null) {
      return 0;
    }
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
    var account, code, i, len, ref, refreshRate, results, site, siteUrl;
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
          siteUrl = site.get("serverUrl");
          refreshRate = site.get("refreshRate");
          if (refreshRate == null) {
            refreshRate = 5;
          }
          refreshRate = parseInt(refreshRate) * 1000;
          code = site.get("code");
          results1.push(OPCManager.create(code, {
            token: '7e61b230-481d-4551-b24b-ba9046e3d8f2',
            max_tags_per_msg: 50,
            max_callbacks: 10,
            callback_timeout: 10000,
            refresh_callback: (function(c) {
              return function(data) {
                return OPCManager.notify(c, data);
              };
            })(code),
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
      this.ui.body.html(o.body);
    }
    if (o.show_cancel === false) {
      this.$('#modal_cancel').hide();
    }
    if (o.show_save === false) {
      return this.$('#modal_save').hide();
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
      t = this.center_view.model.get('name');
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
      title: dash.get('name'),
      subtitle: '',
      view: v
    });
  };

  DashboardLayout.prototype.empty = function() {
    return this.content.empty();
  };

  DashboardLayout.prototype.onShow = function() {
    var pck;
    this.headerview = new DashboardHeaderView({
      model: App.session
    });
    this.header.show(this.headerview);
    this.sideview = new DashboardSideView({
      collection: App.dashboards
    });
    this.side.show(this.sideview);
    pck = App.session.check_role('admin');
    if (pck) {
      this.toolview = new DashboardToolView();
      this.tool.show(this.toolview);
    } else {
      $("#toolsmenu").hide();
    }
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
        _this.model.set('name', _this.ui.title.val());
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
        }
        return _this.model.save(null, {
          success: function() {
            App.vent.trigger("dashboard:update");
            return App.router.navigate("dashboard/" + _this.model.id, {
              trigger: true
            });
          }
        });
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
    this.build_list = bind(this.build_list, this);
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
    d = new Dashboard({
      userId: App.session.id
    });
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
          d.destroy();
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
        return _this.build_list();
      };
    })(this));
    App.vent.on("dashboard:update", this.build_list);
    if ((App.session != null) && (App.session.get('avatar') != null)) {
      this.ui.avatar.attr('src', App.session.get('avatar'));
    }
    return this.build_list();
  };

  DashboardSideView.prototype.build_list = function() {
    var d, dl, hh, i, idx, len, ref, results;
    $('li.dashboard-link', this.ui.dashboard_list).remove();
    ref = this.collection.models;
    results = [];
    for (idx = i = 0, len = ref.length; i < len; idx = ++i) {
      d = ref[idx];
      hh = "<li class='dashboard-link d_" + d.id + "'>\n  <a href='#' class='dash_link'><i class='fa fa-th-large'></i> <span>" + (d.get('name')) + "</span></a>\n  <div class='controls'>\n    <a href='#' class='moveup moveup_" + d.id + "'><i class='fa fa-caret-up'></i></a>\n    <a href='#' class='movedn movedn_" + d.id + "'><i class='fa fa-caret-down'></i></a>\n    <a href='#' class='edit edit_" + d.id + "'><i class='fa fa-pencil-square'></i></a>\n    <a href='#' class='delete delete_" + d.id + "'><i class='fa fa-times-circle'></i></a>\n  </div>\n</li>";
      dl = $(hh);
      results.push(this.$('#dashboard-list').append(dl));
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
      name: type,
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
      wli.append('<span class="gs-resize-handle gs-resize-handle-both"></span>');
    }
    return this.model.save();
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
      max_size_x: 20,
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
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetModalView = (function(superClass) {
  extend(WidgetModalView, superClass);

  function WidgetModalView() {
    this.select = bind(this.select, this);
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
    var i, len, ref, w;
    this.m = $('#app_modal').modal();
    this.m.on("hidden.bs.modal", (function(_this) {
      return function() {
        if ((_this.model != null) && (_this.model.on_cancel != null)) {
          _this.model.on_cancel();
        }
        return App.layout.modal_region.empty();
      };
    })(this));
    ref = App.config.widgets;
    for (i = 0, len = ref.length; i < len; i++) {
      w = ref[i];
      if ((w.roles != null) && !App.session.check_widget_roles(w.roles)) {
        continue;
      }
      this.$('#widget_selections').append("<a class='widget_select' id='" + w.id + "' href='#'><i class='fa fa-" + w.icon + "'></i> " + w.name + "</a>");
    }
    return this.$('a.widget_select').click(this.select);
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

  WidgetView.prototype.tags = {};

  WidgetView.layout = {
    sx: 4,
    sy: 5
  };

  WidgetView.prototype.modelEvents = {
    "change:settings": "update"
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
    if (this.ui.display != null) {
      this.ui.display.toggle(!this.settings_visible);
    } else {
      this.$(".display").toggle(!this.settings_visible);
    }
    if (this.ui.settings != null) {
      this.ui.settings.toggle(this.settings_visible);
    } else {
      this.$(".settings").toggle(this.settings_visible);
    }
    return this;
  };

  WidgetView.prototype.remove_widget = function(e) {
    if (e != null) {
      e.preventDefault();
      return this.model.collection.remove(this.model);
    }
  };

  WidgetView.prototype.start = function() {
    if (this.update) {
      this.update();
    }
    return this;
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

  AccountView.prototype.viewComparator = 'name';

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

  AccountsView.prototype.viewComparator = 'name';

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
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

Site = require('../../../models/site');

SiteView = (function(superClass) {
  extend(SiteView, superClass);

  function SiteView() {
    this["delete"] = bind(this["delete"], this);
    return SiteView.__super__.constructor.apply(this, arguments);
  }

  SiteView.prototype.template = "forms/manage_accounts/site";

  SiteView.prototype.tagName = 'div';

  SiteView.prototype.className = '';

  SiteView.prototype.ui = {
    container: '.site_container',
    cloud: 'i#site_cloud',
    name: '#site_name',
    code: '#site_code',
    shortName: '#site_short',
    serverUrl: '#site_url',
    refreshRate: '#site_refresh_rate',
    zones: '#site_zones'
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

  SiteView.prototype.set_settings = function() {
    var settings;
    this.set_cloud();
    settings = _.clone(this.model.get('settings'));
    if (settings.zones != null) {
      return this.ui.zones.val(JSON.stringify(settings.zones, null, 2));
    }
  };

  SiteView.prototype.apply_settings = function() {
    var e, settings, zones;
    settings = _.clone(this.model.get('settings'));
    settings || (settings = {});
    zones = this.ui.zones.val();
    if ((zones != null) && zones.trim() !== '') {
      this.ui.zones.removeClass('error');
      try {
        settings.zones = JSON.parse(zones);
      } catch (_error) {
        e = _error;
        this.ui.zones.addClass('error');
        return false;
      }
    } else {
      delete settings.zones;
    }
    this.model.set('settings', settings);
    return true;
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
          return _this.model.destroy({
            success: function() {
              return App.vent.trigger("app:update");
            }
          });
        };
      })(this)
    });
  };

  SiteView.prototype.clear_errors = function() {
    var k, results;
    results = [];
    for (k in this.ui) {
      results.push(this.$(this.ui[k]).removeClass('error'));
    }
    return results;
  };

  SiteView.prototype.save = function() {
    var name;
    this.clear_errors();
    name = this.model.get('name');
    if ((name == null) || name.trim() === '') {
      return;
    }
    if (!this.apply_settings()) {
      return false;
    }
    this.model.save(null, {
      success: (function(_this) {
        return function() {
          _this.render();
          return App.vent.trigger("app:update");
        };
      })(this),
      error: (function(_this) {
        return function(site, err) {
          var i, k, len, ref, results;
          if (err.responseJSON != null) {
            ref = err.responseJSON.validation.keys;
            results = [];
            for (i = 0, len = ref.length; i < len; i++) {
              k = ref[i];
              results.push(_this.ui[k].addClass('error'));
            }
            return results;
          }
        };
      })(this)
    });
    return true;
  };

  SiteView.prototype.onRender = function() {
    this.modelBinder.bind(this.model, this.el, this.bindings);
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      this.show_edit();
    }
    return this.set_settings();
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
          return _this.model.destroy({
            success: function() {
              return App.vent.trigger("app:update");
            }
          });
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
    return this.model.save(null, {
      success: (function(_this) {
        return function() {
          App.vent.trigger("app:update");
          return _this.render();
        };
      })(this)
    });
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
var Marionette, PermissionsLayout, PermissionsTopView, RolesTopView, UsersLayout,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

PermissionsTopView = require('./permissions_top_view');

RolesTopView = require('./roles_top_view');

UsersLayout = require('./users_layout');

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
        this.uv = new UsersLayout();
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

},{"./permissions_top_view":44,"./roles_top_view":47,"./users_layout":50}],44:[function(require,module,exports){
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
    this.claims = new ClaimCollection();
    return this.claims.fetch({
      success: (function(_this) {
        return function() {
          var acc, acc_el, i, len, r, ref, results, s, site_el, spv;
          _this.pv = new PermissionsView({
            model: new Backbone.Model({
              id: 0,
              name: 'Global Permissions',
              global: true
            }),
            collection: _this.claims,
            filter: function(child, index, collection) {
              var s;
              s = child.get('siteId');
              return (s == null) || s === 0;
            }
          });
          _this.global_region.show(_this.pv);
          ref = App.accounts.models;
          results = [];
          for (i = 0, len = ref.length; i < len; i++) {
            acc = ref[i];
            acc_el = "<div id='acc_" + acc.id + "'>\n  <h3><i class='fa fa-fw fa-building-o'></i>" + (acc.get('name')) + "</h3>\n</div>";
            acc_el = $(acc_el);
            $(_this.el).append(acc_el);
            results.push((function() {
              var j, len1, ref1, results1;
              ref1 = acc.sites.models;
              results1 = [];
              for (j = 0, len1 = ref1.length; j < len1; j++) {
                s = ref1[j];
                site_el = $("<div id='site_" + s.id + "' class='site_item'></div>");
                acc_el.append(site_el);
                spv = new PermissionsView({
                  model: s,
                  collection: this.claims,
                  filter: (function(sid) {
                    return function(child, index, collection) {
                      s = child.get('siteId');
                      return (s != null) && s === sid;
                    };
                  })(s.id)
                });
                spv.siteId = s.id;
                r = this.addRegion("site_" + s.id, "#site_" + s.id);
                results1.push(r.show(spv));
              }
              return results1;
            }).call(_this));
          }
          return results;
        };
      })(this)
    });
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

  PermissionsView.prototype.viewComparator = 'name';

  PermissionsView.prototype.events = {
    'click #add_claim': 'add_claim'
  };

  PermissionsView.prototype.add_claim = function() {
    var c, claim, i, len, ref;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      if ((c.id == null) || c.id === 0) {
        return false;
      }
    }
    claim = {
      name: '',
      description: ''
    };
    if ((this.siteId != null) && this.siteId !== 0) {
      claim.siteId = this.siteId;
    }
    return this.collection.add(claim, {
      at: 0
    });
  };

  PermissionsView.prototype.onShow = function() {
    if (!this.model.get('global')) {
      this.collection.site = this.model;
    }
    return window.foo = this.collection;
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
          return _this.model.destroy({
            success: function() {
              return App.vent.trigger("app:update");
            }
          });
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
    this.model.set('claims', this.$('select#role_claims').val());
    return this.model.save(null, {
      success: (function(_this) {
        return function() {
          App.vent.trigger("app:update");
          return _this.render();
        };
      })(this)
    });
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
var ClaimCollection, Marionette, RoleCollection, RolesTopView, RolesView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

RolesView = require('./roles_view');

RoleCollection = require('../../../models/role_collection');

ClaimCollection = require('../../../models/claim_collection');

RolesTopView = (function(superClass) {
  extend(RolesTopView, superClass);

  function RolesTopView() {
    this.rebuild_view = bind(this.rebuild_view, this);
    this.prep_data = bind(this.prep_data, this);
    return RolesTopView.__super__.constructor.apply(this, arguments);
  }

  RolesTopView.prototype.template = "forms/manage_permissions/roles_top";

  RolesTopView.prototype.regions = {
    global_region: '#global_region'
  };

  RolesTopView.prototype.onShow = function() {
    return App.refresh_accounts(this.prep_data);
  };

  RolesTopView.prototype.prep_data = function() {
    App.claims = new ClaimCollection();
    return App.claims.fetch({
      success: (function(_this) {
        return function() {
          return _this.rebuild_view();
        };
      })(this)
    });
  };

  RolesTopView.prototype.rebuild_view = function() {
    this.roles = new RoleCollection();
    return this.roles.fetch({
      success: (function(_this) {
        return function() {
          var acc, acc_el, i, len, r, ref, results, s, site_el, srv;
          _this.rv = new RolesView({
            model: new Backbone.Model({
              id: 0,
              name: 'Global Roles',
              global: true
            }),
            collection: _this.roles,
            filter: function(child, index, collection) {
              var s;
              s = child.get('siteId');
              return (s == null) || s === 0;
            }
          });
          _this.global_region.show(_this.rv);
          ref = App.accounts.models;
          results = [];
          for (i = 0, len = ref.length; i < len; i++) {
            acc = ref[i];
            acc_el = "<div id='acc_" + acc.id + "'>\n  <h3><i class='fa fa-fw fa-building-o'></i>" + (acc.get('name')) + "</h3>\n</div>";
            acc_el = $(acc_el);
            $(_this.el).append(acc_el);
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
                  collection: this.roles,
                  filter: (function(sid) {
                    return function(child, index, collection) {
                      s = child.get('siteId');
                      return (s != null) && s === sid;
                    };
                  })(s.id)
                });
                srv.siteId = s.id;
                r = this.addRegion("site_" + s.id, "#site_" + s.id);
                results1.push(r.show(srv));
              }
              return results1;
            }).call(_this));
          }
          return results;
        };
      })(this)
    });
  };

  return RolesTopView;

})(Marionette.LayoutView);

module.exports = RolesTopView;

},{"../../../models/claim_collection":13,"../../../models/role_collection":17,"./roles_view":48}],48:[function(require,module,exports){
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

  RolesView.prototype.viewComparator = 'name';

  RolesView.prototype.events = {
    'click #add_role': 'add_role'
  };

  RolesView.prototype.add_role = function() {
    var c, i, len, ref, role;
    ref = this.collection.models;
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      if ((c.id == null) || c.id === 0) {
        return false;
      }
    }
    role = {
      name: '',
      description: ''
    };
    if ((this.model.id != null) && this.model.id !== 0) {
      role.siteId = this.model.id;
    }
    return this.collection.add(role, {
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
    firstName: '#firstName',
    lastName: '#lastName',
    email: '#email'
  };

  UserView.prototype.ui = {
    firstName: 'input#firstName',
    lastName: 'input#lastName',
    email: 'input#email',
    phone1: 'input#phone1',
    phone2: 'input#phone2',
    pw: 'input#password',
    pwc: 'input#password_confirmation'
  };

  UserView.prototype.initialize = function() {
    return this.modelBinder = new Backbone.ModelBinder();
  };

  UserView.prototype.toggle_edit = function(rw) {
    var acc, i, j, len, len1, ref, ref1, roles, s;
    $(this.el).toggleClass('rw', rw);
    if (rw) {
      roles = this.model.get('roles');
      ref = App.accounts.models;
      for (i = 0, len = ref.length; i < len; i++) {
        acc = ref[i];
        ref1 = acc.sites.models;
        for (j = 0, len1 = ref1.length; j < len1; j++) {
          s = ref1[j];
          this.$("select#roles_" + s.id).val(roles);
        }
      }
      this.$('select#roles_global').val(roles);
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
    if (this.model.id === App.session.id) {
      App.uiutils.showModal({
        title: 'Cannot Delete Your Account!',
        icon: 'warning',
        type: 'danger',
        body: 'Sorry, you cannot delete your own account. If you still wish to delete your account, please ask another system admin to log in and delete it.',
        show_cancel: false
      });
      return;
    }
    return App.uiutils.showModal({
      title: 'Delete User?',
      icon: 'warning',
      type: 'warning',
      body: 'Are you sure you want to delete this User? This cannot be undone and all associated data will be lost.',
      on_save: (function(_this) {
        return function() {
          return _this.model.destroy({
            success: function() {
              _this.model.collection.remove(_this.model);
              return App.vent.trigger("app:update");
            }
          });
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
    if (pw !== '') {
      if (pw !== pwc) {
        this.ui.pw.closest('.form-group').addClass('has-error');
        this.ui.pwc.closest('.form-group').addClass('has-error');
        res = res && false;
      } else {
        this.model.set("password", pw);
      }
    }
    return res;
  };

  UserView.prototype.save = function() {
    var roles, settings;
    if (!this.validate()) {
      return;
    }
    settings = this.model.get('settings') || {};
    settings = $.extend(true, {}, settings);
    settings.phone1 = this.ui.phone1.val();
    settings.phone2 = this.ui.phone2.val();
    this.model.set('settings', settings);
    roles = [];
    this.$('select.roleselect').each(function() {
      var v;
      v = $(this).val();
      if ((v != null) && v.length > 0) {
        return roles = roles.concat(v);
      }
    });
    this.model.set('roles', roles);
    return this.model.save(null, {
      success: (function(_this) {
        return function() {
          delete _this.model.attributes['password'];
          return _this.render();
        };
      })(this)
    });
  };

  UserView.prototype.onRender = function() {
    this.toggle_edit(false);
    return this.modelBinder.bind(this.model, this.el, this.bindings);
  };

  UserView.prototype.onShow = function() {
    var settings;
    if ((this.model.id == null) || this.model.id < 1) {
      this.$("#delete").hide();
      settings = this.model.get('settings') || {};
      if (settings.phone1) {
        this.ui.phone1.val(settings.phone1);
      }
      if (settings.phone2) {
        this.ui.phone2.val(settings.phone2);
      }
      this.show_edit();
    }
    return App.new_user = this.model;
  };

  return UserView;

})(Marionette.ItemView);

module.exports = UserView;

},{"../../../models/user":21}],50:[function(require,module,exports){
var Marionette, RoleCollection, UserCollection, UsersLayout, UsersView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UsersView = require('./users_view');

UserCollection = require('../../../models/user_collection');

RoleCollection = require('../../../models/role_collection');

UsersLayout = (function(superClass) {
  extend(UsersLayout, superClass);

  function UsersLayout() {
    this.rebuild_view = bind(this.rebuild_view, this);
    this.onShow = bind(this.onShow, this);
    this.update_filter = bind(this.update_filter, this);
    return UsersLayout.__super__.constructor.apply(this, arguments);
  }

  UsersLayout.prototype.template = "forms/manage_permissions/users_layout";

  UsersLayout.prototype.regions = {
    users_region: '#users_region'
  };

  UsersLayout.prototype.ui = {
    filter: 'input#filter'
  };

  UsersLayout.prototype.events = {
    'click #add_user': 'add_user',
    'keyup input#filter': 'update_filter'
  };

  UsersLayout.prototype.update_filter = function() {
    var search;
    if (this.usersview == null) {
      return;
    }
    search = this.ui.filter.val();
    if ((search != null) && search !== '') {
      this.usersview.filter = function(child, index, collection) {
        var rg;
        rg = new RegExp(search, 'i');
        return child.get('firstName').match(rg) || child.get('lastName').match(rg);
      };
    } else {
      this.usersview.filter = null;
    }
    return this.usersview.render();
  };

  UsersLayout.prototype.add_user = function() {
    var c, i, len, ref;
    if ((this.users == null) || (this.users.models == null)) {
      return;
    }
    ref = this.users.models;
    for (i = 0, len = ref.length; i < len; i++) {
      c = ref[i];
      if ((c.id == null) || c.id === 0) {
        return false;
      }
    }
    return this.users.add({}, {
      at: 0
    });
  };

  UsersLayout.prototype.onShow = function() {
    App.roles = new RoleCollection();
    return App.roles.fetch({
      success: (function(_this) {
        return function() {
          return _this.rebuild_view();
        };
      })(this)
    });
  };

  UsersLayout.prototype.rebuild_view = function() {
    this.$('.loading').show();
    this.$('.preamble').hide();
    this.users = new UserCollection();
    return this.users.fetch({
      success: (function(_this) {
        return function() {
          _this.$('.loading').hide();
          _this.$('.preamble').show();
          _this.usersview = new UsersView({
            collection: _this.users
          });
          return _this.users_region.show(_this.usersview);
        };
      })(this),
      error: (function(_this) {
        return function() {
          return App.log('error loading Users');
        };
      })(this)
    });
  };

  return UsersLayout;

})(Marionette.LayoutView);

module.exports = UsersLayout;

},{"../../../models/role_collection":17,"../../../models/user_collection":22,"./users_view":51}],51:[function(require,module,exports){
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

  UsersView.prototype.childView = UserView;

  UsersView.prototype.viewComparator = 'lastName';

  return UsersView;

})(Marionette.CollectionView);

module.exports = UsersView;

},{"../../../models/user_collection":22,"./user_view":49}],52:[function(require,module,exports){
var Marionette, ProfileView, UIUtils,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UIUtils = require('../../common/uiutils');

ProfileView = (function(superClass) {
  extend(ProfileView, superClass);

  function ProfileView() {
    return ProfileView.__super__.constructor.apply(this, arguments);
  }

  ProfileView.prototype.template = "forms/profile";

  ProfileView.prototype.events = {
    'click button.save': 'save'
  };

  ProfileView.prototype.bindings = {
    firstName: '#firstName',
    lastName: '#lastName',
    email: '#email'
  };

  ProfileView.prototype.ui = {
    alertContainer: '#alertContainer',
    firstName: 'input#firstName',
    lastName: 'input#lastName',
    email: 'input#email',
    phone1: 'input#phone1',
    phone2: 'input#phone2',
    pw: 'input#password',
    pwc: 'input#password_confirmation'
  };

  ProfileView.prototype.initialize = function() {
    return this.modelBinder = new Backbone.ModelBinder();
  };

  ProfileView.prototype.onRender = function() {
    return this.modelBinder.bind(this.model, this.el, this.bindings);
  };

  ProfileView.prototype.onShow = function() {
    var settings;
    settings = this.model.get('settings') || {};
    if (settings.phone1) {
      this.ui.phone1.val(settings.phone1);
    }
    if (settings.phone2) {
      return this.ui.phone2.val(settings.phone2);
    }
  };

  ProfileView.prototype.valid_email = function(eml) {
    var e;
    if ((eml == null) || eml.trim() === '') {
      return false;
    }
    e = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    return e.test(eml);
  };

  ProfileView.prototype.validate = function() {
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

  ProfileView.prototype.save = function() {
    var pw, settings;
    UIUtils.clearAlerts(this.ui.alertContainer);
    if (!this.validate()) {
      return;
    }
    settings = this.model.get('settings') || {};
    settings = $.extend(true, {}, settings);
    settings.phone1 = this.ui.phone1.val();
    settings.phone2 = this.ui.phone2.val();
    this.model.set('settings', settings);
    pw = this.ui.pw.val();
    if (pw.trim() === '') {
      delete this.model.attributes['password'];
    } else {
      this.model.set('password', pw);
    }
    return this.model.save(null, {
      success: (function(_this) {
        return function() {
          UIUtils.showAlert(_this.ui.alertContainer, {
            title: "Profile Saved.",
            message: "",
            type: "success",
            icon: "thumbs-up"
          });
          _this.ui.pw.val('');
          _this.ui.pwc.val('');
          return delete _this.model.attributes['password'];
        };
      })(this),
      error: (function(_this) {
        return function(m, err) {
          UIUtils.showAlert(_this.ui.alertContainer, {
            title: "ERROR!",
            message: (err != null) && (err.responseJSON != null) ? err.responseJSON.message : '',
            type: "error",
            icon: "warning"
          });
          return delete _this.model.attributes['password'];
        };
      })(this)
    });
  };

  return ProfileView;

})(Marionette.ItemView);

module.exports = ProfileView;

},{"../../common/uiutils":7}],53:[function(require,module,exports){
var LoginView, Marionette, Session, UIUtils,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

UIUtils = require('../common/uiutils');

Session = require('../models/session');

LoginView = (function(superClass) {
  extend(LoginView, superClass);

  function LoginView() {
    this.iforgot = bind(this.iforgot, this);
    this.reset = bind(this.reset, this);
    return LoginView.__super__.constructor.apply(this, arguments);
  }

  LoginView.prototype.template = "login";

  LoginView.prototype.events = {
    'submit form': 'login',
    'click #iforgot': 'iforgot',
    'click #reset': 'reset'
  };

  LoginView.prototype.ui = {
    email: "input#email",
    password: "input#password",
    remember: "input#remember",
    login: "button#login",
    acontainer: "#alert-container",
    loginform: "#loginform",
    forgotform: "#forgotform",
    forgotemail: "#forgotemail",
    iforgot: "#iforgot",
    reset: '#reset'
  };

  LoginView.prototype.reset = function(e) {
    return e.preventDefault();
  };

  LoginView.prototype.iforgot = function(e) {
    e.preventDefault();
    this.ui.loginform.hide();
    return this.ui.forgotform.show();
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
        return App.refresh_accounts(function() {
          return App.router.navigate('', {
            trigger: true
          });
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

},{"../common/uiutils":7,"../models/session":18}],54:[function(require,module,exports){
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

},{"../common/uiutils":7,"../models/session":18}],55:[function(require,module,exports){
var AirportWidgetView, IOPSWidgetView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

AirportWidgetView = (function(superClass) {
  extend(AirportWidgetView, superClass);

  function AirportWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return AirportWidgetView.__super__.constructor.apply(this, arguments);
  }

  AirportWidgetView.prototype.template = "widgets/airport_widget";

  AirportWidgetView.prototype.className = 'widget-outer box box-primary airport_widget';

  AirportWidgetView.prototype.ui = {
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

  AirportWidgetView.layout = {
    sx: 9,
    sy: 9
  };

  AirportWidgetView.prototype.tags = {};

  AirportWidgetView.prototype.update = function() {
    var $w, classList, g, gate, i, lbl, len, ref, s, t, tags, term, terminals, z, zone;
    this.update_settings({
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.',
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    });
    s = this.model.get("settings");
    if ((s != null) && !!s.site) {
      $w = $("div.airport_widget");
      classList = $w.attr('class').split(/\s+/);
      $.each(classList, function(index, item) {
        if (item.match(/\b\w+(_account\b)/) !== null) {
          $w.removeClass(item);
        }
      });
      $w.addClass(this.site_code + "_account");
      this.gateData = [];
      tags = [];
      terminals = this.site_settings.zones;
      for (t in terminals) {
        term = terminals[t];
        for (z in term) {
          zone = term[z];
          for (g in zone) {
            gate = {
              Number: "" + g,
              Terminal: "" + t,
              Zone: "" + z,
              Tag_gate_alarm: "Airport." + this.site_code + ".Term" + t + ".Zone" + z + ".Gate" + g + ".Alarm._HasAlarms",
              Tag_gate_critical: "Airport." + this.site_code + ".Term" + t + ".Zone" + z + ".Gate" + g + ".PBB.AUTOLEVEL_FAIL_FLAG",
              Tag_gate_docked: "Airport." + this.site_code + ".Term" + t + ".Zone" + z + ".Gate" + g + ".PBB.AUTOLEVELING"
            };
            this.gateData.push(gate);
            tags.push(gate.Tag_gate_alarm + ".Value");
            tags.push(gate.Tag_gate_warning + ".Value");
            tags.push(gate.Tag_gate_docked + ".Value");
          }
        }
      }
      this.$("#Airport_Overview").remove();
      this.$(".display").append("<div id='Airport_Overview' class='" + this.site_code + "_Term_Overview'>\n  <div id='layout_container'>\n    <img id='layout' src='img/airport/" + this.site_code + "/" + this.site_code + "_Term_Overview.png'></img>\n  </div>\n</div>");
      ref = this.gateData;
      for (i = 0, len = ref.length; i < len; i++) {
        g = ref[i];
        this.$("#layout_container").append("<div id='Airport_Gate_" + g.Number + "_a'><div class='icon'></div></div>");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      this.opc = App.opc.connections[this.site_code];
      lbl = this.site_code + " Airport Overview";
      this.ui.wtitle.html(lbl);
      return this.$('#display_label #txt').html(lbl);
    }
  };

  AirportWidgetView.prototype.data_update = function(data) {
    var a, alarm, bad_q, docked, g, i, len, qa, qd, qw, ref, warning;
    ref = this.gateData;
    for (i = 0, len = ref.length; i < len; i++) {
      g = ref[i];
      docked = this.get_bool(this.opc.get_value(g.Tag_gate_docked + ".Value"));
      warning = this.get_bool(this.opc.get_value(g.Tag_gate_alarm + ".Value"));
      alarm = this.get_bool(this.opc.get_value(g.Tag_gate_critical + ".Value"));
      qd = this.opc.tags["" + g.Tag_gate_docked].props.Value.quality;
      qa = this.opc.tags["" + g.Tag_gate_alarm].props.Value.quality;
      qw = this.opc.tags["" + g.Tag_gate_warning].props.Value.quality;
      bad_q = !qa || !qw;
      this.$("#Airport_Gate_" + g.Number + "_a").toggleClass("docked", docked && qd).toggleClass("bad_data", !qd);
      if (alarm === true) {
        a = this.$("#Airport_Gate_" + g.Number + "_a .icon #alarm");
        if ((a == null) || a.length === 0) {
          this.$("#Airport_Gate_" + g.Number + "_a .icon").append("<i id='alarm' class='fa fa-warning alarm blink'></i>");
        }
      } else {
        this.$("#Airport_Gate_" + g.Number + "_a .icon #alarm").remove();
      }
      if (warning === true && alarm === false) {
        a = this.$("#Airport_Gate_" + g.Number + "_a .icon #warning");
        if ((a == null) || a.length === 0) {
          this.$("#Airport_Gate_" + g.Number + "_a .icon").append("<i id='warning' class='fa fa-warning warning'></i>");
        }
      } else {
        this.$("#Airport_Gate_" + g.Number + "_a .icon #warning").remove();
      }
    }
    return this;
  };

  AirportWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    return this.model.set("settings", s);
  };

  AirportWidgetView.prototype.toggle_settings = function(e) {
    AirportWidgetView.__super__.toggle_settings.call(this, e);
    this.ui.display.toggle(!this.settings_visible);
    if (this.settings_visible) {
      return this.ui.site.chosen({
        width: '95%'
      });
    }
  };

  AirportWidgetView.prototype.onShow = function() {
    var settings, site;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.$('#site').on('change', (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    site = settings.site;
    if ((site == null) || site === '') {
      return this.toggle_settings();
    }
  };

  AirportWidgetView.prototype.start = function() {
    return this.update();
  };

  AirportWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return AirportWidgetView;

})(IOPSWidgetView);

window.AirportWidgetView = AirportWidgetView;

module.exports = AirportWidgetView;

},{"./iops_widget_view":60}],56:[function(require,module,exports){
var AlarmWidgetView, IOPSWidgetView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

AlarmWidgetView = (function(superClass) {
  extend(AlarmWidgetView, superClass);

  function AlarmWidgetView() {
    this.set_model = bind(this.set_model, this);
    return AlarmWidgetView.__super__.constructor.apply(this, arguments);
  }

  AlarmWidgetView.prototype.template = "widgets/alarm_widget";

  AlarmWidgetView.prototype.className = 'widget-outer box box-primary alarm_widget';

  AlarmWidgetView.prototype.ui = {
    site: 'select#site',
    type: 'select#type',
    wtitle: "h3.box-title",
    display: '.display',
    content: '.content',
    allgates: '#allgates'
  };

  AlarmWidgetView.layout = {
    sx: 10,
    sy: 10
  };

  AlarmWidgetView.prototype.update = function() {
    var alarms, gate, gates, gpu, groups, notifications, obj, obj1, obj2, p, pbb, pca, pre, s, t, term, terminals, tzg, zone, zones;
    if (this.site_code != null) {
      this.kill_updates(this.site_code);
    }
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      groups = [];
      terminals = (
        obj = {},
        obj["" + s.terminal] = (
          obj1 = {},
          obj1["" + s.zone] = (
            obj2 = {},
            obj2["" + s.gate] = {},
            obj2
          ),
          obj1
        ),
        obj
      );
      if (s.allgates) {
        terminals = this.site.get('settings').zones;
      }
      for (term in terminals) {
        zones = terminals[term];
        for (zone in zones) {
          gates = zones[zone];
          for (gate in gates) {
            pre = "Airport_" + this.site_code + "_Term" + term + "_Zone" + zone + "_Gate" + gate + "_";
            p = s.priority == null ? 'all' : s.priority;
            t = s.type == null ? 'all' : s.type;
            alarms = p === 'all' || p === 'alarms';
            notifications = p === 'all' || p === 'notifications';
            pbb = t === 'all' || t === 'PBB';
            pca = t === 'all' || t === 'PCA';
            gpu = t === 'all' || t === 'GPU';
            if (alarms) {
              if (pbb) {
                groups.push(pre + "PBB_Alarms");
              }
              if (pca) {
                groups.push(pre + "PCA_Alarms");
              }
              if (gpu) {
                groups.push(pre + "GPU_Alarms");
              }
            }
            if (notifications) {
              if (pbb) {
                groups.push(pre + "PBB_Warnings");
              }
              if (pca) {
                groups.push(pre + "PCA_Warnings");
              }
              if (gpu) {
                groups.push(pre + "GPU_Warnings");
              }
            }
          }
        }
      }
      this.alarm_binding = {
        alarmid: "" + this.alarmid,
        showSearch: false,
        showHistory: false,
        filter: {
          alarmtypes: ["Digital"],
          alarmgroups: groups
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
            name: "Acked",
            text: "Acked",
            type: "boolean",
            visible: false
          }
        ]
      };
      if (this.site_code != null) {
        p = alarms ? "Alarms" : '';
        if (notifications) {
          if (p !== '') {
            p += ' &amp; ';
          }
          p += "Notifications";
        }
        t = pbb ? "PBB" : '';
        if (pca) {
          if (t !== '') {
            t += ', ';
          }
          t += 'PCA';
        }
        if (gpu) {
          if (t !== '') {
            t += ', ';
          }
          t += 'GPU';
        }
        tzg = s.allgates ? "<b>All Gates</b>" : "Terminal " + s.terminal + " Zone " + s.zone + " <b>Gate " + s.gate + "</b>";
        this.$("#alarm_lbl").html("<b>" + this.site_code + "</b> " + tzg + " | <b>" + t + "</b> | <b>" + p + "</b>");
        App.opc.add_alarm(this.site_code, this.alarm_binding);
        return this.watch_updates(this.site_code);
      }
    }
  };

  AlarmWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.ui.site.val();
    s.terminal = this.$("select#terminal").val();
    s.zone = this.$("select#zone").val();
    s.gate = this.$("select#gate").val();
    s.type = this.ui.type.val();
    s.priority = this.$("[name=priority_" + this.cid + "]:checked").val();
    s.allgates = this.$("#allgates").is(':checked');
    console.log(s.allgates);
    return this.model.set("settings", s);
  };

  AlarmWidgetView.prototype.toggle_settings = function(e) {
    var checked;
    AlarmWidgetView.__super__.toggle_settings.call(this, e);
    this.ui.display.toggle(!this.settings_visible);
    if (this.settings_visible) {
      this.ui.type.chosen();
    }
    checked = this.$("#allgates").is(':checked');
    return this.$(".gates").toggle(!checked);
  };

  AlarmWidgetView.prototype.onShow = function() {
    var a, ag, gate, p, settings;
    this.alarmid = "alarm_" + this.model.id + "_" + this.cid;
    a = this.$(".display #" + this.alarmid);
    if ((a == null) || a.length === 0) {
      a = $("<div id='" + this.alarmid + "'></div>");
      this.$('.display').append(a);
    }
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.ui.site.on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    this.ui.type.val(settings.type);
    this.ui.type.on('change', (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    p = settings.priority;
    if ((p != null) && p === 'alarms') {
      $("#p_alarms").prop("checked", true);
    }
    if ((p != null) && p === 'notifications') {
      $("#p_notifications").prop("checked", true);
    }
    if ((p == null) || p === 'all') {
      $("#p_all").prop("checked", true);
    }
    this.$("[name=priority]").attr('name', "priority_" + this.cid);
    this.$("[name=priority_" + this.cid + "]").on('change', (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    ag = settings.allgates;
    $("#allgates").prop("checked", ag);
    this.ui.allgates.on('change', (function(_this) {
      return function() {
        var checked;
        _this.set_model();
        checked = _this.$("#allgates").is(':checked');
        return _this.$(".gates").toggle(!checked);
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  AlarmWidgetView.prototype.start = function() {
    return this.update();
  };

  AlarmWidgetView.prototype.onDestroy = function(arg1, arg2) {
    if (this.alarm_binding != null) {
      App.opc.rem_alarm(this.site_code, this.alarm_binding);
    }
    return this.kill_updates(this.site_code);
  };

  return AlarmWidgetView;

})(IOPSWidgetView);

window.AlarmWidgetView = AlarmWidgetView;

module.exports = AlarmWidgetView;

},{"./iops_widget_view":60}],57:[function(require,module,exports){
var ConfigWidgetView, IOPSWidgetView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

ConfigWidgetView = (function(superClass) {
  extend(ConfigWidgetView, superClass);

  function ConfigWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.set_points = bind(this.set_points, this);
    this.data_update = bind(this.data_update, this);
    return ConfigWidgetView.__super__.constructor.apply(this, arguments);
  }

  ConfigWidgetView.prototype.template = "widgets/config_widget";

  ConfigWidgetView.prototype.className = 'widget-outer box box-primary gate_widget';

  ConfigWidgetView.prototype.ui = {
    display: '#display',
    settings: '#settings'
  };

  ConfigWidgetView.layout = {
    sx: 4,
    sy: 5
  };

  ConfigWidgetView.prototype.tags = {
    cooling_pt: 'PCA.SET_COOLINGPOINT.Value',
    heating_pt: 'PCA.SET_HEATINGPOINT.Value',
    cooling_tm: 'PCA.SET_COOLINGPOINT_TIMER.Value',
    heating_tm: 'PCA.SET_HEATINGPOINT_TIMER.Value'
  };

  ConfigWidgetView.prototype.base_tags = [];

  ConfigWidgetView.prototype.update = function() {
    var g, pre, s, settings, t, tag, term, terminals, tg, z, zn;
    if (this.site_code != null) {
      this.kill_updates(this.site_code);
    }
    s = this.model.get("settings");
    if ((s != null) && !!s.site) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
    }
    this.$('h3.box-title').html("Configure (" + this.site_code + ")");
    this.base_tags = [];
    if (this.site != null) {
      settings = this.site.get('settings') || {};
      terminals = settings.zones || {};
      for (t in terminals) {
        term = terminals[t];
        for (z in term) {
          zn = term[z];
          for (g in zn) {
            pre = "Airport." + this.site_code + ".Term" + t + ".Zone" + z + ".Gate" + g + ".";
            for (tg in this.tags) {
              tag = this.tags[tg];
              this.base_tags.push("" + pre + tag);
            }
          }
        }
      }
    }
    if (this.base_tags.length > 0) {
      App.opc.add_tags(this.site_code, this.base_tags);
      this.opc = App.opc.connections[this.site_code];
      return this.watch_updates(this.site_code);
    }
  };

  ConfigWidgetView.prototype.data_update = function(data) {
    var cool, cool_tm, heat, heat_tm, i, len, ref, t, v;
    if ((data != null) && (data.tags != null) && data.tags.length > 0) {
      cool = 0;
      heat = 0;
      cool_tm = 0;
      heat_tm = 0;
      ref = data.tags;
      for (i = 0, len = ref.length; i < len; i++) {
        t = ref[i];
        if (t.name.endsWith("PCA.SET_COOLINGPOINT")) {
          v = t.props[0].val;
          v = (v != null) && v !== '' ? parseFloat(v) : 0;
          cool = v > cool ? v : cool;
        }
        if (t.name.endsWith("PCA.SET_COOLINGPOINT_TIMER")) {
          v = t.props[0].val;
          v = (v != null) && v !== '' ? parseFloat(v) : 0;
          cool_tm = v > cool_tm ? v : cool_tm;
        }
        if (t.name.endsWith("PCA.SET_HEATINGPOINT")) {
          v = t.props[0].val;
          v = (v != null) && v !== '' ? parseFloat(v) : 0;
          heat = v > heat ? v : heat;
        }
        if (t.name.endsWith("PCA.SET_HEATINGPOINT_TIMER")) {
          v = t.props[0].val;
          v = (v != null) && v !== '' ? parseFloat(v) : 0;
          heat_tm = v > heat_tm ? v : heat_tm;
        }
      }
      this.$('input#cool_set').val(cool);
      this.$('input#heat_set').val(heat);
      this.$('input#cool_set_tm').val(cool_tm);
      this.$('input#heat_set_tm').val(heat_tm);
    }
    return this.kill_updates(this.site_code);
  };

  ConfigWidgetView.prototype.set_points = function(e) {
    var g, pre, results, settings, t, term, terminals, z, zn;
    e.preventDefault();
    if (this.site != null) {
      settings = this.site.get('settings') || {};
      terminals = settings.zones || {};
      results = [];
      for (t in terminals) {
        term = terminals[t];
        results.push((function() {
          var results1;
          results1 = [];
          for (z in term) {
            zn = term[z];
            results1.push((function() {
              var results2;
              results2 = [];
              for (g in zn) {
                pre = "Airport." + this.site_code + ".Term" + t + ".Zone" + z + ".Gate" + g + ".";
                this.opc.set_value("" + pre + this.tags.cooling_pt, this.$('input#cool_set').val());
                this.opc.set_value("" + pre + this.tags.heating_pt, this.$('input#heat_set').val());
                this.opc.set_value("" + pre + this.tags.cooling_tm, this.$('input#cool_set_tm').val());
                results2.push(this.opc.set_value("" + pre + this.tags.heating_tm, this.$('input#heat_set_tm').val()));
              }
              return results2;
            }).call(this));
          }
          return results1;
        }).call(this));
      }
      return results;
    }
  };

  ConfigWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    return this.model.set("settings", s);
  };

  ConfigWidgetView.prototype.toggle_settings = function(e) {
    ConfigWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  ConfigWidgetView.prototype.onShow = function() {
    var settings, site;
    settings = this.model.get('settings');
    settings || (settings = {});
    site = settings.site;
    if ((site == null) || site === '') {
      this.toggle_settings();
    }
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    return this.$('#set_pca_points').click(this.set_points);
  };

  ConfigWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return ConfigWidgetView;

})(IOPSWidgetView);

window.ConfigWidgetView = ConfigWidgetView;

module.exports = ConfigWidgetView;

},{"./iops_widget_view":60}],58:[function(require,module,exports){
var GpusummaryWidgetView, IOPSWidgetView, Marionette, UIUtils,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

UIUtils = require('../../common/uiutils');

GpusummaryWidgetView = (function(superClass) {
  extend(GpusummaryWidgetView, superClass);

  function GpusummaryWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.configure_buttons = bind(this.configure_buttons, this);
    this.show_plot = bind(this.show_plot, this);
    this.data_update = bind(this.data_update, this);
    this.trend_callback = bind(this.trend_callback, this);
    return GpusummaryWidgetView.__super__.constructor.apply(this, arguments);
  }

  GpusummaryWidgetView.prototype.template = "widgets/gpu_summary_widget";

  GpusummaryWidgetView.prototype.className = 'widget-outer box box-primary gpu_summary_widget';

  GpusummaryWidgetView.prototype.ui = {
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
    warnings: 'i#warnings',
    main_view: 'div#gpu_main_view',
    gpu_image: 'div#gpu_image',
    power_indicator: 'span#power_indicator',
    view_volts_in: 'div#view_volts_in',
    plot_volts_in: 'div#plot_volts_in',
    view_volts_out: 'div#view_volts_out',
    plot_volts_out: 'div#plot_volts_out',
    view_amps_out: 'div#view_amps_out',
    plot_amps_out: 'div#plot_amps_out',
    toggle_volts_in: 'a#toggle_volts_in',
    toggle_volts_out: 'a#toggle_volts_out',
    toggle_amps_out: 'a#toggle_amps_out'
  };

  GpusummaryWidgetView.layout = {
    sx: 8,
    sy: 9
  };

  GpusummaryWidgetView.prototype.tags = {
    gpu_time: 'GPU.GPUTime',
    gpu_gpustatusb: 'GPU.GPUSTATUSBOOLEAN',
    gpu_raoutavg: 'GPU.RAOUTAVG',
    gpu_rvoutavg: 'GPU.RVOUTAVG',
    gpu_ravinavg: 'GPU.RAVINAVG',
    gpu_rvinavg: 'GPU.RVINAVG'
  };

  GpusummaryWidgetView.prototype.initialize = function() {};

  GpusummaryWidgetView.prototype.render_gauges = function() {
    var aid, vid;
    vid = "gauge_volts_out_" + this.model.id;
    this.$('#view_main').append("<div id='" + vid + "'><div class='bad_data' style='display:none;'>BAD DATA</div></div>");
    return this.g1 = new JustGage({
      id: vid,
      title: ' ',
      label: 'Output Voltage',
      value: 0,
      parseTime: false,
      min: 0,
      max: 125,
      symbol: ' V',
      relativeGaugeSize: true,
      shadowOpacity: 1,
      shadowSize: 5,
      shadowVerticalOffset: 10,
      pointer: true,
      pointerOptions: {
        toplength: -5,
        bottomlength: 20,
        bottomwidth: 3,
        color: '#000',
        stroke: '#ffffff',
        stroke_width: 1,
        stroke_linecap: 'round'
      },
      gaugeWidthScale: 0.6,
      customSectors: [
        {
          color: '#000000',
          lo: 0,
          hi: 2
        }, {
          color: '#ff3333',
          lo: 3,
          hi: 99
        }, {
          color: '#ffcc66',
          lo: 100,
          hi: 102
        }, {
          color: '#00b300',
          lo: 103,
          hi: 116
        }, {
          color: '#ffcc66',
          lo: 117,
          hi: 119
        }, {
          color: '#ff3333',
          lo: 120,
          hi: 150
        }
      ],
      counter: true
    }, aid = "gauge_amps_out_" + this.model.id, this.$('#view_main').append("<div id='" + aid + "'><div class='bad_data' style='display:none;'>BAD DATA</div></div>"), this.g2 = new JustGage({
      id: aid,
      title: ' ',
      label: 'Output Amperage',
      value: 0,
      parseTime: false,
      min: 0,
      max: 150,
      symbol: ' A',
      relativeGaugeSize: true,
      shadowOpacity: 1,
      shadowSize: 5,
      shadowVerticalOffset: 10,
      pointer: true,
      pointerOptions: {
        toplength: -5,
        bottomlength: 20,
        bottomwidth: 3,
        color: '#000',
        stroke: '#ffffff',
        stroke_width: 1,
        stroke_linecap: 'round'
      },
      gaugeWidthScale: 0.6,
      customSectors: [
        {
          color: '#000000',
          lo: 0,
          hi: 1
        }, {
          color: '#ff3333',
          lo: 2,
          hi: 23
        }, {
          color: '#ffcc66',
          lo: 24,
          hi: 29
        }, {
          color: '#00b300',
          lo: 30,
          hi: 40
        }, {
          color: '#ffcc66',
          lo: 41,
          hi: 46
        }, {
          color: '#ff3333',
          lo: 47,
          hi: 70
        }
      ],
      counter: true
    }));
  };

  GpusummaryWidgetView.prototype.update = function() {
    var lbl, s, show_opts, t, tags, tg;
    this.update_settings({
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.',
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    });
    if (this.site_code == null) {
      return null;
    }
    s = this.model.get("settings");
    show_opts = (s != null) && !!s.gate;
    this.$('#mode').toggle(show_opts);
    if (show_opts) {
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      lbl = "GPU " + s.gate + " ";
      this.ui.wtitle.html(lbl);
      this.$('#gpu_summary_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.watch_updates(this.site_code);
    }
  };

  GpusummaryWidgetView.prototype.trend_callback = function(data) {
    var fd, i, j, k, len, markings, max, opts, p, ref, ref1, ref2, ref3, ref4, span, tm1, tm2, tt, x, y;
    this.$('#plot-placeholder').remove();
    this.tb = OPC.Trend.getTrendBinding(data);
    if (this.tb != null) {
      max = 0;
      if ((data.penvalues != null) && data.penvalues.length > 0) {
        ref = data.penvalues[0];
        for (i = 0, len = ref.length; i < len; i++) {
          p = ref[i];
          if (p !== '' && parseFloat(p) > max) {
            max = parseFloat(p);
          }
        }
      }
      max = max * 1.25;
      markings = [];
      fd = OPC.Flot.buildTrendData(data);
      tm1 = fd[0].data[0][0].getTime();
      tm2 = fd[0].data[fd[0].data.length - 1][0].getTime();
      span = Math.floor((tm2 - tm1) / 24);
      for (y = j = 0, ref1 = Math.floor(max) + 100; j <= ref1; y = j += 25) {
        markings.push({
          yaxis: {
            from: y,
            to: y
          },
          color: "#eee",
          lineWidth: 1
        });
      }
      for (x = k = ref2 = tm1, ref3 = tm2, ref4 = span; ref4 > 0 ? k <= ref3 : k >= ref3; x = k += ref4) {
        markings.push({
          xaxis: {
            from: x,
            to: x
          },
          color: "#eee",
          lineWidth: 1
        });
      }
      opts = {
        series: {
          shadowSize: 0
        },
        lines: {
          show: true,
          fill: true
        },
        grid: {
          hoverable: true,
          clickable: true,
          autoHighlight: false,
          color: "transparent",
          borderColor: "#666",
          borderWidth: 1,
          markings: markings
        },
        crosshair: {
          mode: "x"
        },
        legend: {
          backgroundOpacity: 0.3
        },
        xaxis: {
          mode: "time",
          font: {
            size: 10,
            lineHeight: 10,
            family: "sans-serif",
            color: "#000000"
          },
          tickSize: [2, "second"],
          tickFormatter: (function(_this) {
            return function(v, axis) {
              var dt;
              dt = new Date(v);
              if (_this.tb.mode !== "history" && dt.getSeconds() % 30 === 0) {
                return OPC.Util.formatDate(dt, "mm/dd hh:MM:ss");
              }
              return "";
            };
          })(this)
        },
        yaxes: [
          {
            position: 'left',
            min: 0,
            max: max
          }
        ]
      };
      $.plot("#" + this.tb.chartid, fd, opts);
      if (this.initializing) {
        tt = this.$("#plot_tooltip");
        if ((tt == null) || tt.length === 0) {
          tt = $("<div id='plot_tooltip'></div>");
          tt.css({
            position: "absolute",
            border: "1px solid #666",
            padding: "2px",
            "background-color": "#fff",
            "border-radius": "5px",
            "box-shadow": "3px 3px 3px 0 rgba(0,0,0,0.1)",
            "z-index": 9999,
            opacity: 0.90
          }).appendTo("#plot_data");
        }
        this.$("#" + this.tb.chartid).bind("plothover", (function(_this) {
          return function(e, pos, item) {
            var dt, dts, hours, minutes, seconds;
            if (item == null) {
              return _this.$("#plot_tooltip").hide();
            } else {
              x = item.datapoint[0];
              y = item.datapoint[1].toFixed(2);
              dt = new Date(x);
              hours = UIUtils.lpad(dt.getHours(), 2, '0');
              minutes = UIUtils.lpad(dt.getMinutes(), 2, '0');
              seconds = UIUtils.lpad(dt.getSeconds(), 2, '0');
              dts = (dt.getMonth() + 1) + "/" + (dt.getDate()) + "/" + (dt.getFullYear()) + "<br/>" + hours + ":" + minutes + ":" + seconds;
              _this.$("#plot_tooltip").html(dts + "<br/><b>" + y + "</b>");
              _this.$("#plot_tooltip").css({
                top: item.pageY - 240,
                left: item.pageX - 440
              });
              return _this.$("#plot_tooltip").show();
            }
          };
        })(this));
      }
      return this.initializing = false;
    }
  };

  GpusummaryWidgetView.prototype.data_update = function(data) {
    var aq, cls, h, icn, m, s, sq, stat, t, th, txt, v, vq;
    this.refresh_values();
    vq = this.data_q(this.tags.gpu_rvoutavg);
    this.$("#gauge_volts_out_" + this.model.id + " .bad_data").toggle(!vq);
    v = this.vals.gpu_rvoutavg;
    if (vq && !isNaN(v) && v !== '') {
      this.g1.refresh(parseInt(v));
    }
    aq = this.data_q(this.tags.gpu_raoutavg);
    this.$("#gauge_amps_out_" + this.model.id + " .bad_data").toggle(!aq);
    v = this.vals.gpu_raoutavg;
    if (aq && !isNaN(v) && v !== '') {
      v = parseInt(parseInt(v));
      this.g2.refresh(v);
    }
    sq = this.data_q(this.tags.gpu_gpustatusb);
    stat = this.get_bool(this.vals.gpu_gpustatusb);
    th = "";
    icn = 'ban';
    cls = 'inactive';
    txt = 'BAD DATA';
    if (stat === true) {
      cls = 'active';
      txt = 'ON';
      icn = 'circle';
      t = parseFloat(this.vals.gpu_time);
      h = 0;
      m = Math.floor(t);
      s = Math.floor((t - m) * 60);
      if (m > 59) {
        h = Math.floor(m / 60);
        m = m - (h * 60);
      }
      th = "<i class='fa fa-clock-o'></i> " + (UIUtils.lpad(h, 2, '0')) + ":" + (UIUtils.lpad(m, 2, '0')) + ":" + (UIUtils.lpad(s, 2, '0'));
    } else if (stat === false) {
      cls = 'inactive';
      icn = 'circle-thin';
      txt = 'OFF';
    }
    this.$("#power_indicator").html("<div class='" + cls + "'><i class='fa fa-" + icn + "'></i> " + txt + "</div>");
    this.$("#txt_connected_time").html(th);
    return this;
  };

  GpusummaryWidgetView.prototype.show_plot = function(p, live) {
    var dtm, ed, h, lbl, now, parts, ph, pid, plot_color, ptype, sd, show_hist, tags;
    this.initializing = true;
    this.kill_updates(this.site_code);
    this.$("#plots").toggle(p != null);
    this.$("#view_main").toggle(p == null);
    ph = '';
    if (p != null) {
      parts = p.split('_');
      ph = parts.length > 1 ? parts[1].toUpperCase() : '';
      ptype = parts[0];
    }
    show_hist = (p != null) && !live;
    plot_color = "#80C3FF";
    switch (p) {
      case 'vin':
        lbl = 'Input Voltage';
        tags = [
          {
            tag: this.prefix + "GPU.RVINAVG.Value",
            fill: true,
            color: plot_color
          }
        ];
        break;
      case 'vin_a':
      case 'vin_b':
      case 'vin_c':
        lbl = "Input Voltage Phase " + ph;
        tags = [
          {
            tag: this.prefix + "GPU.PM_INPUT_PHASE" + ph + "_V.Value",
            fill: true,
            color: plot_color
          }
        ];
        break;
      case 'vout':
        lbl = 'Output Voltage';
        tags = [
          {
            tag: this.prefix + "GPU.RVOUTAVG.Value",
            fill: true,
            color: plot_color
          }
        ];
        break;
      case 'vout_a':
      case 'vout_b':
      case 'vout_c':
        lbl = "Output Voltage Phase " + ph;
        tags = [
          {
            tag: this.prefix + "GPU.PM_OUTPUT_PHASE" + ph + "_V.Value",
            fill: true,
            color: plot_color
          }
        ];
        break;
      case 'aout':
        lbl = 'Output Amperage';
        tags = [
          {
            tag: this.prefix + "GPU.RAOUTAVG.Value",
            fill: true,
            color: plot_color
          }
        ];
        break;
      case 'aout_a':
      case 'bout_b':
      case 'cout_c':
        lbl = "Output Amperage Phase " + ph;
        tags = [
          {
            tag: this.prefix + "GPU.PM_OUTPUT_PHASE" + ph + "_I.Value",
            fill: true,
            color: plot_color
          }
        ];
    }
    this.$('#ptype_lbl').html(lbl);
    this.$('#toggle_volts_in').toggle(ptype !== 'vin');
    this.$('#toggle_volts_out').toggle(ptype !== 'vout');
    this.$('#toggle_amps_out').toggle(ptype !== 'aout');
    this.$('#toggle_main').toggle(p != null);
    this.$('#plot-placeholder').remove();
    this.$("#plot_data").append("<div id='plot-placeholder' style='background-color:#eee;position:absolute;top:0;left:0;width:100%;'>\n  <div style='text-align:center;color:#666;font-size:18px;margin-top:20%;'><i class=\"fa fa-spinner fa-pulse\"></i> LOADING DATA...</div>\n</div>");
    h = this.$(".display").height();
    this.$("#plot-placeholder").css({
      "max-height": h + "px",
      "height": h + "px"
    });
    if (this.tbinding) {
      OPCManager.rem_trend(this.site_code, this.tbinding);
      this.$("#" + this.tbinding.chartid).remove();
    }
    if (p != null) {
      pid = p + "_" + this.model.id;
      this.$("#plot_data").append("<div id='" + pid + "' style='width:100%;height:100%;position:absolute;top:0;left:0;z-index:999;'></div>");
      this.tbinding = {
        chartid: "" + pid,
        samplerate: 1,
        timeframe: 50,
        tags: tags,
        retain: 50,
        callback: this.trend_callback
      };
      this.$(".display").resize((function(_this) {
        return function() {
          return _this.$("#plot_container").width('100%').height(_this.$(".display").height() - 20);
        };
      })(this));
      this.$("#plot_container").width('100%').height(this.$(".display").height() - 20);
      App.opc.add_trend(this.site_code, this.tbinding);
      if (show_hist) {
        dtm = new Date();
        sd = OPC.Util.formatDate(dtm, "mm/dd/yyyy 00:00:00");
        now = new Date();
        ed = OPC.Util.formatDate(dtm, "mm/dd/yyyy " + (now.getHours()) + ":" + (now.getMinutes()) + ":" + (now.getSeconds()));
        OPC.Trend.getHistoryData("" + pid, sd, ed);
        this.$("#live_data").off('change');
        this.$("#live_data").bootstrapToggle('off');
        this.$("#live_data").on('change', (function(_this) {
          return function(e) {
            var lv;
            lv = _this.$("#live_data").is(':checked');
            return _this.show_plot(_this.current_plot, lv);
          };
        })(this));
      }
    }
    this.current_plot = p;
    return this.watch_updates(this.site_code);
  };

  GpusummaryWidgetView.prototype.configure_buttons = function() {
    return this.$('#mode').change((function(_this) {
      return function(e) {
        var sel;
        sel = _this.$('#mode').val();
        sel = sel === '' ? null : sel;
        return _this.show_plot(sel);
      };
    })(this));
  };

  GpusummaryWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  GpusummaryWidgetView.prototype.toggle_settings = function(e) {
    GpusummaryWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  GpusummaryWidgetView.prototype.onShow = function() {
    var gate, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      this.watch_updates(this.site_code);
    }
    this.$("#view_main .trend").remove();
    this.$('#live_data').bootstrapToggle({
      width: 50,
      height: 25
    });
    this.$("a.plot_type").click((function(_this) {
      return function(e) {
        var cp, id, tpe;
        e.preventDefault();
        id = $(e.target).attr('id');
        tpe = id.split('_')[1];
        cp = _this.current_plot.split('_')[0];
        return _this.show_plot(cp + "_" + tpe, _this.$("#live_data").is(":checked"));
      };
    })(this));
    this.configure_buttons();
    return this.render_gauges();
  };

  GpusummaryWidgetView.prototype.start = function() {
    return this.update();
  };

  GpusummaryWidgetView.prototype.onDestroy = function(arg1, arg2) {
    if (this.tbinding) {
      OPCManager.rem_trend(this.site_code, this.tbinding);
    }
    return this.kill_updates(this.site_code);
  };

  return GpusummaryWidgetView;

})(IOPSWidgetView);

window.GpusummaryWidgetView = GpusummaryWidgetView;

module.exports = GpusummaryWidgetView;

},{"../../common/uiutils":7,"./iops_widget_view":60}],59:[function(require,module,exports){
var GpuWidgetView, IOPSWidgetView, Marionette,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

GpuWidgetView = (function(superClass) {
  extend(GpuWidgetView, superClass);

  function GpuWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return GpuWidgetView.__super__.constructor.apply(this, arguments);
  }

  GpuWidgetView.prototype.template = "widgets/gpu_widget";

  GpuWidgetView.prototype.className = 'widget-outer box box-primary gpu_widget';

  GpuWidgetView.prototype.ui = {
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

  GpuWidgetView.layout = {
    sx: 5,
    sy: 14
  };

  GpuWidgetView.prototype.tags = {
    gpu_gpustatus: 'GPU.GPUSTATUSBOOLEAN',
    gpu_bypass: 'GPU.ByPass',
    gpu_raoutavg: 'GPU.RAOUTAVG',
    gpu_rvoutavg: 'GPU.RVOUTAVG',
    gpu_ravinavg: 'GPU.RAINAVG',
    gpu_rvinavg: 'GPU.RVINAVG',
    gpu_pm_output_phasea_i: 'GPU.PM_OUTPUT_PHASEA_I',
    gpu_pm_output_phaseb_i: 'GPU.PM_OUTPUT_PHASEB_I',
    gpu_pm_output_phasec_i: 'GPU.PM_OUTPUT_PHASEC_I',
    gpu_pm_output_phasea_v: 'GPU.PM_OUTPUT_PHASEA_V',
    gpu_pm_output_phaseb_v: 'GPU.PM_OUTPUT_PHASEB_V',
    gpu_pm_output_phasec_v: 'GPU.PM_OUTPUT_PHASEC_V',
    gpu_pm_input_phasea_i: 'GPU.PM_INPUT_PHASEA_I',
    gpu_pm_input_phaseb_i: 'GPU.PM_INPUT_PHASEB_I',
    gpu_pm_input_phasec_i: 'GPU.PM_INPUT_PHASEC_I',
    gpu_pm_input_phasea_v: 'GPU.PM_INPUT_PHASEA_V',
    gpu_pm_input_phaseb_v: 'GPU.PM_INPUT_PHASEB_V',
    gpu_pm_input_phasec_v: 'GPU.PM_INPUT_PHASEC_V',
    gpu_on_1: 'GPU.ON 1',
    gpu_on_2: 'GPU.ON 2'
  };

  GpuWidgetView.prototype.update = function() {
    var cloud, lbl, s, settings, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      settings = this.site.get('settings');
      settings || (settings = {});
      cloud = settings.cloud ? "RemoteSCADAHosting.Airport-" + this.site_code + "." : '';
      this.prefix = cloud + "Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + s.gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      lbl = "GPU " + s.gate + " - Details";
      this.ui.wtitle.html(lbl);
      this.$('#gpu_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  GpuWidgetView.prototype.data_update = function(data) {
    var tg;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    this.render_row("gpu_gpustatus", "On", "Off", "ok");
    this.render_row("gpu_bypass", "Down", "Up", "ok");
    this.render_value_row("gpu_raoutavg", true, 1, "Amps");
    this.render_value_row("gpu_rvoutavg", true, 1, "Volts");
    this.render_value_row("gpu_ravinavg", true, 1, "Amps");
    this.render_value_row("gpu_rvinavg", true, 1, "Volts");
    this.render_value_row("gpu_pm_output_phasea_i", true, 1, "Amps");
    this.render_value_row("gpu_pm_output_phaseb_i", true, 1, "Amps");
    this.render_value_row("gpu_pm_output_phasec_i", true, 1, "Amps");
    this.render_value_row("gpu_pm_output_phasea_v", true, 1, "Volts");
    this.render_value_row("gpu_pm_output_phaseb_v", true, 1, "Volts");
    this.render_value_row("gpu_pm_output_phasec_v", true, 1, "Volts");
    this.render_value_row("gpu_pm_input_phasea_i", true, 1, "Amps");
    this.render_value_row("gpu_pm_input_phaseb_i", true, 1, "Amps");
    this.render_value_row("gpu_pm_input_phasec_i", true, 1, "Amps");
    this.render_value_row("gpu_pm_input_phasea_v", true, 1, "Volts");
    this.render_value_row("gpu_pm_input_phaseb_v", true, 1, "Volts");
    this.render_value_row("gpu_pm_input_phasec_v", true, 1, "Volts");
    this.render_row("gpu_on_1", "On", "Off", "ok");
    this.render_row("gpu_on_2", "On", "Off", "ok");
    return this.set_descriptions();
  };

  GpuWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  GpuWidgetView.prototype.toggle_settings = function(e) {
    GpuWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  GpuWidgetView.prototype.onShow = function() {
    var gate, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  GpuWidgetView.prototype.start = function() {
    return this.update();
  };

  GpuWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return GpuWidgetView;

})(IOPSWidgetView);

window.GpuWidgetView = GpuWidgetView;

module.exports = GpuWidgetView;

},{"./iops_widget_view":60}],60:[function(require,module,exports){
var IOPSWidgetView, Marionette, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

IOPSWidgetView = (function(superClass) {
  extend(IOPSWidgetView, superClass);

  function IOPSWidgetView() {
    this.draw_selectors = bind(this.draw_selectors, this);
    this.set_descriptions = bind(this.set_descriptions, this);
    this.data_update = bind(this.data_update, this);
    this.data_q = bind(this.data_q, this);
    this.get_value = bind(this.get_value, this);
    this.get_bool = bind(this.get_bool, this);
    return IOPSWidgetView.__super__.constructor.apply(this, arguments);
  }

  IOPSWidgetView.prototype.get_bool = function(v) {
    if ((v != null) && v.toUpperCase() === "TRUE") {
      return true;
    } else if ((v != null) && v.toUpperCase() === "FALSE") {
      return false;
    }
    return null;
  };

  IOPSWidgetView.prototype.get_value = function(tag) {
    return this.opc.get_value("" + this.prefix + tag + ".Value");
  };

  IOPSWidgetView.prototype.mark_bad_data = function(tag, el) {
    var h, q;
    q = this.data_q(tag);
    h = !q ? 'BAD DATA' : $(el).html();
    return $(el).html(h).toggleClass("bad_data", !q);
  };

  IOPSWidgetView.prototype.data_q = function(tag) {
    var c, t;
    c = App.opc.connections[this.site_code];
    t = c.tags["" + this.prefix + tag];
    return t.props.Value.quality;
  };

  IOPSWidgetView.prototype.data_update = function(data) {};

  IOPSWidgetView.prototype.watch_updates = function(conn) {
    console.log("watch : " + conn);
    App.vent.on("opc:data:" + conn, this.data_update);
    return OPCManager.add_ref(conn);
  };

  IOPSWidgetView.prototype.kill_updates = function(conn) {
    console.log("kill : " + conn);
    App.vent.off("opc:data:" + conn, this.data_update);
    return OPCManager.rem_ref(conn);
  };

  IOPSWidgetView.prototype.set_descriptions = function(force) {
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

  IOPSWidgetView.prototype.render_row = function(tag, tv, fv, tc, fc) {
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

  IOPSWidgetView.prototype.render_tagvalue = function(tag) {
    var a, el1;
    a = (this.vals[tag] != null) && this.vals[tag] !== '' ? parseFloat(this.vals[tag]).toFixed(2) : ' --';
    el1 = this.$("#" + tag).html("" + a);
    return this.mark_bad_data(this.tags[tag], el1);
  };

  IOPSWidgetView.prototype.render_value_row = function(tag, IsNumeric, precision, suffix) {
    var el, set_value;
    if ((this.vals[tag] != null) && this.vals[tag] !== '') {
      set_value = IsNumeric ? parseFloat(this.vals[tag]).toFixed(precision) : this.vals[tag];
    } else {
      set_value = ' -- ';
    }
    suffix = suffix != null ? " " + suffix : "";
    el = this.$("#" + tag).html("" + set_value + suffix);
    return this.mark_bad_data(this.tags[tag], el);
  };

  IOPSWidgetView.prototype.update_settings = function(arg) {
    var cloud_prefix, cp, prefix, s;
    prefix = arg.prefix, cloud_prefix = arg.cloud_prefix;
    s = this.model.get("settings");
    if ((s != null) && !!s.site) {
      if (this.site_code != null) {
        this.kill_updates(this.site_code);
      }
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      this.site_settings = this.site.get('settings');
      this.site_settings || (this.site_settings = {});
      cp = this.site_settings.cloud ? cloud_prefix.replace('#{@site_code}', this.site_code) : '';
      this.prefix = cp + prefix.replace('#{@site_code}', this.site_code).replace('#{s.terminal}', s.terminal).replace('#{s.zone}', s.zone).replace('#{s.gate}', s.gate);
    }
    return this;
  };

  IOPSWidgetView.prototype.refresh_values = function() {
    var tg;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    return this;
  };

  IOPSWidgetView.prototype.draw_terminals = function(terminal) {
    var site, ts;
    site = this.$('#site').val();
    this.$('#terminal').off("change");
    this.$('#terminal').remove();
    ts = $(this.templateHelpers().terminalSelector({
      id: 'terminal',
      label: 'Terminal',
      site: site,
      terminal: terminal
    }));
    this.$('#terminals').empty().append(ts);
    ts.on('change', (function(_this) {
      return function() {
        _this.draw_zones(null);
        _this.draw_gates(null);
        return _this.set_model();
      };
    })(this));
    return this;
  };

  IOPSWidgetView.prototype.draw_zones = function(zone) {
    var site, terminal, zs;
    site = this.$('#site').val();
    terminal = this.$('#terminal').val();
    this.$('#zone').off("change");
    this.$('#zone').remove();
    zs = $(this.templateHelpers().zoneSelector({
      id: 'zone',
      label: 'Zone',
      site: site,
      terminal: terminal,
      zone: zone
    }));
    this.$('#zones').empty().append(zs);
    zs.on('change', (function(_this) {
      return function() {
        _this.draw_gates(null);
        return _this.set_model();
      };
    })(this));
    return this;
  };

  IOPSWidgetView.prototype.draw_gates = function(gate, all) {
    var gs, site, terminal, zone;
    site = this.$('#site').val();
    terminal = this.$('#terminal').val();
    zone = this.$('#zone').val();
    this.$('#gate').off("change");
    this.$('#gate').remove();
    gs = $(this.templateHelpers().gateSelector({
      id: 'gate',
      label: 'Gate',
      site: site,
      terminal: terminal,
      zone: zone,
      gate: gate
    }));
    this.$('#gates').empty().append(gs);
    gs.on('change', (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    return this;
  };

  IOPSWidgetView.prototype.draw_selectors = function(terminal, zone, gate) {
    this.draw_terminals(terminal);
    this.draw_zones(zone);
    this.draw_gates(gate);
    this.$("select#site").chosen({
      disable_search: true,
      width: '150px'
    });
    this.$("select#terminal").chosen({
      disable_search: true,
      width: '50px'
    });
    this.$("select#zone").chosen({
      disable_search: true,
      width: '50px'
    });
    this.$("select#gate").chosen({
      disable_search: true,
      width: '50px'
    });
    return this;
  };

  return IOPSWidgetView;

})(WidgetView);

window.IOPSWidgetView = IOPSWidgetView;

module.exports = IOPSWidgetView;

},{"../dashboard/widget_view":38}],61:[function(require,module,exports){
var IOPSWidgetView, Marionette, PbbpcagpuWidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

PbbpcagpuWidgetView = (function(superClass) {
  extend(PbbpcagpuWidgetView, superClass);

  function PbbpcagpuWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return PbbpcagpuWidgetView.__super__.constructor.apply(this, arguments);
  }

  PbbpcagpuWidgetView.prototype.template = "widgets/pbb_pca_gpu_basic_widget";

  PbbpcagpuWidgetView.prototype.className = 'widget-outer box box-primary gate_widget';

  PbbpcagpuWidgetView.prototype.ui = {
    wtitle: 'h3.box-title',
    display: '.display',
    content: '.content',
    docked: 'i#docked',
    alarms: 'i#alarms',
    warnings: 'i#warnings',
    site: 'select#site'
  };

  PbbpcagpuWidgetView.layout = {
    sx: 5,
    sy: 8
  };

  PbbpcagpuWidgetView.prototype.tags = {
    pbb_status: 'PBB.AIRCRAFTDOCKEDCALCULATION',
    pca_pcastatus: 'PCA.PCASTATUS',
    gpu_gpustatus: 'GPU.GPUSTATUSBOOLEAN',
    pbb_docktime: 'PBB.DOCKTIME',
    pbb_hookup: 'PBB.HOOKUPTIME',
    pca_hookup: 'PCA.HOOKUPTIME',
    gpu_hookup: 'GPU.HOOKUPTIME',
    pca_pcadischargetemp: 'PCA.TEMPDISCH',
    gpu_raoutavg: 'GPU.RAOUTAVG',
    gpu_rvoutavg: 'GPU.RVOUTAVG',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PbbpcagpuWidgetView.prototype.update = function() {
    var lbl, s, t, tags, tg;
    this.update_settings({
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.',
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    });
    if (this.site_code == null) {
      return null;
    }
    s = this.model.get("settings");
    if ((s != null) && !!s.site) {
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      lbl = "PBB/PCA/GPU " + s.gate;
      this.ui.wtitle.html(lbl);
      this.$('#display_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      this.watch_updates(this.site_code);
      return this.set_descriptions(true);
    }
  };

  PbbpcagpuWidgetView.prototype.data_update = function(data) {
    var aq, tg, wq;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    this.render_row("pbb_status", "Docked", "UnDocked", "ok", "err");
    this.render_row("pca_pcastatus", "On", "Off", "ok", "err");
    this.render_row("gpu_gpustatus", "On", "Off", "ok", "err");
    this.render_value_row("pbb_docktime", true, 2, " mins");
    this.render_value_row("pbb_hookup", true, 2, " mins");
    this.render_value_row("pca_hookup", true, 2, " mins");
    this.render_value_row("gpu_hookup", true, 2, " mins");
    this.render_value_row("pca_pcadischargetemp", true, 2, " F");
    this.render_value_row("gpu_raoutavg", true, 1, "Amps");
    this.render_value_row("gpu_rvoutavg", true, 1, "Volts");
    this.$("#pbb_statused_lbl").html('PBB Status');
    this.$("#pbb_dockedtime_lbl").html('PBB Dock Time');
    this.$("#pca_discharge_lbl").html('PCA Discharge Temp');
    this.$("#gpu_raout_lbl").html('GPU Output Amps');
    this.$("#gpu_rvout_lbl").html('GPU Output Volts');
    aq = this.data_q(this.tags.pbb_has_alarms);
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms) === true && aq);
    wq = this.data_q(this.tags.pbb_has_warnings);
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings) === true && wq);
    return this.set_descriptions();
  };

  PbbpcagpuWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  PbbpcagpuWidgetView.prototype.toggle_settings = function(e) {
    PbbpcagpuWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  PbbpcagpuWidgetView.prototype.onShow = function() {
    var gate, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  PbbpcagpuWidgetView.prototype.start = function() {
    return this.update();
  };

  PbbpcagpuWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PbbpcagpuWidgetView;

})(IOPSWidgetView);

window.PbbpcagpuWidgetView = PbbpcagpuWidgetView;

module.exports = PbbpcagpuWidgetView;

},{"./iops_widget_view":60}],62:[function(require,module,exports){
var IOPSWidgetView, Marionette, PbbWidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

PbbWidgetView = (function(superClass) {
  extend(PbbWidgetView, superClass);

  function PbbWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return PbbWidgetView.__super__.constructor.apply(this, arguments);
  }

  PbbWidgetView.prototype.template = "widgets/pbb_widget";

  PbbWidgetView.prototype.className = 'widget-outer box box-primary gate_widget';

  PbbWidgetView.prototype.ui = {
    wtitle: 'h3.box-title',
    display: '.display',
    content: '.content',
    docked: 'i#docked',
    alarms: 'i#alarms',
    warnings: 'i#warnings',
    site: 'select#site'
  };

  PbbWidgetView.layout = {
    sx: 4,
    sy: 6
  };

  PbbWidgetView.prototype.tags = {
    pbb_status: 'PBB.AIRCRAFTDOCKEDCALCULATION',
    pbb_autolevelmode: 'PBB.AUTOLEVELMODEFLAG',
    pbb_aircraft: 'PBB.AIRCRAFTSTATUS',
    pbb_canopy: 'PBB.CANOPYDOWN',
    pbb_acffloor: 'PBB.ACFFLOOR',
    pbb_cablehoist: 'PBB.CABHOIST',
    pbb_docktime: 'PBB.DOCKTIME',
    pbb_undocktime: 'PBB.UNDOCKTIME',
    pbb_smokedetector: 'PBB.SMOKEDETECTOR',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PbbWidgetView.prototype.update = function() {
    var lbl, s, t, tags, tg;
    this.update_settings({
      prefix: 'Airport.#{@site_code}.Term#{s.terminal}.Zone#{s.zone}.Gate#{s.gate}.',
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    });
    if (this.site_code == null) {
      return null;
    }
    s = this.model.get("settings");
    if ((s != null) && !!s.site) {
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      lbl = "Gate " + s.gate;
      this.ui.wtitle.html(lbl);
      this.$('#display_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      this.watch_updates(this.site_code);
      return this.set_descriptions(true);
    }
  };

  PbbWidgetView.prototype.data_update = function(data) {
    var aq, tg, wq;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    this.render_row("pbb_status", "Docked", "UnDocked", "ok");
    this.render_row("pbb_autolevelmode", "On", "Off", "ok");
    this.render_row("pbb_smokedetector", "Off", "On", "", "err");
    this.render_row("pbb_canopy", "Down", "Up", "ok");
    this.render_row("pbb_cablehoist", "Deployed", "Retracted", "ok");
    this.$("#pbb_statused_lbl").html('PBB Status');
    aq = this.data_q(this.tags.pbb_has_alarms);
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms) === true && aq);
    wq = this.data_q(this.tags.pbb_has_warnings);
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings) === true && wq);
    return this.set_descriptions();
  };

  PbbWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  PbbWidgetView.prototype.toggle_settings = function(e) {
    PbbWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  PbbWidgetView.prototype.onShow = function() {
    var gate, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  PbbWidgetView.prototype.start = function() {
    return this.update();
  };

  PbbWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PbbWidgetView;

})(IOPSWidgetView);

window.PbbWidgetView = PbbWidgetView;

module.exports = PbbWidgetView;

},{"./iops_widget_view":60}],63:[function(require,module,exports){
var IOPSWidgetView, Marionette, PbbdetailWidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

PbbdetailWidgetView = (function(superClass) {
  extend(PbbdetailWidgetView, superClass);

  function PbbdetailWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return PbbdetailWidgetView.__super__.constructor.apply(this, arguments);
  }

  PbbdetailWidgetView.prototype.template = "widgets/pbbdetail_widget";

  PbbdetailWidgetView.prototype.className = 'widget-outer box box-primary pbbdetail_widget';

  PbbdetailWidgetView.prototype.ui = {
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

  PbbdetailWidgetView.layout = {
    sx: 8,
    sy: 7
  };

  PbbdetailWidgetView.prototype.tags = {
    pbb_status: 'PBB.AIRCRAFTDOCKEDCALCULATION',
    pbb_autolevel: 'PBB.AUTOLEVELMODEFLAG',
    pbb_canopy: 'PBB.CANOPYDOWN',
    pbb_docktime: 'PBB.DOCKTIME',
    pbb_undocktime: 'PBB.UNDOCKTIME',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PbbdetailWidgetView.prototype.update = function() {
    var cloud, lbl, s, settings, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      settings = this.site.get('settings');
      settings || (settings = {});
      cloud = settings.cloud ? "RemoteSCADAHosting.Airport-" + this.site_code + "." : '';
      this.prefix = cloud + "Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + s.gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      lbl = "Gate " + s.gate + " - Overview";
      this.ui.wtitle.html(lbl);
      this.$('#display_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  PbbdetailWidgetView.prototype.data_update = function(data) {
    var a, aq, auq, c, cq, el, fq, show_alarms, sq, tg, undockordocktimeun, v, wq;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    v = this.get_bool(this.vals.pbb_status);
    a = this.get_bool(this.vals.pbb_autolevel);
    c = this.get_bool(this.vals.pbb_canopy);
    sq = this.data_q(this.tags.pbb_status);
    this.$("#aircraft_img").toggleClass('docked', v === true && sq);
    auq = this.data_q(this.tags.pbb_autolevel);
    this.$("#autolevel_img").toggleClass('autolevelon', a === true && auq);
    cq = this.data_q(this.tags.pbb_canopy);
    this.$("#canopy_img").toggleClass('canopyon', c === true && cq);
    this.render_row("pbb_status", "Docked", "UnDocked", "ok");
    this.render_row("pbb_autolevel", "Auto-Level : On", "Auto-Level : Off", "ok");
    this.render_row("pbb_canopy", "Canopy : Down", "Canopy : Up", "ok");
    aq = this.data_q(this.tags.pbb_has_alarms);
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms) === true && aq);
    wq = this.data_q(this.tags.pbb_has_warnings);
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings) === true && wq);
    fq = this.data_q(this.tags.pbb_autolevelfail);
    show_alarms = this.get_bool(this.vals.pbb_autolevelfail) === true && fq;
    this.ui.alarms.toggle(show_alarms).toggleClass("blink", show_alarms);
    undockordocktimeun = v && (this.vals.pbb_docktime != null) && this.vals.pbb_docktime !== '' ? parseFloat(this.vals.pbb_docktime).toFixed(2) : !v && (this.vals.pbb_undocktime != null) && this.vals.pbb_undocktime !== '' ? parseFloat(this.vals.pbb_undocktime).toFixed(2) : ' -- ';
    el = this.$('#pbb_undockordocktimeun').html(undockordocktimeun + " mins");
    this.mark_bad_data(this.tags.pbb_docktime, el);
    return this.set_descriptions();
  };

  PbbdetailWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  PbbdetailWidgetView.prototype.toggle_settings = function(e) {
    PbbdetailWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  PbbdetailWidgetView.prototype.onShow = function() {
    var gate, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  PbbdetailWidgetView.prototype.start = function() {
    return this.update();
  };

  PbbdetailWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PbbdetailWidgetView;

})(IOPSWidgetView);

window.PbbdetailWidgetView = PbbdetailWidgetView;

module.exports = PbbdetailWidgetView;

},{"./iops_widget_view":60}],64:[function(require,module,exports){
var IOPSWidgetView, Marionette, PbbleveldetailWidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

PbbleveldetailWidgetView = (function(superClass) {
  extend(PbbleveldetailWidgetView, superClass);

  function PbbleveldetailWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return PbbleveldetailWidgetView.__super__.constructor.apply(this, arguments);
  }

  PbbleveldetailWidgetView.prototype.template = "widgets/pbbleveldetail_widget";

  PbbleveldetailWidgetView.prototype.className = 'widget-outer box box-primary gate_widget';

  PbbleveldetailWidgetView.prototype.ui = {
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

  PbbleveldetailWidgetView.layout = {
    sx: 12,
    sy: 9
  };

  PbbleveldetailWidgetView.prototype.tags = {
    pbb_status: 'PBB.AIRCRAFTDOCKEDCALCULATION',
    pbb_aircraft: 'PBB.AIRCRAFTSTATUS',
    pbb_autolevelmode: 'PBB.AUTOLEVELMODEFLAG',
    pbb_canopy: 'PBB.CANOPYDOWN',
    pbb_autolevelkey: 'PBB.AUTOLEVELKEY',
    pbb_autolevelling: 'PBB.AUTOLEVELING',
    pbb_estop: 'PBB.Alarm.RedWord2[4]',
    pbb_limits: 'PBB.BYPASSPB',
    pbb_docktime: 'PBB.DOCKTIME',
    pbb_undocktime: 'PBB.UNDOCKTIME',
    pbb_smokedetector: 'PBB.SMOKEDETECTOR',
    pbb_dailyaircraftcount: 'PBB.DAILYAIRCRAFTDOCKED',
    pbb_lastdocktime: 'PBB.LASTDOCKTIME',
    pbb_cabinfloordeicer: 'PBB.CABFLOORDEICER',
    pbb_terminaldoor: 'PBB.TERMINALDOOR',
    pbb_cabangledisp: 'PBB.CABANGLEDISP',
    pbb_slopedeg: 'PBB.SLOPEDEG',
    pbb_swingangledisp: 'PBB.SWINGANGLEDISP',
    pbb_heighttodisp: 'PBB.HEIGHTTODISP',
    pbb_wheelangledeg: 'PBB.WHEELANGLEDEG',
    pbb_tunnellength: 'PBB.HORIZTODISP',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PbbleveldetailWidgetView.prototype.update = function() {
    var cloud, lbl, s, settings, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      settings = this.site.get('settings');
      settings || (settings = {});
      cloud = settings.cloud ? "RemoteSCADAHosting.Airport-" + this.site_code + "." : '';
      this.prefix = cloud + "Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + s.gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      lbl = "PBB " + s.gate + " - Details";
      this.ui.wtitle.html(lbl);
      this.$('#display_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  PbbleveldetailWidgetView.prototype.data_update = function(data) {
    var aq, ca1, cabangledisp, hd1, heighttodisp, s2, slopedeg, sq, swa1, swingangledisp, tg, tl, tunnellength, v, wa1, wheelangledeg, wq;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    v = this.get_bool(this.vals.pbb_status);
    sq = this.data_q(this.tags.pbb_status);
    this.$("#aircraft_img").toggleClass('docked', v === true && sq);
    this.render_row("pbb_status", "Docked", "UnDocked", "ok");
    this.render_row("pbb_autolevelmode", "On", "Off", "ok");
    this.render_row("pbb_limits", "Active", "Deactive", "ok", " ");
    this.render_row("pbb_smokedetector", "Off", "On", "", "err");
    this.render_row("pbb_canopy", "Down", "Up", "ok");
    this.render_row("pbb_limits", "Normal", "ByPass", "ok");
    this.render_row("pbb_autolevelkey", "On", "Off", "ok");
    this.render_row("pbb_autolevelling", "On", "Off", "ok");
    this.render_row("pbb_cabinfloordeicer", "On", "Off", "ok");
    this.render_row("pbb_terminaldoor", "Open", "Close", "ok");
    this.render_row("pbb_estop", "On", "Off", "err");
    this.$("#pbb_statused_lbl").html('PBB Status');
    this.$("#pbb_estoped_lbl").html('E-Stop');
    this.render_value_row("pbb_docktime", true, 2, " mins");
    this.render_value_row("pbb_undocktime", true, 2, " mins");
    this.render_value_row("pbb_lastdocktime", true, 2, " mins");
    this.render_value_row("pbb_dailyaircraftcount", false);
    wheelangledeg = (this.vals.pbb_wheelangledeg != null) && this.vals.pbb_wheelangledeg !== '' ? parseFloat(this.vals.pbb_wheelangledeg).toFixed(2) : ' -- ';
    wa1 = this.$('#pbb_wheelangledeg').html("Wheel Bogie Angle : " + wheelangledeg);
    this.mark_bad_data(this.tags.pbb_wheelangledeg, wa1);
    slopedeg = (this.vals.pbb_slopedeg != null) && this.vals.pbb_slopedeg !== '' ? parseFloat(this.vals.pbb_slopedeg).toFixed(2) : ' -- ';
    s2 = this.$('#pbb_slopedeg').html("Slope : " + slopedeg);
    this.mark_bad_data(this.tags.pbb_slopedeg, s2);
    cabangledisp = (this.vals.pbb_cabangledisp != null) && this.vals.pbb_cabangledisp !== '' ? this.vals.pbb_cabangledisp : ' -- ';
    ca1 = this.$('#pbb_cabangledisp').html("Cab Angle : " + cabangledisp);
    this.mark_bad_data(this.tags.pbb_cabangledisp, ca1);
    swingangledisp = (this.vals.pbb_swingangledisp != null) && this.vals.pbb_swingangledisp !== '' ? this.vals.pbb_swingangledisp : ' -- ';
    swa1 = this.$('#pbb_swingangledisp').html("Bridge Rotation :" + swingangledisp);
    this.mark_bad_data(this.tags.pbb_swingangledisp, swa1);
    heighttodisp = (this.vals.pbb_heighttodisp != null) && this.vals.pbb_heighttodisp !== '' ? this.vals.pbb_heighttodisp : ' -- ';
    hd1 = this.$('#pbb_heighttodisp').html("Height : " + heighttodisp);
    this.mark_bad_data(this.tags.pbb_heighttodisp, hd1);
    tunnellength = (this.vals.pbb_tunnellength != null) && this.vals.pbb_tunnellength !== '' ? this.vals.pbb_tunnellength : ' -- ';
    tl = this.$('#pbb_tunnellength').html("Tunnel Length : " + tunnellength);
    this.mark_bad_data(this.tags.pbb_tunnellength, tl);
    aq = this.data_q(this.tags.pbb_has_alarms);
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms) === true && aq);
    wq = this.data_q(this.tags.pbb_has_warnings);
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings) === true && wq);
    return this.set_descriptions();
  };

  PbbleveldetailWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  PbbleveldetailWidgetView.prototype.toggle_settings = function(e) {
    PbbleveldetailWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  PbbleveldetailWidgetView.prototype.onShow = function() {
    var gate, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  PbbleveldetailWidgetView.prototype.start = function() {
    return this.update();
  };

  PbbleveldetailWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PbbleveldetailWidgetView;

})(IOPSWidgetView);

window.PbbleveldetailWidgetView = PbbleveldetailWidgetView;

module.exports = PbbleveldetailWidgetView;

},{"./iops_widget_view":60}],65:[function(require,module,exports){
var IOPSWidgetView, Marionette, PcadischargeWidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

PcadischargeWidgetView = (function(superClass) {
  extend(PcadischargeWidgetView, superClass);

  function PcadischargeWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return PcadischargeWidgetView.__super__.constructor.apply(this, arguments);
  }

  PcadischargeWidgetView.prototype.template = "widgets/pca_discharge_widget";

  PcadischargeWidgetView.prototype.className = 'widget-outer box box-primary pcad_widget';

  PcadischargeWidgetView.prototype.ui = {
    wtitle: 'h3.box-title',
    display: '.display',
    content: '.content',
    docked: 'i#docked',
    alarms: 'i#alarms',
    warnings: 'i#warnings',
    site: 'select#site',
    gates: '#gate_cks'
  };

  PcadischargeWidgetView.layout = {
    sx: 8,
    sy: 6
  };

  PcadischargeWidgetView.prototype.tags = {
    temp: 'PCA.TEMPDISCH.Value',
    on: 'PCA.PCASTATUS.Value',
    cooling: 'PCA.MODE_COOLING.Value',
    heating: 'PCA.MODE_HEATING.Value',
    cool_set: "PCA.SET_COOLINGPOINT.Value",
    heat_set: "PCA.SET_HEATINGPOINT.Value",
    alarm_cool: "PCA.ALARM_COOLINGRUN_BOOLEAN.Value",
    alarm_heat: "PCA.ALARM_HEATINGRUN_BOOLEAN.Value",
    timer_cool: "PCA.SET_COOLINGPOINT_TIMER.Value",
    timer_heat: "PCA.SET_HEATINGPOINT_TIMER.Value"
  };

  PcadischargeWidgetView.prototype.max_gates = 6;

  PcadischargeWidgetView.prototype.update = function() {
    var btg, g, gate, gp, j, len, ref, s, t;
    this.update_settings({
      prefix: 'Airport.#{@site_code}.',
      cloud_prefix: 'RemoteSCADAHosting.Airport-#{@site_code}.'
    });
    if (this.site_code == null) {
      return null;
    }
    this.$('h3.box-title').html("PCA Discharge (" + this.site_code + ")");
    s = this.model.get("settings");
    this.cktags = [];
    if ((s != null) && !!s.site) {
      if (!s.gates || s.gates.length === 0) {
        return;
      }
      for (btg in this.tags) {
        t = this.tags[btg];
        ref = s.gates;
        for (j = 0, len = ref.length; j < len; j++) {
          g = ref[j];
          gp = g.split(':');
          gate = "Term" + gp[0] + ".Zone" + gp[1] + ".Gate" + gp[2] + ".";
          this.cktags.push("" + this.prefix + gate + t);
        }
      }
      App.opc.add_tags(this.site_code, this.cktags);
      this.opc = App.opc.connections[this.site_code];
      return this.watch_updates(this.site_code);
    }
  };

  PcadischargeWidgetView.prototype.data_update = function(data) {
    var alarm_cool, alarm_heat, bad_q, cnt, color, cool, cool_set, cooling, cv, g, gate, gp, heat_set, heating, hot, hv, idx, index, j, k, l, len, len1, markings, max, offc, onv, options, p, pre, ref, ref1, ref2, results, s, series, temp, term, tg, ticks, timer_cool, timer_heat, timers, zone;
    s = this.model.get("settings");
    if ((s == null) || (s.gates == null) || s.gates.length === 0) {
      return;
    }
    this.vals = {};
    ref = this.cktags;
    for (j = 0, len = ref.length; j < len; j++) {
      tg = ref[j];
      this.vals[tg] = this.opc.get_value(tg);
    }
    cnt = 0;
    data = [];
    ticks = [];
    hot = '#cc0000';
    cool = '#0066cc';
    offc = '#cccccc';
    bad_q = '#ffcc99';
    markings = [];
    timers = [];
    max = 0;
    ref1 = s.gates;
    for (idx = k = 0, len1 = ref1.length; k < len1; idx = ++k) {
      g = ref1[idx];
      gp = g.split(':');
      term = gp[0];
      zone = gp[1];
      gate = gp[2];
      pre = this.prefix + "Term" + gp[0] + ".Zone" + gp[1] + ".Gate" + gp[2] + ".";
      temp = this.vals["" + pre + this.tags.temp];
      temp = (temp != null) && temp !== '' ? parseFloat(temp) : 0;
      max = temp > max ? temp : max;
      onv = this.vals["" + pre + this.tags.on];
      cooling = this.vals["" + pre + this.tags.cooling];
      heating = this.vals["" + pre + this.tags.heating];
      cool_set = this.vals["" + pre + this.tags.cool_set];
      heat_set = this.vals["" + pre + this.tags.heat_set];
      alarm_heat = this.vals["" + pre + this.tags.alarm_heat];
      alarm_cool = this.vals["" + pre + this.tags.alarm_cool];
      timer_heat = this.vals["" + pre + this.tags.timer_heat];
      timer_cool = this.vals["" + pre + this.tags.timer_cool];
      timers.push([alarm_heat, timer_heat, alarm_cool, timer_cool]);
      if ((cool_set != null) && cool_set !== '') {
        cv = parseFloat(cool_set);
        markings.push({
          color: '#6666cc',
          lineWidth: 2,
          yaxis: {
            from: cv,
            to: cv
          }
        });
        if (cv > max) {
          max = cv;
        }
      }
      if ((heat_set != null) && heat_set !== '') {
        hv = parseFloat(heat_set);
        markings.push({
          color: '#cc6666',
          lineWidth: 2,
          yaxis: {
            from: hv,
            to: hv
          }
        });
        if (hv > max) {
          max = hv;
        }
      }
      color = bad_q;
      if ((onv != null) && onv.toUpperCase() === "FALSE") {
        color = offc;
      } else {
        if ((cooling != null) && cooling.toUpperCase() === "TRUE") {
          color = cool;
        }
        if ((heating != null) && heating.toUpperCase() === "TRUE") {
          color = hot;
        }
      }
      ticks.push([idx, "Gate " + gate]);
      data.push({
        data: [[idx, temp]],
        color: color
      });
      cnt++;
    }
    options = {
      series: {
        bars: {
          show: true
        }
      },
      bars: {
        align: "center",
        barWidth: 0.5
      },
      xaxis: {
        axisLabel: "Gates",
        axisLabelUseCanvas: true,
        axisLabelFontSizePixels: 14,
        axisLabelFontFamily: 'Verdana, Arial',
        axisLabelPadding: 10,
        ticks: ticks,
        autoscaleMargin: .10
      },
      yaxis: {
        axisLabel: "Temperature",
        axisLabelUseCanvas: true,
        axisLabelFontSizePixels: 12,
        axisLabelFontFamily: 'Verdana, Arial',
        axisLabelPadding: 3,
        max: max + 5
      },
      legend: {
        noColumns: 0,
        labelBoxBorderColor: "#000000",
        position: "nw"
      },
      grid: {
        hoverable: true,
        borderWidth: 1,
        markings: markings
      }
    };
    p = $.plot(this.$("#chart"), data, options);
    index = 0;
    results = [];
    for (series = l = 0, ref2 = cnt - 1; 0 <= ref2 ? l <= ref2 : l >= ref2; series = 0 <= ref2 ? ++l : --l) {
      $.each(p.getData()[series].data, function(i, el) {
        var blink, ct, ht, o, showTimer, timer, v, w, wu;
        o = p.pointOffset({
          x: el[0],
          y: el[1]
        });
        wu = p.getOptions().series.bars.barWidth;
        w = wu * p.getXAxes()[0].scale;
        $('<div class="data-point-label"><span style="background-color:rgba(255,255,255,0.8);padding:0px 5px;">' + el[1] + '°</span></div>').css({
          position: 'absolute',
          left: o.left - w / 2,
          top: o.top - 20,
          width: w + "px",
          textAlign: "center",
          fontWeight: "bold"
        }).appendTo(p.getPlaceholder());
        timer = timers[index];
        ht = (timer[1] != null) && timer[1] !== '0' ? parseFloat(timer[1]) : 0;
        ct = (timer[3] != null) && timer[3] !== '0' ? parseFloat(timer[3]) : 0;
        if (ht > 0 || ct > 0) {
          v = ht > 0 ? ht : ct;
          v = v.toFixed(2);
          showTimer = ((timer[0] != null) && timer[0].toUpperCase() === "TRUE") || ((timer[2] != null) && timer[2].toUpperCase() === "TRUE");
          blink = showTimer ? "blink" : "";
          if (showTimer) {
            return $("<div class='timer-label " + blink + "' style='padding:5px;'>" + v + " min.</div>").css({
              position: 'absolute',
              left: o.left - w / 2,
              top: o.top + 20,
              width: w + "px",
              textAlign: "center",
              fontWeight: "bold",
              backgroundColor: "#FC0",
              color: "#C00"
            }).appendTo(p.getPlaceholder());
          }
        }
      });
      results.push(index++);
    }
    return results;
  };

  PcadischargeWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    this.gates = [];
    this.$('.gate_check').each((function(_this) {
      return function(idx, el) {
        if ($(el).is(":checked")) {
          return _this.gates.push($(el).attr("value"));
        }
      };
    })(this));
    s.gates = this.gates;
    return this.model.set("settings", s);
  };

  PcadischargeWidgetView.prototype.toggle_settings = function(e) {
    PcadischargeWidgetView.__super__.toggle_settings.call(this, e);
    this.ui.display.toggle(!this.settings_visible);
    if (this.settings_visible) {
      return this.draw_gate_checks();
    }
  };

  PcadischargeWidgetView.prototype.draw_gate_checks = function() {
    var checked, g, gate, gates, j, len, ms, prev_t, prev_z, s, settings, sh, site, t, term, terminals, z, zn;
    this.ui.gates.empty();
    site = this.$('#site').val();
    sh = '';
    s = OPCManager.get_site(site);
    if (s != null) {
      settings = s.get('settings') || {};
      terminals = settings.zones || {};
      prev_t = '';
      prev_z = '';
      ms = this.model.get("settings");
      gates = (ms != null) && ms.gates ? ms.gates : [];
      for (t in terminals) {
        if (t !== prev_t) {
          prev_t = t;
          sh += "<div class='term_list'><b>Terminal: " + t + "</b>";
        }
        term = terminals[t];
        for (z in term) {
          if (prev_z !== (t + ":" + z)) {
            prev_z = t + ":" + z;
            sh += "<div class='zone_list'><b>Zone: " + z + "</b>";
            sh += "  <div class='gate_list'>";
          }
          zn = term[z];
          for (g in zn) {
            checked = '';
            for (j = 0, len = gates.length; j < len; j++) {
              gate = gates[j];
              if (gate === (t + ":" + z + ":" + g)) {
                checked = "checked='checked'";
                break;
              }
            }
            sh += "<span class='gate_span'><input type='checkbox' class='gate_check' " + checked + " value='" + t + ":" + z + ":" + g + "'> " + g + "</span>";
          }
          sh += "</div></div>";
        }
        sh += "</div>";
      }
    }
    this.ui.gates.html(sh);
    return this.$(".gate_check").change((function(_this) {
      return function() {
        var do_set;
        _this.gates = [];
        do_set = true;
        _this.$('.gate_check').each(function(idx, el) {
          if ($(el).is(":checked")) {
            if (_this.gates.length < _this.max_gates) {
              return _this.gates.push($(el).attr("value"));
            } else {
              do_set = false;
              return $(el).prop("checked", false);
            }
          }
        });
        if (do_set) {
          return _this.set_model();
        }
      };
    })(this));
  };

  PcadischargeWidgetView.prototype.onShow = function() {
    var gates, settings;
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_gate_checks();
        return _this.set_model();
      };
    })(this));
    gates = settings.gates;
    if ((gates == null) || gates.length === 0) {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  PcadischargeWidgetView.prototype.start = function() {
    return this.update();
  };

  PcadischargeWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PcadischargeWidgetView;

})(IOPSWidgetView);

window.PcadischargeWidgetView = PcadischargeWidgetView;

module.exports = PcadischargeWidgetView;

},{"./iops_widget_view":60}],66:[function(require,module,exports){
var IOPSWidgetView, Marionette, PcasummaryWidgetView, UIUtils,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

UIUtils = require('../../common/uiutils');

PcasummaryWidgetView = (function(superClass) {
  extend(PcasummaryWidgetView, superClass);

  function PcasummaryWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
    return PcasummaryWidgetView.__super__.constructor.apply(this, arguments);
  }

  PcasummaryWidgetView.prototype.template = "widgets/pca_summary_widget";

  PcasummaryWidgetView.prototype.className = 'widget-outer box box-primary pca_summary_widget';

  PcasummaryWidgetView.prototype.ui = {
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
    warnings: 'i#warnings',
    power_indicator: 'span#power_indicator'
  };

  PcasummaryWidgetView.layout = {
    sx: 9,
    sy: 7
  };

  PcasummaryWidgetView.prototype.tags = {
    pca_pcaambhumidity: 'PCA.AMBHUMIDITY',
    pca_pcaambienttemp: 'PCA.TEMPAMB',
    pca_pcadischargetemp: 'PCA.TEMPDISCH',
    pca_pcastatus: 'PCA.PCASTATUS',
    pca_time: 'PCA.PCATime',
    pca_blower: 'PCA.BLOWER',
    pca_heat1: 'PCA.HEATER1',
    pca_heat2: 'PCA.HEATER2',
    pca_compstage1: 'PCA.COMP_STAGE1_STAT',
    pca_compstage2: 'PCA.COMP_STAGE2_STAT',
    pca_aircraftdamper: 'PCA.BRIDGE_DAMPER_POSITION',
    pca_bridgedamper: 'PCA.BRIDGE_AIR',
    pca_pumpcond: 'PCA.PUMPCOND',
    pca_coildp: 'PCA.COIL_DP',
    pca_vfdspeed: 'PCA.VFD_SPEED',
    pca_ambhumidity: 'PCA.AMBHUMIDITY',
    pca_sucpressure1: 'PCA.C1_SUCTION_PRESSURE',
    pca_sucpressure2: 'PCA.C2_SUCTION_PRESSURE',
    pca_hotgas1: 'PCA.C1_HOTGAS_CONTROL',
    pca_hotgas2: 'PCA.C2_HOTGAS_CONTROL',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PcasummaryWidgetView.prototype.update = function() {
    var IsCloudServer, cloud, lbl, s, settings, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      switch (this.site_code) {
        case "CID":
          IsCloudServer = true;
          break;
        default:
          IsCloudServer = false;
      }
      settings = this.site.get('settings');
      settings || (settings = {});
      cloud = settings.cloud ? "RemoteSCADAHosting.Airport-" + this.site_code + "." : '';
      this.prefix = cloud + "Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + s.gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      lbl = "PCA " + s.gate + " - Overview";
      this.ui.wtitle.html(lbl);
      this.$('#display_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  PcasummaryWidgetView.prototype.data_update = function(data) {
    var ad, add, ambd, ambhumidity, aq, b, bd, bdd, bdq, bq, c, cd, cls, co1, co1q, co2, co2q, coildp, h, h1, h1q, h2, h2q, hot1d, hot2d, hotgas1, hotgas2, icn, m, p, pc, pcd, pq, s, sq, stat, suc1d, suc2d, sucpressure1, sucpressure2, t, th, txt, txta, txtb, v, vfd, vfdspeed, vq, wq;
    this.refresh_values();
    vq = this.data_q(this.tags.pca_pcadischargetemp);
    this.$("#gauge_volts_out_" + this.model.id + " .bad_data").toggle(!vq);
    v = this.vals.pca_pcadischargetemp;
    if (vq && !isNaN(v) && v !== '') {
      this.g1.refresh(parseInt(v));
    }
    aq = this.data_q(this.tags.pca_pcaambienttemp);
    this.$("#amps_out_" + this.model.id + " .bad_data").toggle(!aq);
    v = this.vals.pca_pcaambienttemp;
    if (aq && !isNaN(v) && v !== '') {
      v = parseInt(parseInt(v));
      this.g2.refresh(v);
    }
    sq = this.data_q(this.tags.pca_pcastatus);
    stat = this.get_bool(this.vals.pca_pcastatus);
    th = "";
    icn = 'ban';
    cls = 'inactive';
    txt = 'BAD DATA';
    if (stat === true) {
      cls = 'active';
      txt = 'ON';
      icn = 'circle';
      t = parseFloat(this.vals.pca_time);
      h = 0;
      m = Math.floor(t);
      s = Math.floor((t - m) * 60);
      if (m > 59) {
        h = Math.floor(m / 60);
        m = m - (h * 60);
      }
      th = "<i class='fa fa-clock-o'></i> " + (UIUtils.lpad(h, 2, '0')) + ":" + (UIUtils.lpad(m, 2, '0')) + ":" + (UIUtils.lpad(s, 2, '0'));
    } else if (stat === false) {
      cls = 'inactive';
      icn = 'circle-thin';
      txt = 'OFF';
    }
    this.$("#power_indicator").html("<div class='" + cls + "'><i class='fa fa-" + icn + "'></i> " + txt + "</div>");
    this.$("#txt_connected_time").html(th);
    v = this.get_bool(this.vals.pca_pcastatus);
    sq = this.data_q(this.tags.pca_pcastatus);
    coildp = (this.vals.pca_coildp != null) && this.vals.pca_coildp !== '' ? parseFloat(this.vals.pca_coildp).toFixed(2) : ' -- ';
    cd = v === true && sq ? this.$('#pca_coildp').html("COIL DP : " + coildp) : this.$('#pca_coildp').html(" ");
    this.mark_bad_data(this.tags.pca_coildp, cd);
    vfdspeed = (this.vals.pca_vfdspeed != null) && this.vals.pca_vfdspeed !== '' ? parseFloat(this.vals.pca_vfdspeed).toFixed(2) : ' -- ';
    vfd = v === true && sq ? this.$('#pca_vfdspeed').html("VFD : " + vfdspeed) : this.$('#pca_vfdspeed').html(" ");
    this.mark_bad_data(this.tags.pca_vfdspeed, vfd);
    ambhumidity = (this.vals.pca_pcaambhumidity != null) && this.vals.pca_pcaambhumidity !== '' ? parseFloat(this.vals.pca_pcaambhumidity).toFixed(2) : ' -- ';
    ambd = v === true && sq ? this.$('#pca_pcaambhumidity').html("Amb Humidity : " + ambhumidity) : this.$('#pca_pcaambhumidity').html(" ");
    this.mark_bad_data(this.tags.pca_pcaambhumidity, ambd);
    sucpressure1 = (this.vals.pca_sucpressure1 != null) && this.vals.pca_sucpressure1 !== '' ? parseFloat(this.vals.pca_sucpressure1).toFixed(2) : ' -- ';
    suc1d = v === true && sq ? this.$('#pca_sucpressure1').html("SP1 : " + sucpressure1) : this.$('#pca_sucpressure1').html(" ");
    this.mark_bad_data(this.tags.pca_sucpressure1, suc1d);
    sucpressure2 = (this.vals.pca_sucpressure2 != null) && this.vals.pca_sucpressure2 !== '' ? parseFloat(this.vals.pca_sucpressure2).toFixed(2) : ' -- ';
    suc2d = v === true && sq ? this.$('#pca_sucpressure2').html("SP2 : " + sucpressure2) : this.$('#pca_sucpressure2').html(" ");
    this.mark_bad_data(this.tags.pca_sucpressure2, suc2d);
    hotgas1 = (this.vals.pca_hotgas1 != null) && this.vals.pca_hotgas1 !== '' ? parseFloat(this.vals.pca_hotgas1).toFixed(2) : ' -- ';
    hot1d = v === true && sq ? this.$('#pca_hotgas1').html("HP1 : " + hotgas1) : this.$('#pca_hotgas1').html(" ");
    this.mark_bad_data(this.tags.pca_hotgas1, hot1d);
    hotgas2 = (this.vals.pca_hotgas2 != null) && this.vals.pca_hotgas2 !== '' ? parseFloat(this.vals.pca_hotgas2).toFixed(2) : ' -- ';
    hot2d = v === true && sq ? this.$('#pca_hotgas2').html("HP2 : " + hotgas2) : this.$('#pca_hotgas2').html(" ");
    this.mark_bad_data(this.tags.pca_hotgas2, hot2d);
    ad = this.get_bool(this.vals.pca_aircraftdamper);
    txta = ad ? 'Open' : 'Close';
    add = v === true && sq ? this.$('#pca_aircraftdamper').html("Aircraft Damper : " + txta) : this.$('#pca_aircraftdamper').html(" ");
    this.mark_bad_data(this.tags.pca_aircraftdamper, add);
    bd = this.get_bool(this.vals.pca_bridgedamper);
    txtb = bd ? 'Open' : 'Close';
    bdd = v === true && sq ? this.$('#pca_bridgedamper').html("Bridge Damper : " + txtb) : this.$('#pca_bridgedamper').html(" ");
    this.mark_bad_data(this.tags.pca_pumpcond, bdd);
    pc = this.get_bool(this.vals.pca_pumpcond);
    txt = pc ? 'On' : 'Off';
    pcd = v === true && sq ? this.$('#pca_pumpcond').html("Condensate Pump : " + txt) : this.$('#pca_pumpcond').html(" ");
    this.mark_bad_data(this.tags.pca_pumpcond, pcd);
    this.render_row("pca_pcastatus", "On", "Off", "ok", " ");
    c = this.get_bool(this.vals.pca_blower);
    p = this.get_bool(this.vals.pca_pcastatus);
    h1 = this.get_bool(this.vals.pca_heat1);
    h2 = this.get_bool(this.vals.pca_heat2);
    co1 = this.get_bool(this.vals.pca_compstage1);
    co2 = this.get_bool(this.vals.pca_compstage2);
    b = this.get_bool(this.vals.pca_aircraftdamper);
    bd = this.get_bool(this.vals.pca_bridgedamper);
    sq = this.data_q(this.tags.pca_blower);
    this.$("#blower_img").toggleClass('bloweron', c === true && sq);
    h1q = this.data_q(this.tags.pca_heat1);
    this.$("#heatingstage1_img").toggleClass('heatingstage1on', h1 === true && h1q);
    h2q = this.data_q(this.tags.pca_heat2);
    this.$("#heatingstage2_img").toggleClass('heatingstage2on', h2 === true && h2q);
    co1q = this.data_q(this.tags.pca_compstage1);
    this.$("#coolingstage1_img").toggleClass('coolingstage1on', co1 === true && co1q);
    co2q = this.data_q(this.tags.pca_compstage2);
    this.$("#coolingstage2_img").toggleClass('coolingstage2on', co2 === true && co2q);
    bq = this.data_q(this.tags.pca_aircraftdamper);
    pq = this.data_q(this.tags.pca_pcastatus);
    this.$("#accool_img").toggleClass('accoolon', p === true && b === true && pq && bq);
    bdq = this.data_q(this.tags.pca_bridgedamper);
    this.$("#bccool_img").toggleClass('bccoolon', bd === true && bdq);
    aq = this.data_q(this.tags.pbb_has_alarms);
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms) === true && aq);
    wq = this.data_q(this.tags.pbb_has_warnings);
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings) === true && wq);
    return this.set_descriptions();
  };

  PcasummaryWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  PcasummaryWidgetView.prototype.toggle_settings = function(e) {
    PcasummaryWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  PcasummaryWidgetView.prototype.render_gauges = function() {
    var aid, vid;
    vid = "gauge_volts_out_" + this.model.id;
    this.$('#view_main').append("<div id='" + vid + "'><div class='bad_data' style='display:none;'>BAD DATA</div></div>");
    return this.g1 = new JustGage({
      id: vid,
      title: ' ',
      label: 'Discharge Temperature',
      value: 0,
      parseTime: false,
      min: 0,
      max: 125,
      symbol: ' F',
      relativeGaugeSize: true,
      shadowOpacity: 1,
      shadowSize: 5,
      shadowVerticalOffset: 10,
      pointer: true,
      pointerOptions: {
        toplength: -5,
        bottomlength: 20,
        bottomwidth: 3,
        color: '#000',
        stroke: '#ffffff',
        stroke_width: 1,
        stroke_linecap: 'round'
      },
      gaugeWidthScale: 0.6,
      customSectors: [
        {
          color: '#000000',
          lo: 0,
          hi: 1
        }, {
          color: '#ffcc66',
          lo: 2,
          hi: 49
        }, {
          color: '#00b300',
          lo: 50,
          hi: 99
        }, {
          color: '#ff3333',
          lo: 100,
          hi: 125
        }
      ],
      counter: true
    }, aid = "amps_out_" + this.model.id, this.$('#view_main').append("<div id='" + aid + "'><div class='bad_data' style='display:none;'>BAD DATA</div></div>"), this.g2 = new JustGage({
      id: aid,
      title: ' ',
      label: 'Ambient Temperature',
      value: 0,
      parseTime: false,
      min: 0,
      max: 150,
      symbol: ' F',
      relativeGaugeSize: true,
      shadowOpacity: 1,
      shadowSize: 5,
      shadowVerticalOffset: 10,
      pointer: true,
      pointerOptions: {
        toplength: -5,
        bottomlength: 20,
        bottomwidth: 3,
        color: '#000',
        stroke: '#ffffff',
        stroke_width: 1,
        stroke_linecap: 'round'
      },
      gaugeWidthScale: 0.6,
      customSectors: [
        {
          color: '#000000',
          lo: 0,
          hi: 1
        }, {
          color: '#00b300',
          lo: 2,
          hi: 99
        }, {
          color: '#ff3333',
          lo: 100,
          hi: 150
        }
      ],
      counter: true
    }));
  };

  PcasummaryWidgetView.prototype.onShow = function() {
    var gate, settings;
    this.ui.gate.on("change", this.set_model);
    this.ui.site.on("change", this.set_model);
    this.ui.terminal.on("change", this.set_model);
    this.ui.zone.on("change", this.set_model);
    this.ui.display_prefix.on("change", this.set_model);
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      this.watch_updates(this.site_code);
    }
    return this.render_gauges();
  };

  PcasummaryWidgetView.prototype.start = function() {
    return this.update();
  };

  PcasummaryWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PcasummaryWidgetView;

})(IOPSWidgetView);

window.PcasummaryWidgetView = PcasummaryWidgetView;

module.exports = PcasummaryWidgetView;

},{"../../common/uiutils":7,"./iops_widget_view":60}],67:[function(require,module,exports){
var IOPSWidgetView, Marionette, PcaWidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IOPSWidgetView = require('./iops_widget_view');

PcaWidgetView = (function(superClass) {
  extend(PcaWidgetView, superClass);

  function PcaWidgetView() {
    this.set_model = bind(this.set_model, this);
    this.data_update = bind(this.data_update, this);
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
    sx: 5,
    sy: 11
  };

  PcaWidgetView.prototype.tags = {
    pca_pcaambienttemp: 'PCA.TEMPAMB',
    pca_pcadischargetemp: 'PCA.TEMPDISCH',
    pca_heater1: 'PCA.HEATER1',
    pca_heater2: 'PCA.HEATER2',
    pca_compstage1: 'PCA.COMP_STAGE1_STAT',
    pca_compstage2: 'PCA.COMP_STAGE2_STAT',
    pca_bridgedamper: 'PCA.BRIDGE_DAMPER_POSITION',
    pca_bridgeair: 'PCA.BRIDGE_AIR',
    pca_dirtyfilter: 'PCA.DIRTY_FILTER',
    pca_blower: 'PCA.BLOWER',
    pca_sucpressure1: 'PCA.C1_SUCTION_PRESSURE',
    pca_sucpressure2: 'PCA.C2_SUCTION_PRESSURE',
    pca_hotgas1: 'PCA.C1_HOTGAS_CONTROL',
    pca_hotgas2: 'PCA.C2_HOTGAS_CONTROL',
    pca_pcastatus: 'PCA.PCASTATUS',
    pbb_autolevelfail: 'PBB.AUTOLEVEL_FAIL_FLAG',
    pbb_has_warnings: 'Warning._HasWarnings',
    pbb_has_alarms: 'Alarm._HasAlarms'
  };

  PcaWidgetView.prototype.update = function() {
    var IsCloudServer, cloud, lbl, s, settings, t, tags, tg;
    s = this.model.get("settings");
    if ((s != null) && !!s.gate) {
      this.site = OPCManager.get_site(s.site);
      this.site_code = this.site.get('code');
      if (this.site_code == null) {
        return null;
      }
      this.kill_updates(this.site_code);
      switch (this.site_code) {
        case "CID":
          IsCloudServer = true;
          break;
        default:
          IsCloudServer = false;
      }
      settings = this.site.get('settings');
      settings || (settings = {});
      cloud = settings.cloud ? "RemoteSCADAHosting.Airport-" + this.site_code + "." : '';
      this.prefix = cloud + "Airport." + this.site_code + ".Term" + s.terminal + ".Zone" + s.zone + ".Gate" + s.gate + ".";
      tags = [];
      for (tg in this.tags) {
        t = this.tags[tg];
        tags.push("" + this.prefix + t + ".Value");
      }
      App.opc.add_tags(this.site_code, tags);
      this.watch_updates(this.site_code);
      lbl = "PCA " + s.gate;
      this.ui.wtitle.html(lbl);
      this.$('#display_label #txt').html(lbl);
      this.opc = App.opc.connections[this.site_code];
      return this.set_descriptions(true);
    }
  };

  PcaWidgetView.prototype.render_value_row = function(tag, IsNumeric, precision, suffix) {
    var el, set_value;
    if ((this.vals[tag] != null) && this.vals[tag] !== '') {
      set_value = IsNumeric ? parseFloat(this.vals[tag]).toFixed(precision) : this.vals[tag];
    } else {
      set_value = ' -- ';
    }
    suffix = suffix != null ? " " + suffix : "";
    el = this.$("#" + tag).html("" + set_value + suffix);
    return this.mark_bad_data(this.tags[tag], el);
  };

  PcaWidgetView.prototype.data_update = function(data) {
    var aq, tg, wq;
    this.vals = {};
    for (tg in this.tags) {
      this.vals[tg] = this.get_value(this.tags[tg]);
    }
    this.render_row("pca_pcastatus", "On", "Off", "ok", " ");
    this.render_row("pca_heater1", "On", "Off", "ok", " ");
    this.render_row("pca_heater2", "On", "Off", "ok", " ");
    this.render_row("pca_compstage1", "On", "Off", "ok", " ");
    this.render_row("pca_compstage2", "On", "Off", "ok", " ");
    this.render_row("pca_bridgedamper", "On", "Off", "ok", " ");
    this.render_row("pca_bridgeair", "On", "Off", "ok", " ");
    this.render_row("pca_dirtyfilter", "Yes", "No", "err", " ");
    this.render_row("pca_blower", "On", "Off", "ok", " ");
    this.render_tagvalue("pca_pcadischargetemp");
    this.render_tagvalue("pca_pcaambienttemp");
    this.render_tagvalue("pca_sucpressure1");
    this.render_tagvalue("pca_sucpressure2");
    this.render_tagvalue("pca_hotgas1");
    this.render_tagvalue("pca_hotgas2");
    aq = this.data_q(this.tags.pbb_has_alarms);
    this.ui.alarms.toggle(this.get_bool(this.vals.pbb_has_alarms) === true && aq);
    wq = this.data_q(this.tags.pbb_has_warnings);
    this.ui.warnings.toggle(this.get_bool(this.vals.pbb_has_warnings) === true && wq);
    return this.set_descriptions();
  };

  PcaWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.site = this.$('#site').val();
    s.terminal = this.$('#terminal').val();
    s.zone = this.$('#zone').val();
    s.gate = this.$('#gate').val();
    return this.model.set("settings", s);
  };

  PcaWidgetView.prototype.toggle_settings = function(e) {
    PcaWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  PcaWidgetView.prototype.onShow = function() {
    var gate, settings;
    this.ui.gate.on("change", this.set_model);
    this.ui.site.on("change", this.set_model);
    this.ui.terminal.on("change", this.set_model);
    this.ui.zone.on("change", this.set_model);
    this.ui.display_prefix.on("change", this.set_model);
    settings = this.model.get('settings');
    settings || (settings = {});
    this.draw_selectors(settings.terminal, settings.zone, settings.gate);
    this.$('#site').on('change', (function(_this) {
      return function() {
        _this.draw_selectors();
        return _this.set_model();
      };
    })(this));
    gate = settings.gate;
    if ((gate == null) || gate === '') {
      this.toggle_settings();
    }
    this.site_code = OPCManager.get_site_code(settings.site);
    if (this.site_code != null) {
      return this.watch_updates(this.site_code);
    }
  };

  PcaWidgetView.prototype.start = function() {
    return this.update();
  };

  PcaWidgetView.prototype.onDestroy = function(arg1, arg2) {
    return this.kill_updates(this.site_code);
  };

  return PcaWidgetView;

})(IOPSWidgetView);

window.PcaWidgetView = PcaWidgetView;

module.exports = PcaWidgetView;

},{"./iops_widget_view":60}],68:[function(require,module,exports){
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
    if (url.indexOf("http://") === -1 && url.indexOf("https://") === -1) {
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

},{"../dashboard/widget_view":38}],69:[function(require,module,exports){
var Marionette, WeatherWidgetView, WidgetView,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

WidgetView = require('../dashboard/widget_view');

WeatherWidgetView = (function(superClass) {
  extend(WeatherWidgetView, superClass);

  function WeatherWidgetView() {
    this.onDestroy = bind(this.onDestroy, this);
    this.set_model = bind(this.set_model, this);
    this.update = bind(this.update, this);
    return WeatherWidgetView.__super__.constructor.apply(this, arguments);
  }

  WeatherWidgetView.prototype.template = "widgets/weather_widget";

  WeatherWidgetView.prototype.className = 'widget-outer box box-primary weather';

  WeatherWidgetView.prototype.ui = {
    display: '#display',
    title: 'input#title',
    location: 'input#location',
    wtitle: "h3.box-title"
  };

  WeatherWidgetView.layout = {
    sx: 4,
    sy: 6
  };

  WeatherWidgetView.prototype.update = function() {
    var loc, s;
    s = this.model.get("settings");
    if ((s != null) && (s.location != null) && s.location.trim() !== '') {
      loc = s.location.trim();
      return $.simpleWeather({
        location: loc,
        woeid: '',
        unit: 'f',
        success: (function(_this) {
          return function(w) {
            var html;
            html = "<h1><i class='weather icon-" + w.code + "'></i> " + w.temp + "&deg; " + w.units.temp + "</h1>\n<div class='details'>\n  <span class='location'><i class='fa fa-map-marker'></i> " + w.city + ", " + w.region + "</span>\n  <span class='currently'>" + w.currently + "</span>\n  <span class='wind'><i class='fa fa-flag-o'></i> " + w.wind.direction + " " + w.wind.speed + " " + w.units.speed + "</span>\n</div>";
            _this.ui.display.html(html);
            _this.ui.wtitle.html("Weather: " + w.city + ", " + w.region);
            if (!_this.int) {
              return _this.int = setInterval(_this.update, 600000);
            }
          };
        })(this),
        error: (function(_this) {
          return function(error) {
            _this.ui.display.html("<p>" + error + "</p>");
            _this.ui.wtitle.html("ERROR");
            if (_this.int != null) {
              return clearInterval(_this.int);
            }
          };
        })(this)
      });
    }
  };

  WeatherWidgetView.prototype.set_model = function() {
    var s;
    s = _.clone(this.model.get("settings"));
    s.location = this.ui.location.val().trim();
    return this.model.set("settings", s);
  };

  WeatherWidgetView.prototype.toggle_settings = function(e) {
    WeatherWidgetView.__super__.toggle_settings.call(this, e);
    return this.ui.display.toggle(!this.settings_visible);
  };

  WeatherWidgetView.prototype.onShow = function() {
    var location;
    this.ui.location.on("change", (function(_this) {
      return function() {
        return _this.set_model();
      };
    })(this));
    location = this.model.get("settings").location;
    if ((location == null) || location === '') {
      return this.toggle_settings();
    }
  };

  WeatherWidgetView.prototype.onDestroy = function() {
    if (this.int != null) {
      return clearInterval(this.int);
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