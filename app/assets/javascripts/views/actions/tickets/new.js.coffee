class App.Views.Actions.Tickets.New extends Backbone.View

  tagName: "div"
  className: "actions"
  template: HandlebarsTemplates["actions/tickets/new"]

  events:
    'click .add_new_ticket': 'new'

  initialize:  ->
    @tickets = @collection

  render: ->
    $(@el).html @template()
    @

  new: ->
    view = new App.Views.Tickets.New

    view.render()
    view.on "submit", @create, @
    false

  create: (params) ->
    @tickets.add { number: @tickets.length + 1, name: params.ticket_name }
    tickets.navigate "tickets", { trigger: true }