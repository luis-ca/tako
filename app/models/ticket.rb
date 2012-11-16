class Ticket
  include Mongoid::Document
  include ActiveModel::ForbiddenAttributesProtection
  field :name, type: String

  validates_presence_of :name
  validates_uniqueness_of :name
end