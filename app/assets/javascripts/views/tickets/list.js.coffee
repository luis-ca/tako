$ ->

    class App.Views.Tickets.List extends Backbone.View

      tagName: "div"
      className: "tickets"
      template: HandlebarsTemplates['tickets/list']
      ticketTemplate: HandlebarsTemplates['tickets/ticket']

      initialize: ->

        @tickets = @collection
        
        @tickets.on "add", @addOne, @
        @tickets.on "reset", @render, @

      addOne: (ticket)->
        $("table.tickets > tbody", @el).append @ticketTemplate ticket.toJSON()

      render: ->
        $(@el).html @template()
        _.each @tickets.models, (ticket)=> @addOne ticket
        @