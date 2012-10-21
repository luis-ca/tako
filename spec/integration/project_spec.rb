require "spec_helper"

describe Api::ProjectsController do
  it "should create a project" do
    post "api/projects", { project: { name: "california roll" } }
    response.should be_successful
    project = Project.find(JSON.parse(response.body)["_id"])
    project.should be_a(Project)
    project.name.should eq("california roll")
  end 
  it "should not create a project with duplicate name" do
    FactoryGirl.create :project, name: "toro"
    post "api/projects", { project: { name: "toro" } }
    response.should_not be_successful
    response.status.should eq(406)
  end  
end