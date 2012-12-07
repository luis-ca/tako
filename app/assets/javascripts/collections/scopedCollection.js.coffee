$ ->
  class App.Collections.ScopedCollection # behaves like collection

    constructor: (options)->

      @collection = options.collection
      @scope = options.scope

      @models = @getModels()
      @collection.on "reset", @getModels, @

    getModels: ->
      @models = _.select @collection.models, (model) =>
        model # filter please

    create: (model, options)->
      @collection.create model, options

    on: (events, callback, context)->
      @collection.on events, callback, context

