$ ->

  class App.Views.Projects.Form extends Backbone.View

    tagName: "form"
    template: HandlebarsTemplates['projects/form']

    events:
      "submit": "createProject"

    initialize: ->
      @projects = @collection

    render: ->
      $(@el).html @template()
      @

    createProject: (e)=>
      projectName = $("input[name=project_name]", $(@el)).val()
      @projects.add new App.Models.Project name: projectName
      false

