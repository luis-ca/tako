require "spec_helper"

describe Api::ProjectsController do

  it "should create a project" do

    params = { project: { name: Faker::Lorem.words[0] } }
    post "api/projects", params

    project = Project.find(JSON.parse(response.body)["_id"])
    project.should be_a(Project)
    project.name.should eq(params[:project][:name])

  end

  it "should return a JSON representation of the newly created project" do

    params = { project: { name: Faker::Lorem.words[0] } }
    post "api/projects", params

    json_response = JSON.parse(response.body)
    json_response.keys.should include "_id"
    
  end

  it "should require project to be passed in with a non-empty name key" do

    post "api/projects", { project: {} }
    response.status.should eq 400
     
  end




  it "should not create a project with duplicate name" do

    FactoryGirl.create :project, name: "toro"
    post "api/projects", { project: { name: "toro" } }
    response.status.should eq(406)

  end  

  it "should return a JSON representation of the error messages" do

    FactoryGirl.create :project, name: "toro"
    post "api/projects", { project: { name: "toro" } }

    json_response = JSON.parse(response.body)
    json_response['name'].should eq [ "is already taken" ]

  end

end