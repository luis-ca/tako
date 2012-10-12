class App.Models.Project extends Backbone.Model

  idAttribute: "_id"

  url: ->
    "/api/projects/#{@get("_id")}"
