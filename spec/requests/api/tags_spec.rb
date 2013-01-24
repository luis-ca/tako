require 'spec_helper'

describe "api/tags" do


  it "returns a list of tags" do

    tag1 = Tag.create
    tag2 = Tag.create

    get "/api/tags"
    expect( response ).to be_successful

    json = JSON.parse response.body
    ids  = json.map { |tag| tag["_id"] }

    expect( ids ).to include tag1.id.to_s
    expect( ids ).to include tag2.id.to_s

  end

  it "returns a list of tags filtered by scope"


end