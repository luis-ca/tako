class App.Views.Projects.Show extends Backbone.View

  tagName: "div"
  className: ""
  template: HandlebarsTemplates["projects/show"]

  initialize: ({tickets: tickets})->

    @tickets = tickets
    @project = @model
    @project.on "change", @render, @

  render: ->
    $(@el).html @template new App.ViewModels.Project(@project)
    view = new App.Views.Tickets.List collection: @tickets, tag: @project

    $(@el).append view.render().el
    @