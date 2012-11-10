class App.ViewModels.Project

  constructor: (@model)->
    _.each @model.attributes, ((v, k)-> @[k] = v if typeof v != 'object' && typeof @[k] != 'function'), @