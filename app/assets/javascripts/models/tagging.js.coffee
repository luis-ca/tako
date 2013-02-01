class App.Models.Tagging extends Backbone.Model
 
  idAttribute: "_id"
  
  url: ->
    url  = "api/taggings"    
    url += "/#{@get("_id")}" unless @isNew()
    url