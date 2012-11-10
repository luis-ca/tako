$ ->
  class App.Views.Tickets.New extends Backbone.View

    className: 'newTicket modal hide fade'
    tagName: 'div'
    template: HandlebarsTemplates["tickets/new"]

    events:
      'click input[type=submit]': 'submit'

    render: ->
      $(@el).html(@template())
      $("body").append(@el)
      $('.newTicket').modal()
      $('.newTicket').on('hidden', $.proxy(@remove, @))
      @

    submit: (e)->
      @trigger 'submit', { ticket_name: $("input[name=ticket_name]", $(@el)).val() }
      $('.newTicket').modal('hide')