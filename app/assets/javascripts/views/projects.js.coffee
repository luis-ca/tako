class App.Views.Projects extends Backbone.View

  tagName: "div"
  className: ""

  initialize: ->

    @projects = new App.Collections.Projects
    @projects.fetch()

  render: ->

    formView = new App.Views.Projects.Form collection: @projects
    $(@el).append formView.render().el

    listView = new App.Views.Projects.List collection: @projects
    $(@el).append listView.render().el    

    @