$ ->

    class App.Views.Projects.List extends Backbone.View

      tagName: "ul"
      className: "projects"
      # template: HandlebarsTemplates['projects/project']

      initialize: ->
        @projects = @collection
        @projects.on "add", @addOne, @

      addOne: (project)->
        $(@el).append "<li>#{project.get("name")}</li>"

      render: ->
        _.each @projects.models, (project)=> @addOne project
        @