$ ->

  class App.Tickets extends Backbone.Router

    routes:
      'tickets' : 'list'

    initialize: (options)->

      @container = options.container
      @tickets   = new App.Collections.Tickets
      @tickets.fetch()

      view = new App.Views.Actions.Tickets.New collection: @tickets
      @container.addControl view
      @list()

    list: ->
      view = new App.Views.Tickets.List collection: @tickets
      @container.replaceWorkspace view