$ ->

  class App.Tickets extends Backbone.Router
    
    # routes:
    #   'tickets/newid' : 'showProject'
    
    initialize: ->
      @view = new App.Views.Tickets
      # @view.render()