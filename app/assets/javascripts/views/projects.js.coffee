class App.Views.Projects extends Backbone.View

  tagName: "div"
  className: ""

  initialize: ->
    # TODO: move out projects please
    @projects = new App.Collections.Projects
    @projects.fetch()

  render: ->

    listView = new App.Views.Projects.List collection: @projects
    $(@el).append listView.render().el    

    formView = new App.Views.Projects.Form collection: @projects
    $(@el).append formView.render().el

    @