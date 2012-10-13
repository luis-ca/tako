World(Rack::Test::Methods)

Given /^I am on the application$/ do
  visit("/")
end

Given /^a project named (.*)$/ do |project_name|
  @project = FactoryGirl.create :project, name: project_name
end

When /^I add a project named (.*)$/ do |project_name|

  fill_in('project_name', with: project_name)
  click_button("Save")

end

When /^I click create a new project$/ do
  click_button "create a new project"
end

Then /^I should see the new project form$/ do
  pending # express the regexp above with the code you wish you had
end



Then /^I should see a project named (.*) in the list of projects$/ do |project_name|

  within("ul.projects") do
    page.should have_content(project_name)
  end

end

When /^I select the project named (.*) from the list$/ do |project_name|
  click_link project_name
end

Then /^I should see the details for the project named (.*)$/ do |project_name|
  within("#main") do
    page.should have_content(project_name)
  end
end

Then /^I should see the message '(.*)'$/ do |message|
  page.should have_content(message)
end