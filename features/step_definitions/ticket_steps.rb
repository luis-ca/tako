Given /^a ticket exists$/ do
  @ticket = FactoryGirl.create :ticket, name: Faker::Lorem.words[0]
end

Given /^I choose (.*)$/ do |project_name_or_all_tickets|
  within "div#sidebar" do
    click_link project_name_or_all_tickets
  end
end

When /^I add a ticket named (.*)$/ do |ticket_name|

  within "table.tickets" do

    fill_in "new", with: ticket_name

    if Capybara.javascript_driver == :poltergeist
      keypress_script = "var e = $.Event('keyup', { keyCode: 13 }); $('table.tickets input#new}}').trigger(e);"
      page.driver.execute_script(keypress_script)
    else
      find("input#new").native.send_keys(:return) # this works in selenium
    end

  end

  # TODO: waiting for test to create ticket, want to fix this some other way...
  sleep 1
  @ticket = Ticket.find_by( name: ticket_name )

end

Then /^I should see the ticket$/ do
  within("table.tickets") do
    within("td.ticketName")do
      page.should have_content(@ticket.name)
    end
  end
end

Then /^I should see a ticket named (.*)$/ do |ticket_name|
  within("table.tickets") do
    within("td.ticketName")do
      page.should have_content(ticket_name)
    end
  end
end

Then /^I should see the ticket number$/ do
  within("table.tickets") do
    within("td.ticketNumber")do
      page.should have_content(@ticket.number)
    end
  end
end

Then /^I should see the ticket tag (.*)$/ do |tag|
  within("table.tickets") do
    within("td.ticketTags")do
      page.should have_content(tag)
    end
  end
end

Given /^I am on the (.*) project$/ do |project_name|
  FactoryGirl.create :project, name: project_name
  step "I am on the application"
  step "I choose #{project_name}"
end