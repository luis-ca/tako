$ ->

  class App.Views.Projects.Form extends Backbone.View

    tagName: "form"
    className: "form-inline"

    events:
      "submit": "createProject"
      "click a#show": "show"

    initialize: ->
      @projects = @collection

    render: ->
      $(@el).html "<a id='show' href='#'><i class='icon-plus'></i></a>"
      @

    show: ->
      $(@el).html HandlebarsTemplates['projects/form']
      false

    createProject: (e)=>

      projectNameInput = $("input[name=project_name]", $(@el))
      projectName = projectNameInput.val()

      successOnAdd = ()=>
        @render()

      errorOnAdd = (model, response)=>

        errors = JSON.parse(response.responseText)
        error_messages = _.map errors, (message, field)-> "#{field} #{message}"

        projectNameInput.closest('.control-group').addClass('error')
        projectNameInput.siblings('span.help-inline').html(error_messages.join(", "))

      @projects.create name: projectName, { wait: true, success: successOnAdd, error: errorOnAdd }

      false

