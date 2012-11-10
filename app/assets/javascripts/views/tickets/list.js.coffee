$ ->

    class App.Views.Tickets.List extends Backbone.View

      tagName: "ul"
      className: "tickets"

      initialize: ->

        @tickets = @collection

        @tickets.on "add", @addOne, @
        @tickets.on "reset", @render, @

      addOne: (ticket)->
        $(@el).append "<li>#{ticket.get("name")}</li>"

      render: ->
        $(@el).empty()
        _.each @tickets.models, (ticket)=> @addOne ticket
        @