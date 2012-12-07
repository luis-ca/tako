$ ->

  class App.Projects extends Backbone.Router

    routes:
      'projects/:id' : 'showProject'

    initialize: (options)->

      @container = options.container
      @controlView = @container.getControl "listOfProjects"
      @tickets = options.tickets

    showProject: (id) ->

      project = new App.Models.Project({_id: id})
      project.fetch()

      @controlView.select id
      debug @tickets
      debug @tickets.models
      scopedCollection = new App.Collections.ScopedCollection collection: @tickets, scope: @project

      view = new App.Views.Projects.Show model: project, tickets: scopedCollection
      @container.replaceWorkspace view