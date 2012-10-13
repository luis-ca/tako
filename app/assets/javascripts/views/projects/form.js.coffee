$ ->

  class App.Views.Projects.Form extends Backbone.View

    tagName: "form"
    className: "form-inline"
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
      $("input[name=project_name]", $(@el)).val("")

      @projects.create name: projectName, { wait: true }

      false

