class App.ViewModels.Base
  constructor: (@model)->
    _.each @model.attributes, ((v, k)-> @[k] = v if typeof v != 'object' && typeof @[k] != 'function'), @