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

      ticketViewModel = new App.ViewModels.Ticket(ticket)

      #### next, we need to drive Tag and Tag.find_by_ticket or something
      tags = [ new App.Models.Tag(name: "tag1"), new App.Models.Tag(name: "tag2") ]
      tagsViewModels = new App.ViewModels.Tags( tags )

      $("table.tickets > tbody", @el).append @ticketTemplate ticket: ticketViewModel, tags: tagsViewModels

    render: ->
      $(@el).html @template()
      _.each @tickets.models, (ticket)=> @addOne ticket
      @

    createOnReturn: (e)->

      if e.keyCode == 13
        input = $(e.currentTarget)
        @tickets.create { name: input.val() }, { wait: true }
        input.val("")
