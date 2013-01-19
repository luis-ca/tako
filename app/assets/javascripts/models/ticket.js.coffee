class App.Models.Ticket extends Backbone.Model

  idAttribute: "_id"

  url: ->
    url = "api/tickets"
    url += "/#{@get("_id")}" unless @isNew()
    url