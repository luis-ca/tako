$ ->

  class App.Projects extends Backbone.Router
    
    routes:
      'projects/:id' : 'showProject'
      '*actions': 'home'

    initialize: (options)->
      @container = options.container

    home: ->

    showProject: (id) ->

      project = new App.Models.Project({_id: id})
      project.fetch()
      
      view = new App.Views.Projects.Show model: project
      @container.replaceWorkspace view