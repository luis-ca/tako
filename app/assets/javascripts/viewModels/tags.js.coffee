class App.ViewModels.Tags

  constructor: (@_tags)->
    @tags = _.map @_tags, (tag)-> new App.ViewModels.Tag(tag)

  tagsAsList: ->
    _.map( @_tags, (tag)-> tag.get("name") ).join ", "