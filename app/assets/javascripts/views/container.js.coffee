class App.Views.Container extends Backbone.View

  el: "container"

  initialize: ->

  render: ->
    view = new App.Views.Projects
    $("#sidebar", @el).html(view.render().el)
    @

  showProject: (id)->

    project = new App.Models.Project({_id: id})
    project.fetch()
    
    view = new App.Views.Projects.Show model: project
    $("#main", @el).html(view.render().el)