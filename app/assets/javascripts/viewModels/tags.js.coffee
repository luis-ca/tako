class App.ViewModels.Tags

  constructor: (@_tags)->
    @tagsAsList = @tags()

  tags: =>
    tagNames = _.map @_tags, (tag) -> tag.get 'name'
    tagNames.join ", "