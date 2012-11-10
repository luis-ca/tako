class App.Views.Container extends Backbone.View

  el: "container"

  initialize: ->

  render: ->
    @

  addControl:(view) ->
    $("#sidebar", @el).append(view.render().el)

  replaceWorkspace: (view)->
    $("#main", @el).html(view.render().el)