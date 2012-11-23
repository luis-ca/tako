FactoryGirl.define do

  factory :project, class: Project do
  end

  factory :ticket, class: Ticket do
  	sequence(:name) { |number| "Ticket created by Factory girl #{number}" }
  end

end