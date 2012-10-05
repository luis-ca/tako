$ ->

    class App.Views.Projects.List extends Backbone.View

      tagName: "ul"
      className: "projects"
      # template: HandlebarsTemplates['projects/project']

      render: ->
        # $(@el).append @template()
        @