class App.Models.Tag extends Backbone.Model

  idAttribute: "_id"

  url: ->
    url = "api/tags"
    url += "/#{@get("_id")}" unless @isNew()
    url