World(Rack::Test::Methods)

Given /^I am on newgulpd$/ do
  visit "/"
end

When /^I add a project$/ do
  # sleep 360
  sleep 5
  fill_in 'projectName', :with => 'New gulpd'
  # fill in some details in a form
  # submit the form
end

Then /^I should see a project$/ do
  pending # express the regexp above with the code you wish you had
end