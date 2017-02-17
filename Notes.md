TODO
=====

* implement forgot-password


Config Widget
=============
- set points for PCA discharge

Charts:
=======

- Hover Values
- Scale Y-axis to fix values

ADDING A NEW WIDGET
===================
NOTE: Widget Naming Conventions:  
Files: [Equiptment]_[Widget Type]_(widget.[ext] or widget_view.coffee)
- All lowercase, unscores allowed
Class name: [Equipment][Widget Type]WidgetView 
- Strict First Character of Equipment is Capitalized and the remaining is lowercase, all [Widget Type] is lowercase, ALPHA ONLY
- ie.  New Widget for Rotating Doors
-      Files: rotating_doors_widget.scss, rotating_doors_widget.eco and rotating_doors_widget_view.coffee
-      Class: RotatingdoorsWidgetView

- Using the Rotating Doors as an example 
1) Copy another widgets files in each of the following sub-directories
--a) ~\iops-ui\client\src\styles\rotating_doors_widget.scss
--b) ~\iops-ui\client\src\templates\widgets\rotating_doors_widget.eco
--c) ~\iops-ui\client\src\views\widgets\rotating_doors_widget_view.coffee
2) Edit rotating_doors_widget.scss
--a) Change top level class style to .rotating_doors_widget
3) Edit rotating_doors_widget.eco
--a) Change the following:
----i) - Top of file around line 5
        "class [Old Widge Name]WidgetView extends IOPSWidgetView" to
        "class RotatingdoorsWidgetView extends IOPSWidgetView"
        "template:   "widgets/[Old widget Name]_widget" to
        "template:   "widgets/rotating_doors_widget"
        "classID: '[Old widget Name]_widget' to
        "classID: 'rotating_doors_widget'
        "className: 'widget-outer box box-primary [Old widget Name]_widget' to
        "className: 'widget-outer box box-primary rotating_doors_widget'
----ii) - Last two lines
        "window.[Old widget Name]WidgetView = [Old widget Name]WidgetView" to
        "window.RotatingdoorsWidgetView = RotatingdoorsWidgetView"
        "module.exports = [Old widget Name]WidgetView" to
        "module.exports = RotatingdoorsWidgetView"
4) Edit ~\iops-ui\client\src\styles\app.scss
--a) Add "@import "rotating_doors_widget";
5) Edit ~\iops-ui\client\src\app.coffee
--a) Add "require('./views/widgets/rotating_doors_widget_view')""
6) Edit ~\iops-ui\client\assets\js\app_config.js
--a) Add the following lines
        {
          id: "rotatingdoors",
          name: "Rotating Doors Widget",
          icon: "repeat"
        },
--b) ICON: This is an icon from Font Awesome (http://fontawesome.io/icons/) excluding the "fa-" 

Stop and Restart grunt and the new widget should be active and ready for development.

