$ -> 
  class App.Collections.Projects extends Backbone.Collection
    model: App.Models.Project
    url: "/api/projects"