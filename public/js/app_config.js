/*

  NOTE: This is where widgets are defined in the menu
    id:     The unique identifier of the widget corresponding to the WidgetView class.
            For example, if the id is "mything", the app will look for MythingWidgetView
    name:   The display name in the menu
    icon:   The FontAwesome icon to use (see https://fortawesome.github.io/Font-Awesome/)
    role:   The user role required to see this option, in the form <site>:<role>
            For example, CID:operator would only allow this option visible for users with the operator role in the CID site
            Use global for global level roles
*/
window.app_config = {
  widgets: [
    {
      id: "airport",
      name: "Airport Widget",
      icon: "bullhorn"
    },
    {
      id: "alarm",
      name: "Alarm Widget",
      icon: "bullhorn"
    },
    {
      id: "url",
      name: "URL Widget",
      icon: "link"
    },
    {
      id: "pbb",
      name: "PBB Basic Widget",
      icon: "plane"
    },
     {
      id: "pbbdetail",
      name: "PBB Overview Widget",
      icon: "plane"
    },
     {
      id: "pbbleveldetail",
      name: "PBB Detail Widget",
      icon: "plane"
    },
    {
      id: "pca",
      name: "PCA Widget",
      icon: "server"
    },
    {
      id: "gpu",
      name: "GPU Widget",
      icon: "plane"
    },
    {
      id: "gpusummary",
      name: "GPU Summary Widget",
      icon: "battery-3"
    },
    {
      id: "weather",
      name: "Weather weather Widget",
      icon: "cloud"
    },
    {
      id: "config",
      name: "Config Widget",
      icon: "gears",
      role: "global:admin"
    }
  ]
};