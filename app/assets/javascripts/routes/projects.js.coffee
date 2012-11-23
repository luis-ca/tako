$ ->

  class App.Projects extends Backbone.Router
    
    routes:
      'projects/:id' : 'showProject'

    initialize: (options)->

      @container = options.container
      @controlView = @container.getControl "listOfProjects"

    showProject: (id) ->

      project = new App.Models.Project({_id: id})
      project.fetch()

      @controlView.select id
      
      view = new App.Views.Projects.Show model: project
      @container.replaceWorkspace view