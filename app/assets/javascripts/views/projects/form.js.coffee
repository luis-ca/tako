$ ->

  class App.Views.Projects.Form extends Backbone.View

    tagName: "form"
    template: HandlebarsTemplates['projects/form']

    events:
      "submit": "createProject"


    render: ->
      $(@el).html @template()
      @

    createProject: (e)->
      projectName = $("input[name=project_name]", $(@el)).val()
      $("ul.projects").append "<li>#{projectName}</li>"
      false

