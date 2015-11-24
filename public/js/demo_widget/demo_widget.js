// utilities
var DemoWidgetView,
  extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; }, 
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
  hasProp = {}.hasOwnProperty;

// Demo widget code
DemoWidgetView = (function(superClass) {
  extend(DemoWidgetView, superClass);

  function DemoWidgetView() {
    this.set_model = bind(this.set_model, this);
    return DemoWidgetView.__super__.constructor.apply(this, arguments);
  }

  DemoWidgetView.prototype.template = "widgets/demo_widget";
  DemoWidgetView.prototype.className = 'widget-outer box box-primary';

  // place any other ui elements here
  DemoWidgetView.prototype.ui = {
    title: 'input#title',
    wtitle: "h3.box-title"
  };

  // ensures that model changes trigger an update call
  DemoWidgetView.prototype.modelEvents = {
    "change": "update"
  };

  // default size of the widget
  DemoWidgetView.layout = {
    sx: 4,
    sy: 4
  };

  DemoWidgetView.prototype.update = function() {
    // execute when model changes
    // place any rendering code here
  };

  DemoWidgetView.prototype.set_model = function() {
    // execute when settings are changed to persist model
    var s;
    s = _.clone(this.model.get("settings"));
    return this.model.set("settings", s);
  };

  // causes settings view to toggle
  DemoWidgetView.prototype.toggle_settings = function(e) {
    DemoWidgetView.__super__.toggle_settings.call(this, e);
  };

  DemoWidgetView.prototype.onShow = function() {
    // bind events here to call this.set_model() when settings fields update
  };

  DemoWidgetView.prototype.start = function() {
    // kicked off by dashboard when the widget is placed
    return this.update();
  };

  return DemoWidgetView;
})(WidgetView);

// make available globally
window.DemoWidgetView = DemoWidgetView;

// var demo_widget_template = " \
// <div class='box-header with-border'> \
//   <div class='pull-left'><h3 class='box-title'></h3></div> \
//   <div class='pull-right controls'> \
//     <a href='#' id='show_settings'><i class='fa fa-cogs'></i></a> \
//     <a href='#' id='remove'><i class='fa fa-times-circle'></i></a> \
//   </div> \
// </div> \
// <div class='box-body content'> \
//   <div class='display contain'> \
//     <h1>DEMO WIDGET</h1> \
//     <h3>Place content here</h3> \
//   </div> \  
//   <div class='settings' style='display: none;''> \
//     <h1>Settings</h1> \
//     <h3>Place content here</h3> \
//   </div> \
// </div>";

var demo_widget_template = "<div class='box-header with-border'> \n  <div class='pull-left'><h3 class='box-title'></h3></div> \n  <div class='pull-right controls'> \n    <a href='#' id='show_settings'><i class='fa fa-cogs'></i></a> \n    <a href='#' id='remove'><i class='fa fa-times-circle'></i></a> \n  </div> \n</div> \n<div class='box-body content'> \n  <div class='display contain'> \n    <h1>DEMO WIDGET</h1> \n    <h3>Place content here</h3> \n  </div> \n  <div class='settings' style='display: none;''>\n    <h1>Settings</h1>\n    <h3>Place content here</h3>\n  </div> \n</div>";

JST['widgets/demo_widget'] = _.template(demo_widget_template);
