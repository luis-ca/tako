$ ->
  class App.Views.Tickets.Ticket extends Backbone.View

    tagName: "tr"
    template: HandlebarsTemplates['tickets/ticket']

    events:
      "click td.ticketName": "edit"

    initialize: ->

      @ticket = @model
      @ticket.on "change", @render, @

    render: ->
      $(@el).html @template @ticket.toJSON()
      @

    edit: ->
      unless $("td.ticketName", $(@el)).hasClass "editing"
        view = new App.Views.Tickets.Editor model: @ticket
        $("td.ticketName", $(@el)).addClass "editing"
        $("td.ticketName", $(@el)).html view.render().el
        false