class App.Models.Tag extends Backbone.Model

  name: ->
    # abstract

class App.Models.ProjectTag extends App.Models.Tag

  name: ->
    @project.name

  project: ->
    # get project
