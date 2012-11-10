$ ->

    class App.Views.Tickets.List extends Backbone.View

      tagName: "div"
      className: "tickets"
      template: HandlebarsTemplates['tickets/list']

      initialize: ->

        @tickets = @collection
        
        @tickets.on "add", @addOne, @
        @tickets.on "reset", @render, @

      addOne: (ticket)->
        $("ul", @el).append "<li>#{ticket.get("name")}</li>"

      render: ->
        $(@el).html @template()
        _.each @tickets.models, (ticket)=> @addOne ticket
        @