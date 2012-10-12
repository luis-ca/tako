$ ->

    class App.Views.Projects.List extends Backbone.View

      tagName: "ul"
      className: "projects"

      initialize: ->

        @projects = @collection

        @projects.on "add", @addOne, @
        @projects.on "reset", @render, @

      addOne: (project)->
        $(@el).append "<li><a href='#projects/#{project.get("_id")}'>#{project.get("name")}</a></li>"

      render: ->
        $(@el).empty()
        _.each @projects.models, (project)=> @addOne project
        @