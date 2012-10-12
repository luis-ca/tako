class App.Views.Projects.Show extends Backbone.View

  tagName: "div"
  className: ""
  template: HandlebarsTemplates["projects/show"]

  initialize: ()->

    @project = @model
    @project.on "change", @render, @

  render: ->
    $(@el).html @template new App.ViewModels.Project(@project)
    @
