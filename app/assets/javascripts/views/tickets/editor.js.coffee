$ ->
  class App.Views.Tickets.Editor extends Backbone.View

    tagName: "input"

    events:
      "keyup": "saveOrContinue"
      "blur": "save"

    initialize: ->

      @ticket = @model
      
    render: ->
      $(@el).val @ticket.get("name")
      _.defer => $(@el).focus()
      @

    saveOrContinue: (e)->
      @save() if e.keyCode == 13
    
    save: ->
      @ticket.save name: $(@el).val(), wait: false
