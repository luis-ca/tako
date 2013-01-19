describe 'App.ViewModels.Tags', ->

  it "returns a list of tags names separated by columns", ->

    tags = [ new App.Models.Tag({name:"tag1"}), new App.Models.Tag(name:"tag2") ]
    viewModel = new App.ViewModels.Tags(tags)

    expect(viewModel.tagsAsList()).toEqual("tag1, tag2")