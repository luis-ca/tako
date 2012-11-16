$ ->

    class App.Views.Projects.List extends Backbone.View

      tagName: "div"
      className: "projects"
      template: HandlebarsTemplates['projects/list']

      events:
        "click ul > li": "selectProject"

      initialize: ->

        @projects = @collection

        @projects.on "add", @addOne, @
        @projects.on "reset", @render, @

      addOne: (project)->
        $("ul.projects", @el).append "<li><a href='#projects/#{project.get("_id")}'>#{project.get("name")}</a></li>"

      render: ->
        $(@el).html @template()
        _.each @projects.models, (project)=> @addOne project
        @

      selectProject: (e)->
        $("ul.projects li").removeClass "active"
        $(e.currentTarget).addClass "active"