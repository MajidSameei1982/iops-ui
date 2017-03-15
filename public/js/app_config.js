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
      id: "airportoverview",
      name: "Airport Overview Widget",
      icon: "road"
    },
    {
      id: "airportoverview2d",
      name: "Airport Overview Widget -2D",
      icon: "road"
    },
/*    {
     id: "advancedalarm",
     name: "Advanced Alarm Widget",
     icon: "bullhorn"
    },
*/    {
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
      id: "pbbpcagpustatus",
      name: "PBB/PCA/GPU Status Widget",
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
    // {
    //   id: "pbbsystemstatus",
    //   name: "PBB System Status",
    //   icon: "plane"
    // },
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
      name: "PCA Summary Widget",
      icon: "server"
    },
    // {
    //   id: "video",
    //   name: "VIDEO Widget",
    //   icon: "flash"
    // },
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
      id: "outofservice",
      name: "Out Of Service Widget",
      icon: "wrench"
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
    // {
    //   id: "kpi",
    //   name: "Kpi Widget",
    //   icon: "bar-chart" 
    // },
    {
      id: "configairport",
      name: "Airport Config Widget",
      icon: "gear",
      roles: ["global:admin","site:admin","global:OperationsAdmin","site:OperationsAdmin"]
    },
    {
      id: "configgate",
      name: "Gate Config Widget",
      icon: "gear",
      roles: ["global:admin","site:admin","global:OperationsAdmin","site:OperationsAdmin"]
    },
    {
      id: "example",
      name: "Permissions Example",
      icon: "gear",
      roles: ["jfk:user"]
    }
    // ,
    // {
    //   id: "asset",
    //   name: "Asset Widget",
    //   icon: "gear"
    // }
    
  ]
};
