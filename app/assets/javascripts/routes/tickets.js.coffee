$ ->

  class App.Tickets extends Backbone.Router

    routes:
      'tickets' : 'list'

    initialize: (options)->

      @container = options.container
      @tickets   = options.collection
      @tickets.fetch()

      @list()

    list: ->

      view = new App.Views.Tickets.List collection: @tickets
      @container.replaceWorkspace view

      @container.getControl("listOfProjects").reset()