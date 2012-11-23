$ ->
  class App.Views.Tickets.New extends Backbone.View

    className: 'newTicket modal hide fade'
    tagName: 'div'
    template: HandlebarsTemplates["tickets/new"]

    events:
      'click input[type=submit]': 'createTicket'

    initialize: ->
      @tickets = @collection

    render: ->
      $(@el).html(@template())
      $("body").append(@el)
      $('.newTicket').modal()
      $('.newTicket').on('hidden', $.proxy(@remove, @))
      @

    createTicket: (e)->
      ticket  = { ticket_name: $("input[name=ticket_name]", $(@el)).val() }
      @trigger( 'submit', ticket)
      $('.newTicket').modal('hide')