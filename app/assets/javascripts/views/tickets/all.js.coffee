class App.Views.Tickets.All extends Backbone.View

  tagName: "div"
  className: ""
  template: HandlebarsTemplates["tickets/all"]

  initialize: ->
    @tickets = @collection

  render: ->
    $(@el).html @template()
    view = new App.Views.Tickets.List collection: @tickets
    $(@el).append view.render().el
    @
