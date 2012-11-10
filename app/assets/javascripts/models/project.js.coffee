class App.Models.Project extends Backbone.Model

  idAttribute: "_id"

  url: ->
    url  = "/api/projects"
    url += "/#{@get("_id")}" unless @isNew()
    url
