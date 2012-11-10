$ ->

  class App.Projects extends Backbone.Router
    
    routes:
      'projects/:id' : 'showProject'

    initialize: (options)->
      @container = options.container

      view = new App.Views.Projects
      @container.addControl view

    showProject: (id) ->

      project = new App.Models.Project({_id: id})
      project.fetch()
      
      view = new App.Views.Projects.Show model: project
      @container.replaceWorkspace view