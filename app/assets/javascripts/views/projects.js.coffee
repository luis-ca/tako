class App.Views.Projects extends Backbone.View

  tagName: "div"
  className: "control projects"

  events:
    "click a#show": "showForm"

  initialize: ()->

    @projects = @collection

  render: ->

    @listView = new App.Views.Projects.List collection: @projects
    $(@el).append @listView.render().el

    @formView = new App.Views.Projects.Form collection: @projects
    $(@el).append @formView.render().el

    @

  select: (id)->
    @listView.select id

  reset: ->
    @listView.deselect()

  showForm: ->
    @formView.show()