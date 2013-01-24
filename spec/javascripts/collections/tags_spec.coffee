describe 'App.Collections.Tags', ->

  beforeEach ->
    @server = sinon.fakeServer.create()

  afterEach ->
    @server.restore()

  it "returns a list of tags", ->

    tags = new App.Collections.Tags()

    tags.fetch()
    @server.requests[0].respond(200, {"Content-Type": "application/json"}, JSON.stringify([{ id: "1", name: "tag 1" }]) )

    expect(tags.models.length).toEqual(1)

  it "passes scope to endpoint", ->

    ticket = new App.Models.Ticket _id: 1

    tags = new App.Collections.Tags [], scope: ticket
    tags.fetch()

    expect( @server.requests[ 0 ].url ).toEqual "/api/tags?scope_type=Ticket&scope_id=1"


  #### illustrating async testing
  it "returns a list of tags", ->

    tags = new App.Collections.Tags()

    runs ->
      tags.fetch()
      @server.requests[0].respond(200, {"Content-Type": "application/json"}, JSON.stringify([{ id: "1", name: "tag 1" }]) )

    waitsFor ->
      tags.models.length > 0

    runs ->
      expect(tags.models.length).toEqual(1)