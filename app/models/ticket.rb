class Ticket
  include Mongoid::Document
  include ActiveModel::ForbiddenAttributesProtection
  auto_increment :number
  field :name, type: String

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_uniqueness_of :number
end