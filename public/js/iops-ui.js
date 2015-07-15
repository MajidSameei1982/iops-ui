if (!window.JST) {
  window.JST = {};
}
window.JST["dashboard"] = function(__obj) {
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
      _print(_safe('<div class="wrapper">\n\n  <!-- Main Header -->\n  <header class="main-header">\n\n    <!-- Logo -->\n    <a href="index2.html" class="logo">\n      <!-- mini logo for sidebar mini 50x50 pixels -->\n      <span class="logo-mini"><b>iO</b></span>\n      <!-- logo for regular state and mobile devices -->\n      <span class="logo-lg"><img src=\'img/logo.png\' alt=\'JBT iOPS\' style=\'height:40px;\'/></span>\n    </a>\n\n    <!-- Header Navbar -->\n    <nav class="navbar navbar-static-top" role="navigation">\n      <!-- Sidebar toggle button-->\n      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">\n        <span class="sr-only">Toggle navigation</span>\n      </a>\n      <!-- Navbar Right Menu -->\n      <div class="navbar-custom-menu">\n        <ul class="nav navbar-nav">\n          <!-- Messages: style can be found in dropdown.less-->\n          <li class="dropdown messages-menu">\n            <!-- Menu toggle button -->\n            <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n              <i class="fa fa-envelope-o"></i>\n              <span class="label label-success">4</span>\n            </a>\n            <ul class="dropdown-menu">\n              <li class="header">You have 4 messages</li>\n              <li>\n                <!-- inner menu: contains the messages -->\n                <ul class="menu">\n                  <li><!-- start message -->\n                    <a href="#">\n                      <div class="pull-left">\n                        <!-- User Image -->\n                        <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image"/>\n                      </div>\n                      <!-- Message title and timestamp -->\n                      <h4>\n                        Support Team\n                        <small><i class="fa fa-clock-o"></i> 5 mins</small>\n                      </h4>\n                      <!-- The message -->\n                      <p>Why not buy a new awesome theme?</p>\n                    </a>\n                  </li><!-- end message -->\n                </ul><!-- /.menu -->\n              </li>\n              <li class="footer"><a href="#">See All Messages</a></li>\n            </ul>\n          </li><!-- /.messages-menu -->\n\n          <!-- Notifications Menu -->\n          <li class="dropdown notifications-menu">\n            <!-- Menu toggle button -->\n            <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n              <i class="fa fa-bell-o"></i>\n              <span class="label label-warning">10</span>\n            </a>\n            <ul class="dropdown-menu">\n              <li class="header">You have 10 notifications</li>\n              <li>\n                <!-- Inner Menu: contains the notifications -->\n                <ul class="menu">\n                  <li><!-- start notification -->\n                    <a href="#">\n                      <i class="fa fa-users text-aqua"></i> 5 new members joined today\n                    </a>\n                  </li><!-- end notification -->\n                </ul>\n              </li>\n              <li class="footer"><a href="#">View all</a></li>\n            </ul>\n          </li>\n          <!-- Tasks Menu -->\n          <li class="dropdown tasks-menu">\n            <!-- Menu Toggle Button -->\n            <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n              <i class="fa fa-flag-o"></i>\n              <span class="label label-danger">9</span>\n            </a>\n            <ul class="dropdown-menu">\n              <li class="header">You have 9 tasks</li>\n              <li>\n                <!-- Inner menu: contains the tasks -->\n                <ul class="menu">\n                  <li><!-- Task item -->\n                    <a href="#">\n                      <!-- Task title and progress text -->\n                      <h3>\n                        Design some buttons\n                        <small class="pull-right">20%</small>\n                      </h3>\n                      <!-- The progress bar -->\n                      <div class="progress xs">\n                        <!-- Change the css width attribute to simulate progress -->\n                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">\n                          <span class="sr-only">20% Complete</span>\n                        </div>\n                      </div>\n                    </a>\n                  </li><!-- end task item -->\n                </ul>\n              </li>\n              <li class="footer">\n                <a href="#">View all tasks</a>\n              </li>\n            </ul>\n          </li>\n          <!-- User Account Menu -->\n          <li class="dropdown user user-menu">\n            <!-- Menu Toggle Button -->\n            <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n              <!-- The user image in the navbar-->\n              <img src="img/user2-160x160.jpg" class="user-image" alt="User Image"/>\n              <!-- hidden-xs hides the username on small devices so only the image appears. -->\n              <span class="hidden-xs">Alexander Pierce</span>\n            </a>\n            <ul class="dropdown-menu">\n              <!-- The user image in the menu -->\n              <li class="user-header">\n                <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image" />\n                <p>\n                  Alexander Pierce - Web Developer\n                  <small>Member since Nov. 2012</small>\n                </p>\n              </li>\n              <!-- Menu Body -->\n              <li class="user-body">\n                <div class="col-xs-4 text-center">\n                  <a href="#">Followers</a>\n                </div>\n                <div class="col-xs-4 text-center">\n                  <a href="#">Sales</a>\n                </div>\n                <div class="col-xs-4 text-center">\n                  <a href="#">Friends</a>\n                </div>\n              </li>\n              <!-- Menu Footer-->\n              <li class="user-footer">\n                <div class="pull-left">\n                  <a href="#" class="btn btn-default btn-flat">Profile</a>\n                </div>\n                <div class="pull-right">\n                  <a href="#" class="btn btn-default btn-flat">Sign out</a>\n                </div>\n              </li>\n            </ul>\n          </li>\n          <!-- Control Sidebar Toggle Button -->\n          <li>\n            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>\n          </li>\n        </ul>\n      </div>\n    </nav>\n  </header>\n  <!-- Left side column. contains the logo and sidebar -->\n  <aside class="main-sidebar">\n\n    <!-- sidebar: style can be found in sidebar.less -->\n    <section class="sidebar">\n\n      <!-- Sidebar user panel (optional) -->\n      <div class="user-panel">\n        <div class="pull-left image">\n          <img src="img/user2-160x160.jpg" class="img-circle" alt="User Image" />\n        </div>\n        <div class="pull-left info">\n          <p>Alexander Pierce</p>\n          <!-- Status -->\n          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>\n        </div>\n      </div>\n\n      <!-- search form (Optional) -->\n      <form action="#" method="get" class="sidebar-form">\n        <div class="input-group">\n          <input type="text" name="q" class="form-control" placeholder="Search..."/>\n          <span class="input-group-btn">\n            <button type=\'submit\' name=\'search\' id=\'search-btn\' class="btn btn-flat"><i class="fa fa-search"></i></button>\n          </span>\n        </div>\n      </form>\n      <!-- /.search form -->\n\n      <!-- Sidebar Menu -->\n      <ul class="sidebar-menu">\n        <li class="header">HEADER</li>\n        <!-- Optionally, you can add icons to the links -->\n        <li class="active"><a href="#"><i class=\'fa fa-link\'></i> <span>Link</span></a></li>\n        <li><a href="#"><i class=\'fa fa-link\'></i> <span>Another Link</span></a></li>\n        <li class="treeview">\n          <a href="#"><i class=\'fa fa-link\'></i> <span>Multilevel</span> <i class="fa fa-angle-left pull-right"></i></a>\n          <ul class="treeview-menu">\n            <li><a href="#">Link in level 2</a></li>\n            <li><a href="#">Link in level 2</a></li>\n          </ul>\n        </li>\n      </ul><!-- /.sidebar-menu -->\n    </section>\n    <!-- /.sidebar -->\n  </aside>\n\n  <!-- Content Wrapper. Contains page content -->\n  <div class="content-wrapper">\n    <!-- Content Header (Page header) -->\n    <section class="content-header">\n      <h1>\n        Page Header\n        <small>Optional description</small>\n      </h1>\n      <ol class="breadcrumb">\n        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>\n        <li class="active">Here</li>\n      </ol>\n    </section>\n\n    <!-- Main content -->\n    <section class="content">\n\n      <!-- Your Page Content Here -->\n\n    </section><!-- /.content -->\n  </div><!-- /.content-wrapper -->\n\n  <!-- Main Footer -->\n  <footer class="main-footer">\n    <!-- To the right -->\n    <div class="pull-right hidden-xs">\n      Anything you want\n    </div>\n    <!-- Default to the left -->\n    <strong>Copyright &copy; 2015 <a href="#">JBT</a>.</strong> All rights reserved.\n  </footer>\n  \n  <!-- Control Sidebar -->      \n  <aside class="control-sidebar control-sidebar-dark">                \n    <!-- Create the tabs -->\n    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">\n      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>\n      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>\n    </ul>\n    <!-- Tab panes -->\n    <div class="tab-content">\n      <!-- Home tab content -->\n      <div class="tab-pane active" id="control-sidebar-home-tab">\n        <h3 class="control-sidebar-heading">Recent Activity</h3>\n        <ul class=\'control-sidebar-menu\'>\n          <li>\n            <a href=\'javascript::;\'>\n              <i class="menu-icon fa fa-birthday-cake bg-red"></i>\n              <div class="menu-info">\n                <h4 class="control-sidebar-subheading">Langdon\'s Birthday</h4>\n                <p>Will be 23 on April 24th</p>\n              </div>\n            </a>\n          </li>              \n        </ul><!-- /.control-sidebar-menu -->\n\n        <h3 class="control-sidebar-heading">Tasks Progress</h3> \n        <ul class=\'control-sidebar-menu\'>\n          <li>\n            <a href=\'javascript::;\'>               \n              <h4 class="control-sidebar-subheading">\n                Custom Template Design\n                <span class="label label-danger pull-right">70%</span>\n              </h4>\n              <div class="progress progress-xxs">\n                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>\n              </div>                                    \n            </a>\n          </li>                         \n        </ul><!-- /.control-sidebar-menu -->         \n\n      </div><!-- /.tab-pane -->\n      <!-- Stats tab content -->\n      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->\n      <!-- Settings tab content -->\n      <div class="tab-pane" id="control-sidebar-settings-tab">            \n        <form method="post">\n          <h3 class="control-sidebar-heading">General Settings</h3>\n          <div class="form-group">\n            <label class="control-sidebar-subheading">\n              Report panel usage\n              <input type="checkbox" class="pull-right" checked />\n            </label>\n            <p>\n              Some information about this general settings option\n            </p>\n          </div><!-- /.form-group -->\n        </form>\n      </div><!-- /.tab-pane -->\n    </div>\n  </aside><!-- /.control-sidebar -->\n  <!-- Add the sidebar\'s background. This div must be placed\n       immediately after the control sidebar -->\n  <div class=\'control-sidebar-bg\'></div>\n</div><!-- ./wrapper -->\n<script src=\'adminlte/app.js\' type="text/javascript"></script>'));
    
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
      _print(_safe('<div class="login-box">\n  <div class="login-logo">\n    <img src=\'img/logo.png\'/>\n  </div><!-- /.login-logo -->\n  <div class="login-box-body">\n    <p class="login-box-msg">Sign in to start your session</p>\n    <form action="#" method="post">\n      <div class="form-group has-feedback">\n        <input type="email" class="form-control" placeholder="Email" id=\'email\' name=\'email\' />\n        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>\n      </div>\n      <div class="form-group has-feedback">\n        <input type="password" class="form-control" placeholder="Password" id=\'password\' name=\'password\' />\n        <span class="glyphicon glyphicon-lock form-control-feedback"></span>\n      </div>\n      <div class="row">\n        <div class="col-xs-8">\n          <div class="checkbox icheck">\n            <label>\n              <input type="checkbox" id=\'remember\' name=\'remember\'> Remember Me\n            </label>\n          </div>\n        </div><!-- /.col -->\n        <div class="col-xs-4">\n          <button type="submit" class="btn btn-primary btn-block btn-flat" id=\'login\' name=\'login\'>Sign In</button>\n        </div><!-- /.col -->\n      </div>\n    </form>\n\n    \n    <a href="#">I forgot my password</a><br>\n    <a href="register.html" class="text-center">Register</a>\n\n  </div><!-- /.login-box-body -->\n</div><!-- /.login-box -->\n\n'));
    
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
var AdminLTE_lib, BaselineApp, Extensions, IopsController, IopsLayout, LoginModel, Marionette, Router;

Marionette = require('marionette');

BaselineApp = require('./common/baseline_app');

Extensions = require('./common/extensions');

IopsController = require('./iops_controller');

Router = require('./router');

LoginModel = require('./models/login');

IopsLayout = require('./views/iops_layout');

AdminLTE_lib = require('./common/adminlte_lib');

window.IOPS = (function() {
  var App;
  if (window.App != null) {
    return window.App;
  }
  App = window.App = new BaselineApp();
  App.AdminLTE_lib = AdminLTE_lib;
  App.on("before:start", function(options) {
    this.log('Starting');
    this.views = {};
    this.data = {};
    return this.layout = new IopsLayout();
  });
  App.on('start', function(options) {
    this.log('Started');
    if (Backbone.history) {
      this.controller = new IopsController();
      this.router = new Router({
        controller: this.controller
      });
      this.log('Backbone.history starting');
      Backbone.history.start();
      App.router.navigate('login', {
        trigger: true
      });
    }
    return this.log('Done starting and running!');
  });
  return App;
})();

},{"./common/adminlte_lib":2,"./common/baseline_app":3,"./common/extensions":4,"./iops_controller":5,"./models/login":6,"./router":7,"./views/iops_layout":9}],2:[function(require,module,exports){

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
        var controlSidebar, neg, postSetWidth, sidebar_height, window_height;
        neg = $('.main-header').outerHeight() + $('.main-footer').outerHeight();
        window_height = $(window).height();
        sidebar_height = $('.sidebar').height();
        if ($('body').hasClass('fixed')) {
          return $('.content-wrapper, .right-side').css('min-height', window_height - $('.main-footer').outerHeight());
        } else {
          postSetWidth = void 0;
          if (window_height >= sidebar_height) {
            $('.content-wrapper, .right-side').css('min-height', window_height - neg);
            postSetWidth = window_height - neg;
          } else {
            $('.content-wrapper, .right-side').css('min-height', sidebar_height);
            postSetWidth = sidebar_height;
          }
          controlSidebar = $($.AdminLTE.options.controlSidebarOptions.selector);
          if (typeof controlSidebar !== 'undefined') {
            if (controlSidebar.height() > postSetWidth) {
              return $('.content-wrapper, .right-side').css('min-height', controlSidebar.height());
            }
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
        box_content = box.find('> .box-body, > .box-footer');
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

},{}],4:[function(require,module,exports){

/* MODS */
Backbone.Marionette.Renderer.render = function(template, data) {
  var path;
  path = JST["" + template];
  if (!path) {
    throw "Template " + template + " not found!";
  }
  return path(data);
};

},{}],5:[function(require,module,exports){
var DashboardView, IopsController, IopsLayout, LoginView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IopsLayout = require('./views/iops_layout');

LoginView = require('./views/login');

DashboardView = require('./views/dashboard');

IopsController = (function(superClass) {
  extend(IopsController, superClass);

  function IopsController() {
    return IopsController.__super__.constructor.apply(this, arguments);
  }

  IopsController.prototype.initialize = function() {
    return App.log('Initializing', 'Controller');
  };

  IopsController.prototype.home = function() {
    var v;
    v = new DashboardView();
    return App.layout.center_region.show(v);
  };

  IopsController.prototype.login = function() {
    var v;
    v = new LoginView();
    return App.layout.center_region.show(v);
  };

  return IopsController;

})(Marionette.Controller);

module.exports = IopsController;

},{"./views/dashboard":8,"./views/iops_layout":9,"./views/login":10}],6:[function(require,module,exports){
var Backbone, LoginModel,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Backbone = require('backbone');

LoginModel = (function(superClass) {
  extend(LoginModel, superClass);

  function LoginModel() {
    return LoginModel.__super__.constructor.apply(this, arguments);
  }

  LoginModel.prototype.idAttribute = '_id';

  LoginModel.prototype.urlRoot = 'api/login';

  return LoginModel;

})(Backbone.Model);

module.exports = LoginModel;

},{}],7:[function(require,module,exports){
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
    'login': 'login'
  };

  return Router;

})(Marionette.AppRouter);

module.exports = Router;

},{}],8:[function(require,module,exports){
var DashboardView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

DashboardView = (function(superClass) {
  extend(DashboardView, superClass);

  function DashboardView() {
    return DashboardView.__super__.constructor.apply(this, arguments);
  }

  DashboardView.prototype.template = "dashboard";

  DashboardView.prototype.onShow = function() {
    return App.AdminLTE_lib.reset();
  };

  return DashboardView;

})(Marionette.ItemView);

module.exports = DashboardView;

},{}],9:[function(require,module,exports){
var IopsLayout, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

IopsLayout = (function(superClass) {
  extend(IopsLayout, superClass);

  function IopsLayout() {
    return IopsLayout.__super__.constructor.apply(this, arguments);
  }

  IopsLayout.prototype.el = '#contact_layout';

  IopsLayout.prototype.regions = {
    center_region: '#center'
  };

  return IopsLayout;

})(Marionette.LayoutView);

module.exports = IopsLayout;

},{}],10:[function(require,module,exports){
var LoginView, Marionette,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

Marionette = require('marionette');

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
    remember: "input#remember"
  };

  LoginView.prototype.login = function(e) {
    e.preventDefault();
    return App.router.navigate('', {
      trigger: true
    });
  };

  LoginView.prototype.onDomRefresh = function() {
    $('input', this.el).iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%'
    });
    return $('body').addClass('login-page');
  };

  return LoginView;

})(Marionette.ItemView);

module.exports = LoginView;

},{}]},{},[1])
;