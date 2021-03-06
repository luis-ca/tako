require 'spec_helper'

describe Api::ProjectsController do

  context "create a project" do

    it "should name the project" do

      params = { project: { name: Faker::Lorem.words[0] } }

      Project.should_receive(:create!).once.with_permitted_params(:name)

      post :create, params

    end

  end

end