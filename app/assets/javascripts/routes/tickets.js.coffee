$ ->

  class App.Tickets extends Backbone.Router
    
    routes:
      'tickets' : 'list'
    
    initialize: (options)->

      @container = options.container
      @tickets   = new App.Collections.Tickets [ { number: 1, title: "create a new ticket" }, { number: 2, title: "edit tag" }, { number: 3, title: "assign ticket to user" } ]

      view = new App.Views.Actions.Tickets.New collection: @tickets
      @container.addControl view

    list: ->
      view = new App.Views.Tickets.List collection: @tickets
      @container.replaceWorkspace view