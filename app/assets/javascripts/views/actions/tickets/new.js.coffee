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
    view = new App.Views.Tickets.New collection: @tickets

    view.render()
    view.on "submit", @create, @
    false

  create: (params) ->
    @tickets.create { wait: true, name: params.ticket_name }
    # tickets.navigate "tickets", { trigger: true }