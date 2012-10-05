class App.Views.Projects extends Backbone.View

  tagName: "div"
  className: ""

  render: ->
    formView = new App.Views.Projects.Form
    $(@el).append formView.render().el

    listView = new App.Views.Projects.List
    $(@el).append listView.render().el    

    @