$ ->
  class App.Collections.Tags extends Backbone.Collection
    model: App.Models.Tag
    initialize: ( models, options )->
      @scope = options.scope if options?

    url: ->
      url = "/api/tags"
      url += "?scope_type=Ticket&scope_id=#{@scope.get("_id")}" if @scope?
      url