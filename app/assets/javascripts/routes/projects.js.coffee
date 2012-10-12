$ ->

  class App.Projects extends Backbone.Router
    
    routes:
      'projects/:id' : 'showProject'
      '*actions': 'home'

    initialize: ->
      @view = new App.Views.Container
      @view.render()

    home: ->

    showProject: (id) ->
      @view.showProject(id)