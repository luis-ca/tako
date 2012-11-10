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

      projectNameInput = $("input[name=project_name]", $(@el))
      projectName = projectNameInput.val()
      # projectNameInput.val("")

      errorOnAdd = (model, response)=>
        errors = JSON.parse(response.responseText)
        projectNameInput.closest('.control-group').addClass('error')
        projectNameInput.siblings('span.help-inline').html(errors.error)

      @projects.create name: projectName, { wait: true, error: errorOnAdd }

      false

