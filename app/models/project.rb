class Project

  include Mongoid::Document
  include ActiveModel::ForbiddenAttributesProtection
  field :name, type: String

  validates_presence_of :name, message: "is required"
  validates_uniqueness_of :name
  
end