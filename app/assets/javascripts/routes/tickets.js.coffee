$ ->

  class App.Tickets extends Backbone.Router

    routes:
      'tickets' : 'list'

    initialize: (options)->

      @container = options.container
      @tickets   = options.collection

    list: ->

      view = new App.Views.Tickets.All collection: @tickets
      @container.replaceWorkspace view

      @container.getControl("listOfProjects").reset()