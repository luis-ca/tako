class Tagging
  include Mongoid::Document
  include ActiveModel::ForbiddenAttributesProtection

  field :tag, :type => String
  field :taggable, :type => String
end

