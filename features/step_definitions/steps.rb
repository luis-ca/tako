World(Rack::Test::Methods)

Given /^I am on the application$/ do
  visit("/")
end

Given /^a project named (.*)$/ do |project_name|
  @project = FactoryGirl.create :project, name: project_name
end

When /^I add a project named (.*)$/ do |project_name|

  within "div.projects.control" do
    click_link "show"
    fill_in('project_name', with: project_name)
    click_button("Save")
  end

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
  within("#workspace") do
    page.should have_content(project_name)
  end
end

Then /^I should see the message '(.*)'$/ do |message|
  page.should have_content(message)
end

Then /^I should see (\d+) project in the list of projects$/ do |count|
  page.all("ul.projects li:not(#all)").count.should == count.to_i

end