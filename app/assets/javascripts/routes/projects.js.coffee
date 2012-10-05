$ ->

  class App.Projects extends Backbone.Router
    
    routes:
      '*actions': 'home'
      
    initialize: (options)->

    home: ->
      view = new App.Views.Projects
      $("container").html view.render().el
