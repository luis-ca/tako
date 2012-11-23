class App.Views.Container extends Backbone.View

  el: "container"

  initialize: ->
    @controls = {}

  render: ->
    @

  addControl: (key, control)->
    @controls[key] = control
    $("#sidebar", @el).append(control.render().el)

  getControl: (key)->
    @controls[key]

  replaceWorkspace: (view)->
    $("#workspace", @el).html(view.render().el)