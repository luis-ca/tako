Given /^a ticket (.*) exists$/ do |ticket_name|
  FactoryGirl.create :ticket, name: ticket_name
  
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