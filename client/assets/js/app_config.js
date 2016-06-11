/*

  NOTE: This is where widgets are defined in the menu
    id:     The unique identifier of the widget corresponding to the WidgetView class.
            For example, if the id is "mything", the app will look for MythingWidgetView
    name:   The display name in the menu
    icon:   The FontAwesome icon to use (see https://fortawesome.github.io/Font-Awesome/)
    roles:  The user roles required to see this option, in the form <site|global>:<role>
            For example, site:operator would allow this option visible for users with the operator role in any site
            Use global for global level roles
*/
window.app_config = {
  widgets: [
    {
      id: "airport",
      name: "Airport Widget",
      icon: "road"
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
      id: "pbbpcagpu",
      name: "PBB/PCA/GPU Basic Widget",
      icon: "tasks"
    },
    {
      id: "pbb",
      name: "PBB Widget",
      icon: "plane"
    },
     {
      id: "pbbdetail",
      name: "PBB Overview Widget",
      icon: "plane"
    },
     {
      id: "pbbleveldetail",
      name: "PBB Bridge Widget",
      icon: "plane"
    },
    {
      id: "pca",
      name: "PCA Widget",
      icon: "server"
    },
    {
      id: "pcadischarge",
      name: "PCA Discharge Widget",
      icon: "server"
    },
    {
      id: "pcasummary",
      name: "PCA Overview Widget",
      icon: "server"
    },
    {
      id: "gpu",
      name: "GPU Widget",
      icon: "flash"
    },
    {
      id: "gpusummary",
      name: "GPU Summary Widget",
      icon: "flash"
    },
    {
      id: "weather",
      name: "Weather Widget",
      icon: "cloud"
    },
    {
      id: "report",
      name: "Report Widget",
      icon: "bar-chart"
    },
    {
      id: "config",
      name: "Config Widget",
      icon: "gear",
      roles: ["global:admin", "site:admin"]
    }
    // ,
    // {
    //   id: "asset",
    //   name: "Asset Widget",
    //   icon: "gear"
    // }
    
  ]
};
