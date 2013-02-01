$ ->
  class App.Collections.Taggings extends Backbone.Collection
    model: App.Models.Tagging
    url: "api/taggings"