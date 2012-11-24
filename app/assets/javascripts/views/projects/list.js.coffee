$ ->

  class App.Views.Projects.List extends Backbone.View

    tagName: "div"
    className: "projects"
    template: HandlebarsTemplates['projects/list']

    initialize: ->

      @projects = @collection

      @projects.on "add", @addOne, @
      @projects.on "reset", @render, @

    addOne: (project)->
      $("ul.projects li#all", @el).before "<li data-id='#{project.get("_id")}' class='#{'active' if project.get("_id") == @selected}'><a href='#projects/#{project.get("_id")}'>#{project.get("name")}</a></li>"

    render: ->
      $(@el).html @template()
      _.each @projects.models, (project)=> @addOne project
      @

    select: (id)->
      @selected = id
      @render()

    deselect: ()->
      @selected = null
      @render()