World(Rack::Test::Methods)

Given /^I am on newgulpd$/ do
  visit "/"

end

When /^I add a project$/ do

  fill_in 'project_name', with: 'a new project here'
  click_button "Save"
  # fill in some details in a form
  # submit the form
end

Then /^I should see a project$/ do
  within("ul.projects") do
    page.has_content?('a new project here')
  end
end