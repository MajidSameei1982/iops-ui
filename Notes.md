TODO
=====

* implement forgot-password

* implement roles/security
* Enforce site-specific (run thru site-based roles and eliminate access if user has no roles on a site)

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
1) Create or Copy another widgets files in each of the following sub-directories
--a) ~\iops-ui\client\src\styles\rotating_doors_widget.scss
--b) ~\iops-ui\client\src\templates\widgets\rotating_doors_widget.eco
--c) ~\iops-ui\client\src\views\widgets\rotating_doors_widget_view.coffee
2) Edit rotating_doors_widget.scss
--a) Chang top level wrapper to 