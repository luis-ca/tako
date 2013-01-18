$ ->
  class App.Views.Tickets.List extends Backbone.View

    tagName: "div"
    className: "tickets"
    template: HandlebarsTemplates['tickets/list']
    ticketTemplate: HandlebarsTemplates['tickets/ticket']

    events:
      "keyup input#new": "createOnReturn"

    initialize: ->

      @tickets = @collection

      @tickets.on "add", @addOne, @
      @tickets.on "reset", @render, @

    addOne: (ticket)->
      viewModel = new App.ViewModels.Ticket(ticket)
      $("table.tickets > tbody", @el).append @ticketTemplate viewModel

    render: ->
      $(@el).html @template()
      _.each @tickets.models, (ticket)=> @addOne ticket
      @

    createOnReturn: (e)->

      if e.keyCode == 13
        input = $(e.currentTarget)
        @tickets.create { name: input.val() }, { wait: true }
        input.val("")
