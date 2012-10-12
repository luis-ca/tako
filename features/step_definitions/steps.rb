World(Rack::Test::Methods)

Given /^I am on newgulpd$/ do

  visit("/")

end

Given /^a project named (.*)$/ do |project_name|
  @project = FactoryGirl.create :project, name: project_name
end

When /^I add a project named (.*)$/ do |project_name|

  fill_in('project_name', with: project_name)
  click_button("Save")

end

Then /^I should see a project named (.*) in the list of projects$/ do |project_name|

  within("ul.projects") do
    page.should have_content(project_name)
  end

end

When /^I select project (.*) from the list$/ do |project_name|
  click_link project_name
end

Then /^I should see the project details$/ do
  within("#mainSection") do
    page.should have_content(@project.name)
  end
end