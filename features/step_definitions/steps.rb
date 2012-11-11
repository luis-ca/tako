World(Rack::Test::Methods)

require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

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
  within("#workspace") do
    page.should have_content(project_name)
  end
end

Then /^I should see the message '(.*)'$/ do |message|
  page.should have_content(message)
end

Then /^I should see (\d+) project in the list of projects$/ do |count|
  page.all("ul.projects li").count.should == count.to_i

end

When /^I add a ticket named (.*)$/ do |ticket_name|

  click_button "Add new ticket"

  within ".newTicket" do
    fill_in "ticket_name", with: ticket_name
    click_on "Create ticket"
  end
  
end

Then /^I should see a ticket named (.*) in the list of tickets$/ do |ticket_name|
  within("table.tickets") do
    page.should have_content(ticket_name)
  end
end