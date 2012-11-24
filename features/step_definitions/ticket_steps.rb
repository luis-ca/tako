Given /^a ticket (.*) exists$/ do |ticket_name|
  FactoryGirl.create :ticket, name: ticket_name
end

Given /^I choose All tickets$/ do
  click_link "All tickets"
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

end

Then /^I should see a ticket named (.*) and numbered as (\d+) in the list of tickets$/ do |ticket_name, ticket_number|
  within("table.tickets") do
    within("td.ticketNumber")do
      page.should have_content(ticket_number)
    end
    within("td.ticketName")do
      page.should have_content(ticket_name)
    end
  end
end